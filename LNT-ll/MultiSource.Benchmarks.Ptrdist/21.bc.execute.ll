; ModuleID = './MultiSource.Benchmarks.Ptrdist/21.bc.execute.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_function = type { i8, [16 x i8*], i32, %struct.bc_label_group*, %struct.arg_list*, %struct.arg_list* }
%struct.bc_label_group = type { [64 x i64], %struct.bc_label_group* }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct.program_counter = type { i32, i32 }
%struct.estack_rec = type { %struct.bc_struct*, %struct.estack_rec* }
%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.fstack_rec = type { i32, %struct.fstack_rec* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@had_sigint = common global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"interrupted execution\00", align 1
@functions = external global %struct.bc_function*, align 8
@pc = external global %struct.program_counter, align 4
@runtime_error = external global i8, align 1
@interactive = external global i8, align 1
@ex_stack = external global %struct.estack_rec*, align 8
@c_code = external global i8, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Function %s not defined.\00", align 1
@f_names = external global i8**, align 8
@i_base = external global i32, align 4
@fn_stack = external global %struct.fstack_rec*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Return from main program.\00", align 1
@o_base = external global i32, align 4
@scale = external global i32, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Square root of a negative number\00", align 1
@_zero_ = external global %struct.bc_struct*, align 8
@_one_ = external global %struct.bc_struct*, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Modulo by zero\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"bad instruction: inst=%c\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Interruption completed.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @stop_execution(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store i32 1, i32* @had_sigint, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @rt_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define zeroext i8 @byte(%struct.program_counter* %pc) #0 {
entry:
  %pc.addr = alloca %struct.program_counter*, align 8
  %seg = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.program_counter* %pc, %struct.program_counter** %pc.addr, align 8
  %0 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %pc_addr = getelementptr inbounds %struct.program_counter, %struct.program_counter* %0, i32 0, i32 1
  %1 = load i32, i32* %pc_addr, align 4
  %shr = ashr i32 %1, 10
  store i32 %shr, i32* %seg, align 4
  %2 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %pc_addr1 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %2, i32 0, i32 1
  %3 = load i32, i32* %pc_addr1, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %pc_addr1, align 4
  %rem = srem i32 %3, 1024
  store i32 %rem, i32* %offset, align 4
  %4 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %seg, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %pc_func = getelementptr inbounds %struct.program_counter, %struct.program_counter* %6, i32 0, i32 0
  %7 = load i32, i32* %pc_func, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %8, i64 %idxprom3
  %f_body = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [16 x i8*], [16 x i8*]* %f_body, i32 0, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx5, align 1
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define void @execute() #0 {
entry:
  %label_num = alloca i32, align 4
  %l_gp = alloca i32, align 4
  %l_off = alloca i32, align 4
  %gp = alloca %struct.bc_label_group*, align 8
  %inst = alloca i8, align 1
  %ch = alloca i8, align 1
  %new_func = alloca i32, align 4
  %var_name = alloca i32, align 4
  %const_base = alloca i32, align 4
  %temp_num = alloca %struct.bc_struct*, align 8
  %auto_list = alloca %struct.arg_list*, align 8
  %temp = alloca %struct.bc_struct*, align 8
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  store i8 0, i8* @runtime_error, align 1
  call void @init_num(%struct.bc_struct** %temp_num)
  %0 = load i8, i8* @interactive, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call void (i32)* @signal(i32 2, void (i32)* @stop_execution) #5
  store i32 0, i32* @had_sigint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.488, %if.end
  %1 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx = getelementptr inbounds %struct.bc_function, %struct.bc_function* %3, i64 %idxprom
  %f_code_size = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %f_code_size, align 4
  %cmp = icmp slt i32 %1, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8, i8* @runtime_error, align 1
  %tobool1 = icmp ne i8 %5, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end.489

while.body:                                       ; preds = %land.end
  %call2 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %call2, i8* %inst, align 1
  %7 = load i8, i8* %inst, align 1
  %conv = sext i8 %7 to i32
  switch i32 %conv, label %sw.default.486 [
    i32 65, label %sw.bb
    i32 66, label %sw.bb.12
    i32 90, label %sw.bb.12
    i32 74, label %sw.bb.17
    i32 67, label %sw.bb.49
    i32 68, label %sw.bb.73
    i32 75, label %sw.bb.75
    i32 76, label %sw.bb.85
    i32 77, label %sw.bb.98
    i32 79, label %sw.bb.112
    i32 82, label %sw.bb.143
    i32 83, label %sw.bb.157
    i32 84, label %sw.bb.170
    i32 87, label %sw.bb.173
    i32 80, label %sw.bb.173
    i32 99, label %sw.bb.184
    i32 100, label %sw.bb.225
    i32 104, label %sw.bb.238
    i32 105, label %sw.bb.239
    i32 108, label %sw.bb.252
    i32 110, label %sw.bb.265
    i32 112, label %sw.bb.268
    i32 115, label %sw.bb.269
    i32 119, label %sw.bb.282
    i32 120, label %sw.bb.294
    i32 48, label %sw.bb.304
    i32 49, label %sw.bb.305
    i32 33, label %sw.bb.306
    i32 38, label %sw.bb.309
    i32 124, label %sw.bb.326
    i32 43, label %sw.bb.341
    i32 45, label %sw.bb.349
    i32 42, label %sw.bb.357
    i32 47, label %sw.bb.365
    i32 37, label %sw.bb.379
    i32 94, label %sw.bb.394
    i32 61, label %sw.bb.414
    i32 35, label %sw.bb.426
    i32 60, label %sw.bb.438
    i32 123, label %sw.bb.450
    i32 62, label %sw.bb.462
    i32 125, label %sw.bb.474
  ]

sw.bb:                                            ; preds = %while.body
  %call3 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv4 = zext i8 %call3 to i32
  store i32 %conv4, i32* %var_name, align 4
  %8 = load i32, i32* %var_name, align 4
  %and = and i32 %8, 128
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %sw.bb
  %9 = load i32, i32* %var_name, align 4
  %shl = shl i32 %9, 8
  %and8 = and i32 %shl, 127
  %call9 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv10 = zext i8 %call9 to i32
  %add = add nsw i32 %and8, %conv10
  store i32 %add, i32* %var_name, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %sw.bb
  %10 = load i32, i32* %var_name, align 4
  call void @incr_array(i32 %10)
  br label %sw.epilog.488

sw.bb.12:                                         ; preds = %while.body, %while.body
  %11 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %11, i32 0, i32 0
  %12 = load %struct.bc_struct*, %struct.bc_struct** %s_num, align 8
  %call13 = call signext i8 @is_zero(%struct.bc_struct* %12)
  %tobool14 = icmp ne i8 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot15 to i32
  %conv16 = trunc i32 %lnot.ext to i8
  store i8 %conv16, i8* @c_code, align 1
  call void @pop()
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %while.body, %sw.bb.12
  %call18 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv19 = zext i8 %call18 to i32
  store i32 %conv19, i32* %label_num, align 4
  %call20 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv21 = zext i8 %call20 to i32
  %shl22 = shl i32 %conv21, 8
  %13 = load i32, i32* %label_num, align 4
  %add23 = add nsw i32 %13, %shl22
  store i32 %add23, i32* %label_num, align 4
  %14 = load i8, i8* %inst, align 1
  %conv24 = sext i8 %14 to i32
  %cmp25 = icmp eq i32 %conv24, 74
  br i1 %cmp25, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.17
  %15 = load i8, i8* %inst, align 1
  %conv27 = sext i8 %15 to i32
  %cmp28 = icmp eq i32 %conv27, 66
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false.32

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load i8, i8* @c_code, align 1
  %conv30 = sext i8 %16 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %if.then.38, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %17 = load i8, i8* %inst, align 1
  %conv33 = sext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 90
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.48

land.lhs.true.36:                                 ; preds = %lor.lhs.false.32
  %18 = load i8, i8* @c_code, align 1
  %tobool37 = icmp ne i8 %18, 0
  br i1 %tobool37, label %if.end.48, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.36, %land.lhs.true, %sw.bb.17
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom39 = sext i32 %19 to i64
  %20 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx40 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %20, i64 %idxprom39
  %f_label = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx40, i32 0, i32 3
  %21 = load %struct.bc_label_group*, %struct.bc_label_group** %f_label, align 8
  store %struct.bc_label_group* %21, %struct.bc_label_group** %gp, align 8
  %22 = load i32, i32* %label_num, align 4
  %shr = ashr i32 %22, 6
  store i32 %shr, i32* %l_gp, align 4
  %23 = load i32, i32* %label_num, align 4
  %rem = srem i32 %23, 64
  store i32 %rem, i32* %l_off, align 4
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.44, %if.then.38
  %24 = load i32, i32* %l_gp, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %l_gp, align 4
  %cmp42 = icmp sgt i32 %24, 0
  br i1 %cmp42, label %while.body.44, label %while.end

while.body.44:                                    ; preds = %while.cond.41
  %25 = load %struct.bc_label_group*, %struct.bc_label_group** %gp, align 8
  %l_next = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %25, i32 0, i32 1
  %26 = load %struct.bc_label_group*, %struct.bc_label_group** %l_next, align 8
  store %struct.bc_label_group* %26, %struct.bc_label_group** %gp, align 8
  br label %while.cond.41

while.end:                                        ; preds = %while.cond.41
  %27 = load i32, i32* %l_off, align 4
  %idxprom45 = sext i32 %27 to i64
  %28 = load %struct.bc_label_group*, %struct.bc_label_group** %gp, align 8
  %l_adrs = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %28, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [64 x i64], [64 x i64]* %l_adrs, i32 0, i64 %idxprom45
  %29 = load i64, i64* %arrayidx46, align 8
  %conv47 = trunc i64 %29 to i32
  store i32 %conv47, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  br label %if.end.48

if.end.48:                                        ; preds = %while.end, %land.lhs.true.36, %lor.lhs.false.32
  br label %sw.epilog.488

sw.bb.49:                                         ; preds = %while.body
  %call50 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv51 = zext i8 %call50 to i32
  store i32 %conv51, i32* %new_func, align 4
  %30 = load i32, i32* %new_func, align 4
  %and52 = and i32 %30, 128
  %cmp53 = icmp ne i32 %and52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.61

if.then.55:                                       ; preds = %sw.bb.49
  %31 = load i32, i32* %new_func, align 4
  %shl56 = shl i32 %31, 8
  %and57 = and i32 %shl56, 127
  %call58 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv59 = zext i8 %call58 to i32
  %add60 = add nsw i32 %and57, %conv59
  store i32 %add60, i32* %new_func, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.55, %sw.bb.49
  %32 = load i32, i32* %new_func, align 4
  %idxprom62 = sext i32 %32 to i64
  %33 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx63 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %33, i64 %idxprom62
  %f_defined = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx63, i32 0, i32 0
  %34 = load i8, i8* %f_defined, align 1
  %tobool64 = icmp ne i8 %34, 0
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %if.end.61
  %35 = load i32, i32* %new_func, align 4
  %idxprom66 = sext i32 %35 to i64
  %36 = load i8**, i8*** @f_names, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %36, i64 %idxprom66
  %37 = load i8*, i8** %arrayidx67, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* %37)
  br label %sw.epilog.488

