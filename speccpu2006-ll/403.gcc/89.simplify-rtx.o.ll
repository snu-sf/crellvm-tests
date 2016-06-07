; ModuleID = 'simplify-rtx.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.realvaluetype = type { [3 x i64] }
%struct.simplify_binary_real_args = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct.simplify_binary_is2orm1_args = type { %struct.rtx_def*, i8, i8 }
%union.real_extract = type { %struct.realvaluetype }
%struct.simplify_plus_minus_op_data = type { %struct.rtx_def*, i32 }
%struct.simplify_unary_real_args = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
%struct.cfc_args = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, i32 }

@rtx_class = external constant [153 x i8], align 16
@mode_bitsize = external constant [59 x i16], align 16
@mode_mask_array = external constant [59 x i64], align 16
@.str = private unnamed_addr constant [15 x i8] c"simplify-rtx.c\00", align 1
@__FUNCTION__.simplify_unary_operation = private unnamed_addr constant [25 x i8] c"simplify_unary_operation\00", align 1
@mode_class = external constant [59 x i32], align 16
@__FUNCTION__.simplify_binary_operation = private unnamed_addr constant [26 x i8] c"simplify_binary_operation\00", align 1
@flag_unsafe_math_optimizations = external global i32, align 4
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@rtx_equal_function_value_matters = external global i32, align 4
@dconst0 = external global %struct.realvaluetype, align 8
@dconst1 = external global %struct.realvaluetype, align 8
@__FUNCTION__.simplify_relational_operation = private unnamed_addr constant [30 x i8] c"simplify_relational_operation\00", align 1
@const_true_rtx = external global %struct.rtx_def*, align 8
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@fixed_regs = external global [53 x i8], align 16
@__FUNCTION__.simplify_ternary_operation = private unnamed_addr constant [27 x i8] c"simplify_ternary_operation\00", align 1
@__FUNCTION__.simplify_subreg = private unnamed_addr constant [16 x i8] c"simplify_subreg\00", align 1
@mode_size = external constant [59 x i8], align 16
@target_flags = external global i32, align 4
@reload_completed = external global i32, align 4
@frame_pointer_needed = external global i32, align 4
@mode_unit_size = external constant [59 x i8], align 16
@__FUNCTION__.simplify_gen_subreg = private unnamed_addr constant [20 x i8] c"simplify_gen_subreg\00", align 1
@__FUNCTION__.simplify_unary_real = private unnamed_addr constant [20 x i8] c"simplify_unary_real\00", align 1
@dconst2 = external global %struct.realvaluetype, align 8
@dconstm1 = external global %struct.realvaluetype, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"CPU2006: incomparable RTLs:\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_gen_binary(i32 %code, i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 99
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call = call i32 @swap_commutative_operands_p(%struct.rtx_def* %2, %struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %tem, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %op1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %code.addr, align 4
  %8 = load i32, i32* %mode.addr, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call2 = call %struct.rtx_def* @simplify_binary_operation(i32 %7, i32 %8, %struct.rtx_def* %9, %struct.rtx_def* %10)
  store %struct.rtx_def* %call2, %struct.rtx_def** %tem, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool3 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %13, 75
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %14 = load i32, i32* %code.addr, align 4
  %cmp8 = icmp eq i32 %14, 76
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.5
  %15 = load i32, i32* %code.addr, align 4
  %16 = load i32, i32* %mode.addr, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call11 = call %struct.rtx_def* @simplify_plus_minus(i32 %15, i32 %16, %struct.rtx_def* %17, %struct.rtx_def* %18, i32 1)
  store %struct.rtx_def* %call11, %struct.rtx_def** %tem, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool12 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %lor.lhs.false
  %21 = load i32, i32* %code.addr, align 4
  %22 = load i32, i32* %mode.addr, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call16 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %21, i32 %22, %struct.rtx_def* %23, %struct.rtx_def* %24)
  store %struct.rtx_def* %call16, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %25
}

declare i32 @swap_commutative_operands_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_binary_operation(i32 %code, i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %arg0 = alloca i64, align 8
  %arg1 = alloca i64, align 8
  %arg0s = alloca i64, align 8
  %arg1s = alloca i64, align 8
  %val = alloca i64, align 8
  %width = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %trueop0 = alloca %struct.rtx_def*, align 8
  %trueop1 = alloca %struct.rtx_def*, align 8
  %args = alloca %struct.simplify_binary_real_args, align 8
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %lv = alloca i64, align 8
  %h1 = alloca i64, align 8
  %h2 = alloca i64, align 8
  %hv = alloca i64, align 8
  %coeff0 = alloca i64, align 8
  %coeff1 = alloca i64, align 8
  %lhs = alloca %struct.rtx_def*, align 8
  %rhs = alloca %struct.rtx_def*, align 8
  %had_mult = alloca i32, align 4
  %xop00 = alloca %struct.rtx_def*, align 8
  %xop10 = alloca %struct.rtx_def*, align 8
  %coeff0833 = alloca i64, align 8
  %coeff1834 = alloca i64, align 8
  %lhs835 = alloca %struct.rtx_def*, align 8
  %rhs836 = alloca %struct.rtx_def*, align 8
  %had_mult837 = alloca i32, align 4
  %args1213 = alloca %struct.simplify_binary_is2orm1_args, align 8
  %x = alloca %struct.rtx_def*, align 8
  %d = alloca %struct.realvaluetype, align 8
  %u = alloca %union.real_extract, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call = call %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %trueop0, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1 = call %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %3)
  store %struct.rtx_def* %call1, %struct.rtx_def** %trueop1, align 8
  %4 = load i32, i32* %code.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv4, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 891, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.simplify_binary_operation, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %code.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 99
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call11 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %tem, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %op0.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %op1.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %tem, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %trueop0, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %trueop1, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %16 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %17, 2
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.46

land.lhs.true.18:                                 ; preds = %if.end.13
  %18 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp19 = icmp eq i32 %bf.clear, 55
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.46

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %20 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load22 = load i32, i32* %21, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 55
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.46

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %22 = load i32, i32* %mode.addr, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load27 = load i32, i32* %24, align 8
  %bf.lshr = lshr i32 %bf.load27, 16
  %bf.clear28 = and i32 %bf.lshr, 255
  %cmp29 = icmp eq i32 %22, %bf.clear28
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.46

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %25 = load i32, i32* %mode.addr, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load32 = load i32, i32* %27, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 16
  %bf.clear34 = and i32 %bf.lshr33, 255
  %cmp35 = icmp eq i32 %25, %bf.clear34
  br i1 %cmp35, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %land.lhs.true.31
  %28 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %trueop038 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %args, i32 0, i32 0
  store %struct.rtx_def* %28, %struct.rtx_def** %trueop038, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %trueop139 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %args, i32 0, i32 1
  store %struct.rtx_def* %29, %struct.rtx_def** %trueop139, align 8
  %30 = load i32, i32* %mode.addr, align 4
  %mode40 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %args, i32 0, i32 4
  store i32 %30, i32* %mode40, align 4
  %31 = load i32, i32* %code.addr, align 4
  %code41 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %args, i32 0, i32 3
  store i32 %31, i32* %code41, align 4
  %32 = bitcast %struct.simplify_binary_real_args* %args to i8*
  %call42 = call i32 @do_float_handler(void (i8*)* @simplify_binary_real, i8* %32)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.37
  %result = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %args, i32 0, i32 2
  %33 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.37
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true.21, %land.lhs.true.18, %if.end.13
  %34 = load i32, i32* %mode.addr, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom47
  %35 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp eq i32 %35, 1
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.212

land.lhs.true.51:                                 ; preds = %if.end.46
  %36 = load i32, i32* %width, align 4
  %cmp52 = icmp eq i32 %36, 128
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.212

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %37 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load55 = load i32, i32* %38, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 55
  br i1 %cmp57, label %land.lhs.true.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.54
  %39 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load59 = load i32, i32* %40, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 54
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.212

land.lhs.true.63:                                 ; preds = %lor.lhs.false, %land.lhs.true.54
  %41 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load64 = load i32, i32* %42, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 55
  br i1 %cmp66, label %if.then.73, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.lhs.true.63
  %43 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load69 = load i32, i32* %44, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 54
  br i1 %cmp71, label %if.then.73, label %if.end.212

if.then.73:                                       ; preds = %lor.lhs.false.68, %land.lhs.true.63
  %45 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load74 = load i32, i32* %46, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 55
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %if.then.73
  %47 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx79 to i64*
  %48 = load i64, i64* %rtwint, align 8
  store i64 %48, i64* %l1, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 2
  %rtwint82 = bitcast %union.rtunion_def* %arrayidx81 to i64*
  %50 = load i64, i64* %rtwint82, align 8
  store i64 %50, i64* %h1, align 8
  br label %if.end.88

if.else:                                          ; preds = %if.then.73
  %51 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtwint85 = bitcast %union.rtunion_def* %arrayidx84 to i64*
  %52 = load i64, i64* %rtwint85, align 8
  store i64 %52, i64* %l1, align 8
  %53 = load i64, i64* %l1, align 8
  %cmp86 = icmp slt i64 %53, 0
  %cond = select i1 %cmp86, i64 -1, i64 0
  store i64 %cond, i64* %h1, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.78
  %54 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load89 = load i32, i32* %55, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 55
  br i1 %cmp91, label %if.then.93, label %if.else.100

if.then.93:                                       ; preds = %if.end.88
  %56 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 1
  %rtwint96 = bitcast %union.rtunion_def* %arrayidx95 to i64*
  %57 = load i64, i64* %rtwint96, align 8
  store i64 %57, i64* %l2, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 2
  %rtwint99 = bitcast %union.rtunion_def* %arrayidx98 to i64*
  %59 = load i64, i64* %rtwint99, align 8
  store i64 %59, i64* %h2, align 8
  br label %if.end.107

if.else.100:                                      ; preds = %if.end.88
  %60 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtwint103 = bitcast %union.rtunion_def* %arrayidx102 to i64*
  %61 = load i64, i64* %rtwint103, align 8
  store i64 %61, i64* %l2, align 8
  %62 = load i64, i64* %l2, align 8
  %cmp104 = icmp slt i64 %62, 0
  %cond106 = select i1 %cmp104, i64 -1, i64 0
  store i64 %cond106, i64* %h2, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.100, %if.then.93
  %63 = load i32, i32* %code.addr, align 4
  switch i32 %63, label %sw.default [
    i32 76, label %sw.bb
    i32 75, label %sw.bb.109
    i32 78, label %sw.bb.111
    i32 79, label %sw.bb.113
    i32 80, label %sw.bb.113
    i32 81, label %sw.bb.113
    i32 82, label %sw.bb.113
    i32 83, label %sw.bb.114
    i32 84, label %sw.bb.116
    i32 85, label %sw.bb.118
    i32 92, label %sw.bb.120
    i32 93, label %sw.bb.132
    i32 94, label %sw.bb.144
    i32 95, label %sw.bb.156
    i32 90, label %sw.bb.168
    i32 89, label %sw.bb.168
    i32 87, label %sw.bb.168
    i32 88, label %sw.bb.168
    i32 91, label %sw.bb.168
  ]

sw.bb:                                            ; preds = %if.end.107
  %64 = load i64, i64* %l2, align 8
  %65 = load i64, i64* %h2, align 8
  %call108 = call i32 @neg_double(i64 %64, i64 %65, i64* %lv, i64* %hv)
  %66 = load i64, i64* %lv, align 8
  store i64 %66, i64* %l2, align 8
  %67 = load i64, i64* %hv, align 8
  store i64 %67, i64* %h2, align 8
  br label %sw.bb.109

sw.bb.109:                                        ; preds = %if.end.107, %sw.bb
  %68 = load i64, i64* %l1, align 8
  %69 = load i64, i64* %h1, align 8
  %70 = load i64, i64* %l2, align 8
  %71 = load i64, i64* %h2, align 8
  %call110 = call i32 @add_double(i64 %68, i64 %69, i64 %70, i64 %71, i64* %lv, i64* %hv)
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end.107
  %72 = load i64, i64* %l1, align 8
  %73 = load i64, i64* %h1, align 8
  %74 = load i64, i64* %l2, align 8
  %75 = load i64, i64* %h2, align 8
  %call112 = call i32 @mul_double(i64 %72, i64 %73, i64 %74, i64 %75, i64* %lv, i64* %hv)
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.end.107, %if.end.107, %if.end.107, %if.end.107
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.114:                                        ; preds = %if.end.107
  %76 = load i64, i64* %l1, align 8
  %77 = load i64, i64* %l2, align 8
  %and = and i64 %76, %77
  store i64 %and, i64* %lv, align 8
  %78 = load i64, i64* %h1, align 8
  %79 = load i64, i64* %h2, align 8
  %and115 = and i64 %78, %79
  store i64 %and115, i64* %hv, align 8
  br label %sw.epilog

sw.bb.116:                                        ; preds = %if.end.107
  %80 = load i64, i64* %l1, align 8
  %81 = load i64, i64* %l2, align 8
  %or = or i64 %80, %81
  store i64 %or, i64* %lv, align 8
  %82 = load i64, i64* %h1, align 8
  %83 = load i64, i64* %h2, align 8
  %or117 = or i64 %82, %83
  store i64 %or117, i64* %hv, align 8
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.end.107
  %84 = load i64, i64* %l1, align 8
  %85 = load i64, i64* %l2, align 8
  %xor = xor i64 %84, %85
  store i64 %xor, i64* %lv, align 8
  %86 = load i64, i64* %h1, align 8
  %87 = load i64, i64* %h2, align 8
  %xor119 = xor i64 %86, %87
  store i64 %xor119, i64* %hv, align 8
  br label %sw.epilog

sw.bb.120:                                        ; preds = %if.end.107
  %88 = load i64, i64* %h1, align 8
  %89 = load i64, i64* %h2, align 8
  %cmp121 = icmp slt i64 %88, %89
  br i1 %cmp121, label %if.then.129, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %sw.bb.120
  %90 = load i64, i64* %h1, align 8
  %91 = load i64, i64* %h2, align 8
  %cmp124 = icmp eq i64 %90, %91
  br i1 %cmp124, label %land.lhs.true.126, label %if.else.130

land.lhs.true.126:                                ; preds = %lor.lhs.false.123
  %92 = load i64, i64* %l1, align 8
  %93 = load i64, i64* %l2, align 8
  %cmp127 = icmp ult i64 %92, %93
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %land.lhs.true.126, %sw.bb.120
  %94 = load i64, i64* %l1, align 8
  store i64 %94, i64* %lv, align 8
  %95 = load i64, i64* %h1, align 8
  store i64 %95, i64* %hv, align 8
  br label %if.end.131

if.else.130:                                      ; preds = %land.lhs.true.126, %lor.lhs.false.123
  %96 = load i64, i64* %l2, align 8
  store i64 %96, i64* %lv, align 8
  %97 = load i64, i64* %h2, align 8
  store i64 %97, i64* %hv, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %if.then.129
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.107
  %98 = load i64, i64* %h1, align 8
  %99 = load i64, i64* %h2, align 8
  %cmp133 = icmp sgt i64 %98, %99
  br i1 %cmp133, label %if.then.141, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %sw.bb.132
  %100 = load i64, i64* %h1, align 8
  %101 = load i64, i64* %h2, align 8
  %cmp136 = icmp eq i64 %100, %101
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.142

land.lhs.true.138:                                ; preds = %lor.lhs.false.135
  %102 = load i64, i64* %l1, align 8
  %103 = load i64, i64* %l2, align 8
  %cmp139 = icmp ugt i64 %102, %103
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %land.lhs.true.138, %sw.bb.132
  %104 = load i64, i64* %l1, align 8
  store i64 %104, i64* %lv, align 8
  %105 = load i64, i64* %h1, align 8
  store i64 %105, i64* %hv, align 8
  br label %if.end.143

if.else.142:                                      ; preds = %land.lhs.true.138, %lor.lhs.false.135
  %106 = load i64, i64* %l2, align 8
  store i64 %106, i64* %lv, align 8
  %107 = load i64, i64* %h2, align 8
  store i64 %107, i64* %hv, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.then.141
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.end.107
  %108 = load i64, i64* %h1, align 8
  %109 = load i64, i64* %h2, align 8
  %cmp145 = icmp ult i64 %108, %109
  br i1 %cmp145, label %if.then.153, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %sw.bb.144
  %110 = load i64, i64* %h1, align 8
  %111 = load i64, i64* %h2, align 8
  %cmp148 = icmp eq i64 %110, %111
  br i1 %cmp148, label %land.lhs.true.150, label %if.else.154

land.lhs.true.150:                                ; preds = %lor.lhs.false.147
  %112 = load i64, i64* %l1, align 8
  %113 = load i64, i64* %l2, align 8
  %cmp151 = icmp ult i64 %112, %113
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %land.lhs.true.150, %sw.bb.144
  %114 = load i64, i64* %l1, align 8
  store i64 %114, i64* %lv, align 8
  %115 = load i64, i64* %h1, align 8
  store i64 %115, i64* %hv, align 8
  br label %if.end.155

if.else.154:                                      ; preds = %land.lhs.true.150, %lor.lhs.false.147
  %116 = load i64, i64* %l2, align 8
  store i64 %116, i64* %lv, align 8
  %117 = load i64, i64* %h2, align 8
  store i64 %117, i64* %hv, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.then.153
  br label %sw.epilog

sw.bb.156:                                        ; preds = %if.end.107
  %118 = load i64, i64* %h1, align 8
  %119 = load i64, i64* %h2, align 8
  %cmp157 = icmp ugt i64 %118, %119
  br i1 %cmp157, label %if.then.165, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %sw.bb.156
  %120 = load i64, i64* %h1, align 8
  %121 = load i64, i64* %h2, align 8
  %cmp160 = icmp eq i64 %120, %121
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.166

land.lhs.true.162:                                ; preds = %lor.lhs.false.159
  %122 = load i64, i64* %l1, align 8
  %123 = load i64, i64* %l2, align 8
  %cmp163 = icmp ugt i64 %122, %123
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %land.lhs.true.162, %sw.bb.156
  %124 = load i64, i64* %l1, align 8
  store i64 %124, i64* %lv, align 8
  %125 = load i64, i64* %h1, align 8
  store i64 %125, i64* %hv, align 8
  br label %if.end.167

if.else.166:                                      ; preds = %land.lhs.true.162, %lor.lhs.false.159
  %126 = load i64, i64* %l2, align 8
  store i64 %126, i64* %lv, align 8
  %127 = load i64, i64* %h2, align 8
  store i64 %127, i64* %hv, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.166, %if.then.165
  br label %sw.epilog

sw.bb.168:                                        ; preds = %if.end.107, %if.end.107, %if.end.107, %if.end.107, %if.end.107
  %128 = load i64, i64* %h2, align 8
  %cmp169 = icmp ne i64 %128, 0
  br i1 %cmp169, label %if.then.177, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %sw.bb.168
  %129 = load i64, i64* %l2, align 8
  %130 = load i32, i32* %mode.addr, align 4
  %idxprom172 = sext i32 %130 to i64
  %arrayidx173 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom172
  %131 = load i16, i16* %arrayidx173, align 2
  %conv174 = zext i16 %131 to i64
  %cmp175 = icmp uge i64 %129, %conv174
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %lor.lhs.false.171, %sw.bb.168
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.178:                                       ; preds = %lor.lhs.false.171
  %132 = load i32, i32* %code.addr, align 4
  %cmp179 = icmp eq i32 %132, 90
  br i1 %cmp179, label %if.then.184, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.end.178
  %133 = load i32, i32* %code.addr, align 4
  %cmp182 = icmp eq i32 %133, 89
  br i1 %cmp182, label %if.then.184, label %if.else.190

if.then.184:                                      ; preds = %lor.lhs.false.181, %if.end.178
  %134 = load i64, i64* %l1, align 8
  %135 = load i64, i64* %h1, align 8
  %136 = load i64, i64* %l2, align 8
  %137 = load i32, i32* %mode.addr, align 4
  %idxprom185 = sext i32 %137 to i64
  %arrayidx186 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom185
  %138 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %138 to i32
  %139 = load i32, i32* %code.addr, align 4
  %cmp188 = icmp eq i32 %139, 89
  %conv189 = zext i1 %cmp188 to i32
  call void @rshift_double(i64 %134, i64 %135, i64 %136, i32 %conv187, i64* %lv, i64* %hv, i32 %conv189)
  br label %if.end.210

if.else.190:                                      ; preds = %lor.lhs.false.181
  %140 = load i32, i32* %code.addr, align 4
  %cmp191 = icmp eq i32 %140, 87
  br i1 %cmp191, label %if.then.193, label %if.else.197

if.then.193:                                      ; preds = %if.else.190
  %141 = load i64, i64* %l1, align 8
  %142 = load i64, i64* %h1, align 8
  %143 = load i64, i64* %l2, align 8
  %144 = load i32, i32* %mode.addr, align 4
  %idxprom194 = sext i32 %144 to i64
  %arrayidx195 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom194
  %145 = load i16, i16* %arrayidx195, align 2
  %conv196 = zext i16 %145 to i32
  call void @lshift_double(i64 %141, i64 %142, i64 %143, i32 %conv196, i64* %lv, i64* %hv, i32 1)
  br label %if.end.209

if.else.197:                                      ; preds = %if.else.190
  %146 = load i32, i32* %code.addr, align 4
  %cmp198 = icmp eq i32 %146, 88
  br i1 %cmp198, label %if.then.200, label %if.else.204

if.then.200:                                      ; preds = %if.else.197
  %147 = load i64, i64* %l1, align 8
  %148 = load i64, i64* %h1, align 8
  %149 = load i64, i64* %l2, align 8
  %150 = load i32, i32* %mode.addr, align 4
  %idxprom201 = sext i32 %150 to i64
  %arrayidx202 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom201
  %151 = load i16, i16* %arrayidx202, align 2
  %conv203 = zext i16 %151 to i32
  call void @lrotate_double(i64 %147, i64 %148, i64 %149, i32 %conv203, i64* %lv, i64* %hv)
  br label %if.end.208

if.else.204:                                      ; preds = %if.else.197
  %152 = load i64, i64* %l1, align 8
  %153 = load i64, i64* %h1, align 8
  %154 = load i64, i64* %l2, align 8
  %155 = load i32, i32* %mode.addr, align 4
  %idxprom205 = sext i32 %155 to i64
  %arrayidx206 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom205
  %156 = load i16, i16* %arrayidx206, align 2
  %conv207 = zext i16 %156 to i32
  call void @rrotate_double(i64 %152, i64 %153, i64 %154, i32 %conv207, i64* %lv, i64* %hv)
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.204, %if.then.200
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.193
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.184
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.107
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.210, %if.end.167, %if.end.155, %if.end.143, %if.end.131, %sw.bb.118, %sw.bb.116, %sw.bb.114, %sw.bb.111, %sw.bb.109
  %157 = load i64, i64* %lv, align 8
  %158 = load i64, i64* %hv, align 8
  %159 = load i32, i32* %mode.addr, align 4
  %call211 = call %struct.rtx_def* @immed_double_const(i64 %157, i64 %158, i32 %159)
  store %struct.rtx_def* %call211, %struct.rtx_def** %retval
  br label %return

if.end.212:                                       ; preds = %lor.lhs.false.68, %lor.lhs.false, %land.lhs.true.51, %if.end.46
  %160 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load213 = load i32, i32* %161, align 8
  %bf.clear214 = and i32 %bf.load213, 65535
  %cmp215 = icmp ne i32 %bf.clear214, 54
  br i1 %cmp215, label %if.then.228, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %if.end.212
  %162 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %163 = bitcast %struct.rtx_def* %162 to i32*
  %bf.load218 = load i32, i32* %163, align 8
  %bf.clear219 = and i32 %bf.load218, 65535
  %cmp220 = icmp ne i32 %bf.clear219, 54
  br i1 %cmp220, label %if.then.228, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %lor.lhs.false.217
  %164 = load i32, i32* %width, align 4
  %cmp223 = icmp ugt i32 %164, 64
  br i1 %cmp223, label %if.then.228, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %lor.lhs.false.222
  %165 = load i32, i32* %width, align 4
  %cmp226 = icmp eq i32 %165, 0
  br i1 %cmp226, label %if.then.228, label %if.end.1668

if.then.228:                                      ; preds = %lor.lhs.false.225, %lor.lhs.false.222, %lor.lhs.false.217, %if.end.212
  %166 = load i32, i32* %code.addr, align 4
  switch i32 %166, label %sw.default.1666 [
    i32 75, label %sw.bb.229
    i32 74, label %sw.bb.671
    i32 76, label %sw.bb.755
    i32 78, label %sw.bb.1132
    i32 84, label %sw.bb.1243
    i32 85, label %sw.bb.1303
    i32 83, label %sw.bb.1338
    i32 81, label %sw.bb.1406
    i32 79, label %sw.bb.1423
    i32 82, label %sw.bb.1508
    i32 80, label %sw.bb.1528
    i32 91, label %sw.bb.1542
    i32 88, label %sw.bb.1542
    i32 87, label %sw.bb.1563
    i32 89, label %sw.bb.1563
    i32 90, label %sw.bb.1563
    i32 92, label %sw.bb.1575
    i32 93, label %sw.bb.1604
    i32 94, label %sw.bb.1633
    i32 95, label %sw.bb.1649
    i32 146, label %sw.bb.1665
    i32 147, label %sw.bb.1665
    i32 148, label %sw.bb.1665
    i32 149, label %sw.bb.1665
  ]

sw.bb.229:                                        ; preds = %if.then.228
  %167 = load i32, i32* %mode.addr, align 4
  %idxprom230 = sext i32 %167 to i64
  %arrayidx231 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom230
  %168 = load i32, i32* %arrayidx231, align 4
  %cmp232 = icmp eq i32 %168, 2
  br i1 %cmp232, label %land.lhs.true.244, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %sw.bb.229
  %169 = load i32, i32* %mode.addr, align 4
  %idxprom235 = sext i32 %169 to i64
  %arrayidx236 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom235
  %170 = load i32, i32* %arrayidx236, align 4
  %cmp237 = icmp eq i32 %170, 6
  br i1 %cmp237, label %land.lhs.true.244, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.234
  %171 = load i32, i32* %mode.addr, align 4
  %idxprom240 = sext i32 %171 to i64
  %arrayidx241 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom240
  %172 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp eq i32 %172, 8
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.247

land.lhs.true.244:                                ; preds = %lor.lhs.false.239, %lor.lhs.false.234, %sw.bb.229
  %173 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool245 = icmp ne i32 %173, 0
  br i1 %tobool245, label %if.end.247, label %if.then.246

if.then.246:                                      ; preds = %land.lhs.true.244
  br label %sw.epilog.1667

if.end.247:                                       ; preds = %land.lhs.true.244, %lor.lhs.false.239
  %174 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %175 = load i32, i32* %mode.addr, align 4
  %idxprom248 = sext i32 %175 to i64
  %arrayidx249 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom248
  %176 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx249, align 8
  %cmp250 = icmp eq %struct.rtx_def* %174, %176
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %if.end.247
  %177 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %177, %struct.rtx_def** %retval
  br label %return

if.end.253:                                       ; preds = %if.end.247
  %178 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %179 = bitcast %struct.rtx_def* %178 to i32*
  %bf.load254 = load i32, i32* %179, align 8
  %bf.clear255 = and i32 %bf.load254, 65535
  %cmp256 = icmp eq i32 %bf.clear255, 77
  br i1 %cmp256, label %if.then.258, label %if.else.262

if.then.258:                                      ; preds = %if.end.253
  %180 = load i32, i32* %mode.addr, align 4
  %181 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %182 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld259, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx260 to %struct.rtx_def**
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call261 = call %struct.rtx_def* @simplify_gen_binary(i32 76, i32 %180, %struct.rtx_def* %181, %struct.rtx_def* %183)
  store %struct.rtx_def* %call261, %struct.rtx_def** %retval
  br label %return

if.else.262:                                      ; preds = %if.end.253
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %bf.load263 = load i32, i32* %185, align 8
  %bf.clear264 = and i32 %bf.load263, 65535
  %cmp265 = icmp eq i32 %bf.clear264, 77
  br i1 %cmp265, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %if.else.262
  %186 = load i32, i32* %mode.addr, align 4
  %187 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld268, i32 0, i64 0
  %rtx270 = bitcast %union.rtunion_def* %arrayidx269 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx270, align 8
  %call271 = call %struct.rtx_def* @simplify_gen_binary(i32 76, i32 %186, %struct.rtx_def* %187, %struct.rtx_def* %189)
  store %struct.rtx_def* %call271, %struct.rtx_def** %retval
  br label %return

if.end.272:                                       ; preds = %if.else.262
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272
  %190 = load i32, i32* %mode.addr, align 4
  %idxprom274 = sext i32 %190 to i64
  %arrayidx275 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom274
  %191 = load i32, i32* %arrayidx275, align 4
  %cmp276 = icmp eq i32 %191, 1
  br i1 %cmp276, label %land.lhs.true.293, label %lor.lhs.false.278

lor.lhs.false.278:                                ; preds = %if.end.273
  %192 = load i32, i32* %mode.addr, align 4
  %idxprom279 = sext i32 %192 to i64
  %arrayidx280 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom279
  %193 = load i32, i32* %arrayidx280, align 4
  %cmp281 = icmp eq i32 %193, 3
  br i1 %cmp281, label %land.lhs.true.293, label %lor.lhs.false.283

lor.lhs.false.283:                                ; preds = %lor.lhs.false.278
  %194 = load i32, i32* %mode.addr, align 4
  %idxprom284 = sext i32 %194 to i64
  %arrayidx285 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom284
  %195 = load i32, i32* %arrayidx285, align 4
  %cmp286 = icmp eq i32 %195, 5
  br i1 %cmp286, label %land.lhs.true.293, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %lor.lhs.false.283
  %196 = load i32, i32* %mode.addr, align 4
  %idxprom289 = sext i32 %196 to i64
  %arrayidx290 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom289
  %197 = load i32, i32* %arrayidx290, align 4
  %cmp291 = icmp eq i32 %197, 7
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.306

land.lhs.true.293:                                ; preds = %lor.lhs.false.288, %lor.lhs.false.283, %lor.lhs.false.278, %if.end.273
  %198 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load294 = load i32, i32* %199, align 8
  %bf.clear295 = and i32 %bf.load294, 65535
  %cmp296 = icmp eq i32 %bf.clear295, 86
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.306

land.lhs.true.298:                                ; preds = %land.lhs.true.293
  %200 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp299 = icmp eq %struct.rtx_def* %200, %201
  br i1 %cmp299, label %if.then.301, label %if.end.306

if.then.301:                                      ; preds = %land.lhs.true.298
  %202 = load i32, i32* %mode.addr, align 4
  %203 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld302, i32 0, i64 0
  %rtx304 = bitcast %union.rtunion_def* %arrayidx303 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx304, align 8
  %call305 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 77, i32 %202, %struct.rtx_def* %204)
  store %struct.rtx_def* %call305, %struct.rtx_def** %retval
  br label %return

if.end.306:                                       ; preds = %land.lhs.true.298, %land.lhs.true.293, %lor.lhs.false.288
  %205 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %206 = bitcast %struct.rtx_def* %205 to i32*
  %bf.load307 = load i32, i32* %206, align 8
  %bf.clear308 = and i32 %bf.load307, 65535
  %cmp309 = icmp eq i32 %bf.clear308, 67
  br i1 %cmp309, label %land.lhs.true.346, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %if.end.306
  %207 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load312 = load i32, i32* %208, align 8
  %bf.clear313 = and i32 %bf.load312, 65535
  %cmp314 = icmp eq i32 %bf.clear313, 68
  br i1 %cmp314, label %land.lhs.true.346, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %lor.lhs.false.311
  %209 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %210 = bitcast %struct.rtx_def* %209 to i32*
  %bf.load317 = load i32, i32* %210, align 8
  %bf.clear318 = and i32 %bf.load317, 65535
  %cmp319 = icmp eq i32 %bf.clear318, 54
  br i1 %cmp319, label %land.lhs.true.346, label %lor.lhs.false.321

lor.lhs.false.321:                                ; preds = %lor.lhs.false.316
  %211 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %212 = bitcast %struct.rtx_def* %211 to i32*
  %bf.load322 = load i32, i32* %212, align 8
  %bf.clear323 = and i32 %bf.load322, 65535
  %cmp324 = icmp eq i32 %bf.clear323, 55
  br i1 %cmp324, label %land.lhs.true.346, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %lor.lhs.false.321
  %213 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load327 = load i32, i32* %214, align 8
  %bf.clear328 = and i32 %bf.load327, 65535
  %cmp329 = icmp eq i32 %bf.clear328, 58
  br i1 %cmp329, label %land.lhs.true.346, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %lor.lhs.false.326
  %215 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %216 = bitcast %struct.rtx_def* %215 to i32*
  %bf.load332 = load i32, i32* %216, align 8
  %bf.clear333 = and i32 %bf.load332, 65535
  %cmp334 = icmp eq i32 %bf.clear333, 134
  br i1 %cmp334, label %land.lhs.true.346, label %lor.lhs.false.336

lor.lhs.false.336:                                ; preds = %lor.lhs.false.331
  %217 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %218 = bitcast %struct.rtx_def* %217 to i32*
  %bf.load337 = load i32, i32* %218, align 8
  %bf.clear338 = and i32 %bf.load337, 65535
  %cmp339 = icmp eq i32 %bf.clear338, 56
  br i1 %cmp339, label %land.lhs.true.346, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %lor.lhs.false.336
  %219 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load342 = load i32, i32* %220, align 8
  %bf.clear343 = and i32 %bf.load342, 65535
  %cmp344 = icmp eq i32 %bf.clear343, 140
  br i1 %cmp344, label %land.lhs.true.346, label %if.else.362

land.lhs.true.346:                                ; preds = %lor.lhs.false.341, %lor.lhs.false.336, %lor.lhs.false.331, %lor.lhs.false.326, %lor.lhs.false.321, %lor.lhs.false.316, %lor.lhs.false.311, %if.end.306
  %221 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %222 = bitcast %struct.rtx_def* %221 to i32*
  %bf.load347 = load i32, i32* %222, align 8
  %bf.lshr348 = lshr i32 %bf.load347, 16
  %bf.clear349 = and i32 %bf.lshr348, 255
  %cmp350 = icmp ne i32 %bf.clear349, 0
  br i1 %cmp350, label %land.lhs.true.352, label %if.else.362

land.lhs.true.352:                                ; preds = %land.lhs.true.346
  %223 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %224 = bitcast %struct.rtx_def* %223 to i32*
  %bf.load353 = load i32, i32* %224, align 8
  %bf.clear354 = and i32 %bf.load353, 65535
  %cmp355 = icmp eq i32 %bf.clear354, 54
  br i1 %cmp355, label %if.then.357, label %if.else.362

if.then.357:                                      ; preds = %land.lhs.true.352
  %225 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %226 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 0
  %rtwint360 = bitcast %union.rtunion_def* %arrayidx359 to i64*
  %227 = load i64, i64* %rtwint360, align 8
  %call361 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %225, i64 %227)
  store %struct.rtx_def* %call361, %struct.rtx_def** %retval
  br label %return

if.else.362:                                      ; preds = %land.lhs.true.352, %land.lhs.true.346, %lor.lhs.false.341
  %228 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load363 = load i32, i32* %229, align 8
  %bf.clear364 = and i32 %bf.load363, 65535
  %cmp365 = icmp eq i32 %bf.clear364, 67
  br i1 %cmp365, label %land.lhs.true.402, label %lor.lhs.false.367

lor.lhs.false.367:                                ; preds = %if.else.362
  %230 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %231 = bitcast %struct.rtx_def* %230 to i32*
  %bf.load368 = load i32, i32* %231, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 68
  br i1 %cmp370, label %land.lhs.true.402, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %lor.lhs.false.367
  %232 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %bf.load373 = load i32, i32* %233, align 8
  %bf.clear374 = and i32 %bf.load373, 65535
  %cmp375 = icmp eq i32 %bf.clear374, 54
  br i1 %cmp375, label %land.lhs.true.402, label %lor.lhs.false.377

lor.lhs.false.377:                                ; preds = %lor.lhs.false.372
  %234 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %235 = bitcast %struct.rtx_def* %234 to i32*
  %bf.load378 = load i32, i32* %235, align 8
  %bf.clear379 = and i32 %bf.load378, 65535
  %cmp380 = icmp eq i32 %bf.clear379, 55
  br i1 %cmp380, label %land.lhs.true.402, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %lor.lhs.false.377
  %236 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load383 = load i32, i32* %237, align 8
  %bf.clear384 = and i32 %bf.load383, 65535
  %cmp385 = icmp eq i32 %bf.clear384, 58
  br i1 %cmp385, label %land.lhs.true.402, label %lor.lhs.false.387

lor.lhs.false.387:                                ; preds = %lor.lhs.false.382
  %238 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %239 = bitcast %struct.rtx_def* %238 to i32*
  %bf.load388 = load i32, i32* %239, align 8
  %bf.clear389 = and i32 %bf.load388, 65535
  %cmp390 = icmp eq i32 %bf.clear389, 134
  br i1 %cmp390, label %land.lhs.true.402, label %lor.lhs.false.392

lor.lhs.false.392:                                ; preds = %lor.lhs.false.387
  %240 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %241 = bitcast %struct.rtx_def* %240 to i32*
  %bf.load393 = load i32, i32* %241, align 8
  %bf.clear394 = and i32 %bf.load393, 65535
  %cmp395 = icmp eq i32 %bf.clear394, 56
  br i1 %cmp395, label %land.lhs.true.402, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %lor.lhs.false.392
  %242 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %243 = bitcast %struct.rtx_def* %242 to i32*
  %bf.load398 = load i32, i32* %243, align 8
  %bf.clear399 = and i32 %bf.load398, 65535
  %cmp400 = icmp eq i32 %bf.clear399, 140
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.418

land.lhs.true.402:                                ; preds = %lor.lhs.false.397, %lor.lhs.false.392, %lor.lhs.false.387, %lor.lhs.false.382, %lor.lhs.false.377, %lor.lhs.false.372, %lor.lhs.false.367, %if.else.362
  %244 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %245 = bitcast %struct.rtx_def* %244 to i32*
  %bf.load403 = load i32, i32* %245, align 8
  %bf.lshr404 = lshr i32 %bf.load403, 16
  %bf.clear405 = and i32 %bf.lshr404, 255
  %cmp406 = icmp ne i32 %bf.clear405, 0
  br i1 %cmp406, label %land.lhs.true.408, label %if.end.418

land.lhs.true.408:                                ; preds = %land.lhs.true.402
  %246 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %bf.load409 = load i32, i32* %247, align 8
  %bf.clear410 = and i32 %bf.load409, 65535
  %cmp411 = icmp eq i32 %bf.clear410, 54
  br i1 %cmp411, label %if.then.413, label %if.end.418

if.then.413:                                      ; preds = %land.lhs.true.408
  %248 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %249 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld414 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld414, i32 0, i64 0
  %rtwint416 = bitcast %union.rtunion_def* %arrayidx415 to i64*
  %250 = load i64, i64* %rtwint416, align 8
  %call417 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %248, i64 %250)
  store %struct.rtx_def* %call417, %struct.rtx_def** %retval
  br label %return

if.end.418:                                       ; preds = %land.lhs.true.408, %land.lhs.true.402, %lor.lhs.false.397
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418
  %251 = load i32, i32* %mode.addr, align 4
  %idxprom420 = sext i32 %251 to i64
  %arrayidx421 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom420
  %252 = load i32, i32* %arrayidx421, align 4
  %cmp422 = icmp eq i32 %252, 2
  br i1 %cmp422, label %if.end.599, label %lor.lhs.false.424

lor.lhs.false.424:                                ; preds = %if.end.419
  %253 = load i32, i32* %mode.addr, align 4
  %idxprom425 = sext i32 %253 to i64
  %arrayidx426 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom425
  %254 = load i32, i32* %arrayidx426, align 4
  %cmp427 = icmp eq i32 %254, 6
  br i1 %cmp427, label %if.end.599, label %lor.lhs.false.429

lor.lhs.false.429:                                ; preds = %lor.lhs.false.424
  %255 = load i32, i32* %mode.addr, align 4
  %idxprom430 = sext i32 %255 to i64
  %arrayidx431 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom430
  %256 = load i32, i32* %arrayidx431, align 4
  %cmp432 = icmp eq i32 %256, 8
  br i1 %cmp432, label %if.end.599, label %if.then.434

if.then.434:                                      ; preds = %lor.lhs.false.429
  store i64 1, i64* %coeff0, align 8
  store i64 1, i64* %coeff1, align 8
  %257 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %257, %struct.rtx_def** %lhs, align 8
  %258 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %258, %struct.rtx_def** %rhs, align 8
  store i32 0, i32* %had_mult, align 4
  %259 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %260 = bitcast %struct.rtx_def* %259 to i32*
  %bf.load435 = load i32, i32* %260, align 8
  %bf.clear436 = and i32 %bf.load435, 65535
  %cmp437 = icmp eq i32 %bf.clear436, 77
  br i1 %cmp437, label %if.then.439, label %if.else.443

if.then.439:                                      ; preds = %if.then.434
  store i64 -1, i64* %coeff0, align 8
  %261 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 0
  %rtx442 = bitcast %union.rtunion_def* %arrayidx441 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx442, align 8
  store %struct.rtx_def* %262, %struct.rtx_def** %lhs, align 8
  br label %if.end.509

if.else.443:                                      ; preds = %if.then.434
  %263 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %264 = bitcast %struct.rtx_def* %263 to i32*
  %bf.load444 = load i32, i32* %264, align 8
  %bf.clear445 = and i32 %bf.load444, 65535
  %cmp446 = icmp eq i32 %bf.clear445, 78
  br i1 %cmp446, label %land.lhs.true.448, label %if.else.466

land.lhs.true.448:                                ; preds = %if.else.443
  %265 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 1
  %rtx451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx451, align 8
  %267 = bitcast %struct.rtx_def* %266 to i32*
  %bf.load452 = load i32, i32* %267, align 8
  %bf.clear453 = and i32 %bf.load452, 65535
  %cmp454 = icmp eq i32 %bf.clear453, 54
  br i1 %cmp454, label %if.then.456, label %if.else.466

if.then.456:                                      ; preds = %land.lhs.true.448
  %268 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld457 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx458 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld457, i32 0, i64 1
  %rtx459 = bitcast %union.rtunion_def* %arrayidx458 to %struct.rtx_def**
  %269 = load %struct.rtx_def*, %struct.rtx_def** %rtx459, align 8
  %fld460 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx461 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld460, i32 0, i64 0
  %rtwint462 = bitcast %union.rtunion_def* %arrayidx461 to i64*
  %270 = load i64, i64* %rtwint462, align 8
  store i64 %270, i64* %coeff0, align 8
  %271 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %271, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 0
  %rtx465 = bitcast %union.rtunion_def* %arrayidx464 to %struct.rtx_def**
  %272 = load %struct.rtx_def*, %struct.rtx_def** %rtx465, align 8
  store %struct.rtx_def* %272, %struct.rtx_def** %lhs, align 8
  store i32 1, i32* %had_mult, align 4
  br label %if.end.508

if.else.466:                                      ; preds = %land.lhs.true.448, %if.else.443
  %273 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %274 = bitcast %struct.rtx_def* %273 to i32*
  %bf.load467 = load i32, i32* %274, align 8
  %bf.clear468 = and i32 %bf.load467, 65535
  %cmp469 = icmp eq i32 %bf.clear468, 87
  br i1 %cmp469, label %land.lhs.true.471, label %if.end.507

land.lhs.true.471:                                ; preds = %if.else.466
  %275 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld472 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx473 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld472, i32 0, i64 1
  %rtx474 = bitcast %union.rtunion_def* %arrayidx473 to %struct.rtx_def**
  %276 = load %struct.rtx_def*, %struct.rtx_def** %rtx474, align 8
  %277 = bitcast %struct.rtx_def* %276 to i32*
  %bf.load475 = load i32, i32* %277, align 8
  %bf.clear476 = and i32 %bf.load475, 65535
  %cmp477 = icmp eq i32 %bf.clear476, 54
  br i1 %cmp477, label %land.lhs.true.479, label %if.end.507

land.lhs.true.479:                                ; preds = %land.lhs.true.471
  %278 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %278, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld480, i32 0, i64 1
  %rtx482 = bitcast %union.rtunion_def* %arrayidx481 to %struct.rtx_def**
  %279 = load %struct.rtx_def*, %struct.rtx_def** %rtx482, align 8
  %fld483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld483, i32 0, i64 0
  %rtwint485 = bitcast %union.rtunion_def* %arrayidx484 to i64*
  %280 = load i64, i64* %rtwint485, align 8
  %cmp486 = icmp sge i64 %280, 0
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.507

land.lhs.true.488:                                ; preds = %land.lhs.true.479
  %281 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld489 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %arrayidx490 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld489, i32 0, i64 1
  %rtx491 = bitcast %union.rtunion_def* %arrayidx490 to %struct.rtx_def**
  %282 = load %struct.rtx_def*, %struct.rtx_def** %rtx491, align 8
  %fld492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %282, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld492, i32 0, i64 0
  %rtwint494 = bitcast %union.rtunion_def* %arrayidx493 to i64*
  %283 = load i64, i64* %rtwint494, align 8
  %cmp495 = icmp slt i64 %283, 64
  br i1 %cmp495, label %if.then.497, label %if.end.507

if.then.497:                                      ; preds = %land.lhs.true.488
  %284 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %284, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 1
  %rtx500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtx_def**
  %285 = load %struct.rtx_def*, %struct.rtx_def** %rtx500, align 8
  %fld501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %285, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld501, i32 0, i64 0
  %rtwint503 = bitcast %union.rtunion_def* %arrayidx502 to i64*
  %286 = load i64, i64* %rtwint503, align 8
  %shl = shl i64 1, %286
  store i64 %shl, i64* %coeff0, align 8
  %287 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %fld504 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx505 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld504, i32 0, i64 0
  %rtx506 = bitcast %union.rtunion_def* %arrayidx505 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %rtx506, align 8
  store %struct.rtx_def* %288, %struct.rtx_def** %lhs, align 8
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.497, %land.lhs.true.488, %land.lhs.true.479, %land.lhs.true.471, %if.else.466
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.then.456
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.then.439
  %289 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %290 = bitcast %struct.rtx_def* %289 to i32*
  %bf.load510 = load i32, i32* %290, align 8
  %bf.clear511 = and i32 %bf.load510, 65535
  %cmp512 = icmp eq i32 %bf.clear511, 77
  br i1 %cmp512, label %if.then.514, label %if.else.518

if.then.514:                                      ; preds = %if.end.509
  store i64 -1, i64* %coeff1, align 8
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld515 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx516 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld515, i32 0, i64 0
  %rtx517 = bitcast %union.rtunion_def* %arrayidx516 to %struct.rtx_def**
  %292 = load %struct.rtx_def*, %struct.rtx_def** %rtx517, align 8
  store %struct.rtx_def* %292, %struct.rtx_def** %rhs, align 8
  br label %if.end.585

if.else.518:                                      ; preds = %if.end.509
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %294 = bitcast %struct.rtx_def* %293 to i32*
  %bf.load519 = load i32, i32* %294, align 8
  %bf.clear520 = and i32 %bf.load519, 65535
  %cmp521 = icmp eq i32 %bf.clear520, 78
  br i1 %cmp521, label %land.lhs.true.523, label %if.else.541

land.lhs.true.523:                                ; preds = %if.else.518
  %295 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld524 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld524, i32 0, i64 1
  %rtx526 = bitcast %union.rtunion_def* %arrayidx525 to %struct.rtx_def**
  %296 = load %struct.rtx_def*, %struct.rtx_def** %rtx526, align 8
  %297 = bitcast %struct.rtx_def* %296 to i32*
  %bf.load527 = load i32, i32* %297, align 8
  %bf.clear528 = and i32 %bf.load527, 65535
  %cmp529 = icmp eq i32 %bf.clear528, 54
  br i1 %cmp529, label %if.then.531, label %if.else.541

if.then.531:                                      ; preds = %land.lhs.true.523
  %298 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %298, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld532, i32 0, i64 1
  %rtx534 = bitcast %union.rtunion_def* %arrayidx533 to %struct.rtx_def**
  %299 = load %struct.rtx_def*, %struct.rtx_def** %rtx534, align 8
  %fld535 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %arrayidx536 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld535, i32 0, i64 0
  %rtwint537 = bitcast %union.rtunion_def* %arrayidx536 to i64*
  %300 = load i64, i64* %rtwint537, align 8
  store i64 %300, i64* %coeff1, align 8
  %301 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld538, i32 0, i64 0
  %rtx540 = bitcast %union.rtunion_def* %arrayidx539 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx540, align 8
  store %struct.rtx_def* %302, %struct.rtx_def** %rhs, align 8
  store i32 1, i32* %had_mult, align 4
  br label %if.end.584

if.else.541:                                      ; preds = %land.lhs.true.523, %if.else.518
  %303 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load542 = load i32, i32* %304, align 8
  %bf.clear543 = and i32 %bf.load542, 65535
  %cmp544 = icmp eq i32 %bf.clear543, 87
  br i1 %cmp544, label %land.lhs.true.546, label %if.end.583

land.lhs.true.546:                                ; preds = %if.else.541
  %305 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld547 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx548 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld547, i32 0, i64 1
  %rtx549 = bitcast %union.rtunion_def* %arrayidx548 to %struct.rtx_def**
  %306 = load %struct.rtx_def*, %struct.rtx_def** %rtx549, align 8
  %307 = bitcast %struct.rtx_def* %306 to i32*
  %bf.load550 = load i32, i32* %307, align 8
  %bf.clear551 = and i32 %bf.load550, 65535
  %cmp552 = icmp eq i32 %bf.clear551, 54
  br i1 %cmp552, label %land.lhs.true.554, label %if.end.583

land.lhs.true.554:                                ; preds = %land.lhs.true.546
  %308 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld555 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx556 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld555, i32 0, i64 1
  %rtx557 = bitcast %union.rtunion_def* %arrayidx556 to %struct.rtx_def**
  %309 = load %struct.rtx_def*, %struct.rtx_def** %rtx557, align 8
  %fld558 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %309, i32 0, i32 1
  %arrayidx559 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld558, i32 0, i64 0
  %rtwint560 = bitcast %union.rtunion_def* %arrayidx559 to i64*
  %310 = load i64, i64* %rtwint560, align 8
  %cmp561 = icmp sge i64 %310, 0
  br i1 %cmp561, label %land.lhs.true.563, label %if.end.583

land.lhs.true.563:                                ; preds = %land.lhs.true.554
  %311 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld564 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %311, i32 0, i32 1
  %arrayidx565 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld564, i32 0, i64 1
  %rtx566 = bitcast %union.rtunion_def* %arrayidx565 to %struct.rtx_def**
  %312 = load %struct.rtx_def*, %struct.rtx_def** %rtx566, align 8
  %fld567 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %312, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld567, i32 0, i64 0
  %rtwint569 = bitcast %union.rtunion_def* %arrayidx568 to i64*
  %313 = load i64, i64* %rtwint569, align 8
  %cmp570 = icmp slt i64 %313, 64
  br i1 %cmp570, label %if.then.572, label %if.end.583

if.then.572:                                      ; preds = %land.lhs.true.563
  %314 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld573 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %314, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld573, i32 0, i64 1
  %rtx575 = bitcast %union.rtunion_def* %arrayidx574 to %struct.rtx_def**
  %315 = load %struct.rtx_def*, %struct.rtx_def** %rtx575, align 8
  %fld576 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %arrayidx577 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld576, i32 0, i64 0
  %rtwint578 = bitcast %union.rtunion_def* %arrayidx577 to i64*
  %316 = load i64, i64* %rtwint578, align 8
  %shl579 = shl i64 1, %316
  store i64 %shl579, i64* %coeff1, align 8
  %317 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %fld580 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %317, i32 0, i32 1
  %arrayidx581 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld580, i32 0, i64 0
  %rtx582 = bitcast %union.rtunion_def* %arrayidx581 to %struct.rtx_def**
  %318 = load %struct.rtx_def*, %struct.rtx_def** %rtx582, align 8
  store %struct.rtx_def* %318, %struct.rtx_def** %rhs, align 8
  br label %if.end.583

if.end.583:                                       ; preds = %if.then.572, %land.lhs.true.563, %land.lhs.true.554, %land.lhs.true.546, %if.else.541
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %if.then.531
  br label %if.end.585

if.end.585:                                       ; preds = %if.end.584, %if.then.514
  %319 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %320 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %call586 = call i32 @rtx_equal_p(%struct.rtx_def* %319, %struct.rtx_def* %320)
  %tobool587 = icmp ne i32 %call586, 0
  br i1 %tobool587, label %if.then.588, label %if.end.598

if.then.588:                                      ; preds = %if.end.585
  %321 = load i32, i32* %mode.addr, align 4
  %322 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %323 = load i64, i64* %coeff0, align 8
  %324 = load i64, i64* %coeff1, align 8
  %add = add nsw i64 %323, %324
  %call589 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add)
  %call590 = call %struct.rtx_def* @simplify_gen_binary(i32 78, i32 %321, %struct.rtx_def* %322, %struct.rtx_def* %call589)
  store %struct.rtx_def* %call590, %struct.rtx_def** %tem, align 8
  %325 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %326 = bitcast %struct.rtx_def* %325 to i32*
  %bf.load591 = load i32, i32* %326, align 8
  %bf.clear592 = and i32 %bf.load591, 65535
  %cmp593 = icmp eq i32 %bf.clear592, 78
  br i1 %cmp593, label %land.lhs.true.595, label %cond.false

land.lhs.true.595:                                ; preds = %if.then.588
  %327 = load i32, i32* %had_mult, align 4
  %tobool596 = icmp ne i32 %327, 0
  br i1 %tobool596, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.595
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.595, %if.then.588
  %328 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond597 = phi %struct.rtx_def* [ null, %cond.true ], [ %328, %cond.false ]
  store %struct.rtx_def* %cond597, %struct.rtx_def** %retval
  br label %return

if.end.598:                                       ; preds = %if.end.585
  br label %if.end.599

if.end.599:                                       ; preds = %if.end.598, %lor.lhs.false.429, %lor.lhs.false.424, %if.end.419
  %329 = load i32, i32* %mode.addr, align 4
  %idxprom600 = sext i32 %329 to i64
  %arrayidx601 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom600
  %330 = load i32, i32* %arrayidx601, align 4
  %cmp602 = icmp eq i32 %330, 1
  br i1 %cmp602, label %land.lhs.true.619, label %lor.lhs.false.604

lor.lhs.false.604:                                ; preds = %if.end.599
  %331 = load i32, i32* %mode.addr, align 4
  %idxprom605 = sext i32 %331 to i64
  %arrayidx606 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom605
  %332 = load i32, i32* %arrayidx606, align 4
  %cmp607 = icmp eq i32 %332, 3
  br i1 %cmp607, label %land.lhs.true.619, label %lor.lhs.false.609

lor.lhs.false.609:                                ; preds = %lor.lhs.false.604
  %333 = load i32, i32* %mode.addr, align 4
  %idxprom610 = sext i32 %333 to i64
  %arrayidx611 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom610
  %334 = load i32, i32* %arrayidx611, align 4
  %cmp612 = icmp eq i32 %334, 5
  br i1 %cmp612, label %land.lhs.true.619, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %lor.lhs.false.609
  %335 = load i32, i32* %mode.addr, align 4
  %idxprom615 = sext i32 %335 to i64
  %arrayidx616 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom615
  %336 = load i32, i32* %arrayidx616, align 4
  %cmp617 = icmp eq i32 %336, 7
  br i1 %cmp617, label %land.lhs.true.619, label %if.end.670

land.lhs.true.619:                                ; preds = %lor.lhs.false.614, %lor.lhs.false.609, %lor.lhs.false.604, %if.end.599
  %337 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %338 = bitcast %struct.rtx_def* %337 to i32*
  %bf.load620 = load i32, i32* %338, align 8
  %bf.clear621 = and i32 %bf.load620, 65535
  %cmp622 = icmp eq i32 %bf.clear621, 75
  br i1 %cmp622, label %land.lhs.true.665, label %lor.lhs.false.624

lor.lhs.false.624:                                ; preds = %land.lhs.true.619
  %339 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %340 = bitcast %struct.rtx_def* %339 to i32*
  %bf.load625 = load i32, i32* %340, align 8
  %bf.clear626 = and i32 %bf.load625, 65535
  %cmp627 = icmp eq i32 %bf.clear626, 76
  br i1 %cmp627, label %land.lhs.true.665, label %lor.lhs.false.629

lor.lhs.false.629:                                ; preds = %lor.lhs.false.624
  %341 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %342 = bitcast %struct.rtx_def* %341 to i32*
  %bf.load630 = load i32, i32* %342, align 8
  %bf.clear631 = and i32 %bf.load630, 65535
  %cmp632 = icmp eq i32 %bf.clear631, 75
  br i1 %cmp632, label %land.lhs.true.665, label %lor.lhs.false.634

lor.lhs.false.634:                                ; preds = %lor.lhs.false.629
  %343 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %344 = bitcast %struct.rtx_def* %343 to i32*
  %bf.load635 = load i32, i32* %344, align 8
  %bf.clear636 = and i32 %bf.load635, 65535
  %cmp637 = icmp eq i32 %bf.clear636, 76
  br i1 %cmp637, label %land.lhs.true.665, label %lor.lhs.false.639

lor.lhs.false.639:                                ; preds = %lor.lhs.false.634
  %345 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %346 = bitcast %struct.rtx_def* %345 to i32*
  %bf.load640 = load i32, i32* %346, align 8
  %bf.clear641 = and i32 %bf.load640, 65535
  %cmp642 = icmp eq i32 %bf.clear641, 58
  br i1 %cmp642, label %land.lhs.true.644, label %lor.lhs.false.652

land.lhs.true.644:                                ; preds = %lor.lhs.false.639
  %347 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld645 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx646 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld645, i32 0, i64 0
  %rtx647 = bitcast %union.rtunion_def* %arrayidx646 to %struct.rtx_def**
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtx647, align 8
  %349 = bitcast %struct.rtx_def* %348 to i32*
  %bf.load648 = load i32, i32* %349, align 8
  %bf.clear649 = and i32 %bf.load648, 65535
  %cmp650 = icmp eq i32 %bf.clear649, 75
  br i1 %cmp650, label %land.lhs.true.665, label %lor.lhs.false.652

lor.lhs.false.652:                                ; preds = %land.lhs.true.644, %lor.lhs.false.639
  %350 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %351 = bitcast %struct.rtx_def* %350 to i32*
  %bf.load653 = load i32, i32* %351, align 8
  %bf.clear654 = and i32 %bf.load653, 65535
  %cmp655 = icmp eq i32 %bf.clear654, 58
  br i1 %cmp655, label %land.lhs.true.657, label %if.end.670

land.lhs.true.657:                                ; preds = %lor.lhs.false.652
  %352 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld658 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %352, i32 0, i32 1
  %arrayidx659 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld658, i32 0, i64 0
  %rtx660 = bitcast %union.rtunion_def* %arrayidx659 to %struct.rtx_def**
  %353 = load %struct.rtx_def*, %struct.rtx_def** %rtx660, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load661 = load i32, i32* %354, align 8
  %bf.clear662 = and i32 %bf.load661, 65535
  %cmp663 = icmp eq i32 %bf.clear662, 75
  br i1 %cmp663, label %land.lhs.true.665, label %if.end.670

land.lhs.true.665:                                ; preds = %land.lhs.true.657, %land.lhs.true.644, %lor.lhs.false.634, %lor.lhs.false.629, %lor.lhs.false.624, %land.lhs.true.619
  %355 = load i32, i32* %code.addr, align 4
  %356 = load i32, i32* %mode.addr, align 4
  %357 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %358 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call666 = call %struct.rtx_def* @simplify_plus_minus(i32 %355, i32 %356, %struct.rtx_def* %357, %struct.rtx_def* %358, i32 0)
  store %struct.rtx_def* %call666, %struct.rtx_def** %tem, align 8
  %cmp667 = icmp ne %struct.rtx_def* %call666, null
  br i1 %cmp667, label %if.then.669, label %if.end.670

if.then.669:                                      ; preds = %land.lhs.true.665
  %359 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %359, %struct.rtx_def** %retval
  br label %return

if.end.670:                                       ; preds = %land.lhs.true.665, %land.lhs.true.657, %lor.lhs.false.652, %lor.lhs.false.614
  br label %sw.epilog.1667

sw.bb.671:                                        ; preds = %if.then.228
  %360 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %361 = bitcast %struct.rtx_def* %360 to i32*
  %bf.load672 = load i32, i32* %361, align 8
  %bf.clear673 = and i32 %bf.load672, 65535
  %cmp674 = icmp eq i32 %bf.clear673, 105
  br i1 %cmp674, label %land.lhs.true.676, label %lor.lhs.false.681

land.lhs.true.676:                                ; preds = %sw.bb.671
  %362 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %363 = bitcast %struct.rtx_def* %362 to i32*
  %bf.load677 = load i32, i32* %363, align 8
  %bf.clear678 = and i32 %bf.load677, 65535
  %cmp679 = icmp eq i32 %bf.clear678, 107
  br i1 %cmp679, label %land.lhs.true.691, label %lor.lhs.false.681

lor.lhs.false.681:                                ; preds = %land.lhs.true.676, %sw.bb.671
  %364 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %365 = bitcast %struct.rtx_def* %364 to i32*
  %bf.load682 = load i32, i32* %365, align 8
  %bf.clear683 = and i32 %bf.load682, 65535
  %cmp684 = icmp eq i32 %bf.clear683, 109
  br i1 %cmp684, label %land.lhs.true.686, label %if.end.754

land.lhs.true.686:                                ; preds = %lor.lhs.false.681
  %366 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %367 = bitcast %struct.rtx_def* %366 to i32*
  %bf.load687 = load i32, i32* %367, align 8
  %bf.clear688 = and i32 %bf.load687, 65535
  %cmp689 = icmp eq i32 %bf.clear688, 111
  br i1 %cmp689, label %land.lhs.true.691, label %if.end.754

land.lhs.true.691:                                ; preds = %land.lhs.true.686, %land.lhs.true.676
  %368 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld692 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %368, i32 0, i32 1
  %arrayidx693 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld692, i32 0, i64 1
  %rtx694 = bitcast %union.rtunion_def* %arrayidx693 to %struct.rtx_def**
  %369 = load %struct.rtx_def*, %struct.rtx_def** %rtx694, align 8
  %370 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp695 = icmp eq %struct.rtx_def* %369, %370
  br i1 %cmp695, label %land.lhs.true.697, label %if.end.754

land.lhs.true.697:                                ; preds = %land.lhs.true.691
  %371 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld698 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %371, i32 0, i32 1
  %arrayidx699 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld698, i32 0, i64 1
  %rtx700 = bitcast %union.rtunion_def* %arrayidx699 to %struct.rtx_def**
  %372 = load %struct.rtx_def*, %struct.rtx_def** %rtx700, align 8
  %373 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp701 = icmp eq %struct.rtx_def* %372, %373
  br i1 %cmp701, label %if.then.703, label %if.end.754

if.then.703:                                      ; preds = %land.lhs.true.697
  %374 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %374, i32 0, i32 1
  %arrayidx705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld704, i32 0, i64 0
  %rtx706 = bitcast %union.rtunion_def* %arrayidx705 to %struct.rtx_def**
  %375 = load %struct.rtx_def*, %struct.rtx_def** %rtx706, align 8
  store %struct.rtx_def* %375, %struct.rtx_def** %xop00, align 8
  %376 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld707 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %arrayidx708 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld707, i32 0, i64 0
  %rtx709 = bitcast %union.rtunion_def* %arrayidx708 to %struct.rtx_def**
  %377 = load %struct.rtx_def*, %struct.rtx_def** %rtx709, align 8
  store %struct.rtx_def* %377, %struct.rtx_def** %xop10, align 8
  %378 = load %struct.rtx_def*, %struct.rtx_def** %xop00, align 8
  %379 = bitcast %struct.rtx_def* %378 to i32*
  %bf.load710 = load i32, i32* %379, align 8
  %bf.clear711 = and i32 %bf.load710, 65535
  %cmp712 = icmp eq i32 %bf.clear711, 61
  br i1 %cmp712, label %land.lhs.true.714, label %if.end.753

land.lhs.true.714:                                ; preds = %if.then.703
  %380 = load %struct.rtx_def*, %struct.rtx_def** %xop10, align 8
  %381 = bitcast %struct.rtx_def* %380 to i32*
  %bf.load715 = load i32, i32* %381, align 8
  %bf.clear716 = and i32 %bf.load715, 65535
  %cmp717 = icmp eq i32 %bf.clear716, 61
  br i1 %cmp717, label %land.lhs.true.719, label %if.end.753

land.lhs.true.719:                                ; preds = %land.lhs.true.714
  %382 = load %struct.rtx_def*, %struct.rtx_def** %xop00, align 8
  %383 = bitcast %struct.rtx_def* %382 to i32*
  %bf.load720 = load i32, i32* %383, align 8
  %bf.lshr721 = lshr i32 %bf.load720, 16
  %bf.clear722 = and i32 %bf.lshr721, 255
  %384 = load %struct.rtx_def*, %struct.rtx_def** %xop10, align 8
  %385 = bitcast %struct.rtx_def* %384 to i32*
  %bf.load723 = load i32, i32* %385, align 8
  %bf.lshr724 = lshr i32 %bf.load723, 16
  %bf.clear725 = and i32 %bf.lshr724, 255
  %cmp726 = icmp eq i32 %bf.clear722, %bf.clear725
  br i1 %cmp726, label %land.lhs.true.728, label %if.end.753

land.lhs.true.728:                                ; preds = %land.lhs.true.719
  %386 = load %struct.rtx_def*, %struct.rtx_def** %xop00, align 8
  %fld729 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %386, i32 0, i32 1
  %arrayidx730 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld729, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx730 to i32*
  %387 = load i32, i32* %rtuint, align 4
  %388 = load %struct.rtx_def*, %struct.rtx_def** %xop10, align 8
  %fld731 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %388, i32 0, i32 1
  %arrayidx732 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld731, i32 0, i64 0
  %rtuint733 = bitcast %union.rtunion_def* %arrayidx732 to i32*
  %389 = load i32, i32* %rtuint733, align 4
  %cmp734 = icmp eq i32 %387, %389
  br i1 %cmp734, label %land.lhs.true.736, label %if.end.753

land.lhs.true.736:                                ; preds = %land.lhs.true.728
  %390 = load %struct.rtx_def*, %struct.rtx_def** %xop00, align 8
  %391 = bitcast %struct.rtx_def* %390 to i32*
  %bf.load737 = load i32, i32* %391, align 8
  %bf.lshr738 = lshr i32 %bf.load737, 16
  %bf.clear739 = and i32 %bf.lshr738, 255
  %idxprom740 = sext i32 %bf.clear739 to i64
  %arrayidx741 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom740
  %392 = load i32, i32* %arrayidx741, align 4
  %cmp742 = icmp eq i32 %392, 4
  br i1 %cmp742, label %land.lhs.true.744, label %if.end.753

land.lhs.true.744:                                ; preds = %land.lhs.true.736
  %393 = load %struct.rtx_def*, %struct.rtx_def** %xop10, align 8
  %394 = bitcast %struct.rtx_def* %393 to i32*
  %bf.load745 = load i32, i32* %394, align 8
  %bf.lshr746 = lshr i32 %bf.load745, 16
  %bf.clear747 = and i32 %bf.lshr746, 255
  %idxprom748 = sext i32 %bf.clear747 to i64
  %arrayidx749 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom748
  %395 = load i32, i32* %arrayidx749, align 4
  %cmp750 = icmp eq i32 %395, 4
  br i1 %cmp750, label %if.then.752, label %if.end.753

if.then.752:                                      ; preds = %land.lhs.true.744
  %396 = load %struct.rtx_def*, %struct.rtx_def** %xop00, align 8
  store %struct.rtx_def* %396, %struct.rtx_def** %retval
  br label %return

if.end.753:                                       ; preds = %land.lhs.true.744, %land.lhs.true.736, %land.lhs.true.728, %land.lhs.true.719, %land.lhs.true.714, %if.then.703
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.753, %land.lhs.true.697, %land.lhs.true.691, %land.lhs.true.686, %lor.lhs.false.681
  br label %sw.epilog.1667

sw.bb.755:                                        ; preds = %if.then.228
  %397 = load i32, i32* %mode.addr, align 4
  %idxprom756 = sext i32 %397 to i64
  %arrayidx757 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom756
  %398 = load i32, i32* %arrayidx757, align 4
  %cmp758 = icmp eq i32 %398, 2
  br i1 %cmp758, label %land.lhs.true.770, label %lor.lhs.false.760

lor.lhs.false.760:                                ; preds = %sw.bb.755
  %399 = load i32, i32* %mode.addr, align 4
  %idxprom761 = sext i32 %399 to i64
  %arrayidx762 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom761
  %400 = load i32, i32* %arrayidx762, align 4
  %cmp763 = icmp eq i32 %400, 6
  br i1 %cmp763, label %land.lhs.true.770, label %lor.lhs.false.765

lor.lhs.false.765:                                ; preds = %lor.lhs.false.760
  %401 = load i32, i32* %mode.addr, align 4
  %idxprom766 = sext i32 %401 to i64
  %arrayidx767 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom766
  %402 = load i32, i32* %arrayidx767, align 4
  %cmp768 = icmp eq i32 %402, 8
  br i1 %cmp768, label %land.lhs.true.770, label %if.end.773

land.lhs.true.770:                                ; preds = %lor.lhs.false.765, %lor.lhs.false.760, %sw.bb.755
  %403 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool771 = icmp ne i32 %403, 0
  br i1 %tobool771, label %if.end.773, label %if.then.772

if.then.772:                                      ; preds = %land.lhs.true.770
  br label %sw.epilog.1667

if.end.773:                                       ; preds = %land.lhs.true.770, %lor.lhs.false.765
  %404 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %405 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call774 = call i32 @rtx_equal_p(%struct.rtx_def* %404, %struct.rtx_def* %405)
  %tobool775 = icmp ne i32 %call774, 0
  br i1 %tobool775, label %land.lhs.true.776, label %if.end.799

land.lhs.true.776:                                ; preds = %if.end.773
  %406 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call777 = call i32 @side_effects_p(%struct.rtx_def* %406)
  %tobool778 = icmp ne i32 %call777, 0
  br i1 %tobool778, label %if.end.799, label %land.lhs.true.779

land.lhs.true.779:                                ; preds = %land.lhs.true.776
  %407 = load i32, i32* %mode.addr, align 4
  %idxprom780 = sext i32 %407 to i64
  %arrayidx781 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom780
  %408 = load i32, i32* %arrayidx781, align 4
  %cmp782 = icmp eq i32 %408, 2
  br i1 %cmp782, label %lor.lhs.false.794, label %lor.lhs.false.784

lor.lhs.false.784:                                ; preds = %land.lhs.true.779
  %409 = load i32, i32* %mode.addr, align 4
  %idxprom785 = sext i32 %409 to i64
  %arrayidx786 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom785
  %410 = load i32, i32* %arrayidx786, align 4
  %cmp787 = icmp eq i32 %410, 6
  br i1 %cmp787, label %lor.lhs.false.794, label %lor.lhs.false.789

lor.lhs.false.789:                                ; preds = %lor.lhs.false.784
  %411 = load i32, i32* %mode.addr, align 4
  %idxprom790 = sext i32 %411 to i64
  %arrayidx791 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom790
  %412 = load i32, i32* %arrayidx791, align 4
  %cmp792 = icmp eq i32 %412, 8
  br i1 %cmp792, label %lor.lhs.false.794, label %if.then.796

lor.lhs.false.794:                                ; preds = %lor.lhs.false.789, %lor.lhs.false.784, %land.lhs.true.779
  %413 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool795 = icmp ne i32 %413, 0
  br i1 %tobool795, label %if.then.796, label %if.end.799

if.then.796:                                      ; preds = %lor.lhs.false.794, %lor.lhs.false.789
  %414 = load i32, i32* %mode.addr, align 4
  %idxprom797 = sext i32 %414 to i64
  %arrayidx798 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom797
  %415 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx798, align 8
  store %struct.rtx_def* %415, %struct.rtx_def** %retval
  br label %return

if.end.799:                                       ; preds = %lor.lhs.false.794, %land.lhs.true.776, %if.end.773
  %416 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %417 = load i32, i32* %mode.addr, align 4
  %idxprom800 = sext i32 %417 to i64
  %arrayidx801 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom800
  %418 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx801, align 8
  %cmp802 = icmp eq %struct.rtx_def* %416, %418
  br i1 %cmp802, label %if.then.804, label %if.end.806

if.then.804:                                      ; preds = %if.end.799
  %419 = load i32, i32* %mode.addr, align 4
  %420 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call805 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 77, i32 %419, %struct.rtx_def* %420)
  store %struct.rtx_def* %call805, %struct.rtx_def** %retval
  br label %return

if.end.806:                                       ; preds = %if.end.799
  %421 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %422 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp807 = icmp eq %struct.rtx_def* %421, %422
  br i1 %cmp807, label %if.then.809, label %if.end.811

if.then.809:                                      ; preds = %if.end.806
  %423 = load i32, i32* %mode.addr, align 4
  %424 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call810 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 86, i32 %423, %struct.rtx_def* %424)
  store %struct.rtx_def* %call810, %struct.rtx_def** %retval
  br label %return

if.end.811:                                       ; preds = %if.end.806
  %425 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %426 = load i32, i32* %mode.addr, align 4
  %idxprom812 = sext i32 %426 to i64
  %arrayidx813 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom812
  %427 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx813, align 8
  %cmp814 = icmp eq %struct.rtx_def* %425, %427
  br i1 %cmp814, label %if.then.816, label %if.end.817

if.then.816:                                      ; preds = %if.end.811
  %428 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %428, %struct.rtx_def** %retval
  br label %return

if.end.817:                                       ; preds = %if.end.811
  %429 = load i32, i32* %mode.addr, align 4
  %idxprom818 = sext i32 %429 to i64
  %arrayidx819 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom818
  %430 = load i32, i32* %arrayidx819, align 4
  %cmp820 = icmp eq i32 %430, 2
  br i1 %cmp820, label %if.end.1006, label %lor.lhs.false.822

lor.lhs.false.822:                                ; preds = %if.end.817
  %431 = load i32, i32* %mode.addr, align 4
  %idxprom823 = sext i32 %431 to i64
  %arrayidx824 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom823
  %432 = load i32, i32* %arrayidx824, align 4
  %cmp825 = icmp eq i32 %432, 6
  br i1 %cmp825, label %if.end.1006, label %lor.lhs.false.827

lor.lhs.false.827:                                ; preds = %lor.lhs.false.822
  %433 = load i32, i32* %mode.addr, align 4
  %idxprom828 = sext i32 %433 to i64
  %arrayidx829 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom828
  %434 = load i32, i32* %arrayidx829, align 4
  %cmp830 = icmp eq i32 %434, 8
  br i1 %cmp830, label %if.end.1006, label %if.then.832

if.then.832:                                      ; preds = %lor.lhs.false.827
  store i64 1, i64* %coeff0833, align 8
  store i64 1, i64* %coeff1834, align 8
  %435 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %435, %struct.rtx_def** %lhs835, align 8
  %436 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %436, %struct.rtx_def** %rhs836, align 8
  store i32 0, i32* %had_mult837, align 4
  %437 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %438 = bitcast %struct.rtx_def* %437 to i32*
  %bf.load838 = load i32, i32* %438, align 8
  %bf.clear839 = and i32 %bf.load838, 65535
  %cmp840 = icmp eq i32 %bf.clear839, 77
  br i1 %cmp840, label %if.then.842, label %if.else.846

if.then.842:                                      ; preds = %if.then.832
  store i64 -1, i64* %coeff0833, align 8
  %439 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld843 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %439, i32 0, i32 1
  %arrayidx844 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld843, i32 0, i64 0
  %rtx845 = bitcast %union.rtunion_def* %arrayidx844 to %struct.rtx_def**
  %440 = load %struct.rtx_def*, %struct.rtx_def** %rtx845, align 8
  store %struct.rtx_def* %440, %struct.rtx_def** %lhs835, align 8
  br label %if.end.913

if.else.846:                                      ; preds = %if.then.832
  %441 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %442 = bitcast %struct.rtx_def* %441 to i32*
  %bf.load847 = load i32, i32* %442, align 8
  %bf.clear848 = and i32 %bf.load847, 65535
  %cmp849 = icmp eq i32 %bf.clear848, 78
  br i1 %cmp849, label %land.lhs.true.851, label %if.else.869

land.lhs.true.851:                                ; preds = %if.else.846
  %443 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld852 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %443, i32 0, i32 1
  %arrayidx853 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld852, i32 0, i64 1
  %rtx854 = bitcast %union.rtunion_def* %arrayidx853 to %struct.rtx_def**
  %444 = load %struct.rtx_def*, %struct.rtx_def** %rtx854, align 8
  %445 = bitcast %struct.rtx_def* %444 to i32*
  %bf.load855 = load i32, i32* %445, align 8
  %bf.clear856 = and i32 %bf.load855, 65535
  %cmp857 = icmp eq i32 %bf.clear856, 54
  br i1 %cmp857, label %if.then.859, label %if.else.869

if.then.859:                                      ; preds = %land.lhs.true.851
  %446 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld860 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %446, i32 0, i32 1
  %arrayidx861 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld860, i32 0, i64 1
  %rtx862 = bitcast %union.rtunion_def* %arrayidx861 to %struct.rtx_def**
  %447 = load %struct.rtx_def*, %struct.rtx_def** %rtx862, align 8
  %fld863 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %447, i32 0, i32 1
  %arrayidx864 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld863, i32 0, i64 0
  %rtwint865 = bitcast %union.rtunion_def* %arrayidx864 to i64*
  %448 = load i64, i64* %rtwint865, align 8
  store i64 %448, i64* %coeff0833, align 8
  %449 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld866 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %449, i32 0, i32 1
  %arrayidx867 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld866, i32 0, i64 0
  %rtx868 = bitcast %union.rtunion_def* %arrayidx867 to %struct.rtx_def**
  %450 = load %struct.rtx_def*, %struct.rtx_def** %rtx868, align 8
  store %struct.rtx_def* %450, %struct.rtx_def** %lhs835, align 8
  store i32 1, i32* %had_mult837, align 4
  br label %if.end.912

if.else.869:                                      ; preds = %land.lhs.true.851, %if.else.846
  %451 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %452 = bitcast %struct.rtx_def* %451 to i32*
  %bf.load870 = load i32, i32* %452, align 8
  %bf.clear871 = and i32 %bf.load870, 65535
  %cmp872 = icmp eq i32 %bf.clear871, 87
  br i1 %cmp872, label %land.lhs.true.874, label %if.end.911

land.lhs.true.874:                                ; preds = %if.else.869
  %453 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld875 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %453, i32 0, i32 1
  %arrayidx876 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld875, i32 0, i64 1
  %rtx877 = bitcast %union.rtunion_def* %arrayidx876 to %struct.rtx_def**
  %454 = load %struct.rtx_def*, %struct.rtx_def** %rtx877, align 8
  %455 = bitcast %struct.rtx_def* %454 to i32*
  %bf.load878 = load i32, i32* %455, align 8
  %bf.clear879 = and i32 %bf.load878, 65535
  %cmp880 = icmp eq i32 %bf.clear879, 54
  br i1 %cmp880, label %land.lhs.true.882, label %if.end.911

land.lhs.true.882:                                ; preds = %land.lhs.true.874
  %456 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld883 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %456, i32 0, i32 1
  %arrayidx884 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld883, i32 0, i64 1
  %rtx885 = bitcast %union.rtunion_def* %arrayidx884 to %struct.rtx_def**
  %457 = load %struct.rtx_def*, %struct.rtx_def** %rtx885, align 8
  %fld886 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %457, i32 0, i32 1
  %arrayidx887 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld886, i32 0, i64 0
  %rtwint888 = bitcast %union.rtunion_def* %arrayidx887 to i64*
  %458 = load i64, i64* %rtwint888, align 8
  %cmp889 = icmp sge i64 %458, 0
  br i1 %cmp889, label %land.lhs.true.891, label %if.end.911

land.lhs.true.891:                                ; preds = %land.lhs.true.882
  %459 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld892 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %459, i32 0, i32 1
  %arrayidx893 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld892, i32 0, i64 1
  %rtx894 = bitcast %union.rtunion_def* %arrayidx893 to %struct.rtx_def**
  %460 = load %struct.rtx_def*, %struct.rtx_def** %rtx894, align 8
  %fld895 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %460, i32 0, i32 1
  %arrayidx896 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld895, i32 0, i64 0
  %rtwint897 = bitcast %union.rtunion_def* %arrayidx896 to i64*
  %461 = load i64, i64* %rtwint897, align 8
  %cmp898 = icmp slt i64 %461, 64
  br i1 %cmp898, label %if.then.900, label %if.end.911

if.then.900:                                      ; preds = %land.lhs.true.891
  %462 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld901 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %462, i32 0, i32 1
  %arrayidx902 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld901, i32 0, i64 1
  %rtx903 = bitcast %union.rtunion_def* %arrayidx902 to %struct.rtx_def**
  %463 = load %struct.rtx_def*, %struct.rtx_def** %rtx903, align 8
  %fld904 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %463, i32 0, i32 1
  %arrayidx905 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld904, i32 0, i64 0
  %rtwint906 = bitcast %union.rtunion_def* %arrayidx905 to i64*
  %464 = load i64, i64* %rtwint906, align 8
  %shl907 = shl i64 1, %464
  store i64 %shl907, i64* %coeff0833, align 8
  %465 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %fld908 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %465, i32 0, i32 1
  %arrayidx909 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld908, i32 0, i64 0
  %rtx910 = bitcast %union.rtunion_def* %arrayidx909 to %struct.rtx_def**
  %466 = load %struct.rtx_def*, %struct.rtx_def** %rtx910, align 8
  store %struct.rtx_def* %466, %struct.rtx_def** %lhs835, align 8
  br label %if.end.911

if.end.911:                                       ; preds = %if.then.900, %land.lhs.true.891, %land.lhs.true.882, %land.lhs.true.874, %if.else.869
  br label %if.end.912

if.end.912:                                       ; preds = %if.end.911, %if.then.859
  br label %if.end.913

if.end.913:                                       ; preds = %if.end.912, %if.then.842
  %467 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %468 = bitcast %struct.rtx_def* %467 to i32*
  %bf.load914 = load i32, i32* %468, align 8
  %bf.clear915 = and i32 %bf.load914, 65535
  %cmp916 = icmp eq i32 %bf.clear915, 77
  br i1 %cmp916, label %if.then.918, label %if.else.922

if.then.918:                                      ; preds = %if.end.913
  store i64 -1, i64* %coeff1834, align 8
  %469 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld919 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %469, i32 0, i32 1
  %arrayidx920 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld919, i32 0, i64 0
  %rtx921 = bitcast %union.rtunion_def* %arrayidx920 to %struct.rtx_def**
  %470 = load %struct.rtx_def*, %struct.rtx_def** %rtx921, align 8
  store %struct.rtx_def* %470, %struct.rtx_def** %rhs836, align 8
  br label %if.end.989

if.else.922:                                      ; preds = %if.end.913
  %471 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %472 = bitcast %struct.rtx_def* %471 to i32*
  %bf.load923 = load i32, i32* %472, align 8
  %bf.clear924 = and i32 %bf.load923, 65535
  %cmp925 = icmp eq i32 %bf.clear924, 78
  br i1 %cmp925, label %land.lhs.true.927, label %if.else.945

land.lhs.true.927:                                ; preds = %if.else.922
  %473 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld928 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %473, i32 0, i32 1
  %arrayidx929 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld928, i32 0, i64 1
  %rtx930 = bitcast %union.rtunion_def* %arrayidx929 to %struct.rtx_def**
  %474 = load %struct.rtx_def*, %struct.rtx_def** %rtx930, align 8
  %475 = bitcast %struct.rtx_def* %474 to i32*
  %bf.load931 = load i32, i32* %475, align 8
  %bf.clear932 = and i32 %bf.load931, 65535
  %cmp933 = icmp eq i32 %bf.clear932, 54
  br i1 %cmp933, label %if.then.935, label %if.else.945

if.then.935:                                      ; preds = %land.lhs.true.927
  %476 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld936 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %476, i32 0, i32 1
  %arrayidx937 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld936, i32 0, i64 1
  %rtx938 = bitcast %union.rtunion_def* %arrayidx937 to %struct.rtx_def**
  %477 = load %struct.rtx_def*, %struct.rtx_def** %rtx938, align 8
  %fld939 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %477, i32 0, i32 1
  %arrayidx940 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld939, i32 0, i64 0
  %rtwint941 = bitcast %union.rtunion_def* %arrayidx940 to i64*
  %478 = load i64, i64* %rtwint941, align 8
  store i64 %478, i64* %coeff1834, align 8
  %479 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld942 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %479, i32 0, i32 1
  %arrayidx943 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld942, i32 0, i64 0
  %rtx944 = bitcast %union.rtunion_def* %arrayidx943 to %struct.rtx_def**
  %480 = load %struct.rtx_def*, %struct.rtx_def** %rtx944, align 8
  store %struct.rtx_def* %480, %struct.rtx_def** %rhs836, align 8
  store i32 1, i32* %had_mult837, align 4
  br label %if.end.988

if.else.945:                                      ; preds = %land.lhs.true.927, %if.else.922
  %481 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %482 = bitcast %struct.rtx_def* %481 to i32*
  %bf.load946 = load i32, i32* %482, align 8
  %bf.clear947 = and i32 %bf.load946, 65535
  %cmp948 = icmp eq i32 %bf.clear947, 87
  br i1 %cmp948, label %land.lhs.true.950, label %if.end.987

land.lhs.true.950:                                ; preds = %if.else.945
  %483 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld951 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %483, i32 0, i32 1
  %arrayidx952 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld951, i32 0, i64 1
  %rtx953 = bitcast %union.rtunion_def* %arrayidx952 to %struct.rtx_def**
  %484 = load %struct.rtx_def*, %struct.rtx_def** %rtx953, align 8
  %485 = bitcast %struct.rtx_def* %484 to i32*
  %bf.load954 = load i32, i32* %485, align 8
  %bf.clear955 = and i32 %bf.load954, 65535
  %cmp956 = icmp eq i32 %bf.clear955, 54
  br i1 %cmp956, label %land.lhs.true.958, label %if.end.987

land.lhs.true.958:                                ; preds = %land.lhs.true.950
  %486 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld959 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %486, i32 0, i32 1
  %arrayidx960 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld959, i32 0, i64 1
  %rtx961 = bitcast %union.rtunion_def* %arrayidx960 to %struct.rtx_def**
  %487 = load %struct.rtx_def*, %struct.rtx_def** %rtx961, align 8
  %fld962 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %487, i32 0, i32 1
  %arrayidx963 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld962, i32 0, i64 0
  %rtwint964 = bitcast %union.rtunion_def* %arrayidx963 to i64*
  %488 = load i64, i64* %rtwint964, align 8
  %cmp965 = icmp sge i64 %488, 0
  br i1 %cmp965, label %land.lhs.true.967, label %if.end.987

land.lhs.true.967:                                ; preds = %land.lhs.true.958
  %489 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld968 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %489, i32 0, i32 1
  %arrayidx969 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld968, i32 0, i64 1
  %rtx970 = bitcast %union.rtunion_def* %arrayidx969 to %struct.rtx_def**
  %490 = load %struct.rtx_def*, %struct.rtx_def** %rtx970, align 8
  %fld971 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %490, i32 0, i32 1
  %arrayidx972 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld971, i32 0, i64 0
  %rtwint973 = bitcast %union.rtunion_def* %arrayidx972 to i64*
  %491 = load i64, i64* %rtwint973, align 8
  %cmp974 = icmp slt i64 %491, 64
  br i1 %cmp974, label %if.then.976, label %if.end.987

if.then.976:                                      ; preds = %land.lhs.true.967
  %492 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld977 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %492, i32 0, i32 1
  %arrayidx978 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld977, i32 0, i64 1
  %rtx979 = bitcast %union.rtunion_def* %arrayidx978 to %struct.rtx_def**
  %493 = load %struct.rtx_def*, %struct.rtx_def** %rtx979, align 8
  %fld980 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %493, i32 0, i32 1
  %arrayidx981 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld980, i32 0, i64 0
  %rtwint982 = bitcast %union.rtunion_def* %arrayidx981 to i64*
  %494 = load i64, i64* %rtwint982, align 8
  %shl983 = shl i64 1, %494
  store i64 %shl983, i64* %coeff1834, align 8
  %495 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %fld984 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %495, i32 0, i32 1
  %arrayidx985 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld984, i32 0, i64 0
  %rtx986 = bitcast %union.rtunion_def* %arrayidx985 to %struct.rtx_def**
  %496 = load %struct.rtx_def*, %struct.rtx_def** %rtx986, align 8
  store %struct.rtx_def* %496, %struct.rtx_def** %rhs836, align 8
  br label %if.end.987

if.end.987:                                       ; preds = %if.then.976, %land.lhs.true.967, %land.lhs.true.958, %land.lhs.true.950, %if.else.945
  br label %if.end.988

if.end.988:                                       ; preds = %if.end.987, %if.then.935
  br label %if.end.989

if.end.989:                                       ; preds = %if.end.988, %if.then.918
  %497 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %498 = load %struct.rtx_def*, %struct.rtx_def** %rhs836, align 8
  %call990 = call i32 @rtx_equal_p(%struct.rtx_def* %497, %struct.rtx_def* %498)
  %tobool991 = icmp ne i32 %call990, 0
  br i1 %tobool991, label %if.then.992, label %if.end.1005

if.then.992:                                      ; preds = %if.end.989
  %499 = load i32, i32* %mode.addr, align 4
  %500 = load %struct.rtx_def*, %struct.rtx_def** %lhs835, align 8
  %501 = load i64, i64* %coeff0833, align 8
  %502 = load i64, i64* %coeff1834, align 8
  %sub = sub nsw i64 %501, %502
  %call993 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub)
  %call994 = call %struct.rtx_def* @simplify_gen_binary(i32 78, i32 %499, %struct.rtx_def* %500, %struct.rtx_def* %call993)
  store %struct.rtx_def* %call994, %struct.rtx_def** %tem, align 8
  %503 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %504 = bitcast %struct.rtx_def* %503 to i32*
  %bf.load995 = load i32, i32* %504, align 8
  %bf.clear996 = and i32 %bf.load995, 65535
  %cmp997 = icmp eq i32 %bf.clear996, 78
  br i1 %cmp997, label %land.lhs.true.999, label %cond.false.1002

land.lhs.true.999:                                ; preds = %if.then.992
  %505 = load i32, i32* %had_mult837, align 4
  %tobool1000 = icmp ne i32 %505, 0
  br i1 %tobool1000, label %cond.false.1002, label %cond.true.1001

cond.true.1001:                                   ; preds = %land.lhs.true.999
  br label %cond.end.1003

cond.false.1002:                                  ; preds = %land.lhs.true.999, %if.then.992
  %506 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  br label %cond.end.1003

cond.end.1003:                                    ; preds = %cond.false.1002, %cond.true.1001
  %cond1004 = phi %struct.rtx_def* [ null, %cond.true.1001 ], [ %506, %cond.false.1002 ]
  store %struct.rtx_def* %cond1004, %struct.rtx_def** %retval
  br label %return

if.end.1005:                                      ; preds = %if.end.989
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.end.1005, %lor.lhs.false.827, %lor.lhs.false.822, %if.end.817
  %507 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %508 = bitcast %struct.rtx_def* %507 to i32*
  %bf.load1007 = load i32, i32* %508, align 8
  %bf.clear1008 = and i32 %bf.load1007, 65535
  %cmp1009 = icmp eq i32 %bf.clear1008, 77
  br i1 %cmp1009, label %if.then.1011, label %if.end.1016

if.then.1011:                                     ; preds = %if.end.1006
  %509 = load i32, i32* %mode.addr, align 4
  %510 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %511 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1012 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %511, i32 0, i32 1
  %arrayidx1013 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1012, i32 0, i64 0
  %rtx1014 = bitcast %union.rtunion_def* %arrayidx1013 to %struct.rtx_def**
  %512 = load %struct.rtx_def*, %struct.rtx_def** %rtx1014, align 8
  %call1015 = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %509, %struct.rtx_def* %510, %struct.rtx_def* %512)
  store %struct.rtx_def* %call1015, %struct.rtx_def** %retval
  br label %return

if.end.1016:                                      ; preds = %if.end.1006
  %513 = load i32, i32* %mode.addr, align 4
  %idxprom1017 = sext i32 %513 to i64
  %arrayidx1018 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1017
  %514 = load i32, i32* %arrayidx1018, align 4
  %cmp1019 = icmp eq i32 %514, 1
  br i1 %cmp1019, label %land.lhs.true.1036, label %lor.lhs.false.1021

lor.lhs.false.1021:                               ; preds = %if.end.1016
  %515 = load i32, i32* %mode.addr, align 4
  %idxprom1022 = sext i32 %515 to i64
  %arrayidx1023 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1022
  %516 = load i32, i32* %arrayidx1023, align 4
  %cmp1024 = icmp eq i32 %516, 3
  br i1 %cmp1024, label %land.lhs.true.1036, label %lor.lhs.false.1026

lor.lhs.false.1026:                               ; preds = %lor.lhs.false.1021
  %517 = load i32, i32* %mode.addr, align 4
  %idxprom1027 = sext i32 %517 to i64
  %arrayidx1028 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1027
  %518 = load i32, i32* %arrayidx1028, align 4
  %cmp1029 = icmp eq i32 %518, 5
  br i1 %cmp1029, label %land.lhs.true.1036, label %lor.lhs.false.1031

lor.lhs.false.1031:                               ; preds = %lor.lhs.false.1026
  %519 = load i32, i32* %mode.addr, align 4
  %idxprom1032 = sext i32 %519 to i64
  %arrayidx1033 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1032
  %520 = load i32, i32* %arrayidx1033, align 4
  %cmp1034 = icmp eq i32 %520, 7
  br i1 %cmp1034, label %land.lhs.true.1036, label %if.end.1087

land.lhs.true.1036:                               ; preds = %lor.lhs.false.1031, %lor.lhs.false.1026, %lor.lhs.false.1021, %if.end.1016
  %521 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %522 = bitcast %struct.rtx_def* %521 to i32*
  %bf.load1037 = load i32, i32* %522, align 8
  %bf.clear1038 = and i32 %bf.load1037, 65535
  %cmp1039 = icmp eq i32 %bf.clear1038, 75
  br i1 %cmp1039, label %land.lhs.true.1082, label %lor.lhs.false.1041

lor.lhs.false.1041:                               ; preds = %land.lhs.true.1036
  %523 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %524 = bitcast %struct.rtx_def* %523 to i32*
  %bf.load1042 = load i32, i32* %524, align 8
  %bf.clear1043 = and i32 %bf.load1042, 65535
  %cmp1044 = icmp eq i32 %bf.clear1043, 76
  br i1 %cmp1044, label %land.lhs.true.1082, label %lor.lhs.false.1046

lor.lhs.false.1046:                               ; preds = %lor.lhs.false.1041
  %525 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %526 = bitcast %struct.rtx_def* %525 to i32*
  %bf.load1047 = load i32, i32* %526, align 8
  %bf.clear1048 = and i32 %bf.load1047, 65535
  %cmp1049 = icmp eq i32 %bf.clear1048, 75
  br i1 %cmp1049, label %land.lhs.true.1082, label %lor.lhs.false.1051

lor.lhs.false.1051:                               ; preds = %lor.lhs.false.1046
  %527 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %528 = bitcast %struct.rtx_def* %527 to i32*
  %bf.load1052 = load i32, i32* %528, align 8
  %bf.clear1053 = and i32 %bf.load1052, 65535
  %cmp1054 = icmp eq i32 %bf.clear1053, 76
  br i1 %cmp1054, label %land.lhs.true.1082, label %lor.lhs.false.1056

lor.lhs.false.1056:                               ; preds = %lor.lhs.false.1051
  %529 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %530 = bitcast %struct.rtx_def* %529 to i32*
  %bf.load1057 = load i32, i32* %530, align 8
  %bf.clear1058 = and i32 %bf.load1057, 65535
  %cmp1059 = icmp eq i32 %bf.clear1058, 58
  br i1 %cmp1059, label %land.lhs.true.1061, label %lor.lhs.false.1069

land.lhs.true.1061:                               ; preds = %lor.lhs.false.1056
  %531 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld1062 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %531, i32 0, i32 1
  %arrayidx1063 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1062, i32 0, i64 0
  %rtx1064 = bitcast %union.rtunion_def* %arrayidx1063 to %struct.rtx_def**
  %532 = load %struct.rtx_def*, %struct.rtx_def** %rtx1064, align 8
  %533 = bitcast %struct.rtx_def* %532 to i32*
  %bf.load1065 = load i32, i32* %533, align 8
  %bf.clear1066 = and i32 %bf.load1065, 65535
  %cmp1067 = icmp eq i32 %bf.clear1066, 75
  br i1 %cmp1067, label %land.lhs.true.1082, label %lor.lhs.false.1069

lor.lhs.false.1069:                               ; preds = %land.lhs.true.1061, %lor.lhs.false.1056
  %534 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %535 = bitcast %struct.rtx_def* %534 to i32*
  %bf.load1070 = load i32, i32* %535, align 8
  %bf.clear1071 = and i32 %bf.load1070, 65535
  %cmp1072 = icmp eq i32 %bf.clear1071, 58
  br i1 %cmp1072, label %land.lhs.true.1074, label %if.end.1087

land.lhs.true.1074:                               ; preds = %lor.lhs.false.1069
  %536 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1075 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %536, i32 0, i32 1
  %arrayidx1076 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1075, i32 0, i64 0
  %rtx1077 = bitcast %union.rtunion_def* %arrayidx1076 to %struct.rtx_def**
  %537 = load %struct.rtx_def*, %struct.rtx_def** %rtx1077, align 8
  %538 = bitcast %struct.rtx_def* %537 to i32*
  %bf.load1078 = load i32, i32* %538, align 8
  %bf.clear1079 = and i32 %bf.load1078, 65535
  %cmp1080 = icmp eq i32 %bf.clear1079, 75
  br i1 %cmp1080, label %land.lhs.true.1082, label %if.end.1087

land.lhs.true.1082:                               ; preds = %land.lhs.true.1074, %land.lhs.true.1061, %lor.lhs.false.1051, %lor.lhs.false.1046, %lor.lhs.false.1041, %land.lhs.true.1036
  %539 = load i32, i32* %code.addr, align 4
  %540 = load i32, i32* %mode.addr, align 4
  %541 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %542 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1083 = call %struct.rtx_def* @simplify_plus_minus(i32 %539, i32 %540, %struct.rtx_def* %541, %struct.rtx_def* %542, i32 0)
  store %struct.rtx_def* %call1083, %struct.rtx_def** %tem, align 8
  %cmp1084 = icmp ne %struct.rtx_def* %call1083, null
  br i1 %cmp1084, label %if.then.1086, label %if.end.1087

if.then.1086:                                     ; preds = %land.lhs.true.1082
  %543 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %543, %struct.rtx_def** %retval
  br label %return

if.end.1087:                                      ; preds = %land.lhs.true.1082, %land.lhs.true.1074, %lor.lhs.false.1069, %lor.lhs.false.1031
  %544 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %545 = bitcast %struct.rtx_def* %544 to i32*
  %bf.load1088 = load i32, i32* %545, align 8
  %bf.clear1089 = and i32 %bf.load1088, 65535
  %cmp1090 = icmp eq i32 %bf.clear1089, 54
  br i1 %cmp1090, label %land.lhs.true.1092, label %if.end.1101

land.lhs.true.1092:                               ; preds = %if.end.1087
  %546 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %547 = bitcast %struct.rtx_def* %546 to i32*
  %bf.load1093 = load i32, i32* %547, align 8
  %bf.lshr1094 = lshr i32 %bf.load1093, 16
  %bf.clear1095 = and i32 %bf.lshr1094, 255
  %cmp1096 = icmp ne i32 %bf.clear1095, 0
  br i1 %cmp1096, label %if.then.1098, label %if.end.1101

if.then.1098:                                     ; preds = %land.lhs.true.1092
  %548 = load i32, i32* %mode.addr, align 4
  %549 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %550 = load i32, i32* %mode.addr, align 4
  %551 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1099 = call %struct.rtx_def* @neg_const_int(i32 %550, %struct.rtx_def* %551)
  %call1100 = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %548, %struct.rtx_def* %549, %struct.rtx_def* %call1099)
  store %struct.rtx_def* %call1100, %struct.rtx_def** %retval
  br label %return

if.end.1101:                                      ; preds = %land.lhs.true.1092, %if.end.1087
  %552 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %553 = bitcast %struct.rtx_def* %552 to i32*
  %bf.load1102 = load i32, i32* %553, align 8
  %bf.clear1103 = and i32 %bf.load1102, 65535
  %cmp1104 = icmp eq i32 %bf.clear1103, 83
  br i1 %cmp1104, label %if.then.1106, label %if.end.1131

if.then.1106:                                     ; preds = %if.end.1101
  %554 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %555 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %555, i32 0, i32 1
  %arrayidx1108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1107, i32 0, i64 0
  %rtx1109 = bitcast %union.rtunion_def* %arrayidx1108 to %struct.rtx_def**
  %556 = load %struct.rtx_def*, %struct.rtx_def** %rtx1109, align 8
  %call1110 = call i32 @rtx_equal_p(%struct.rtx_def* %554, %struct.rtx_def* %556)
  %tobool1111 = icmp ne i32 %call1110, 0
  br i1 %tobool1111, label %if.then.1112, label %if.end.1118

if.then.1112:                                     ; preds = %if.then.1106
  %557 = load i32, i32* %mode.addr, align 4
  %558 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %559 = load i32, i32* %mode.addr, align 4
  %560 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %560, i32 0, i32 1
  %arrayidx1114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1113, i32 0, i64 1
  %rtx1115 = bitcast %union.rtunion_def* %arrayidx1114 to %struct.rtx_def**
  %561 = load %struct.rtx_def*, %struct.rtx_def** %rtx1115, align 8
  %call1116 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 86, i32 %559, %struct.rtx_def* %561)
  %call1117 = call %struct.rtx_def* @simplify_gen_binary(i32 83, i32 %557, %struct.rtx_def* %558, %struct.rtx_def* %call1116)
  store %struct.rtx_def* %call1117, %struct.rtx_def** %retval
  br label %return

if.end.1118:                                      ; preds = %if.then.1106
  %562 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %563 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %563, i32 0, i32 1
  %arrayidx1120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1119, i32 0, i64 1
  %rtx1121 = bitcast %union.rtunion_def* %arrayidx1120 to %struct.rtx_def**
  %564 = load %struct.rtx_def*, %struct.rtx_def** %rtx1121, align 8
  %call1122 = call i32 @rtx_equal_p(%struct.rtx_def* %562, %struct.rtx_def* %564)
  %tobool1123 = icmp ne i32 %call1122, 0
  br i1 %tobool1123, label %if.then.1124, label %if.end.1130

if.then.1124:                                     ; preds = %if.end.1118
  %565 = load i32, i32* %mode.addr, align 4
  %566 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %567 = load i32, i32* %mode.addr, align 4
  %568 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %568, i32 0, i32 1
  %arrayidx1126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1125, i32 0, i64 0
  %rtx1127 = bitcast %union.rtunion_def* %arrayidx1126 to %struct.rtx_def**
  %569 = load %struct.rtx_def*, %struct.rtx_def** %rtx1127, align 8
  %call1128 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 86, i32 %567, %struct.rtx_def* %569)
  %call1129 = call %struct.rtx_def* @simplify_gen_binary(i32 83, i32 %565, %struct.rtx_def* %566, %struct.rtx_def* %call1128)
  store %struct.rtx_def* %call1129, %struct.rtx_def** %retval
  br label %return

if.end.1130:                                      ; preds = %if.end.1118
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.end.1130, %if.end.1101
  br label %sw.epilog.1667

sw.bb.1132:                                       ; preds = %if.then.228
  %570 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %571 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp1133 = icmp eq %struct.rtx_def* %570, %571
  br i1 %cmp1133, label %if.then.1135, label %if.end.1143

if.then.1135:                                     ; preds = %sw.bb.1132
  %572 = load i32, i32* %mode.addr, align 4
  %573 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %574 = load i32, i32* %mode.addr, align 4
  %call1136 = call %struct.rtx_def* @simplify_unary_operation(i32 77, i32 %572, %struct.rtx_def* %573, i32 %574)
  store %struct.rtx_def* %call1136, %struct.rtx_def** %tem, align 8
  %575 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool1137 = icmp ne %struct.rtx_def* %575, null
  br i1 %tobool1137, label %cond.true.1138, label %cond.false.1139

cond.true.1138:                                   ; preds = %if.then.1135
  %576 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  br label %cond.end.1141

cond.false.1139:                                  ; preds = %if.then.1135
  %577 = load i32, i32* %mode.addr, align 4
  %578 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1140 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 77, i32 %577, %struct.rtx_def* %578)
  br label %cond.end.1141

cond.end.1141:                                    ; preds = %cond.false.1139, %cond.true.1138
  %cond1142 = phi %struct.rtx_def* [ %576, %cond.true.1138 ], [ %call1140, %cond.false.1139 ]
  store %struct.rtx_def* %cond1142, %struct.rtx_def** %retval
  br label %return

if.end.1143:                                      ; preds = %sw.bb.1132
  %579 = load i32, i32* %mode.addr, align 4
  %idxprom1144 = sext i32 %579 to i64
  %arrayidx1145 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1144
  %580 = load i32, i32* %arrayidx1145, align 4
  %cmp1146 = icmp eq i32 %580, 2
  br i1 %cmp1146, label %lor.lhs.false.1158, label %lor.lhs.false.1148

lor.lhs.false.1148:                               ; preds = %if.end.1143
  %581 = load i32, i32* %mode.addr, align 4
  %idxprom1149 = sext i32 %581 to i64
  %arrayidx1150 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1149
  %582 = load i32, i32* %arrayidx1150, align 4
  %cmp1151 = icmp eq i32 %582, 6
  br i1 %cmp1151, label %lor.lhs.false.1158, label %lor.lhs.false.1153

lor.lhs.false.1153:                               ; preds = %lor.lhs.false.1148
  %583 = load i32, i32* %mode.addr, align 4
  %idxprom1154 = sext i32 %583 to i64
  %arrayidx1155 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1154
  %584 = load i32, i32* %arrayidx1155, align 4
  %cmp1156 = icmp eq i32 %584, 8
  br i1 %cmp1156, label %lor.lhs.false.1158, label %land.lhs.true.1160

lor.lhs.false.1158:                               ; preds = %lor.lhs.false.1153, %lor.lhs.false.1148, %if.end.1143
  %585 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool1159 = icmp ne i32 %585, 0
  br i1 %tobool1159, label %land.lhs.true.1160, label %if.end.1169

land.lhs.true.1160:                               ; preds = %lor.lhs.false.1158, %lor.lhs.false.1153
  %586 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %587 = load i32, i32* %mode.addr, align 4
  %idxprom1161 = sext i32 %587 to i64
  %arrayidx1162 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom1161
  %588 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1162, align 8
  %cmp1163 = icmp eq %struct.rtx_def* %586, %588
  br i1 %cmp1163, label %land.lhs.true.1165, label %if.end.1169

land.lhs.true.1165:                               ; preds = %land.lhs.true.1160
  %589 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1166 = call i32 @side_effects_p(%struct.rtx_def* %589)
  %tobool1167 = icmp ne i32 %call1166, 0
  br i1 %tobool1167, label %if.end.1169, label %if.then.1168

if.then.1168:                                     ; preds = %land.lhs.true.1165
  %590 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %590, %struct.rtx_def** %retval
  br label %return

if.end.1169:                                      ; preds = %land.lhs.true.1165, %land.lhs.true.1160, %lor.lhs.false.1158
  %591 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %592 = load i32, i32* %mode.addr, align 4
  %idxprom1170 = sext i32 %592 to i64
  %arrayidx1171 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 1), i32 0, i64 %idxprom1170
  %593 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1171, align 8
  %cmp1172 = icmp eq %struct.rtx_def* %591, %593
  br i1 %cmp1172, label %if.then.1174, label %if.end.1175

if.then.1174:                                     ; preds = %if.end.1169
  %594 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %594, %struct.rtx_def** %retval
  br label %return

if.end.1175:                                      ; preds = %if.end.1169
  %595 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %596 = bitcast %struct.rtx_def* %595 to i32*
  %bf.load1176 = load i32, i32* %596, align 8
  %bf.clear1177 = and i32 %bf.load1176, 65535
  %cmp1178 = icmp eq i32 %bf.clear1177, 54
  br i1 %cmp1178, label %land.lhs.true.1180, label %if.end.1199

land.lhs.true.1180:                               ; preds = %if.end.1175
  %597 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %597, i32 0, i32 1
  %arrayidx1182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1181, i32 0, i64 0
  %rtwint1183 = bitcast %union.rtunion_def* %arrayidx1182 to i64*
  %598 = load i64, i64* %rtwint1183, align 8
  %call1184 = call i32 @exact_log2_wide(i64 %598)
  %conv1185 = sext i32 %call1184 to i64
  store i64 %conv1185, i64* %val, align 8
  %cmp1186 = icmp sge i64 %conv1185, 0
  br i1 %cmp1186, label %land.lhs.true.1188, label %if.end.1199

land.lhs.true.1188:                               ; preds = %land.lhs.true.1180
  %599 = load i32, i32* %width, align 4
  %cmp1189 = icmp ule i32 %599, 64
  br i1 %cmp1189, label %land.lhs.true.1194, label %lor.lhs.false.1191

lor.lhs.false.1191:                               ; preds = %land.lhs.true.1188
  %600 = load i64, i64* %val, align 8
  %cmp1192 = icmp ne i64 %600, 63
  br i1 %cmp1192, label %land.lhs.true.1194, label %if.end.1199

land.lhs.true.1194:                               ; preds = %lor.lhs.false.1191, %land.lhs.true.1188
  %601 = load i32, i32* @rtx_equal_function_value_matters, align 4
  %tobool1195 = icmp ne i32 %601, 0
  br i1 %tobool1195, label %if.end.1199, label %if.then.1196

if.then.1196:                                     ; preds = %land.lhs.true.1194
  %602 = load i32, i32* %mode.addr, align 4
  %603 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %604 = load i64, i64* %val, align 8
  %call1197 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %604)
  %call1198 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 87, i32 %602, %struct.rtx_def* %603, %struct.rtx_def* %call1197)
  store %struct.rtx_def* %call1198, %struct.rtx_def** %retval
  br label %return

if.end.1199:                                      ; preds = %land.lhs.true.1194, %lor.lhs.false.1191, %land.lhs.true.1180, %if.end.1175
  %605 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %606 = bitcast %struct.rtx_def* %605 to i32*
  %bf.load1200 = load i32, i32* %606, align 8
  %bf.clear1201 = and i32 %bf.load1200, 65535
  %cmp1202 = icmp eq i32 %bf.clear1201, 55
  br i1 %cmp1202, label %land.lhs.true.1204, label %if.end.1242

land.lhs.true.1204:                               ; preds = %if.end.1199
  %607 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %608 = bitcast %struct.rtx_def* %607 to i32*
  %bf.load1205 = load i32, i32* %608, align 8
  %bf.lshr1206 = lshr i32 %bf.load1205, 16
  %bf.clear1207 = and i32 %bf.lshr1206, 255
  %idxprom1208 = sext i32 %bf.clear1207 to i64
  %arrayidx1209 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1208
  %609 = load i32, i32* %arrayidx1209, align 4
  %cmp1210 = icmp eq i32 %609, 2
  br i1 %cmp1210, label %if.then.1212, label %if.end.1242

if.then.1212:                                     ; preds = %land.lhs.true.1204
  %610 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %value = getelementptr inbounds %struct.simplify_binary_is2orm1_args, %struct.simplify_binary_is2orm1_args* %args1213, i32 0, i32 0
  store %struct.rtx_def* %610, %struct.rtx_def** %value, align 8
  %611 = bitcast %struct.simplify_binary_is2orm1_args* %args1213 to i8*
  %call1214 = call i32 @do_float_handler(void (i8*)* @simplify_binary_is2orm1, i8* %611)
  %tobool1215 = icmp ne i32 %call1214, 0
  br i1 %tobool1215, label %if.end.1217, label %if.then.1216

if.then.1216:                                     ; preds = %if.then.1212
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1217:                                      ; preds = %if.then.1212
  %is_2 = getelementptr inbounds %struct.simplify_binary_is2orm1_args, %struct.simplify_binary_is2orm1_args* %args1213, i32 0, i32 1
  %612 = load i8, i8* %is_2, align 1
  %tobool1218 = trunc i8 %612 to i1
  br i1 %tobool1218, label %land.lhs.true.1220, label %if.else.1229

land.lhs.true.1220:                               ; preds = %if.end.1217
  %613 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %614 = bitcast %struct.rtx_def* %613 to i32*
  %bf.load1221 = load i32, i32* %614, align 8
  %bf.lshr1222 = lshr i32 %bf.load1221, 16
  %bf.clear1223 = and i32 %bf.lshr1222, 255
  %615 = load i32, i32* %mode.addr, align 4
  %cmp1224 = icmp eq i32 %bf.clear1223, %615
  br i1 %cmp1224, label %if.then.1226, label %if.else.1229

if.then.1226:                                     ; preds = %land.lhs.true.1220
  %616 = load i32, i32* %mode.addr, align 4
  %617 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %618 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1227 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %618)
  %call1228 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %616, %struct.rtx_def* %617, %struct.rtx_def* %call1227)
  store %struct.rtx_def* %call1228, %struct.rtx_def** %retval
  br label %return

if.else.1229:                                     ; preds = %land.lhs.true.1220, %if.end.1217
  %is_m1 = getelementptr inbounds %struct.simplify_binary_is2orm1_args, %struct.simplify_binary_is2orm1_args* %args1213, i32 0, i32 2
  %619 = load i8, i8* %is_m1, align 1
  %tobool1230 = trunc i8 %619 to i1
  br i1 %tobool1230, label %land.lhs.true.1232, label %if.end.1240

land.lhs.true.1232:                               ; preds = %if.else.1229
  %620 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %621 = bitcast %struct.rtx_def* %620 to i32*
  %bf.load1233 = load i32, i32* %621, align 8
  %bf.lshr1234 = lshr i32 %bf.load1233, 16
  %bf.clear1235 = and i32 %bf.lshr1234, 255
  %622 = load i32, i32* %mode.addr, align 4
  %cmp1236 = icmp eq i32 %bf.clear1235, %622
  br i1 %cmp1236, label %if.then.1238, label %if.end.1240

if.then.1238:                                     ; preds = %land.lhs.true.1232
  %623 = load i32, i32* %mode.addr, align 4
  %624 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1239 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 77, i32 %623, %struct.rtx_def* %624)
  store %struct.rtx_def* %call1239, %struct.rtx_def** %retval
  br label %return

if.end.1240:                                      ; preds = %land.lhs.true.1232, %if.else.1229
  br label %if.end.1241

if.end.1241:                                      ; preds = %if.end.1240
  br label %if.end.1242

if.end.1242:                                      ; preds = %if.end.1241, %land.lhs.true.1204, %if.end.1199
  br label %sw.epilog.1667

sw.bb.1243:                                       ; preds = %if.then.228
  %625 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %626 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1244 = icmp eq %struct.rtx_def* %625, %626
  br i1 %cmp1244, label %if.then.1246, label %if.end.1247

if.then.1246:                                     ; preds = %sw.bb.1243
  %627 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %627, %struct.rtx_def** %retval
  br label %return

if.end.1247:                                      ; preds = %sw.bb.1243
  %628 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %629 = bitcast %struct.rtx_def* %628 to i32*
  %bf.load1248 = load i32, i32* %629, align 8
  %bf.clear1249 = and i32 %bf.load1248, 65535
  %cmp1250 = icmp eq i32 %bf.clear1249, 54
  br i1 %cmp1250, label %land.lhs.true.1252, label %if.end.1264

land.lhs.true.1252:                               ; preds = %if.end.1247
  %630 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %630, i32 0, i32 1
  %arrayidx1254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1253, i32 0, i64 0
  %rtwint1255 = bitcast %union.rtunion_def* %arrayidx1254 to i64*
  %631 = load i64, i64* %rtwint1255, align 8
  %632 = load i32, i32* %mode.addr, align 4
  %idxprom1256 = sext i32 %632 to i64
  %arrayidx1257 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1256
  %633 = load i64, i64* %arrayidx1257, align 8
  %and1258 = and i64 %631, %633
  %634 = load i32, i32* %mode.addr, align 4
  %idxprom1259 = sext i32 %634 to i64
  %arrayidx1260 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1259
  %635 = load i64, i64* %arrayidx1260, align 8
  %cmp1261 = icmp eq i64 %and1258, %635
  br i1 %cmp1261, label %if.then.1263, label %if.end.1264

if.then.1263:                                     ; preds = %land.lhs.true.1252
  %636 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %636, %struct.rtx_def** %retval
  br label %return

if.end.1264:                                      ; preds = %land.lhs.true.1252, %if.end.1247
  %637 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %638 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call1265 = call i32 @rtx_equal_p(%struct.rtx_def* %637, %struct.rtx_def* %638)
  %tobool1266 = icmp ne i32 %call1265, 0
  br i1 %tobool1266, label %land.lhs.true.1267, label %if.end.1271

land.lhs.true.1267:                               ; preds = %if.end.1264
  %639 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1268 = call i32 @side_effects_p(%struct.rtx_def* %639)
  %tobool1269 = icmp ne i32 %call1268, 0
  br i1 %tobool1269, label %if.end.1271, label %if.then.1270

if.then.1270:                                     ; preds = %land.lhs.true.1267
  %640 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %640, %struct.rtx_def** %retval
  br label %return

if.end.1271:                                      ; preds = %land.lhs.true.1267, %if.end.1264
  %641 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %642 = bitcast %struct.rtx_def* %641 to i32*
  %bf.load1272 = load i32, i32* %642, align 8
  %bf.clear1273 = and i32 %bf.load1272, 65535
  %cmp1274 = icmp eq i32 %bf.clear1273, 86
  br i1 %cmp1274, label %land.lhs.true.1276, label %lor.lhs.false.1282

land.lhs.true.1276:                               ; preds = %if.end.1271
  %643 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld1277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %643, i32 0, i32 1
  %arrayidx1278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1277, i32 0, i64 0
  %rtx1279 = bitcast %union.rtunion_def* %arrayidx1278 to %struct.rtx_def**
  %644 = load %struct.rtx_def*, %struct.rtx_def** %rtx1279, align 8
  %645 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1280 = call i32 @rtx_equal_p(%struct.rtx_def* %644, %struct.rtx_def* %645)
  %tobool1281 = icmp ne i32 %call1280, 0
  br i1 %tobool1281, label %land.lhs.true.1293, label %lor.lhs.false.1282

lor.lhs.false.1282:                               ; preds = %land.lhs.true.1276, %if.end.1271
  %646 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %647 = bitcast %struct.rtx_def* %646 to i32*
  %bf.load1283 = load i32, i32* %647, align 8
  %bf.clear1284 = and i32 %bf.load1283, 65535
  %cmp1285 = icmp eq i32 %bf.clear1284, 86
  br i1 %cmp1285, label %land.lhs.true.1287, label %if.end.1302

land.lhs.true.1287:                               ; preds = %lor.lhs.false.1282
  %648 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %648, i32 0, i32 1
  %arrayidx1289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1288, i32 0, i64 0
  %rtx1290 = bitcast %union.rtunion_def* %arrayidx1289 to %struct.rtx_def**
  %649 = load %struct.rtx_def*, %struct.rtx_def** %rtx1290, align 8
  %650 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1291 = call i32 @rtx_equal_p(%struct.rtx_def* %649, %struct.rtx_def* %650)
  %tobool1292 = icmp ne i32 %call1291, 0
  br i1 %tobool1292, label %land.lhs.true.1293, label %if.end.1302

land.lhs.true.1293:                               ; preds = %land.lhs.true.1287, %land.lhs.true.1276
  %651 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1294 = call i32 @side_effects_p(%struct.rtx_def* %651)
  %tobool1295 = icmp ne i32 %call1294, 0
  br i1 %tobool1295, label %if.end.1302, label %land.lhs.true.1296

land.lhs.true.1296:                               ; preds = %land.lhs.true.1293
  %652 = load i32, i32* %mode.addr, align 4
  %idxprom1297 = sext i32 %652 to i64
  %arrayidx1298 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1297
  %653 = load i32, i32* %arrayidx1298, align 4
  %cmp1299 = icmp ne i32 %653, 4
  br i1 %cmp1299, label %if.then.1301, label %if.end.1302

if.then.1301:                                     ; preds = %land.lhs.true.1296
  %654 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  store %struct.rtx_def* %654, %struct.rtx_def** %retval
  br label %return

if.end.1302:                                      ; preds = %land.lhs.true.1296, %land.lhs.true.1293, %land.lhs.true.1287, %lor.lhs.false.1282
  br label %sw.epilog.1667

sw.bb.1303:                                       ; preds = %if.then.228
  %655 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %656 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1304 = icmp eq %struct.rtx_def* %655, %656
  br i1 %cmp1304, label %if.then.1306, label %if.end.1307

if.then.1306:                                     ; preds = %sw.bb.1303
  %657 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %657, %struct.rtx_def** %retval
  br label %return

if.end.1307:                                      ; preds = %sw.bb.1303
  %658 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %659 = bitcast %struct.rtx_def* %658 to i32*
  %bf.load1308 = load i32, i32* %659, align 8
  %bf.clear1309 = and i32 %bf.load1308, 65535
  %cmp1310 = icmp eq i32 %bf.clear1309, 54
  br i1 %cmp1310, label %land.lhs.true.1312, label %if.end.1325

land.lhs.true.1312:                               ; preds = %if.end.1307
  %660 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %660, i32 0, i32 1
  %arrayidx1314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1313, i32 0, i64 0
  %rtwint1315 = bitcast %union.rtunion_def* %arrayidx1314 to i64*
  %661 = load i64, i64* %rtwint1315, align 8
  %662 = load i32, i32* %mode.addr, align 4
  %idxprom1316 = sext i32 %662 to i64
  %arrayidx1317 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1316
  %663 = load i64, i64* %arrayidx1317, align 8
  %and1318 = and i64 %661, %663
  %664 = load i32, i32* %mode.addr, align 4
  %idxprom1319 = sext i32 %664 to i64
  %arrayidx1320 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1319
  %665 = load i64, i64* %arrayidx1320, align 8
  %cmp1321 = icmp eq i64 %and1318, %665
  br i1 %cmp1321, label %if.then.1323, label %if.end.1325

if.then.1323:                                     ; preds = %land.lhs.true.1312
  %666 = load i32, i32* %mode.addr, align 4
  %667 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1324 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 86, i32 %666, %struct.rtx_def* %667)
  store %struct.rtx_def* %call1324, %struct.rtx_def** %retval
  br label %return

if.end.1325:                                      ; preds = %land.lhs.true.1312, %if.end.1307
  %668 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %669 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %cmp1326 = icmp eq %struct.rtx_def* %668, %669
  br i1 %cmp1326, label %land.lhs.true.1328, label %if.end.1337

land.lhs.true.1328:                               ; preds = %if.end.1325
  %670 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1329 = call i32 @side_effects_p(%struct.rtx_def* %670)
  %tobool1330 = icmp ne i32 %call1329, 0
  br i1 %tobool1330, label %if.end.1337, label %land.lhs.true.1331

land.lhs.true.1331:                               ; preds = %land.lhs.true.1328
  %671 = load i32, i32* %mode.addr, align 4
  %idxprom1332 = sext i32 %671 to i64
  %arrayidx1333 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1332
  %672 = load i32, i32* %arrayidx1333, align 4
  %cmp1334 = icmp ne i32 %672, 4
  br i1 %cmp1334, label %if.then.1336, label %if.end.1337

if.then.1336:                                     ; preds = %land.lhs.true.1331
  %673 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %673, %struct.rtx_def** %retval
  br label %return

if.end.1337:                                      ; preds = %land.lhs.true.1331, %land.lhs.true.1328, %if.end.1325
  br label %sw.epilog.1667

sw.bb.1338:                                       ; preds = %if.then.228
  %674 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %675 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1339 = icmp eq %struct.rtx_def* %674, %675
  br i1 %cmp1339, label %land.lhs.true.1341, label %if.end.1345

land.lhs.true.1341:                               ; preds = %sw.bb.1338
  %676 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1342 = call i32 @side_effects_p(%struct.rtx_def* %676)
  %tobool1343 = icmp ne i32 %call1342, 0
  br i1 %tobool1343, label %if.end.1345, label %if.then.1344

if.then.1344:                                     ; preds = %land.lhs.true.1341
  %677 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %677, %struct.rtx_def** %retval
  br label %return

if.end.1345:                                      ; preds = %land.lhs.true.1341, %sw.bb.1338
  %678 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %679 = bitcast %struct.rtx_def* %678 to i32*
  %bf.load1346 = load i32, i32* %679, align 8
  %bf.clear1347 = and i32 %bf.load1346, 65535
  %cmp1348 = icmp eq i32 %bf.clear1347, 54
  br i1 %cmp1348, label %land.lhs.true.1350, label %if.end.1362

land.lhs.true.1350:                               ; preds = %if.end.1345
  %680 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1351 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %680, i32 0, i32 1
  %arrayidx1352 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1351, i32 0, i64 0
  %rtwint1353 = bitcast %union.rtunion_def* %arrayidx1352 to i64*
  %681 = load i64, i64* %rtwint1353, align 8
  %682 = load i32, i32* %mode.addr, align 4
  %idxprom1354 = sext i32 %682 to i64
  %arrayidx1355 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1354
  %683 = load i64, i64* %arrayidx1355, align 8
  %and1356 = and i64 %681, %683
  %684 = load i32, i32* %mode.addr, align 4
  %idxprom1357 = sext i32 %684 to i64
  %arrayidx1358 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1357
  %685 = load i64, i64* %arrayidx1358, align 8
  %cmp1359 = icmp eq i64 %and1356, %685
  br i1 %cmp1359, label %if.then.1361, label %if.end.1362

if.then.1361:                                     ; preds = %land.lhs.true.1350
  %686 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %686, %struct.rtx_def** %retval
  br label %return

if.end.1362:                                      ; preds = %land.lhs.true.1350, %if.end.1345
  %687 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %688 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %cmp1363 = icmp eq %struct.rtx_def* %687, %688
  br i1 %cmp1363, label %land.lhs.true.1365, label %if.end.1374

land.lhs.true.1365:                               ; preds = %if.end.1362
  %689 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1366 = call i32 @side_effects_p(%struct.rtx_def* %689)
  %tobool1367 = icmp ne i32 %call1366, 0
  br i1 %tobool1367, label %if.end.1374, label %land.lhs.true.1368

land.lhs.true.1368:                               ; preds = %land.lhs.true.1365
  %690 = load i32, i32* %mode.addr, align 4
  %idxprom1369 = sext i32 %690 to i64
  %arrayidx1370 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1369
  %691 = load i32, i32* %arrayidx1370, align 4
  %cmp1371 = icmp ne i32 %691, 4
  br i1 %cmp1371, label %if.then.1373, label %if.end.1374

if.then.1373:                                     ; preds = %land.lhs.true.1368
  %692 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %692, %struct.rtx_def** %retval
  br label %return

if.end.1374:                                      ; preds = %land.lhs.true.1368, %land.lhs.true.1365, %if.end.1362
  %693 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %694 = bitcast %struct.rtx_def* %693 to i32*
  %bf.load1375 = load i32, i32* %694, align 8
  %bf.clear1376 = and i32 %bf.load1375, 65535
  %cmp1377 = icmp eq i32 %bf.clear1376, 86
  br i1 %cmp1377, label %land.lhs.true.1379, label %lor.lhs.false.1385

land.lhs.true.1379:                               ; preds = %if.end.1374
  %695 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld1380 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %695, i32 0, i32 1
  %arrayidx1381 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1380, i32 0, i64 0
  %rtx1382 = bitcast %union.rtunion_def* %arrayidx1381 to %struct.rtx_def**
  %696 = load %struct.rtx_def*, %struct.rtx_def** %rtx1382, align 8
  %697 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1383 = call i32 @rtx_equal_p(%struct.rtx_def* %696, %struct.rtx_def* %697)
  %tobool1384 = icmp ne i32 %call1383, 0
  br i1 %tobool1384, label %land.lhs.true.1396, label %lor.lhs.false.1385

lor.lhs.false.1385:                               ; preds = %land.lhs.true.1379, %if.end.1374
  %698 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %699 = bitcast %struct.rtx_def* %698 to i32*
  %bf.load1386 = load i32, i32* %699, align 8
  %bf.clear1387 = and i32 %bf.load1386, 65535
  %cmp1388 = icmp eq i32 %bf.clear1387, 86
  br i1 %cmp1388, label %land.lhs.true.1390, label %if.end.1405

land.lhs.true.1390:                               ; preds = %lor.lhs.false.1385
  %700 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %700, i32 0, i32 1
  %arrayidx1392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1391, i32 0, i64 0
  %rtx1393 = bitcast %union.rtunion_def* %arrayidx1392 to %struct.rtx_def**
  %701 = load %struct.rtx_def*, %struct.rtx_def** %rtx1393, align 8
  %702 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1394 = call i32 @rtx_equal_p(%struct.rtx_def* %701, %struct.rtx_def* %702)
  %tobool1395 = icmp ne i32 %call1394, 0
  br i1 %tobool1395, label %land.lhs.true.1396, label %if.end.1405

land.lhs.true.1396:                               ; preds = %land.lhs.true.1390, %land.lhs.true.1379
  %703 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1397 = call i32 @side_effects_p(%struct.rtx_def* %703)
  %tobool1398 = icmp ne i32 %call1397, 0
  br i1 %tobool1398, label %if.end.1405, label %land.lhs.true.1399

land.lhs.true.1399:                               ; preds = %land.lhs.true.1396
  %704 = load i32, i32* %mode.addr, align 4
  %idxprom1400 = sext i32 %704 to i64
  %arrayidx1401 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1400
  %705 = load i32, i32* %arrayidx1401, align 4
  %cmp1402 = icmp ne i32 %705, 4
  br i1 %cmp1402, label %if.then.1404, label %if.end.1405

if.then.1404:                                     ; preds = %land.lhs.true.1399
  %706 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %706, %struct.rtx_def** %retval
  br label %return

if.end.1405:                                      ; preds = %land.lhs.true.1399, %land.lhs.true.1396, %land.lhs.true.1390, %lor.lhs.false.1385
  br label %sw.epilog.1667

sw.bb.1406:                                       ; preds = %if.then.228
  %707 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %708 = bitcast %struct.rtx_def* %707 to i32*
  %bf.load1407 = load i32, i32* %708, align 8
  %bf.clear1408 = and i32 %bf.load1407, 65535
  %cmp1409 = icmp eq i32 %bf.clear1408, 54
  br i1 %cmp1409, label %land.lhs.true.1411, label %if.end.1422

land.lhs.true.1411:                               ; preds = %sw.bb.1406
  %709 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %709, i32 0, i32 1
  %arrayidx1413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1412, i32 0, i64 0
  %rtwint1414 = bitcast %union.rtunion_def* %arrayidx1413 to i64*
  %710 = load i64, i64* %rtwint1414, align 8
  %call1415 = call i32 @exact_log2_wide(i64 %710)
  %conv1416 = sext i32 %call1415 to i64
  store i64 %conv1416, i64* %arg1, align 8
  %cmp1417 = icmp sgt i64 %conv1416, 0
  br i1 %cmp1417, label %if.then.1419, label %if.end.1422

if.then.1419:                                     ; preds = %land.lhs.true.1411
  %711 = load i32, i32* %mode.addr, align 4
  %712 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %713 = load i64, i64* %arg1, align 8
  %call1420 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %713)
  %call1421 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 90, i32 %711, %struct.rtx_def* %712, %struct.rtx_def* %call1420)
  store %struct.rtx_def* %call1421, %struct.rtx_def** %retval
  br label %return

if.end.1422:                                      ; preds = %land.lhs.true.1411, %sw.bb.1406
  br label %sw.bb.1423

sw.bb.1423:                                       ; preds = %if.then.228, %if.end.1422
  %714 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %715 = load i32, i32* %mode.addr, align 4
  %idxprom1424 = sext i32 %715 to i64
  %arrayidx1425 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 1), i32 0, i64 %idxprom1424
  %716 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1425, align 8
  %cmp1426 = icmp eq %struct.rtx_def* %714, %716
  br i1 %cmp1426, label %if.then.1428, label %if.end.1447

if.then.1428:                                     ; preds = %sw.bb.1423
  %717 = load i32, i32* %mode.addr, align 4
  %718 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1429 = call %struct.rtx_def* @gen_lowpart_common(i32 %717, %struct.rtx_def* %718)
  store %struct.rtx_def* %call1429, %struct.rtx_def** %x, align 8
  %719 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool1430 = icmp ne %struct.rtx_def* %719, null
  br i1 %tobool1430, label %if.then.1431, label %if.else.1432

if.then.1431:                                     ; preds = %if.then.1428
  %720 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %720, %struct.rtx_def** %retval
  br label %return

if.else.1432:                                     ; preds = %if.then.1428
  %721 = load i32, i32* %mode.addr, align 4
  %722 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %723 = bitcast %struct.rtx_def* %722 to i32*
  %bf.load1433 = load i32, i32* %723, align 8
  %bf.lshr1434 = lshr i32 %bf.load1433, 16
  %bf.clear1435 = and i32 %bf.lshr1434, 255
  %cmp1436 = icmp ne i32 %721, %bf.clear1435
  br i1 %cmp1436, label %land.lhs.true.1438, label %if.else.1446

land.lhs.true.1438:                               ; preds = %if.else.1432
  %724 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %725 = bitcast %struct.rtx_def* %724 to i32*
  %bf.load1439 = load i32, i32* %725, align 8
  %bf.lshr1440 = lshr i32 %bf.load1439, 16
  %bf.clear1441 = and i32 %bf.lshr1440, 255
  %cmp1442 = icmp ne i32 %bf.clear1441, 0
  br i1 %cmp1442, label %if.then.1444, label %if.else.1446

if.then.1444:                                     ; preds = %land.lhs.true.1438
  %726 = load i32, i32* %mode.addr, align 4
  %727 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1445 = call %struct.rtx_def* @gen_lowpart_SUBREG(i32 %726, %struct.rtx_def* %727)
  store %struct.rtx_def* %call1445, %struct.rtx_def** %retval
  br label %return

if.else.1446:                                     ; preds = %land.lhs.true.1438, %if.else.1432
  %728 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %728, %struct.rtx_def** %retval
  br label %return

if.end.1447:                                      ; preds = %sw.bb.1423
  %729 = load i32, i32* %mode.addr, align 4
  %idxprom1448 = sext i32 %729 to i64
  %arrayidx1449 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1448
  %730 = load i32, i32* %arrayidx1449, align 4
  %cmp1450 = icmp eq i32 %730, 2
  br i1 %cmp1450, label %lor.lhs.false.1462, label %lor.lhs.false.1452

lor.lhs.false.1452:                               ; preds = %if.end.1447
  %731 = load i32, i32* %mode.addr, align 4
  %idxprom1453 = sext i32 %731 to i64
  %arrayidx1454 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1453
  %732 = load i32, i32* %arrayidx1454, align 4
  %cmp1455 = icmp eq i32 %732, 6
  br i1 %cmp1455, label %lor.lhs.false.1462, label %lor.lhs.false.1457

lor.lhs.false.1457:                               ; preds = %lor.lhs.false.1452
  %733 = load i32, i32* %mode.addr, align 4
  %idxprom1458 = sext i32 %733 to i64
  %arrayidx1459 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1458
  %734 = load i32, i32* %arrayidx1459, align 4
  %cmp1460 = icmp eq i32 %734, 8
  br i1 %cmp1460, label %lor.lhs.false.1462, label %land.lhs.true.1464

lor.lhs.false.1462:                               ; preds = %lor.lhs.false.1457, %lor.lhs.false.1452, %if.end.1447
  %735 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool1463 = icmp ne i32 %735, 0
  br i1 %tobool1463, label %land.lhs.true.1464, label %if.else.1473

land.lhs.true.1464:                               ; preds = %lor.lhs.false.1462, %lor.lhs.false.1457
  %736 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %737 = load i32, i32* %mode.addr, align 4
  %idxprom1465 = sext i32 %737 to i64
  %arrayidx1466 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom1465
  %738 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1466, align 8
  %cmp1467 = icmp eq %struct.rtx_def* %736, %738
  br i1 %cmp1467, label %land.lhs.true.1469, label %if.else.1473

land.lhs.true.1469:                               ; preds = %land.lhs.true.1464
  %739 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1470 = call i32 @side_effects_p(%struct.rtx_def* %739)
  %tobool1471 = icmp ne i32 %call1470, 0
  br i1 %tobool1471, label %if.else.1473, label %if.then.1472

if.then.1472:                                     ; preds = %land.lhs.true.1469
  %740 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %740, %struct.rtx_def** %retval
  br label %return

if.else.1473:                                     ; preds = %land.lhs.true.1469, %land.lhs.true.1464, %lor.lhs.false.1462
  %741 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %742 = bitcast %struct.rtx_def* %741 to i32*
  %bf.load1474 = load i32, i32* %742, align 8
  %bf.clear1475 = and i32 %bf.load1474, 65535
  %cmp1476 = icmp eq i32 %bf.clear1475, 55
  br i1 %cmp1476, label %land.lhs.true.1478, label %if.end.1506

land.lhs.true.1478:                               ; preds = %if.else.1473
  %743 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %744 = bitcast %struct.rtx_def* %743 to i32*
  %bf.load1479 = load i32, i32* %744, align 8
  %bf.lshr1480 = lshr i32 %bf.load1479, 16
  %bf.clear1481 = and i32 %bf.lshr1480, 255
  %idxprom1482 = sext i32 %bf.clear1481 to i64
  %arrayidx1483 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1482
  %745 = load i32, i32* %arrayidx1483, align 4
  %cmp1484 = icmp eq i32 %745, 2
  br i1 %cmp1484, label %land.lhs.true.1486, label %if.end.1506

land.lhs.true.1486:                               ; preds = %land.lhs.true.1478
  %746 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %747 = load i32, i32* %mode.addr, align 4
  %idxprom1487 = sext i32 %747 to i64
  %arrayidx1488 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom1487
  %748 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1488, align 8
  %cmp1489 = icmp ne %struct.rtx_def* %746, %748
  br i1 %cmp1489, label %land.lhs.true.1491, label %if.end.1506

land.lhs.true.1491:                               ; preds = %land.lhs.true.1486
  %749 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool1492 = icmp ne i32 %749, 0
  br i1 %tobool1492, label %if.then.1493, label %if.end.1506

if.then.1493:                                     ; preds = %land.lhs.true.1491
  br label %do.body

do.body:                                          ; preds = %if.then.1493
  %750 = bitcast %union.real_extract* %u to i8*
  %751 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1494 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %751, i32 0, i32 1
  %arrayidx1495 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1494, i32 0, i64 1
  %rtwint1496 = bitcast %union.rtunion_def* %arrayidx1495 to i64*
  %752 = bitcast i64* %rtwint1496 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %750, i8* %752, i64 24, i32 8, i1 false)
  %d1497 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %753 = bitcast %struct.realvaluetype* %d to i8*
  %754 = bitcast %struct.realvaluetype* %d1497 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %753, i8* %754, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %call1498 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %d, %struct.realvaluetype* byval align 8 @dconst0)
  %cmp1499 = icmp eq i32 %call1498, 0
  br i1 %cmp1499, label %if.end.1505, label %if.then.1501

if.then.1501:                                     ; preds = %do.end
  %call1502 = call i32 @rtx_to_tree_code(i32 79)
  call void @earith(%struct.realvaluetype* %d, i32 %call1502, %struct.realvaluetype* @dconst1, %struct.realvaluetype* %d)
  %755 = load i32, i32* %mode.addr, align 4
  %756 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %757 = load i32, i32* %mode.addr, align 4
  %call1503 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %d, i32 %757)
  %call1504 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %755, %struct.rtx_def* %756, %struct.rtx_def* %call1503)
  store %struct.rtx_def* %call1504, %struct.rtx_def** %retval
  br label %return

if.end.1505:                                      ; preds = %do.end
  br label %if.end.1506

if.end.1506:                                      ; preds = %if.end.1505, %land.lhs.true.1491, %land.lhs.true.1486, %land.lhs.true.1478, %if.else.1473
  br label %if.end.1507

if.end.1507:                                      ; preds = %if.end.1506
  br label %sw.epilog.1667

sw.bb.1508:                                       ; preds = %if.then.228
  %758 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %759 = bitcast %struct.rtx_def* %758 to i32*
  %bf.load1509 = load i32, i32* %759, align 8
  %bf.clear1510 = and i32 %bf.load1509, 65535
  %cmp1511 = icmp eq i32 %bf.clear1510, 54
  br i1 %cmp1511, label %land.lhs.true.1513, label %if.end.1527

land.lhs.true.1513:                               ; preds = %sw.bb.1508
  %760 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1514 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %760, i32 0, i32 1
  %arrayidx1515 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1514, i32 0, i64 0
  %rtwint1516 = bitcast %union.rtunion_def* %arrayidx1515 to i64*
  %761 = load i64, i64* %rtwint1516, align 8
  %call1517 = call i32 @exact_log2_wide(i64 %761)
  %cmp1518 = icmp sgt i32 %call1517, 0
  br i1 %cmp1518, label %if.then.1520, label %if.end.1527

if.then.1520:                                     ; preds = %land.lhs.true.1513
  %762 = load i32, i32* %mode.addr, align 4
  %763 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %764 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1521 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %764, i32 0, i32 1
  %arrayidx1522 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1521, i32 0, i64 0
  %rtwint1523 = bitcast %union.rtunion_def* %arrayidx1522 to i64*
  %765 = load i64, i64* %rtwint1523, align 8
  %sub1524 = sub nsw i64 %765, 1
  %call1525 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub1524)
  %call1526 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 83, i32 %762, %struct.rtx_def* %763, %struct.rtx_def* %call1525)
  store %struct.rtx_def* %call1526, %struct.rtx_def** %retval
  br label %return

if.end.1527:                                      ; preds = %land.lhs.true.1513, %sw.bb.1508
  br label %sw.bb.1528

sw.bb.1528:                                       ; preds = %if.then.228, %if.end.1527
  %766 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %767 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1529 = icmp eq %struct.rtx_def* %766, %767
  br i1 %cmp1529, label %land.lhs.true.1534, label %lor.lhs.false.1531

lor.lhs.false.1531:                               ; preds = %sw.bb.1528
  %768 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %769 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp1532 = icmp eq %struct.rtx_def* %768, %769
  br i1 %cmp1532, label %land.lhs.true.1534, label %if.end.1541

land.lhs.true.1534:                               ; preds = %lor.lhs.false.1531, %sw.bb.1528
  %770 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1535 = call i32 @side_effects_p(%struct.rtx_def* %770)
  %tobool1536 = icmp ne i32 %call1535, 0
  br i1 %tobool1536, label %if.end.1541, label %land.lhs.true.1537

land.lhs.true.1537:                               ; preds = %land.lhs.true.1534
  %771 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1538 = call i32 @side_effects_p(%struct.rtx_def* %771)
  %tobool1539 = icmp ne i32 %call1538, 0
  br i1 %tobool1539, label %if.end.1541, label %if.then.1540

if.then.1540:                                     ; preds = %land.lhs.true.1537
  %772 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %772, %struct.rtx_def** %retval
  br label %return

if.end.1541:                                      ; preds = %land.lhs.true.1537, %land.lhs.true.1534, %lor.lhs.false.1531
  br label %sw.epilog.1667

sw.bb.1542:                                       ; preds = %if.then.228, %if.then.228
  %773 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %774 = bitcast %struct.rtx_def* %773 to i32*
  %bf.load1543 = load i32, i32* %774, align 8
  %bf.clear1544 = and i32 %bf.load1543, 65535
  %cmp1545 = icmp eq i32 %bf.clear1544, 54
  br i1 %cmp1545, label %land.lhs.true.1547, label %if.end.1562

land.lhs.true.1547:                               ; preds = %sw.bb.1542
  %775 = load i32, i32* %width, align 4
  %cmp1548 = icmp ule i32 %775, 64
  br i1 %cmp1548, label %land.lhs.true.1550, label %if.end.1562

land.lhs.true.1550:                               ; preds = %land.lhs.true.1547
  %776 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld1551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %776, i32 0, i32 1
  %arrayidx1552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1551, i32 0, i64 0
  %rtwint1553 = bitcast %union.rtunion_def* %arrayidx1552 to i64*
  %777 = load i64, i64* %rtwint1553, align 8
  %778 = load i32, i32* %mode.addr, align 4
  %idxprom1554 = sext i32 %778 to i64
  %arrayidx1555 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1554
  %779 = load i64, i64* %arrayidx1555, align 8
  %cmp1556 = icmp eq i64 %777, %779
  br i1 %cmp1556, label %land.lhs.true.1558, label %if.end.1562

land.lhs.true.1558:                               ; preds = %land.lhs.true.1550
  %780 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1559 = call i32 @side_effects_p(%struct.rtx_def* %780)
  %tobool1560 = icmp ne i32 %call1559, 0
  br i1 %tobool1560, label %if.end.1562, label %if.then.1561

if.then.1561:                                     ; preds = %land.lhs.true.1558
  %781 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %781, %struct.rtx_def** %retval
  br label %return

if.end.1562:                                      ; preds = %land.lhs.true.1558, %land.lhs.true.1550, %land.lhs.true.1547, %sw.bb.1542
  br label %sw.bb.1563

sw.bb.1563:                                       ; preds = %if.then.228, %if.then.228, %if.then.228, %if.end.1562
  %782 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %783 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1564 = icmp eq %struct.rtx_def* %782, %783
  br i1 %cmp1564, label %if.then.1566, label %if.end.1567

if.then.1566:                                     ; preds = %sw.bb.1563
  %784 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %784, %struct.rtx_def** %retval
  br label %return

if.end.1567:                                      ; preds = %sw.bb.1563
  %785 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %786 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1568 = icmp eq %struct.rtx_def* %785, %786
  br i1 %cmp1568, label %land.lhs.true.1570, label %if.end.1574

land.lhs.true.1570:                               ; preds = %if.end.1567
  %787 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1571 = call i32 @side_effects_p(%struct.rtx_def* %787)
  %tobool1572 = icmp ne i32 %call1571, 0
  br i1 %tobool1572, label %if.end.1574, label %if.then.1573

if.then.1573:                                     ; preds = %land.lhs.true.1570
  %788 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %788, %struct.rtx_def** %retval
  br label %return

if.end.1574:                                      ; preds = %land.lhs.true.1570, %if.end.1567
  br label %sw.epilog.1667

sw.bb.1575:                                       ; preds = %if.then.228
  %789 = load i32, i32* %width, align 4
  %cmp1576 = icmp ule i32 %789, 64
  br i1 %cmp1576, label %land.lhs.true.1578, label %if.else.1595

land.lhs.true.1578:                               ; preds = %sw.bb.1575
  %790 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %791 = bitcast %struct.rtx_def* %790 to i32*
  %bf.load1579 = load i32, i32* %791, align 8
  %bf.clear1580 = and i32 %bf.load1579, 65535
  %cmp1581 = icmp eq i32 %bf.clear1580, 54
  br i1 %cmp1581, label %land.lhs.true.1583, label %if.else.1595

land.lhs.true.1583:                               ; preds = %land.lhs.true.1578
  %792 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1584 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %792, i32 0, i32 1
  %arrayidx1585 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1584, i32 0, i64 0
  %rtwint1586 = bitcast %union.rtunion_def* %arrayidx1585 to i64*
  %793 = load i64, i64* %rtwint1586, align 8
  %794 = load i32, i32* %width, align 4
  %sub1587 = sub i32 %794, 1
  %sh_prom = zext i32 %sub1587 to i64
  %shl1588 = shl i64 1, %sh_prom
  %cmp1589 = icmp eq i64 %793, %shl1588
  br i1 %cmp1589, label %land.lhs.true.1591, label %if.else.1595

land.lhs.true.1591:                               ; preds = %land.lhs.true.1583
  %795 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1592 = call i32 @side_effects_p(%struct.rtx_def* %795)
  %tobool1593 = icmp ne i32 %call1592, 0
  br i1 %tobool1593, label %if.else.1595, label %if.then.1594

if.then.1594:                                     ; preds = %land.lhs.true.1591
  %796 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %796, %struct.rtx_def** %retval
  br label %return

if.else.1595:                                     ; preds = %land.lhs.true.1591, %land.lhs.true.1583, %land.lhs.true.1578, %sw.bb.1575
  %797 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %798 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call1596 = call i32 @rtx_equal_p(%struct.rtx_def* %797, %struct.rtx_def* %798)
  %tobool1597 = icmp ne i32 %call1596, 0
  br i1 %tobool1597, label %land.lhs.true.1598, label %if.end.1602

land.lhs.true.1598:                               ; preds = %if.else.1595
  %799 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1599 = call i32 @side_effects_p(%struct.rtx_def* %799)
  %tobool1600 = icmp ne i32 %call1599, 0
  br i1 %tobool1600, label %if.end.1602, label %if.then.1601

if.then.1601:                                     ; preds = %land.lhs.true.1598
  %800 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %800, %struct.rtx_def** %retval
  br label %return

if.end.1602:                                      ; preds = %land.lhs.true.1598, %if.else.1595
  br label %if.end.1603

if.end.1603:                                      ; preds = %if.end.1602
  br label %sw.epilog.1667

sw.bb.1604:                                       ; preds = %if.then.228
  %801 = load i32, i32* %width, align 4
  %cmp1605 = icmp ule i32 %801, 64
  br i1 %cmp1605, label %land.lhs.true.1607, label %if.else.1624

land.lhs.true.1607:                               ; preds = %sw.bb.1604
  %802 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %803 = bitcast %struct.rtx_def* %802 to i32*
  %bf.load1608 = load i32, i32* %803, align 8
  %bf.clear1609 = and i32 %bf.load1608, 65535
  %cmp1610 = icmp eq i32 %bf.clear1609, 54
  br i1 %cmp1610, label %land.lhs.true.1612, label %if.else.1624

land.lhs.true.1612:                               ; preds = %land.lhs.true.1607
  %804 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1613 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %804, i32 0, i32 1
  %arrayidx1614 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1613, i32 0, i64 0
  %rtwint1615 = bitcast %union.rtunion_def* %arrayidx1614 to i64*
  %805 = load i64, i64* %rtwint1615, align 8
  %806 = load i32, i32* %mode.addr, align 4
  %idxprom1616 = sext i32 %806 to i64
  %arrayidx1617 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom1616
  %807 = load i64, i64* %arrayidx1617, align 8
  %shr = lshr i64 %807, 1
  %cmp1618 = icmp eq i64 %805, %shr
  br i1 %cmp1618, label %land.lhs.true.1620, label %if.else.1624

land.lhs.true.1620:                               ; preds = %land.lhs.true.1612
  %808 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1621 = call i32 @side_effects_p(%struct.rtx_def* %808)
  %tobool1622 = icmp ne i32 %call1621, 0
  br i1 %tobool1622, label %if.else.1624, label %if.then.1623

if.then.1623:                                     ; preds = %land.lhs.true.1620
  %809 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %809, %struct.rtx_def** %retval
  br label %return

if.else.1624:                                     ; preds = %land.lhs.true.1620, %land.lhs.true.1612, %land.lhs.true.1607, %sw.bb.1604
  %810 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %811 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call1625 = call i32 @rtx_equal_p(%struct.rtx_def* %810, %struct.rtx_def* %811)
  %tobool1626 = icmp ne i32 %call1625, 0
  br i1 %tobool1626, label %land.lhs.true.1627, label %if.end.1631

land.lhs.true.1627:                               ; preds = %if.else.1624
  %812 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1628 = call i32 @side_effects_p(%struct.rtx_def* %812)
  %tobool1629 = icmp ne i32 %call1628, 0
  br i1 %tobool1629, label %if.end.1631, label %if.then.1630

if.then.1630:                                     ; preds = %land.lhs.true.1627
  %813 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %813, %struct.rtx_def** %retval
  br label %return

if.end.1631:                                      ; preds = %land.lhs.true.1627, %if.else.1624
  br label %if.end.1632

if.end.1632:                                      ; preds = %if.end.1631
  br label %sw.epilog.1667

sw.bb.1633:                                       ; preds = %if.then.228
  %814 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %815 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp1634 = icmp eq %struct.rtx_def* %814, %815
  br i1 %cmp1634, label %land.lhs.true.1636, label %if.else.1640

land.lhs.true.1636:                               ; preds = %sw.bb.1633
  %816 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1637 = call i32 @side_effects_p(%struct.rtx_def* %816)
  %tobool1638 = icmp ne i32 %call1637, 0
  br i1 %tobool1638, label %if.else.1640, label %if.then.1639

if.then.1639:                                     ; preds = %land.lhs.true.1636
  %817 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %817, %struct.rtx_def** %retval
  br label %return

if.else.1640:                                     ; preds = %land.lhs.true.1636, %sw.bb.1633
  %818 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %819 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call1641 = call i32 @rtx_equal_p(%struct.rtx_def* %818, %struct.rtx_def* %819)
  %tobool1642 = icmp ne i32 %call1641, 0
  br i1 %tobool1642, label %land.lhs.true.1643, label %if.end.1647

land.lhs.true.1643:                               ; preds = %if.else.1640
  %820 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1644 = call i32 @side_effects_p(%struct.rtx_def* %820)
  %tobool1645 = icmp ne i32 %call1644, 0
  br i1 %tobool1645, label %if.end.1647, label %if.then.1646

if.then.1646:                                     ; preds = %land.lhs.true.1643
  %821 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %821, %struct.rtx_def** %retval
  br label %return

if.end.1647:                                      ; preds = %land.lhs.true.1643, %if.else.1640
  br label %if.end.1648

if.end.1648:                                      ; preds = %if.end.1647
  br label %sw.epilog.1667

sw.bb.1649:                                       ; preds = %if.then.228
  %822 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %823 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp1650 = icmp eq %struct.rtx_def* %822, %823
  br i1 %cmp1650, label %land.lhs.true.1652, label %if.else.1656

land.lhs.true.1652:                               ; preds = %sw.bb.1649
  %824 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1653 = call i32 @side_effects_p(%struct.rtx_def* %824)
  %tobool1654 = icmp ne i32 %call1653, 0
  br i1 %tobool1654, label %if.else.1656, label %if.then.1655

if.then.1655:                                     ; preds = %land.lhs.true.1652
  %825 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %825, %struct.rtx_def** %retval
  br label %return

if.else.1656:                                     ; preds = %land.lhs.true.1652, %sw.bb.1649
  %826 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %827 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call1657 = call i32 @rtx_equal_p(%struct.rtx_def* %826, %struct.rtx_def* %827)
  %tobool1658 = icmp ne i32 %call1657, 0
  br i1 %tobool1658, label %land.lhs.true.1659, label %if.end.1663

land.lhs.true.1659:                               ; preds = %if.else.1656
  %828 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1660 = call i32 @side_effects_p(%struct.rtx_def* %828)
  %tobool1661 = icmp ne i32 %call1660, 0
  br i1 %tobool1661, label %if.end.1663, label %if.then.1662

if.then.1662:                                     ; preds = %land.lhs.true.1659
  %829 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %829, %struct.rtx_def** %retval
  br label %return

if.end.1663:                                      ; preds = %land.lhs.true.1659, %if.else.1656
  br label %if.end.1664

if.end.1664:                                      ; preds = %if.end.1663
  br label %sw.epilog.1667

sw.bb.1665:                                       ; preds = %if.then.228, %if.then.228, %if.then.228, %if.then.228
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.default.1666:                                  ; preds = %if.then.228
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1540, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.simplify_binary_operation, i32 0, i32 0)) #4
  unreachable

sw.epilog.1667:                                   ; preds = %if.end.1664, %if.end.1648, %if.end.1632, %if.end.1603, %if.end.1574, %if.end.1541, %if.end.1507, %if.end.1405, %if.end.1337, %if.end.1302, %if.end.1242, %if.end.1131, %if.then.772, %if.end.754, %if.end.670, %if.then.246
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1668:                                      ; preds = %lor.lhs.false.225
  %830 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld1669 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %830, i32 0, i32 1
  %arrayidx1670 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1669, i32 0, i64 0
  %rtwint1671 = bitcast %union.rtunion_def* %arrayidx1670 to i64*
  %831 = load i64, i64* %rtwint1671, align 8
  store i64 %831, i64* %arg0, align 8
  %832 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld1672 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %832, i32 0, i32 1
  %arrayidx1673 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1672, i32 0, i64 0
  %rtwint1674 = bitcast %union.rtunion_def* %arrayidx1673 to i64*
  %833 = load i64, i64* %rtwint1674, align 8
  store i64 %833, i64* %arg1, align 8
  %834 = load i32, i32* %width, align 4
  %cmp1675 = icmp ult i32 %834, 64
  br i1 %cmp1675, label %if.then.1677, label %if.else.1706

if.then.1677:                                     ; preds = %if.end.1668
  %835 = load i32, i32* %width, align 4
  %sh_prom1678 = zext i32 %835 to i64
  %shl1679 = shl i64 1, %sh_prom1678
  %sub1680 = sub nsw i64 %shl1679, 1
  %836 = load i64, i64* %arg0, align 8
  %and1681 = and i64 %836, %sub1680
  store i64 %and1681, i64* %arg0, align 8
  %837 = load i32, i32* %width, align 4
  %sh_prom1682 = zext i32 %837 to i64
  %shl1683 = shl i64 1, %sh_prom1682
  %sub1684 = sub nsw i64 %shl1683, 1
  %838 = load i64, i64* %arg1, align 8
  %and1685 = and i64 %838, %sub1684
  store i64 %and1685, i64* %arg1, align 8
  %839 = load i64, i64* %arg0, align 8
  store i64 %839, i64* %arg0s, align 8
  %840 = load i64, i64* %arg0s, align 8
  %841 = load i32, i32* %width, align 4
  %sub1686 = sub i32 %841, 1
  %sh_prom1687 = zext i32 %sub1686 to i64
  %shl1688 = shl i64 1, %sh_prom1687
  %and1689 = and i64 %840, %shl1688
  %tobool1690 = icmp ne i64 %and1689, 0
  br i1 %tobool1690, label %if.then.1691, label %if.end.1695

if.then.1691:                                     ; preds = %if.then.1677
  %842 = load i32, i32* %width, align 4
  %sh_prom1692 = zext i32 %842 to i64
  %shl1693 = shl i64 -1, %sh_prom1692
  %843 = load i64, i64* %arg0s, align 8
  %or1694 = or i64 %843, %shl1693
  store i64 %or1694, i64* %arg0s, align 8
  br label %if.end.1695

if.end.1695:                                      ; preds = %if.then.1691, %if.then.1677
  %844 = load i64, i64* %arg1, align 8
  store i64 %844, i64* %arg1s, align 8
  %845 = load i64, i64* %arg1s, align 8
  %846 = load i32, i32* %width, align 4
  %sub1696 = sub i32 %846, 1
  %sh_prom1697 = zext i32 %sub1696 to i64
  %shl1698 = shl i64 1, %sh_prom1697
  %and1699 = and i64 %845, %shl1698
  %tobool1700 = icmp ne i64 %and1699, 0
  br i1 %tobool1700, label %if.then.1701, label %if.end.1705

if.then.1701:                                     ; preds = %if.end.1695
  %847 = load i32, i32* %width, align 4
  %sh_prom1702 = zext i32 %847 to i64
  %shl1703 = shl i64 -1, %sh_prom1702
  %848 = load i64, i64* %arg1s, align 8
  %or1704 = or i64 %848, %shl1703
  store i64 %or1704, i64* %arg1s, align 8
  br label %if.end.1705

if.end.1705:                                      ; preds = %if.then.1701, %if.end.1695
  br label %if.end.1707

if.else.1706:                                     ; preds = %if.end.1668
  %849 = load i64, i64* %arg0, align 8
  store i64 %849, i64* %arg0s, align 8
  %850 = load i64, i64* %arg1, align 8
  store i64 %850, i64* %arg1s, align 8
  br label %if.end.1707

if.end.1707:                                      ; preds = %if.else.1706, %if.end.1705
  %851 = load i32, i32* %code.addr, align 4
  switch i32 %851, label %sw.default.1846 [
    i32 75, label %sw.bb.1708
    i32 76, label %sw.bb.1710
    i32 78, label %sw.bb.1712
    i32 79, label %sw.bb.1713
    i32 80, label %sw.bb.1724
    i32 81, label %sw.bb.1735
    i32 82, label %sw.bb.1747
    i32 83, label %sw.bb.1759
    i32 84, label %sw.bb.1761
    i32 85, label %sw.bb.1763
    i32 90, label %sw.bb.1765
    i32 87, label %sw.bb.1771
    i32 89, label %sw.bb.1777
    i32 91, label %sw.bb.1793
    i32 88, label %sw.bb.1805
    i32 74, label %sw.bb.1817
    i32 92, label %sw.bb.1818
    i32 94, label %sw.bb.1825
    i32 93, label %sw.bb.1832
    i32 95, label %sw.bb.1839
  ]

sw.bb.1708:                                       ; preds = %if.end.1707
  %852 = load i64, i64* %arg0s, align 8
  %853 = load i64, i64* %arg1s, align 8
  %add1709 = add nsw i64 %852, %853
  store i64 %add1709, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1710:                                       ; preds = %if.end.1707
  %854 = load i64, i64* %arg0s, align 8
  %855 = load i64, i64* %arg1s, align 8
  %sub1711 = sub nsw i64 %854, %855
  store i64 %sub1711, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1712:                                       ; preds = %if.end.1707
  %856 = load i64, i64* %arg0s, align 8
  %857 = load i64, i64* %arg1s, align 8
  %mul = mul nsw i64 %856, %857
  store i64 %mul, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1713:                                       ; preds = %if.end.1707
  %858 = load i64, i64* %arg1s, align 8
  %cmp1714 = icmp eq i64 %858, 0
  br i1 %cmp1714, label %if.then.1722, label %lor.lhs.false.1716

lor.lhs.false.1716:                               ; preds = %sw.bb.1713
  %859 = load i64, i64* %arg0s, align 8
  %cmp1717 = icmp eq i64 %859, -9223372036854775808
  br i1 %cmp1717, label %land.lhs.true.1719, label %if.end.1723

land.lhs.true.1719:                               ; preds = %lor.lhs.false.1716
  %860 = load i64, i64* %arg1s, align 8
  %cmp1720 = icmp eq i64 %860, -1
  br i1 %cmp1720, label %if.then.1722, label %if.end.1723

if.then.1722:                                     ; preds = %land.lhs.true.1719, %sw.bb.1713
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1723:                                      ; preds = %land.lhs.true.1719, %lor.lhs.false.1716
  %861 = load i64, i64* %arg0s, align 8
  %862 = load i64, i64* %arg1s, align 8
  %div = sdiv i64 %861, %862
  store i64 %div, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1724:                                       ; preds = %if.end.1707
  %863 = load i64, i64* %arg1s, align 8
  %cmp1725 = icmp eq i64 %863, 0
  br i1 %cmp1725, label %if.then.1733, label %lor.lhs.false.1727

lor.lhs.false.1727:                               ; preds = %sw.bb.1724
  %864 = load i64, i64* %arg0s, align 8
  %cmp1728 = icmp eq i64 %864, -9223372036854775808
  br i1 %cmp1728, label %land.lhs.true.1730, label %if.end.1734

land.lhs.true.1730:                               ; preds = %lor.lhs.false.1727
  %865 = load i64, i64* %arg1s, align 8
  %cmp1731 = icmp eq i64 %865, -1
  br i1 %cmp1731, label %if.then.1733, label %if.end.1734

if.then.1733:                                     ; preds = %land.lhs.true.1730, %sw.bb.1724
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1734:                                      ; preds = %land.lhs.true.1730, %lor.lhs.false.1727
  %866 = load i64, i64* %arg0s, align 8
  %867 = load i64, i64* %arg1s, align 8
  %rem = srem i64 %866, %867
  store i64 %rem, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1735:                                       ; preds = %if.end.1707
  %868 = load i64, i64* %arg1, align 8
  %cmp1736 = icmp eq i64 %868, 0
  br i1 %cmp1736, label %if.then.1744, label %lor.lhs.false.1738

lor.lhs.false.1738:                               ; preds = %sw.bb.1735
  %869 = load i64, i64* %arg0s, align 8
  %cmp1739 = icmp eq i64 %869, -9223372036854775808
  br i1 %cmp1739, label %land.lhs.true.1741, label %if.end.1745

land.lhs.true.1741:                               ; preds = %lor.lhs.false.1738
  %870 = load i64, i64* %arg1s, align 8
  %cmp1742 = icmp eq i64 %870, -1
  br i1 %cmp1742, label %if.then.1744, label %if.end.1745

if.then.1744:                                     ; preds = %land.lhs.true.1741, %sw.bb.1735
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1745:                                      ; preds = %land.lhs.true.1741, %lor.lhs.false.1738
  %871 = load i64, i64* %arg0, align 8
  %872 = load i64, i64* %arg1, align 8
  %div1746 = udiv i64 %871, %872
  store i64 %div1746, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1747:                                       ; preds = %if.end.1707
  %873 = load i64, i64* %arg1, align 8
  %cmp1748 = icmp eq i64 %873, 0
  br i1 %cmp1748, label %if.then.1756, label %lor.lhs.false.1750

lor.lhs.false.1750:                               ; preds = %sw.bb.1747
  %874 = load i64, i64* %arg0s, align 8
  %cmp1751 = icmp eq i64 %874, -9223372036854775808
  br i1 %cmp1751, label %land.lhs.true.1753, label %if.end.1757

land.lhs.true.1753:                               ; preds = %lor.lhs.false.1750
  %875 = load i64, i64* %arg1s, align 8
  %cmp1754 = icmp eq i64 %875, -1
  br i1 %cmp1754, label %if.then.1756, label %if.end.1757

if.then.1756:                                     ; preds = %land.lhs.true.1753, %sw.bb.1747
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1757:                                      ; preds = %land.lhs.true.1753, %lor.lhs.false.1750
  %876 = load i64, i64* %arg0, align 8
  %877 = load i64, i64* %arg1, align 8
  %rem1758 = urem i64 %876, %877
  store i64 %rem1758, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1759:                                       ; preds = %if.end.1707
  %878 = load i64, i64* %arg0, align 8
  %879 = load i64, i64* %arg1, align 8
  %and1760 = and i64 %878, %879
  store i64 %and1760, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1761:                                       ; preds = %if.end.1707
  %880 = load i64, i64* %arg0, align 8
  %881 = load i64, i64* %arg1, align 8
  %or1762 = or i64 %880, %881
  store i64 %or1762, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1763:                                       ; preds = %if.end.1707
  %882 = load i64, i64* %arg0, align 8
  %883 = load i64, i64* %arg1, align 8
  %xor1764 = xor i64 %882, %883
  store i64 %xor1764, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1765:                                       ; preds = %if.end.1707
  %884 = load i64, i64* %arg1, align 8
  %cmp1766 = icmp slt i64 %884, 0
  br i1 %cmp1766, label %if.then.1768, label %if.end.1769

if.then.1768:                                     ; preds = %sw.bb.1765
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1769:                                      ; preds = %sw.bb.1765
  %885 = load i64, i64* %arg0, align 8
  %886 = load i64, i64* %arg1, align 8
  %shr1770 = lshr i64 %885, %886
  store i64 %shr1770, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1771:                                       ; preds = %if.end.1707
  %887 = load i64, i64* %arg1, align 8
  %cmp1772 = icmp slt i64 %887, 0
  br i1 %cmp1772, label %if.then.1774, label %if.end.1775

if.then.1774:                                     ; preds = %sw.bb.1771
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1775:                                      ; preds = %sw.bb.1771
  %888 = load i64, i64* %arg0, align 8
  %889 = load i64, i64* %arg1, align 8
  %shl1776 = shl i64 %888, %889
  store i64 %shl1776, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1777:                                       ; preds = %if.end.1707
  %890 = load i64, i64* %arg1, align 8
  %cmp1778 = icmp slt i64 %890, 0
  br i1 %cmp1778, label %if.then.1780, label %if.end.1781

if.then.1780:                                     ; preds = %sw.bb.1777
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1781:                                      ; preds = %sw.bb.1777
  %891 = load i64, i64* %arg0s, align 8
  %892 = load i64, i64* %arg1, align 8
  %shr1782 = ashr i64 %891, %892
  store i64 %shr1782, i64* %val, align 8
  %893 = load i64, i64* %arg0s, align 8
  %cmp1783 = icmp slt i64 %893, 0
  br i1 %cmp1783, label %land.lhs.true.1785, label %if.end.1792

land.lhs.true.1785:                               ; preds = %if.end.1781
  %894 = load i64, i64* %arg1, align 8
  %cmp1786 = icmp sgt i64 %894, 0
  br i1 %cmp1786, label %if.then.1788, label %if.end.1792

if.then.1788:                                     ; preds = %land.lhs.true.1785
  %895 = load i64, i64* %arg1, align 8
  %sub1789 = sub nsw i64 64, %895
  %shl1790 = shl i64 -1, %sub1789
  %896 = load i64, i64* %val, align 8
  %or1791 = or i64 %896, %shl1790
  store i64 %or1791, i64* %val, align 8
  br label %if.end.1792

if.end.1792:                                      ; preds = %if.then.1788, %land.lhs.true.1785, %if.end.1781
  br label %sw.epilog.1847

sw.bb.1793:                                       ; preds = %if.end.1707
  %897 = load i64, i64* %arg1, align 8
  %cmp1794 = icmp slt i64 %897, 0
  br i1 %cmp1794, label %if.then.1796, label %if.end.1797

if.then.1796:                                     ; preds = %sw.bb.1793
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1797:                                      ; preds = %sw.bb.1793
  %898 = load i32, i32* %width, align 4
  %conv1798 = zext i32 %898 to i64
  %899 = load i64, i64* %arg1, align 8
  %rem1799 = srem i64 %899, %conv1798
  store i64 %rem1799, i64* %arg1, align 8
  %900 = load i64, i64* %arg0, align 8
  %901 = load i32, i32* %width, align 4
  %conv1800 = zext i32 %901 to i64
  %902 = load i64, i64* %arg1, align 8
  %sub1801 = sub nsw i64 %conv1800, %902
  %shl1802 = shl i64 %900, %sub1801
  %903 = load i64, i64* %arg0, align 8
  %904 = load i64, i64* %arg1, align 8
  %shr1803 = lshr i64 %903, %904
  %or1804 = or i64 %shl1802, %shr1803
  store i64 %or1804, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1805:                                       ; preds = %if.end.1707
  %905 = load i64, i64* %arg1, align 8
  %cmp1806 = icmp slt i64 %905, 0
  br i1 %cmp1806, label %if.then.1808, label %if.end.1809

if.then.1808:                                     ; preds = %sw.bb.1805
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1809:                                      ; preds = %sw.bb.1805
  %906 = load i32, i32* %width, align 4
  %conv1810 = zext i32 %906 to i64
  %907 = load i64, i64* %arg1, align 8
  %rem1811 = srem i64 %907, %conv1810
  store i64 %rem1811, i64* %arg1, align 8
  %908 = load i64, i64* %arg0, align 8
  %909 = load i64, i64* %arg1, align 8
  %shl1812 = shl i64 %908, %909
  %910 = load i64, i64* %arg0, align 8
  %911 = load i32, i32* %width, align 4
  %conv1813 = zext i32 %911 to i64
  %912 = load i64, i64* %arg1, align 8
  %sub1814 = sub nsw i64 %conv1813, %912
  %shr1815 = lshr i64 %910, %sub1814
  %or1816 = or i64 %shl1812, %shr1815
  store i64 %or1816, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1817:                                       ; preds = %if.end.1707
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.1818:                                       ; preds = %if.end.1707
  %913 = load i64, i64* %arg0s, align 8
  %914 = load i64, i64* %arg1s, align 8
  %cmp1819 = icmp sle i64 %913, %914
  br i1 %cmp1819, label %cond.true.1821, label %cond.false.1822

cond.true.1821:                                   ; preds = %sw.bb.1818
  %915 = load i64, i64* %arg0s, align 8
  br label %cond.end.1823

cond.false.1822:                                  ; preds = %sw.bb.1818
  %916 = load i64, i64* %arg1s, align 8
  br label %cond.end.1823

cond.end.1823:                                    ; preds = %cond.false.1822, %cond.true.1821
  %cond1824 = phi i64 [ %915, %cond.true.1821 ], [ %916, %cond.false.1822 ]
  store i64 %cond1824, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1825:                                       ; preds = %if.end.1707
  %917 = load i64, i64* %arg0, align 8
  %918 = load i64, i64* %arg1, align 8
  %cmp1826 = icmp ule i64 %917, %918
  br i1 %cmp1826, label %cond.true.1828, label %cond.false.1829

cond.true.1828:                                   ; preds = %sw.bb.1825
  %919 = load i64, i64* %arg0, align 8
  br label %cond.end.1830

cond.false.1829:                                  ; preds = %sw.bb.1825
  %920 = load i64, i64* %arg1, align 8
  br label %cond.end.1830

cond.end.1830:                                    ; preds = %cond.false.1829, %cond.true.1828
  %cond1831 = phi i64 [ %919, %cond.true.1828 ], [ %920, %cond.false.1829 ]
  store i64 %cond1831, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1832:                                       ; preds = %if.end.1707
  %921 = load i64, i64* %arg0s, align 8
  %922 = load i64, i64* %arg1s, align 8
  %cmp1833 = icmp sgt i64 %921, %922
  br i1 %cmp1833, label %cond.true.1835, label %cond.false.1836

cond.true.1835:                                   ; preds = %sw.bb.1832
  %923 = load i64, i64* %arg0s, align 8
  br label %cond.end.1837

cond.false.1836:                                  ; preds = %sw.bb.1832
  %924 = load i64, i64* %arg1s, align 8
  br label %cond.end.1837

cond.end.1837:                                    ; preds = %cond.false.1836, %cond.true.1835
  %cond1838 = phi i64 [ %923, %cond.true.1835 ], [ %924, %cond.false.1836 ]
  store i64 %cond1838, i64* %val, align 8
  br label %sw.epilog.1847

sw.bb.1839:                                       ; preds = %if.end.1707
  %925 = load i64, i64* %arg0, align 8
  %926 = load i64, i64* %arg1, align 8
  %cmp1840 = icmp ugt i64 %925, %926
  br i1 %cmp1840, label %cond.true.1842, label %cond.false.1843

cond.true.1842:                                   ; preds = %sw.bb.1839
  %927 = load i64, i64* %arg0, align 8
  br label %cond.end.1844

cond.false.1843:                                  ; preds = %sw.bb.1839
  %928 = load i64, i64* %arg1, align 8
  br label %cond.end.1844

cond.end.1844:                                    ; preds = %cond.false.1843, %cond.true.1842
  %cond1845 = phi i64 [ %927, %cond.true.1842 ], [ %928, %cond.false.1843 ]
  store i64 %cond1845, i64* %val, align 8
  br label %sw.epilog.1847

sw.default.1846:                                  ; preds = %if.end.1707
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1716, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.simplify_binary_operation, i32 0, i32 0)) #4
  unreachable

sw.epilog.1847:                                   ; preds = %cond.end.1844, %cond.end.1837, %cond.end.1830, %cond.end.1823, %if.end.1809, %if.end.1797, %if.end.1792, %if.end.1775, %if.end.1769, %sw.bb.1763, %sw.bb.1761, %sw.bb.1759, %if.end.1757, %if.end.1745, %if.end.1734, %if.end.1723, %sw.bb.1712, %sw.bb.1710, %sw.bb.1708
  %929 = load i64, i64* %val, align 8
  %930 = load i32, i32* %mode.addr, align 4
  %call1848 = call i64 @trunc_int_for_mode(i64 %929, i32 %930)
  store i64 %call1848, i64* %val, align 8
  %931 = load i64, i64* %val, align 8
  %call1849 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %931)
  store %struct.rtx_def* %call1849, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog.1847, %sw.bb.1817, %if.then.1808, %if.then.1796, %if.then.1780, %if.then.1774, %if.then.1768, %if.then.1756, %if.then.1744, %if.then.1733, %if.then.1722, %sw.epilog.1667, %sw.bb.1665, %if.then.1662, %if.then.1655, %if.then.1646, %if.then.1639, %if.then.1630, %if.then.1623, %if.then.1601, %if.then.1594, %if.then.1573, %if.then.1566, %if.then.1561, %if.then.1540, %if.then.1520, %if.then.1501, %if.then.1472, %if.else.1446, %if.then.1444, %if.then.1431, %if.then.1419, %if.then.1404, %if.then.1373, %if.then.1361, %if.then.1344, %if.then.1336, %if.then.1323, %if.then.1306, %if.then.1301, %if.then.1270, %if.then.1263, %if.then.1246, %if.then.1238, %if.then.1226, %if.then.1216, %if.then.1196, %if.then.1174, %if.then.1168, %cond.end.1141, %if.then.1124, %if.then.1112, %if.then.1098, %if.then.1086, %if.then.1011, %cond.end.1003, %if.then.816, %if.then.809, %if.then.804, %if.then.796, %if.then.752, %if.then.669, %cond.end, %if.then.413, %if.then.357, %if.then.301, %if.then.267, %if.then.258, %if.then.252, %sw.epilog, %sw.default, %if.then.177, %sw.bb.113, %if.end.45, %if.then.44
  %932 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %932
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @simplify_plus_minus(i32 %code, i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1, i32 %force) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %force.addr = alloca i32, align 4
  %ops = alloca [8 x %struct.simplify_plus_minus_op_data], align 16
  %result = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %n_ops = alloca i32, align 4
  %input_ops = alloca i32, align 4
  %input_consts = alloca i32, align 4
  %n_consts = alloca i32, align 4
  %first = alloca i32, align 4
  %negate = alloca i32, align 4
  %changed = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %this_op = alloca %struct.rtx_def*, align 8
  %this_neg = alloca i32, align 4
  %this_code = alloca i32, align 4
  %lhs = alloca %struct.rtx_def*, align 8
  %rhs = alloca %struct.rtx_def*, align 8
  %lneg = alloca i32, align 4
  %rneg = alloca i32, align 4
  %ncode = alloca i32, align 4
  %value = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  store i32 2, i32* %n_ops, align 4
  store i32 2, i32* %input_ops, align 4
  store i32 0, i32* %input_consts, align 4
  %arraydecay = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i32 0
  %0 = bitcast %struct.simplify_plus_minus_op_data* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 128, i32 1, i1 false)
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %arrayidx = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 0
  %op = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx, i32 0, i32 0
  store %struct.rtx_def* %1, %struct.rtx_def** %op, align 8
  %arrayidx1 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 0
  %neg = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx1, i32 0, i32 1
  store i32 0, i32* %neg, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %arrayidx2 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 1
  %op3 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx2, i32 0, i32 0
  store %struct.rtx_def* %2, %struct.rtx_def** %op3, align 8
  %3 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %3, 76
  %conv = zext i1 %cmp to i32
  %arrayidx4 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 1
  %neg5 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx4, i32 0, i32 1
  store i32 %conv, i32* %neg5, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_ops, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom
  %op9 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx8, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op9, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %this_op, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom10
  %neg12 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx11, i32 0, i32 1
  %9 = load i32, i32* %neg12, align 4
  store i32 %9, i32* %this_neg, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %this_code, align 4
  %12 = load i32, i32* %this_code, align 4
  switch i32 %12, label %sw.default [
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb.31
    i32 58, label %sw.bb.41
    i32 86, label %sw.bb.251
    i32 54, label %sw.bb.275
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %13 = load i32, i32* %n_ops, align 4
  %cmp13 = icmp eq i32 %13, 7
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %14 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %16 = load i32, i32* %n_ops, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom16
  %op18 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx17, i32 0, i32 0
  store %struct.rtx_def* %15, %struct.rtx_def** %op18, align 8
  %17 = load i32, i32* %this_code, align 4
  %cmp19 = icmp eq i32 %17, 76
  %conv20 = zext i1 %cmp19 to i32
  %18 = load i32, i32* %this_neg, align 4
  %xor = xor i32 %conv20, %18
  %19 = load i32, i32* %n_ops, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom21
  %neg23 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx22, i32 0, i32 1
  store i32 %xor, i32* %neg23, align 4
  %20 = load i32, i32* %n_ops, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %n_ops, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom27
  %op29 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx28, i32 0, i32 0
  store %struct.rtx_def* %22, %struct.rtx_def** %op29, align 8
  %24 = load i32, i32* %input_ops, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %input_ops, align 4
  store i32 1, i32* %changed, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom35
  %op37 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx36, i32 0, i32 0
  store %struct.rtx_def* %26, %struct.rtx_def** %op37, align 8
  %28 = load i32, i32* %this_neg, align 4
  %tobool = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %29 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom38
  %neg40 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx39, i32 0, i32 1
  store i32 %lnot.ext, i32* %neg40, align 4
  store i32 1, i32* %changed, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %for.body
  %30 = load i32, i32* %n_ops, align 4
  %cmp42 = icmp slt i32 %30, 7
  br i1 %cmp42, label %land.lhs.true, label %if.end.250

land.lhs.true:                                    ; preds = %sw.bb.41
  %31 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load47 = load i32, i32* %33, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 75
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.250

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load58 = load i32, i32* %37, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 67
  br i1 %cmp60, label %land.lhs.true.138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.51
  %38 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load68 = load i32, i32* %41, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 68
  br i1 %cmp70, label %land.lhs.true.138, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false
  %42 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load79 = load i32, i32* %45, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 54
  br i1 %cmp81, label %land.lhs.true.138, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.72
  %46 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load90 = load i32, i32* %49, align 8
  %bf.clear91 = and i32 %bf.load90, 65535
  %cmp92 = icmp eq i32 %bf.clear91, 55
  br i1 %cmp92, label %land.lhs.true.138, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.83
  %50 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load101 = load i32, i32* %53, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 58
  br i1 %cmp103, label %land.lhs.true.138, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.94
  %54 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx108, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtx111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx111, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load112 = load i32, i32* %57, align 8
  %bf.clear113 = and i32 %bf.load112, 65535
  %cmp114 = icmp eq i32 %bf.clear113, 134
  br i1 %cmp114, label %land.lhs.true.138, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.105
  %58 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx122, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load123 = load i32, i32* %61, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 56
  br i1 %cmp125, label %land.lhs.true.138, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.116
  %62 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 0
  %rtx133 = bitcast %union.rtunion_def* %arrayidx132 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx133, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load134 = load i32, i32* %65, align 8
  %bf.clear135 = and i32 %bf.load134, 65535
  %cmp136 = icmp eq i32 %bf.clear135, 140
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.250

land.lhs.true.138:                                ; preds = %lor.lhs.false.127, %lor.lhs.false.116, %lor.lhs.false.105, %lor.lhs.false.94, %lor.lhs.false.83, %lor.lhs.false.72, %lor.lhs.false, %land.lhs.true.51
  %66 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load145 = load i32, i32* %69, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp eq i32 %bf.clear146, 67
  br i1 %cmp147, label %if.then.226, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.138
  %70 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 0
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 1
  %rtx155 = bitcast %union.rtunion_def* %arrayidx154 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx155, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load156 = load i32, i32* %73, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 68
  br i1 %cmp158, label %if.then.226, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.149
  %74 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 0
  %rtx163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx163, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 1
  %rtx166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx166, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load167 = load i32, i32* %77, align 8
  %bf.clear168 = and i32 %bf.load167, 65535
  %cmp169 = icmp eq i32 %bf.clear168, 54
  br i1 %cmp169, label %if.then.226, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %lor.lhs.false.160
  %78 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 1
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load178 = load i32, i32* %81, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  %cmp180 = icmp eq i32 %bf.clear179, 55
  br i1 %cmp180, label %if.then.226, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %lor.lhs.false.171
  %82 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 0
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 1
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load189 = load i32, i32* %85, align 8
  %bf.clear190 = and i32 %bf.load189, 65535
  %cmp191 = icmp eq i32 %bf.clear190, 58
  br i1 %cmp191, label %if.then.226, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %lor.lhs.false.182
  %86 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 0
  %rtx196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx196, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 1
  %rtx199 = bitcast %union.rtunion_def* %arrayidx198 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx199, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load200 = load i32, i32* %89, align 8
  %bf.clear201 = and i32 %bf.load200, 65535
  %cmp202 = icmp eq i32 %bf.clear201, 134
  br i1 %cmp202, label %if.then.226, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %lor.lhs.false.193
  %90 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld205, i32 0, i64 0
  %rtx207 = bitcast %union.rtunion_def* %arrayidx206 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx207, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 1
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load211 = load i32, i32* %93, align 8
  %bf.clear212 = and i32 %bf.load211, 65535
  %cmp213 = icmp eq i32 %bf.clear212, 56
  br i1 %cmp213, label %if.then.226, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %lor.lhs.false.204
  %94 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld216, i32 0, i64 0
  %rtx218 = bitcast %union.rtunion_def* %arrayidx217 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx218, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 1
  %rtx221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx221, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load222 = load i32, i32* %97, align 8
  %bf.clear223 = and i32 %bf.load222, 65535
  %cmp224 = icmp eq i32 %bf.clear223, 140
  br i1 %cmp224, label %if.then.226, label %if.end.250

if.then.226:                                      ; preds = %lor.lhs.false.215, %lor.lhs.false.204, %lor.lhs.false.193, %lor.lhs.false.182, %lor.lhs.false.171, %lor.lhs.false.160, %lor.lhs.false.149, %land.lhs.true.138
  %98 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 0
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 0
  %rtx232 = bitcast %union.rtunion_def* %arrayidx231 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx232, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %101 to i64
  %arrayidx234 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom233
  %op235 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx234, i32 0, i32 0
  store %struct.rtx_def* %100, %struct.rtx_def** %op235, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtx238 = bitcast %union.rtunion_def* %arrayidx237 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx238, align 8
  %fld239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld239, i32 0, i64 1
  %rtx241 = bitcast %union.rtunion_def* %arrayidx240 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx241, align 8
  %105 = load i32, i32* %n_ops, align 4
  %idxprom242 = sext i32 %105 to i64
  %arrayidx243 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom242
  %op244 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx243, i32 0, i32 0
  store %struct.rtx_def* %104, %struct.rtx_def** %op244, align 8
  %106 = load i32, i32* %this_neg, align 4
  %107 = load i32, i32* %n_ops, align 4
  %idxprom245 = sext i32 %107 to i64
  %arrayidx246 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom245
  %neg247 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx246, i32 0, i32 1
  store i32 %106, i32* %neg247, align 4
  %108 = load i32, i32* %n_ops, align 4
  %inc248 = add nsw i32 %108, 1
  store i32 %inc248, i32* %n_ops, align 4
  %109 = load i32, i32* %input_consts, align 4
  %inc249 = add nsw i32 %109, 1
  store i32 %inc249, i32* %input_consts, align 4
  store i32 1, i32* %changed, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.226, %lor.lhs.false.215, %lor.lhs.false.127, %land.lhs.true, %sw.bb.41
  br label %sw.epilog

sw.bb.251:                                        ; preds = %for.body
  %110 = load i32, i32* %n_ops, align 4
  %cmp252 = icmp ne i32 %110, 7
  br i1 %cmp252, label %if.then.254, label %if.end.274

if.then.254:                                      ; preds = %sw.bb.251
  %111 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %112 = load i32, i32* %n_ops, align 4
  %idxprom255 = sext i32 %112 to i64
  %arrayidx256 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom255
  %op257 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx256, i32 0, i32 0
  store %struct.rtx_def* %111, %struct.rtx_def** %op257, align 8
  %113 = load i32, i32* %this_neg, align 4
  %114 = load i32, i32* %n_ops, align 4
  %inc258 = add nsw i32 %114, 1
  store i32 %inc258, i32* %n_ops, align 4
  %idxprom259 = sext i32 %114 to i64
  %arrayidx260 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom259
  %neg261 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx260, i32 0, i32 1
  store i32 %113, i32* %neg261, align 4
  %115 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 0
  %rtx264 = bitcast %union.rtunion_def* %arrayidx263 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx264, align 8
  %117 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %117 to i64
  %arrayidx266 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom265
  %op267 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx266, i32 0, i32 0
  store %struct.rtx_def* %116, %struct.rtx_def** %op267, align 8
  %118 = load i32, i32* %this_neg, align 4
  %tobool268 = icmp ne i32 %118, 0
  %lnot269 = xor i1 %tobool268, true
  %lnot.ext270 = zext i1 %lnot269 to i32
  %119 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %119 to i64
  %arrayidx272 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom271
  %neg273 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx272, i32 0, i32 1
  store i32 %lnot.ext270, i32* %neg273, align 4
  store i32 1, i32* %changed, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.254, %sw.bb.251
  br label %sw.epilog

sw.bb.275:                                        ; preds = %for.body
  %120 = load i32, i32* %this_neg, align 4
  %tobool276 = icmp ne i32 %120, 0
  br i1 %tobool276, label %if.then.277, label %if.end.284

if.then.277:                                      ; preds = %sw.bb.275
  %121 = load i32, i32* %mode.addr, align 4
  %122 = load %struct.rtx_def*, %struct.rtx_def** %this_op, align 8
  %call = call %struct.rtx_def* @neg_const_int(i32 %121, %struct.rtx_def* %122)
  %123 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %123 to i64
  %arrayidx279 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom278
  %op280 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx279, i32 0, i32 0
  store %struct.rtx_def* %call, %struct.rtx_def** %op280, align 8
  %124 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %124 to i64
  %arrayidx282 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom281
  %neg283 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx282, i32 0, i32 1
  store i32 0, i32* %neg283, align 4
  store i32 1, i32* %changed, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.277, %sw.bb.275
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.284, %if.end.274, %if.end.250, %sw.bb.31, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %125 = load i32, i32* %i, align 4
  %inc285 = add nsw i32 %125, 1
  store i32 %inc285, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %126 = load i32, i32* %changed, align 4
  %tobool286 = icmp ne i32 %126, 0
  br i1 %tobool286, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %127 = load i32, i32* %n_ops, align 4
  %cmp287 = icmp sle i32 %127, 2
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.292

land.lhs.true.289:                                ; preds = %do.end
  %128 = load i32, i32* %force.addr, align 4
  %tobool290 = icmp ne i32 %128, 0
  br i1 %tobool290, label %if.end.292, label %if.then.291

if.then.291:                                      ; preds = %land.lhs.true.289
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.292:                                       ; preds = %land.lhs.true.289, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.307, %if.end.292
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %n_ops, align 4
  %cmp294 = icmp slt i32 %129, %130
  br i1 %cmp294, label %for.body.296, label %for.end.309

for.body.296:                                     ; preds = %for.cond.293
  %131 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %131 to i64
  %arrayidx298 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom297
  %op299 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx298, i32 0, i32 0
  %132 = load %struct.rtx_def*, %struct.rtx_def** %op299, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load300 = load i32, i32* %133, align 8
  %bf.clear301 = and i32 %bf.load300, 65535
  %cmp302 = icmp eq i32 %bf.clear301, 58
  br i1 %cmp302, label %if.then.304, label %if.end.306

if.then.304:                                      ; preds = %for.body.296
  %134 = load i32, i32* %input_consts, align 4
  %inc305 = add nsw i32 %134, 1
  store i32 %inc305, i32* %input_consts, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.304, %for.body.296
  br label %for.inc.307

for.inc.307:                                      ; preds = %if.end.306
  %135 = load i32, i32* %i, align 4
  %inc308 = add nsw i32 %135, 1
  store i32 %inc308, i32* %i, align 4
  br label %for.cond.293

for.end.309:                                      ; preds = %for.cond.293
  store i32 1, i32* %first, align 4
  br label %do.body.310

do.body.310:                                      ; preds = %do.cond.515, %for.end.309
  %136 = load i32, i32* %first, align 4
  store i32 %136, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.512, %do.body.310
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* %n_ops, align 4
  %sub = sub nsw i32 %138, 1
  %cmp312 = icmp slt i32 %137, %sub
  br i1 %cmp312, label %for.body.314, label %for.end.514

for.body.314:                                     ; preds = %for.cond.311
  %139 = load i32, i32* %i, align 4
  %add = add nsw i32 %139, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.509, %for.body.314
  %140 = load i32, i32* %j, align 4
  %141 = load i32, i32* %n_ops, align 4
  %cmp316 = icmp slt i32 %140, %141
  br i1 %cmp316, label %for.body.318, label %for.end.511

for.body.318:                                     ; preds = %for.cond.315
  %142 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %142 to i64
  %arrayidx320 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom319
  %op321 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx320, i32 0, i32 0
  %143 = load %struct.rtx_def*, %struct.rtx_def** %op321, align 8
  store %struct.rtx_def* %143, %struct.rtx_def** %lhs, align 8
  %144 = load i32, i32* %j, align 4
  %idxprom322 = sext i32 %144 to i64
  %arrayidx323 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom322
  %op324 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx323, i32 0, i32 0
  %145 = load %struct.rtx_def*, %struct.rtx_def** %op324, align 8
  store %struct.rtx_def* %145, %struct.rtx_def** %rhs, align 8
  %146 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %146 to i64
  %arrayidx326 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom325
  %neg327 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx326, i32 0, i32 1
  %147 = load i32, i32* %neg327, align 4
  store i32 %147, i32* %lneg, align 4
  %148 = load i32, i32* %j, align 4
  %idxprom328 = sext i32 %148 to i64
  %arrayidx329 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom328
  %neg330 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx329, i32 0, i32 1
  %149 = load i32, i32* %neg330, align 4
  store i32 %149, i32* %rneg, align 4
  %150 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %cmp331 = icmp ne %struct.rtx_def* %150, null
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.508

land.lhs.true.333:                                ; preds = %for.body.318
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %cmp334 = icmp ne %struct.rtx_def* %151, null
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.508

land.lhs.true.336:                                ; preds = %land.lhs.true.333
  %152 = load i32, i32* %first, align 4
  %tobool337 = icmp ne i32 %152, 0
  br i1 %tobool337, label %lor.lhs.false.338, label %if.then.418

lor.lhs.false.338:                                ; preds = %land.lhs.true.336
  %153 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load339 = load i32, i32* %154, align 8
  %bf.clear340 = and i32 %bf.load339, 65535
  %cmp341 = icmp eq i32 %bf.clear340, 67
  br i1 %cmp341, label %land.lhs.true.378, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %lor.lhs.false.338
  %155 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load344 = load i32, i32* %156, align 8
  %bf.clear345 = and i32 %bf.load344, 65535
  %cmp346 = icmp eq i32 %bf.clear345, 68
  br i1 %cmp346, label %land.lhs.true.378, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %lor.lhs.false.343
  %157 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load349 = load i32, i32* %158, align 8
  %bf.clear350 = and i32 %bf.load349, 65535
  %cmp351 = icmp eq i32 %bf.clear350, 54
  br i1 %cmp351, label %land.lhs.true.378, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.348
  %159 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load354 = load i32, i32* %160, align 8
  %bf.clear355 = and i32 %bf.load354, 65535
  %cmp356 = icmp eq i32 %bf.clear355, 55
  br i1 %cmp356, label %land.lhs.true.378, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %lor.lhs.false.353
  %161 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %bf.load359 = load i32, i32* %162, align 8
  %bf.clear360 = and i32 %bf.load359, 65535
  %cmp361 = icmp eq i32 %bf.clear360, 58
  br i1 %cmp361, label %land.lhs.true.378, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %lor.lhs.false.358
  %163 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %bf.load364 = load i32, i32* %164, align 8
  %bf.clear365 = and i32 %bf.load364, 65535
  %cmp366 = icmp eq i32 %bf.clear365, 134
  br i1 %cmp366, label %land.lhs.true.378, label %lor.lhs.false.368

lor.lhs.false.368:                                ; preds = %lor.lhs.false.363
  %165 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load369 = load i32, i32* %166, align 8
  %bf.clear370 = and i32 %bf.load369, 65535
  %cmp371 = icmp eq i32 %bf.clear370, 56
  br i1 %cmp371, label %land.lhs.true.378, label %lor.lhs.false.373

lor.lhs.false.373:                                ; preds = %lor.lhs.false.368
  %167 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load374 = load i32, i32* %168, align 8
  %bf.clear375 = and i32 %bf.load374, 65535
  %cmp376 = icmp eq i32 %bf.clear375, 140
  br i1 %cmp376, label %land.lhs.true.378, label %if.end.508

land.lhs.true.378:                                ; preds = %lor.lhs.false.373, %lor.lhs.false.368, %lor.lhs.false.363, %lor.lhs.false.358, %lor.lhs.false.353, %lor.lhs.false.348, %lor.lhs.false.343, %lor.lhs.false.338
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load379 = load i32, i32* %170, align 8
  %bf.clear380 = and i32 %bf.load379, 65535
  %cmp381 = icmp eq i32 %bf.clear380, 67
  br i1 %cmp381, label %if.then.418, label %lor.lhs.false.383

lor.lhs.false.383:                                ; preds = %land.lhs.true.378
  %171 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %172 = bitcast %struct.rtx_def* %171 to i32*
  %bf.load384 = load i32, i32* %172, align 8
  %bf.clear385 = and i32 %bf.load384, 65535
  %cmp386 = icmp eq i32 %bf.clear385, 68
  br i1 %cmp386, label %if.then.418, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %lor.lhs.false.383
  %173 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %174 = bitcast %struct.rtx_def* %173 to i32*
  %bf.load389 = load i32, i32* %174, align 8
  %bf.clear390 = and i32 %bf.load389, 65535
  %cmp391 = icmp eq i32 %bf.clear390, 54
  br i1 %cmp391, label %if.then.418, label %lor.lhs.false.393

lor.lhs.false.393:                                ; preds = %lor.lhs.false.388
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %bf.load394 = load i32, i32* %176, align 8
  %bf.clear395 = and i32 %bf.load394, 65535
  %cmp396 = icmp eq i32 %bf.clear395, 55
  br i1 %cmp396, label %if.then.418, label %lor.lhs.false.398

lor.lhs.false.398:                                ; preds = %lor.lhs.false.393
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load399 = load i32, i32* %178, align 8
  %bf.clear400 = and i32 %bf.load399, 65535
  %cmp401 = icmp eq i32 %bf.clear400, 58
  br i1 %cmp401, label %if.then.418, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %lor.lhs.false.398
  %179 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load404 = load i32, i32* %180, align 8
  %bf.clear405 = and i32 %bf.load404, 65535
  %cmp406 = icmp eq i32 %bf.clear405, 134
  br i1 %cmp406, label %if.then.418, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %lor.lhs.false.403
  %181 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load409 = load i32, i32* %182, align 8
  %bf.clear410 = and i32 %bf.load409, 65535
  %cmp411 = icmp eq i32 %bf.clear410, 56
  br i1 %cmp411, label %if.then.418, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %lor.lhs.false.408
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %184 = bitcast %struct.rtx_def* %183 to i32*
  %bf.load414 = load i32, i32* %184, align 8
  %bf.clear415 = and i32 %bf.load414, 65535
  %cmp416 = icmp eq i32 %bf.clear415, 140
  br i1 %cmp416, label %if.then.418, label %if.end.508

if.then.418:                                      ; preds = %lor.lhs.false.413, %lor.lhs.false.408, %lor.lhs.false.403, %lor.lhs.false.398, %lor.lhs.false.393, %lor.lhs.false.388, %lor.lhs.false.383, %land.lhs.true.378, %land.lhs.true.336
  store i32 75, i32* %ncode, align 4
  %185 = load i32, i32* %lneg, align 4
  %186 = load i32, i32* %rneg, align 4
  %cmp419 = icmp ne i32 %185, %186
  br i1 %cmp419, label %if.then.421, label %if.else

if.then.421:                                      ; preds = %if.then.418
  store i32 76, i32* %ncode, align 4
  %187 = load i32, i32* %lneg, align 4
  %tobool422 = icmp ne i32 %187, 0
  br i1 %tobool422, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %if.then.421
  %188 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  store %struct.rtx_def* %188, %struct.rtx_def** %tem, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  store %struct.rtx_def* %189, %struct.rtx_def** %lhs, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %190, %struct.rtx_def** %rhs, align 8
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.423, %if.then.421
  br label %if.end.429

if.else:                                          ; preds = %if.then.418
  %191 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %call425 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %191, %struct.rtx_def* %192)
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %if.else
  %193 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  store %struct.rtx_def* %193, %struct.rtx_def** %tem, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  store %struct.rtx_def* %194, %struct.rtx_def** %lhs, align 8
  %195 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %195, %struct.rtx_def** %rhs, align 8
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.427, %if.else
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.end.424
  %196 = load i32, i32* %ncode, align 4
  %197 = load i32, i32* %mode.addr, align 4
  %198 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %call430 = call %struct.rtx_def* @simplify_binary_operation(i32 %196, i32 %197, %struct.rtx_def* %198, %struct.rtx_def* %199)
  store %struct.rtx_def* %call430, %struct.rtx_def** %tem, align 8
  %200 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool431 = icmp ne %struct.rtx_def* %200, null
  br i1 %tobool431, label %land.lhs.true.432, label %if.end.507

land.lhs.true.432:                                ; preds = %if.end.429
  %201 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %202 = bitcast %struct.rtx_def* %201 to i32*
  %bf.load433 = load i32, i32* %202, align 8
  %bf.clear434 = and i32 %bf.load433, 65535
  %cmp435 = icmp eq i32 %bf.clear434, 58
  br i1 %cmp435, label %land.lhs.true.437, label %land.lhs.true.463

land.lhs.true.437:                                ; preds = %land.lhs.true.432
  %203 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld438 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx439 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld438, i32 0, i64 0
  %rtx440 = bitcast %union.rtunion_def* %arrayidx439 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx440, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %bf.load441 = load i32, i32* %205, align 8
  %bf.clear442 = and i32 %bf.load441, 65535
  %206 = load i32, i32* %ncode, align 4
  %cmp443 = icmp eq i32 %bf.clear442, %206
  br i1 %cmp443, label %land.lhs.true.445, label %land.lhs.true.463

land.lhs.true.445:                                ; preds = %land.lhs.true.437
  %207 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 0
  %rtx448 = bitcast %union.rtunion_def* %arrayidx447 to %struct.rtx_def**
  %208 = load %struct.rtx_def*, %struct.rtx_def** %rtx448, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 0
  %rtx451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtx_def**
  %209 = load %struct.rtx_def*, %struct.rtx_def** %rtx451, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %lhs, align 8
  %cmp452 = icmp eq %struct.rtx_def* %209, %210
  br i1 %cmp452, label %land.lhs.true.454, label %land.lhs.true.463

land.lhs.true.454:                                ; preds = %land.lhs.true.445
  %211 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld455, i32 0, i64 0
  %rtx457 = bitcast %union.rtunion_def* %arrayidx456 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx457, align 8
  %fld458 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %arrayidx459 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld458, i32 0, i64 1
  %rtx460 = bitcast %union.rtunion_def* %arrayidx459 to %struct.rtx_def**
  %213 = load %struct.rtx_def*, %struct.rtx_def** %rtx460, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %cmp461 = icmp eq %struct.rtx_def* %213, %214
  br i1 %cmp461, label %if.end.507, label %land.lhs.true.463

land.lhs.true.463:                                ; preds = %land.lhs.true.454, %land.lhs.true.445, %land.lhs.true.437, %land.lhs.true.432
  %215 = load i32, i32* %first, align 4
  %tobool464 = icmp ne i32 %215, 0
  br i1 %tobool464, label %land.lhs.true.465, label %if.then.476

land.lhs.true.465:                                ; preds = %land.lhs.true.463
  %216 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %217 = bitcast %struct.rtx_def* %216 to i32*
  %bf.load466 = load i32, i32* %217, align 8
  %bf.clear467 = and i32 %bf.load466, 65535
  %cmp468 = icmp eq i32 %bf.clear467, 86
  br i1 %cmp468, label %land.lhs.true.470, label %if.then.476

land.lhs.true.470:                                ; preds = %land.lhs.true.465
  %218 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld471, i32 0, i64 0
  %rtx473 = bitcast %union.rtunion_def* %arrayidx472 to %struct.rtx_def**
  %219 = load %struct.rtx_def*, %struct.rtx_def** %rtx473, align 8
  %220 = load %struct.rtx_def*, %struct.rtx_def** %rhs, align 8
  %cmp474 = icmp eq %struct.rtx_def* %219, %220
  br i1 %cmp474, label %if.end.507, label %if.then.476

if.then.476:                                      ; preds = %land.lhs.true.470, %land.lhs.true.465, %land.lhs.true.463
  %221 = load i32, i32* %rneg, align 4
  %222 = load i32, i32* %lneg, align 4
  %and = and i32 %222, %221
  store i32 %and, i32* %lneg, align 4
  %223 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %224 = bitcast %struct.rtx_def* %223 to i32*
  %bf.load477 = load i32, i32* %224, align 8
  %bf.clear478 = and i32 %bf.load477, 65535
  %cmp479 = icmp eq i32 %bf.clear478, 77
  br i1 %cmp479, label %if.then.481, label %if.end.488

if.then.481:                                      ; preds = %if.then.476
  %225 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %225, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld482, i32 0, i64 0
  %rtx484 = bitcast %union.rtunion_def* %arrayidx483 to %struct.rtx_def**
  %226 = load %struct.rtx_def*, %struct.rtx_def** %rtx484, align 8
  store %struct.rtx_def* %226, %struct.rtx_def** %tem, align 8
  %227 = load i32, i32* %lneg, align 4
  %tobool485 = icmp ne i32 %227, 0
  %lnot486 = xor i1 %tobool485, true
  %lnot.ext487 = zext i1 %lnot486 to i32
  store i32 %lnot.ext487, i32* %lneg, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.481, %if.then.476
  %228 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load489 = load i32, i32* %229, align 8
  %bf.clear490 = and i32 %bf.load489, 65535
  %cmp491 = icmp eq i32 %bf.clear490, 54
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.497

land.lhs.true.493:                                ; preds = %if.end.488
  %230 = load i32, i32* %lneg, align 4
  %tobool494 = icmp ne i32 %230, 0
  br i1 %tobool494, label %if.then.495, label %if.end.497

if.then.495:                                      ; preds = %land.lhs.true.493
  %231 = load i32, i32* %mode.addr, align 4
  %232 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call496 = call %struct.rtx_def* @neg_const_int(i32 %231, %struct.rtx_def* %232)
  store %struct.rtx_def* %call496, %struct.rtx_def** %tem, align 8
  store i32 0, i32* %lneg, align 4
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.495, %land.lhs.true.493, %if.end.488
  %233 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %234 = load i32, i32* %i, align 4
  %idxprom498 = sext i32 %234 to i64
  %arrayidx499 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom498
  %op500 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx499, i32 0, i32 0
  store %struct.rtx_def* %233, %struct.rtx_def** %op500, align 8
  %235 = load i32, i32* %lneg, align 4
  %236 = load i32, i32* %i, align 4
  %idxprom501 = sext i32 %236 to i64
  %arrayidx502 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom501
  %neg503 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx502, i32 0, i32 1
  store i32 %235, i32* %neg503, align 4
  %237 = load i32, i32* %j, align 4
  %idxprom504 = sext i32 %237 to i64
  %arrayidx505 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom504
  %op506 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx505, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %op506, align 8
  store i32 1, i32* %changed, align 4
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.497, %land.lhs.true.470, %land.lhs.true.454, %if.end.429
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %lor.lhs.false.413, %lor.lhs.false.373, %land.lhs.true.333, %for.body.318
  br label %for.inc.509

for.inc.509:                                      ; preds = %if.end.508
  %238 = load i32, i32* %j, align 4
  %inc510 = add nsw i32 %238, 1
  store i32 %inc510, i32* %j, align 4
  br label %for.cond.315

for.end.511:                                      ; preds = %for.cond.315
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.end.511
  %239 = load i32, i32* %i, align 4
  %inc513 = add nsw i32 %239, 1
  store i32 %inc513, i32* %i, align 4
  br label %for.cond.311

for.end.514:                                      ; preds = %for.cond.311
  store i32 0, i32* %first, align 4
  br label %do.cond.515

do.cond.515:                                      ; preds = %for.end.514
  %240 = load i32, i32* %changed, align 4
  %tobool516 = icmp ne i32 %240, 0
  br i1 %tobool516, label %do.body.310, label %do.end.517

do.end.517:                                       ; preds = %do.cond.515
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.518

for.cond.518:                                     ; preds = %for.inc.533, %do.end.517
  %241 = load i32, i32* %j, align 4
  %242 = load i32, i32* %n_ops, align 4
  %cmp519 = icmp slt i32 %241, %242
  br i1 %cmp519, label %for.body.521, label %for.end.535

for.body.521:                                     ; preds = %for.cond.518
  %243 = load i32, i32* %j, align 4
  %idxprom522 = sext i32 %243 to i64
  %arrayidx523 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom522
  %op524 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx523, i32 0, i32 0
  %244 = load %struct.rtx_def*, %struct.rtx_def** %op524, align 8
  %tobool525 = icmp ne %struct.rtx_def* %244, null
  br i1 %tobool525, label %if.then.526, label %if.end.532

if.then.526:                                      ; preds = %for.body.521
  %245 = load i32, i32* %i, align 4
  %inc527 = add nsw i32 %245, 1
  store i32 %inc527, i32* %i, align 4
  %idxprom528 = sext i32 %245 to i64
  %arrayidx529 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom528
  %246 = load i32, i32* %j, align 4
  %idxprom530 = sext i32 %246 to i64
  %arrayidx531 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom530
  %247 = bitcast %struct.simplify_plus_minus_op_data* %arrayidx529 to i8*
  %248 = bitcast %struct.simplify_plus_minus_op_data* %arrayidx531 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %247, i8* %248, i64 16, i32 8, i1 false)
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.526, %for.body.521
  br label %for.inc.533

for.inc.533:                                      ; preds = %if.end.532
  %249 = load i32, i32* %j, align 4
  %inc534 = add nsw i32 %249, 1
  store i32 %inc534, i32* %j, align 4
  br label %for.cond.518

for.end.535:                                      ; preds = %for.cond.518
  %250 = load i32, i32* %i, align 4
  store i32 %250, i32* %n_ops, align 4
  %arraydecay536 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i32 0
  %251 = bitcast %struct.simplify_plus_minus_op_data* %arraydecay536 to i8*
  %252 = load i32, i32* %n_ops, align 4
  call void @specqsort(i8* %251, i32 %252, i32 16, i32 (...)* bitcast (i32 (i8*, i8*)* @simplify_plus_minus_op_data_cmp to i32 (...)*))
  %253 = load i32, i32* %n_ops, align 4
  %cmp537 = icmp sgt i32 %253, 1
  br i1 %cmp537, label %land.lhs.true.539, label %if.end.649

land.lhs.true.539:                                ; preds = %for.end.535
  %254 = load i32, i32* %n_ops, align 4
  %sub540 = sub nsw i32 %254, 1
  %idxprom541 = sext i32 %sub540 to i64
  %arrayidx542 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom541
  %op543 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx542, i32 0, i32 0
  %255 = load %struct.rtx_def*, %struct.rtx_def** %op543, align 8
  %256 = bitcast %struct.rtx_def* %255 to i32*
  %bf.load544 = load i32, i32* %256, align 8
  %bf.clear545 = and i32 %bf.load544, 65535
  %cmp546 = icmp eq i32 %bf.clear545, 54
  br i1 %cmp546, label %land.lhs.true.548, label %if.end.649

land.lhs.true.548:                                ; preds = %land.lhs.true.539
  %257 = load i32, i32* %n_ops, align 4
  %sub549 = sub nsw i32 %257, 2
  %idxprom550 = sext i32 %sub549 to i64
  %arrayidx551 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom550
  %op552 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx551, i32 0, i32 0
  %258 = load %struct.rtx_def*, %struct.rtx_def** %op552, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load553 = load i32, i32* %259, align 8
  %bf.clear554 = and i32 %bf.load553, 65535
  %cmp555 = icmp eq i32 %bf.clear554, 67
  br i1 %cmp555, label %if.then.620, label %lor.lhs.false.557

lor.lhs.false.557:                                ; preds = %land.lhs.true.548
  %260 = load i32, i32* %n_ops, align 4
  %sub558 = sub nsw i32 %260, 2
  %idxprom559 = sext i32 %sub558 to i64
  %arrayidx560 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom559
  %op561 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx560, i32 0, i32 0
  %261 = load %struct.rtx_def*, %struct.rtx_def** %op561, align 8
  %262 = bitcast %struct.rtx_def* %261 to i32*
  %bf.load562 = load i32, i32* %262, align 8
  %bf.clear563 = and i32 %bf.load562, 65535
  %cmp564 = icmp eq i32 %bf.clear563, 68
  br i1 %cmp564, label %if.then.620, label %lor.lhs.false.566

lor.lhs.false.566:                                ; preds = %lor.lhs.false.557
  %263 = load i32, i32* %n_ops, align 4
  %sub567 = sub nsw i32 %263, 2
  %idxprom568 = sext i32 %sub567 to i64
  %arrayidx569 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom568
  %op570 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx569, i32 0, i32 0
  %264 = load %struct.rtx_def*, %struct.rtx_def** %op570, align 8
  %265 = bitcast %struct.rtx_def* %264 to i32*
  %bf.load571 = load i32, i32* %265, align 8
  %bf.clear572 = and i32 %bf.load571, 65535
  %cmp573 = icmp eq i32 %bf.clear572, 54
  br i1 %cmp573, label %if.then.620, label %lor.lhs.false.575

lor.lhs.false.575:                                ; preds = %lor.lhs.false.566
  %266 = load i32, i32* %n_ops, align 4
  %sub576 = sub nsw i32 %266, 2
  %idxprom577 = sext i32 %sub576 to i64
  %arrayidx578 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom577
  %op579 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx578, i32 0, i32 0
  %267 = load %struct.rtx_def*, %struct.rtx_def** %op579, align 8
  %268 = bitcast %struct.rtx_def* %267 to i32*
  %bf.load580 = load i32, i32* %268, align 8
  %bf.clear581 = and i32 %bf.load580, 65535
  %cmp582 = icmp eq i32 %bf.clear581, 55
  br i1 %cmp582, label %if.then.620, label %lor.lhs.false.584

lor.lhs.false.584:                                ; preds = %lor.lhs.false.575
  %269 = load i32, i32* %n_ops, align 4
  %sub585 = sub nsw i32 %269, 2
  %idxprom586 = sext i32 %sub585 to i64
  %arrayidx587 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom586
  %op588 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx587, i32 0, i32 0
  %270 = load %struct.rtx_def*, %struct.rtx_def** %op588, align 8
  %271 = bitcast %struct.rtx_def* %270 to i32*
  %bf.load589 = load i32, i32* %271, align 8
  %bf.clear590 = and i32 %bf.load589, 65535
  %cmp591 = icmp eq i32 %bf.clear590, 58
  br i1 %cmp591, label %if.then.620, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %lor.lhs.false.584
  %272 = load i32, i32* %n_ops, align 4
  %sub594 = sub nsw i32 %272, 2
  %idxprom595 = sext i32 %sub594 to i64
  %arrayidx596 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom595
  %op597 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx596, i32 0, i32 0
  %273 = load %struct.rtx_def*, %struct.rtx_def** %op597, align 8
  %274 = bitcast %struct.rtx_def* %273 to i32*
  %bf.load598 = load i32, i32* %274, align 8
  %bf.clear599 = and i32 %bf.load598, 65535
  %cmp600 = icmp eq i32 %bf.clear599, 134
  br i1 %cmp600, label %if.then.620, label %lor.lhs.false.602

lor.lhs.false.602:                                ; preds = %lor.lhs.false.593
  %275 = load i32, i32* %n_ops, align 4
  %sub603 = sub nsw i32 %275, 2
  %idxprom604 = sext i32 %sub603 to i64
  %arrayidx605 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom604
  %op606 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx605, i32 0, i32 0
  %276 = load %struct.rtx_def*, %struct.rtx_def** %op606, align 8
  %277 = bitcast %struct.rtx_def* %276 to i32*
  %bf.load607 = load i32, i32* %277, align 8
  %bf.clear608 = and i32 %bf.load607, 65535
  %cmp609 = icmp eq i32 %bf.clear608, 56
  br i1 %cmp609, label %if.then.620, label %lor.lhs.false.611

lor.lhs.false.611:                                ; preds = %lor.lhs.false.602
  %278 = load i32, i32* %n_ops, align 4
  %sub612 = sub nsw i32 %278, 2
  %idxprom613 = sext i32 %sub612 to i64
  %arrayidx614 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom613
  %op615 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx614, i32 0, i32 0
  %279 = load %struct.rtx_def*, %struct.rtx_def** %op615, align 8
  %280 = bitcast %struct.rtx_def* %279 to i32*
  %bf.load616 = load i32, i32* %280, align 8
  %bf.clear617 = and i32 %bf.load616, 65535
  %cmp618 = icmp eq i32 %bf.clear617, 140
  br i1 %cmp618, label %if.then.620, label %if.end.649

if.then.620:                                      ; preds = %lor.lhs.false.611, %lor.lhs.false.602, %lor.lhs.false.593, %lor.lhs.false.584, %lor.lhs.false.575, %lor.lhs.false.566, %lor.lhs.false.557, %land.lhs.true.548
  %281 = load i32, i32* %n_ops, align 4
  %sub621 = sub nsw i32 %281, 1
  %idxprom622 = sext i32 %sub621 to i64
  %arrayidx623 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom622
  %op624 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx623, i32 0, i32 0
  %282 = load %struct.rtx_def*, %struct.rtx_def** %op624, align 8
  store %struct.rtx_def* %282, %struct.rtx_def** %value, align 8
  %283 = load i32, i32* %n_ops, align 4
  %sub625 = sub nsw i32 %283, 1
  %idxprom626 = sext i32 %sub625 to i64
  %arrayidx627 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom626
  %neg628 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx627, i32 0, i32 1
  %284 = load i32, i32* %neg628, align 4
  %285 = load i32, i32* %n_ops, align 4
  %sub629 = sub nsw i32 %285, 2
  %idxprom630 = sext i32 %sub629 to i64
  %arrayidx631 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom630
  %neg632 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx631, i32 0, i32 1
  %286 = load i32, i32* %neg632, align 4
  %xor633 = xor i32 %284, %286
  %tobool634 = icmp ne i32 %xor633, 0
  br i1 %tobool634, label %if.then.635, label %if.end.637

if.then.635:                                      ; preds = %if.then.620
  %287 = load i32, i32* %mode.addr, align 4
  %288 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %call636 = call %struct.rtx_def* @neg_const_int(i32 %287, %struct.rtx_def* %288)
  store %struct.rtx_def* %call636, %struct.rtx_def** %value, align 8
  br label %if.end.637

if.end.637:                                       ; preds = %if.then.635, %if.then.620
  %289 = load i32, i32* %n_ops, align 4
  %sub638 = sub nsw i32 %289, 2
  %idxprom639 = sext i32 %sub638 to i64
  %arrayidx640 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom639
  %op641 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx640, i32 0, i32 0
  %290 = load %struct.rtx_def*, %struct.rtx_def** %op641, align 8
  %291 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld642 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx643 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld642, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx643 to i64*
  %292 = load i64, i64* %rtwint, align 8
  %call644 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %290, i64 %292)
  %293 = load i32, i32* %n_ops, align 4
  %sub645 = sub nsw i32 %293, 2
  %idxprom646 = sext i32 %sub645 to i64
  %arrayidx647 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom646
  %op648 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx647, i32 0, i32 0
  store %struct.rtx_def* %call644, %struct.rtx_def** %op648, align 8
  %294 = load i32, i32* %n_ops, align 4
  %dec = add nsw i32 %294, -1
  store i32 %dec, i32* %n_ops, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.end.637, %lor.lhs.false.611, %land.lhs.true.539, %for.end.535
  store i32 0, i32* %n_consts, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.650

for.cond.650:                                     ; preds = %for.inc.664, %if.end.649
  %295 = load i32, i32* %i, align 4
  %296 = load i32, i32* %n_ops, align 4
  %cmp651 = icmp slt i32 %295, %296
  br i1 %cmp651, label %for.body.653, label %for.end.666

for.body.653:                                     ; preds = %for.cond.650
  %297 = load i32, i32* %i, align 4
  %idxprom654 = sext i32 %297 to i64
  %arrayidx655 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom654
  %op656 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx655, i32 0, i32 0
  %298 = load %struct.rtx_def*, %struct.rtx_def** %op656, align 8
  %299 = bitcast %struct.rtx_def* %298 to i32*
  %bf.load657 = load i32, i32* %299, align 8
  %bf.clear658 = and i32 %bf.load657, 65535
  %cmp659 = icmp eq i32 %bf.clear658, 58
  br i1 %cmp659, label %if.then.661, label %if.end.663

if.then.661:                                      ; preds = %for.body.653
  %300 = load i32, i32* %n_consts, align 4
  %inc662 = add nsw i32 %300, 1
  store i32 %inc662, i32* %n_consts, align 4
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.661, %for.body.653
  br label %for.inc.664

for.inc.664:                                      ; preds = %if.end.663
  %301 = load i32, i32* %i, align 4
  %inc665 = add nsw i32 %301, 1
  store i32 %inc665, i32* %i, align 4
  br label %for.cond.650

for.end.666:                                      ; preds = %for.cond.650
  %302 = load i32, i32* %force.addr, align 4
  %tobool667 = icmp ne i32 %302, 0
  br i1 %tobool667, label %if.end.680, label %land.lhs.true.668

land.lhs.true.668:                                ; preds = %for.end.666
  %303 = load i32, i32* %n_ops, align 4
  %304 = load i32, i32* %n_consts, align 4
  %add669 = add nsw i32 %303, %304
  %305 = load i32, i32* %input_ops, align 4
  %cmp670 = icmp sgt i32 %add669, %305
  br i1 %cmp670, label %if.then.679, label %lor.lhs.false.672

lor.lhs.false.672:                                ; preds = %land.lhs.true.668
  %306 = load i32, i32* %n_ops, align 4
  %307 = load i32, i32* %n_consts, align 4
  %add673 = add nsw i32 %306, %307
  %308 = load i32, i32* %input_ops, align 4
  %cmp674 = icmp eq i32 %add673, %308
  br i1 %cmp674, label %land.lhs.true.676, label %if.end.680

land.lhs.true.676:                                ; preds = %lor.lhs.false.672
  %309 = load i32, i32* %n_consts, align 4
  %310 = load i32, i32* %input_consts, align 4
  %cmp677 = icmp sle i32 %309, %310
  br i1 %cmp677, label %if.then.679, label %if.end.680

if.then.679:                                      ; preds = %land.lhs.true.676, %land.lhs.true.668
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.680:                                       ; preds = %land.lhs.true.676, %lor.lhs.false.672, %for.end.666
  store i32 0, i32* %negate, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.681

for.cond.681:                                     ; preds = %for.inc.689, %if.end.680
  %311 = load i32, i32* %i, align 4
  %312 = load i32, i32* %n_ops, align 4
  %cmp682 = icmp slt i32 %311, %312
  br i1 %cmp682, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.681
  %313 = load i32, i32* %i, align 4
  %idxprom684 = sext i32 %313 to i64
  %arrayidx685 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom684
  %neg686 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx685, i32 0, i32 1
  %314 = load i32, i32* %neg686, align 4
  %tobool687 = icmp ne i32 %314, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.681
  %315 = phi i1 [ false, %for.cond.681 ], [ %tobool687, %land.rhs ]
  br i1 %315, label %for.body.688, label %for.end.691

for.body.688:                                     ; preds = %land.end
  br label %for.inc.689

for.inc.689:                                      ; preds = %for.body.688
  %316 = load i32, i32* %i, align 4
  %inc690 = add nsw i32 %316, 1
  store i32 %inc690, i32* %i, align 4
  br label %for.cond.681

for.end.691:                                      ; preds = %land.end
  %317 = load i32, i32* %i, align 4
  %318 = load i32, i32* %n_ops, align 4
  %cmp692 = icmp eq i32 %317, %318
  br i1 %cmp692, label %if.then.694, label %if.else.705

if.then.694:                                      ; preds = %for.end.691
  store i32 0, i32* %i, align 4
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.702, %if.then.694
  %319 = load i32, i32* %i, align 4
  %320 = load i32, i32* %n_ops, align 4
  %cmp696 = icmp slt i32 %319, %320
  br i1 %cmp696, label %for.body.698, label %for.end.704

for.body.698:                                     ; preds = %for.cond.695
  %321 = load i32, i32* %i, align 4
  %idxprom699 = sext i32 %321 to i64
  %arrayidx700 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom699
  %neg701 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx700, i32 0, i32 1
  store i32 0, i32* %neg701, align 4
  br label %for.inc.702

for.inc.702:                                      ; preds = %for.body.698
  %322 = load i32, i32* %i, align 4
  %inc703 = add nsw i32 %322, 1
  store i32 %inc703, i32* %i, align 4
  br label %for.cond.695

for.end.704:                                      ; preds = %for.cond.695
  store i32 1, i32* %negate, align 4
  br label %if.end.721

if.else.705:                                      ; preds = %for.end.691
  %323 = load i32, i32* %i, align 4
  %cmp706 = icmp ne i32 %323, 0
  br i1 %cmp706, label %if.then.708, label %if.end.720

if.then.708:                                      ; preds = %if.else.705
  %arrayidx709 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 0
  %op710 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx709, i32 0, i32 0
  %324 = load %struct.rtx_def*, %struct.rtx_def** %op710, align 8
  store %struct.rtx_def* %324, %struct.rtx_def** %tem, align 8
  %arrayidx711 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 0
  %325 = load i32, i32* %i, align 4
  %idxprom712 = sext i32 %325 to i64
  %arrayidx713 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom712
  %326 = bitcast %struct.simplify_plus_minus_op_data* %arrayidx711 to i8*
  %327 = bitcast %struct.simplify_plus_minus_op_data* %arrayidx713 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %326, i8* %327, i64 16, i32 8, i1 false)
  %328 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %329 = load i32, i32* %i, align 4
  %idxprom714 = sext i32 %329 to i64
  %arrayidx715 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom714
  %op716 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx715, i32 0, i32 0
  store %struct.rtx_def* %328, %struct.rtx_def** %op716, align 8
  %330 = load i32, i32* %i, align 4
  %idxprom717 = sext i32 %330 to i64
  %arrayidx718 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom717
  %neg719 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx718, i32 0, i32 1
  store i32 1, i32* %neg719, align 4
  br label %if.end.720

if.end.720:                                       ; preds = %if.then.708, %if.else.705
  br label %if.end.721

if.end.721:                                       ; preds = %if.end.720, %for.end.704
  %arrayidx722 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 0
  %op723 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx722, i32 0, i32 0
  %331 = load %struct.rtx_def*, %struct.rtx_def** %op723, align 8
  store %struct.rtx_def* %331, %struct.rtx_def** %result, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.724

for.cond.724:                                     ; preds = %for.inc.736, %if.end.721
  %332 = load i32, i32* %i, align 4
  %333 = load i32, i32* %n_ops, align 4
  %cmp725 = icmp slt i32 %332, %333
  br i1 %cmp725, label %for.body.727, label %for.end.738

for.body.727:                                     ; preds = %for.cond.724
  %334 = load i32, i32* %i, align 4
  %idxprom728 = sext i32 %334 to i64
  %arrayidx729 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom728
  %neg730 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx729, i32 0, i32 1
  %335 = load i32, i32* %neg730, align 4
  %tobool731 = icmp ne i32 %335, 0
  %cond = select i1 %tobool731, i32 76, i32 75
  %336 = load i32, i32* %mode.addr, align 4
  %337 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %338 = load i32, i32* %i, align 4
  %idxprom732 = sext i32 %338 to i64
  %arrayidx733 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %ops, i32 0, i64 %idxprom732
  %op734 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %arrayidx733, i32 0, i32 0
  %339 = load %struct.rtx_def*, %struct.rtx_def** %op734, align 8
  %call735 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %cond, i32 %336, %struct.rtx_def* %337, %struct.rtx_def* %339)
  store %struct.rtx_def* %call735, %struct.rtx_def** %result, align 8
  br label %for.inc.736

for.inc.736:                                      ; preds = %for.body.727
  %340 = load i32, i32* %i, align 4
  %inc737 = add nsw i32 %340, 1
  store i32 %inc737, i32* %i, align 4
  br label %for.cond.724

for.end.738:                                      ; preds = %for.cond.724
  %341 = load i32, i32* %negate, align 4
  %tobool739 = icmp ne i32 %341, 0
  br i1 %tobool739, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.738
  %342 = load i32, i32* %mode.addr, align 4
  %343 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call740 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 77, i32 %342, %struct.rtx_def* %343)
  br label %cond.end

cond.false:                                       ; preds = %for.end.738
  %344 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond741 = phi %struct.rtx_def* [ %call740, %cond.true ], [ %344, %cond.false ]
  store %struct.rtx_def* %cond741, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.679, %if.then.291, %if.then
  %345 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %345
}

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %c = alloca %struct.rtx_def*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  %cmode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 68
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load4, 26
  %bf.clear5 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call = call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %10)
  store %struct.rtx_def* %call, %struct.rtx_def** %c, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call8 = call i32 @get_pool_mode(%struct.rtx_def* %11)
  store i32 %call8, i32* %cmode, align 4
  %12 = load i32, i32* %cmode, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load9 = load i32, i32* %14, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 16
  %bf.clear11 = and i32 %bf.lshr10, 255
  %cmp12 = icmp ne i32 %12, %bf.clear11
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load14 = load i32, i32* %16, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 16
  %bf.clear16 = and i32 %bf.lshr15, 255
  %17 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %18 = load i32, i32* %cmode, align 4
  %call17 = call %struct.rtx_def* @simplify_subreg(i32 %bf.clear16, %struct.rtx_def* %17, i32 %18, i32 0)
  store %struct.rtx_def* %call17, %struct.rtx_def** %c, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %tobool18 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  %20 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %20, %cond.true ], [ %21, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.7
  %22 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.19, %cond.end, %if.then.6, %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %23
}

declare %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) #1

declare i32 @get_pool_mode(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_subreg(i32 %outermode, %struct.rtx_def* %op, i32 %innermode, i32 %byte) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %outermode.addr = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %innermode.addr = alloca i32, align 4
  %byte.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %part = alloca i32, align 4
  %val = alloca i64, align 8
  %new = alloca %struct.rtx_def*, align 8
  %new96 = alloca %struct.rtx_def*, align 8
  %innermostmode = alloca i32, align 4
  %final_offset = alloca i32, align 4
  %new194 = alloca %struct.rtx_def*, align 8
  %difference = alloca i32, align 4
  %difference245 = alloca i32, align 4
  %offset281 = alloca i32, align 4
  %difference282 = alloca i32, align 4
  %final_regno = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %is_realpart = alloca i32, align 4
  %part429 = alloca %struct.rtx_def*, align 8
  %final_offset441 = alloca i32, align 4
  %res = alloca %struct.rtx_def*, align 8
  store i32 %outermode, i32* %outermode.addr, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %innermode, i32* %innermode.addr, align 4
  store i32 %byte, i32* %byte.addr, align 4
  %0 = load i32, i32* %innermode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %outermode.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %innermode.addr, align 4
  %cmp3 = icmp eq i32 %2, 51
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %outermode.addr, align 4
  %cmp5 = icmp eq i32 %3, 51
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.simplify_subreg, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false.4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %6 = load i32, i32* %innermode.addr, align 4
  %cmp6 = icmp ne i32 %bf.clear, %6
  br i1 %cmp6, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 16
  %bf.clear9 = and i32 %bf.lshr8, 255
  %cmp10 = icmp ne i32 %bf.clear9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2492, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.simplify_subreg, i32 0, i32 0)) #4
  unreachable

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %byte.addr, align 4
  %10 = load i32, i32* %outermode.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %rem = urem i32 %9, %conv
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.12
  %12 = load i32, i32* %byte.addr, align 4
  %13 = load i32, i32* %innermode.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %cmp17 = icmp uge i32 %12, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.13, %if.end.12
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2496, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.simplify_subreg, i32 0, i32 0)) #4
  unreachable

if.end.20:                                        ; preds = %lor.lhs.false.13
  %15 = load i32, i32* %outermode.addr, align 4
  %16 = load i32, i32* %innermode.addr, align 4
  %cmp21 = icmp eq i32 %15, %16
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.26

land.lhs.true.23:                                 ; preds = %if.end.20
  %17 = load i32, i32* %byte.addr, align 4
  %tobool24 = icmp ne i32 %17, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.23, %if.end.20
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load27 = load i32, i32* %20, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 67
  br i1 %cmp29, label %if.then.66, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.26
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load32 = load i32, i32* %22, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 68
  br i1 %cmp34, label %if.then.66, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.31
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load37 = load i32, i32* %24, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 54
  br i1 %cmp39, label %if.then.66, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.36
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load42 = load i32, i32* %26, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 55
  br i1 %cmp44, label %if.then.66, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.41
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load47 = load i32, i32* %28, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 58
  br i1 %cmp49, label %if.then.66, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.46
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load52 = load i32, i32* %30, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 134
  br i1 %cmp54, label %if.then.66, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.51
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load57 = load i32, i32* %32, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 56
  br i1 %cmp59, label %if.then.66, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.56
  %33 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load62 = load i32, i32* %34, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 140
  br i1 %cmp64, label %if.then.66, label %if.end.181

if.then.66:                                       ; preds = %lor.lhs.false.61, %lor.lhs.false.56, %lor.lhs.false.51, %lor.lhs.false.46, %lor.lhs.false.41, %lor.lhs.false.36, %lor.lhs.false.31, %if.end.26
  store i64 0, i64* %val, align 8
  %35 = load i32, i32* %outermode.addr, align 4
  %36 = load i32, i32* %innermode.addr, align 4
  %call = call i32 @subreg_lowpart_offset(i32 %35, i32 %36)
  %37 = load i32, i32* %byte.addr, align 4
  %cmp67 = icmp eq i32 %call, %37
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.then.66
  %38 = load i32, i32* %outermode.addr, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call70 = call %struct.rtx_def* @gen_lowpart_if_possible(i32 %38, %struct.rtx_def* %39)
  store %struct.rtx_def* %call70, %struct.rtx_def** %new, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool71 = icmp ne %struct.rtx_def* %40, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.69
  %41 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %retval
  br label %return

if.end.73:                                        ; preds = %if.then.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.66
  %42 = load i32, i32* %outermode.addr, align 4
  %idxprom75 = sext i32 %42 to i64
  %arrayidx76 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom75
  %43 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %43 to i32
  %44 = load i32, i32* @target_flags, align 4
  %and = and i32 %44, 33554432
  %tobool78 = icmp ne i32 %and, 0
  %cond = select i1 %tobool78, i32 8, i32 4
  %cmp79 = icmp eq i32 %conv77, %cond
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.104

land.lhs.true.81:                                 ; preds = %if.end.74
  %45 = load i32, i32* %innermode.addr, align 4
  %idxprom82 = sext i32 %45 to i64
  %arrayidx83 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom82
  %46 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %46 to i32
  %47 = load i32, i32* @target_flags, align 4
  %and85 = and i32 %47, 33554432
  %tobool86 = icmp ne i32 %and85, 0
  %cond87 = select i1 %tobool86, i32 8, i32 4
  %cmp88 = icmp sgt i32 %conv84, %cond87
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.104

land.lhs.true.90:                                 ; preds = %land.lhs.true.81
  %48 = load i32, i32* %outermode.addr, align 4
  %idxprom91 = sext i32 %48 to i64
  %arrayidx92 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom91
  %49 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp eq i32 %49, 1
  br i1 %cmp93, label %if.then.95, label %if.end.104

if.then.95:                                       ; preds = %land.lhs.true.90
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %51 = load i32, i32* %byte.addr, align 4
  %52 = load i32, i32* @target_flags, align 4
  %and97 = and i32 %52, 33554432
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i32 8, i32 4
  %div = udiv i32 %51, %cond99
  %53 = load i32, i32* %innermode.addr, align 4
  %call100 = call %struct.rtx_def* @constant_subword(%struct.rtx_def* %50, i32 %div, i32 %53)
  store %struct.rtx_def* %call100, %struct.rtx_def** %new96, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %new96, align 8
  %tobool101 = icmp ne %struct.rtx_def* %54, null
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.95
  %55 = load %struct.rtx_def*, %struct.rtx_def** %new96, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %retval
  br label %return

if.end.103:                                       ; preds = %if.then.95
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.90, %land.lhs.true.81, %if.end.74
  %56 = load i32, i32* %byte.addr, align 4
  %mul = mul i32 %56, 8
  store i32 %mul, i32* %offset, align 4
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load105 = load i32, i32* %58, align 8
  %bf.clear106 = and i32 %bf.load105, 65535
  switch i32 %bf.clear106, label %sw.default [
    i32 55, label %sw.bb
    i32 54, label %sw.bb.147
  ]

sw.bb:                                            ; preds = %if.end.104
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load107 = load i32, i32* %60, align 8
  %bf.lshr108 = lshr i32 %bf.load107, 16
  %bf.clear109 = and i32 %bf.lshr108, 255
  %cmp110 = icmp ne i32 %bf.clear109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %sw.bb
  br label %sw.epilog

if.end.113:                                       ; preds = %sw.bb
  %61 = load i32, i32* %outermode.addr, align 4
  %idxprom114 = sext i32 %61 to i64
  %arrayidx115 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom114
  %62 = load i16, i16* %arrayidx115, align 2
  %conv116 = zext i16 %62 to i32
  %cmp117 = icmp sge i32 %conv116, 64
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.113
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.120:                                       ; preds = %if.end.113
  %63 = load i32, i32* %offset, align 4
  %cmp121 = icmp sge i32 %63, 64
  %conv122 = zext i1 %cmp121 to i32
  store i32 %conv122, i32* %part, align 4
  %64 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %64, 33554432
  %tobool124 = icmp ne i32 %and123, 0
  %cond125 = select i1 %tobool124, i32 64, i32 32
  %cmp126 = icmp sgt i32 %cond125, 64
  br i1 %cmp126, label %land.lhs.true.128, label %lor.lhs.false.129

land.lhs.true.128:                                ; preds = %if.end.120
  br i1 false, label %if.then.136, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %land.lhs.true.128, %if.end.120
  %65 = load i32, i32* @target_flags, align 4
  %and130 = and i32 %65, 33554432
  %tobool131 = icmp ne i32 %and130, 0
  %cond132 = select i1 %tobool131, i32 64, i32 32
  %cmp133 = icmp sle i32 %cond132, 64
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.138

land.lhs.true.135:                                ; preds = %lor.lhs.false.129
  br i1 false, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %land.lhs.true.135, %land.lhs.true.128
  %66 = load i32, i32* %part, align 4
  %tobool137 = icmp ne i32 %66, 0
  %lnot = xor i1 %tobool137, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %part, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %land.lhs.true.135, %lor.lhs.false.129
  %67 = load i32, i32* %part, align 4
  %tobool139 = icmp ne i32 %67, 0
  br i1 %tobool139, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.138
  %68 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtwint = bitcast %union.rtunion_def* %arrayidx140 to i64*
  %69 = load i64, i64* %rtwint, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.138
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 1
  %rtwint143 = bitcast %union.rtunion_def* %arrayidx142 to i64*
  %71 = load i64, i64* %rtwint143, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond144 = phi i64 [ %69, %cond.true ], [ %71, %cond.false ]
  store i64 %cond144, i64* %val, align 8
  %72 = load i32, i32* %offset, align 4
  %rem145 = srem i32 %72, 64
  store i32 %rem145, i32* %offset, align 4
  %call146 = call i32 @mode_for_size(i32 64, i32 1, i32 0)
  store i32 %call146, i32* %innermode.addr, align 4
  br label %sw.bb.147

sw.bb.147:                                        ; preds = %if.end.104, %cond.end
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load148 = load i32, i32* %74, align 8
  %bf.clear149 = and i32 %bf.load148, 65535
  %cmp150 = icmp eq i32 %bf.clear149, 54
  br i1 %cmp150, label %if.then.152, label %if.end.156

if.then.152:                                      ; preds = %sw.bb.147
  %75 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtwint155 = bitcast %union.rtunion_def* %arrayidx154 to i64*
  %76 = load i64, i64* %rtwint155, align 8
  store i64 %76, i64* %val, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.152, %sw.bb.147
  %77 = load i32, i32* %outermode.addr, align 4
  %idxprom157 = sext i32 %77 to i64
  %arrayidx158 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom157
  %78 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp ne i32 %78, 1
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.156
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.162:                                       ; preds = %if.end.156
  %79 = load i32, i32* %offset, align 4
  %cmp163 = icmp sge i32 %79, 64
  br i1 %cmp163, label %if.then.165, label %if.else

if.then.165:                                      ; preds = %if.end.162
  %80 = load i64, i64* %val, align 8
  %cmp166 = icmp slt i64 %80, 0
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %if.then.165
  %81 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  br label %cond.end.170

cond.false.169:                                   ; preds = %if.then.165
  %82 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.168
  %cond171 = phi %struct.rtx_def* [ %81, %cond.true.168 ], [ %82, %cond.false.169 ]
  store %struct.rtx_def* %cond171, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.end.162
  %83 = load i32, i32* %offset, align 4
  %84 = load i64, i64* %val, align 8
  %sh_prom = zext i32 %83 to i64
  %shr = lshr i64 %84, %sh_prom
  store i64 %shr, i64* %val, align 8
  %85 = load i32, i32* %outermode.addr, align 4
  %idxprom172 = sext i32 %85 to i64
  %arrayidx173 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom172
  %86 = load i16, i16* %arrayidx173, align 2
  %conv174 = zext i16 %86 to i32
  %cmp175 = icmp slt i32 %conv174, 64
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.else
  %87 = load i64, i64* %val, align 8
  %88 = load i32, i32* %outermode.addr, align 4
  %call178 = call i64 @trunc_int_for_mode(i64 %87, i32 %88)
  store i64 %call178, i64* %val, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.else
  %89 = load i64, i64* %val, align 8
  %call180 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %89)
  store %struct.rtx_def* %call180, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.end.104
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.112
  br label %if.end.181

if.end.181:                                       ; preds = %sw.epilog, %lor.lhs.false.61
  %90 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load182 = load i32, i32* %91, align 8
  %bf.clear183 = and i32 %bf.load182, 65535
  %cmp184 = icmp eq i32 %bf.clear183, 63
  br i1 %cmp184, label %if.then.186, label %if.end.313

if.then.186:                                      ; preds = %if.end.181
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx188 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load189 = load i32, i32* %94, align 8
  %bf.lshr190 = lshr i32 %bf.load189, 16
  %bf.clear191 = and i32 %bf.lshr190, 255
  store i32 %bf.clear191, i32* %innermostmode, align 4
  %95 = load i32, i32* %byte.addr, align 4
  %96 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx193 to i32*
  %97 = load i32, i32* %rtuint, align 4
  %add = add i32 %95, %97
  store i32 %add, i32* %final_offset, align 4
  %98 = load i32, i32* %outermode.addr, align 4
  %99 = load i32, i32* %innermostmode, align 4
  %cmp195 = icmp eq i32 %98, %99
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.210

land.lhs.true.197:                                ; preds = %if.then.186
  %100 = load i32, i32* %byte.addr, align 4
  %cmp198 = icmp eq i32 %100, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.210

land.lhs.true.200:                                ; preds = %land.lhs.true.197
  %101 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 1
  %rtuint203 = bitcast %union.rtunion_def* %arrayidx202 to i32*
  %102 = load i32, i32* %rtuint203, align 4
  %cmp204 = icmp eq i32 %102, 0
  br i1 %cmp204, label %if.then.206, label %if.end.210

if.then.206:                                      ; preds = %land.lhs.true.200
  %103 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx209, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %retval
  br label %return

if.end.210:                                       ; preds = %land.lhs.true.200, %land.lhs.true.197, %if.then.186
  %105 = load i32, i32* %byte.addr, align 4
  %cmp211 = icmp eq i32 %105, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.229

land.lhs.true.213:                                ; preds = %if.end.210
  %106 = load i32, i32* %innermode.addr, align 4
  %idxprom214 = sext i32 %106 to i64
  %arrayidx215 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom214
  %107 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %107 to i32
  %108 = load i32, i32* %outermode.addr, align 4
  %idxprom217 = sext i32 %108 to i64
  %arrayidx218 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom217
  %109 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %109 to i32
  %cmp220 = icmp slt i32 %conv216, %conv219
  br i1 %cmp220, label %if.then.222, label %if.end.229

if.then.222:                                      ; preds = %land.lhs.true.213
  %110 = load i32, i32* %innermode.addr, align 4
  %idxprom223 = sext i32 %110 to i64
  %arrayidx224 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom223
  %111 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %111 to i32
  %112 = load i32, i32* %outermode.addr, align 4
  %idxprom226 = sext i32 %112 to i64
  %arrayidx227 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom226
  %113 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %113 to i32
  %sub = sub nsw i32 %conv225, %conv228
  store i32 %sub, i32* %difference, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.222, %land.lhs.true.213, %if.end.210
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 1
  %rtuint232 = bitcast %union.rtunion_def* %arrayidx231 to i32*
  %115 = load i32, i32* %rtuint232, align 4
  %cmp233 = icmp eq i32 %115, 0
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.253

land.lhs.true.235:                                ; preds = %if.end.229
  %116 = load i32, i32* %innermostmode, align 4
  %idxprom236 = sext i32 %116 to i64
  %arrayidx237 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom236
  %117 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %117 to i32
  %118 = load i32, i32* %innermode.addr, align 4
  %idxprom239 = sext i32 %118 to i64
  %arrayidx240 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom239
  %119 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %119 to i32
  %cmp242 = icmp slt i32 %conv238, %conv241
  br i1 %cmp242, label %if.then.244, label %if.end.253

if.then.244:                                      ; preds = %land.lhs.true.235
  %120 = load i32, i32* %innermostmode, align 4
  %idxprom246 = sext i32 %120 to i64
  %arrayidx247 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom246
  %121 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %121 to i32
  %122 = load i32, i32* %innermode.addr, align 4
  %idxprom249 = sext i32 %122 to i64
  %arrayidx250 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom249
  %123 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %123 to i32
  %sub252 = sub nsw i32 %conv248, %conv251
  store i32 %sub252, i32* %difference245, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.244, %land.lhs.true.235, %if.end.229
  %124 = load i32, i32* %innermostmode, align 4
  %idxprom254 = sext i32 %124 to i64
  %arrayidx255 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom254
  %125 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %125 to i32
  %126 = load i32, i32* %outermode.addr, align 4
  %idxprom257 = sext i32 %126 to i64
  %arrayidx258 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom257
  %127 = load i8, i8* %arrayidx258, align 1
  %conv259 = zext i8 %127 to i32
  %cmp260 = icmp sgt i32 %conv256, %conv259
  br i1 %cmp260, label %if.then.262, label %if.else.280

if.then.262:                                      ; preds = %if.end.253
  %128 = load i32, i32* %final_offset, align 4
  %cmp263 = icmp slt i32 %128, 0
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.then.262
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.266:                                       ; preds = %if.then.262
  %129 = load i32, i32* %final_offset, align 4
  %130 = load i32, i32* %outermode.addr, align 4
  %idxprom267 = sext i32 %130 to i64
  %arrayidx268 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom267
  %131 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %131 to i32
  %rem270 = srem i32 %129, %conv269
  %tobool271 = icmp ne i32 %rem270, 0
  br i1 %tobool271, label %if.then.278, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %if.end.266
  %132 = load i32, i32* %final_offset, align 4
  %133 = load i32, i32* %innermostmode, align 4
  %idxprom273 = sext i32 %133 to i64
  %arrayidx274 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom273
  %134 = load i8, i8* %arrayidx274, align 1
  %conv275 = zext i8 %134 to i32
  %cmp276 = icmp uge i32 %132, %conv275
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %lor.lhs.false.272, %if.end.266
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.279:                                       ; preds = %lor.lhs.false.272
  br label %if.end.295

if.else.280:                                      ; preds = %if.end.253
  store i32 0, i32* %offset281, align 4
  %135 = load i32, i32* %innermostmode, align 4
  %idxprom283 = sext i32 %135 to i64
  %arrayidx284 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom283
  %136 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %136 to i32
  %137 = load i32, i32* %outermode.addr, align 4
  %idxprom286 = sext i32 %137 to i64
  %arrayidx287 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom286
  %138 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %138 to i32
  %sub289 = sub nsw i32 %conv285, %conv288
  store i32 %sub289, i32* %difference282, align 4
  %139 = load i32, i32* %offset281, align 4
  %140 = load i32, i32* %final_offset, align 4
  %cmp290 = icmp eq i32 %139, %140
  br i1 %cmp290, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %if.else.280
  store i32 0, i32* %final_offset, align 4
  br label %if.end.294

if.else.293:                                      ; preds = %if.else.280
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.294:                                       ; preds = %if.then.292
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.279
  %141 = load i32, i32* %outermode.addr, align 4
  %142 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 0
  %rtx298 = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx298, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 0
  %rtx301 = bitcast %union.rtunion_def* %arrayidx300 to %struct.rtx_def**
  %145 = load %struct.rtx_def*, %struct.rtx_def** %rtx301, align 8
  %146 = bitcast %struct.rtx_def* %145 to i32*
  %bf.load302 = load i32, i32* %146, align 8
  %bf.lshr303 = lshr i32 %bf.load302, 16
  %bf.clear304 = and i32 %bf.lshr303, 255
  %147 = load i32, i32* %final_offset, align 4
  %call305 = call %struct.rtx_def* @simplify_subreg(i32 %141, %struct.rtx_def* %143, i32 %bf.clear304, i32 %147)
  store %struct.rtx_def* %call305, %struct.rtx_def** %new194, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %new194, align 8
  %tobool306 = icmp ne %struct.rtx_def* %148, null
  br i1 %tobool306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.295
  %149 = load %struct.rtx_def*, %struct.rtx_def** %new194, align 8
  store %struct.rtx_def* %149, %struct.rtx_def** %retval
  br label %return

if.end.308:                                       ; preds = %if.end.295
  %150 = load i32, i32* %outermode.addr, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 0
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %152 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  %153 = load i32, i32* %final_offset, align 4
  %call312 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %150, %struct.rtx_def* %152, i32 %153)
  store %struct.rtx_def* %call312, %struct.rtx_def** %retval
  br label %return

if.end.313:                                       ; preds = %if.end.181
  %154 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %155 = bitcast %struct.rtx_def* %154 to i32*
  %bf.load314 = load i32, i32* %155, align 8
  %bf.clear315 = and i32 %bf.load314, 65535
  %cmp316 = icmp eq i32 %bf.clear315, 61
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.384

land.lhs.true.318:                                ; preds = %if.end.313
  %156 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %bf.load319 = load i32, i32* %157, align 8
  %bf.lshr320 = lshr i32 %bf.load319, 30
  %bf.clear321 = and i32 %bf.lshr320, 1
  %tobool322 = icmp ne i32 %bf.clear321, 0
  br i1 %tobool322, label %lor.lhs.false.323, label %land.lhs.true.325

lor.lhs.false.323:                                ; preds = %land.lhs.true.318
  %158 = load i32, i32* @rtx_equal_function_value_matters, align 4
  %tobool324 = icmp ne i32 %158, 0
  br i1 %tobool324, label %if.end.384, label %land.lhs.true.325

land.lhs.true.325:                                ; preds = %lor.lhs.false.323, %land.lhs.true.318
  %159 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtuint328 = bitcast %union.rtunion_def* %arrayidx327 to i32*
  %160 = load i32, i32* %rtuint328, align 4
  %cmp329 = icmp ult i32 %160, 53
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.384

land.lhs.true.331:                                ; preds = %land.lhs.true.325
  %161 = load i32, i32* @reload_completed, align 4
  %tobool332 = icmp ne i32 %161, 0
  br i1 %tobool332, label %land.lhs.true.333, label %lor.lhs.false.335

land.lhs.true.333:                                ; preds = %land.lhs.true.331
  %162 = load i32, i32* @frame_pointer_needed, align 4
  %tobool334 = icmp ne i32 %162, 0
  br i1 %tobool334, label %lor.lhs.false.335, label %land.lhs.true.347

lor.lhs.false.335:                                ; preds = %land.lhs.true.333, %land.lhs.true.331
  %163 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld336 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %163, i32 0, i32 1
  %arrayidx337 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld336, i32 0, i64 0
  %rtuint338 = bitcast %union.rtunion_def* %arrayidx337 to i32*
  %164 = load i32, i32* %rtuint338, align 4
  %cmp339 = icmp ne i32 %164, 20
  br i1 %cmp339, label %land.lhs.true.341, label %if.end.384

land.lhs.true.341:                                ; preds = %lor.lhs.false.335
  %165 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 0
  %rtuint344 = bitcast %union.rtunion_def* %arrayidx343 to i32*
  %166 = load i32, i32* %rtuint344, align 4
  %cmp345 = icmp ne i32 %166, 6
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.384

land.lhs.true.347:                                ; preds = %land.lhs.true.341, %land.lhs.true.333
  %167 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld348, i32 0, i64 0
  %rtuint350 = bitcast %union.rtunion_def* %arrayidx349 to i32*
  %168 = load i32, i32* %rtuint350, align 4
  %cmp351 = icmp ne i32 %168, 16
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.384

land.lhs.true.353:                                ; preds = %land.lhs.true.347
  %169 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 0
  %rtuint356 = bitcast %union.rtunion_def* %arrayidx355 to i32*
  %170 = load i32, i32* %rtuint356, align 4
  %cmp357 = icmp ne i32 %170, 7
  br i1 %cmp357, label %if.then.359, label %if.end.384

if.then.359:                                      ; preds = %land.lhs.true.353
  %171 = load i32, i32* %outermode.addr, align 4
  %172 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %173 = load i32, i32* %byte.addr, align 4
  %call360 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %171, %struct.rtx_def* %172, i32 %173)
  %call361 = call i32 @subreg_hard_regno(%struct.rtx_def* %call360, i32 0)
  store i32 %call361, i32* %final_regno, align 4
  %174 = load i32, i32* %final_regno, align 4
  %175 = load i32, i32* %outermode.addr, align 4
  %call362 = call i32 @ix86_hard_regno_mode_ok(i32 %174, i32 %175)
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %if.then.370, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %if.then.359
  %176 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld365, i32 0, i64 0
  %rtuint367 = bitcast %union.rtunion_def* %arrayidx366 to i32*
  %177 = load i32, i32* %rtuint367, align 4
  %178 = load i32, i32* %innermode.addr, align 4
  %call368 = call i32 @ix86_hard_regno_mode_ok(i32 %177, i32 %178)
  %tobool369 = icmp ne i32 %call368, 0
  br i1 %tobool369, label %if.end.383, label %if.then.370

if.then.370:                                      ; preds = %lor.lhs.false.364, %if.then.359
  %179 = load i32, i32* %outermode.addr, align 4
  %180 = load i32, i32* %final_regno, align 4
  %call371 = call %struct.rtx_def* @gen_rtx_REG(i32 %179, i32 %180)
  store %struct.rtx_def* %call371, %struct.rtx_def** %x, align 8
  %181 = load i32, i32* %outermode.addr, align 4
  %182 = load i32, i32* %innermode.addr, align 4
  %call372 = call i32 @subreg_lowpart_offset(i32 %181, i32 %182)
  %183 = load i32, i32* %byte.addr, align 4
  %cmp373 = icmp eq i32 %call372, %183
  br i1 %cmp373, label %if.then.375, label %if.end.382

if.then.375:                                      ; preds = %if.then.370
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 1
  %rtuint378 = bitcast %union.rtunion_def* %arrayidx377 to i32*
  %185 = load i32, i32* %rtuint378, align 4
  %186 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 1
  %rtuint381 = bitcast %union.rtunion_def* %arrayidx380 to i32*
  store i32 %185, i32* %rtuint381, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.375, %if.then.370
  %187 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %187, %struct.rtx_def** %retval
  br label %return

if.end.383:                                       ; preds = %lor.lhs.false.364
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %land.lhs.true.353, %land.lhs.true.347, %land.lhs.true.341, %lor.lhs.false.335, %land.lhs.true.325, %lor.lhs.false.323, %if.end.313
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load385 = load i32, i32* %189, align 8
  %bf.clear386 = and i32 %bf.load385, 65535
  %cmp387 = icmp eq i32 %bf.clear386, 66
  br i1 %cmp387, label %land.lhs.true.389, label %if.end.418

land.lhs.true.389:                                ; preds = %if.end.384
  %190 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld390, i32 0, i64 0
  %rtx392 = bitcast %union.rtunion_def* %arrayidx391 to %struct.rtx_def**
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtx392, align 8
  %call393 = call i32 @mode_dependent_address_p(%struct.rtx_def* %191)
  %tobool394 = icmp ne i32 %call393, 0
  br i1 %tobool394, label %if.end.418, label %land.lhs.true.395

land.lhs.true.395:                                ; preds = %land.lhs.true.389
  %192 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %bf.load396 = load i32, i32* %193, align 8
  %bf.lshr397 = lshr i32 %bf.load396, 27
  %bf.clear398 = and i32 %bf.lshr397, 1
  %tobool399 = icmp ne i32 %bf.clear398, 0
  br i1 %tobool399, label %lor.lhs.false.400, label %land.lhs.true.403

lor.lhs.false.400:                                ; preds = %land.lhs.true.395
  %194 = load i32, i32* %innermode.addr, align 4
  %call401 = call i32 @have_insn_for(i32 47, i32 %194)
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.end.418, label %land.lhs.true.403

land.lhs.true.403:                                ; preds = %lor.lhs.false.400, %land.lhs.true.395
  %195 = load i32, i32* %outermode.addr, align 4
  %idxprom404 = sext i32 %195 to i64
  %arrayidx405 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom404
  %196 = load i8, i8* %arrayidx405, align 1
  %conv406 = zext i8 %196 to i32
  %197 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %198 = bitcast %struct.rtx_def* %197 to i32*
  %bf.load407 = load i32, i32* %198, align 8
  %bf.lshr408 = lshr i32 %bf.load407, 16
  %bf.clear409 = and i32 %bf.lshr408, 255
  %idxprom410 = sext i32 %bf.clear409 to i64
  %arrayidx411 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom410
  %199 = load i8, i8* %arrayidx411, align 1
  %conv412 = zext i8 %199 to i32
  %cmp413 = icmp sle i32 %conv406, %conv412
  br i1 %cmp413, label %if.then.415, label %if.end.418

if.then.415:                                      ; preds = %land.lhs.true.403
  %200 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %201 = load i32, i32* %outermode.addr, align 4
  %202 = load i32, i32* %byte.addr, align 4
  %conv416 = zext i32 %202 to i64
  %call417 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %200, i32 %201, i64 %conv416, i32 0, i32 1)
  store %struct.rtx_def* %call417, %struct.rtx_def** %retval
  br label %return

if.end.418:                                       ; preds = %land.lhs.true.403, %lor.lhs.false.400, %land.lhs.true.389, %if.end.384
  %203 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %204 = bitcast %struct.rtx_def* %203 to i32*
  %bf.load419 = load i32, i32* %204, align 8
  %bf.clear420 = and i32 %bf.load419, 65535
  %cmp421 = icmp eq i32 %bf.clear420, 65
  br i1 %cmp421, label %if.then.423, label %if.end.454

if.then.423:                                      ; preds = %if.end.418
  %205 = load i32, i32* %byte.addr, align 4
  %206 = load i32, i32* %innermode.addr, align 4
  %idxprom424 = sext i32 %206 to i64
  %arrayidx425 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom424
  %207 = load i8, i8* %arrayidx425, align 1
  %conv426 = zext i8 %207 to i32
  %cmp427 = icmp ult i32 %205, %conv426
  %conv428 = zext i1 %cmp427 to i32
  store i32 %conv428, i32* %is_realpart, align 4
  %208 = load i32, i32* %is_realpart, align 4
  %tobool430 = icmp ne i32 %208, 0
  br i1 %tobool430, label %cond.true.431, label %cond.false.435

cond.true.431:                                    ; preds = %if.then.423
  %209 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld432 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx433 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld432, i32 0, i64 0
  %rtx434 = bitcast %union.rtunion_def* %arrayidx433 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtx434, align 8
  br label %cond.end.439

cond.false.435:                                   ; preds = %if.then.423
  %211 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld436 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx437 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld436, i32 0, i64 1
  %rtx438 = bitcast %union.rtunion_def* %arrayidx437 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx438, align 8
  br label %cond.end.439

cond.end.439:                                     ; preds = %cond.false.435, %cond.true.431
  %cond440 = phi %struct.rtx_def* [ %210, %cond.true.431 ], [ %212, %cond.false.435 ]
  store %struct.rtx_def* %cond440, %struct.rtx_def** %part429, align 8
  %213 = load i32, i32* %byte.addr, align 4
  %214 = load i32, i32* %innermode.addr, align 4
  %idxprom442 = sext i32 %214 to i64
  %arrayidx443 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom442
  %215 = load i8, i8* %arrayidx443, align 1
  %conv444 = zext i8 %215 to i32
  %rem445 = urem i32 %213, %conv444
  store i32 %rem445, i32* %final_offset441, align 4
  %216 = load i32, i32* %outermode.addr, align 4
  %217 = load %struct.rtx_def*, %struct.rtx_def** %part429, align 8
  %218 = load %struct.rtx_def*, %struct.rtx_def** %part429, align 8
  %219 = bitcast %struct.rtx_def* %218 to i32*
  %bf.load446 = load i32, i32* %219, align 8
  %bf.lshr447 = lshr i32 %bf.load446, 16
  %bf.clear448 = and i32 %bf.lshr447, 255
  %220 = load i32, i32* %final_offset441, align 4
  %call449 = call %struct.rtx_def* @simplify_subreg(i32 %216, %struct.rtx_def* %217, i32 %bf.clear448, i32 %220)
  store %struct.rtx_def* %call449, %struct.rtx_def** %res, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %tobool450 = icmp ne %struct.rtx_def* %221, null
  br i1 %tobool450, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %cond.end.439
  %222 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  store %struct.rtx_def* %222, %struct.rtx_def** %retval
  br label %return

if.end.452:                                       ; preds = %cond.end.439
  %223 = load i32, i32* %outermode.addr, align 4
  %224 = load %struct.rtx_def*, %struct.rtx_def** %part429, align 8
  %225 = load i32, i32* %final_offset441, align 4
  %call453 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %223, %struct.rtx_def* %224, i32 %225)
  store %struct.rtx_def* %call453, %struct.rtx_def** %retval
  br label %return

if.end.454:                                       ; preds = %if.end.418
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.454, %if.end.452, %if.then.451, %if.then.415, %if.end.382, %if.end.308, %if.then.307, %if.else.293, %if.then.278, %if.then.265, %if.then.206, %if.end.179, %cond.end.170, %if.then.161, %if.then.119, %if.then.102, %if.then.72, %if.then.25
  %226 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %226
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_gen_unary(i32 %code, i32 %mode, %struct.rtx_def* %op, i32 %op_mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %op_mode.addr = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %op_mode, i32* %op_mode.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = load i32, i32* %op_mode.addr, align 4
  %call = call %struct.rtx_def* @simplify_unary_operation(i32 %0, i32 %1, %struct.rtx_def* %2, i32 %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  %cmp = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %code.addr, align 4
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call1 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %5, i32 %6, %struct.rtx_def* %7)
  store %struct.rtx_def* %call1, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %8
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_unary_operation(i32 %code, i32 %mode, %struct.rtx_def* %op, i32 %op_mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %op_mode.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %trueop = alloca %struct.rtx_def*, align 8
  %hv = alloca i64, align 8
  %lv = alloca i64, align 8
  %d = alloca %struct.realvaluetype, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %hv49 = alloca i64, align 8
  %lv51 = alloca i64, align 8
  %d53 = alloca %struct.realvaluetype, align 8
  %tmp92 = alloca %struct.realvaluetype, align 8
  %arg0 = alloca i64, align 8
  %val = alloca i64, align 8
  %l1 = alloca i64, align 8
  %lv235 = alloca i64, align 8
  %h1 = alloca i64, align 8
  %hv238 = alloca i64, align 8
  %args = alloca %struct.simplify_unary_real_args, align 8
  %args392 = alloca %struct.simplify_unary_real_args, align 8
  %reversed = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %op_mode, i32* %op_mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call = call %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %trueop, align 8
  %3 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %3, 125
  br i1 %cmp, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp2 = icmp eq i32 %bf.clear, 0
  br i1 %cmp2, label %land.lhs.true.4, label %if.else.28

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 55
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 54
  br i1 %cmp11, label %if.then, label %if.else.28

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 54
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx18 to i64*
  %13 = load i64, i64* %rtwint, align 8
  store i64 %13, i64* %lv, align 8
  %14 = load i64, i64* %lv, align 8
  %cmp19 = icmp slt i64 %14, 0
  %cond = select i1 %cmp19, i64 -1, i64 0
  store i64 %cond, i64* %hv, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtwint23 = bitcast %union.rtunion_def* %arrayidx22 to i64*
  %16 = load i64, i64* %rtwint23, align 8
  store i64 %16, i64* %lv, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtwint26 = bitcast %union.rtunion_def* %arrayidx25 to i64*
  %18 = load i64, i64* %rtwint26, align 8
  store i64 %18, i64* %hv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  %19 = load i64, i64* %lv, align 8
  %20 = load i64, i64* %hv, align 8
  %21 = load i32, i32* %mode.addr, align 4
  call void @ereal_from_int(%struct.realvaluetype* %d, i64 %19, i64 %20, i32 %21)
  %22 = load i32, i32* %mode.addr, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp, i32 %22, %struct.realvaluetype* byval align 8 %d)
  %23 = bitcast %struct.realvaluetype* %d to i8*
  %24 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false)
  %25 = load i32, i32* %mode.addr, align 4
  %call27 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %d, i32 %25)
  store %struct.rtx_def* %call27, %struct.rtx_def** %retval
  br label %return

if.else.28:                                       ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %26 = load i32, i32* %code.addr, align 4
  %cmp29 = icmp eq i32 %26, 127
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.94

land.lhs.true.31:                                 ; preds = %if.else.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load32 = load i32, i32* %28, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 16
  %bf.clear34 = and i32 %bf.lshr33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.94

land.lhs.true.37:                                 ; preds = %land.lhs.true.31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load38 = load i32, i32* %30, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 55
  br i1 %cmp40, label %if.then.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.37
  %31 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load43 = load i32, i32* %32, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 54
  br i1 %cmp45, label %if.then.47, label %if.end.94

if.then.47:                                       ; preds = %lor.lhs.false.42, %land.lhs.true.37
  %33 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load54 = load i32, i32* %34, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 54
  br i1 %cmp56, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.then.47
  %35 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtwint61 = bitcast %union.rtunion_def* %arrayidx60 to i64*
  %36 = load i64, i64* %rtwint61, align 8
  store i64 %36, i64* %lv51, align 8
  %37 = load i64, i64* %lv51, align 8
  %cmp62 = icmp slt i64 %37, 0
  %cond64 = select i1 %cmp62, i64 -1, i64 0
  store i64 %cond64, i64* %hv49, align 8
  br label %if.end.72

if.else.65:                                       ; preds = %if.then.47
  %38 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtwint68 = bitcast %union.rtunion_def* %arrayidx67 to i64*
  %39 = load i64, i64* %rtwint68, align 8
  store i64 %39, i64* %lv51, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 2
  %rtwint71 = bitcast %union.rtunion_def* %arrayidx70 to i64*
  %41 = load i64, i64* %rtwint71, align 8
  store i64 %41, i64* %hv49, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.65, %if.then.58
  %42 = load i32, i32* %op_mode.addr, align 4
  %cmp73 = icmp eq i32 %42, 0
  br i1 %cmp73, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %if.end.72
  %43 = load i64, i64* %hv49, align 8
  %cmp76 = icmp slt i64 %43, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.79:                                        ; preds = %if.then.75
  br label %if.end.91

if.else.80:                                       ; preds = %if.end.72
  %44 = load i32, i32* %op_mode.addr, align 4
  %idxprom81 = sext i32 %44 to i64
  %arrayidx82 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom81
  %45 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %45 to i32
  %cmp84 = icmp sge i32 %conv83, 128
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.80
  br label %if.end.90

if.else.87:                                       ; preds = %if.else.80
  store i64 0, i64* %hv49, align 8
  %46 = load i32, i32* %op_mode.addr, align 4
  %idxprom88 = sext i32 %46 to i64
  %arrayidx89 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom88
  %47 = load i64, i64* %arrayidx89, align 8
  %48 = load i64, i64* %lv51, align 8
  %and = and i64 %48, %47
  store i64 %and, i64* %lv51, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.79
  %49 = load i64, i64* %lv51, align 8
  %50 = load i64, i64* %hv49, align 8
  %51 = load i32, i32* %mode.addr, align 4
  call void @ereal_from_uint(%struct.realvaluetype* %d53, i64 %49, i64 %50, i32 %51)
  %52 = load i32, i32* %mode.addr, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp92, i32 %52, %struct.realvaluetype* byval align 8 %d53)
  %53 = bitcast %struct.realvaluetype* %d53 to i8*
  %54 = bitcast %struct.realvaluetype* %tmp92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 8, i1 false)
  %55 = load i32, i32* %mode.addr, align 4
  %call93 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %d53, i32 %55)
  store %struct.rtx_def* %call93, %struct.rtx_def** %retval
  br label %return

if.end.94:                                        ; preds = %lor.lhs.false.42, %land.lhs.true.31, %if.else.28
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94
  %56 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load96 = load i32, i32* %57, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 54
  br i1 %cmp98, label %land.lhs.true.100, label %if.else.213

land.lhs.true.100:                                ; preds = %if.end.95
  %58 = load i32, i32* %width, align 4
  %cmp101 = icmp ule i32 %58, 64
  br i1 %cmp101, label %land.lhs.true.103, label %if.else.213

land.lhs.true.103:                                ; preds = %land.lhs.true.100
  %59 = load i32, i32* %width, align 4
  %cmp104 = icmp ugt i32 %59, 0
  br i1 %cmp104, label %if.then.106, label %if.else.213

if.then.106:                                      ; preds = %land.lhs.true.103
  %60 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtwint110 = bitcast %union.rtunion_def* %arrayidx109 to i64*
  %61 = load i64, i64* %rtwint110, align 8
  store i64 %61, i64* %arg0, align 8
  %62 = load i32, i32* %code.addr, align 4
  switch i32 %62, label %sw.default [
    i32 86, label %sw.bb
    i32 77, label %sw.bb.112
    i32 129, label %sw.bb.113
    i32 131, label %sw.bb.118
    i32 122, label %sw.bb.126
    i32 121, label %sw.bb.127
    i32 120, label %sw.bb.160
    i32 130, label %sw.bb.210
    i32 123, label %sw.bb.210
    i32 124, label %sw.bb.210
    i32 150, label %sw.bb.210
    i32 151, label %sw.bb.210
  ]

sw.bb:                                            ; preds = %if.then.106
  %63 = load i64, i64* %arg0, align 8
  %neg = xor i64 %63, -1
  store i64 %neg, i64* %val, align 8
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.then.106
  %64 = load i64, i64* %arg0, align 8
  %sub = sub nsw i64 0, %64
  store i64 %sub, i64* %val, align 8
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.then.106
  %65 = load i64, i64* %arg0, align 8
  %cmp114 = icmp sge i64 %65, 0
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.113
  %66 = load i64, i64* %arg0, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.113
  %67 = load i64, i64* %arg0, align 8
  %sub116 = sub nsw i64 0, %67
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond117 = phi i64 [ %66, %cond.true ], [ %sub116, %cond.false ]
  store i64 %cond117, i64* %val, align 8
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.then.106
  %68 = load i32, i32* %mode.addr, align 4
  %idxprom119 = sext i32 %68 to i64
  %arrayidx120 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom119
  %69 = load i64, i64* %arrayidx120, align 8
  %70 = load i64, i64* %arg0, align 8
  %and121 = and i64 %70, %69
  store i64 %and121, i64* %arg0, align 8
  %71 = load i64, i64* %arg0, align 8
  %72 = load i64, i64* %arg0, align 8
  %sub122 = sub nsw i64 0, %72
  %and123 = and i64 %71, %sub122
  %call124 = call i32 @exact_log2_wide(i64 %and123)
  %add = add nsw i32 %call124, 1
  %conv125 = sext i32 %add to i64
  store i64 %conv125, i64* %val, align 8
  br label %sw.epilog

sw.bb.126:                                        ; preds = %if.then.106
  %73 = load i64, i64* %arg0, align 8
  store i64 %73, i64* %val, align 8
  br label %sw.epilog

sw.bb.127:                                        ; preds = %if.then.106
  %74 = load i32, i32* %op_mode.addr, align 4
  %cmp128 = icmp eq i32 %74, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %sw.bb.127
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 532, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.simplify_unary_operation, i32 0, i32 0)) #4
  unreachable

if.end.131:                                       ; preds = %sw.bb.127
  %75 = load i32, i32* %op_mode.addr, align 4
  %idxprom132 = sext i32 %75 to i64
  %arrayidx133 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom132
  %76 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %76 to i32
  %cmp135 = icmp eq i32 %conv134, 64
  br i1 %cmp135, label %if.then.137, label %if.else.145

if.then.137:                                      ; preds = %if.end.131
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %op_mode.addr, align 4
  %idxprom138 = sext i32 %78 to i64
  %arrayidx139 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom138
  %79 = load i16, i16* %arrayidx139, align 2
  %conv140 = zext i16 %79 to i32
  %cmp141 = icmp ne i32 %77, %conv140
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.then.137
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 539, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.simplify_unary_operation, i32 0, i32 0)) #4
  unreachable

if.end.144:                                       ; preds = %if.then.137
  %80 = load i64, i64* %arg0, align 8
  store i64 %80, i64* %val, align 8
  br label %if.end.159

if.else.145:                                      ; preds = %if.end.131
  %81 = load i32, i32* %op_mode.addr, align 4
  %idxprom146 = sext i32 %81 to i64
  %arrayidx147 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom146
  %82 = load i16, i16* %arrayidx147, align 2
  %conv148 = zext i16 %82 to i32
  %cmp149 = icmp slt i32 %conv148, 64
  br i1 %cmp149, label %if.then.151, label %if.else.157

if.then.151:                                      ; preds = %if.else.145
  %83 = load i64, i64* %arg0, align 8
  %84 = load i32, i32* %op_mode.addr, align 4
  %idxprom152 = sext i32 %84 to i64
  %arrayidx153 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom152
  %85 = load i16, i16* %arrayidx153, align 2
  %conv154 = zext i16 %85 to i32
  %sh_prom = zext i32 %conv154 to i64
  %shl = shl i64 -1, %sh_prom
  %neg155 = xor i64 %shl, -1
  %and156 = and i64 %83, %neg155
  store i64 %and156, i64* %val, align 8
  br label %if.end.158

if.else.157:                                      ; preds = %if.else.145
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.158:                                       ; preds = %if.then.151
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.144
  br label %sw.epilog

sw.bb.160:                                        ; preds = %if.then.106
  %86 = load i32, i32* %op_mode.addr, align 4
  %cmp161 = icmp eq i32 %86, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %sw.bb.160
  %87 = load i32, i32* %mode.addr, align 4
  store i32 %87, i32* %op_mode.addr, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %sw.bb.160
  %88 = load i32, i32* %op_mode.addr, align 4
  %idxprom165 = sext i32 %88 to i64
  %arrayidx166 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom165
  %89 = load i16, i16* %arrayidx166, align 2
  %conv167 = zext i16 %89 to i32
  %cmp168 = icmp eq i32 %conv167, 64
  br i1 %cmp168, label %if.then.170, label %if.else.178

if.then.170:                                      ; preds = %if.end.164
  %90 = load i32, i32* %width, align 4
  %91 = load i32, i32* %op_mode.addr, align 4
  %idxprom171 = sext i32 %91 to i64
  %arrayidx172 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom171
  %92 = load i16, i16* %arrayidx172, align 2
  %conv173 = zext i16 %92 to i32
  %cmp174 = icmp ne i32 %90, %conv173
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.then.170
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 557, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.simplify_unary_operation, i32 0, i32 0)) #4
  unreachable

if.end.177:                                       ; preds = %if.then.170
  %93 = load i64, i64* %arg0, align 8
  store i64 %93, i64* %val, align 8
  br label %if.end.209

if.else.178:                                      ; preds = %if.end.164
  %94 = load i32, i32* %op_mode.addr, align 4
  %idxprom179 = sext i32 %94 to i64
  %arrayidx180 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom179
  %95 = load i16, i16* %arrayidx180, align 2
  %conv181 = zext i16 %95 to i32
  %cmp182 = icmp slt i32 %conv181, 64
  br i1 %cmp182, label %if.then.184, label %if.else.207

if.then.184:                                      ; preds = %if.else.178
  %96 = load i64, i64* %arg0, align 8
  %97 = load i32, i32* %op_mode.addr, align 4
  %idxprom185 = sext i32 %97 to i64
  %arrayidx186 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom185
  %98 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %98 to i32
  %sh_prom188 = zext i32 %conv187 to i64
  %shl189 = shl i64 -1, %sh_prom188
  %neg190 = xor i64 %shl189, -1
  %and191 = and i64 %96, %neg190
  store i64 %and191, i64* %val, align 8
  %99 = load i64, i64* %val, align 8
  %100 = load i32, i32* %op_mode.addr, align 4
  %idxprom192 = sext i32 %100 to i64
  %arrayidx193 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom192
  %101 = load i16, i16* %arrayidx193, align 2
  %conv194 = zext i16 %101 to i32
  %sub195 = sub nsw i32 %conv194, 1
  %sh_prom196 = zext i32 %sub195 to i64
  %shl197 = shl i64 1, %sh_prom196
  %and198 = and i64 %99, %shl197
  %tobool = icmp ne i64 %and198, 0
  br i1 %tobool, label %if.then.199, label %if.end.206

if.then.199:                                      ; preds = %if.then.184
  %102 = load i32, i32* %op_mode.addr, align 4
  %idxprom200 = sext i32 %102 to i64
  %arrayidx201 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom200
  %103 = load i16, i16* %arrayidx201, align 2
  %conv202 = zext i16 %103 to i32
  %sh_prom203 = zext i32 %conv202 to i64
  %shl204 = shl i64 1, %sh_prom203
  %104 = load i64, i64* %val, align 8
  %sub205 = sub nsw i64 %104, %shl204
  store i64 %sub205, i64* %val, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.199, %if.then.184
  br label %if.end.208

if.else.207:                                      ; preds = %if.else.178
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.208:                                       ; preds = %if.end.206
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.177
  br label %sw.epilog

sw.bb.210:                                        ; preds = %if.then.106, %if.then.106, %if.then.106, %if.then.106, %if.then.106
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.then.106
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 580, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.simplify_unary_operation, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %if.end.209, %if.end.159, %sw.bb.126, %sw.bb.118, %cond.end, %sw.bb.112, %sw.bb
  %105 = load i64, i64* %val, align 8
  %106 = load i32, i32* %mode.addr, align 4
  %call211 = call i64 @trunc_int_for_mode(i64 %105, i32 %106)
  store i64 %call211, i64* %val, align 8
  %107 = load i64, i64* %val, align 8
  %call212 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %107)
  store %struct.rtx_def* %call212, %struct.rtx_def** %retval
  br label %return

if.else.213:                                      ; preds = %land.lhs.true.103, %land.lhs.true.100, %if.end.95
  %108 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load214 = load i32, i32* %109, align 8
  %bf.lshr215 = lshr i32 %bf.load214, 16
  %bf.clear216 = and i32 %bf.lshr215, 255
  %cmp217 = icmp eq i32 %bf.clear216, 0
  br i1 %cmp217, label %land.lhs.true.219, label %if.else.348

land.lhs.true.219:                                ; preds = %if.else.213
  %110 = load i32, i32* %width, align 4
  %cmp220 = icmp ule i32 %110, 128
  br i1 %cmp220, label %land.lhs.true.222, label %if.else.348

land.lhs.true.222:                                ; preds = %land.lhs.true.219
  %111 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load223 = load i32, i32* %112, align 8
  %bf.clear224 = and i32 %bf.load223, 65535
  %cmp225 = icmp eq i32 %bf.clear224, 55
  br i1 %cmp225, label %if.then.232, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %land.lhs.true.222
  %113 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load228 = load i32, i32* %114, align 8
  %bf.clear229 = and i32 %bf.load228, 65535
  %cmp230 = icmp eq i32 %bf.clear229, 54
  br i1 %cmp230, label %if.then.232, label %if.else.348

if.then.232:                                      ; preds = %lor.lhs.false.227, %land.lhs.true.222
  %115 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load239 = load i32, i32* %116, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp eq i32 %bf.clear240, 55
  br i1 %cmp241, label %if.then.243, label %if.else.250

if.then.243:                                      ; preds = %if.then.232
  %117 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 1
  %rtwint246 = bitcast %union.rtunion_def* %arrayidx245 to i64*
  %118 = load i64, i64* %rtwint246, align 8
  store i64 %118, i64* %l1, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 2
  %rtwint249 = bitcast %union.rtunion_def* %arrayidx248 to i64*
  %120 = load i64, i64* %rtwint249, align 8
  store i64 %120, i64* %h1, align 8
  br label %if.end.257

if.else.250:                                      ; preds = %if.then.232
  %121 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 0
  %rtwint253 = bitcast %union.rtunion_def* %arrayidx252 to i64*
  %122 = load i64, i64* %rtwint253, align 8
  store i64 %122, i64* %l1, align 8
  %123 = load i64, i64* %l1, align 8
  %cmp254 = icmp slt i64 %123, 0
  %cond256 = select i1 %cmp254, i64 -1, i64 0
  store i64 %cond256, i64* %h1, align 8
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.250, %if.then.243
  %124 = load i32, i32* %code.addr, align 4
  switch i32 %124, label %sw.default.345 [
    i32 86, label %sw.bb.258
    i32 77, label %sw.bb.261
    i32 129, label %sw.bb.263
    i32 131, label %sw.bb.270
    i32 122, label %sw.bb.287
    i32 121, label %sw.bb.288
    i32 120, label %sw.bb.303
    i32 130, label %sw.bb.344
  ]

sw.bb.258:                                        ; preds = %if.end.257
  %125 = load i64, i64* %l1, align 8
  %neg259 = xor i64 %125, -1
  store i64 %neg259, i64* %lv235, align 8
  %126 = load i64, i64* %h1, align 8
  %neg260 = xor i64 %126, -1
  store i64 %neg260, i64* %hv238, align 8
  br label %sw.epilog.346

sw.bb.261:                                        ; preds = %if.end.257
  %127 = load i64, i64* %l1, align 8
  %128 = load i64, i64* %h1, align 8
  %call262 = call i32 @neg_double(i64 %127, i64 %128, i64* %lv235, i64* %hv238)
  br label %sw.epilog.346

sw.bb.263:                                        ; preds = %if.end.257
  %129 = load i64, i64* %h1, align 8
  %cmp264 = icmp slt i64 %129, 0
  br i1 %cmp264, label %if.then.266, label %if.else.268

if.then.266:                                      ; preds = %sw.bb.263
  %130 = load i64, i64* %l1, align 8
  %131 = load i64, i64* %h1, align 8
  %call267 = call i32 @neg_double(i64 %130, i64 %131, i64* %lv235, i64* %hv238)
  br label %if.end.269

if.else.268:                                      ; preds = %sw.bb.263
  %132 = load i64, i64* %l1, align 8
  store i64 %132, i64* %lv235, align 8
  %133 = load i64, i64* %h1, align 8
  store i64 %133, i64* %hv238, align 8
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.268, %if.then.266
  br label %sw.epilog.346

sw.bb.270:                                        ; preds = %if.end.257
  store i64 0, i64* %hv238, align 8
  %134 = load i64, i64* %l1, align 8
  %cmp271 = icmp eq i64 %134, 0
  br i1 %cmp271, label %if.then.273, label %if.else.280

if.then.273:                                      ; preds = %sw.bb.270
  %135 = load i64, i64* %h1, align 8
  %136 = load i64, i64* %h1, align 8
  %sub274 = sub nsw i64 0, %136
  %and275 = and i64 %135, %sub274
  %call276 = call i32 @exact_log2_wide(i64 %and275)
  %add277 = add nsw i32 64, %call276
  %add278 = add nsw i32 %add277, 1
  %conv279 = sext i32 %add278 to i64
  store i64 %conv279, i64* %lv235, align 8
  br label %if.end.286

if.else.280:                                      ; preds = %sw.bb.270
  %137 = load i64, i64* %l1, align 8
  %138 = load i64, i64* %l1, align 8
  %sub281 = sub i64 0, %138
  %and282 = and i64 %137, %sub281
  %call283 = call i32 @exact_log2_wide(i64 %and282)
  %add284 = add nsw i32 %call283, 1
  %conv285 = sext i32 %add284 to i64
  store i64 %conv285, i64* %lv235, align 8
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.280, %if.then.273
  br label %sw.epilog.346

sw.bb.287:                                        ; preds = %if.end.257
  %139 = load i64, i64* %l1, align 8
  store i64 %139, i64* %lv235, align 8
  %140 = load i64, i64* %h1, align 8
  store i64 %140, i64* %hv238, align 8
  br label %sw.epilog.346

sw.bb.288:                                        ; preds = %if.end.257
  %141 = load i32, i32* %op_mode.addr, align 4
  %cmp289 = icmp eq i32 %141, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %sw.bb.288
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 636, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.simplify_unary_operation, i32 0, i32 0)) #4
  unreachable

if.end.292:                                       ; preds = %sw.bb.288
  %142 = load i32, i32* %op_mode.addr, align 4
  %idxprom293 = sext i32 %142 to i64
  %arrayidx294 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom293
  %143 = load i16, i16* %arrayidx294, align 2
  %conv295 = zext i16 %143 to i32
  %cmp296 = icmp sgt i32 %conv295, 64
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.end.292
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.299:                                       ; preds = %if.end.292
  store i64 0, i64* %hv238, align 8
  %144 = load i64, i64* %l1, align 8
  %145 = load i32, i32* %op_mode.addr, align 4
  %idxprom300 = sext i32 %145 to i64
  %arrayidx301 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom300
  %146 = load i64, i64* %arrayidx301, align 8
  %and302 = and i64 %144, %146
  store i64 %and302, i64* %lv235, align 8
  br label %sw.epilog.346

sw.bb.303:                                        ; preds = %if.end.257
  %147 = load i32, i32* %op_mode.addr, align 4
  %cmp304 = icmp eq i32 %147, 0
  br i1 %cmp304, label %if.then.312, label %lor.lhs.false.306

lor.lhs.false.306:                                ; preds = %sw.bb.303
  %148 = load i32, i32* %op_mode.addr, align 4
  %idxprom307 = sext i32 %148 to i64
  %arrayidx308 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom307
  %149 = load i16, i16* %arrayidx308, align 2
  %conv309 = zext i16 %149 to i32
  %cmp310 = icmp sgt i32 %conv309, 64
  br i1 %cmp310, label %if.then.312, label %if.else.313

if.then.312:                                      ; preds = %lor.lhs.false.306, %sw.bb.303
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else.313:                                      ; preds = %lor.lhs.false.306
  %150 = load i64, i64* %l1, align 8
  %151 = load i32, i32* %op_mode.addr, align 4
  %idxprom314 = sext i32 %151 to i64
  %arrayidx315 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom314
  %152 = load i64, i64* %arrayidx315, align 8
  %and316 = and i64 %150, %152
  store i64 %and316, i64* %lv235, align 8
  %153 = load i32, i32* %op_mode.addr, align 4
  %idxprom317 = sext i32 %153 to i64
  %arrayidx318 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom317
  %154 = load i16, i16* %arrayidx318, align 2
  %conv319 = zext i16 %154 to i32
  %cmp320 = icmp slt i32 %conv319, 64
  br i1 %cmp320, label %land.lhs.true.322, label %if.end.339

land.lhs.true.322:                                ; preds = %if.else.313
  %155 = load i64, i64* %lv235, align 8
  %156 = load i32, i32* %op_mode.addr, align 4
  %idxprom323 = sext i32 %156 to i64
  %arrayidx324 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom323
  %157 = load i16, i16* %arrayidx324, align 2
  %conv325 = zext i16 %157 to i32
  %sub326 = sub nsw i32 %conv325, 1
  %sh_prom327 = zext i32 %sub326 to i64
  %shl328 = shl i64 1, %sh_prom327
  %and329 = and i64 %155, %shl328
  %cmp330 = icmp ne i64 %and329, 0
  br i1 %cmp330, label %if.then.332, label %if.end.339

if.then.332:                                      ; preds = %land.lhs.true.322
  %158 = load i32, i32* %op_mode.addr, align 4
  %idxprom333 = sext i32 %158 to i64
  %arrayidx334 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom333
  %159 = load i16, i16* %arrayidx334, align 2
  %conv335 = zext i16 %159 to i32
  %sh_prom336 = zext i32 %conv335 to i64
  %shl337 = shl i64 1, %sh_prom336
  %160 = load i64, i64* %lv235, align 8
  %sub338 = sub i64 %160, %shl337
  store i64 %sub338, i64* %lv235, align 8
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.332, %land.lhs.true.322, %if.else.313
  %161 = load i64, i64* %lv235, align 8
  %cmp340 = icmp slt i64 %161, 0
  %cond342 = select i1 %cmp340, i64 -1, i64 0
  store i64 %cond342, i64* %hv238, align 8
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.339
  br label %sw.epilog.346

sw.bb.344:                                        ; preds = %if.end.257
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.default.345:                                   ; preds = %if.end.257
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.epilog.346:                                    ; preds = %if.end.343, %if.end.299, %sw.bb.287, %if.end.286, %if.end.269, %sw.bb.261, %sw.bb.258
  %162 = load i64, i64* %lv235, align 8
  %163 = load i64, i64* %hv238, align 8
  %164 = load i32, i32* %mode.addr, align 4
  %call347 = call %struct.rtx_def* @immed_double_const(i64 %162, i64 %163, i32 %164)
  store %struct.rtx_def* %call347, %struct.rtx_def** %retval
  br label %return

if.else.348:                                      ; preds = %lor.lhs.false.227, %land.lhs.true.219, %if.else.213
  %165 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load349 = load i32, i32* %166, align 8
  %bf.clear350 = and i32 %bf.load349, 65535
  %cmp351 = icmp eq i32 %bf.clear350, 55
  br i1 %cmp351, label %land.lhs.true.353, label %if.else.366

land.lhs.true.353:                                ; preds = %if.else.348
  %167 = load i32, i32* %mode.addr, align 4
  %idxprom354 = sext i32 %167 to i64
  %arrayidx355 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom354
  %168 = load i32, i32* %arrayidx355, align 4
  %cmp356 = icmp eq i32 %168, 2
  br i1 %cmp356, label %if.then.358, label %if.else.366

if.then.358:                                      ; preds = %land.lhs.true.353
  %169 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %operand = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args, i32 0, i32 0
  store %struct.rtx_def* %169, %struct.rtx_def** %operand, align 8
  %170 = load i32, i32* %mode.addr, align 4
  %mode360 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args, i32 0, i32 2
  store i32 %170, i32* %mode360, align 4
  %171 = load i32, i32* %code.addr, align 4
  %code361 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args, i32 0, i32 3
  store i32 %171, i32* %code361, align 4
  %want_integer = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args, i32 0, i32 4
  store i8 0, i8* %want_integer, align 1
  %172 = bitcast %struct.simplify_unary_real_args* %args to i8*
  %call362 = call i32 @do_float_handler(void (i8*)* @simplify_unary_real, i8* %172)
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.then.358
  %result = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args, i32 0, i32 1
  %173 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %173, %struct.rtx_def** %retval
  br label %return

if.end.365:                                       ; preds = %if.then.358
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else.366:                                      ; preds = %land.lhs.true.353, %if.else.348
  %174 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load367 = load i32, i32* %175, align 8
  %bf.clear368 = and i32 %bf.load367, 65535
  %cmp369 = icmp eq i32 %bf.clear368, 55
  br i1 %cmp369, label %land.lhs.true.371, label %if.else.402

land.lhs.true.371:                                ; preds = %if.else.366
  %176 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %177 = bitcast %struct.rtx_def* %176 to i32*
  %bf.load372 = load i32, i32* %177, align 8
  %bf.lshr373 = lshr i32 %bf.load372, 16
  %bf.clear374 = and i32 %bf.lshr373, 255
  %idxprom375 = sext i32 %bf.clear374 to i64
  %arrayidx376 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom375
  %178 = load i32, i32* %arrayidx376, align 4
  %cmp377 = icmp eq i32 %178, 2
  br i1 %cmp377, label %land.lhs.true.379, label %if.else.402

land.lhs.true.379:                                ; preds = %land.lhs.true.371
  %179 = load i32, i32* %mode.addr, align 4
  %idxprom380 = sext i32 %179 to i64
  %arrayidx381 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom380
  %180 = load i32, i32* %arrayidx381, align 4
  %cmp382 = icmp eq i32 %180, 1
  br i1 %cmp382, label %land.lhs.true.384, label %if.else.402

land.lhs.true.384:                                ; preds = %land.lhs.true.379
  %181 = load i32, i32* %width, align 4
  %cmp385 = icmp ule i32 %181, 64
  br i1 %cmp385, label %land.lhs.true.387, label %if.else.402

land.lhs.true.387:                                ; preds = %land.lhs.true.384
  %182 = load i32, i32* %width, align 4
  %cmp388 = icmp ugt i32 %182, 0
  br i1 %cmp388, label %if.then.390, label %if.else.402

if.then.390:                                      ; preds = %land.lhs.true.387
  %183 = load %struct.rtx_def*, %struct.rtx_def** %trueop, align 8
  %operand393 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args392, i32 0, i32 0
  store %struct.rtx_def* %183, %struct.rtx_def** %operand393, align 8
  %184 = load i32, i32* %mode.addr, align 4
  %mode394 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args392, i32 0, i32 2
  store i32 %184, i32* %mode394, align 4
  %185 = load i32, i32* %code.addr, align 4
  %code395 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args392, i32 0, i32 3
  store i32 %185, i32* %code395, align 4
  %want_integer396 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args392, i32 0, i32 4
  store i8 1, i8* %want_integer396, align 1
  %186 = bitcast %struct.simplify_unary_real_args* %args392 to i8*
  %call397 = call i32 @do_float_handler(void (i8*)* @simplify_unary_real, i8* %186)
  %tobool398 = icmp ne i32 %call397, 0
  br i1 %tobool398, label %if.then.399, label %if.end.401

if.then.399:                                      ; preds = %if.then.390
  %result400 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %args392, i32 0, i32 1
  %187 = load %struct.rtx_def*, %struct.rtx_def** %result400, align 8
  store %struct.rtx_def* %187, %struct.rtx_def** %retval
  br label %return

if.end.401:                                       ; preds = %if.then.390
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else.402:                                      ; preds = %land.lhs.true.387, %land.lhs.true.384, %land.lhs.true.379, %land.lhs.true.371, %if.else.366
  %188 = load i32, i32* %code.addr, align 4
  switch i32 %188, label %sw.default.495 [
    i32 86, label %sw.bb.404
    i32 77, label %sw.bb.436
    i32 120, label %sw.bb.446
  ]

sw.bb.404:                                        ; preds = %if.else.402
  %189 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load405 = load i32, i32* %190, align 8
  %bf.clear406 = and i32 %bf.load405, 65535
  %cmp407 = icmp eq i32 %bf.clear406, 86
  br i1 %cmp407, label %if.then.409, label %if.end.412

if.then.409:                                      ; preds = %sw.bb.404
  %191 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx411 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %192, %struct.rtx_def** %retval
  br label %return

if.end.412:                                       ; preds = %sw.bb.404
  %193 = load i32, i32* %mode.addr, align 4
  %cmp413 = icmp eq i32 %193, 1
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.435

land.lhs.true.415:                                ; preds = %if.end.412
  %194 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %bf.load416 = load i32, i32* %195, align 8
  %bf.clear417 = and i32 %bf.load416, 65535
  %idxprom418 = sext i32 %bf.clear417 to i64
  %arrayidx419 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom418
  %196 = load i8, i8* %arrayidx419, align 1
  %conv420 = sext i8 %196 to i32
  %cmp421 = icmp eq i32 %conv420, 60
  br i1 %cmp421, label %land.lhs.true.423, label %if.end.435

land.lhs.true.423:                                ; preds = %land.lhs.true.415
  %197 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call424 = call i32 @reversed_comparison_code(%struct.rtx_def* %197, %struct.rtx_def* null)
  store i32 %call424, i32* %reversed, align 4
  %cmp425 = icmp ne i32 %call424, 0
  br i1 %cmp425, label %if.then.427, label %if.end.435

if.then.427:                                      ; preds = %land.lhs.true.423
  %198 = load i32, i32* %reversed, align 4
  %199 = load i32, i32* %op_mode.addr, align 4
  %200 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld428 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx429 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld428, i32 0, i64 0
  %rtx430 = bitcast %union.rtunion_def* %arrayidx429 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %rtx430, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld431 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx432 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld431, i32 0, i64 1
  %rtx433 = bitcast %union.rtunion_def* %arrayidx432 to %struct.rtx_def**
  %203 = load %struct.rtx_def*, %struct.rtx_def** %rtx433, align 8
  %call434 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %198, i32 %199, %struct.rtx_def* %201, %struct.rtx_def* %203)
  store %struct.rtx_def* %call434, %struct.rtx_def** %retval
  br label %return

if.end.435:                                       ; preds = %land.lhs.true.423, %land.lhs.true.415, %if.end.412
  br label %sw.epilog.496

sw.bb.436:                                        ; preds = %if.else.402
  %204 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %bf.load437 = load i32, i32* %205, align 8
  %bf.clear438 = and i32 %bf.load437, 65535
  %cmp439 = icmp eq i32 %bf.clear438, 77
  br i1 %cmp439, label %if.then.441, label %if.end.445

if.then.441:                                      ; preds = %sw.bb.436
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld442 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx443 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld442, i32 0, i64 0
  %rtx444 = bitcast %union.rtunion_def* %arrayidx443 to %struct.rtx_def**
  %207 = load %struct.rtx_def*, %struct.rtx_def** %rtx444, align 8
  store %struct.rtx_def* %207, %struct.rtx_def** %retval
  br label %return

if.end.445:                                       ; preds = %sw.bb.436
  br label %sw.epilog.496

sw.bb.446:                                        ; preds = %if.else.402
  %208 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %209 = bitcast %struct.rtx_def* %208 to i32*
  %bf.load447 = load i32, i32* %209, align 8
  %bf.clear448 = and i32 %bf.load447, 65535
  %cmp449 = icmp eq i32 %bf.clear448, 122
  br i1 %cmp449, label %land.lhs.true.451, label %if.end.494

land.lhs.true.451:                                ; preds = %sw.bb.446
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld452, i32 0, i64 0
  %rtx454 = bitcast %union.rtunion_def* %arrayidx453 to %struct.rtx_def**
  %211 = load %struct.rtx_def*, %struct.rtx_def** %rtx454, align 8
  %212 = bitcast %struct.rtx_def* %211 to i32*
  %bf.load455 = load i32, i32* %212, align 8
  %bf.lshr456 = lshr i32 %bf.load455, 16
  %bf.clear457 = and i32 %bf.lshr456, 255
  %213 = load i32, i32* %mode.addr, align 4
  %cmp458 = icmp eq i32 %bf.clear457, %213
  br i1 %cmp458, label %land.lhs.true.460, label %if.end.494

land.lhs.true.460:                                ; preds = %land.lhs.true.451
  %214 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld461, i32 0, i64 0
  %rtx463 = bitcast %union.rtunion_def* %arrayidx462 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtx463, align 8
  %216 = bitcast %struct.rtx_def* %215 to i32*
  %bf.load464 = load i32, i32* %216, align 8
  %bf.clear465 = and i32 %bf.load464, 65535
  %cmp466 = icmp eq i32 %bf.clear465, 76
  br i1 %cmp466, label %land.lhs.true.468, label %if.end.494

land.lhs.true.468:                                ; preds = %land.lhs.true.460
  %217 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld469, i32 0, i64 0
  %rtx471 = bitcast %union.rtunion_def* %arrayidx470 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx471, align 8
  %fld472 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx473 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld472, i32 0, i64 0
  %rtx474 = bitcast %union.rtunion_def* %arrayidx473 to %struct.rtx_def**
  %219 = load %struct.rtx_def*, %struct.rtx_def** %rtx474, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load475 = load i32, i32* %220, align 8
  %bf.clear476 = and i32 %bf.load475, 65535
  %cmp477 = icmp eq i32 %bf.clear476, 67
  br i1 %cmp477, label %land.lhs.true.479, label %if.end.494

land.lhs.true.479:                                ; preds = %land.lhs.true.468
  %221 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %221, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld480, i32 0, i64 0
  %rtx482 = bitcast %union.rtunion_def* %arrayidx481 to %struct.rtx_def**
  %222 = load %struct.rtx_def*, %struct.rtx_def** %rtx482, align 8
  %fld483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld483, i32 0, i64 1
  %rtx485 = bitcast %union.rtunion_def* %arrayidx484 to %struct.rtx_def**
  %223 = load %struct.rtx_def*, %struct.rtx_def** %rtx485, align 8
  %224 = bitcast %struct.rtx_def* %223 to i32*
  %bf.load486 = load i32, i32* %224, align 8
  %bf.clear487 = and i32 %bf.load486, 65535
  %cmp488 = icmp eq i32 %bf.clear487, 67
  br i1 %cmp488, label %if.then.490, label %if.end.494

if.then.490:                                      ; preds = %land.lhs.true.479
  %225 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %225, i32 0, i32 1
  %arrayidx492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld491, i32 0, i64 0
  %rtx493 = bitcast %union.rtunion_def* %arrayidx492 to %struct.rtx_def**
  %226 = load %struct.rtx_def*, %struct.rtx_def** %rtx493, align 8
  store %struct.rtx_def* %226, %struct.rtx_def** %retval
  br label %return

if.end.494:                                       ; preds = %land.lhs.true.479, %land.lhs.true.468, %land.lhs.true.460, %land.lhs.true.451, %sw.bb.446
  br label %sw.epilog.496

sw.default.495:                                   ; preds = %if.else.402
  br label %sw.epilog.496

sw.epilog.496:                                    ; preds = %sw.default.495, %if.end.494, %if.end.445, %if.end.435
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog.496, %if.then.490, %if.then.441, %if.then.427, %if.then.409, %if.end.401, %if.then.399, %if.end.365, %if.then.364, %sw.epilog.346, %sw.default.345, %sw.bb.344, %if.then.312, %if.then.298, %sw.epilog, %sw.bb.210, %if.else.207, %if.else.157, %if.end.91, %if.then.78, %if.end
  %227 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %227
}

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_gen_ternary(i32 %code, i32 %mode, i32 %op0_mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %op2) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0_mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %op2.addr = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %op0_mode, i32* %op0_mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %op2, %struct.rtx_def** %op2.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* %op0_mode.addr, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call = call %struct.rtx_def* @simplify_ternary_operation(i32 %0, i32 %1, i32 %2, %struct.rtx_def* %3, %struct.rtx_def* %4, %struct.rtx_def* %5)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  %cmp = icmp ne %struct.rtx_def* null, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %code.addr, align 4
  %8 = load i32, i32* %mode.addr, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call1 = call %struct.rtx_def* @gen_rtx_fmt_eee(i32 %7, i32 %8, %struct.rtx_def* %9, %struct.rtx_def* %10, %struct.rtx_def* %11)
  store %struct.rtx_def* %call1, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_ternary_operation(i32 %code, i32 %mode, i32 %op0_mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %op2) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0_mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %op2.addr = alloca %struct.rtx_def*, align 8
  %width = alloca i32, align 4
  %val = alloca i64, align 8
  %cmp_mode = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %t = alloca i64, align 8
  %f = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %op0_mode, i32* %op0_mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %op2, %struct.rtx_def** %op2.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 64, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %code.addr, align 4
  switch i32 %3, label %sw.default [
    i32 132, label %sw.bb
    i32 133, label %sw.bb
    i32 72, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 54
  br i1 %cmp2, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 54
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.75

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 54
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.75

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx14 to i64*
  %11 = load i64, i64* %rtwint, align 8
  %conv15 = trunc i64 %11 to i32
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtwint18 = bitcast %union.rtunion_def* %arrayidx17 to i64*
  %13 = load i64, i64* %rtwint18, align 8
  %conv19 = trunc i64 %13 to i32
  %add = add i32 %conv15, %conv19
  %14 = load i32, i32* %width, align 4
  %cmp20 = icmp ule i32 %add, %14
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.75

land.lhs.true.22:                                 ; preds = %land.lhs.true.13
  %15 = load i32, i32* %width, align 4
  %cmp23 = icmp ule i32 %15, 64
  br i1 %cmp23, label %if.then.25, label %if.end.75

if.then.25:                                       ; preds = %land.lhs.true.22
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtwint28 = bitcast %union.rtunion_def* %arrayidx27 to i64*
  %17 = load i64, i64* %rtwint28, align 8
  store i64 %17, i64* %val, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtwint31 = bitcast %union.rtunion_def* %arrayidx30 to i64*
  %19 = load i64, i64* %rtwint31, align 8
  %20 = load i64, i64* %val, align 8
  %shr = ashr i64 %20, %19
  store i64 %shr, i64* %val, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtwint34 = bitcast %union.rtunion_def* %arrayidx33 to i64*
  %22 = load i64, i64* %rtwint34, align 8
  %cmp35 = icmp ne i64 64, %22
  br i1 %cmp35, label %if.then.37, label %if.end.57

if.then.37:                                       ; preds = %if.then.25
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtwint40 = bitcast %union.rtunion_def* %arrayidx39 to i64*
  %24 = load i64, i64* %rtwint40, align 8
  %shl = shl i64 1, %24
  %sub = sub nsw i64 %shl, 1
  %25 = load i64, i64* %val, align 8
  %and = and i64 %25, %sub
  store i64 %and, i64* %val, align 8
  %26 = load i32, i32* %code.addr, align 4
  %cmp41 = icmp eq i32 %26, 132
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.56

land.lhs.true.43:                                 ; preds = %if.then.37
  %27 = load i64, i64* %val, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtwint46 = bitcast %union.rtunion_def* %arrayidx45 to i64*
  %29 = load i64, i64* %rtwint46, align 8
  %sub47 = sub nsw i64 %29, 1
  %shl48 = shl i64 1, %sub47
  %and49 = and i64 %27, %shl48
  %tobool = icmp ne i64 %and49, 0
  br i1 %tobool, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %land.lhs.true.43
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtwint53 = bitcast %union.rtunion_def* %arrayidx52 to i64*
  %31 = load i64, i64* %rtwint53, align 8
  %shl54 = shl i64 1, %31
  %sub55 = sub nsw i64 %shl54, 1
  %neg = xor i64 %sub55, -1
  %32 = load i64, i64* %val, align 8
  %or = or i64 %32, %neg
  store i64 %or, i64* %val, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %land.lhs.true.43, %if.then.37
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.25
  %33 = load i32, i32* %width, align 4
  %cmp58 = icmp ult i32 %33, 64
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.74

land.lhs.true.60:                                 ; preds = %if.end.57
  %34 = load i64, i64* %val, align 8
  %35 = load i32, i32* %width, align 4
  %sub61 = sub i32 %35, 1
  %sh_prom = zext i32 %sub61 to i64
  %shl62 = shl i64 -1, %sh_prom
  %and63 = and i64 %34, %shl62
  %36 = load i32, i32* %width, align 4
  %sub64 = sub i32 %36, 1
  %sh_prom65 = zext i32 %sub64 to i64
  %shl66 = shl i64 -1, %sh_prom65
  %cmp67 = icmp ne i64 %and63, %shl66
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %land.lhs.true.60
  %37 = load i32, i32* %width, align 4
  %sh_prom70 = zext i32 %37 to i64
  %shl71 = shl i64 1, %sh_prom70
  %sub72 = sub nsw i64 %shl71, 1
  %38 = load i64, i64* %val, align 8
  %and73 = and i64 %38, %sub72
  store i64 %and73, i64* %val, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %land.lhs.true.60, %if.end.57
  %39 = load i64, i64* %val, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %39)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.75:                                        ; preds = %land.lhs.true.22, %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load77 = load i32, i32* %41, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 54
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %sw.bb.76
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp82 = icmp ne %struct.rtx_def* %42, %43
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.81
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.81
  %45 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %44, %cond.true ], [ %45, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %retval
  br label %return

if.end.84:                                        ; preds = %sw.bb.76
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load85 = load i32, i32* %47, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 102
  br i1 %cmp87, label %land.lhs.true.89, label %if.else

land.lhs.true.89:                                 ; preds = %if.end.84
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call90 = call i32 @side_effects_p(%struct.rtx_def* %48)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.else, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %land.lhs.true.89
  %49 = load i32, i32* %mode.addr, align 4
  %idxprom93 = sext i32 %49 to i64
  %arrayidx94 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom93
  %50 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp eq i32 %50, 2
  br i1 %cmp95, label %lor.lhs.false.106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.92
  %51 = load i32, i32* %mode.addr, align 4
  %idxprom97 = sext i32 %51 to i64
  %arrayidx98 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom97
  %52 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp eq i32 %52, 6
  br i1 %cmp99, label %lor.lhs.false.106, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false
  %53 = load i32, i32* %mode.addr, align 4
  %idxprom102 = sext i32 %53 to i64
  %arrayidx103 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom102
  %54 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp eq i32 %54, 8
  br i1 %cmp104, label %lor.lhs.false.106, label %land.lhs.true.108

lor.lhs.false.106:                                ; preds = %lor.lhs.false.101, %lor.lhs.false, %land.lhs.true.92
  %55 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool107 = icmp ne i32 %55, 0
  br i1 %tobool107, label %land.lhs.true.108, label %if.else

land.lhs.true.108:                                ; preds = %lor.lhs.false.106, %lor.lhs.false.101
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call111 = call i32 @rtx_equal_p(%struct.rtx_def* %57, %struct.rtx_def* %58)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.else

land.lhs.true.113:                                ; preds = %land.lhs.true.108
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call117 = call i32 @rtx_equal_p(%struct.rtx_def* %60, %struct.rtx_def* %61)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.else

if.then.119:                                      ; preds = %land.lhs.true.113
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.113, %land.lhs.true.108, %lor.lhs.false.106, %land.lhs.true.89, %if.end.84
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load120 = load i32, i32* %64, align 8
  %bf.clear121 = and i32 %bf.load120, 65535
  %cmp122 = icmp eq i32 %bf.clear121, 103
  br i1 %cmp122, label %land.lhs.true.124, label %if.else.157

land.lhs.true.124:                                ; preds = %if.else
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call125 = call i32 @side_effects_p(%struct.rtx_def* %65)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.else.157, label %land.lhs.true.127

land.lhs.true.127:                                ; preds = %land.lhs.true.124
  %66 = load i32, i32* %mode.addr, align 4
  %idxprom128 = sext i32 %66 to i64
  %arrayidx129 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom128
  %67 = load i32, i32* %arrayidx129, align 4
  %cmp130 = icmp eq i32 %67, 2
  br i1 %cmp130, label %lor.lhs.false.142, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %land.lhs.true.127
  %68 = load i32, i32* %mode.addr, align 4
  %idxprom133 = sext i32 %68 to i64
  %arrayidx134 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom133
  %69 = load i32, i32* %arrayidx134, align 4
  %cmp135 = icmp eq i32 %69, 6
  br i1 %cmp135, label %lor.lhs.false.142, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.132
  %70 = load i32, i32* %mode.addr, align 4
  %idxprom138 = sext i32 %70 to i64
  %arrayidx139 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom138
  %71 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp eq i32 %71, 8
  br i1 %cmp140, label %lor.lhs.false.142, label %land.lhs.true.144

lor.lhs.false.142:                                ; preds = %lor.lhs.false.137, %lor.lhs.false.132, %land.lhs.true.127
  %72 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool143 = icmp ne i32 %72, 0
  br i1 %tobool143, label %land.lhs.true.144, label %if.else.157

land.lhs.true.144:                                ; preds = %lor.lhs.false.142, %lor.lhs.false.137
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 1
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call148 = call i32 @rtx_equal_p(%struct.rtx_def* %74, %struct.rtx_def* %75)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %land.lhs.true.150, label %if.else.157

land.lhs.true.150:                                ; preds = %land.lhs.true.144
  %76 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call154 = call i32 @rtx_equal_p(%struct.rtx_def* %77, %struct.rtx_def* %78)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %land.lhs.true.150
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %retval
  br label %return

if.else.157:                                      ; preds = %land.lhs.true.150, %land.lhs.true.144, %lor.lhs.false.142, %land.lhs.true.124, %if.else
  %80 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load158 = load i32, i32* %81, align 8
  %bf.clear159 = and i32 %bf.load158, 65535
  %idxprom160 = sext i32 %bf.clear159 to i64
  %arrayidx161 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom160
  %82 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %82 to i32
  %cmp163 = icmp eq i32 %conv162, 60
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.265

land.lhs.true.165:                                ; preds = %if.else.157
  %83 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call166 = call i32 @side_effects_p(%struct.rtx_def* %83)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.end.265, label %if.then.168

if.then.168:                                      ; preds = %land.lhs.true.165
  %84 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld169, i32 0, i64 0
  %rtx171 = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx171, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load172 = load i32, i32* %86, align 8
  %bf.lshr = lshr i32 %bf.load172, 16
  %bf.clear173 = and i32 %bf.lshr, 255
  %cmp174 = icmp eq i32 %bf.clear173, 0
  br i1 %cmp174, label %cond.true.176, label %cond.false.183

cond.true.176:                                    ; preds = %if.then.168
  %87 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 1
  %rtx179 = bitcast %union.rtunion_def* %arrayidx178 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx179, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load180 = load i32, i32* %89, align 8
  %bf.lshr181 = lshr i32 %bf.load180, 16
  %bf.clear182 = and i32 %bf.lshr181, 255
  br label %cond.end.190

cond.false.183:                                   ; preds = %if.then.168
  %90 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 0
  %rtx186 = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx186, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load187 = load i32, i32* %92, align 8
  %bf.lshr188 = lshr i32 %bf.load187, 16
  %bf.clear189 = and i32 %bf.lshr188, 255
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.183, %cond.true.176
  %cond191 = phi i32 [ %bf.clear182, %cond.true.176 ], [ %bf.clear189, %cond.false.183 ]
  store i32 %cond191, i32* %cmp_mode, align 4
  %93 = load i32, i32* %cmp_mode, align 4
  %cmp192 = icmp eq i32 %93, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %cond.end.190
  %94 = load i32, i32* %op0_mode.addr, align 4
  store i32 %94, i32* %cmp_mode, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %cond.end.190
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load196 = load i32, i32* %96, align 8
  %bf.clear197 = and i32 %bf.load196, 65535
  %97 = load i32, i32* %cmp_mode, align 4
  %98 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 0
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx200, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 1
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx203, align 8
  %call204 = call %struct.rtx_def* @simplify_relational_operation(i32 %bf.clear197, i32 %97, %struct.rtx_def* %99, %struct.rtx_def* %101)
  store %struct.rtx_def* %call204, %struct.rtx_def** %temp, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp205 = icmp eq %struct.rtx_def* %102, %103
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %if.end.195
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %retval
  br label %return

if.else.208:                                      ; preds = %if.end.195
  %105 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp209 = icmp eq %struct.rtx_def* %105, %106
  br i1 %cmp209, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %if.else.208
  %107 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %retval
  br label %return

if.else.212:                                      ; preds = %if.else.208
  %108 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool213 = icmp ne %struct.rtx_def* %108, null
  br i1 %tobool213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.else.212
  %109 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %109, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %if.else.212
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  %110 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load218 = load i32, i32* %111, align 8
  %bf.clear219 = and i32 %bf.load218, 65535
  %cmp220 = icmp eq i32 %bf.clear219, 54
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.264

land.lhs.true.222:                                ; preds = %if.end.217
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load223 = load i32, i32* %113, align 8
  %bf.clear224 = and i32 %bf.load223, 65535
  %cmp225 = icmp eq i32 %bf.clear224, 54
  br i1 %cmp225, label %if.then.227, label %if.end.264

if.then.227:                                      ; preds = %land.lhs.true.222
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 0
  %rtwint230 = bitcast %union.rtunion_def* %arrayidx229 to i64*
  %115 = load i64, i64* %rtwint230, align 8
  store i64 %115, i64* %t, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtwint233 = bitcast %union.rtunion_def* %arrayidx232 to i64*
  %117 = load i64, i64* %rtwint233, align 8
  store i64 %117, i64* %f, align 8
  %118 = load i64, i64* %t, align 8
  %cmp234 = icmp eq i64 %118, 1
  br i1 %cmp234, label %land.lhs.true.236, label %if.else.242

land.lhs.true.236:                                ; preds = %if.then.227
  %119 = load i64, i64* %f, align 8
  %cmp237 = icmp eq i64 %119, 0
  br i1 %cmp237, label %if.then.239, label %if.else.242

if.then.239:                                      ; preds = %land.lhs.true.236
  %120 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load240 = load i32, i32* %121, align 8
  %bf.clear241 = and i32 %bf.load240, 65535
  store i32 %bf.clear241, i32* %code.addr, align 4
  br label %if.end.256

if.else.242:                                      ; preds = %land.lhs.true.236, %if.then.227
  %122 = load i64, i64* %t, align 8
  %cmp243 = icmp eq i64 %122, 0
  br i1 %cmp243, label %land.lhs.true.245, label %if.else.254

land.lhs.true.245:                                ; preds = %if.else.242
  %123 = load i64, i64* %f, align 8
  %cmp246 = icmp eq i64 %123, 1
  br i1 %cmp246, label %if.then.248, label %if.else.254

if.then.248:                                      ; preds = %land.lhs.true.245
  %124 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call249 = call i32 @reversed_comparison_code(%struct.rtx_def* %124, %struct.rtx_def* null)
  store i32 %call249, i32* %tmp, align 4
  %125 = load i32, i32* %tmp, align 4
  %cmp250 = icmp eq i32 %125, 0
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %if.then.248
  br label %sw.epilog

if.end.253:                                       ; preds = %if.then.248
  %126 = load i32, i32* %tmp, align 4
  store i32 %126, i32* %code.addr, align 4
  br label %if.end.255

if.else.254:                                      ; preds = %land.lhs.true.245, %if.else.242
  br label %sw.epilog

if.end.255:                                       ; preds = %if.end.253
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.239
  %127 = load i32, i32* %code.addr, align 4
  %128 = load i32, i32* %mode.addr, align 4
  %129 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtx259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx259, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 1
  %rtx262 = bitcast %union.rtunion_def* %arrayidx261 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx262, align 8
  %call263 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %127, i32 %128, %struct.rtx_def* %130, %struct.rtx_def* %132)
  store %struct.rtx_def* %call263, %struct.rtx_def** %retval
  br label %return

if.end.264:                                       ; preds = %land.lhs.true.222, %if.end.217
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %land.lhs.true.165, %if.else.157
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2471, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.simplify_ternary_operation, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %if.end.267, %if.else.254, %if.then.252, %if.end.75
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.256, %if.then.211, %if.then.207, %if.then.156, %if.then.119, %cond.end, %if.end.74
  %133 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %133
}

declare %struct.rtx_def* @gen_rtx_fmt_eee(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_gen_relational(i32 %code, i32 %mode, i32 %cmp_mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %cmp_mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %cmp_mode, i32* %cmp_mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %cmp_mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call = call %struct.rtx_def* @simplify_relational_operation(i32 %0, i32 %1, %struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  %cmp = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %5, %struct.rtx_def* %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %tem, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %op0.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %op1.addr, align 8
  %10 = load i32, i32* %code.addr, align 4
  %call3 = call i32 @swap_condition(i32 %10)
  store i32 %call3, i32* %code.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %11 = load i32, i32* %code.addr, align 4
  %12 = load i32, i32* %mode.addr, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call5 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %11, i32 %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  store %struct.rtx_def* %call5, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_relational_operation(i32 %code, i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %equal = alloca i32, align 4
  %op0lt = alloca i32, align 4
  %op0ltu = alloca i32, align 4
  %op1lt = alloca i32, align 4
  %op1ltu = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %trueop0 = alloca %struct.rtx_def*, align 8
  %trueop1 = alloca %struct.rtx_def*, align 8
  %args = alloca %struct.cfc_args, align 8
  %width = alloca i32, align 4
  %l0s = alloca i64, align 8
  %h0s = alloca i64, align 8
  %l1s = alloca i64, align 8
  %h1s = alloca i64, align 8
  %l0u = alloca i64, align 8
  %h0u = alloca i64, align 8
  %l1u = alloca i64, align 8
  %h1u = alloca i64, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp1 = icmp ne i32 %bf.clear, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 16
  %bf.clear4 = and i32 %bf.lshr3, 255
  %cmp5 = icmp ne i32 %bf.clear4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2091, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.simplify_relational_operation, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load6 = load i32, i32* %6, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 74
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.15

land.lhs.true.9:                                  ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp10 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %land.lhs.true.9
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %op1.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %land.lhs.true.9, %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call = call %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %13)
  store %struct.rtx_def* %call, %struct.rtx_def** %trueop0, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call16 = call %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %14)
  store %struct.rtx_def* %call16, %struct.rtx_def** %trueop1, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load17 = load i32, i32* %16, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %idxprom = sext i32 %bf.clear19 to i64
  %arrayidx20 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %17, 4
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %18 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call24 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %18, %struct.rtx_def* %19)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %tem, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %op0.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %op1.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %tem, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %trueop0, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %trueop1, align 8
  %26 = load i32, i32* %code.addr, align 4
  %call26 = call i32 @swap_condition(i32 %26)
  store i32 %call26, i32* %code.addr, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %27 = load i32, i32* %mode.addr, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom28
  %28 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %28, 1
  br i1 %cmp30, label %land.lhs.true.43, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.27
  %29 = load i32, i32* %mode.addr, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %30, 3
  br i1 %cmp34, label %land.lhs.true.43, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.31
  %31 = load i32, i32* %mode.addr, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom36
  %32 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %32, 5
  br i1 %cmp38, label %land.lhs.true.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %33 = load i32, i32* %mode.addr, align 4
  %idxprom40 = sext i32 %33 to i64
  %arrayidx41 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom40
  %34 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp eq i32 %34, 7
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.75

land.lhs.true.43:                                 ; preds = %lor.lhs.false.39, %lor.lhs.false.35, %lor.lhs.false.31, %if.end.27
  %35 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp44 = icmp ne %struct.rtx_def* %35, %36
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.75

land.lhs.true.45:                                 ; preds = %land.lhs.true.43
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load46 = load i32, i32* %38, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 61
  br i1 %cmp48, label %land.lhs.true.53, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.45
  %39 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load50 = load i32, i32* %40, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 54
  br i1 %cmp52, label %land.lhs.true.53, label %land.lhs.true.61

land.lhs.true.53:                                 ; preds = %lor.lhs.false.49, %land.lhs.true.45
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load54 = load i32, i32* %42, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 61
  br i1 %cmp56, label %if.end.75, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.53
  %43 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load58 = load i32, i32* %44, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 54
  br i1 %cmp60, label %if.end.75, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %lor.lhs.false.57, %lor.lhs.false.49
  %45 = load i32, i32* %mode.addr, align 4
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call62 = call %struct.rtx_def* @simplify_binary_operation(i32 76, i32 %45, %struct.rtx_def* %46, %struct.rtx_def* %47)
  store %struct.rtx_def* %call62, %struct.rtx_def** %tem, align 8
  %cmp63 = icmp ne %struct.rtx_def* null, %call62
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.75

land.lhs.true.64:                                 ; preds = %land.lhs.true.61
  %48 = load i32, i32* %code.addr, align 4
  %cmp65 = icmp ne i32 %48, 109
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.75

land.lhs.true.66:                                 ; preds = %land.lhs.true.64
  %49 = load i32, i32* %code.addr, align 4
  %cmp67 = icmp ne i32 %49, 108
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.75

land.lhs.true.68:                                 ; preds = %land.lhs.true.66
  %50 = load i32, i32* %code.addr, align 4
  %cmp69 = icmp ne i32 %50, 111
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.75

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %51 = load i32, i32* %code.addr, align 4
  %cmp71 = icmp ne i32 %51, 110
  br i1 %cmp71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %land.lhs.true.70
  %52 = load i32, i32* %code.addr, align 4
  %call73 = call i32 @signed_condition(i32 %52)
  %53 = load i32, i32* %mode.addr, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call74 = call %struct.rtx_def* @simplify_relational_operation(i32 %call73, i32 %53, %struct.rtx_def* %54, %struct.rtx_def* %55)
  store %struct.rtx_def* %call74, %struct.rtx_def** %retval
  br label %return

if.end.75:                                        ; preds = %land.lhs.true.70, %land.lhs.true.68, %land.lhs.true.66, %land.lhs.true.64, %land.lhs.true.61, %lor.lhs.false.57, %land.lhs.true.53, %land.lhs.true.43, %lor.lhs.false.39
  %56 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool76 = icmp ne i32 %56, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.80

land.lhs.true.77:                                 ; preds = %if.end.75
  %57 = load i32, i32* %code.addr, align 4
  %cmp78 = icmp eq i32 %57, 113
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.77
  %58 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %retval
  br label %return

if.end.80:                                        ; preds = %land.lhs.true.77, %if.end.75
  %59 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool81 = icmp ne i32 %59, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.85

land.lhs.true.82:                                 ; preds = %if.end.80
  %60 = load i32, i32* %code.addr, align 4
  %cmp83 = icmp eq i32 %60, 112
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.82
  %61 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %61, %struct.rtx_def** %retval
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.82, %if.end.80
  %62 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %call86 = call i32 @rtx_equal_p(%struct.rtx_def* %62, %struct.rtx_def* %63)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.else

land.lhs.true.88:                                 ; preds = %if.end.85
  %64 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load89 = load i32, i32* %65, align 8
  %bf.lshr90 = lshr i32 %bf.load89, 16
  %bf.clear91 = and i32 %bf.lshr90, 255
  %idxprom92 = sext i32 %bf.clear91 to i64
  %arrayidx93 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom92
  %66 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %66, 2
  br i1 %cmp94, label %lor.lhs.false.109, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %land.lhs.true.88
  %67 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load96 = load i32, i32* %68, align 8
  %bf.lshr97 = lshr i32 %bf.load96, 16
  %bf.clear98 = and i32 %bf.lshr97, 255
  %idxprom99 = sext i32 %bf.clear98 to i64
  %arrayidx100 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom99
  %69 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp eq i32 %69, 6
  br i1 %cmp101, label %lor.lhs.false.109, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.95
  %70 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load103 = load i32, i32* %71, align 8
  %bf.lshr104 = lshr i32 %bf.load103, 16
  %bf.clear105 = and i32 %bf.lshr104, 255
  %idxprom106 = sext i32 %bf.clear105 to i64
  %arrayidx107 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom106
  %72 = load i32, i32* %arrayidx107, align 4
  %cmp108 = icmp eq i32 %72, 8
  br i1 %cmp108, label %lor.lhs.false.109, label %if.then.111

lor.lhs.false.109:                                ; preds = %lor.lhs.false.102, %lor.lhs.false.95, %land.lhs.true.88
  %73 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool110 = icmp ne i32 %73, 0
  br i1 %tobool110, label %if.then.111, label %if.else

if.then.111:                                      ; preds = %lor.lhs.false.109, %lor.lhs.false.102
  store i32 1, i32* %equal, align 4
  store i32 0, i32* %op0lt, align 4
  store i32 0, i32* %op0ltu, align 4
  store i32 0, i32* %op1lt, align 4
  store i32 0, i32* %op1ltu, align 4
  br label %if.end.604

if.else:                                          ; preds = %lor.lhs.false.109, %if.end.85
  %74 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load112 = load i32, i32* %75, align 8
  %bf.clear113 = and i32 %bf.load112, 65535
  %cmp114 = icmp eq i32 %bf.clear113, 55
  br i1 %cmp114, label %land.lhs.true.115, label %if.else.141

land.lhs.true.115:                                ; preds = %if.else
  %76 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load116 = load i32, i32* %77, align 8
  %bf.clear117 = and i32 %bf.load116, 65535
  %cmp118 = icmp eq i32 %bf.clear117, 55
  br i1 %cmp118, label %land.lhs.true.119, label %if.else.141

land.lhs.true.119:                                ; preds = %land.lhs.true.115
  %78 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load120 = load i32, i32* %79, align 8
  %bf.lshr121 = lshr i32 %bf.load120, 16
  %bf.clear122 = and i32 %bf.lshr121, 255
  %idxprom123 = sext i32 %bf.clear122 to i64
  %arrayidx124 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom123
  %80 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp eq i32 %80, 2
  br i1 %cmp125, label %if.then.126, label %if.else.141

if.then.126:                                      ; preds = %land.lhs.true.119
  %81 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %op0127 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 0
  store %struct.rtx_def* %81, %struct.rtx_def** %op0127, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %op1128 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 1
  store %struct.rtx_def* %82, %struct.rtx_def** %op1128, align 8
  %83 = bitcast %struct.cfc_args* %args to i8*
  %call129 = call i32 @do_float_handler(void (i8*)* @check_fold_consts, i8* %83)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %if.then.126
  %unordered = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 5
  store i32 1, i32* %unordered, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.then.126
  %unordered133 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 5
  %84 = load i32, i32* %unordered133, align 4
  %tobool134 = icmp ne i32 %84, 0
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.132
  %85 = load i32, i32* %code.addr, align 4
  switch i32 %85, label %sw.default [
    i32 114, label %sw.bb
    i32 118, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 115, label %sw.bb
    i32 102, label %sw.bb
    i32 112, label %sw.bb
    i32 103, label %sw.bb.136
    i32 107, label %sw.bb.136
    i32 105, label %sw.bb.136
    i32 106, label %sw.bb.136
    i32 104, label %sw.bb.136
    i32 119, label %sw.bb.136
    i32 113, label %sw.bb.136
  ]

sw.bb:                                            ; preds = %if.then.135, %if.then.135, %if.then.135, %if.then.135, %if.then.135, %if.then.135, %if.then.135
  %86 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %retval
  br label %return

sw.bb.136:                                        ; preds = %if.then.135, %if.then.135, %if.then.135, %if.then.135, %if.then.135, %if.then.135, %if.then.135
  %87 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.then.135
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.137:                                       ; preds = %if.end.132
  %equal138 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 2
  %88 = load i32, i32* %equal138, align 4
  store i32 %88, i32* %equal, align 4
  %op0lt139 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 3
  %89 = load i32, i32* %op0lt139, align 4
  store i32 %89, i32* %op0ltu, align 4
  store i32 %89, i32* %op0lt, align 4
  %op1lt140 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %args, i32 0, i32 4
  %90 = load i32, i32* %op1lt140, align 4
  store i32 %90, i32* %op1ltu, align 4
  store i32 %90, i32* %op1lt, align 4
  br label %if.end.603

if.else.141:                                      ; preds = %land.lhs.true.119, %land.lhs.true.115, %if.else
  %91 = load i32, i32* %mode.addr, align 4
  %idxprom142 = sext i32 %91 to i64
  %arrayidx143 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom142
  %92 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %92, 1
  br i1 %cmp144, label %land.lhs.true.147, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.else.141
  %93 = load i32, i32* %mode.addr, align 4
  %cmp146 = icmp eq i32 %93, 0
  br i1 %cmp146, label %land.lhs.true.147, label %if.else.294

land.lhs.true.147:                                ; preds = %lor.lhs.false.145, %if.else.141
  %94 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load148 = load i32, i32* %95, align 8
  %bf.clear149 = and i32 %bf.load148, 65535
  %cmp150 = icmp eq i32 %bf.clear149, 55
  br i1 %cmp150, label %land.lhs.true.155, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %land.lhs.true.147
  %96 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load152 = load i32, i32* %97, align 8
  %bf.clear153 = and i32 %bf.load152, 65535
  %cmp154 = icmp eq i32 %bf.clear153, 54
  br i1 %cmp154, label %land.lhs.true.155, label %if.else.294

land.lhs.true.155:                                ; preds = %lor.lhs.false.151, %land.lhs.true.147
  %98 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load156 = load i32, i32* %99, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 55
  br i1 %cmp158, label %if.then.163, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.155
  %100 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load160 = load i32, i32* %101, align 8
  %bf.clear161 = and i32 %bf.load160, 65535
  %cmp162 = icmp eq i32 %bf.clear161, 54
  br i1 %cmp162, label %if.then.163, label %if.else.294

if.then.163:                                      ; preds = %lor.lhs.false.159, %land.lhs.true.155
  %102 = load i32, i32* %mode.addr, align 4
  %idxprom164 = sext i32 %102 to i64
  %arrayidx165 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom164
  %103 = load i16, i16* %arrayidx165, align 2
  %conv = zext i16 %103 to i32
  store i32 %conv, i32* %width, align 4
  %104 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load166 = load i32, i32* %105, align 8
  %bf.clear167 = and i32 %bf.load166, 65535
  %cmp168 = icmp eq i32 %bf.clear167, 55
  br i1 %cmp168, label %if.then.170, label %if.else.176

if.then.170:                                      ; preds = %if.then.163
  %106 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx172 to i64*
  %107 = load i64, i64* %rtwint, align 8
  store i64 %107, i64* %l0s, align 8
  store i64 %107, i64* %l0u, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 2
  %rtwint175 = bitcast %union.rtunion_def* %arrayidx174 to i64*
  %109 = load i64, i64* %rtwint175, align 8
  store i64 %109, i64* %h0s, align 8
  store i64 %109, i64* %h0u, align 8
  br label %if.end.182

if.else.176:                                      ; preds = %if.then.163
  %110 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 0
  %rtwint179 = bitcast %union.rtunion_def* %arrayidx178 to i64*
  %111 = load i64, i64* %rtwint179, align 8
  store i64 %111, i64* %l0s, align 8
  store i64 %111, i64* %l0u, align 8
  %112 = load i64, i64* %l0s, align 8
  %cmp180 = icmp slt i64 %112, 0
  %cond = select i1 %cmp180, i64 -1, i64 0
  store i64 %cond, i64* %h0s, align 8
  store i64 %cond, i64* %h0u, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.176, %if.then.170
  %113 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load183 = load i32, i32* %114, align 8
  %bf.clear184 = and i32 %bf.load183, 65535
  %cmp185 = icmp eq i32 %bf.clear184, 55
  br i1 %cmp185, label %if.then.187, label %if.else.194

if.then.187:                                      ; preds = %if.end.182
  %115 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 1
  %rtwint190 = bitcast %union.rtunion_def* %arrayidx189 to i64*
  %116 = load i64, i64* %rtwint190, align 8
  store i64 %116, i64* %l1s, align 8
  store i64 %116, i64* %l1u, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 2
  %rtwint193 = bitcast %union.rtunion_def* %arrayidx192 to i64*
  %118 = load i64, i64* %rtwint193, align 8
  store i64 %118, i64* %h1s, align 8
  store i64 %118, i64* %h1u, align 8
  br label %if.end.201

if.else.194:                                      ; preds = %if.end.182
  %119 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 0
  %rtwint197 = bitcast %union.rtunion_def* %arrayidx196 to i64*
  %120 = load i64, i64* %rtwint197, align 8
  store i64 %120, i64* %l1s, align 8
  store i64 %120, i64* %l1u, align 8
  %121 = load i64, i64* %l1s, align 8
  %cmp198 = icmp slt i64 %121, 0
  %cond200 = select i1 %cmp198, i64 -1, i64 0
  store i64 %cond200, i64* %h1s, align 8
  store i64 %cond200, i64* %h1u, align 8
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.194, %if.then.187
  %122 = load i32, i32* %width, align 4
  %cmp202 = icmp ne i32 %122, 0
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.231

land.lhs.true.204:                                ; preds = %if.end.201
  %123 = load i32, i32* %width, align 4
  %cmp205 = icmp slt i32 %123, 64
  br i1 %cmp205, label %if.then.207, label %if.end.231

if.then.207:                                      ; preds = %land.lhs.true.204
  %124 = load i32, i32* %width, align 4
  %sh_prom = zext i32 %124 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %125 = load i64, i64* %l0u, align 8
  %and = and i64 %125, %sub
  store i64 %and, i64* %l0u, align 8
  %126 = load i32, i32* %width, align 4
  %sh_prom208 = zext i32 %126 to i64
  %shl209 = shl i64 1, %sh_prom208
  %sub210 = sub nsw i64 %shl209, 1
  %127 = load i64, i64* %l1u, align 8
  %and211 = and i64 %127, %sub210
  store i64 %and211, i64* %l1u, align 8
  %128 = load i64, i64* %l0s, align 8
  %129 = load i32, i32* %width, align 4
  %sub212 = sub nsw i32 %129, 1
  %sh_prom213 = zext i32 %sub212 to i64
  %shl214 = shl i64 1, %sh_prom213
  %and215 = and i64 %128, %shl214
  %tobool216 = icmp ne i64 %and215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %if.then.207
  %130 = load i32, i32* %width, align 4
  %sh_prom218 = zext i32 %130 to i64
  %shl219 = shl i64 -1, %sh_prom218
  %131 = load i64, i64* %l0s, align 8
  %or = or i64 %131, %shl219
  store i64 %or, i64* %l0s, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %if.then.207
  %132 = load i64, i64* %l1s, align 8
  %133 = load i32, i32* %width, align 4
  %sub221 = sub nsw i32 %133, 1
  %sh_prom222 = zext i32 %sub221 to i64
  %shl223 = shl i64 1, %sh_prom222
  %and224 = and i64 %132, %shl223
  %tobool225 = icmp ne i64 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.230

if.then.226:                                      ; preds = %if.end.220
  %134 = load i32, i32* %width, align 4
  %sh_prom227 = zext i32 %134 to i64
  %shl228 = shl i64 -1, %sh_prom227
  %135 = load i64, i64* %l1s, align 8
  %or229 = or i64 %135, %shl228
  store i64 %or229, i64* %l1s, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.226, %if.end.220
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %land.lhs.true.204, %if.end.201
  %136 = load i32, i32* %width, align 4
  %cmp232 = icmp ne i32 %136, 0
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.244

land.lhs.true.234:                                ; preds = %if.end.231
  %137 = load i32, i32* %width, align 4
  %cmp235 = icmp sle i32 %137, 64
  br i1 %cmp235, label %if.then.237, label %if.end.244

if.then.237:                                      ; preds = %land.lhs.true.234
  store i64 0, i64* %h1u, align 8
  store i64 0, i64* %h0u, align 8
  %138 = load i64, i64* %l0s, align 8
  %cmp238 = icmp slt i64 %138, 0
  %cond240 = select i1 %cmp238, i64 -1, i64 0
  store i64 %cond240, i64* %h0s, align 8
  %139 = load i64, i64* %l1s, align 8
  %cmp241 = icmp slt i64 %139, 0
  %cond243 = select i1 %cmp241, i64 -1, i64 0
  store i64 %cond243, i64* %h1s, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.237, %land.lhs.true.234, %if.end.231
  %140 = load i64, i64* %h0u, align 8
  %141 = load i64, i64* %h1u, align 8
  %cmp245 = icmp eq i64 %140, %141
  br i1 %cmp245, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.244
  %142 = load i64, i64* %l0u, align 8
  %143 = load i64, i64* %l1u, align 8
  %cmp247 = icmp eq i64 %142, %143
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.244
  %144 = phi i1 [ false, %if.end.244 ], [ %cmp247, %land.rhs ]
  %land.ext = zext i1 %144 to i32
  store i32 %land.ext, i32* %equal, align 4
  %145 = load i64, i64* %h0s, align 8
  %146 = load i64, i64* %h1s, align 8
  %cmp249 = icmp slt i64 %145, %146
  br i1 %cmp249, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %147 = load i64, i64* %h0s, align 8
  %148 = load i64, i64* %h1s, align 8
  %cmp251 = icmp eq i64 %147, %148
  br i1 %cmp251, label %land.rhs.253, label %land.end.256

land.rhs.253:                                     ; preds = %lor.rhs
  %149 = load i64, i64* %l0u, align 8
  %150 = load i64, i64* %l1u, align 8
  %cmp254 = icmp ult i64 %149, %150
  br label %land.end.256

land.end.256:                                     ; preds = %land.rhs.253, %lor.rhs
  %151 = phi i1 [ false, %lor.rhs ], [ %cmp254, %land.rhs.253 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.256, %land.end
  %152 = phi i1 [ true, %land.end ], [ %151, %land.end.256 ]
  %lor.ext = zext i1 %152 to i32
  store i32 %lor.ext, i32* %op0lt, align 4
  %153 = load i64, i64* %h1s, align 8
  %154 = load i64, i64* %h0s, align 8
  %cmp258 = icmp slt i64 %153, %154
  br i1 %cmp258, label %lor.end.268, label %lor.rhs.260

lor.rhs.260:                                      ; preds = %lor.end
  %155 = load i64, i64* %h1s, align 8
  %156 = load i64, i64* %h0s, align 8
  %cmp261 = icmp eq i64 %155, %156
  br i1 %cmp261, label %land.rhs.263, label %land.end.266

land.rhs.263:                                     ; preds = %lor.rhs.260
  %157 = load i64, i64* %l1u, align 8
  %158 = load i64, i64* %l0u, align 8
  %cmp264 = icmp ult i64 %157, %158
  br label %land.end.266

land.end.266:                                     ; preds = %land.rhs.263, %lor.rhs.260
  %159 = phi i1 [ false, %lor.rhs.260 ], [ %cmp264, %land.rhs.263 ]
  br label %lor.end.268

lor.end.268:                                      ; preds = %land.end.266, %lor.end
  %160 = phi i1 [ true, %lor.end ], [ %159, %land.end.266 ]
  %lor.ext269 = zext i1 %160 to i32
  store i32 %lor.ext269, i32* %op1lt, align 4
  %161 = load i64, i64* %h0u, align 8
  %162 = load i64, i64* %h1u, align 8
  %cmp270 = icmp ult i64 %161, %162
  br i1 %cmp270, label %lor.end.280, label %lor.rhs.272

lor.rhs.272:                                      ; preds = %lor.end.268
  %163 = load i64, i64* %h0u, align 8
  %164 = load i64, i64* %h1u, align 8
  %cmp273 = icmp eq i64 %163, %164
  br i1 %cmp273, label %land.rhs.275, label %land.end.278

land.rhs.275:                                     ; preds = %lor.rhs.272
  %165 = load i64, i64* %l0u, align 8
  %166 = load i64, i64* %l1u, align 8
  %cmp276 = icmp ult i64 %165, %166
  br label %land.end.278

land.end.278:                                     ; preds = %land.rhs.275, %lor.rhs.272
  %167 = phi i1 [ false, %lor.rhs.272 ], [ %cmp276, %land.rhs.275 ]
  br label %lor.end.280

lor.end.280:                                      ; preds = %land.end.278, %lor.end.268
  %168 = phi i1 [ true, %lor.end.268 ], [ %167, %land.end.278 ]
  %lor.ext281 = zext i1 %168 to i32
  store i32 %lor.ext281, i32* %op0ltu, align 4
  %169 = load i64, i64* %h1u, align 8
  %170 = load i64, i64* %h0u, align 8
  %cmp282 = icmp ult i64 %169, %170
  br i1 %cmp282, label %lor.end.292, label %lor.rhs.284

lor.rhs.284:                                      ; preds = %lor.end.280
  %171 = load i64, i64* %h1u, align 8
  %172 = load i64, i64* %h0u, align 8
  %cmp285 = icmp eq i64 %171, %172
  br i1 %cmp285, label %land.rhs.287, label %land.end.290

land.rhs.287:                                     ; preds = %lor.rhs.284
  %173 = load i64, i64* %l1u, align 8
  %174 = load i64, i64* %l0u, align 8
  %cmp288 = icmp ult i64 %173, %174
  br label %land.end.290

land.end.290:                                     ; preds = %land.rhs.287, %lor.rhs.284
  %175 = phi i1 [ false, %lor.rhs.284 ], [ %cmp288, %land.rhs.287 ]
  br label %lor.end.292

lor.end.292:                                      ; preds = %land.end.290, %lor.end.280
  %176 = phi i1 [ true, %lor.end.280 ], [ %175, %land.end.290 ]
  %lor.ext293 = zext i1 %176 to i32
  store i32 %lor.ext293, i32* %op1ltu, align 4
  br label %if.end.602

if.else.294:                                      ; preds = %lor.lhs.false.159, %lor.lhs.false.151, %lor.lhs.false.145
  %177 = load i32, i32* %code.addr, align 4
  switch i32 %177, label %sw.default.601 [
    i32 103, label %sw.bb.295
    i32 102, label %sw.bb.408
    i32 108, label %sw.bb.521
    i32 111, label %sw.bb.526
    i32 110, label %sw.bb.531
    i32 109, label %sw.bb.566
  ]

sw.bb.295:                                        ; preds = %if.else.294
  %178 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp296 = icmp eq %struct.rtx_def* %178, %179
  br i1 %cmp296, label %land.lhs.true.395, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %sw.bb.295
  %180 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp299 = icmp eq %struct.rtx_def* %180, %181
  br i1 %cmp299, label %land.lhs.true.395, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %lor.lhs.false.298
  %182 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp302 = icmp eq %struct.rtx_def* %182, %183
  br i1 %cmp302, label %land.lhs.true.395, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %lor.lhs.false.301
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %185 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %cmp305 = icmp eq %struct.rtx_def* %184, %185
  br i1 %cmp305, label %land.lhs.true.395, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %lor.lhs.false.304
  %186 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load308 = load i32, i32* %187, align 8
  %bf.clear309 = and i32 %bf.load308, 65535
  %cmp310 = icmp eq i32 %bf.clear309, 75
  br i1 %cmp310, label %land.lhs.true.312, label %lor.lhs.false.350

land.lhs.true.312:                                ; preds = %lor.lhs.false.307
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 1
  %rtx315 = bitcast %union.rtunion_def* %arrayidx314 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx315, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load316 = load i32, i32* %190, align 8
  %bf.clear317 = and i32 %bf.load316, 65535
  %cmp318 = icmp eq i32 %bf.clear317, 54
  br i1 %cmp318, label %land.lhs.true.320, label %lor.lhs.false.350

land.lhs.true.320:                                ; preds = %land.lhs.true.312
  %191 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 0
  %rtx323 = bitcast %union.rtunion_def* %arrayidx322 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx323, align 8
  %193 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp324 = icmp eq %struct.rtx_def* %192, %193
  br i1 %cmp324, label %land.lhs.true.395, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %land.lhs.true.320
  %194 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld327 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld327, i32 0, i64 0
  %rtx329 = bitcast %union.rtunion_def* %arrayidx328 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx329, align 8
  %196 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp330 = icmp eq %struct.rtx_def* %195, %196
  br i1 %cmp330, label %land.lhs.true.395, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %lor.lhs.false.326
  %197 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %198 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp333 = icmp eq %struct.rtx_def* %197, %198
  br i1 %cmp333, label %land.lhs.true.335, label %lor.lhs.false.338

land.lhs.true.335:                                ; preds = %lor.lhs.false.332
  %199 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %conv336 = sext i8 %199 to i32
  %tobool337 = icmp ne i32 %conv336, 0
  br i1 %tobool337, label %land.lhs.true.395, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %land.lhs.true.335, %lor.lhs.false.332
  %200 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld339 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx340 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld339, i32 0, i64 0
  %rtx341 = bitcast %union.rtunion_def* %arrayidx340 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %rtx341, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp342 = icmp eq %struct.rtx_def* %201, %202
  br i1 %cmp342, label %land.lhs.true.395, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %lor.lhs.false.338
  %203 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx346 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld345, i32 0, i64 0
  %rtx347 = bitcast %union.rtunion_def* %arrayidx346 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx347, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %cmp348 = icmp eq %struct.rtx_def* %204, %205
  br i1 %cmp348, label %land.lhs.true.395, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %lor.lhs.false.344, %land.lhs.true.312, %lor.lhs.false.307
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %207 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp351 = icmp eq %struct.rtx_def* %206, %207
  br i1 %cmp351, label %land.lhs.true.395, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.350
  %208 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %cmp354 = icmp eq %struct.rtx_def* %208, %209
  br i1 %cmp354, label %land.lhs.true.395, label %lor.lhs.false.356

lor.lhs.false.356:                                ; preds = %lor.lhs.false.353
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %cmp357 = icmp eq %struct.rtx_def* %210, %211
  br i1 %cmp357, label %land.lhs.true.395, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %lor.lhs.false.356
  %212 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load360 = load i32, i32* %213, align 8
  %bf.clear361 = and i32 %bf.load360, 65535
  %cmp362 = icmp eq i32 %bf.clear361, 75
  br i1 %cmp362, label %land.lhs.true.364, label %lor.lhs.false.390

land.lhs.true.364:                                ; preds = %lor.lhs.false.359
  %214 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld365, i32 0, i64 1
  %rtx367 = bitcast %union.rtunion_def* %arrayidx366 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtx367, align 8
  %216 = bitcast %struct.rtx_def* %215 to i32*
  %bf.load368 = load i32, i32* %216, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 54
  br i1 %cmp370, label %land.lhs.true.372, label %lor.lhs.false.390

land.lhs.true.372:                                ; preds = %land.lhs.true.364
  %217 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 0
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx375, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp376 = icmp eq %struct.rtx_def* %218, %219
  br i1 %cmp376, label %land.lhs.true.395, label %lor.lhs.false.378

lor.lhs.false.378:                                ; preds = %land.lhs.true.372
  %220 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %220, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 0
  %rtx381 = bitcast %union.rtunion_def* %arrayidx380 to %struct.rtx_def**
  %221 = load %struct.rtx_def*, %struct.rtx_def** %rtx381, align 8
  %222 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %cmp382 = icmp eq %struct.rtx_def* %221, %222
  br i1 %cmp382, label %land.lhs.true.395, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %lor.lhs.false.378
  %223 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %223, i32 0, i32 1
  %arrayidx386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld385, i32 0, i64 0
  %rtx387 = bitcast %union.rtunion_def* %arrayidx386 to %struct.rtx_def**
  %224 = load %struct.rtx_def*, %struct.rtx_def** %rtx387, align 8
  %225 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %cmp388 = icmp eq %struct.rtx_def* %224, %225
  br i1 %cmp388, label %land.lhs.true.395, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %lor.lhs.false.384, %land.lhs.true.364, %lor.lhs.false.359
  %226 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %bf.load391 = load i32, i32* %227, align 8
  %bf.clear392 = and i32 %bf.load391, 65535
  %cmp393 = icmp eq i32 %bf.clear392, 70
  br i1 %cmp393, label %land.lhs.true.395, label %lor.lhs.false.398

land.lhs.true.395:                                ; preds = %lor.lhs.false.390, %lor.lhs.false.384, %lor.lhs.false.378, %land.lhs.true.372, %lor.lhs.false.356, %lor.lhs.false.353, %lor.lhs.false.350, %lor.lhs.false.344, %lor.lhs.false.338, %land.lhs.true.335, %lor.lhs.false.326, %land.lhs.true.320, %lor.lhs.false.304, %lor.lhs.false.301, %lor.lhs.false.298, %sw.bb.295
  %228 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %229 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp396 = icmp eq %struct.rtx_def* %228, %229
  br i1 %cmp396, label %land.lhs.true.403, label %lor.lhs.false.398

lor.lhs.false.398:                                ; preds = %land.lhs.true.395, %lor.lhs.false.390
  %230 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %231 = bitcast %struct.rtx_def* %230 to i32*
  %bf.load399 = load i32, i32* %231, align 8
  %bf.clear400 = and i32 %bf.load399, 65535
  %cmp401 = icmp eq i32 %bf.clear400, 67
  br i1 %cmp401, label %land.lhs.true.403, label %if.end.407

land.lhs.true.403:                                ; preds = %lor.lhs.false.398, %land.lhs.true.395
  %232 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp404 = icmp ne %struct.rtx_def* %232, %233
  br i1 %cmp404, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %land.lhs.true.403
  %234 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %234, %struct.rtx_def** %retval
  br label %return

if.end.407:                                       ; preds = %land.lhs.true.403, %lor.lhs.false.398
  br label %sw.epilog

sw.bb.408:                                        ; preds = %if.else.294
  %235 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp409 = icmp eq %struct.rtx_def* %235, %236
  br i1 %cmp409, label %land.lhs.true.508, label %lor.lhs.false.411

lor.lhs.false.411:                                ; preds = %sw.bb.408
  %237 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %238 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp412 = icmp eq %struct.rtx_def* %237, %238
  br i1 %cmp412, label %land.lhs.true.508, label %lor.lhs.false.414

lor.lhs.false.414:                                ; preds = %lor.lhs.false.411
  %239 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp415 = icmp eq %struct.rtx_def* %239, %240
  br i1 %cmp415, label %land.lhs.true.508, label %lor.lhs.false.417

lor.lhs.false.417:                                ; preds = %lor.lhs.false.414
  %241 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %cmp418 = icmp eq %struct.rtx_def* %241, %242
  br i1 %cmp418, label %land.lhs.true.508, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %lor.lhs.false.417
  %243 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %244 = bitcast %struct.rtx_def* %243 to i32*
  %bf.load421 = load i32, i32* %244, align 8
  %bf.clear422 = and i32 %bf.load421, 65535
  %cmp423 = icmp eq i32 %bf.clear422, 75
  br i1 %cmp423, label %land.lhs.true.425, label %lor.lhs.false.463

land.lhs.true.425:                                ; preds = %lor.lhs.false.420
  %245 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld426 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx427 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld426, i32 0, i64 1
  %rtx428 = bitcast %union.rtunion_def* %arrayidx427 to %struct.rtx_def**
  %246 = load %struct.rtx_def*, %struct.rtx_def** %rtx428, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %bf.load429 = load i32, i32* %247, align 8
  %bf.clear430 = and i32 %bf.load429, 65535
  %cmp431 = icmp eq i32 %bf.clear430, 54
  br i1 %cmp431, label %land.lhs.true.433, label %lor.lhs.false.463

land.lhs.true.433:                                ; preds = %land.lhs.true.425
  %248 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld434, i32 0, i64 0
  %rtx436 = bitcast %union.rtunion_def* %arrayidx435 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %rtx436, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp437 = icmp eq %struct.rtx_def* %249, %250
  br i1 %cmp437, label %land.lhs.true.508, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %land.lhs.true.433
  %251 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %251, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 0
  %rtx442 = bitcast %union.rtunion_def* %arrayidx441 to %struct.rtx_def**
  %252 = load %struct.rtx_def*, %struct.rtx_def** %rtx442, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp443 = icmp eq %struct.rtx_def* %252, %253
  br i1 %cmp443, label %land.lhs.true.508, label %lor.lhs.false.445

lor.lhs.false.445:                                ; preds = %lor.lhs.false.439
  %254 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %255 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp446 = icmp eq %struct.rtx_def* %254, %255
  br i1 %cmp446, label %land.lhs.true.448, label %lor.lhs.false.451

land.lhs.true.448:                                ; preds = %lor.lhs.false.445
  %256 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %conv449 = sext i8 %256 to i32
  %tobool450 = icmp ne i32 %conv449, 0
  br i1 %tobool450, label %land.lhs.true.508, label %lor.lhs.false.451

lor.lhs.false.451:                                ; preds = %land.lhs.true.448, %lor.lhs.false.445
  %257 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld452, i32 0, i64 0
  %rtx454 = bitcast %union.rtunion_def* %arrayidx453 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx454, align 8
  %259 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp455 = icmp eq %struct.rtx_def* %258, %259
  br i1 %cmp455, label %land.lhs.true.508, label %lor.lhs.false.457

lor.lhs.false.457:                                ; preds = %lor.lhs.false.451
  %260 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld458 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %arrayidx459 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld458, i32 0, i64 0
  %rtx460 = bitcast %union.rtunion_def* %arrayidx459 to %struct.rtx_def**
  %261 = load %struct.rtx_def*, %struct.rtx_def** %rtx460, align 8
  %262 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %cmp461 = icmp eq %struct.rtx_def* %261, %262
  br i1 %cmp461, label %land.lhs.true.508, label %lor.lhs.false.463

lor.lhs.false.463:                                ; preds = %lor.lhs.false.457, %land.lhs.true.425, %lor.lhs.false.420
  %263 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %264 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp464 = icmp eq %struct.rtx_def* %263, %264
  br i1 %cmp464, label %land.lhs.true.508, label %lor.lhs.false.466

lor.lhs.false.466:                                ; preds = %lor.lhs.false.463
  %265 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %266 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %cmp467 = icmp eq %struct.rtx_def* %265, %266
  br i1 %cmp467, label %land.lhs.true.508, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %lor.lhs.false.466
  %267 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %268 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %cmp470 = icmp eq %struct.rtx_def* %267, %268
  br i1 %cmp470, label %land.lhs.true.508, label %lor.lhs.false.472

lor.lhs.false.472:                                ; preds = %lor.lhs.false.469
  %269 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %270 = bitcast %struct.rtx_def* %269 to i32*
  %bf.load473 = load i32, i32* %270, align 8
  %bf.clear474 = and i32 %bf.load473, 65535
  %cmp475 = icmp eq i32 %bf.clear474, 75
  br i1 %cmp475, label %land.lhs.true.477, label %lor.lhs.false.503

land.lhs.true.477:                                ; preds = %lor.lhs.false.472
  %271 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld478 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %271, i32 0, i32 1
  %arrayidx479 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld478, i32 0, i64 1
  %rtx480 = bitcast %union.rtunion_def* %arrayidx479 to %struct.rtx_def**
  %272 = load %struct.rtx_def*, %struct.rtx_def** %rtx480, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %bf.load481 = load i32, i32* %273, align 8
  %bf.clear482 = and i32 %bf.load481, 65535
  %cmp483 = icmp eq i32 %bf.clear482, 54
  br i1 %cmp483, label %land.lhs.true.485, label %lor.lhs.false.503

land.lhs.true.485:                                ; preds = %land.lhs.true.477
  %274 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld486 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld486, i32 0, i64 0
  %rtx488 = bitcast %union.rtunion_def* %arrayidx487 to %struct.rtx_def**
  %275 = load %struct.rtx_def*, %struct.rtx_def** %rtx488, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp489 = icmp eq %struct.rtx_def* %275, %276
  br i1 %cmp489, label %land.lhs.true.508, label %lor.lhs.false.491

lor.lhs.false.491:                                ; preds = %land.lhs.true.485
  %277 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld492, i32 0, i64 0
  %rtx494 = bitcast %union.rtunion_def* %arrayidx493 to %struct.rtx_def**
  %278 = load %struct.rtx_def*, %struct.rtx_def** %rtx494, align 8
  %279 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %cmp495 = icmp eq %struct.rtx_def* %278, %279
  br i1 %cmp495, label %land.lhs.true.508, label %lor.lhs.false.497

lor.lhs.false.497:                                ; preds = %lor.lhs.false.491
  %280 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 0
  %rtx500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtx_def**
  %281 = load %struct.rtx_def*, %struct.rtx_def** %rtx500, align 8
  %282 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %cmp501 = icmp eq %struct.rtx_def* %281, %282
  br i1 %cmp501, label %land.lhs.true.508, label %lor.lhs.false.503

lor.lhs.false.503:                                ; preds = %lor.lhs.false.497, %land.lhs.true.477, %lor.lhs.false.472
  %283 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %284 = bitcast %struct.rtx_def* %283 to i32*
  %bf.load504 = load i32, i32* %284, align 8
  %bf.clear505 = and i32 %bf.load504, 65535
  %cmp506 = icmp eq i32 %bf.clear505, 70
  br i1 %cmp506, label %land.lhs.true.508, label %lor.lhs.false.511

land.lhs.true.508:                                ; preds = %lor.lhs.false.503, %lor.lhs.false.497, %lor.lhs.false.491, %land.lhs.true.485, %lor.lhs.false.469, %lor.lhs.false.466, %lor.lhs.false.463, %lor.lhs.false.457, %lor.lhs.false.451, %land.lhs.true.448, %lor.lhs.false.439, %land.lhs.true.433, %lor.lhs.false.417, %lor.lhs.false.414, %lor.lhs.false.411, %sw.bb.408
  %285 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %286 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp509 = icmp eq %struct.rtx_def* %285, %286
  br i1 %cmp509, label %land.lhs.true.516, label %lor.lhs.false.511

lor.lhs.false.511:                                ; preds = %land.lhs.true.508, %lor.lhs.false.503
  %287 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %288 = bitcast %struct.rtx_def* %287 to i32*
  %bf.load512 = load i32, i32* %288, align 8
  %bf.clear513 = and i32 %bf.load512, 65535
  %cmp514 = icmp eq i32 %bf.clear513, 67
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.520

land.lhs.true.516:                                ; preds = %lor.lhs.false.511, %land.lhs.true.508
  %289 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %290 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp517 = icmp ne %struct.rtx_def* %289, %290
  br i1 %cmp517, label %if.then.519, label %if.end.520

if.then.519:                                      ; preds = %land.lhs.true.516
  %291 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  store %struct.rtx_def* %291, %struct.rtx_def** %retval
  br label %return

if.end.520:                                       ; preds = %land.lhs.true.516, %lor.lhs.false.511
  br label %sw.epilog

sw.bb.521:                                        ; preds = %if.else.294
  %292 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %293 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp522 = icmp eq %struct.rtx_def* %292, %293
  br i1 %cmp522, label %if.then.524, label %if.end.525

if.then.524:                                      ; preds = %sw.bb.521
  %294 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  store %struct.rtx_def* %294, %struct.rtx_def** %retval
  br label %return

if.end.525:                                       ; preds = %sw.bb.521
  br label %sw.epilog

sw.bb.526:                                        ; preds = %if.else.294
  %295 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %296 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp527 = icmp eq %struct.rtx_def* %295, %296
  br i1 %cmp527, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %sw.bb.526
  %297 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %297, %struct.rtx_def** %retval
  br label %return

if.end.530:                                       ; preds = %sw.bb.526
  br label %sw.epilog

sw.bb.531:                                        ; preds = %if.else.294
  %298 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %299 = bitcast %struct.rtx_def* %298 to i32*
  %bf.load532 = load i32, i32* %299, align 8
  %bf.clear533 = and i32 %bf.load532, 65535
  %cmp534 = icmp eq i32 %bf.clear533, 54
  br i1 %cmp534, label %land.lhs.true.536, label %if.end.565

land.lhs.true.536:                                ; preds = %sw.bb.531
  %300 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld537 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %300, i32 0, i32 1
  %arrayidx538 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld537, i32 0, i64 0
  %rtwint539 = bitcast %union.rtunion_def* %arrayidx538 to i64*
  %301 = load i64, i64* %rtwint539, align 8
  %302 = load i32, i32* %mode.addr, align 4
  %idxprom540 = sext i32 %302 to i64
  %arrayidx541 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom540
  %303 = load i64, i64* %arrayidx541, align 8
  %cmp542 = icmp eq i64 %301, %303
  br i1 %cmp542, label %land.lhs.true.544, label %if.end.565

land.lhs.true.544:                                ; preds = %land.lhs.true.536
  %304 = load i32, i32* %mode.addr, align 4
  %idxprom545 = sext i32 %304 to i64
  %arrayidx546 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom545
  %305 = load i32, i32* %arrayidx546, align 4
  %cmp547 = icmp eq i32 %305, 1
  br i1 %cmp547, label %if.then.564, label %lor.lhs.false.549

lor.lhs.false.549:                                ; preds = %land.lhs.true.544
  %306 = load i32, i32* %mode.addr, align 4
  %idxprom550 = sext i32 %306 to i64
  %arrayidx551 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom550
  %307 = load i32, i32* %arrayidx551, align 4
  %cmp552 = icmp eq i32 %307, 3
  br i1 %cmp552, label %if.then.564, label %lor.lhs.false.554

lor.lhs.false.554:                                ; preds = %lor.lhs.false.549
  %308 = load i32, i32* %mode.addr, align 4
  %idxprom555 = sext i32 %308 to i64
  %arrayidx556 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom555
  %309 = load i32, i32* %arrayidx556, align 4
  %cmp557 = icmp eq i32 %309, 5
  br i1 %cmp557, label %if.then.564, label %lor.lhs.false.559

lor.lhs.false.559:                                ; preds = %lor.lhs.false.554
  %310 = load i32, i32* %mode.addr, align 4
  %idxprom560 = sext i32 %310 to i64
  %arrayidx561 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom560
  %311 = load i32, i32* %arrayidx561, align 4
  %cmp562 = icmp eq i32 %311, 7
  br i1 %cmp562, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %lor.lhs.false.559, %lor.lhs.false.554, %lor.lhs.false.549, %land.lhs.true.544
  %312 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  store %struct.rtx_def* %312, %struct.rtx_def** %retval
  br label %return

if.end.565:                                       ; preds = %lor.lhs.false.559, %land.lhs.true.536, %sw.bb.531
  br label %sw.epilog

sw.bb.566:                                        ; preds = %if.else.294
  %313 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %314 = bitcast %struct.rtx_def* %313 to i32*
  %bf.load567 = load i32, i32* %314, align 8
  %bf.clear568 = and i32 %bf.load567, 65535
  %cmp569 = icmp eq i32 %bf.clear568, 54
  br i1 %cmp569, label %land.lhs.true.571, label %if.end.600

land.lhs.true.571:                                ; preds = %sw.bb.566
  %315 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld572 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %arrayidx573 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld572, i32 0, i64 0
  %rtwint574 = bitcast %union.rtunion_def* %arrayidx573 to i64*
  %316 = load i64, i64* %rtwint574, align 8
  %317 = load i32, i32* %mode.addr, align 4
  %idxprom575 = sext i32 %317 to i64
  %arrayidx576 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom575
  %318 = load i64, i64* %arrayidx576, align 8
  %cmp577 = icmp eq i64 %316, %318
  br i1 %cmp577, label %land.lhs.true.579, label %if.end.600

land.lhs.true.579:                                ; preds = %land.lhs.true.571
  %319 = load i32, i32* %mode.addr, align 4
  %idxprom580 = sext i32 %319 to i64
  %arrayidx581 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom580
  %320 = load i32, i32* %arrayidx581, align 4
  %cmp582 = icmp eq i32 %320, 1
  br i1 %cmp582, label %if.then.599, label %lor.lhs.false.584

lor.lhs.false.584:                                ; preds = %land.lhs.true.579
  %321 = load i32, i32* %mode.addr, align 4
  %idxprom585 = sext i32 %321 to i64
  %arrayidx586 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom585
  %322 = load i32, i32* %arrayidx586, align 4
  %cmp587 = icmp eq i32 %322, 3
  br i1 %cmp587, label %if.then.599, label %lor.lhs.false.589

lor.lhs.false.589:                                ; preds = %lor.lhs.false.584
  %323 = load i32, i32* %mode.addr, align 4
  %idxprom590 = sext i32 %323 to i64
  %arrayidx591 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom590
  %324 = load i32, i32* %arrayidx591, align 4
  %cmp592 = icmp eq i32 %324, 5
  br i1 %cmp592, label %if.then.599, label %lor.lhs.false.594

lor.lhs.false.594:                                ; preds = %lor.lhs.false.589
  %325 = load i32, i32* %mode.addr, align 4
  %idxprom595 = sext i32 %325 to i64
  %arrayidx596 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom595
  %326 = load i32, i32* %arrayidx596, align 4
  %cmp597 = icmp eq i32 %326, 7
  br i1 %cmp597, label %if.then.599, label %if.end.600

if.then.599:                                      ; preds = %lor.lhs.false.594, %lor.lhs.false.589, %lor.lhs.false.584, %land.lhs.true.579
  %327 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %327, %struct.rtx_def** %retval
  br label %return

if.end.600:                                       ; preds = %lor.lhs.false.594, %land.lhs.true.571, %sw.bb.566
  br label %sw.epilog

sw.default.601:                                   ; preds = %if.else.294
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.601, %if.end.600, %if.end.565, %if.end.530, %if.end.525, %if.end.520, %if.end.407
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.602:                                       ; preds = %lor.end.292
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602, %if.end.137
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %if.then.111
  %328 = load i32, i32* %code.addr, align 4
  switch i32 %328, label %sw.default.672 [
    i32 103, label %sw.bb.605
    i32 114, label %sw.bb.605
    i32 102, label %sw.bb.608
    i32 119, label %sw.bb.608
    i32 107, label %sw.bb.614
    i32 118, label %sw.bb.614
    i32 105, label %sw.bb.620
    i32 116, label %sw.bb.620
    i32 111, label %sw.bb.626
    i32 109, label %sw.bb.632
    i32 106, label %sw.bb.638
    i32 117, label %sw.bb.638
    i32 104, label %sw.bb.646
    i32 115, label %sw.bb.646
    i32 110, label %sw.bb.654
    i32 108, label %sw.bb.662
    i32 113, label %sw.bb.670
    i32 112, label %sw.bb.671
  ]

sw.bb.605:                                        ; preds = %if.end.604, %if.end.604
  %329 = load i32, i32* %equal, align 4
  %tobool606 = icmp ne i32 %329, 0
  br i1 %tobool606, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.605
  %330 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.605
  %331 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond607 = phi %struct.rtx_def* [ %330, %cond.true ], [ %331, %cond.false ]
  store %struct.rtx_def* %cond607, %struct.rtx_def** %retval
  br label %return

sw.bb.608:                                        ; preds = %if.end.604, %if.end.604
  %332 = load i32, i32* %equal, align 4
  %tobool609 = icmp ne i32 %332, 0
  br i1 %tobool609, label %cond.false.611, label %cond.true.610

cond.true.610:                                    ; preds = %sw.bb.608
  %333 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.612

cond.false.611:                                   ; preds = %sw.bb.608
  %334 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.false.611, %cond.true.610
  %cond613 = phi %struct.rtx_def* [ %333, %cond.true.610 ], [ %334, %cond.false.611 ]
  store %struct.rtx_def* %cond613, %struct.rtx_def** %retval
  br label %return

sw.bb.614:                                        ; preds = %if.end.604, %if.end.604
  %335 = load i32, i32* %op0lt, align 4
  %tobool615 = icmp ne i32 %335, 0
  br i1 %tobool615, label %cond.true.616, label %cond.false.617

cond.true.616:                                    ; preds = %sw.bb.614
  %336 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.618

cond.false.617:                                   ; preds = %sw.bb.614
  %337 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.618

cond.end.618:                                     ; preds = %cond.false.617, %cond.true.616
  %cond619 = phi %struct.rtx_def* [ %336, %cond.true.616 ], [ %337, %cond.false.617 ]
  store %struct.rtx_def* %cond619, %struct.rtx_def** %retval
  br label %return

sw.bb.620:                                        ; preds = %if.end.604, %if.end.604
  %338 = load i32, i32* %op1lt, align 4
  %tobool621 = icmp ne i32 %338, 0
  br i1 %tobool621, label %cond.true.622, label %cond.false.623

cond.true.622:                                    ; preds = %sw.bb.620
  %339 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.624

cond.false.623:                                   ; preds = %sw.bb.620
  %340 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.624

cond.end.624:                                     ; preds = %cond.false.623, %cond.true.622
  %cond625 = phi %struct.rtx_def* [ %339, %cond.true.622 ], [ %340, %cond.false.623 ]
  store %struct.rtx_def* %cond625, %struct.rtx_def** %retval
  br label %return

sw.bb.626:                                        ; preds = %if.end.604
  %341 = load i32, i32* %op0ltu, align 4
  %tobool627 = icmp ne i32 %341, 0
  br i1 %tobool627, label %cond.true.628, label %cond.false.629

cond.true.628:                                    ; preds = %sw.bb.626
  %342 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.630

cond.false.629:                                   ; preds = %sw.bb.626
  %343 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.630

cond.end.630:                                     ; preds = %cond.false.629, %cond.true.628
  %cond631 = phi %struct.rtx_def* [ %342, %cond.true.628 ], [ %343, %cond.false.629 ]
  store %struct.rtx_def* %cond631, %struct.rtx_def** %retval
  br label %return

sw.bb.632:                                        ; preds = %if.end.604
  %344 = load i32, i32* %op1ltu, align 4
  %tobool633 = icmp ne i32 %344, 0
  br i1 %tobool633, label %cond.true.634, label %cond.false.635

cond.true.634:                                    ; preds = %sw.bb.632
  %345 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.636

cond.false.635:                                   ; preds = %sw.bb.632
  %346 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.636

cond.end.636:                                     ; preds = %cond.false.635, %cond.true.634
  %cond637 = phi %struct.rtx_def* [ %345, %cond.true.634 ], [ %346, %cond.false.635 ]
  store %struct.rtx_def* %cond637, %struct.rtx_def** %retval
  br label %return

sw.bb.638:                                        ; preds = %if.end.604, %if.end.604
  %347 = load i32, i32* %equal, align 4
  %tobool639 = icmp ne i32 %347, 0
  br i1 %tobool639, label %cond.true.642, label %lor.lhs.false.640

lor.lhs.false.640:                                ; preds = %sw.bb.638
  %348 = load i32, i32* %op0lt, align 4
  %tobool641 = icmp ne i32 %348, 0
  br i1 %tobool641, label %cond.true.642, label %cond.false.643

cond.true.642:                                    ; preds = %lor.lhs.false.640, %sw.bb.638
  %349 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.644

cond.false.643:                                   ; preds = %lor.lhs.false.640
  %350 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.644

cond.end.644:                                     ; preds = %cond.false.643, %cond.true.642
  %cond645 = phi %struct.rtx_def* [ %349, %cond.true.642 ], [ %350, %cond.false.643 ]
  store %struct.rtx_def* %cond645, %struct.rtx_def** %retval
  br label %return

sw.bb.646:                                        ; preds = %if.end.604, %if.end.604
  %351 = load i32, i32* %equal, align 4
  %tobool647 = icmp ne i32 %351, 0
  br i1 %tobool647, label %cond.true.650, label %lor.lhs.false.648

lor.lhs.false.648:                                ; preds = %sw.bb.646
  %352 = load i32, i32* %op1lt, align 4
  %tobool649 = icmp ne i32 %352, 0
  br i1 %tobool649, label %cond.true.650, label %cond.false.651

cond.true.650:                                    ; preds = %lor.lhs.false.648, %sw.bb.646
  %353 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.652

cond.false.651:                                   ; preds = %lor.lhs.false.648
  %354 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.false.651, %cond.true.650
  %cond653 = phi %struct.rtx_def* [ %353, %cond.true.650 ], [ %354, %cond.false.651 ]
  store %struct.rtx_def* %cond653, %struct.rtx_def** %retval
  br label %return

sw.bb.654:                                        ; preds = %if.end.604
  %355 = load i32, i32* %equal, align 4
  %tobool655 = icmp ne i32 %355, 0
  br i1 %tobool655, label %cond.true.658, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %sw.bb.654
  %356 = load i32, i32* %op0ltu, align 4
  %tobool657 = icmp ne i32 %356, 0
  br i1 %tobool657, label %cond.true.658, label %cond.false.659

cond.true.658:                                    ; preds = %lor.lhs.false.656, %sw.bb.654
  %357 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.660

cond.false.659:                                   ; preds = %lor.lhs.false.656
  %358 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.660

cond.end.660:                                     ; preds = %cond.false.659, %cond.true.658
  %cond661 = phi %struct.rtx_def* [ %357, %cond.true.658 ], [ %358, %cond.false.659 ]
  store %struct.rtx_def* %cond661, %struct.rtx_def** %retval
  br label %return

sw.bb.662:                                        ; preds = %if.end.604
  %359 = load i32, i32* %equal, align 4
  %tobool663 = icmp ne i32 %359, 0
  br i1 %tobool663, label %cond.true.666, label %lor.lhs.false.664

lor.lhs.false.664:                                ; preds = %sw.bb.662
  %360 = load i32, i32* %op1ltu, align 4
  %tobool665 = icmp ne i32 %360, 0
  br i1 %tobool665, label %cond.true.666, label %cond.false.667

cond.true.666:                                    ; preds = %lor.lhs.false.664, %sw.bb.662
  %361 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end.668

cond.false.667:                                   ; preds = %lor.lhs.false.664
  %362 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.667, %cond.true.666
  %cond669 = phi %struct.rtx_def* [ %361, %cond.true.666 ], [ %362, %cond.false.667 ]
  store %struct.rtx_def* %cond669, %struct.rtx_def** %retval
  br label %return

sw.bb.670:                                        ; preds = %if.end.604
  %363 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  store %struct.rtx_def* %363, %struct.rtx_def** %retval
  br label %return

sw.bb.671:                                        ; preds = %if.end.604
  %364 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %364, %struct.rtx_def** %retval
  br label %return

sw.default.672:                                   ; preds = %if.end.604
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2350, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.simplify_relational_operation, i32 0, i32 0)) #4
  unreachable

return:                                           ; preds = %sw.bb.671, %sw.bb.670, %cond.end.668, %cond.end.660, %cond.end.652, %cond.end.644, %cond.end.636, %cond.end.630, %cond.end.624, %cond.end.618, %cond.end.612, %cond.end, %sw.epilog, %if.then.599, %if.then.564, %if.then.529, %if.then.524, %if.then.519, %if.then.406, %sw.default, %sw.bb.136, %sw.bb, %if.then.84, %if.then.79, %if.then.72, %if.then.22
  %365 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %365
}

declare i32 @swap_condition(i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %x, %struct.rtx_def* %old, %struct.rtx_def* %new) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %old.addr = alloca %struct.rtx_def*, align 8
  %new.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %mode = alloca i32, align 4
  %op_mode = alloca i32, align 4
  %op = alloca %struct.rtx_def*, align 8
  %op_mode27 = alloca i32, align 4
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %op_mode83 = alloca i32, align 4
  %op090 = alloca %struct.rtx_def*, align 8
  %exp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %old, %struct.rtx_def** %old.addr, align 8
  store %struct.rtx_def* %new, %struct.rtx_def** %new.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  store i32 %bf.clear2, i32* %mode, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %code, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb.16
    i32 99, label %sw.bb.16
    i32 60, label %sw.bb.26
    i32 51, label %sw.bb.82
    i32 98, label %sw.bb.82
    i32 120, label %sw.bb.113
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load4 = load i32, i32* %11, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 16
  %bf.clear6 = and i32 %bf.lshr5, 255
  store i32 %bf.clear6, i32* %op_mode, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %cmp10 = icmp eq %struct.rtx_def* %13, %14
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %15 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %17, %struct.rtx_def* %18, %struct.rtx_def* %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %15, %cond.true ], [ %call, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %op, align 8
  %20 = load i32, i32* %code, align 4
  %21 = load i32, i32* %mode, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %23 = load i32, i32* %op_mode, align 4
  %call15 = call %struct.rtx_def* @simplify_gen_unary(i32 %20, i32 %21, %struct.rtx_def* %22, i32 %23)
  store %struct.rtx_def* %call15, %struct.rtx_def** %retval
  br label %return

sw.bb.16:                                         ; preds = %if.end, %if.end
  %24 = load i32, i32* %code, align 4
  %25 = load i32, i32* %mode, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call20 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %27, %struct.rtx_def* %28, %struct.rtx_def* %29)
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call24 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %31, %struct.rtx_def* %32, %struct.rtx_def* %33)
  %call25 = call %struct.rtx_def* @simplify_gen_binary(i32 %24, i32 %25, %struct.rtx_def* %call20, %struct.rtx_def* %call24)
  store %struct.rtx_def* %call25, %struct.rtx_def** %retval
  br label %return

sw.bb.26:                                         ; preds = %if.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load31 = load i32, i32* %36, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 16
  %bf.clear33 = and i32 %bf.lshr32, 255
  %cmp34 = icmp ne i32 %bf.clear33, 0
  br i1 %cmp34, label %cond.true.36, label %cond.false.43

cond.true.36:                                     ; preds = %sw.bb.26
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load40 = load i32, i32* %39, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 255
  br label %cond.end.50

cond.false.43:                                    ; preds = %sw.bb.26
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 1
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load47 = load i32, i32* %42, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.43, %cond.true.36
  %cond51 = phi i32 [ %bf.clear42, %cond.true.36 ], [ %bf.clear49, %cond.false.43 ]
  store i32 %cond51, i32* %op_mode27, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call55 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %44, %struct.rtx_def* %45, %struct.rtx_def* %46)
  store %struct.rtx_def* %call55, %struct.rtx_def** %op0, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 1
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call59 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %48, %struct.rtx_def* %49, %struct.rtx_def* %50)
  store %struct.rtx_def* %call59, %struct.rtx_def** %op1, align 8
  %51 = load i32, i32* %code, align 4
  %52 = load i32, i32* %mode, align 4
  %53 = load i32, i32* %op_mode27, align 4
  %cmp60 = icmp ne i32 %53, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.50
  %54 = load i32, i32* %op_mode27, align 4
  br label %cond.end.79

cond.false.63:                                    ; preds = %cond.end.50
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load64 = load i32, i32* %56, align 8
  %bf.lshr65 = lshr i32 %bf.load64, 16
  %bf.clear66 = and i32 %bf.lshr65, 255
  %cmp67 = icmp ne i32 %bf.clear66, 0
  br i1 %cmp67, label %cond.true.69, label %cond.false.73

cond.true.69:                                     ; preds = %cond.false.63
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load70 = load i32, i32* %58, align 8
  %bf.lshr71 = lshr i32 %bf.load70, 16
  %bf.clear72 = and i32 %bf.lshr71, 255
  br label %cond.end.77

cond.false.73:                                    ; preds = %cond.false.63
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load74 = load i32, i32* %60, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 16
  %bf.clear76 = and i32 %bf.lshr75, 255
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.73, %cond.true.69
  %cond78 = phi i32 [ %bf.clear72, %cond.true.69 ], [ %bf.clear76, %cond.false.73 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.true.62
  %cond80 = phi i32 [ %54, %cond.true.62 ], [ %cond78, %cond.end.77 ]
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call81 = call %struct.rtx_def* @simplify_gen_relational(i32 %51, i32 %52, i32 %cond80, %struct.rtx_def* %61, %struct.rtx_def* %62)
  store %struct.rtx_def* %call81, %struct.rtx_def** %retval
  br label %return

sw.bb.82:                                         ; preds = %if.end, %if.end
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load87 = load i32, i32* %65, align 8
  %bf.lshr88 = lshr i32 %bf.load87, 16
  %bf.clear89 = and i32 %bf.lshr88, 255
  store i32 %bf.clear89, i32* %op_mode83, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call94 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %67, %struct.rtx_def* %68, %struct.rtx_def* %69)
  store %struct.rtx_def* %call94, %struct.rtx_def** %op090, align 8
  %70 = load i32, i32* %code, align 4
  %71 = load i32, i32* %mode, align 4
  %72 = load i32, i32* %op_mode83, align 4
  %cmp95 = icmp ne i32 %72, 0
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %sw.bb.82
  %73 = load i32, i32* %op_mode83, align 4
  br label %cond.end.102

cond.false.98:                                    ; preds = %sw.bb.82
  %74 = load %struct.rtx_def*, %struct.rtx_def** %op090, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load99 = load i32, i32* %75, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.98, %cond.true.97
  %cond103 = phi i32 [ %73, %cond.true.97 ], [ %bf.clear101, %cond.false.98 ]
  %76 = load %struct.rtx_def*, %struct.rtx_def** %op090, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 1
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call107 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %78, %struct.rtx_def* %79, %struct.rtx_def* %80)
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 2
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call111 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %82, %struct.rtx_def* %83, %struct.rtx_def* %84)
  %call112 = call %struct.rtx_def* @simplify_gen_ternary(i32 %70, i32 %71, i32 %cond103, %struct.rtx_def* %76, %struct.rtx_def* %call107, %struct.rtx_def* %call111)
  store %struct.rtx_def* %call112, %struct.rtx_def** %retval
  br label %return

sw.bb.113:                                        ; preds = %if.end
  %85 = load i32, i32* %code, align 4
  %cmp114 = icmp eq i32 %85, 63
  br i1 %cmp114, label %if.then.116, label %if.end.135

if.then.116:                                      ; preds = %sw.bb.113
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load117 = load i32, i32* %87, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx122, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call123 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %89, %struct.rtx_def* %90, %struct.rtx_def* %91)
  %92 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load127 = load i32, i32* %94, align 8
  %bf.lshr128 = lshr i32 %bf.load127, 16
  %bf.clear129 = and i32 %bf.lshr128, 255
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx131 to i32*
  %96 = load i32, i32* %rtuint, align 4
  %call132 = call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear119, %struct.rtx_def* %call123, i32 %bf.clear129, i32 %96)
  store %struct.rtx_def* %call132, %struct.rtx_def** %exp, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  %tobool = icmp ne %struct.rtx_def* %97, null
  br i1 %tobool, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.116
  %98 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %x.addr, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.then.116
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %sw.bb.113
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load136 = load i32, i32* %101, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %cmp138 = icmp eq i32 %bf.clear137, 66
  br i1 %cmp138, label %if.then.140, label %if.end.146

if.then.140:                                      ; preds = %sw.default
  %102 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call144 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %104, %struct.rtx_def* %105, %struct.rtx_def* %106)
  %call145 = call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %102, %struct.rtx_def* %call144)
  store %struct.rtx_def* %call145, %struct.rtx_def** %retval
  br label %return

if.end.146:                                       ; preds = %sw.default
  %107 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.146, %if.then.140, %if.end.135, %cond.end.102, %cond.end.79, %sw.bb.16, %cond.end, %if.then
  %108 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %108
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_gen_subreg(i32 %outermode, %struct.rtx_def* %op, i32 %innermode, i32 %byte) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %outermode.addr = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %innermode.addr = alloca i32, align 4
  %byte.addr = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  store i32 %outermode, i32* %outermode.addr, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %innermode, i32* %innermode.addr, align 4
  store i32 %byte, i32* %byte.addr, align 4
  %0 = load i32, i32* %innermode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %outermode.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %innermode.addr, align 4
  %cmp3 = icmp eq i32 %2, 51
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %outermode.addr, align 4
  %cmp5 = icmp eq i32 %3, 51
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2755, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.simplify_gen_subreg, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false.4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %6 = load i32, i32* %innermode.addr, align 4
  %cmp6 = icmp ne i32 %bf.clear, %6
  br i1 %cmp6, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 16
  %bf.clear9 = and i32 %bf.lshr8, 255
  %cmp10 = icmp ne i32 %bf.clear9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2759, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.simplify_gen_subreg, i32 0, i32 0)) #4
  unreachable

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %byte.addr, align 4
  %10 = load i32, i32* %outermode.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %rem = urem i32 %9, %conv
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.12
  %12 = load i32, i32* %byte.addr, align 4
  %13 = load i32, i32* %innermode.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %cmp17 = icmp uge i32 %12, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.13, %if.end.12
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2763, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.simplify_gen_subreg, i32 0, i32 0)) #4
  unreachable

if.end.20:                                        ; preds = %lor.lhs.false.13
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 71
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %17 = load i32, i32* %outermode.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %19 = load i32, i32* %innermode.addr, align 4
  %20 = load i32, i32* %byte.addr, align 4
  %call = call %struct.rtx_def* @simplify_subreg(i32 %17, %struct.rtx_def* %18, i32 %19, i32 %20)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool27 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %22 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load30 = load i32, i32* %24, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 63
  br i1 %cmp32, label %if.then.40, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.29
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load35 = load i32, i32* %26, align 8
  %bf.lshr36 = lshr i32 %bf.load35, 16
  %bf.clear37 = and i32 %bf.lshr36, 255
  %cmp38 = icmp eq i32 %bf.clear37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.34, %if.end.29
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.34
  %27 = load i32, i32* %outermode.addr, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %29 = load i32, i32* %byte.addr, align 4
  %call42 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %27, %struct.rtx_def* %28, i32 %29)
  store %struct.rtx_def* %call42, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.40, %if.then.28, %if.then.25
  %30 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %30
}

declare %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @ereal_from_int(%struct.realvaluetype*, i64, i64, i32) #1

declare void @real_value_truncate(%struct.realvaluetype* sret, i32, %struct.realvaluetype* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8, i32) #1

declare void @ereal_from_uint(%struct.realvaluetype*, i64, i64, i32) #1

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare i64 @trunc_int_for_mode(i64, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i32 @neg_double(i64, i64, i64*, i64*) #1

declare %struct.rtx_def* @immed_double_const(i64, i64, i32) #1

declare i32 @do_float_handler(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @simplify_unary_real(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %d = alloca %struct.realvaluetype, align 8
  %args = alloca %struct.simplify_unary_real_args*, align 8
  %u = alloca %union.real_extract, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %tmp13 = alloca %struct.realvaluetype, align 8
  %tmp16 = alloca %struct.realvaluetype, align 8
  %tmp19 = alloca %struct.realvaluetype, align 8
  %tmp21 = alloca %struct.realvaluetype, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.simplify_unary_real_args*
  store %struct.simplify_unary_real_args* %1, %struct.simplify_unary_real_args** %args, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = bitcast %union.real_extract* %u to i8*
  %3 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %operand = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %operand, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %5 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 24, i32 8, i1 false)
  %d1 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %6 = bitcast %struct.realvaluetype* %d to i8*
  %7 = bitcast %struct.realvaluetype* %d1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %want_integer = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %8, i32 0, i32 4
  %9 = load i8, i8* %want_integer, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %10 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %code = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %10, i32 0, i32 3
  %11 = load i32, i32* %code, align 4
  switch i32 %11, label %sw.default [
    i32 126, label %sw.bb
    i32 128, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then
  %call = call i64 @efixi(%struct.realvaluetype* byval align 8 %d)
  store i64 %call, i64* %i, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %call3 = call i64 @efixui(%struct.realvaluetype* byval align 8 %d)
  store i64 %call3, i64* %i, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 380, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.simplify_unary_real, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %mode = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %13, i32 0, i32 2
  %14 = load i32, i32* %mode, align 4
  %call4 = call i64 @trunc_int_for_mode(i64 %12, i32 %14)
  %call5 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call4)
  %15 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %result = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %15, i32 0, i32 1
  store %struct.rtx_def* %call5, %struct.rtx_def** %result, align 8
  br label %if.end

if.else:                                          ; preds = %do.end
  %16 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %code6 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %16, i32 0, i32 3
  %17 = load i32, i32* %code6, align 4
  switch i32 %17, label %sw.default.22 [
    i32 130, label %sw.bb.7
    i32 129, label %sw.bb.9
    i32 77, label %sw.bb.12
    i32 124, label %sw.bb.14
    i32 123, label %sw.bb.17
    i32 126, label %sw.bb.18
    i32 128, label %sw.bb.20
  ]

sw.bb.7:                                          ; preds = %if.else
  %18 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %result8 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %18, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %result8, align 8
  br label %if.end

sw.bb.9:                                          ; preds = %if.else
  %call10 = call i32 @target_negative(%struct.realvaluetype* byval align 8 %d)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.9
  call void @ereal_negate(%struct.realvaluetype* sret %tmp, %struct.realvaluetype* byval align 8 %d)
  %19 = bitcast %struct.realvaluetype* %d to i8*
  %20 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 24, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.9
  %21 = bitcast %struct.realvaluetype* %d to i8*
  %22 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 24, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %sw.epilog.23

sw.bb.12:                                         ; preds = %if.else
  call void @ereal_negate(%struct.realvaluetype* sret %tmp13, %struct.realvaluetype* byval align 8 %d)
  %23 = bitcast %struct.realvaluetype* %d to i8*
  %24 = bitcast %struct.realvaluetype* %tmp13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false)
  br label %sw.epilog.23

sw.bb.14:                                         ; preds = %if.else
  %25 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %mode15 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %25, i32 0, i32 2
  %26 = load i32, i32* %mode15, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp16, i32 %26, %struct.realvaluetype* byval align 8 %d)
  %27 = bitcast %struct.realvaluetype* %d to i8*
  %28 = bitcast %struct.realvaluetype* %tmp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 8, i1 false)
  br label %sw.epilog.23

sw.bb.17:                                         ; preds = %if.else
  br label %sw.epilog.23

sw.bb.18:                                         ; preds = %if.else
  call void @etrunci(%struct.realvaluetype* sret %tmp19, %struct.realvaluetype* byval align 8 %d)
  %29 = bitcast %struct.realvaluetype* %d to i8*
  %30 = bitcast %struct.realvaluetype* %tmp19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 24, i32 8, i1 false)
  br label %sw.epilog.23

sw.bb.20:                                         ; preds = %if.else
  call void @etruncui(%struct.realvaluetype* sret %tmp21, %struct.realvaluetype* byval align 8 %d)
  %31 = bitcast %struct.realvaluetype* %d to i8*
  %32 = bitcast %struct.realvaluetype* %tmp21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 24, i32 8, i1 false)
  br label %sw.epilog.23

sw.default.22:                                    ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.simplify_unary_real, i32 0, i32 0)) #4
  unreachable

sw.epilog.23:                                     ; preds = %sw.bb.20, %sw.bb.18, %sw.bb.17, %sw.bb.14, %sw.bb.12, %cond.end
  %33 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %mode24 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %33, i32 0, i32 2
  %34 = load i32, i32* %mode24, align 4
  %call25 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %d, i32 %34)
  %35 = load %struct.simplify_unary_real_args*, %struct.simplify_unary_real_args** %args, align 8
  %result26 = getelementptr inbounds %struct.simplify_unary_real_args, %struct.simplify_unary_real_args* %35, i32 0, i32 1
  store %struct.rtx_def* %call25, %struct.rtx_def** %result26, align 8
  br label %if.end

if.end:                                           ; preds = %sw.bb.7, %sw.epilog.23, %sw.epilog
  ret void
}

declare i32 @reversed_comparison_code(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @simplify_binary_real(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f0 = alloca %struct.realvaluetype, align 8
  %f1 = alloca %struct.realvaluetype, align 8
  %value = alloca %struct.realvaluetype, align 8
  %args = alloca %struct.simplify_binary_real_args*, align 8
  %u = alloca %union.real_extract, align 8
  %u2 = alloca %union.real_extract, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %tmp9 = alloca %struct.realvaluetype, align 8
  %tmp11 = alloca %struct.realvaluetype, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.simplify_binary_real_args*
  store %struct.simplify_binary_real_args* %1, %struct.simplify_binary_real_args** %args, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = bitcast %union.real_extract* %u to i8*
  %3 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %trueop0 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %trueop0, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %5 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 24, i32 8, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %6 = bitcast %struct.realvaluetype* %f0 to i8*
  %7 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %8 = bitcast %union.real_extract* %u2 to i8*
  %9 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %trueop1 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %trueop1, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtwint5 = bitcast %union.rtunion_def* %arrayidx4 to i64*
  %11 = bitcast i64* %rtwint5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %11, i64 24, i32 8, i1 false)
  %d6 = bitcast %union.real_extract* %u2 to %struct.realvaluetype*
  %12 = bitcast %struct.realvaluetype* %f1 to i8*
  %13 = bitcast %struct.realvaluetype* %d6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.1
  %14 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %mode = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %14, i32 0, i32 4
  %15 = load i32, i32* %mode, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp, i32 %15, %struct.realvaluetype* byval align 8 %f0)
  %16 = bitcast %struct.realvaluetype* %f0 to i8*
  %17 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false)
  %18 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %mode8 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %18, i32 0, i32 4
  %19 = load i32, i32* %mode8, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp9, i32 %19, %struct.realvaluetype* byval align 8 %f1)
  %20 = bitcast %struct.realvaluetype* %f1 to i8*
  %21 = bitcast %struct.realvaluetype* %tmp9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 24, i32 8, i1 false)
  %22 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %code = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %22, i32 0, i32 3
  %23 = load i32, i32* %code, align 4
  %call = call i32 @rtx_to_tree_code(i32 %23)
  call void @earith(%struct.realvaluetype* %value, i32 %call, %struct.realvaluetype* %f0, %struct.realvaluetype* %f1)
  %24 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %mode10 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %24, i32 0, i32 4
  %25 = load i32, i32* %mode10, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp11, i32 %25, %struct.realvaluetype* byval align 8 %value)
  %26 = bitcast %struct.realvaluetype* %value to i8*
  %27 = bitcast %struct.realvaluetype* %tmp11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 24, i32 8, i1 false)
  %28 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %mode12 = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %28, i32 0, i32 4
  %29 = load i32, i32* %mode12, align 4
  %call13 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %value, i32 %29)
  %30 = load %struct.simplify_binary_real_args*, %struct.simplify_binary_real_args** %args, align 8
  %result = getelementptr inbounds %struct.simplify_binary_real_args, %struct.simplify_binary_real_args* %30, i32 0, i32 2
  store %struct.rtx_def* %call13, %struct.rtx_def** %result, align 8
  ret void
}

declare i32 @add_double(i64, i64, i64, i64, i64*, i64*) #1

declare i32 @mul_double(i64, i64, i64, i64, i64*, i64*) #1

declare void @rshift_double(i64, i64, i64, i32, i64*, i64*, i32) #1

declare void @lshift_double(i64, i64, i64, i32, i64*, i64*, i32) #1

declare void @lrotate_double(i64, i64, i64, i32, i64*, i64*) #1

declare void @rrotate_double(i64, i64, i64, i32, i64*, i64*) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @neg_const_int(i32 %mode, %struct.rtx_def* %i) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %i.addr = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %i, %struct.rtx_def** %i.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %i.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %1 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 0, %1
  %2 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %sub, i32 %2)
  %call1 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call)
  ret %struct.rtx_def* %call1
}

; Function Attrs: nounwind uwtable
define internal void @simplify_binary_is2orm1(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %d = alloca %struct.realvaluetype, align 8
  %args = alloca %struct.simplify_binary_is2orm1_args*, align 8
  %u = alloca %union.real_extract, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.simplify_binary_is2orm1_args*
  store %struct.simplify_binary_is2orm1_args* %1, %struct.simplify_binary_is2orm1_args** %args, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = bitcast %union.real_extract* %u to i8*
  %3 = load %struct.simplify_binary_is2orm1_args*, %struct.simplify_binary_is2orm1_args** %args, align 8
  %value = getelementptr inbounds %struct.simplify_binary_is2orm1_args, %struct.simplify_binary_is2orm1_args* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %5 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %5, i64 24, i32 8, i1 false)
  %d1 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %6 = bitcast %struct.realvaluetype* %d to i8*
  %7 = bitcast %struct.realvaluetype* %d1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %d, %struct.realvaluetype* byval align 8 @dconst2)
  %cmp = icmp eq i32 %call, 0
  %8 = load %struct.simplify_binary_is2orm1_args*, %struct.simplify_binary_is2orm1_args** %args, align 8
  %is_2 = getelementptr inbounds %struct.simplify_binary_is2orm1_args, %struct.simplify_binary_is2orm1_args* %8, i32 0, i32 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %is_2, align 1
  %call2 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %d, %struct.realvaluetype* byval align 8 @dconstm1)
  %cmp3 = icmp eq i32 %call2, 0
  %9 = load %struct.simplify_binary_is2orm1_args*, %struct.simplify_binary_is2orm1_args** %args, align 8
  %is_m1 = getelementptr inbounds %struct.simplify_binary_is2orm1_args, %struct.simplify_binary_is2orm1_args* %9, i32 0, i32 2
  %frombool4 = zext i1 %cmp3 to i8
  store i8 %frombool4, i8* %is_m1, align 1
  ret void
}

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_lowpart_common(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_lowpart_SUBREG(i32, %struct.rtx_def*) #1

declare i32 @ereal_cmp(%struct.realvaluetype* byval align 8, %struct.realvaluetype* byval align 8) #1

declare void @earith(%struct.realvaluetype*, i32, %struct.realvaluetype*, %struct.realvaluetype*) #1

declare i32 @rtx_to_tree_code(i32) #1

declare i32 @signed_condition(i32) #1

; Function Attrs: nounwind uwtable
define internal void @check_fold_consts(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca %struct.cfc_args*, align 8
  %d0 = alloca %struct.realvaluetype, align 8
  %d1 = alloca %struct.realvaluetype, align 8
  %u = alloca %union.real_extract, align 8
  %u2 = alloca %union.real_extract, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.cfc_args*
  store %struct.cfc_args* %1, %struct.cfc_args** %args, align 8
  %2 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %unordered = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %2, i32 0, i32 5
  store i32 1, i32* %unordered, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = bitcast %union.real_extract* %u to i8*
  %4 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %op0 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %6 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %6, i64 24, i32 8, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %7 = bitcast %struct.realvaluetype* %d0 to i8*
  %8 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %9 = bitcast %union.real_extract* %u2 to i8*
  %10 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %op1 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtwint5 = bitcast %union.rtunion_def* %arrayidx4 to i64*
  %12 = bitcast i64* %rtwint5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %12, i64 24, i32 8, i1 false)
  %d6 = bitcast %union.real_extract* %u2 to %struct.realvaluetype*
  %13 = bitcast %struct.realvaluetype* %d1 to i8*
  %14 = bitcast %struct.realvaluetype* %d6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 24, i32 8, i1 false)
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.1
  %call = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.7
  %call8 = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end.7
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call10 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %d0, %struct.realvaluetype* byval align 8 %d1)
  %cmp = icmp eq i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %15 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %equal = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %15, i32 0, i32 2
  store i32 %conv, i32* %equal, align 4
  %call11 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %d0, %struct.realvaluetype* byval align 8 %d1)
  %cmp12 = icmp eq i32 %call11, -1
  %conv13 = zext i1 %cmp12 to i32
  %16 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %op0lt = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %16, i32 0, i32 3
  store i32 %conv13, i32* %op0lt, align 4
  %call14 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %d1, %struct.realvaluetype* byval align 8 %d0)
  %cmp15 = icmp eq i32 %call14, -1
  %conv16 = zext i1 %cmp15 to i32
  %17 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %op1lt = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %17, i32 0, i32 4
  store i32 %conv16, i32* %op1lt, align 4
  %18 = load %struct.cfc_args*, %struct.cfc_args** %args, align 8
  %unordered17 = getelementptr inbounds %struct.cfc_args, %struct.cfc_args* %18, i32 0, i32 5
  store i32 0, i32* %unordered17, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @subreg_lowpart_offset(i32, i32) #1

declare %struct.rtx_def* @gen_lowpart_if_possible(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @constant_subword(%struct.rtx_def*, i32, i32) #1

declare i32 @mode_for_size(i32, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_SUBREG(i32, %struct.rtx_def*, i32) #1

declare i32 @subreg_hard_regno(%struct.rtx_def*, i32) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare i32 @mode_dependent_address_p(%struct.rtx_def*) #1

declare i32 @have_insn_for(i32, i32) #1

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_rtx(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %mode = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  store i32 %bf.clear2, i32* %mode, align 4
  %4 = load i32, i32* %code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 49, label %sw.bb
    i32 99, label %sw.bb.10
    i32 50, label %sw.bb.37
    i32 51, label %sw.bb.45
    i32 98, label %sw.bb.45
    i32 60, label %sw.bb.62
    i32 120, label %sw.bb.89
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %code, align 4
  %7 = load i32, i32* %mode, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load7 = load i32, i32* %12, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 16
  %bf.clear9 = and i32 %bf.lshr8, 255
  %call = call %struct.rtx_def* @simplify_unary_operation(i32 %6, i32 %7, %struct.rtx_def* %9, i32 %bf.clear9)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %call17 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %14, %struct.rtx_def* %16)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.10
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %tem, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  store %struct.rtx_def* %20, %struct.rtx_def** %rtx26, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  store %struct.rtx_def* %22, %struct.rtx_def** %rtx29, align 8
  %24 = load i32, i32* %code, align 4
  %25 = load i32, i32* %mode, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %call36 = call %struct.rtx_def* @simplify_binary_operation(i32 %24, i32 %25, %struct.rtx_def* %27, %struct.rtx_def* %29)
  store %struct.rtx_def* %call36, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.10
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %entry, %if.end
  %30 = load i32, i32* %code, align 4
  %31 = load i32, i32* %mode, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %call44 = call %struct.rtx_def* @simplify_binary_operation(i32 %30, i32 %31, %struct.rtx_def* %33, %struct.rtx_def* %35)
  store %struct.rtx_def* %call44, %struct.rtx_def** %retval
  br label %return

sw.bb.45:                                         ; preds = %entry, %entry
  %36 = load i32, i32* %code, align 4
  %37 = load i32, i32* %mode, align 4
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load49 = load i32, i32* %40, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 16
  %bf.clear51 = and i32 %bf.lshr50, 255
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 2
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %call61 = call %struct.rtx_def* @simplify_ternary_operation(i32 %36, i32 %37, i32 %bf.clear51, %struct.rtx_def* %42, %struct.rtx_def* %44, %struct.rtx_def* %46)
  store %struct.rtx_def* %call61, %struct.rtx_def** %retval
  br label %return

sw.bb.62:                                         ; preds = %entry
  %47 = load i32, i32* %code, align 4
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load66 = load i32, i32* %50, align 8
  %bf.lshr67 = lshr i32 %bf.load66, 16
  %bf.clear68 = and i32 %bf.lshr67, 255
  %cmp = icmp ne i32 %bf.clear68, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.62
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load73 = load i32, i32* %53, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 16
  %bf.clear75 = and i32 %bf.lshr74, 255
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.62
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 1
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load79 = load i32, i32* %56, align 8
  %bf.lshr80 = lshr i32 %bf.load79, 16
  %bf.clear81 = and i32 %bf.lshr80, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %bf.clear75, %cond.true ], [ %bf.clear81, %cond.false ]
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 1
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %call88 = call %struct.rtx_def* @simplify_relational_operation(i32 %47, i32 %cond, %struct.rtx_def* %58, %struct.rtx_def* %60)
  store %struct.rtx_def* %call88, %struct.rtx_def** %retval
  br label %return

sw.bb.89:                                         ; preds = %entry
  %61 = load i32, i32* %code, align 4
  %cmp90 = icmp eq i32 %61, 63
  br i1 %cmp90, label %if.then.92, label %if.end.105

if.then.92:                                       ; preds = %sw.bb.89
  %62 = load i32, i32* %mode, align 4
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load99 = load i32, i32* %67, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx103 to i32*
  %69 = load i32, i32* %rtuint, align 4
  %call104 = call %struct.rtx_def* @simplify_gen_subreg(i32 %62, %struct.rtx_def* %64, i32 %bf.clear101, i32 %69)
  store %struct.rtx_def* %call104, %struct.rtx_def** %retval
  br label %return

if.end.105:                                       ; preds = %sw.bb.89
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.105, %if.then.92, %cond.end, %sw.bb.45, %sw.bb.37, %if.then, %sw.bb
  %70 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %70
}

declare i64 @efixi(%struct.realvaluetype* byval align 8) #1

declare i64 @efixui(%struct.realvaluetype* byval align 8) #1

declare i32 @target_negative(%struct.realvaluetype* byval align 8) #1

declare void @ereal_negate(%struct.realvaluetype* sret, %struct.realvaluetype* byval align 8) #1

declare void @etrunci(%struct.realvaluetype* sret, %struct.realvaluetype* byval align 8) #1

declare void @etruncui(%struct.realvaluetype* sret, %struct.realvaluetype* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @specqsort(i8*, i32, i32, i32 (...)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @simplify_plus_minus_op_data_cmp(i8* %p1, i8* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %d1 = alloca %struct.simplify_plus_minus_op_data*, align 8
  %d2 = alloca %struct.simplify_plus_minus_op_data*, align 8
  %val = alloca i32, align 4
  %op128 = alloca %struct.rtx_def*, align 8
  %op2 = alloca %struct.rtx_def*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = bitcast i8* %0 to %struct.simplify_plus_minus_op_data*
  store %struct.simplify_plus_minus_op_data* %1, %struct.simplify_plus_minus_op_data** %d1, align 8
  %2 = load i8*, i8** %p2.addr, align 8
  %3 = bitcast i8* %2 to %struct.simplify_plus_minus_op_data*
  store %struct.simplify_plus_minus_op_data* %3, %struct.simplify_plus_minus_op_data** %d2, align 8
  %4 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call = call i32 @commutative_operand_precedence(%struct.rtx_def* %5)
  %6 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op1 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call2 = call i32 @commutative_operand_precedence(%struct.rtx_def* %7)
  %sub = sub nsw i32 %call, %call2
  store i32 %sub, i32* %val, align 4
  %8 = load i32, i32* %val, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %val, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op3 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %10, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op3, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op4 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op4, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load5 = load i32, i32* %15, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 61
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %16 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op9 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %16, i32 0, i32 0
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op9, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %18 = load i32, i32* %rtuint, align 4
  %19 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op10 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %19, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %21 = load i32, i32* %rtuint13, align 4
  %sub14 = sub i32 %18, %21
  store i32 %sub14, i32* %val, align 4
  %22 = load i32, i32* %val, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.8
  %23 = load i32, i32* %val, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.8
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true, %if.end
  %24 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op18 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %24, i32 0, i32 0
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op18, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load19 = load i32, i32* %26, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 66
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.61

land.lhs.true.22:                                 ; preds = %if.else
  %27 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op23 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %27, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op23, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load24 = load i32, i32* %29, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 66
  br i1 %cmp26, label %if.then.27, label %if.else.61

if.then.27:                                       ; preds = %land.lhs.true.22
  %30 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op29 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %30, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op29, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %op128, align 8
  %33 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op32 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %op2, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op128, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load36 = load i32, i32* %37, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 68
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.52

land.lhs.true.39:                                 ; preds = %if.then.27
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load40 = load i32, i32* %39, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 68
  br i1 %cmp42, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %land.lhs.true.39
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op128, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx45 to i8**
  %41 = load i8*, i8** %rtstr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtstr48 = bitcast %union.rtunion_def* %arrayidx47 to i8**
  %43 = load i8*, i8** %rtstr48, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %val, align 4
  %44 = load i32, i32* %val, align 4
  %tobool49 = icmp ne i32 %44, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.43
  %45 = load i32, i32* %val, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.43
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.39, %if.then.27
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op128, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load53 = load i32, i32* %47, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load55 = load i32, i32* %49, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %sub57 = sub i32 %bf.clear54, %bf.clear56
  store i32 %sub57, i32* %val, align 4
  %50 = load i32, i32* %val, align 4
  %tobool58 = icmp ne i32 %50, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.52
  %51 = load i32, i32* %val, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.52
  br label %if.end.72

if.else.61:                                       ; preds = %land.lhs.true.22, %if.else
  %52 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op62 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %52, i32 0, i32 0
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op62, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load63 = load i32, i32* %54, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %55 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op65 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %55, i32 0, i32 0
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op65, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load66 = load i32, i32* %57, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %sub68 = sub i32 %bf.clear64, %bf.clear67
  store i32 %sub68, i32* %val, align 4
  %58 = load i32, i32* %val, align 4
  %tobool69 = icmp ne i32 %58, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.else.61
  %59 = load i32, i32* %val, align 4
  store i32 %59, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.else.61
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.60
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.17
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %60 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d1, align 8
  %op74 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %60, i32 0, i32 0
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op74, align 8
  call void @debug_rtx(%struct.rtx_def* %61)
  %62 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %d2, align 8
  %op75 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %62, i32 0, i32 0
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op75, align 8
  call void @debug_rtx(%struct.rtx_def* %63)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.70, %if.then.59, %if.then.50, %if.then.16, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare i32 @commutative_operand_precedence(%struct.rtx_def*) #1

declare void @warning(i8*, ...) #1

declare void @debug_rtx(%struct.rtx_def*) #1

declare i32 @target_isnan(%struct.realvaluetype* byval align 8) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