if.end.68:                                        ; preds = %if.end.61
  %38 = load i32, i32* %new_func, align 4
  call void @process_params(%struct.program_counter* @pc, i32 %38)
  %39 = load i32, i32* %new_func, align 4
  %idxprom69 = sext i32 %39 to i64
  %40 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx70 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %40, i64 %idxprom69
  %f_autos = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx70, i32 0, i32 5
  %41 = load %struct.arg_list*, %struct.arg_list** %f_autos, align 8
  store %struct.arg_list* %41, %struct.arg_list** %auto_list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.68
  %42 = load %struct.arg_list*, %struct.arg_list** %auto_list, align 8
  %cmp71 = icmp ne %struct.arg_list* %42, null
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.arg_list*, %struct.arg_list** %auto_list, align 8
  %av_name = getelementptr inbounds %struct.arg_list, %struct.arg_list* %43, i32 0, i32 0
  %44 = load i32, i32* %av_name, align 4
  call void @auto_var(i32 %44)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load %struct.arg_list*, %struct.arg_list** %auto_list, align 8
  %next = getelementptr inbounds %struct.arg_list, %struct.arg_list* %45, i32 0, i32 1
  %46 = load %struct.arg_list*, %struct.arg_list** %next, align 8
  store %struct.arg_list* %46, %struct.arg_list** %auto_list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  call void @fpush(i32 %47)
  %48 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  call void @fpush(i32 %48)
  %49 = load i32, i32* @i_base, align 4
  call void @fpush(i32 %49)
  %50 = load i32, i32* %new_func, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  br label %sw.epilog.488

sw.bb.73:                                         ; preds = %while.body
  %51 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num74 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %51, i32 0, i32 0
  %52 = load %struct.bc_struct*, %struct.bc_struct** %s_num74, align 8
  call void @push_copy(%struct.bc_struct* %52)
  br label %sw.epilog.488

sw.bb.75:                                         ; preds = %while.body
  %53 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %cmp76 = icmp eq i32 %53, 0
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %sw.bb.75
  %54 = load i32, i32* @i_base, align 4
  store i32 %54, i32* %const_base, align 4
  br label %if.end.79

if.else:                                          ; preds = %sw.bb.75
  %55 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %s_val = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %55, i32 0, i32 0
  %56 = load i32, i32* %s_val, align 4
  store i32 %56, i32* %const_base, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %if.then.78
  %57 = load i32, i32* %const_base, align 4
  %cmp80 = icmp eq i32 %57, 10
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.end.79
  call void @push_b10_const(%struct.program_counter* @pc)
  br label %if.end.84

if.else.83:                                       ; preds = %if.end.79
  %58 = load i32, i32* %const_base, align 4
  call void @push_constant(i8 ()* @prog_char, i32 %58)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  br label %sw.epilog.488

sw.bb.85:                                         ; preds = %while.body
  %call86 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv87 = zext i8 %call86 to i32
  store i32 %conv87, i32* %var_name, align 4
  %59 = load i32, i32* %var_name, align 4
  %and88 = and i32 %59, 128
  %cmp89 = icmp ne i32 %and88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %sw.bb.85
  %60 = load i32, i32* %var_name, align 4
  %shl92 = shl i32 %60, 8
  %and93 = and i32 %shl92, 127
  %call94 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv95 = zext i8 %call94 to i32
  %add96 = add nsw i32 %and93, %conv95
  store i32 %add96, i32* %var_name, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %sw.bb.85
  %61 = load i32, i32* %var_name, align 4
  call void @load_array(i32 %61)
  br label %sw.epilog.488

sw.bb.98:                                         ; preds = %while.body
  %call99 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv100 = zext i8 %call99 to i32
  store i32 %conv100, i32* %var_name, align 4
  %62 = load i32, i32* %var_name, align 4
  %and101 = and i32 %62, 128
  %cmp102 = icmp ne i32 %and101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %sw.bb.98
  %63 = load i32, i32* %var_name, align 4
  %shl105 = shl i32 %63, 8
  %and106 = and i32 %shl105, 127
  %call107 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv108 = zext i8 %call107 to i32
  %add109 = add nsw i32 %and106, %conv108
  store i32 %add109, i32* %var_name, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %sw.bb.98
  %64 = load i32, i32* %var_name, align 4
  %conv111 = trunc i32 %64 to i8
  call void @decr_array(i8 signext %conv111)
  br label %sw.epilog.488

sw.bb.112:                                        ; preds = %while.body
  br label %while.cond.113

while.cond.113:                                   ; preds = %if.end.137, %sw.bb.112
  %call114 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %call114, i8* %ch, align 1
  %conv115 = sext i8 %call114 to i32
  %cmp116 = icmp ne i32 %conv115, 34
  br i1 %cmp116, label %while.body.118, label %while.end.138

while.body.118:                                   ; preds = %while.cond.113
  %65 = load i8, i8* %ch, align 1
  %conv119 = sext i8 %65 to i32
  %cmp120 = icmp ne i32 %conv119, 92
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %while.body.118
  %66 = load i8, i8* %ch, align 1
  call void @out_char(i8 signext %66)
  br label %if.end.137

if.else.123:                                      ; preds = %while.body.118
  %call124 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %call124, i8* %ch, align 1
  %67 = load i8, i8* %ch, align 1
  %conv125 = sext i8 %67 to i32
  %cmp126 = icmp eq i32 %conv125, 34
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.else.123
  br label %while.end.138

if.end.129:                                       ; preds = %if.else.123
  %68 = load i8, i8* %ch, align 1
  %conv130 = sext i8 %68 to i32
  switch i32 %conv130, label %sw.default [
    i32 110, label %sw.bb.131
    i32 116, label %sw.bb.132
    i32 114, label %sw.bb.133
    i32 98, label %sw.bb.134
    i32 102, label %sw.bb.135
    i32 92, label %sw.bb.136
  ]

sw.bb.131:                                        ; preds = %if.end.129
  call void @out_char(i8 signext 10)
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.129
  call void @out_char(i8 signext 9)
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.129
  call void @out_char(i8 signext 13)
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.end.129
  call void @out_char(i8 signext 7)
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.end.129
  call void @out_char(i8 signext 12)
  br label %sw.epilog

sw.bb.136:                                        ; preds = %if.end.129
  call void @out_char(i8 signext 92)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.129
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.136, %sw.bb.135, %sw.bb.134, %sw.bb.133, %sw.bb.132, %sw.bb.131
  br label %if.end.137

if.end.137:                                       ; preds = %sw.epilog, %if.then.122
  br label %while.cond.113

while.end.138:                                    ; preds = %if.then.128, %while.cond.113
  %69 = load i8, i8* @interactive, align 1
  %tobool139 = icmp ne i8 %69, 0
  br i1 %tobool139, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %while.end.138
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call141 = call i32 @fflush(%struct._IO_FILE* %70)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %while.end.138
  br label %sw.epilog.488

sw.bb.143:                                        ; preds = %while.body
  %71 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %cmp144 = icmp ne i32 %71, 0
  br i1 %cmp144, label %if.then.146, label %if.else.155

if.then.146:                                      ; preds = %sw.bb.143
  %72 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom147 = sext i32 %72 to i64
  %73 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx148 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %73, i64 %idxprom147
  %f_autos149 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx148, i32 0, i32 5
  %74 = load %struct.arg_list*, %struct.arg_list** %f_autos149, align 8
  call void @pop_vars(%struct.arg_list* %74)
  %75 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom150 = sext i32 %75 to i64
  %76 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx151 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %76, i64 %idxprom150
  %f_params = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx151, i32 0, i32 4
  %77 = load %struct.arg_list*, %struct.arg_list** %f_params, align 8
  call void @pop_vars(%struct.arg_list* %77)
  %call152 = call i32 @fpop()
  %call153 = call i32 @fpop()
  store i32 %call153, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %call154 = call i32 @fpop()
  store i32 %call154, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  br label %if.end.156

if.else.155:                                      ; preds = %sw.bb.143
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.155, %if.then.146
  br label %sw.epilog.488

sw.bb.157:                                        ; preds = %while.body
  %call158 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv159 = zext i8 %call158 to i32
  store i32 %conv159, i32* %var_name, align 4
  %78 = load i32, i32* %var_name, align 4
  %and160 = and i32 %78, 128
  %cmp161 = icmp ne i32 %and160, 0
  br i1 %cmp161, label %if.then.163, label %if.end.169

if.then.163:                                      ; preds = %sw.bb.157
  %79 = load i32, i32* %var_name, align 4
  %shl164 = shl i32 %79, 8
  %and165 = and i32 %shl164, 127
  %call166 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv167 = zext i8 %call166 to i32
  %add168 = add nsw i32 %and165, %conv167
  store i32 %add168, i32* %var_name, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.163, %sw.bb.157
  %80 = load i32, i32* %var_name, align 4
  call void @store_array(i32 %80)
  br label %sw.epilog.488

sw.bb.170:                                        ; preds = %while.body
  %81 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num171 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %81, i32 0, i32 0
  %82 = load %struct.bc_struct*, %struct.bc_struct** %s_num171, align 8
  %call172 = call signext i8 @is_zero(%struct.bc_struct* %82)
  store i8 %call172, i8* @c_code, align 1
  %83 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %83)
  br label %sw.epilog.488

sw.bb.173:                                        ; preds = %while.body, %while.body
  %84 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num174 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %84, i32 0, i32 0
  %85 = load %struct.bc_struct*, %struct.bc_struct** %s_num174, align 8
  %86 = load i32, i32* @o_base, align 4
  call void @out_num(%struct.bc_struct* %85, i32 %86, void (i32)* bitcast (void (i8)* @out_char to void (i32)*))
  %87 = load i8, i8* %inst, align 1
  %conv175 = sext i8 %87 to i32
  %cmp176 = icmp eq i32 %conv175, 87
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %sw.bb.173
  call void @out_char(i8 signext 10)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %sw.bb.173
  call void @store_var(i32 3)
  %88 = load i8, i8* @interactive, align 1
  %tobool180 = icmp ne i8 %88, 0
  br i1 %tobool180, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.end.179
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call182 = call i32 @fflush(%struct._IO_FILE* %89)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.end.179
  br label %sw.epilog.488

sw.bb.184:                                        ; preds = %while.body
  %call185 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv186 = zext i8 %call185 to i32
  store i32 %conv186, i32* %new_func, align 4
  %90 = load i32, i32* %new_func, align 4
  switch i32 %90, label %sw.epilog.224 [
    i32 76, label %sw.bb.187
    i32 83, label %sw.bb.213
    i32 82, label %sw.bb.217
    i32 73, label %sw.bb.223
  ]

sw.bb.187:                                        ; preds = %sw.bb.184
  %91 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num188 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %91, i32 0, i32 0
  %92 = load %struct.bc_struct*, %struct.bc_struct** %s_num188, align 8
  %n_len = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %92, i32 0, i32 1
  %93 = load i32, i32* %n_len, align 4
  %cmp189 = icmp eq i32 %93, 1
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.205

land.lhs.true.191:                                ; preds = %sw.bb.187
  %94 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num192 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %94, i32 0, i32 0
  %95 = load %struct.bc_struct*, %struct.bc_struct** %s_num192, align 8
  %n_scale = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %95, i32 0, i32 2
  %96 = load i32, i32* %n_scale, align 4
  %cmp193 = icmp ne i32 %96, 0
  br i1 %cmp193, label %land.lhs.true.195, label %if.else.205

land.lhs.true.195:                                ; preds = %land.lhs.true.191
  %97 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num196 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %97, i32 0, i32 0
  %98 = load %struct.bc_struct*, %struct.bc_struct** %s_num196, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %98, i32 0, i32 4
  %arrayidx197 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  %99 = load i8, i8* %arrayidx197, align 1
  %conv198 = sext i8 %99 to i32
  %cmp199 = icmp eq i32 %conv198, 0
  br i1 %cmp199, label %if.then.201, label %if.else.205

if.then.201:                                      ; preds = %land.lhs.true.195
  %100 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num202 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %100, i32 0, i32 0
  %101 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num203 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %101, i32 0, i32 0
  %102 = load %struct.bc_struct*, %struct.bc_struct** %s_num203, align 8
  %n_scale204 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %102, i32 0, i32 2
  %103 = load i32, i32* %n_scale204, align 4
  call void @int2num(%struct.bc_struct** %s_num202, i32 %103)
  br label %if.end.212

if.else.205:                                      ; preds = %land.lhs.true.195, %land.lhs.true.191, %sw.bb.187
  %104 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num206 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %104, i32 0, i32 0
  %105 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num207 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %105, i32 0, i32 0
  %106 = load %struct.bc_struct*, %struct.bc_struct** %s_num207, align 8
  %n_len208 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %106, i32 0, i32 1
  %107 = load i32, i32* %n_len208, align 4
  %108 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num209 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %108, i32 0, i32 0
  %109 = load %struct.bc_struct*, %struct.bc_struct** %s_num209, align 8
  %n_scale210 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %109, i32 0, i32 2
  %110 = load i32, i32* %n_scale210, align 4
  %add211 = add nsw i32 %107, %110
  call void @int2num(%struct.bc_struct** %s_num206, i32 %add211)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.205, %if.then.201
  br label %sw.epilog.224

sw.bb.213:                                        ; preds = %sw.bb.184
  %111 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num214 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %111, i32 0, i32 0
  %112 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num215 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %112, i32 0, i32 0
  %113 = load %struct.bc_struct*, %struct.bc_struct** %s_num215, align 8
  %n_scale216 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %113, i32 0, i32 2
  %114 = load i32, i32* %n_scale216, align 4
  call void @int2num(%struct.bc_struct** %s_num214, i32 %114)
  br label %sw.epilog.224

sw.bb.217:                                        ; preds = %sw.bb.184
  %115 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num218 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %115, i32 0, i32 0
  %116 = load i32, i32* @scale, align 4
  %call219 = call i32 @bc_sqrt(%struct.bc_struct** %s_num218, i32 %116)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.end.222, label %if.then.221

if.then.221:                                      ; preds = %sw.bb.217
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %sw.bb.217
  br label %sw.epilog.224

sw.bb.223:                                        ; preds = %sw.bb.184
  %117 = load i32, i32* @i_base, align 4
  call void @push_constant(i8 ()* @input_char, i32 %117)
  br label %sw.epilog.224

sw.epilog.224:                                    ; preds = %sw.bb.184, %sw.bb.223, %if.end.222, %sw.bb.213, %if.end.212
  br label %sw.epilog.488

sw.bb.225:                                        ; preds = %while.body
  %call226 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv227 = zext i8 %call226 to i32
  store i32 %conv227, i32* %var_name, align 4
  %118 = load i32, i32* %var_name, align 4
  %and228 = and i32 %118, 128
  %cmp229 = icmp ne i32 %and228, 0
  br i1 %cmp229, label %if.then.231, label %if.end.237

if.then.231:                                      ; preds = %sw.bb.225
  %119 = load i32, i32* %var_name, align 4
  %shl232 = shl i32 %119, 8
  %and233 = and i32 %shl232, 127
  %call234 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv235 = zext i8 %call234 to i32
  %add236 = add nsw i32 %and233, %conv235
  store i32 %add236, i32* %var_name, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.231, %sw.bb.225
  %120 = load i32, i32* %var_name, align 4
  call void @decr_var(i32 %120)
  br label %sw.epilog.488

sw.bb.238:                                        ; preds = %while.body
  call void @exit(i32 0) #6
  unreachable

sw.bb.239:                                        ; preds = %while.body
  %call240 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv241 = zext i8 %call240 to i32
  store i32 %conv241, i32* %var_name, align 4
  %121 = load i32, i32* %var_name, align 4
  %and242 = and i32 %121, 128
  %cmp243 = icmp ne i32 %and242, 0
  br i1 %cmp243, label %if.then.245, label %if.end.251

if.then.245:                                      ; preds = %sw.bb.239
  %122 = load i32, i32* %var_name, align 4
  %shl246 = shl i32 %122, 8
  %and247 = and i32 %shl246, 127
  %call248 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv249 = zext i8 %call248 to i32
  %add250 = add nsw i32 %and247, %conv249
  store i32 %add250, i32* %var_name, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.245, %sw.bb.239
  %123 = load i32, i32* %var_name, align 4
  call void @incr_var(i32 %123)
  br label %sw.epilog.488

sw.bb.252:                                        ; preds = %while.body
  %call253 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv254 = zext i8 %call253 to i32
  store i32 %conv254, i32* %var_name, align 4
  %124 = load i32, i32* %var_name, align 4
  %and255 = and i32 %124, 128
  %cmp256 = icmp ne i32 %and255, 0
  br i1 %cmp256, label %if.then.258, label %if.end.264

if.then.258:                                      ; preds = %sw.bb.252
  %125 = load i32, i32* %var_name, align 4
  %shl259 = shl i32 %125, 8
  %and260 = and i32 %shl259, 127
  %call261 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv262 = zext i8 %call261 to i32
  %add263 = add nsw i32 %and260, %conv262
  store i32 %add263, i32* %var_name, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.258, %sw.bb.252
  %126 = load i32, i32* %var_name, align 4
  call void @load_var(i32 %126)
  br label %sw.epilog.488

sw.bb.265:                                        ; preds = %while.body
  %127 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %128 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num266 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %128, i32 0, i32 0
  %129 = load %struct.bc_struct*, %struct.bc_struct** %s_num266, align 8
  %130 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num267 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %130, i32 0, i32 0
  call void @bc_sub(%struct.bc_struct* %127, %struct.bc_struct* %129, %struct.bc_struct** %s_num267)
  br label %sw.epilog.488

sw.bb.268:                                        ; preds = %while.body
  call void @pop()
  br label %sw.epilog.488

sw.bb.269:                                        ; preds = %while.body
  %call270 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv271 = zext i8 %call270 to i32
  store i32 %conv271, i32* %var_name, align 4
  %131 = load i32, i32* %var_name, align 4
  %and272 = and i32 %131, 128
  %cmp273 = icmp ne i32 %and272, 0
  br i1 %cmp273, label %if.then.275, label %if.end.281

if.then.275:                                      ; preds = %sw.bb.269
  %132 = load i32, i32* %var_name, align 4
  %shl276 = shl i32 %132, 8
  %and277 = and i32 %shl276, 127
  %call278 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %conv279 = zext i8 %call278 to i32
  %add280 = add nsw i32 %and277, %conv279
  store i32 %add280, i32* %var_name, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.275, %sw.bb.269
  %133 = load i32, i32* %var_name, align 4
  call void @store_var(i32 %133)
  br label %sw.epilog.488

sw.bb.282:                                        ; preds = %while.body
  br label %while.cond.283

while.cond.283:                                   ; preds = %while.body.288, %sw.bb.282
  %call284 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %call284, i8* %ch, align 1
  %conv285 = sext i8 %call284 to i32
  %cmp286 = icmp ne i32 %conv285, 34
  br i1 %cmp286, label %while.body.288, label %while.end.289

while.body.288:                                   ; preds = %while.cond.283
  %134 = load i8, i8* %ch, align 1
  call void @out_char(i8 signext %134)
  br label %while.cond.283

while.end.289:                                    ; preds = %while.cond.283
  %135 = load i8, i8* @interactive, align 1
  %tobool290 = icmp ne i8 %135, 0
  br i1 %tobool290, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %while.end.289
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call292 = call i32 @fflush(%struct._IO_FILE* %136)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %while.end.289
  br label %sw.epilog.488

sw.bb.294:                                        ; preds = %while.body
  %call295 = call signext i8 @check_stack(i32 2)
  %tobool296 = icmp ne i8 %call295, 0
  br i1 %tobool296, label %if.then.297, label %if.end.303

if.then.297:                                      ; preds = %sw.bb.294
  %137 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num298 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %137, i32 0, i32 0
  %138 = load %struct.bc_struct*, %struct.bc_struct** %s_num298, align 8
  store %struct.bc_struct* %138, %struct.bc_struct** %temp, align 8
  %139 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %139, i32 0, i32 1
  %140 = load %struct.estack_rec*, %struct.estack_rec** %s_next, align 8
  %s_num299 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %140, i32 0, i32 0
  %141 = load %struct.bc_struct*, %struct.bc_struct** %s_num299, align 8
  %142 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num300 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %142, i32 0, i32 0
  store %struct.bc_struct* %141, %struct.bc_struct** %s_num300, align 8
  %143 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  %144 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next301 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %144, i32 0, i32 1
  %145 = load %struct.estack_rec*, %struct.estack_rec** %s_next301, align 8
  %s_num302 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %145, i32 0, i32 0
  store %struct.bc_struct* %143, %struct.bc_struct** %s_num302, align 8
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.297, %sw.bb.294
  br label %sw.epilog.488

sw.bb.304:                                        ; preds = %while.body
  %146 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %146)
  br label %sw.epilog.488

sw.bb.305:                                        ; preds = %while.body
  %147 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* %147)
  br label %sw.epilog.488

sw.bb.306:                                        ; preds = %while.body
  %148 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num307 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %148, i32 0, i32 0
  %149 = load %struct.bc_struct*, %struct.bc_struct** %s_num307, align 8
  %call308 = call signext i8 @is_zero(%struct.bc_struct* %149)
  store i8 %call308, i8* @c_code, align 1
  %150 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %150)
  br label %sw.epilog.488

sw.bb.309:                                        ; preds = %while.body
  %call310 = call signext i8 @check_stack(i32 2)
  %tobool311 = icmp ne i8 %call310, 0
  br i1 %tobool311, label %if.then.312, label %if.end.325

if.then.312:                                      ; preds = %sw.bb.309
  %151 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next313 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %151, i32 0, i32 1
  %152 = load %struct.estack_rec*, %struct.estack_rec** %s_next313, align 8
  %s_num314 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %152, i32 0, i32 0
  %153 = load %struct.bc_struct*, %struct.bc_struct** %s_num314, align 8
  %call315 = call signext i8 @is_zero(%struct.bc_struct* %153)
  %tobool316 = icmp ne i8 %call315, 0
  br i1 %tobool316, label %land.end.323, label %land.rhs.317

land.rhs.317:                                     ; preds = %if.then.312
  %154 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num318 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %154, i32 0, i32 0
  %155 = load %struct.bc_struct*, %struct.bc_struct** %s_num318, align 8
  %call319 = call signext i8 @is_zero(%struct.bc_struct* %155)
  %tobool320 = icmp ne i8 %call319, 0
  %lnot321 = xor i1 %tobool320, true
  br label %land.end.323

land.end.323:                                     ; preds = %land.rhs.317, %if.then.312
  %156 = phi i1 [ false, %if.then.312 ], [ %lnot321, %land.rhs.317 ]
  %land.ext = zext i1 %156 to i32
  %conv324 = trunc i32 %land.ext to i8
  store i8 %conv324, i8* @c_code, align 1
  call void @pop()
  %157 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %157)
  br label %if.end.325

if.end.325:                                       ; preds = %land.end.323, %sw.bb.309
  br label %sw.epilog.488

sw.bb.326:                                        ; preds = %while.body
  %call327 = call signext i8 @check_stack(i32 2)
  %tobool328 = icmp ne i8 %call327, 0
  br i1 %tobool328, label %if.then.329, label %if.end.340

if.then.329:                                      ; preds = %sw.bb.326
  %158 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next330 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %158, i32 0, i32 1
  %159 = load %struct.estack_rec*, %struct.estack_rec** %s_next330, align 8
  %s_num331 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %159, i32 0, i32 0
  %160 = load %struct.bc_struct*, %struct.bc_struct** %s_num331, align 8
  %call332 = call signext i8 @is_zero(%struct.bc_struct* %160)
  %tobool333 = icmp ne i8 %call332, 0
  br i1 %tobool333, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then.329
  %161 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num334 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %161, i32 0, i32 0
  %162 = load %struct.bc_struct*, %struct.bc_struct** %s_num334, align 8
  %call335 = call signext i8 @is_zero(%struct.bc_struct* %162)
  %tobool336 = icmp ne i8 %call335, 0
  %lnot337 = xor i1 %tobool336, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.329
  %163 = phi i1 [ true, %if.then.329 ], [ %lnot337, %lor.rhs ]
  %lor.ext = zext i1 %163 to i32
  %conv339 = trunc i32 %lor.ext to i8
  store i8 %conv339, i8* @c_code, align 1
  call void @pop()
  %164 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %164)
  br label %if.end.340

if.end.340:                                       ; preds = %lor.end, %sw.bb.326
  br label %sw.epilog.488

sw.bb.341:                                        ; preds = %while.body
  %call342 = call signext i8 @check_stack(i32 2)
  %tobool343 = icmp ne i8 %call342, 0
  br i1 %tobool343, label %if.then.344, label %if.end.348

if.then.344:                                      ; preds = %sw.bb.341
  %165 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next345 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %165, i32 0, i32 1
  %166 = load %struct.estack_rec*, %struct.estack_rec** %s_next345, align 8
  %s_num346 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %166, i32 0, i32 0
  %167 = load %struct.bc_struct*, %struct.bc_struct** %s_num346, align 8
  %168 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num347 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %168, i32 0, i32 0
  %169 = load %struct.bc_struct*, %struct.bc_struct** %s_num347, align 8
  call void @bc_add(%struct.bc_struct* %167, %struct.bc_struct* %169, %struct.bc_struct** %temp_num)
  call void @pop()
  call void @pop()
  %170 = load %struct.bc_struct*, %struct.bc_struct** %temp_num, align 8
  call void @push_num(%struct.bc_struct* %170)
  call void @init_num(%struct.bc_struct** %temp_num)
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.344, %sw.bb.341
  br label %sw.epilog.488

sw.bb.349:                                        ; preds = %while.body
  %call350 = call signext i8 @check_stack(i32 2)
  %tobool351 = icmp ne i8 %call350, 0
  br i1 %tobool351, label %if.then.352, label %if.end.356

if.then.352:                                      ; preds = %sw.bb.349
  %171 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next353 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %171, i32 0, i32 1
  %172 = load %struct.estack_rec*, %struct.estack_rec** %s_next353, align 8
  %s_num354 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %172, i32 0, i32 0
  %173 = load %struct.bc_struct*, %struct.bc_struct** %s_num354, align 8
  %174 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num355 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %174, i32 0, i32 0
  %175 = load %struct.bc_struct*, %struct.bc_struct** %s_num355, align 8
  call void @bc_sub(%struct.bc_struct* %173, %struct.bc_struct* %175, %struct.bc_struct** %temp_num)
  call void @pop()
  call void @pop()
  %176 = load %struct.bc_struct*, %struct.bc_struct** %temp_num, align 8
  call void @push_num(%struct.bc_struct* %176)
  call void @init_num(%struct.bc_struct** %temp_num)
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.352, %sw.bb.349
  br label %sw.epilog.488

sw.bb.357:                                        ; preds = %while.body
  %call358 = call signext i8 @check_stack(i32 2)
  %tobool359 = icmp ne i8 %call358, 0
  br i1 %tobool359, label %if.then.360, label %if.end.364

if.then.360:                                      ; preds = %sw.bb.357
  %177 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next361 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %177, i32 0, i32 1
  %178 = load %struct.estack_rec*, %struct.estack_rec** %s_next361, align 8
  %s_num362 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %178, i32 0, i32 0
  %179 = load %struct.bc_struct*, %struct.bc_struct** %s_num362, align 8
  %180 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num363 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %180, i32 0, i32 0
  %181 = load %struct.bc_struct*, %struct.bc_struct** %s_num363, align 8
  %182 = load i32, i32* @scale, align 4
  call void @bc_multiply(%struct.bc_struct* %179, %struct.bc_struct* %181, %struct.bc_struct** %temp_num, i32 %182)
  call void @pop()
  call void @pop()
  %183 = load %struct.bc_struct*, %struct.bc_struct** %temp_num, align 8
  call void @push_num(%struct.bc_struct* %183)
  call void @init_num(%struct.bc_struct** %temp_num)
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.360, %sw.bb.357
  br label %sw.epilog.488

sw.bb.365:                                        ; preds = %while.body
  %call366 = call signext i8 @check_stack(i32 2)
  %tobool367 = icmp ne i8 %call366, 0
  br i1 %tobool367, label %if.then.368, label %if.end.378

if.then.368:                                      ; preds = %sw.bb.365
  %184 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next369 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %184, i32 0, i32 1
  %185 = load %struct.estack_rec*, %struct.estack_rec** %s_next369, align 8
  %s_num370 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %185, i32 0, i32 0
  %186 = load %struct.bc_struct*, %struct.bc_struct** %s_num370, align 8
  %187 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num371 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %187, i32 0, i32 0
  %188 = load %struct.bc_struct*, %struct.bc_struct** %s_num371, align 8
  %189 = load i32, i32* @scale, align 4
  %call372 = call i32 @bc_divide(%struct.bc_struct* %186, %struct.bc_struct* %188, %struct.bc_struct** %temp_num, i32 %189)
  %cmp373 = icmp eq i32 %call372, 0
  br i1 %cmp373, label %if.then.375, label %if.else.376

if.then.375:                                      ; preds = %if.then.368
  call void @pop()
  call void @pop()
  %190 = load %struct.bc_struct*, %struct.bc_struct** %temp_num, align 8
  call void @push_num(%struct.bc_struct* %190)
  call void @init_num(%struct.bc_struct** %temp_num)
  br label %if.end.377

if.else.376:                                      ; preds = %if.then.368
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.376, %if.then.375
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %sw.bb.365
  br label %sw.epilog.488

sw.bb.379:                                        ; preds = %while.body
  %call380 = call signext i8 @check_stack(i32 2)
  %tobool381 = icmp ne i8 %call380, 0
  br i1 %tobool381, label %if.then.382, label %if.end.393

if.then.382:                                      ; preds = %sw.bb.379
  %191 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num383 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %191, i32 0, i32 0
  %192 = load %struct.bc_struct*, %struct.bc_struct** %s_num383, align 8
  %call384 = call signext i8 @is_zero(%struct.bc_struct* %192)
  %tobool385 = icmp ne i8 %call384, 0
  br i1 %tobool385, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %if.then.382
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.392

if.else.387:                                      ; preds = %if.then.382
  %193 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next388 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %193, i32 0, i32 1
  %194 = load %struct.estack_rec*, %struct.estack_rec** %s_next388, align 8
  %s_num389 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %194, i32 0, i32 0
  %195 = load %struct.bc_struct*, %struct.bc_struct** %s_num389, align 8
  %196 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num390 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %196, i32 0, i32 0
  %197 = load %struct.bc_struct*, %struct.bc_struct** %s_num390, align 8
  %198 = load i32, i32* @scale, align 4
  %call391 = call i32 @bc_modulo(%struct.bc_struct* %195, %struct.bc_struct* %197, %struct.bc_struct** %temp_num, i32 %198)
  call void @pop()
  call void @pop()
  %199 = load %struct.bc_struct*, %struct.bc_struct** %temp_num, align 8
  call void @push_num(%struct.bc_struct* %199)
  call void @init_num(%struct.bc_struct** %temp_num)
  br label %if.end.392

if.end.392:                                       ; preds = %if.else.387, %if.then.386
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %sw.bb.379
  br label %sw.epilog.488

sw.bb.394:                                        ; preds = %while.body
  %call395 = call signext i8 @check_stack(i32 2)
  %tobool396 = icmp ne i8 %call395, 0
  br i1 %tobool396, label %if.then.397, label %if.end.413

if.then.397:                                      ; preds = %sw.bb.394
  %200 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next398 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %200, i32 0, i32 1
  %201 = load %struct.estack_rec*, %struct.estack_rec** %s_next398, align 8
  %s_num399 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %201, i32 0, i32 0
  %202 = load %struct.bc_struct*, %struct.bc_struct** %s_num399, align 8
  %203 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num400 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %203, i32 0, i32 0
  %204 = load %struct.bc_struct*, %struct.bc_struct** %s_num400, align 8
  %205 = load i32, i32* @scale, align 4
  call void @bc_raise(%struct.bc_struct* %202, %struct.bc_struct* %204, %struct.bc_struct** %temp_num, i32 %205)
  %206 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next401 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %206, i32 0, i32 1
  %207 = load %struct.estack_rec*, %struct.estack_rec** %s_next401, align 8
  %s_num402 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %207, i32 0, i32 0
  %208 = load %struct.bc_struct*, %struct.bc_struct** %s_num402, align 8
  %call403 = call signext i8 @is_zero(%struct.bc_struct* %208)
  %conv404 = sext i8 %call403 to i32
  %tobool405 = icmp ne i32 %conv404, 0
  br i1 %tobool405, label %land.lhs.true.406, label %if.end.412

land.lhs.true.406:                                ; preds = %if.then.397
  %209 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num407 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %209, i32 0, i32 0
  %210 = load %struct.bc_struct*, %struct.bc_struct** %s_num407, align 8
  %call408 = call signext i8 @is_neg(%struct.bc_struct* %210)
  %conv409 = sext i8 %call408 to i32
  %tobool410 = icmp ne i32 %conv409, 0
  br i1 %tobool410, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %land.lhs.true.406
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %land.lhs.true.406, %if.then.397
  call void @pop()
  call void @pop()
  %211 = load %struct.bc_struct*, %struct.bc_struct** %temp_num, align 8
  call void @push_num(%struct.bc_struct* %211)
  call void @init_num(%struct.bc_struct** %temp_num)
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %sw.bb.394
  br label %sw.epilog.488

sw.bb.414:                                        ; preds = %while.body
  %call415 = call signext i8 @check_stack(i32 2)
  %tobool416 = icmp ne i8 %call415, 0
  br i1 %tobool416, label %if.then.417, label %if.end.425

if.then.417:                                      ; preds = %sw.bb.414
  %212 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next418 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %212, i32 0, i32 1
  %213 = load %struct.estack_rec*, %struct.estack_rec** %s_next418, align 8
  %s_num419 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %213, i32 0, i32 0
  %214 = load %struct.bc_struct*, %struct.bc_struct** %s_num419, align 8
  %215 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num420 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %215, i32 0, i32 0
  %216 = load %struct.bc_struct*, %struct.bc_struct** %s_num420, align 8
  %call421 = call i32 @bc_compare(%struct.bc_struct* %214, %struct.bc_struct* %216)
  %cmp422 = icmp eq i32 %call421, 0
  %conv423 = zext i1 %cmp422 to i32
  %conv424 = trunc i32 %conv423 to i8
  store i8 %conv424, i8* @c_code, align 1
  call void @pop()
  %217 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %217)
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.417, %sw.bb.414
  br label %sw.epilog.488

sw.bb.426:                                        ; preds = %while.body
  %call427 = call signext i8 @check_stack(i32 2)
  %tobool428 = icmp ne i8 %call427, 0
  br i1 %tobool428, label %if.then.429, label %if.end.437

if.then.429:                                      ; preds = %sw.bb.426
  %218 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next430 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %218, i32 0, i32 1
  %219 = load %struct.estack_rec*, %struct.estack_rec** %s_next430, align 8
  %s_num431 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %219, i32 0, i32 0
  %220 = load %struct.bc_struct*, %struct.bc_struct** %s_num431, align 8
  %221 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num432 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %221, i32 0, i32 0
  %222 = load %struct.bc_struct*, %struct.bc_struct** %s_num432, align 8
  %call433 = call i32 @bc_compare(%struct.bc_struct* %220, %struct.bc_struct* %222)
  %cmp434 = icmp ne i32 %call433, 0
  %conv435 = zext i1 %cmp434 to i32
  %conv436 = trunc i32 %conv435 to i8
  store i8 %conv436, i8* @c_code, align 1
  call void @pop()
  %223 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %223)
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.429, %sw.bb.426
  br label %sw.epilog.488

sw.bb.438:                                        ; preds = %while.body
  %call439 = call signext i8 @check_stack(i32 2)
  %tobool440 = icmp ne i8 %call439, 0
  br i1 %tobool440, label %if.then.441, label %if.end.449

if.then.441:                                      ; preds = %sw.bb.438
  %224 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next442 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %224, i32 0, i32 1
  %225 = load %struct.estack_rec*, %struct.estack_rec** %s_next442, align 8
  %s_num443 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %225, i32 0, i32 0
  %226 = load %struct.bc_struct*, %struct.bc_struct** %s_num443, align 8
  %227 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num444 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %227, i32 0, i32 0
  %228 = load %struct.bc_struct*, %struct.bc_struct** %s_num444, align 8
  %call445 = call i32 @bc_compare(%struct.bc_struct* %226, %struct.bc_struct* %228)
  %cmp446 = icmp eq i32 %call445, -1
  %conv447 = zext i1 %cmp446 to i32
  %conv448 = trunc i32 %conv447 to i8
  store i8 %conv448, i8* @c_code, align 1
  call void @pop()
  %229 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %229)
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.441, %sw.bb.438
  br label %sw.epilog.488

sw.bb.450:                                        ; preds = %while.body
  %call451 = call signext i8 @check_stack(i32 2)
  %tobool452 = icmp ne i8 %call451, 0
  br i1 %tobool452, label %if.then.453, label %if.end.461

if.then.453:                                      ; preds = %sw.bb.450
  %230 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next454 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %230, i32 0, i32 1
  %231 = load %struct.estack_rec*, %struct.estack_rec** %s_next454, align 8
  %s_num455 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %231, i32 0, i32 0
  %232 = load %struct.bc_struct*, %struct.bc_struct** %s_num455, align 8
  %233 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num456 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %233, i32 0, i32 0
  %234 = load %struct.bc_struct*, %struct.bc_struct** %s_num456, align 8
  %call457 = call i32 @bc_compare(%struct.bc_struct* %232, %struct.bc_struct* %234)
  %cmp458 = icmp sle i32 %call457, 0
  %conv459 = zext i1 %cmp458 to i32
  %conv460 = trunc i32 %conv459 to i8
  store i8 %conv460, i8* @c_code, align 1
  call void @pop()
  %235 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %235)
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.453, %sw.bb.450
  br label %sw.epilog.488

sw.bb.462:                                        ; preds = %while.body
  %call463 = call signext i8 @check_stack(i32 2)
  %tobool464 = icmp ne i8 %call463, 0
  br i1 %tobool464, label %if.then.465, label %if.end.473

if.then.465:                                      ; preds = %sw.bb.462
  %236 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next466 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %236, i32 0, i32 1
  %237 = load %struct.estack_rec*, %struct.estack_rec** %s_next466, align 8
  %s_num467 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %237, i32 0, i32 0
  %238 = load %struct.bc_struct*, %struct.bc_struct** %s_num467, align 8
  %239 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num468 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %239, i32 0, i32 0
  %240 = load %struct.bc_struct*, %struct.bc_struct** %s_num468, align 8
  %call469 = call i32 @bc_compare(%struct.bc_struct* %238, %struct.bc_struct* %240)
  %cmp470 = icmp eq i32 %call469, 1
  %conv471 = zext i1 %cmp470 to i32
  %conv472 = trunc i32 %conv471 to i8
  store i8 %conv472, i8* @c_code, align 1
  call void @pop()
  %241 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %241)
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.465, %sw.bb.462
  br label %sw.epilog.488

sw.bb.474:                                        ; preds = %while.body
  %call475 = call signext i8 @check_stack(i32 2)
  %tobool476 = icmp ne i8 %call475, 0
  br i1 %tobool476, label %if.then.477, label %if.end.485

if.then.477:                                      ; preds = %sw.bb.474
  %242 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_next478 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %242, i32 0, i32 1
  %243 = load %struct.estack_rec*, %struct.estack_rec** %s_next478, align 8
  %s_num479 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %243, i32 0, i32 0
  %244 = load %struct.bc_struct*, %struct.bc_struct** %s_num479, align 8
  %245 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num480 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %245, i32 0, i32 0
  %246 = load %struct.bc_struct*, %struct.bc_struct** %s_num480, align 8
  %call481 = call i32 @bc_compare(%struct.bc_struct* %244, %struct.bc_struct* %246)
  %cmp482 = icmp sge i32 %call481, 0
  %conv483 = zext i1 %cmp482 to i32
  %conv484 = trunc i32 %conv483 to i8
  store i8 %conv484, i8* @c_code, align 1
  call void @pop()
  %247 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %247)
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.477, %sw.bb.474
  br label %sw.epilog.488

sw.default.486:                                   ; preds = %while.body
  %248 = load i8, i8* %inst, align 1
  %conv487 = sext i8 %248 to i32
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %conv487)
  br label %sw.epilog.488

sw.epilog.488:                                    ; preds = %sw.default.486, %if.end.485, %if.end.473, %if.end.461, %if.end.449, %if.end.437, %if.end.425, %if.end.413, %if.end.393, %if.end.378, %if.end.364, %if.end.356, %if.end.348, %if.end.340, %if.end.325, %sw.bb.306, %sw.bb.305, %sw.bb.304, %if.end.303, %if.end.293, %if.end.281, %sw.bb.268, %sw.bb.265, %if.end.264, %if.end.251, %if.end.237, %sw.epilog.224, %if.end.183, %sw.bb.170, %if.end.169, %if.end.156, %if.end.142, %if.end.110, %if.end.97, %if.end.84, %sw.bb.73, %for.end, %if.then.65, %if.end.48, %if.end.11
  br label %while.cond

while.end.489:                                    ; preds = %land.end
  br label %while.cond.490

while.cond.490:                                   ; preds = %while.body.493, %while.end.489
  %249 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %cmp491 = icmp ne i32 %249, 0
  br i1 %cmp491, label %while.body.493, label %while.end.503

while.body.493:                                   ; preds = %while.cond.490
  %250 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom494 = sext i32 %250 to i64
  %251 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx495 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %251, i64 %idxprom494
  %f_autos496 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx495, i32 0, i32 5
  %252 = load %struct.arg_list*, %struct.arg_list** %f_autos496, align 8
  call void @pop_vars(%struct.arg_list* %252)
  %253 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %idxprom497 = sext i32 %253 to i64
  %254 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %arrayidx498 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %254, i64 %idxprom497
  %f_params499 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %arrayidx498, i32 0, i32 4
  %255 = load %struct.arg_list*, %struct.arg_list** %f_params499, align 8
  call void @pop_vars(%struct.arg_list* %255)
  %call500 = call i32 @fpop()
  %call501 = call i32 @fpop()
  store i32 %call501, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %call502 = call i32 @fpop()
  store i32 %call502, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  br label %while.cond.490

while.end.503:                                    ; preds = %while.cond.490
  br label %while.cond.504

while.cond.504:                                   ; preds = %while.body.507, %while.end.503
  %256 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %cmp505 = icmp ne %struct.estack_rec* %256, null
  br i1 %cmp505, label %while.body.507, label %while.end.508

while.body.507:                                   ; preds = %while.cond.504
  call void @pop()
  br label %while.cond.504

while.end.508:                                    ; preds = %while.cond.504
  %257 = load i8, i8* @interactive, align 1
  %tobool509 = icmp ne i8 %257, 0
  br i1 %tobool509, label %if.then.510, label %if.end.516

if.then.510:                                      ; preds = %while.end.508
  %call511 = call void (i32)* @signal(i32 2, void (i32)* @use_quit) #5
  %258 = load i32, i32* @had_sigint, align 4
  %tobool512 = icmp ne i32 %258, 0
  br i1 %tobool512, label %if.then.513, label %if.end.515

if.then.513:                                      ; preds = %if.then.510
  %call514 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.513, %if.then.510
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %while.end.508
  ret void
}

declare void @init_num(%struct.bc_struct**) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

declare void @incr_array(i32) #1

declare signext i8 @is_zero(%struct.bc_struct*) #1

declare void @pop() #1

declare void @process_params(%struct.program_counter*, i32) #1

declare void @auto_var(i32) #1

declare void @fpush(i32) #1

declare void @push_copy(%struct.bc_struct*) #1

; Function Attrs: nounwind uwtable
define void @push_b10_const(%struct.program_counter* %pc) #0 {
entry:
  %pc.addr = alloca %struct.program_counter*, align 8
  %build = alloca %struct.bc_struct*, align 8
  %look_pc = alloca %struct.program_counter, align 4
  %kdigits = alloca i32, align 4
  %kscale = alloca i32, align 4
  %inchar = alloca i8, align 1
  %ptr = alloca i8*, align 8
  store %struct.program_counter* %pc, %struct.program_counter** %pc.addr, align 8
  %0 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %1 = bitcast %struct.program_counter* %look_pc to i8*
  %2 = bitcast %struct.program_counter* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 4, i1 false)
  store i32 0, i32* %kdigits, align 4
  store i32 0, i32* %kscale, align 4
  %call = call zeroext i8 @byte(%struct.program_counter* %look_pc)
  store i8 %call, i8* %inchar, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8, i8* %inchar, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 46
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8, i8* %inchar, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv2, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %kdigits, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %kdigits, align 4
  %call5 = call zeroext i8 @byte(%struct.program_counter* %look_pc)
  store i8 %call5, i8* %inchar, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8, i8* %inchar, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 46
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call9 = call zeroext i8 @byte(%struct.program_counter* %look_pc)
  store i8 %call9, i8* %inchar, align 1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.14, %if.then
  %8 = load i8, i8* %inchar, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp ne i32 %conv11, 58
  br i1 %cmp12, label %while.body.14, label %while.end.17

while.body.14:                                    ; preds = %while.cond.10
  %9 = load i32, i32* %kscale, align 4
  %inc15 = add nsw i32 %9, 1
  store i32 %inc15, i32* %kscale, align 4
  %call16 = call zeroext i8 @byte(%struct.program_counter* %look_pc)
  store i8 %call16, i8* %inchar, align 1
  br label %while.cond.10

while.end.17:                                     ; preds = %while.cond.10
  br label %if.end

if.end:                                           ; preds = %while.end.17, %while.end
  %10 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %call18 = call zeroext i8 @byte(%struct.program_counter* %10)
  store i8 %call18, i8* %inchar, align 1
  %11 = load i32, i32* %kdigits, align 4
  %cmp19 = icmp eq i32 %11, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %kscale, align 4
  %cmp21 = icmp eq i32 %12, 0
  br i1 %cmp21, label %if.then.23, label %if.end.43

if.then.23:                                       ; preds = %land.lhs.true
  %13 = load i8, i8* %inchar, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.23
  %14 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %14)
  %15 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %call28 = call zeroext i8 @byte(%struct.program_counter* %15)
  store i8 %call28, i8* %inchar, align 1
  br label %return

if.end.29:                                        ; preds = %if.then.23
  %16 = load i8, i8* %inchar, align 1
  %conv30 = sext i8 %16 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.29
  %17 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* %17)
  %18 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %call34 = call zeroext i8 @byte(%struct.program_counter* %18)
  store i8 %call34, i8* %inchar, align 1
  br label %return

if.end.35:                                        ; preds = %if.end.29
  %19 = load i8, i8* %inchar, align 1
  %conv36 = sext i8 %19 to i32
  %cmp37 = icmp sgt i32 %conv36, 9
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.35
  call void @init_num(%struct.bc_struct** %build)
  %20 = load i8, i8* %inchar, align 1
  %conv40 = sext i8 %20 to i32
  call void @int2num(%struct.bc_struct** %build, i32 %conv40)
  %21 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  call void @push_num(%struct.bc_struct* %21)
  %22 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %call41 = call zeroext i8 @byte(%struct.program_counter* %22)
  store i8 %call41, i8* %inchar, align 1
  br label %return

if.end.42:                                        ; preds = %if.end.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %if.end
  %23 = load i32, i32* %kdigits, align 4
  %cmp44 = icmp eq i32 %23, 0
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.43
  %24 = load i32, i32* %kscale, align 4
  %call47 = call %struct.bc_struct* @new_num(i32 1, i32 %24)
  store %struct.bc_struct* %call47, %struct.bc_struct** %build, align 8
  %25 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  %n_value = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %25, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value, i32 0, i64 0
  store i8* %arrayidx, i8** %ptr, align 8
  %26 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 0, i8* %26, align 1
  br label %if.end.51

if.else:                                          ; preds = %if.end.43
  %27 = load i32, i32* %kdigits, align 4
  %28 = load i32, i32* %kscale, align 4
  %call48 = call %struct.bc_struct* @new_num(i32 %27, i32 %28)
  store %struct.bc_struct* %call48, %struct.bc_struct** %build, align 8
  %29 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  %n_value49 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %29, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %n_value49, i32 0, i64 0
  store i8* %arrayidx50, i8** %ptr, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.46
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.69, %if.end.51
  %30 = load i8, i8* %inchar, align 1
  %conv53 = sext i8 %30 to i32
  %cmp54 = icmp ne i32 %conv53, 58
  br i1 %cmp54, label %while.body.56, label %while.end.71

while.body.56:                                    ; preds = %while.cond.52
  %31 = load i8, i8* %inchar, align 1
  %conv57 = sext i8 %31 to i32
  %cmp58 = icmp ne i32 %conv57, 46
  br i1 %cmp58, label %if.then.60, label %if.end.69

if.then.60:                                       ; preds = %while.body.56
  %32 = load i8, i8* %inchar, align 1
  %conv61 = sext i8 %32 to i32
  %cmp62 = icmp sgt i32 %conv61, 9
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.then.60
  %33 = load i8*, i8** %ptr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr65, i8** %ptr, align 8
  store i8 9, i8* %33, align 1
  br label %if.end.68

if.else.66:                                       ; preds = %if.then.60
  %34 = load i8, i8* %inchar, align 1
  %35 = load i8*, i8** %ptr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr67, i8** %ptr, align 8
  store i8 %34, i8* %35, align 1
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %while.body.56
  %36 = load %struct.program_counter*, %struct.program_counter** %pc.addr, align 8
  %call70 = call zeroext i8 @byte(%struct.program_counter* %36)
  store i8 %call70, i8* %inchar, align 1
  br label %while.cond.52

while.end.71:                                     ; preds = %while.cond.52
  %37 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  call void @push_num(%struct.bc_struct* %37)
  br label %return

return:                                           ; preds = %while.end.71, %if.then.39, %if.then.33, %if.then.27
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_constant(i8 ()* %in_char, i32 %conv_base) #0 {
entry:
  %in_char.addr = alloca i8 ()*, align 8
  %conv_base.addr = alloca i32, align 4
  %digits = alloca i32, align 4
  %build = alloca %struct.bc_struct*, align 8
  %temp = alloca %struct.bc_struct*, align 8
  %result = alloca %struct.bc_struct*, align 8
  %mult = alloca %struct.bc_struct*, align 8
  %divisor = alloca %struct.bc_struct*, align 8
  %in_ch = alloca i8, align 1
  %first_ch = alloca i8, align 1
  %negative = alloca i8, align 1
  store i8 ()* %in_char, i8 ()** %in_char.addr, align 8
  store i32 %conv_base, i32* %conv_base.addr, align 4
  call void @init_num(%struct.bc_struct** %temp)
  call void @init_num(%struct.bc_struct** %result)
  call void @init_num(%struct.bc_struct** %mult)
  %0 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call = call %struct.bc_struct* @copy_num(%struct.bc_struct* %0)
  store %struct.bc_struct* %call, %struct.bc_struct** %build, align 8
  store i8 0, i8* %negative, align 1
  %1 = load i32, i32* %conv_base.addr, align 4
  call void @int2num(%struct.bc_struct** %mult, i32 %1)
  %2 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call1 = call signext i8 %2()
  store i8 %call1, i8* %in_ch, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8, i8* %in_ch, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call3 = call signext i8 %4()
  store i8 %call3, i8* %in_ch, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8, i8* %in_ch, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 43
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %6 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call7 = call signext i8 %6()
  store i8 %call7, i8* %in_ch, align 1
  br label %if.end.13

if.else:                                          ; preds = %while.end
  %7 = load i8, i8* %in_ch, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store i8 1, i8* %negative, align 1
  %8 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call12 = call signext i8 %8()
  store i8 %call12, i8* %in_ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %9 = load i8, i8* %in_ch, align 1
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp slt i32 %conv14, 16
  br i1 %cmp15, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.end.13
  %10 = load i8, i8* %in_ch, align 1
  store i8 %10, i8* %first_ch, align 1
  %11 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call18 = call signext i8 %11()
  store i8 %call18, i8* %in_ch, align 1
  %12 = load i8, i8* %in_ch, align 1
  %conv19 = sext i8 %12 to i32
  %cmp20 = icmp slt i32 %conv19, 16
  br i1 %cmp20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then.17
  %13 = load i8, i8* %first_ch, align 1
  %conv22 = sext i8 %13 to i32
  %14 = load i32, i32* %conv_base.addr, align 4
  %cmp23 = icmp sge i32 %conv22, %14
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %conv_base.addr, align 4
  %sub = sub nsw i32 %15, 1
  %conv26 = trunc i32 %sub to i8
  store i8 %conv26, i8* %first_ch, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true, %if.then.17
  %16 = load i8, i8* %first_ch, align 1
  %conv28 = sext i8 %16 to i32
  call void @int2num(%struct.bc_struct** %build, i32 %conv28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %if.end.13
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.45, %if.end.29
  %17 = load i8, i8* %in_ch, align 1
  %conv31 = sext i8 %17 to i32
  %cmp32 = icmp slt i32 %conv31, 16
  br i1 %cmp32, label %while.body.34, label %while.end.48

while.body.34:                                    ; preds = %while.cond.30
  %18 = load i8, i8* %in_ch, align 1
  %conv35 = sext i8 %18 to i32
  %cmp36 = icmp slt i32 %conv35, 16
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.45

land.lhs.true.38:                                 ; preds = %while.body.34
  %19 = load i8, i8* %in_ch, align 1
  %conv39 = sext i8 %19 to i32
  %20 = load i32, i32* %conv_base.addr, align 4
  %cmp40 = icmp sge i32 %conv39, %20
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %land.lhs.true.38
  %21 = load i32, i32* %conv_base.addr, align 4
  %sub43 = sub nsw i32 %21, 1
  %conv44 = trunc i32 %sub43 to i8
  store i8 %conv44, i8* %in_ch, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %land.lhs.true.38, %while.body.34
  %22 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  %23 = load %struct.bc_struct*, %struct.bc_struct** %mult, align 8
  call void @bc_multiply(%struct.bc_struct* %22, %struct.bc_struct* %23, %struct.bc_struct** %result, i32 0)
  %24 = load i8, i8* %in_ch, align 1
  %conv46 = sext i8 %24 to i32
  call void @int2num(%struct.bc_struct** %temp, i32 %conv46)
  %25 = load %struct.bc_struct*, %struct.bc_struct** %result, align 8
  %26 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  call void @bc_add(%struct.bc_struct* %25, %struct.bc_struct* %26, %struct.bc_struct** %build)
  %27 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call47 = call signext i8 %27()
  store i8 %call47, i8* %in_ch, align 1
  br label %while.cond.30

while.end.48:                                     ; preds = %while.cond.30
  %28 = load i8, i8* %in_ch, align 1
  %conv49 = sext i8 %28 to i32
  %cmp50 = icmp eq i32 %conv49, 46
  br i1 %cmp50, label %if.then.52, label %if.end.83

if.then.52:                                       ; preds = %while.end.48
  %29 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call53 = call signext i8 %29()
  store i8 %call53, i8* %in_ch, align 1
  %30 = load i8, i8* %in_ch, align 1
  %conv54 = sext i8 %30 to i32
  %31 = load i32, i32* %conv_base.addr, align 4
  %cmp55 = icmp sge i32 %conv54, %31
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.then.52
  %32 = load i32, i32* %conv_base.addr, align 4
  %sub58 = sub nsw i32 %32, 1
  %conv59 = trunc i32 %sub58 to i8
  store i8 %conv59, i8* %in_ch, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.then.52
  call void @free_num(%struct.bc_struct** %result)
  call void @free_num(%struct.bc_struct** %temp)
  %33 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call61 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %33)
  store %struct.bc_struct* %call61, %struct.bc_struct** %divisor, align 8
  %34 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call62 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %34)
  store %struct.bc_struct* %call62, %struct.bc_struct** %result, align 8
  store i32 0, i32* %digits, align 4
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.80, %if.end.60
  %35 = load i8, i8* %in_ch, align 1
  %conv64 = sext i8 %35 to i32
  %cmp65 = icmp slt i32 %conv64, 16
  br i1 %cmp65, label %while.body.67, label %while.end.81

while.body.67:                                    ; preds = %while.cond.63
  %36 = load %struct.bc_struct*, %struct.bc_struct** %result, align 8
  %37 = load %struct.bc_struct*, %struct.bc_struct** %mult, align 8
  call void @bc_multiply(%struct.bc_struct* %36, %struct.bc_struct* %37, %struct.bc_struct** %result, i32 0)
  %38 = load i8, i8* %in_ch, align 1
  %conv68 = sext i8 %38 to i32
  call void @int2num(%struct.bc_struct** %temp, i32 %conv68)
  %39 = load %struct.bc_struct*, %struct.bc_struct** %result, align 8
  %40 = load %struct.bc_struct*, %struct.bc_struct** %temp, align 8
  call void @bc_add(%struct.bc_struct* %39, %struct.bc_struct* %40, %struct.bc_struct** %result)
  %41 = load %struct.bc_struct*, %struct.bc_struct** %divisor, align 8
  %42 = load %struct.bc_struct*, %struct.bc_struct** %mult, align 8
  call void @bc_multiply(%struct.bc_struct* %41, %struct.bc_struct* %42, %struct.bc_struct** %divisor, i32 0)
  %43 = load i32, i32* %digits, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %digits, align 4
  %44 = load i8 ()*, i8 ()** %in_char.addr, align 8
  %call69 = call signext i8 %44()
  store i8 %call69, i8* %in_ch, align 1
  %45 = load i8, i8* %in_ch, align 1
  %conv70 = sext i8 %45 to i32
  %cmp71 = icmp slt i32 %conv70, 16
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.80

land.lhs.true.73:                                 ; preds = %while.body.67
  %46 = load i8, i8* %in_ch, align 1
  %conv74 = sext i8 %46 to i32
  %47 = load i32, i32* %conv_base.addr, align 4
  %cmp75 = icmp sge i32 %conv74, %47
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %land.lhs.true.73
  %48 = load i32, i32* %conv_base.addr, align 4
  %sub78 = sub nsw i32 %48, 1
  %conv79 = trunc i32 %sub78 to i8
  store i8 %conv79, i8* %in_ch, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %land.lhs.true.73, %while.body.67
  br label %while.cond.63

while.end.81:                                     ; preds = %while.cond.63
  %49 = load %struct.bc_struct*, %struct.bc_struct** %result, align 8
  %50 = load %struct.bc_struct*, %struct.bc_struct** %divisor, align 8
  %51 = load i32, i32* %digits, align 4
  %call82 = call i32 @bc_divide(%struct.bc_struct* %49, %struct.bc_struct* %50, %struct.bc_struct** %result, i32 %51)
  %52 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  %53 = load %struct.bc_struct*, %struct.bc_struct** %result, align 8
  call void @bc_add(%struct.bc_struct* %52, %struct.bc_struct* %53, %struct.bc_struct** %build)
  br label %if.end.83

if.end.83:                                        ; preds = %while.end.81, %while.end.48
  %54 = load i8, i8* %negative, align 1
  %tobool = icmp ne i8 %54, 0
  br i1 %tobool, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.83
  %55 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %56 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  call void @bc_sub(%struct.bc_struct* %55, %struct.bc_struct* %56, %struct.bc_struct** %build)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.83
  %57 = load %struct.bc_struct*, %struct.bc_struct** %build, align 8
  call void @push_num(%struct.bc_struct* %57)
  call void @free_num(%struct.bc_struct** %temp)
  call void @free_num(%struct.bc_struct** %result)
  call void @free_num(%struct.bc_struct** %mult)
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @prog_char() #0 {
entry:
  %call = call zeroext i8 @byte(%struct.program_counter* @pc)
  ret i8 %call
}

declare void @load_array(i32) #1

declare void @decr_array(i8 signext) #1

declare void @out_char(i8 signext) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @pop_vars(%struct.arg_list*) #1

declare i32 @fpop() #1

declare void @store_array(i32) #1

; Function Attrs: nounwind uwtable
define void @assign(i8 signext %c_code) #0 {
entry:
  %c_code.addr = alloca i8, align 1
  store i8 %c_code, i8* %c_code.addr, align 1
  %0 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %0, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %s_num)
  %1 = load i8, i8* %c_code.addr, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %call = call %struct.bc_struct* @copy_num(%struct.bc_struct* %2)
  %3 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num1 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %3, i32 0, i32 0
  store %struct.bc_struct* %call, %struct.bc_struct** %s_num1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %call2 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %4)
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %s_num3 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %5, i32 0, i32 0
  store %struct.bc_struct* %call2, %struct.bc_struct** %s_num3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @out_num(%struct.bc_struct*, i32, void (i32)*) #1

declare void @store_var(i32) #1

declare void @int2num(%struct.bc_struct**, i32) #1

declare i32 @bc_sqrt(%struct.bc_struct**, i32) #1

; Function Attrs: nounwind uwtable
define signext i8 @input_char() #0 {
entry:
  %retval = alloca i8, align 1
  %in_ch = alloca i8, align 1
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %in_ch, align 1
  %0 = load i8, i8* %in_ch, align 1
  %conv1 = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv1, 92
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %call3 = call i32 @getchar()
  %conv4 = trunc i32 %call3 to i8
  store i8 %conv4, i8* %in_ch, align 1
  %1 = load i8, i8* %in_ch, align 1
  %conv5 = sext i8 %1 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %call9 = call i32 @getchar()
  %conv10 = trunc i32 %call9 to i8
  store i8 %conv10, i8* %in_ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %2 = load i8, i8* %in_ch, align 1
  %conv12 = sext i8 %2 to i32
  %idxprom = sext i32 %conv12 to i64
  %call13 = call i16** @__ctype_b_loc() #7
  %3 = load i16*, i16** %call13, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv14 = zext i16 %4 to i32
  %and = and i32 %conv14, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.11
  %5 = load i8, i8* %in_ch, align 1
  %conv16 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv16, 48
  %conv17 = trunc i32 %sub to i8
  store i8 %conv17, i8* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.11
  %6 = load i8, i8* %in_ch, align 1
  %conv19 = sext i8 %6 to i32
  %cmp20 = icmp sge i32 %conv19, 65
  br i1 %cmp20, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.18
  %7 = load i8, i8* %in_ch, align 1
  %conv22 = sext i8 %7 to i32
  %cmp23 = icmp sle i32 %conv22, 70
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %land.lhs.true
  %8 = load i8, i8* %in_ch, align 1
  %conv26 = sext i8 %8 to i32
  %add = add nsw i32 %conv26, 10
  %sub27 = sub nsw i32 %add, 65
  %conv28 = trunc i32 %sub27 to i8
  store i8 %conv28, i8* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %if.end.18
  %9 = load i8, i8* %in_ch, align 1
  %conv30 = sext i8 %9 to i32
  %cmp31 = icmp sge i32 %conv30, 97
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.42

land.lhs.true.33:                                 ; preds = %if.end.29
  %10 = load i8, i8* %in_ch, align 1
  %conv34 = sext i8 %10 to i32
  %cmp35 = icmp sle i32 %conv34, 102
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %land.lhs.true.33
  %11 = load i8, i8* %in_ch, align 1
  %conv38 = sext i8 %11 to i32
  %add39 = add nsw i32 %conv38, 10
  %sub40 = sub nsw i32 %add39, 97
  %conv41 = trunc i32 %sub40 to i8
  store i8 %conv41, i8* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.33, %if.end.29
  %12 = load i8, i8* %in_ch, align 1
  %conv43 = sext i8 %12 to i32
  %cmp44 = icmp eq i32 %conv43, 46
  br i1 %cmp44, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %13 = load i8, i8* %in_ch, align 1
  %conv46 = sext i8 %13 to i32
  %cmp47 = icmp eq i32 %conv46, 43
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %14 = load i8, i8* %in_ch, align 1
  %conv50 = sext i8 %14 to i32
  %cmp51 = icmp eq i32 %conv50, 45
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false, %if.end.42
  %15 = load i8, i8* %in_ch, align 1
  store i8 %15, i8* %retval
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false.49
  %16 = load i8, i8* %in_ch, align 1
  %conv55 = sext i8 %16 to i32
  %cmp56 = icmp sle i32 %conv55, 32
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  store i8 32, i8* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.54
  store i8 58, i8* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.58, %if.then.53, %if.then.37, %if.then.25, %if.then.15
  %17 = load i8, i8* %retval
  ret i8 %17
}

declare void @decr_var(i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @incr_var(i32) #1

declare void @load_var(i32) #1

declare void @bc_sub(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**) #1

declare signext i8 @check_stack(i32) #1

declare void @bc_add(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**) #1

declare void @push_num(%struct.bc_struct*) #1

declare void @bc_multiply(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**, i32) #1

declare i32 @bc_divide(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**, i32) #1

declare i32 @bc_modulo(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**, i32) #1

declare void @bc_raise(%struct.bc_struct*, %struct.bc_struct*, %struct.bc_struct**, i32) #1

declare signext i8 @is_neg(%struct.bc_struct*) #1

declare i32 @bc_compare(%struct.bc_struct*, %struct.bc_struct*) #1

declare void @use_quit(i32) #1

declare i32 @getchar() #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare %struct.bc_struct* @copy_num(%struct.bc_struct*) #1

declare void @free_num(%struct.bc_struct**) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct.bc_struct* @new_num(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
