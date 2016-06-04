; ModuleID = 'gates.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@.str = private unnamed_addr constant [40 x i8] c"Error allocating %i-element int array!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Matrix is not a 2x2 matrix!\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i bytes array!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Matrix is not a 4x4 matrix!\0A\00", align 1
@quantum_gate_counter.counter = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %control.addr, align 4
  %2 = load i32, i32* %target.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot_ft(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end.12

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %control.addr, align 4
  %5 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 1, i32 %4, i32 %5)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  br label %if.end.12

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %12 = load i64, i64* %state, align 8
  %13 = load i32, i32* %control.addr, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %12, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %for.body
  %14 = load i32, i32* %target.addr, align 4
  %sh_prom5 = zext i32 %14 to i64
  %shl6 = shl i64 1, %sh_prom5
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node8 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node8, align 8
  %arrayidx9 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %17, i64 %idxprom7
  %state10 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx9, i32 0, i32 1
  %18 = load i64, i64* %state10, align 8
  %xor = xor i64 %18, %shl6
  store i64 %xor, i64* %state10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.2, %for.end, %if.then
  ret void
}

declare void @quantum_qec_get_status(i32*, i32*) #1

declare void @quantum_cnot_ft(i32, i32, %struct.quantum_reg_struct*) #1

declare i32 @quantum_objcode_put(i8 zeroext, ...) #1

declare void @quantum_decohere(%struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_toffoli(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control1.addr = alloca i32, align 4
  %control2.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %control1, i32* %control1.addr, align 4
  store i32 %control2, i32* %control2.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %control1.addr, align 4
  %2 = load i32, i32* %control2.addr, align 4
  %3 = load i32, i32* %target.addr, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli_ft(i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  br label %if.end.22

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %control1.addr, align 4
  %6 = load i32, i32* %control2.addr, align 4
  %7 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 2, i32 %5, i32 %6, i32 %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  br label %if.end.22

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %12, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %14 = load i64, i64* %state, align 8
  %15 = load i32, i32* %control1.addr, align 4
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %14, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.21

if.then.4:                                        ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 3
  %18 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %18, i64 %idxprom5
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %19 = load i64, i64* %state8, align 8
  %20 = load i32, i32* %control2.addr, align 4
  %sh_prom9 = zext i32 %20 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %19, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.then.4
  %21 = load i32, i32* %target.addr, align 4
  %sh_prom14 = zext i32 %21 to i64
  %shl15 = shl i64 1, %sh_prom14
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node17 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node17, align 8
  %arrayidx18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %24, i64 %idxprom16
  %state19 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx18, i32 0, i32 1
  %25 = load i64, i64* %state19, align 8
  %xor = xor i64 %25, %shl15
  store i64 %xor, i64* %state19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.then.4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.2, %for.end, %if.then
  ret void
}

declare void @quantum_toffoli_ft(i32, i32, i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_unbounded_toffoli(i32 %controlling, %struct.quantum_reg_struct* %reg, ...) #0 {
entry:
  %controlling.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %bits = alloca [1 x %struct.__va_list_tag], align 16
  %target = alloca i32, align 4
  %controls = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %controlling, i32* %controlling.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %controlling.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %controls, align 8
  %2 = load i32*, i32** %controls, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %controlling.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %controlling.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call i64 @quantum_memman(i64 %mul3)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %arraydecay5 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %controlling.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %9 = bitcast i8* %8 to i32*
  %10 = add i32 %gp_offset, 8
  store i32 %10, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %11 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %9, %vaarg.in_reg ], [ %11, %vaarg.in_mem ]
  %12 = load i32, i32* %vaarg.addr
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32*, i32** %controls, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  store i32 %12, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %gp_offset_p9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 0
  %gp_offset10 = load i32, i32* %gp_offset_p9
  %fits_in_gp11 = icmp ule i32 %gp_offset10, 40
  br i1 %fits_in_gp11, label %vaarg.in_reg.12, label %vaarg.in_mem.14

vaarg.in_reg.12:                                  ; preds = %for.end
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 3
  %reg_save_area13 = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area13, i32 %gp_offset10
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %gp_offset10, 8
  store i32 %19, i32* %gp_offset_p9
  br label %vaarg.end.18

vaarg.in_mem.14:                                  ; preds = %for.end
  %overflow_arg_area_p15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 2
  %overflow_arg_area16 = load i8*, i8** %overflow_arg_area_p15
  %20 = bitcast i8* %overflow_arg_area16 to i32*
  %overflow_arg_area.next17 = getelementptr i8, i8* %overflow_arg_area16, i32 8
  store i8* %overflow_arg_area.next17, i8** %overflow_arg_area_p15
  br label %vaarg.end.18

vaarg.end.18:                                     ; preds = %vaarg.in_mem.14, %vaarg.in_reg.12
  %vaarg.addr19 = phi i32* [ %18, %vaarg.in_reg.12 ], [ %20, %vaarg.in_mem.14 ]
  %21 = load i32, i32* %vaarg.addr19
  store i32 %21, i32* %target, align 4
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %arraydecay2021 = bitcast %struct.__va_list_tag* %arraydecay20 to i8*
  call void @llvm.va_end(i8* %arraydecay2021)
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.48, %vaarg.end.18
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size, align 4
  %cmp23 = icmp slt i32 %22, %24
  br i1 %cmp23, label %for.body.25, label %for.end.50

for.body.25:                                      ; preds = %for.cond.22
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.35, %for.body.25
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %controlling.addr, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.26
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %29, i64 %idxprom29
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 1
  %30 = load i64, i64* %state, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32*, i32** %controls, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %32, i64 %idxprom31
  %33 = load i32, i32* %arrayidx32, align 4
  %sh_prom = zext i32 %33 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %30, %shl
  %tobool33 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.26
  %34 = phi i1 [ false, %for.cond.26 ], [ %tobool33, %land.rhs ]
  br i1 %34, label %for.body.34, label %for.end.37

for.body.34:                                      ; preds = %land.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.34
  %35 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.26

for.end.37:                                       ; preds = %land.end
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %controlling.addr, align 4
  %cmp38 = icmp eq i32 %36, %37
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %for.end.37
  %38 = load i32, i32* %target, align 4
  %sh_prom41 = zext i32 %38 to i64
  %shl42 = shl i64 1, %sh_prom41
  %39 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node44 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node44, align 8
  %arrayidx45 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %41, i64 %idxprom43
  %state46 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx45, i32 0, i32 1
  %42 = load i64, i64* %state46, align 8
  %xor = xor i64 %42, %shl42
  store i64 %xor, i64* %state46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %for.end.37
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %43 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %43, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.22

for.end.50:                                       ; preds = %for.cond.22
  %44 = load i32*, i32** %controls, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load i32, i32* %controlling.addr, align 4
  %sub = sub nsw i32 0, %46
  %conv51 = sext i32 %sub to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call i64 @quantum_memman(i64 %mul52)
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %47)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i64 @quantum_memman(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %target.addr, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x_ft(i32 %1, %struct.quantum_reg_struct* %2)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 3, i32 %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  br label %if.end.3

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 1, %sh_prom
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %xor = xor i64 %11, %shl
  store i64 %xor, i64* %state, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %13)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %for.end, %if.then
  ret void
}

declare void @quantum_sigma_x_ft(i32, %struct.quantum_reg_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_sigma_y(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce29 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 4, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 1, %sh_prom
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %state, align 8
  %xor = xor i64 %8, %shl
  store i64 %xor, i64* %state, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node2, align 8
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom1
  %state4 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 1
  %12 = load i64, i64* %state4, align 8
  %13 = load i32, i32* %target.addr, align 4
  %sh_prom5 = zext i32 %13 to i64
  %shl6 = shl i64 1, %sh_prom5
  %and = and i64 %12, %shl6
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node10, align 8
  %arrayidx11 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %16, i64 %idxprom9
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx11, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, 0.000000e+00
  %mul_bd = fmul float %amplitude.imag, 1.000000e+00
  %mul_ad = fmul float %amplitude.real, 1.000000e+00
  %mul_bc = fmul float %amplitude.imag, 0.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.8
  %isnan_cmp12 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp12, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call13 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float 0.000000e+00, float 1.000000e+00) #4
  %17 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call13, <2 x float>* %17, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.8
  %real_mul_phi = phi float [ %mul_r, %if.then.8 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.8 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %real = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real, align 4
  store float %imag_mul_phi, float* %imag, align 4
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %19, i32 0, i32 3
  %20 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node15, align 8
  %arrayidx16 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %20, i64 %idxprom14
  %amplitude17 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx16, i32 0, i32 0
  %amplitude17.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude17, i32 0, i32 0
  %amplitude17.real = load float, float* %amplitude17.realp, align 4
  %amplitude17.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude17, i32 0, i32 1
  %amplitude17.imag = load float, float* %amplitude17.imagp, align 4
  %mul_ac18 = fmul float %amplitude17.real, -0.000000e+00
  %mul_bd19 = fmul float %amplitude17.imag, -1.000000e+00
  %mul_ad20 = fmul float %amplitude17.real, -1.000000e+00
  %mul_bc21 = fmul float %amplitude17.imag, -0.000000e+00
  %mul_r22 = fsub float %mul_ac18, %mul_bd19
  %mul_i23 = fadd float %mul_ad20, %mul_bc21
  %isnan_cmp24 = fcmp uno float %mul_r22, %mul_r22
  br i1 %isnan_cmp24, label %complex_mul_imag_nan.25, label %complex_mul_cont.30, !prof !1

complex_mul_imag_nan.25:                          ; preds = %if.else
  %isnan_cmp26 = fcmp uno float %mul_i23, %mul_i23
  br i1 %isnan_cmp26, label %complex_mul_libcall.27, label %complex_mul_cont.30, !prof !1

complex_mul_libcall.27:                           ; preds = %complex_mul_imag_nan.25
  %call28 = call <2 x float> @__mulsc3(float %amplitude17.real, float %amplitude17.imag, float -0.000000e+00, float -1.000000e+00) #4
  %21 = bitcast { float, float }* %coerce29 to <2 x float>*
  store <2 x float> %call28, <2 x float>* %21, align 4
  %coerce29.realp = getelementptr inbounds { float, float }, { float, float }* %coerce29, i32 0, i32 0
  %coerce29.real = load float, float* %coerce29.realp, align 4
  %coerce29.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce29, i32 0, i32 1
  %coerce29.imag = load float, float* %coerce29.imagp, align 4
  br label %complex_mul_cont.30

complex_mul_cont.30:                              ; preds = %complex_mul_libcall.27, %complex_mul_imag_nan.25, %if.else
  %real_mul_phi31 = phi float [ %mul_r22, %if.else ], [ %mul_r22, %complex_mul_imag_nan.25 ], [ %coerce29.real, %complex_mul_libcall.27 ]
  %imag_mul_phi32 = phi float [ %mul_i23, %if.else ], [ %mul_i23, %complex_mul_imag_nan.25 ], [ %coerce29.imag, %complex_mul_libcall.27 ]
  %real33 = getelementptr inbounds { float, float }, { float, float }* %amplitude17, i32 0, i32 0
  %imag34 = getelementptr inbounds { float, float }, { float, float }* %amplitude17, i32 0, i32 1
  store float %real_mul_phi31, float* %real33, align 4
  store float %imag_mul_phi32, float* %imag34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %complex_mul_cont.30, %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %23)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: nounwind uwtable
define void @quantum_sigma_z(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 5, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 3
  %6 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %6, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %7 = load i64, i64* %state, align 8
  %8 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %7, %shl
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node4, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom3
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, -1.000000e+00
  %mul_bd = fmul float %amplitude.imag, 0.000000e+00
  %mul_ad = fmul float %amplitude.real, 0.000000e+00
  %mul_bc = fmul float %amplitude.imag, -1.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.2
  %isnan_cmp6 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp6, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call7 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float -1.000000e+00, float 0.000000e+00) #4
  %12 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call7, <2 x float>* %12, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.2
  %real_mul_phi = phi float [ %mul_r, %if.then.2 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.2 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %real = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real, align 4
  store float %imag_mul_phi, float* %imag, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %complex_mul_cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %14)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pat1 = alloca i32, align 4
  %pat2 = alloca i32, align 4
  %qec = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, %5
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %3, i32 %add, %struct.quantum_reg_struct* %6)
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %7, %8
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add1, i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %width.addr, align 4
  %13 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %12, %13
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %11, i32 %add2, %struct.quantum_reg_struct* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.40, %if.else
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body.5, label %for.end.42

for.body.5:                                       ; preds = %for.cond.3
  %19 = load i32, i32* %width.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 14, i32 %19)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.5
  br label %if.end.43

if.end:                                           ; preds = %for.body.5
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %21, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %22, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %23 = load i64, i64* %state, align 8
  %24 = load i32, i32* %width.addr, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %rem = urem i64 %23, %shl
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %pat1, align 4
  store i32 0, i32* %pat2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.22, %if.end
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp slt i32 %25, %26
  br i1 %cmp9, label %for.body.11, label %for.end.24

for.body.11:                                      ; preds = %for.cond.8
  %27 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node13 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node13, align 8
  %arrayidx14 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %29, i64 %idxprom12
  %state15 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx14, i32 0, i32 1
  %30 = load i64, i64* %state15, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %31, %32
  %sh_prom17 = zext i32 %add16 to i64
  %shl18 = shl i64 1, %sh_prom17
  %and = and i64 %30, %shl18
  %33 = load i32, i32* %pat2, align 4
  %conv19 = sext i32 %33 to i64
  %add20 = add i64 %conv19, %and
  %conv21 = trunc i64 %add20 to i32
  store i32 %conv21, i32* %pat2, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.11
  %34 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond.8

for.end.24:                                       ; preds = %for.cond.8
  %35 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node26 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %36, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node26, align 8
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %37, i64 %idxprom25
  %state28 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 1
  %38 = load i64, i64* %state28, align 8
  %39 = load i32, i32* %pat1, align 4
  %40 = load i32, i32* %pat2, align 4
  %add29 = add nsw i32 %39, %40
  %conv30 = sext i32 %add29 to i64
  %sub = sub i64 %38, %conv30
  store i64 %sub, i64* %l, align 8
  %41 = load i32, i32* %pat1, align 4
  %42 = load i32, i32* %width.addr, align 4
  %shl31 = shl i32 %41, %42
  %conv32 = sext i32 %shl31 to i64
  %43 = load i64, i64* %l, align 8
  %add33 = add i64 %43, %conv32
  store i64 %add33, i64* %l, align 8
  %44 = load i32, i32* %pat2, align 4
  %45 = load i32, i32* %width.addr, align 4
  %shr = ashr i32 %44, %45
  %conv34 = sext i32 %shr to i64
  %46 = load i64, i64* %l, align 8
  %add35 = add i64 %46, %conv34
  store i64 %add35, i64* %l, align 8
  %47 = load i64, i64* %l, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %48 to i64
  %49 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node37 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %49, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node37, align 8
  %arrayidx38 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %50, i64 %idxprom36
  %state39 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx38, i32 0, i32 1
  store i64 %47, i64* %state39, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.24
  %51 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.3

for.end.42:                                       ; preds = %for.cond.3
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.7, %for.end.42, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads_omuln_controlled(i32 %control, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %control.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %5
  %6 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %mul, %6
  %add2 = add nsw i32 %add1, 2
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %2, i32 %add, i32 %add2, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %control.addr, align 4
  %9 = load i32, i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %9
  %10 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %mul3, %10
  %add5 = add nsw i32 %add4, 2
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, %12
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %8, i32 %add5, i32 %add6, %struct.quantum_reg_struct* %13)
  %14 = load i32, i32* %control.addr, align 4
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %15, %16
  %17 = load i32, i32* %width.addr, align 4
  %mul8 = mul nsw i32 2, %17
  %18 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %mul8, %18
  %add10 = add nsw i32 %add9, 2
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %14, i32 %add7, i32 %add10, %struct.quantum_reg_struct* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_gate1(i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iset = alloca i32, align 4
  %addsize = alloca i32, align 4
  %decsize = alloca i32, align 4
  %t = alloca { float, float }, align 4
  %tnot = alloca { float, float }, align 4
  %limit = alloca float, align 4
  %done = alloca i8*, align 8
  %coerce = alloca { float, float }, align 4
  %coerce41 = alloca { float, float }, align 4
  %coerce172 = alloca { float, float }, align 4
  %coerce186 = alloca { float, float }, align 4
  %coerce213 = alloca { float, float }, align 4
  %coerce234 = alloca { float, float }, align 4
  %coerce269 = alloca { float, float }, align 4
  %coerce290 = alloca { float, float }, align 4
  %coerce320 = alloca { float, float }, align 4
  %coerce341 = alloca { float, float }, align 4
  %coerce357 = alloca { float, float }, align 4
  %coerce370 = alloca { float, float }, align 4
  %coerce411 = alloca { float, float }, align 4
  %coerce439 = alloca { float, float }, align 4
  %coerce477 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1
  %2 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %addsize, align 4
  store i32 0, i32* %decsize, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %3 = load i32, i32* %cols, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32, i32* %rows, align 4
  %cmp1 = icmp ne i32 %4, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %hashw, align 4
  %shl = shl i32 1, %7
  %cmp2 = icmp slt i32 %5, %shl
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 4
  %10 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.8, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.3
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %17, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %18 = load i64, i64* %state, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_add_hash(i64 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %21 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.3

for.end.10:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.61, %for.end.10
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size12 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %for.body.14, label %for.end.63

for.body.14:                                      ; preds = %for.cond.11
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %26, i32 0, i32 3
  %27 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node16, align 8
  %arrayidx17 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %27, i64 %idxprom15
  %state18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx17, i32 0, i32 1
  %28 = load i64, i64* %state18, align 8
  %29 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %29 to i64
  %shl19 = shl i64 1, %sh_prom
  %xor = xor i64 %28, %shl19
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call20 = call i32 @quantum_get_state(i64 %xor, %struct.quantum_reg_struct* byval align 8 %30)
  store i32 %call20, i32* %j, align 4
  %31 = load i32, i32* %j, align 4
  %cmp21 = icmp eq i32 %31, -1
  br i1 %cmp21, label %if.then.22, label %if.end.60

if.then.22:                                       ; preds = %for.body.14
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %32 = load { float, float }*, { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }, { float, float }* %32, i64 1
  %arrayidx24.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 0
  %arrayidx24.real = load float, float* %arrayidx24.realp, align 4
  %arrayidx24.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 1
  %arrayidx24.imag = load float, float* %arrayidx24.imagp, align 4
  %real25 = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag26 = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %arrayidx24.real, float* %real25, align 4
  store float %arrayidx24.imag, float* %imag26, align 4
  %33 = bitcast { float, float }* %coerce to <2 x float>*
  %34 = load <2 x float>, <2 x float>* %33, align 4
  %call27 = call float @quantum_prob_inline(<2 x float> %34)
  %conv = fpext float %call27 to double
  %cmp28 = fcmp ogt double %conv, 1.000000e-09
  br i1 %cmp28, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then.22
  %35 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node31 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %36, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node31, align 8
  %arrayidx32 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %37, i64 %idxprom30
  %state33 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx32, i32 0, i32 1
  %38 = load i64, i64* %state33, align 8
  %39 = load i32, i32* %target.addr, align 4
  %sh_prom34 = zext i32 %39 to i64
  %shl35 = shl i64 1, %sh_prom34
  %and = and i64 %38, %shl35
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %land.lhs.true
  %40 = load i32, i32* %addsize, align 4
  %inc37 = add nsw i32 %40, 1
  store i32 %inc37, i32* %addsize, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %land.lhs.true, %if.then.22
  %t39 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %41 = load { float, float }*, { float, float }** %t39, align 8
  %arrayidx40 = getelementptr inbounds { float, float }, { float, float }* %41, i64 2
  %arrayidx40.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx40, i32 0, i32 0
  %arrayidx40.real = load float, float* %arrayidx40.realp, align 4
  %arrayidx40.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx40, i32 0, i32 1
  %arrayidx40.imag = load float, float* %arrayidx40.imagp, align 4
  %real42 = getelementptr inbounds { float, float }, { float, float }* %coerce41, i32 0, i32 0
  %imag43 = getelementptr inbounds { float, float }, { float, float }* %coerce41, i32 0, i32 1
  store float %arrayidx40.real, float* %real42, align 4
  store float %arrayidx40.imag, float* %imag43, align 4
  %42 = bitcast { float, float }* %coerce41 to <2 x float>*
  %43 = load <2 x float>, <2 x float>* %42, align 4
  %call44 = call float @quantum_prob_inline(<2 x float> %43)
  %conv45 = fpext float %call44 to double
  %cmp46 = fcmp ogt double %conv45, 1.000000e-09
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.59

land.lhs.true.48:                                 ; preds = %if.end.38
  %44 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %44 to i64
  %45 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node50 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %45, i32 0, i32 3
  %46 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node50, align 8
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %46, i64 %idxprom49
  %state52 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 1
  %47 = load i64, i64* %state52, align 8
  %48 = load i32, i32* %target.addr, align 4
  %sh_prom53 = zext i32 %48 to i64
  %shl54 = shl i64 1, %sh_prom53
  %and55 = and i64 %47, %shl54
  %tobool56 = icmp ne i64 %and55, 0
  br i1 %tobool56, label %if.end.59, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.48
  %49 = load i32, i32* %addsize, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %addsize, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %land.lhs.true.48, %if.end.38
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body.14
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %50 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %50, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.11

for.end.63:                                       ; preds = %for.cond.11
  %51 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node64 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %51, i32 0, i32 3
  %52 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node64, align 8
  %53 = bitcast %struct.quantum_reg_node_struct* %52 to i8*
  %54 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size65 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %54, i32 0, i32 1
  %55 = load i32, i32* %size65, align 4
  %56 = load i32, i32* %addsize, align 4
  %add = add nsw i32 %55, %56
  %conv66 = sext i32 %add to i64
  %mul = mul i64 %conv66, 16
  %call67 = call i8* @realloc(i8* %53, i64 %mul) #4
  %57 = bitcast i8* %call67 to %struct.quantum_reg_node_struct*
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node68 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %58, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %57, %struct.quantum_reg_node_struct** %node68, align 8
  %59 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node69 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %59, i32 0, i32 3
  %60 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node69, align 8
  %tobool70 = icmp ne %struct.quantum_reg_node_struct* %60, null
  br i1 %tobool70, label %if.end.75, label %if.then.71

if.then.71:                                       ; preds = %for.end.63
  %61 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size72 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %61, i32 0, i32 1
  %62 = load i32, i32* %size72, align 4
  %63 = load i32, i32* %addsize, align 4
  %add73 = add nsw i32 %62, %63
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add73)
  call void @exit(i32 1) #6
  unreachable

if.end.75:                                        ; preds = %for.end.63
  %64 = load i32, i32* %addsize, align 4
  %conv76 = sext i32 %64 to i64
  %mul77 = mul i64 %conv76, 16
  %call78 = call i64 @quantum_memman(i64 %mul77)
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.96, %if.end.75
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %addsize, align 4
  %cmp80 = icmp slt i32 %65, %66
  br i1 %cmp80, label %for.body.82, label %for.end.98

for.body.82:                                      ; preds = %for.cond.79
  %67 = load i32, i32* %i, align 4
  %68 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size83 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %68, i32 0, i32 1
  %69 = load i32, i32* %size83, align 4
  %add84 = add nsw i32 %67, %69
  %idxprom85 = sext i32 %add84 to i64
  %70 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node86 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %70, i32 0, i32 3
  %71 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node86, align 8
  %arrayidx87 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %71, i64 %idxprom85
  %state88 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx87, i32 0, i32 1
  store i64 0, i64* %state88, align 8
  %72 = load i32, i32* %i, align 4
  %73 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size89 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %73, i32 0, i32 1
  %74 = load i32, i32* %size89, align 4
  %add90 = add nsw i32 %72, %74
  %idxprom91 = sext i32 %add90 to i64
  %75 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node92 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %75, i32 0, i32 3
  %76 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node92, align 8
  %arrayidx93 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %76, i64 %idxprom91
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx93, i32 0, i32 0
  %real94 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag95 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float 0.000000e+00, float* %real94, align 4
  store float 0.000000e+00, float* %imag95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.82
  %77 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %77, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.79

for.end.98:                                       ; preds = %for.cond.79
  %78 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size99 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %78, i32 0, i32 1
  %79 = load i32, i32* %size99, align 4
  %80 = load i32, i32* %addsize, align 4
  %add100 = add nsw i32 %79, %80
  %conv101 = sext i32 %add100 to i64
  %call102 = call noalias i8* @calloc(i64 %conv101, i64 1) #4
  store i8* %call102, i8** %done, align 8
  %81 = load i8*, i8** %done, align 8
  %tobool103 = icmp ne i8* %81, null
  br i1 %tobool103, label %if.end.110, label %if.then.104

if.then.104:                                      ; preds = %for.end.98
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size105 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %82, i32 0, i32 1
  %83 = load i32, i32* %size105, align 4
  %84 = load i32, i32* %addsize, align 4
  %add106 = add nsw i32 %83, %84
  %conv107 = sext i32 %add106 to i64
  %mul108 = mul i64 %conv107, 1
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i64 %mul108)
  call void @exit(i32 1) #6
  unreachable

if.end.110:                                       ; preds = %for.end.98
  %85 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size111 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %85, i32 0, i32 1
  %86 = load i32, i32* %size111, align 4
  %conv112 = sext i32 %86 to i64
  %87 = load i32, i32* %addsize, align 4
  %conv113 = sext i32 %87 to i64
  %mul114 = mul i64 %conv113, 1
  %add115 = add i64 %conv112, %mul114
  %call116 = call i64 @quantum_memman(i64 %add115)
  %88 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size117 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %88, i32 0, i32 1
  %89 = load i32, i32* %size117, align 4
  store i32 %89, i32* %k, align 4
  %90 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %90, i32 0, i32 0
  %91 = load i32, i32* %width, align 4
  %sh_prom118 = zext i32 %91 to i64
  %shl119 = shl i64 1, %sh_prom118
  %conv120 = uitofp i64 %shl119 to double
  %div = fdiv double 1.000000e+00, %conv120
  %div121 = fdiv double %div, 1.000000e+06
  %conv122 = fptrunc double %div121 to float
  store float %conv122, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.459, %if.end.110
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size124 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %93, i32 0, i32 1
  %94 = load i32, i32* %size124, align 4
  %cmp125 = icmp slt i32 %92, %94
  br i1 %cmp125, label %for.body.127, label %for.end.461

for.body.127:                                     ; preds = %for.cond.123
  %95 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %95 to i64
  %96 = load i8*, i8** %done, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %96, i64 %idxprom128
  %97 = load i8, i8* %arrayidx129, align 1
  %tobool130 = icmp ne i8 %97, 0
  br i1 %tobool130, label %if.end.458, label %if.then.131

if.then.131:                                      ; preds = %for.body.127
  %98 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %98 to i64
  %99 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node133 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %99, i32 0, i32 3
  %100 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node133, align 8
  %arrayidx134 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %100, i64 %idxprom132
  %state135 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx134, i32 0, i32 1
  %101 = load i64, i64* %state135, align 8
  %102 = load i32, i32* %target.addr, align 4
  %sh_prom136 = zext i32 %102 to i64
  %shl137 = shl i64 1, %sh_prom136
  %and138 = and i64 %101, %shl137
  %conv139 = trunc i64 %and138 to i32
  store i32 %conv139, i32* %iset, align 4
  %real140 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %imag141 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real140, align 4
  store float 0.000000e+00, float* %imag141, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node143 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %104, i32 0, i32 3
  %105 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node143, align 8
  %arrayidx144 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %105, i64 %idxprom142
  %state145 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx144, i32 0, i32 1
  %106 = load i64, i64* %state145, align 8
  %107 = load i32, i32* %target.addr, align 4
  %sh_prom146 = zext i32 %107 to i64
  %shl147 = shl i64 1, %sh_prom146
  %xor148 = xor i64 %106, %shl147
  %108 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call149 = call i32 @quantum_get_state(i64 %xor148, %struct.quantum_reg_struct* byval align 8 %108)
  store i32 %call149, i32* %j, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %109 to i64
  %110 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node151 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %110, i32 0, i32 3
  %111 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node151, align 8
  %arrayidx152 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %111, i64 %idxprom150
  %amplitude153 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx152, i32 0, i32 0
  %amplitude153.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude153, i32 0, i32 0
  %amplitude153.real = load float, float* %amplitude153.realp, align 4
  %amplitude153.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude153, i32 0, i32 1
  %amplitude153.imag = load float, float* %amplitude153.imagp, align 4
  %real154 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %imag155 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  store float %amplitude153.real, float* %real154, align 4
  store float %amplitude153.imag, float* %imag155, align 4
  %112 = load i32, i32* %j, align 4
  %cmp156 = icmp sge i32 %112, 0
  br i1 %cmp156, label %if.then.158, label %if.end.165

if.then.158:                                      ; preds = %if.then.131
  %113 = load i32, i32* %j, align 4
  %idxprom159 = sext i32 %113 to i64
  %114 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node160 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %114, i32 0, i32 3
  %115 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node160, align 8
  %arrayidx161 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %115, i64 %idxprom159
  %amplitude162 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx161, i32 0, i32 0
  %amplitude162.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude162, i32 0, i32 0
  %amplitude162.real = load float, float* %amplitude162.realp, align 4
  %amplitude162.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude162, i32 0, i32 1
  %amplitude162.imag = load float, float* %amplitude162.imagp, align 4
  %real163 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %imag164 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float %amplitude162.real, float* %real163, align 4
  store float %amplitude162.imag, float* %imag164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.158, %if.then.131
  %116 = load i32, i32* %iset, align 4
  %tobool166 = icmp ne i32 %116, 0
  br i1 %tobool166, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %if.end.165
  %t168 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %117 = load { float, float }*, { float, float }** %t168, align 8
  %arrayidx169 = getelementptr inbounds { float, float }, { float, float }* %117, i64 2
  %arrayidx169.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx169, i32 0, i32 0
  %arrayidx169.real = load float, float* %arrayidx169.realp, align 4
  %arrayidx169.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx169, i32 0, i32 1
  %arrayidx169.imag = load float, float* %arrayidx169.imagp, align 4
  %tnot.realp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real = load float, float* %tnot.realp, align 4
  %tnot.imagp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag = load float, float* %tnot.imagp, align 4
  %mul_ac = fmul float %arrayidx169.real, %tnot.real
  %mul_bd = fmul float %arrayidx169.imag, %tnot.imag
  %mul_ad = fmul float %arrayidx169.real, %tnot.imag
  %mul_bc = fmul float %arrayidx169.imag, %tnot.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.167
  %isnan_cmp170 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp170, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call171 = call <2 x float> @__mulsc3(float %arrayidx169.real, float %arrayidx169.imag, float %tnot.real, float %tnot.imag) #4
  %118 = bitcast { float, float }* %coerce172 to <2 x float>*
  store <2 x float> %call171, <2 x float>* %118, align 4
  %coerce172.realp = getelementptr inbounds { float, float }, { float, float }* %coerce172, i32 0, i32 0
  %coerce172.real = load float, float* %coerce172.realp, align 4
  %coerce172.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce172, i32 0, i32 1
  %coerce172.imag = load float, float* %coerce172.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.167
  %real_mul_phi = phi float [ %mul_r, %if.then.167 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce172.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.167 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce172.imag, %complex_mul_libcall ]
  %t173 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %119 = load { float, float }*, { float, float }** %t173, align 8
  %arrayidx174 = getelementptr inbounds { float, float }, { float, float }* %119, i64 3
  %arrayidx174.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx174, i32 0, i32 0
  %arrayidx174.real = load float, float* %arrayidx174.realp, align 4
  %arrayidx174.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx174, i32 0, i32 1
  %arrayidx174.imag = load float, float* %arrayidx174.imagp, align 4
  %t.realp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real = load float, float* %t.realp, align 4
  %t.imagp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag = load float, float* %t.imagp, align 4
  %mul_ac175 = fmul float %arrayidx174.real, %t.real
  %mul_bd176 = fmul float %arrayidx174.imag, %t.imag
  %mul_ad177 = fmul float %arrayidx174.real, %t.imag
  %mul_bc178 = fmul float %arrayidx174.imag, %t.real
  %mul_r179 = fsub float %mul_ac175, %mul_bd176
  %mul_i180 = fadd float %mul_ad177, %mul_bc178
  %isnan_cmp181 = fcmp uno float %mul_r179, %mul_r179
  br i1 %isnan_cmp181, label %complex_mul_imag_nan.182, label %complex_mul_cont.187, !prof !1

complex_mul_imag_nan.182:                         ; preds = %complex_mul_cont
  %isnan_cmp183 = fcmp uno float %mul_i180, %mul_i180
  br i1 %isnan_cmp183, label %complex_mul_libcall.184, label %complex_mul_cont.187, !prof !1

complex_mul_libcall.184:                          ; preds = %complex_mul_imag_nan.182
  %call185 = call <2 x float> @__mulsc3(float %arrayidx174.real, float %arrayidx174.imag, float %t.real, float %t.imag) #4
  %120 = bitcast { float, float }* %coerce186 to <2 x float>*
  store <2 x float> %call185, <2 x float>* %120, align 4
  %coerce186.realp = getelementptr inbounds { float, float }, { float, float }* %coerce186, i32 0, i32 0
  %coerce186.real = load float, float* %coerce186.realp, align 4
  %coerce186.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce186, i32 0, i32 1
  %coerce186.imag = load float, float* %coerce186.imagp, align 4
  br label %complex_mul_cont.187

complex_mul_cont.187:                             ; preds = %complex_mul_libcall.184, %complex_mul_imag_nan.182, %complex_mul_cont
  %real_mul_phi188 = phi float [ %mul_r179, %complex_mul_cont ], [ %mul_r179, %complex_mul_imag_nan.182 ], [ %coerce186.real, %complex_mul_libcall.184 ]
  %imag_mul_phi189 = phi float [ %mul_i180, %complex_mul_cont ], [ %mul_i180, %complex_mul_imag_nan.182 ], [ %coerce186.imag, %complex_mul_libcall.184 ]
  %add.r = fadd float %real_mul_phi, %real_mul_phi188
  %add.i = fadd float %imag_mul_phi, %imag_mul_phi189
  %121 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %121 to i64
  %122 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node191 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %122, i32 0, i32 3
  %123 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node191, align 8
  %arrayidx192 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %123, i64 %idxprom190
  %amplitude193 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx192, i32 0, i32 0
  %real194 = getelementptr inbounds { float, float }, { float, float }* %amplitude193, i32 0, i32 0
  %imag195 = getelementptr inbounds { float, float }, { float, float }* %amplitude193, i32 0, i32 1
  store float %add.r, float* %real194, align 4
  store float %add.i, float* %imag195, align 4
  br label %if.end.246

if.else:                                          ; preds = %if.end.165
  %t196 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %124 = load { float, float }*, { float, float }** %t196, align 8
  %arrayidx197 = getelementptr inbounds { float, float }, { float, float }* %124, i64 0
  %arrayidx197.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx197, i32 0, i32 0
  %arrayidx197.real = load float, float* %arrayidx197.realp, align 4
  %arrayidx197.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx197, i32 0, i32 1
  %arrayidx197.imag = load float, float* %arrayidx197.imagp, align 4
  %t.realp198 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real199 = load float, float* %t.realp198, align 4
  %t.imagp200 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag201 = load float, float* %t.imagp200, align 4
  %mul_ac202 = fmul float %arrayidx197.real, %t.real199
  %mul_bd203 = fmul float %arrayidx197.imag, %t.imag201
  %mul_ad204 = fmul float %arrayidx197.real, %t.imag201
  %mul_bc205 = fmul float %arrayidx197.imag, %t.real199
  %mul_r206 = fsub float %mul_ac202, %mul_bd203
  %mul_i207 = fadd float %mul_ad204, %mul_bc205
  %isnan_cmp208 = fcmp uno float %mul_r206, %mul_r206
  br i1 %isnan_cmp208, label %complex_mul_imag_nan.209, label %complex_mul_cont.214, !prof !1

complex_mul_imag_nan.209:                         ; preds = %if.else
  %isnan_cmp210 = fcmp uno float %mul_i207, %mul_i207
  br i1 %isnan_cmp210, label %complex_mul_libcall.211, label %complex_mul_cont.214, !prof !1

complex_mul_libcall.211:                          ; preds = %complex_mul_imag_nan.209
  %call212 = call <2 x float> @__mulsc3(float %arrayidx197.real, float %arrayidx197.imag, float %t.real199, float %t.imag201) #4
  %125 = bitcast { float, float }* %coerce213 to <2 x float>*
  store <2 x float> %call212, <2 x float>* %125, align 4
  %coerce213.realp = getelementptr inbounds { float, float }, { float, float }* %coerce213, i32 0, i32 0
  %coerce213.real = load float, float* %coerce213.realp, align 4
  %coerce213.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce213, i32 0, i32 1
  %coerce213.imag = load float, float* %coerce213.imagp, align 4
  br label %complex_mul_cont.214

complex_mul_cont.214:                             ; preds = %complex_mul_libcall.211, %complex_mul_imag_nan.209, %if.else
  %real_mul_phi215 = phi float [ %mul_r206, %if.else ], [ %mul_r206, %complex_mul_imag_nan.209 ], [ %coerce213.real, %complex_mul_libcall.211 ]
  %imag_mul_phi216 = phi float [ %mul_i207, %if.else ], [ %mul_i207, %complex_mul_imag_nan.209 ], [ %coerce213.imag, %complex_mul_libcall.211 ]
  %t217 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %126 = load { float, float }*, { float, float }** %t217, align 8
  %arrayidx218 = getelementptr inbounds { float, float }, { float, float }* %126, i64 1
  %arrayidx218.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx218, i32 0, i32 0
  %arrayidx218.real = load float, float* %arrayidx218.realp, align 4
  %arrayidx218.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx218, i32 0, i32 1
  %arrayidx218.imag = load float, float* %arrayidx218.imagp, align 4
  %tnot.realp219 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real220 = load float, float* %tnot.realp219, align 4
  %tnot.imagp221 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag222 = load float, float* %tnot.imagp221, align 4
  %mul_ac223 = fmul float %arrayidx218.real, %tnot.real220
  %mul_bd224 = fmul float %arrayidx218.imag, %tnot.imag222
  %mul_ad225 = fmul float %arrayidx218.real, %tnot.imag222
  %mul_bc226 = fmul float %arrayidx218.imag, %tnot.real220
  %mul_r227 = fsub float %mul_ac223, %mul_bd224
  %mul_i228 = fadd float %mul_ad225, %mul_bc226
  %isnan_cmp229 = fcmp uno float %mul_r227, %mul_r227
  br i1 %isnan_cmp229, label %complex_mul_imag_nan.230, label %complex_mul_cont.235, !prof !1

complex_mul_imag_nan.230:                         ; preds = %complex_mul_cont.214
  %isnan_cmp231 = fcmp uno float %mul_i228, %mul_i228
  br i1 %isnan_cmp231, label %complex_mul_libcall.232, label %complex_mul_cont.235, !prof !1

complex_mul_libcall.232:                          ; preds = %complex_mul_imag_nan.230
  %call233 = call <2 x float> @__mulsc3(float %arrayidx218.real, float %arrayidx218.imag, float %tnot.real220, float %tnot.imag222) #4
  %127 = bitcast { float, float }* %coerce234 to <2 x float>*
  store <2 x float> %call233, <2 x float>* %127, align 4
  %coerce234.realp = getelementptr inbounds { float, float }, { float, float }* %coerce234, i32 0, i32 0
  %coerce234.real = load float, float* %coerce234.realp, align 4
  %coerce234.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce234, i32 0, i32 1
  %coerce234.imag = load float, float* %coerce234.imagp, align 4
  br label %complex_mul_cont.235

complex_mul_cont.235:                             ; preds = %complex_mul_libcall.232, %complex_mul_imag_nan.230, %complex_mul_cont.214
  %real_mul_phi236 = phi float [ %mul_r227, %complex_mul_cont.214 ], [ %mul_r227, %complex_mul_imag_nan.230 ], [ %coerce234.real, %complex_mul_libcall.232 ]
  %imag_mul_phi237 = phi float [ %mul_i228, %complex_mul_cont.214 ], [ %mul_i228, %complex_mul_imag_nan.230 ], [ %coerce234.imag, %complex_mul_libcall.232 ]
  %add.r238 = fadd float %real_mul_phi215, %real_mul_phi236
  %add.i239 = fadd float %imag_mul_phi216, %imag_mul_phi237
  %128 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %128 to i64
  %129 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node241 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %129, i32 0, i32 3
  %130 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node241, align 8
  %arrayidx242 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %130, i64 %idxprom240
  %amplitude243 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx242, i32 0, i32 0
  %real244 = getelementptr inbounds { float, float }, { float, float }* %amplitude243, i32 0, i32 0
  %imag245 = getelementptr inbounds { float, float }, { float, float }* %amplitude243, i32 0, i32 1
  store float %add.r238, float* %real244, align 4
  store float %add.i239, float* %imag245, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %complex_mul_cont.235, %complex_mul_cont.187
  %131 = load i32, i32* %j, align 4
  %cmp247 = icmp sge i32 %131, 0
  br i1 %cmp247, label %if.then.249, label %if.else.354

if.then.249:                                      ; preds = %if.end.246
  %132 = load i32, i32* %iset, align 4
  %tobool250 = icmp ne i32 %132, 0
  br i1 %tobool250, label %if.then.251, label %if.else.302

if.then.251:                                      ; preds = %if.then.249
  %t252 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %133 = load { float, float }*, { float, float }** %t252, align 8
  %arrayidx253 = getelementptr inbounds { float, float }, { float, float }* %133, i64 0
  %arrayidx253.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx253, i32 0, i32 0
  %arrayidx253.real = load float, float* %arrayidx253.realp, align 4
  %arrayidx253.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx253, i32 0, i32 1
  %arrayidx253.imag = load float, float* %arrayidx253.imagp, align 4
  %tnot.realp254 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real255 = load float, float* %tnot.realp254, align 4
  %tnot.imagp256 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag257 = load float, float* %tnot.imagp256, align 4
  %mul_ac258 = fmul float %arrayidx253.real, %tnot.real255
  %mul_bd259 = fmul float %arrayidx253.imag, %tnot.imag257
  %mul_ad260 = fmul float %arrayidx253.real, %tnot.imag257
  %mul_bc261 = fmul float %arrayidx253.imag, %tnot.real255
  %mul_r262 = fsub float %mul_ac258, %mul_bd259
  %mul_i263 = fadd float %mul_ad260, %mul_bc261
  %isnan_cmp264 = fcmp uno float %mul_r262, %mul_r262
  br i1 %isnan_cmp264, label %complex_mul_imag_nan.265, label %complex_mul_cont.270, !prof !1

complex_mul_imag_nan.265:                         ; preds = %if.then.251
  %isnan_cmp266 = fcmp uno float %mul_i263, %mul_i263
  br i1 %isnan_cmp266, label %complex_mul_libcall.267, label %complex_mul_cont.270, !prof !1

complex_mul_libcall.267:                          ; preds = %complex_mul_imag_nan.265
  %call268 = call <2 x float> @__mulsc3(float %arrayidx253.real, float %arrayidx253.imag, float %tnot.real255, float %tnot.imag257) #4
  %134 = bitcast { float, float }* %coerce269 to <2 x float>*
  store <2 x float> %call268, <2 x float>* %134, align 4
  %coerce269.realp = getelementptr inbounds { float, float }, { float, float }* %coerce269, i32 0, i32 0
  %coerce269.real = load float, float* %coerce269.realp, align 4
  %coerce269.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce269, i32 0, i32 1
  %coerce269.imag = load float, float* %coerce269.imagp, align 4
  br label %complex_mul_cont.270

complex_mul_cont.270:                             ; preds = %complex_mul_libcall.267, %complex_mul_imag_nan.265, %if.then.251
  %real_mul_phi271 = phi float [ %mul_r262, %if.then.251 ], [ %mul_r262, %complex_mul_imag_nan.265 ], [ %coerce269.real, %complex_mul_libcall.267 ]
  %imag_mul_phi272 = phi float [ %mul_i263, %if.then.251 ], [ %mul_i263, %complex_mul_imag_nan.265 ], [ %coerce269.imag, %complex_mul_libcall.267 ]
  %t273 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %135 = load { float, float }*, { float, float }** %t273, align 8
  %arrayidx274 = getelementptr inbounds { float, float }, { float, float }* %135, i64 1
  %arrayidx274.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx274, i32 0, i32 0
  %arrayidx274.real = load float, float* %arrayidx274.realp, align 4
  %arrayidx274.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx274, i32 0, i32 1
  %arrayidx274.imag = load float, float* %arrayidx274.imagp, align 4
  %t.realp275 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real276 = load float, float* %t.realp275, align 4
  %t.imagp277 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag278 = load float, float* %t.imagp277, align 4
  %mul_ac279 = fmul float %arrayidx274.real, %t.real276
  %mul_bd280 = fmul float %arrayidx274.imag, %t.imag278
  %mul_ad281 = fmul float %arrayidx274.real, %t.imag278
  %mul_bc282 = fmul float %arrayidx274.imag, %t.real276
  %mul_r283 = fsub float %mul_ac279, %mul_bd280
  %mul_i284 = fadd float %mul_ad281, %mul_bc282
  %isnan_cmp285 = fcmp uno float %mul_r283, %mul_r283
  br i1 %isnan_cmp285, label %complex_mul_imag_nan.286, label %complex_mul_cont.291, !prof !1

complex_mul_imag_nan.286:                         ; preds = %complex_mul_cont.270
  %isnan_cmp287 = fcmp uno float %mul_i284, %mul_i284
  br i1 %isnan_cmp287, label %complex_mul_libcall.288, label %complex_mul_cont.291, !prof !1

complex_mul_libcall.288:                          ; preds = %complex_mul_imag_nan.286
  %call289 = call <2 x float> @__mulsc3(float %arrayidx274.real, float %arrayidx274.imag, float %t.real276, float %t.imag278) #4
  %136 = bitcast { float, float }* %coerce290 to <2 x float>*
  store <2 x float> %call289, <2 x float>* %136, align 4
  %coerce290.realp = getelementptr inbounds { float, float }, { float, float }* %coerce290, i32 0, i32 0
  %coerce290.real = load float, float* %coerce290.realp, align 4
  %coerce290.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce290, i32 0, i32 1
  %coerce290.imag = load float, float* %coerce290.imagp, align 4
  br label %complex_mul_cont.291

complex_mul_cont.291:                             ; preds = %complex_mul_libcall.288, %complex_mul_imag_nan.286, %complex_mul_cont.270
  %real_mul_phi292 = phi float [ %mul_r283, %complex_mul_cont.270 ], [ %mul_r283, %complex_mul_imag_nan.286 ], [ %coerce290.real, %complex_mul_libcall.288 ]
  %imag_mul_phi293 = phi float [ %mul_i284, %complex_mul_cont.270 ], [ %mul_i284, %complex_mul_imag_nan.286 ], [ %coerce290.imag, %complex_mul_libcall.288 ]
  %add.r294 = fadd float %real_mul_phi271, %real_mul_phi292
  %add.i295 = fadd float %imag_mul_phi272, %imag_mul_phi293
  %137 = load i32, i32* %j, align 4
  %idxprom296 = sext i32 %137 to i64
  %138 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node297 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %138, i32 0, i32 3
  %139 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node297, align 8
  %arrayidx298 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %139, i64 %idxprom296
  %amplitude299 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx298, i32 0, i32 0
  %real300 = getelementptr inbounds { float, float }, { float, float }* %amplitude299, i32 0, i32 0
  %imag301 = getelementptr inbounds { float, float }, { float, float }* %amplitude299, i32 0, i32 1
  store float %add.r294, float* %real300, align 4
  store float %add.i295, float* %imag301, align 4
  br label %if.end.353

if.else.302:                                      ; preds = %if.then.249
  %t303 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %140 = load { float, float }*, { float, float }** %t303, align 8
  %arrayidx304 = getelementptr inbounds { float, float }, { float, float }* %140, i64 2
  %arrayidx304.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx304, i32 0, i32 0
  %arrayidx304.real = load float, float* %arrayidx304.realp, align 4
  %arrayidx304.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx304, i32 0, i32 1
  %arrayidx304.imag = load float, float* %arrayidx304.imagp, align 4
  %t.realp305 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real306 = load float, float* %t.realp305, align 4
  %t.imagp307 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag308 = load float, float* %t.imagp307, align 4
  %mul_ac309 = fmul float %arrayidx304.real, %t.real306
  %mul_bd310 = fmul float %arrayidx304.imag, %t.imag308
  %mul_ad311 = fmul float %arrayidx304.real, %t.imag308
  %mul_bc312 = fmul float %arrayidx304.imag, %t.real306
  %mul_r313 = fsub float %mul_ac309, %mul_bd310
  %mul_i314 = fadd float %mul_ad311, %mul_bc312
  %isnan_cmp315 = fcmp uno float %mul_r313, %mul_r313
  br i1 %isnan_cmp315, label %complex_mul_imag_nan.316, label %complex_mul_cont.321, !prof !1

complex_mul_imag_nan.316:                         ; preds = %if.else.302
  %isnan_cmp317 = fcmp uno float %mul_i314, %mul_i314
  br i1 %isnan_cmp317, label %complex_mul_libcall.318, label %complex_mul_cont.321, !prof !1

complex_mul_libcall.318:                          ; preds = %complex_mul_imag_nan.316
  %call319 = call <2 x float> @__mulsc3(float %arrayidx304.real, float %arrayidx304.imag, float %t.real306, float %t.imag308) #4
  %141 = bitcast { float, float }* %coerce320 to <2 x float>*
  store <2 x float> %call319, <2 x float>* %141, align 4
  %coerce320.realp = getelementptr inbounds { float, float }, { float, float }* %coerce320, i32 0, i32 0
  %coerce320.real = load float, float* %coerce320.realp, align 4
  %coerce320.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce320, i32 0, i32 1
  %coerce320.imag = load float, float* %coerce320.imagp, align 4
  br label %complex_mul_cont.321

complex_mul_cont.321:                             ; preds = %complex_mul_libcall.318, %complex_mul_imag_nan.316, %if.else.302
  %real_mul_phi322 = phi float [ %mul_r313, %if.else.302 ], [ %mul_r313, %complex_mul_imag_nan.316 ], [ %coerce320.real, %complex_mul_libcall.318 ]
  %imag_mul_phi323 = phi float [ %mul_i314, %if.else.302 ], [ %mul_i314, %complex_mul_imag_nan.316 ], [ %coerce320.imag, %complex_mul_libcall.318 ]
  %t324 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %142 = load { float, float }*, { float, float }** %t324, align 8
  %arrayidx325 = getelementptr inbounds { float, float }, { float, float }* %142, i64 3
  %arrayidx325.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx325, i32 0, i32 0
  %arrayidx325.real = load float, float* %arrayidx325.realp, align 4
  %arrayidx325.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx325, i32 0, i32 1
  %arrayidx325.imag = load float, float* %arrayidx325.imagp, align 4
  %tnot.realp326 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real327 = load float, float* %tnot.realp326, align 4
  %tnot.imagp328 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag329 = load float, float* %tnot.imagp328, align 4
  %mul_ac330 = fmul float %arrayidx325.real, %tnot.real327
  %mul_bd331 = fmul float %arrayidx325.imag, %tnot.imag329
  %mul_ad332 = fmul float %arrayidx325.real, %tnot.imag329
  %mul_bc333 = fmul float %arrayidx325.imag, %tnot.real327
  %mul_r334 = fsub float %mul_ac330, %mul_bd331
  %mul_i335 = fadd float %mul_ad332, %mul_bc333
  %isnan_cmp336 = fcmp uno float %mul_r334, %mul_r334
  br i1 %isnan_cmp336, label %complex_mul_imag_nan.337, label %complex_mul_cont.342, !prof !1

complex_mul_imag_nan.337:                         ; preds = %complex_mul_cont.321
  %isnan_cmp338 = fcmp uno float %mul_i335, %mul_i335
  br i1 %isnan_cmp338, label %complex_mul_libcall.339, label %complex_mul_cont.342, !prof !1

complex_mul_libcall.339:                          ; preds = %complex_mul_imag_nan.337
  %call340 = call <2 x float> @__mulsc3(float %arrayidx325.real, float %arrayidx325.imag, float %tnot.real327, float %tnot.imag329) #4
  %143 = bitcast { float, float }* %coerce341 to <2 x float>*
  store <2 x float> %call340, <2 x float>* %143, align 4
  %coerce341.realp = getelementptr inbounds { float, float }, { float, float }* %coerce341, i32 0, i32 0
  %coerce341.real = load float, float* %coerce341.realp, align 4
  %coerce341.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce341, i32 0, i32 1
  %coerce341.imag = load float, float* %coerce341.imagp, align 4
  br label %complex_mul_cont.342

complex_mul_cont.342:                             ; preds = %complex_mul_libcall.339, %complex_mul_imag_nan.337, %complex_mul_cont.321
  %real_mul_phi343 = phi float [ %mul_r334, %complex_mul_cont.321 ], [ %mul_r334, %complex_mul_imag_nan.337 ], [ %coerce341.real, %complex_mul_libcall.339 ]
  %imag_mul_phi344 = phi float [ %mul_i335, %complex_mul_cont.321 ], [ %mul_i335, %complex_mul_imag_nan.337 ], [ %coerce341.imag, %complex_mul_libcall.339 ]
  %add.r345 = fadd float %real_mul_phi322, %real_mul_phi343
  %add.i346 = fadd float %imag_mul_phi323, %imag_mul_phi344
  %144 = load i32, i32* %j, align 4
  %idxprom347 = sext i32 %144 to i64
  %145 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node348 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %145, i32 0, i32 3
  %146 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node348, align 8
  %arrayidx349 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %146, i64 %idxprom347
  %amplitude350 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx349, i32 0, i32 0
  %real351 = getelementptr inbounds { float, float }, { float, float }* %amplitude350, i32 0, i32 0
  %imag352 = getelementptr inbounds { float, float }, { float, float }* %amplitude350, i32 0, i32 1
  store float %add.r345, float* %real351, align 4
  store float %add.i346, float* %imag352, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %complex_mul_cont.342, %complex_mul_cont.291
  br label %if.end.451

if.else.354:                                      ; preds = %if.end.246
  %t355 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %147 = load { float, float }*, { float, float }** %t355, align 8
  %arrayidx356 = getelementptr inbounds { float, float }, { float, float }* %147, i64 1
  %arrayidx356.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx356, i32 0, i32 0
  %arrayidx356.real = load float, float* %arrayidx356.realp, align 4
  %arrayidx356.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx356, i32 0, i32 1
  %arrayidx356.imag = load float, float* %arrayidx356.imagp, align 4
  %real358 = getelementptr inbounds { float, float }, { float, float }* %coerce357, i32 0, i32 0
  %imag359 = getelementptr inbounds { float, float }, { float, float }* %coerce357, i32 0, i32 1
  store float %arrayidx356.real, float* %real358, align 4
  store float %arrayidx356.imag, float* %imag359, align 4
  %148 = bitcast { float, float }* %coerce357 to <2 x float>*
  %149 = load <2 x float>, <2 x float>* %148, align 4
  %call360 = call float @quantum_prob_inline(<2 x float> %149)
  %conv361 = fpext float %call360 to double
  %cmp362 = fcmp olt double %conv361, 1.000000e-09
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.367

land.lhs.true.364:                                ; preds = %if.else.354
  %150 = load i32, i32* %iset, align 4
  %tobool365 = icmp ne i32 %150, 0
  br i1 %tobool365, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %land.lhs.true.364
  br label %for.end.461

if.end.367:                                       ; preds = %land.lhs.true.364, %if.else.354
  %t368 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %151 = load { float, float }*, { float, float }** %t368, align 8
  %arrayidx369 = getelementptr inbounds { float, float }, { float, float }* %151, i64 2
  %arrayidx369.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx369, i32 0, i32 0
  %arrayidx369.real = load float, float* %arrayidx369.realp, align 4
  %arrayidx369.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx369, i32 0, i32 1
  %arrayidx369.imag = load float, float* %arrayidx369.imagp, align 4
  %real371 = getelementptr inbounds { float, float }, { float, float }* %coerce370, i32 0, i32 0
  %imag372 = getelementptr inbounds { float, float }, { float, float }* %coerce370, i32 0, i32 1
  store float %arrayidx369.real, float* %real371, align 4
  store float %arrayidx369.imag, float* %imag372, align 4
  %152 = bitcast { float, float }* %coerce370 to <2 x float>*
  %153 = load <2 x float>, <2 x float>* %152, align 4
  %call373 = call float @quantum_prob_inline(<2 x float> %153)
  %conv374 = fpext float %call373 to double
  %cmp375 = fcmp olt double %conv374, 1.000000e-09
  br i1 %cmp375, label %land.lhs.true.377, label %if.end.380

land.lhs.true.377:                                ; preds = %if.end.367
  %154 = load i32, i32* %iset, align 4
  %tobool378 = icmp ne i32 %154, 0
  br i1 %tobool378, label %if.end.380, label %if.then.379

if.then.379:                                      ; preds = %land.lhs.true.377
  br label %for.end.461

if.end.380:                                       ; preds = %land.lhs.true.377, %if.end.367
  %155 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %155 to i64
  %156 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node382 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %156, i32 0, i32 3
  %157 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node382, align 8
  %arrayidx383 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %157, i64 %idxprom381
  %state384 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx383, i32 0, i32 1
  %158 = load i64, i64* %state384, align 8
  %159 = load i32, i32* %target.addr, align 4
  %sh_prom385 = zext i32 %159 to i64
  %shl386 = shl i64 1, %sh_prom385
  %xor387 = xor i64 %158, %shl386
  %160 = load i32, i32* %k, align 4
  %idxprom388 = sext i32 %160 to i64
  %161 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node389 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %161, i32 0, i32 3
  %162 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node389, align 8
  %arrayidx390 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %162, i64 %idxprom388
  %state391 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx390, i32 0, i32 1
  store i64 %xor387, i64* %state391, align 8
  %163 = load i32, i32* %iset, align 4
  %tobool392 = icmp ne i32 %163, 0
  br i1 %tobool392, label %if.then.393, label %if.else.421

if.then.393:                                      ; preds = %if.end.380
  %t394 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %164 = load { float, float }*, { float, float }** %t394, align 8
  %arrayidx395 = getelementptr inbounds { float, float }, { float, float }* %164, i64 1
  %arrayidx395.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx395, i32 0, i32 0
  %arrayidx395.real = load float, float* %arrayidx395.realp, align 4
  %arrayidx395.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx395, i32 0, i32 1
  %arrayidx395.imag = load float, float* %arrayidx395.imagp, align 4
  %t.realp396 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real397 = load float, float* %t.realp396, align 4
  %t.imagp398 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag399 = load float, float* %t.imagp398, align 4
  %mul_ac400 = fmul float %arrayidx395.real, %t.real397
  %mul_bd401 = fmul float %arrayidx395.imag, %t.imag399
  %mul_ad402 = fmul float %arrayidx395.real, %t.imag399
  %mul_bc403 = fmul float %arrayidx395.imag, %t.real397
  %mul_r404 = fsub float %mul_ac400, %mul_bd401
  %mul_i405 = fadd float %mul_ad402, %mul_bc403
  %isnan_cmp406 = fcmp uno float %mul_r404, %mul_r404
  br i1 %isnan_cmp406, label %complex_mul_imag_nan.407, label %complex_mul_cont.412, !prof !1

complex_mul_imag_nan.407:                         ; preds = %if.then.393
  %isnan_cmp408 = fcmp uno float %mul_i405, %mul_i405
  br i1 %isnan_cmp408, label %complex_mul_libcall.409, label %complex_mul_cont.412, !prof !1

complex_mul_libcall.409:                          ; preds = %complex_mul_imag_nan.407
  %call410 = call <2 x float> @__mulsc3(float %arrayidx395.real, float %arrayidx395.imag, float %t.real397, float %t.imag399) #4
  %165 = bitcast { float, float }* %coerce411 to <2 x float>*
  store <2 x float> %call410, <2 x float>* %165, align 4
  %coerce411.realp = getelementptr inbounds { float, float }, { float, float }* %coerce411, i32 0, i32 0
  %coerce411.real = load float, float* %coerce411.realp, align 4
  %coerce411.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce411, i32 0, i32 1
  %coerce411.imag = load float, float* %coerce411.imagp, align 4
  br label %complex_mul_cont.412

complex_mul_cont.412:                             ; preds = %complex_mul_libcall.409, %complex_mul_imag_nan.407, %if.then.393
  %real_mul_phi413 = phi float [ %mul_r404, %if.then.393 ], [ %mul_r404, %complex_mul_imag_nan.407 ], [ %coerce411.real, %complex_mul_libcall.409 ]
  %imag_mul_phi414 = phi float [ %mul_i405, %if.then.393 ], [ %mul_i405, %complex_mul_imag_nan.407 ], [ %coerce411.imag, %complex_mul_libcall.409 ]
  %166 = load i32, i32* %k, align 4
  %idxprom415 = sext i32 %166 to i64
  %167 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node416 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %167, i32 0, i32 3
  %168 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node416, align 8
  %arrayidx417 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %168, i64 %idxprom415
  %amplitude418 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx417, i32 0, i32 0
  %real419 = getelementptr inbounds { float, float }, { float, float }* %amplitude418, i32 0, i32 0
  %imag420 = getelementptr inbounds { float, float }, { float, float }* %amplitude418, i32 0, i32 1
  store float %real_mul_phi413, float* %real419, align 4
  store float %imag_mul_phi414, float* %imag420, align 4
  br label %if.end.449

if.else.421:                                      ; preds = %if.end.380
  %t422 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %169 = load { float, float }*, { float, float }** %t422, align 8
  %arrayidx423 = getelementptr inbounds { float, float }, { float, float }* %169, i64 2
  %arrayidx423.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx423, i32 0, i32 0
  %arrayidx423.real = load float, float* %arrayidx423.realp, align 4
  %arrayidx423.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx423, i32 0, i32 1
  %arrayidx423.imag = load float, float* %arrayidx423.imagp, align 4
  %t.realp424 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real425 = load float, float* %t.realp424, align 4
  %t.imagp426 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag427 = load float, float* %t.imagp426, align 4
  %mul_ac428 = fmul float %arrayidx423.real, %t.real425
  %mul_bd429 = fmul float %arrayidx423.imag, %t.imag427
  %mul_ad430 = fmul float %arrayidx423.real, %t.imag427
  %mul_bc431 = fmul float %arrayidx423.imag, %t.real425
  %mul_r432 = fsub float %mul_ac428, %mul_bd429
  %mul_i433 = fadd float %mul_ad430, %mul_bc431
  %isnan_cmp434 = fcmp uno float %mul_r432, %mul_r432
  br i1 %isnan_cmp434, label %complex_mul_imag_nan.435, label %complex_mul_cont.440, !prof !1

complex_mul_imag_nan.435:                         ; preds = %if.else.421
  %isnan_cmp436 = fcmp uno float %mul_i433, %mul_i433
  br i1 %isnan_cmp436, label %complex_mul_libcall.437, label %complex_mul_cont.440, !prof !1

complex_mul_libcall.437:                          ; preds = %complex_mul_imag_nan.435
  %call438 = call <2 x float> @__mulsc3(float %arrayidx423.real, float %arrayidx423.imag, float %t.real425, float %t.imag427) #4
  %170 = bitcast { float, float }* %coerce439 to <2 x float>*
  store <2 x float> %call438, <2 x float>* %170, align 4
  %coerce439.realp = getelementptr inbounds { float, float }, { float, float }* %coerce439, i32 0, i32 0
  %coerce439.real = load float, float* %coerce439.realp, align 4
  %coerce439.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce439, i32 0, i32 1
  %coerce439.imag = load float, float* %coerce439.imagp, align 4
  br label %complex_mul_cont.440

complex_mul_cont.440:                             ; preds = %complex_mul_libcall.437, %complex_mul_imag_nan.435, %if.else.421
  %real_mul_phi441 = phi float [ %mul_r432, %if.else.421 ], [ %mul_r432, %complex_mul_imag_nan.435 ], [ %coerce439.real, %complex_mul_libcall.437 ]
  %imag_mul_phi442 = phi float [ %mul_i433, %if.else.421 ], [ %mul_i433, %complex_mul_imag_nan.435 ], [ %coerce439.imag, %complex_mul_libcall.437 ]
  %171 = load i32, i32* %k, align 4
  %idxprom443 = sext i32 %171 to i64
  %172 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node444 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %172, i32 0, i32 3
  %173 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node444, align 8
  %arrayidx445 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %173, i64 %idxprom443
  %amplitude446 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx445, i32 0, i32 0
  %real447 = getelementptr inbounds { float, float }, { float, float }* %amplitude446, i32 0, i32 0
  %imag448 = getelementptr inbounds { float, float }, { float, float }* %amplitude446, i32 0, i32 1
  store float %real_mul_phi441, float* %real447, align 4
  store float %imag_mul_phi442, float* %imag448, align 4
  br label %if.end.449

if.end.449:                                       ; preds = %complex_mul_cont.440, %complex_mul_cont.412
  %174 = load i32, i32* %k, align 4
  %inc450 = add nsw i32 %174, 1
  store i32 %inc450, i32* %k, align 4
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.449, %if.end.353
  %175 = load i32, i32* %j, align 4
  %cmp452 = icmp sge i32 %175, 0
  br i1 %cmp452, label %if.then.454, label %if.end.457

if.then.454:                                      ; preds = %if.end.451
  %176 = load i32, i32* %j, align 4
  %idxprom455 = sext i32 %176 to i64
  %177 = load i8*, i8** %done, align 8
  %arrayidx456 = getelementptr inbounds i8, i8* %177, i64 %idxprom455
  store i8 1, i8* %arrayidx456, align 1
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.454, %if.end.451
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %for.body.127
  br label %for.inc.459

for.inc.459:                                      ; preds = %if.end.458
  %178 = load i32, i32* %i, align 4
  %inc460 = add nsw i32 %178, 1
  store i32 %inc460, i32* %i, align 4
  br label %for.cond.123

for.end.461:                                      ; preds = %if.then.379, %if.then.366, %for.cond.123
  %179 = load i32, i32* %addsize, align 4
  %180 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size462 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %180, i32 0, i32 1
  %181 = load i32, i32* %size462, align 4
  %add463 = add nsw i32 %181, %179
  store i32 %add463, i32* %size462, align 4
  %182 = load i8*, i8** %done, align 8
  call void @free(i8* %182) #4
  %183 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size464 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %183, i32 0, i32 1
  %184 = load i32, i32* %size464, align 4
  %sub = sub nsw i32 0, %184
  %conv465 = sext i32 %sub to i64
  %mul466 = mul i64 %conv465, 1
  %call467 = call i64 @quantum_memman(i64 %mul466)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.468

for.cond.468:                                     ; preds = %for.inc.511, %for.end.461
  %185 = load i32, i32* %i, align 4
  %186 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size469 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %186, i32 0, i32 1
  %187 = load i32, i32* %size469, align 4
  %cmp470 = icmp slt i32 %185, %187
  br i1 %cmp470, label %for.body.472, label %for.end.513

for.body.472:                                     ; preds = %for.cond.468
  %188 = load i32, i32* %i, align 4
  %idxprom473 = sext i32 %188 to i64
  %189 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node474 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %189, i32 0, i32 3
  %190 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node474, align 8
  %arrayidx475 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %190, i64 %idxprom473
  %amplitude476 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx475, i32 0, i32 0
  %amplitude476.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude476, i32 0, i32 0
  %amplitude476.real = load float, float* %amplitude476.realp, align 4
  %amplitude476.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude476, i32 0, i32 1
  %amplitude476.imag = load float, float* %amplitude476.imagp, align 4
  %real478 = getelementptr inbounds { float, float }, { float, float }* %coerce477, i32 0, i32 0
  %imag479 = getelementptr inbounds { float, float }, { float, float }* %coerce477, i32 0, i32 1
  store float %amplitude476.real, float* %real478, align 4
  store float %amplitude476.imag, float* %imag479, align 4
  %191 = bitcast { float, float }* %coerce477 to <2 x float>*
  %192 = load <2 x float>, <2 x float>* %191, align 4
  %call480 = call float @quantum_prob_inline(<2 x float> %192)
  %193 = load float, float* %limit, align 4
  %cmp481 = fcmp olt float %call480, %193
  br i1 %cmp481, label %if.then.483, label %if.else.486

if.then.483:                                      ; preds = %for.body.472
  %194 = load i32, i32* %j, align 4
  %inc484 = add nsw i32 %194, 1
  store i32 %inc484, i32* %j, align 4
  %195 = load i32, i32* %decsize, align 4
  %inc485 = add nsw i32 %195, 1
  store i32 %inc485, i32* %decsize, align 4
  br label %if.end.510

if.else.486:                                      ; preds = %for.body.472
  %196 = load i32, i32* %j, align 4
  %tobool487 = icmp ne i32 %196, 0
  br i1 %tobool487, label %if.then.488, label %if.end.509

if.then.488:                                      ; preds = %if.else.486
  %197 = load i32, i32* %i, align 4
  %idxprom489 = sext i32 %197 to i64
  %198 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node490 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %198, i32 0, i32 3
  %199 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node490, align 8
  %arrayidx491 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %199, i64 %idxprom489
  %state492 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx491, i32 0, i32 1
  %200 = load i64, i64* %state492, align 8
  %201 = load i32, i32* %i, align 4
  %202 = load i32, i32* %j, align 4
  %sub493 = sub nsw i32 %201, %202
  %idxprom494 = sext i32 %sub493 to i64
  %203 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node495 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %203, i32 0, i32 3
  %204 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node495, align 8
  %arrayidx496 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %204, i64 %idxprom494
  %state497 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx496, i32 0, i32 1
  store i64 %200, i64* %state497, align 8
  %205 = load i32, i32* %i, align 4
  %idxprom498 = sext i32 %205 to i64
  %206 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node499 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %206, i32 0, i32 3
  %207 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node499, align 8
  %arrayidx500 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %207, i64 %idxprom498
  %amplitude501 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx500, i32 0, i32 0
  %amplitude501.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude501, i32 0, i32 0
  %amplitude501.real = load float, float* %amplitude501.realp, align 4
  %amplitude501.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude501, i32 0, i32 1
  %amplitude501.imag = load float, float* %amplitude501.imagp, align 4
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %j, align 4
  %sub502 = sub nsw i32 %208, %209
  %idxprom503 = sext i32 %sub502 to i64
  %210 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node504 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %210, i32 0, i32 3
  %211 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node504, align 8
  %arrayidx505 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %211, i64 %idxprom503
  %amplitude506 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx505, i32 0, i32 0
  %real507 = getelementptr inbounds { float, float }, { float, float }* %amplitude506, i32 0, i32 0
  %imag508 = getelementptr inbounds { float, float }, { float, float }* %amplitude506, i32 0, i32 1
  store float %amplitude501.real, float* %real507, align 4
  store float %amplitude501.imag, float* %imag508, align 4
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.488, %if.else.486
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.then.483
  br label %for.inc.511

for.inc.511:                                      ; preds = %if.end.510
  %212 = load i32, i32* %i, align 4
  %inc512 = add nsw i32 %212, 1
  store i32 %inc512, i32* %i, align 4
  br label %for.cond.468

for.end.513:                                      ; preds = %for.cond.468
  %213 = load i32, i32* %decsize, align 4
  %tobool514 = icmp ne i32 %213, 0
  br i1 %tobool514, label %if.then.515, label %if.end.535

if.then.515:                                      ; preds = %for.end.513
  %214 = load i32, i32* %decsize, align 4
  %215 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size516 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %215, i32 0, i32 1
  %216 = load i32, i32* %size516, align 4
  %sub517 = sub nsw i32 %216, %214
  store i32 %sub517, i32* %size516, align 4
  %217 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node518 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %217, i32 0, i32 3
  %218 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node518, align 8
  %219 = bitcast %struct.quantum_reg_node_struct* %218 to i8*
  %220 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size519 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %220, i32 0, i32 1
  %221 = load i32, i32* %size519, align 4
  %conv520 = sext i32 %221 to i64
  %mul521 = mul i64 %conv520, 16
  %call522 = call i8* @realloc(i8* %219, i64 %mul521) #4
  %222 = bitcast i8* %call522 to %struct.quantum_reg_node_struct*
  %223 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node523 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %223, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %222, %struct.quantum_reg_node_struct** %node523, align 8
  %224 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node524 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %224, i32 0, i32 3
  %225 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node524, align 8
  %tobool525 = icmp ne %struct.quantum_reg_node_struct* %225, null
  br i1 %tobool525, label %if.end.530, label %if.then.526

if.then.526:                                      ; preds = %if.then.515
  %226 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size527 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %226, i32 0, i32 1
  %227 = load i32, i32* %size527, align 4
  %228 = load i32, i32* %addsize, align 4
  %add528 = add nsw i32 %227, %228
  %call529 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add528)
  call void @exit(i32 1) #6
  unreachable

if.end.530:                                       ; preds = %if.then.515
  %229 = load i32, i32* %decsize, align 4
  %sub531 = sub nsw i32 0, %229
  %conv532 = sext i32 %sub531 to i64
  %mul533 = mul i64 %conv532, 16
  %call534 = call i64 @quantum_memman(i64 %mul533)
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.530, %for.end.513
  %230 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %230)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @quantum_add_hash(i64 %a, i32 %pos, %struct.quantum_reg_struct* %reg) #5 {
entry:
  %a.addr = alloca i64, align 8
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %hashw, align 4
  %call = call i32 @quantum_hash64(i64 %0, i32 %2)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 4
  %5 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 2
  %10 = load i32, i32* %hashw1, align 4
  %shl = shl i32 1, %10
  %cmp = icmp eq i32 %8, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 4
  %14 = load i32*, i32** %hash3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 %idxprom2
  store i32 %add, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_get_state(i64 %a, %struct.quantum_reg_struct* byval align 8 %reg) #5 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32, i32* %hashw, align 4
  %call = call i32 @quantum_hash64(i64 %0, i32 %1)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %3 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32*, i32** %hash2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %9 = load i64, i64* %state, align 8
  %10 = load i64, i64* %a.addr, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %12 = load i32*, i32** %hash7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %13, 1
  store i32 %sub9, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %16 = load i32, i32* %hashw10, align 4
  %shl = shl i32 1, %16
  %cmp11 = icmp eq i32 %15, %shl
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline(<2 x float> %a.coerce) #5 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call8 = call float @quantum_imag(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @quantum_gate2(i32 %control, i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iset = alloca i32, align 4
  %addsize = alloca i32, align 4
  %decsize = alloca i32, align 4
  %t = alloca { float, float }, align 4
  %tnot = alloca { float, float }, align 4
  %limit = alloca float, align 4
  %done = alloca i8*, align 8
  %coerce = alloca { float, float }, align 4
  %coerce175 = alloca { float, float }, align 4
  %coerce202 = alloca { float, float }, align 4
  %coerce223 = alloca { float, float }, align 4
  %coerce258 = alloca { float, float }, align 4
  %coerce279 = alloca { float, float }, align 4
  %coerce309 = alloca { float, float }, align 4
  %coerce330 = alloca { float, float }, align 4
  %coerce393 = alloca { float, float }, align 4
  %coerce421 = alloca { float, float }, align 4
  %coerce459 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1
  %2 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %addsize, align 4
  store i32 0, i32* %decsize, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %3 = load i32, i32* %cols, align 4
  %cmp = icmp ne i32 %3, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32, i32* %rows, align 4
  %cmp1 = icmp ne i32 %4, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %hashw, align 4
  %shl = shl i32 1, %7
  %cmp2 = icmp slt i32 %5, %shl
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 4
  %10 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.8, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.3
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %17, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %18 = load i64, i64* %state, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_add_hash(i64 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %21 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.3

for.end.10:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.52, %for.end.10
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size12 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %for.body.14, label %for.end.54

for.body.14:                                      ; preds = %for.cond.11
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %26, i32 0, i32 3
  %27 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node16, align 8
  %arrayidx17 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %27, i64 %idxprom15
  %state18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx17, i32 0, i32 1
  %28 = load i64, i64* %state18, align 8
  %29 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %29 to i64
  %shl19 = shl i64 1, %sh_prom
  %xor = xor i64 %28, %shl19
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call20 = call i32 @quantum_get_state(i64 %xor, %struct.quantum_reg_struct* byval align 8 %30)
  store i32 %call20, i32* %j, align 4
  %31 = load i32, i32* %j, align 4
  %cmp21 = icmp eq i32 %31, -1
  br i1 %cmp21, label %if.then.22, label %if.end.51

if.then.22:                                       ; preds = %for.body.14
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %32 = load { float, float }*, { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }, { float, float }* %32, i64 1
  %arrayidx24.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 0
  %arrayidx24.real = load float, float* %arrayidx24.realp, align 4
  %arrayidx24.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 1
  %arrayidx24.imag = load float, float* %arrayidx24.imagp, align 4
  %cmp.r = fcmp une float %arrayidx24.real, 0.000000e+00
  %cmp.i = fcmp une float %arrayidx24.imag, 0.000000e+00
  %or.ri = or i1 %cmp.r, %cmp.i
  br i1 %or.ri, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.then.22
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node26 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %34, i32 0, i32 3
  %35 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node26, align 8
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %35, i64 %idxprom25
  %state28 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 1
  %36 = load i64, i64* %state28, align 8
  %37 = load i32, i32* %target.addr, align 4
  %sh_prom29 = zext i32 %37 to i64
  %shl30 = shl i64 1, %sh_prom29
  %and = and i64 %36, %shl30
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %addsize, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %addsize, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true, %if.then.22
  %t34 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %39 = load { float, float }*, { float, float }** %t34, align 8
  %arrayidx35 = getelementptr inbounds { float, float }, { float, float }* %39, i64 2
  %arrayidx35.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx35, i32 0, i32 0
  %arrayidx35.real = load float, float* %arrayidx35.realp, align 4
  %arrayidx35.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx35, i32 0, i32 1
  %arrayidx35.imag = load float, float* %arrayidx35.imagp, align 4
  %cmp.r36 = fcmp une float %arrayidx35.real, 0.000000e+00
  %cmp.i37 = fcmp une float %arrayidx35.imag, 0.000000e+00
  %or.ri38 = or i1 %cmp.r36, %cmp.i37
  br i1 %or.ri38, label %land.lhs.true.39, label %if.end.50

land.lhs.true.39:                                 ; preds = %if.end.33
  %40 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node41 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %41, i32 0, i32 3
  %42 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node41, align 8
  %arrayidx42 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %42, i64 %idxprom40
  %state43 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx42, i32 0, i32 1
  %43 = load i64, i64* %state43, align 8
  %44 = load i32, i32* %target.addr, align 4
  %sh_prom44 = zext i32 %44 to i64
  %shl45 = shl i64 1, %sh_prom44
  %and46 = and i64 %43, %shl45
  %tobool47 = icmp ne i64 %and46, 0
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.39
  %45 = load i32, i32* %addsize, align 4
  %inc49 = add nsw i32 %45, 1
  store i32 %inc49, i32* %addsize, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %land.lhs.true.39, %if.end.33
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body.14
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %46 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.11

for.end.54:                                       ; preds = %for.cond.11
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node55 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %47, i32 0, i32 3
  %48 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node55, align 8
  %49 = bitcast %struct.quantum_reg_node_struct* %48 to i8*
  %50 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size56 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %50, i32 0, i32 1
  %51 = load i32, i32* %size56, align 4
  %52 = load i32, i32* %addsize, align 4
  %add = add nsw i32 %51, %52
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call57 = call i8* @realloc(i8* %49, i64 %mul) #4
  %53 = bitcast i8* %call57 to %struct.quantum_reg_node_struct*
  %54 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node58 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %54, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %53, %struct.quantum_reg_node_struct** %node58, align 8
  %55 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node59 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %55, i32 0, i32 3
  %56 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node59, align 8
  %tobool60 = icmp ne %struct.quantum_reg_node_struct* %56, null
  br i1 %tobool60, label %if.end.65, label %if.then.61

if.then.61:                                       ; preds = %for.end.54
  %57 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size62 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %57, i32 0, i32 1
  %58 = load i32, i32* %size62, align 4
  %59 = load i32, i32* %addsize, align 4
  %add63 = add nsw i32 %58, %59
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add63)
  call void @exit(i32 1) #6
  unreachable

if.end.65:                                        ; preds = %for.end.54
  %60 = load i32, i32* %addsize, align 4
  %conv66 = sext i32 %60 to i64
  %mul67 = mul i64 %conv66, 16
  %call68 = call i64 @quantum_memman(i64 %mul67)
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.86, %if.end.65
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %addsize, align 4
  %cmp70 = icmp slt i32 %61, %62
  br i1 %cmp70, label %for.body.72, label %for.end.88

for.body.72:                                      ; preds = %for.cond.69
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size73 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %64, i32 0, i32 1
  %65 = load i32, i32* %size73, align 4
  %add74 = add nsw i32 %63, %65
  %idxprom75 = sext i32 %add74 to i64
  %66 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node76 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %66, i32 0, i32 3
  %67 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node76, align 8
  %arrayidx77 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %67, i64 %idxprom75
  %state78 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx77, i32 0, i32 1
  store i64 0, i64* %state78, align 8
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size79 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %69, i32 0, i32 1
  %70 = load i32, i32* %size79, align 4
  %add80 = add nsw i32 %68, %70
  %idxprom81 = sext i32 %add80 to i64
  %71 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node82 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %71, i32 0, i32 3
  %72 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node82, align 8
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %72, i64 %idxprom81
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 0
  %real84 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag85 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float 0.000000e+00, float* %real84, align 4
  store float 0.000000e+00, float* %imag85, align 4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.72
  %73 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %73, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.69

for.end.88:                                       ; preds = %for.cond.69
  %74 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size89 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %74, i32 0, i32 1
  %75 = load i32, i32* %size89, align 4
  %76 = load i32, i32* %addsize, align 4
  %add90 = add nsw i32 %75, %76
  %conv91 = sext i32 %add90 to i64
  %call92 = call noalias i8* @calloc(i64 %conv91, i64 1) #4
  store i8* %call92, i8** %done, align 8
  %77 = load i8*, i8** %done, align 8
  %tobool93 = icmp ne i8* %77, null
  br i1 %tobool93, label %if.end.100, label %if.then.94

if.then.94:                                       ; preds = %for.end.88
  %78 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size95 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %78, i32 0, i32 1
  %79 = load i32, i32* %size95, align 4
  %80 = load i32, i32* %addsize, align 4
  %add96 = add nsw i32 %79, %80
  %conv97 = sext i32 %add96 to i64
  %mul98 = mul i64 %conv97, 1
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i64 %mul98)
  call void @exit(i32 1) #6
  unreachable

if.end.100:                                       ; preds = %for.end.88
  %81 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size101 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %81, i32 0, i32 1
  %82 = load i32, i32* %size101, align 4
  %conv102 = sext i32 %82 to i64
  %83 = load i32, i32* %addsize, align 4
  %conv103 = sext i32 %83 to i64
  %mul104 = mul i64 %conv103, 1
  %add105 = add i64 %conv102, %mul104
  %call106 = call i64 @quantum_memman(i64 %add105)
  %84 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size107 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %84, i32 0, i32 1
  %85 = load i32, i32* %size107, align 4
  store i32 %85, i32* %k, align 4
  %86 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %86, i32 0, i32 0
  %87 = load i32, i32* %width, align 4
  %sh_prom108 = zext i32 %87 to i64
  %shl109 = shl i64 1, %sh_prom108
  %conv110 = uitofp i64 %shl109 to double
  %div = fdiv double 1.000000e+00, %conv110
  %div111 = fdiv double %div, 1.000000e+06
  %conv112 = fptrunc double %div111 to float
  store float %conv112, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.441, %if.end.100
  %88 = load i32, i32* %i, align 4
  %89 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size114 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %89, i32 0, i32 1
  %90 = load i32, i32* %size114, align 4
  %cmp115 = icmp slt i32 %88, %90
  br i1 %cmp115, label %for.body.117, label %for.end.443

for.body.117:                                     ; preds = %for.cond.113
  %91 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %91 to i64
  %92 = load i8*, i8** %done, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %92, i64 %idxprom118
  %93 = load i8, i8* %arrayidx119, align 1
  %tobool120 = icmp ne i8 %93, 0
  br i1 %tobool120, label %if.end.440, label %if.then.121

if.then.121:                                      ; preds = %for.body.117
  %94 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %94 to i64
  %95 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node123 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %95, i32 0, i32 3
  %96 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node123, align 8
  %arrayidx124 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %96, i64 %idxprom122
  %state125 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx124, i32 0, i32 1
  %97 = load i64, i64* %state125, align 8
  %98 = load i32, i32* %target.addr, align 4
  %sh_prom126 = zext i32 %98 to i64
  %shl127 = shl i64 1, %sh_prom126
  %and128 = and i64 %97, %shl127
  %conv129 = trunc i64 %and128 to i32
  store i32 %conv129, i32* %iset, align 4
  %real130 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %imag131 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real130, align 4
  store float 0.000000e+00, float* %imag131, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %99 to i64
  %100 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node133 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %100, i32 0, i32 3
  %101 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node133, align 8
  %arrayidx134 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %101, i64 %idxprom132
  %state135 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx134, i32 0, i32 1
  %102 = load i64, i64* %state135, align 8
  %103 = load i32, i32* %target.addr, align 4
  %sh_prom136 = zext i32 %103 to i64
  %shl137 = shl i64 1, %sh_prom136
  %xor138 = xor i64 %102, %shl137
  %104 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call139 = call i32 @quantum_get_state(i64 %xor138, %struct.quantum_reg_struct* byval align 8 %104)
  store i32 %call139, i32* %j, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %105 to i64
  %106 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node141 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %106, i32 0, i32 3
  %107 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node141, align 8
  %arrayidx142 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %107, i64 %idxprom140
  %amplitude143 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx142, i32 0, i32 0
  %amplitude143.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude143, i32 0, i32 0
  %amplitude143.real = load float, float* %amplitude143.realp, align 4
  %amplitude143.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude143, i32 0, i32 1
  %amplitude143.imag = load float, float* %amplitude143.imagp, align 4
  %real144 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %imag145 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  store float %amplitude143.real, float* %real144, align 4
  store float %amplitude143.imag, float* %imag145, align 4
  %108 = load i32, i32* %j, align 4
  %cmp146 = icmp sge i32 %108, 0
  br i1 %cmp146, label %if.then.148, label %if.end.155

if.then.148:                                      ; preds = %if.then.121
  %109 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %109 to i64
  %110 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node150 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %110, i32 0, i32 3
  %111 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node150, align 8
  %arrayidx151 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %111, i64 %idxprom149
  %amplitude152 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx151, i32 0, i32 0
  %amplitude152.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude152, i32 0, i32 0
  %amplitude152.real = load float, float* %amplitude152.realp, align 4
  %amplitude152.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude152, i32 0, i32 1
  %amplitude152.imag = load float, float* %amplitude152.imagp, align 4
  %real153 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %imag154 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float %amplitude152.real, float* %real153, align 4
  store float %amplitude152.imag, float* %imag154, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.148, %if.then.121
  %112 = load i32, i32* %iset, align 4
  %tobool156 = icmp ne i32 %112, 0
  br i1 %tobool156, label %if.then.157, label %if.else

if.then.157:                                      ; preds = %if.end.155
  %t158 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %113 = load { float, float }*, { float, float }** %t158, align 8
  %arrayidx159 = getelementptr inbounds { float, float }, { float, float }* %113, i64 2
  %arrayidx159.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx159, i32 0, i32 0
  %arrayidx159.real = load float, float* %arrayidx159.realp, align 4
  %arrayidx159.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx159, i32 0, i32 1
  %arrayidx159.imag = load float, float* %arrayidx159.imagp, align 4
  %tnot.realp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real = load float, float* %tnot.realp, align 4
  %tnot.imagp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag = load float, float* %tnot.imagp, align 4
  %mul_ac = fmul float %arrayidx159.real, %tnot.real
  %mul_bd = fmul float %arrayidx159.imag, %tnot.imag
  %mul_ad = fmul float %arrayidx159.real, %tnot.imag
  %mul_bc = fmul float %arrayidx159.imag, %tnot.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.157
  %isnan_cmp160 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp160, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call161 = call <2 x float> @__mulsc3(float %arrayidx159.real, float %arrayidx159.imag, float %tnot.real, float %tnot.imag) #4
  %114 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call161, <2 x float>* %114, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.157
  %real_mul_phi = phi float [ %mul_r, %if.then.157 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.157 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %t162 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %115 = load { float, float }*, { float, float }** %t162, align 8
  %arrayidx163 = getelementptr inbounds { float, float }, { float, float }* %115, i64 3
  %arrayidx163.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx163, i32 0, i32 0
  %arrayidx163.real = load float, float* %arrayidx163.realp, align 4
  %arrayidx163.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx163, i32 0, i32 1
  %arrayidx163.imag = load float, float* %arrayidx163.imagp, align 4
  %t.realp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real = load float, float* %t.realp, align 4
  %t.imagp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag = load float, float* %t.imagp, align 4
  %mul_ac164 = fmul float %arrayidx163.real, %t.real
  %mul_bd165 = fmul float %arrayidx163.imag, %t.imag
  %mul_ad166 = fmul float %arrayidx163.real, %t.imag
  %mul_bc167 = fmul float %arrayidx163.imag, %t.real
  %mul_r168 = fsub float %mul_ac164, %mul_bd165
  %mul_i169 = fadd float %mul_ad166, %mul_bc167
  %isnan_cmp170 = fcmp uno float %mul_r168, %mul_r168
  br i1 %isnan_cmp170, label %complex_mul_imag_nan.171, label %complex_mul_cont.176, !prof !1

complex_mul_imag_nan.171:                         ; preds = %complex_mul_cont
  %isnan_cmp172 = fcmp uno float %mul_i169, %mul_i169
  br i1 %isnan_cmp172, label %complex_mul_libcall.173, label %complex_mul_cont.176, !prof !1

complex_mul_libcall.173:                          ; preds = %complex_mul_imag_nan.171
  %call174 = call <2 x float> @__mulsc3(float %arrayidx163.real, float %arrayidx163.imag, float %t.real, float %t.imag) #4
  %116 = bitcast { float, float }* %coerce175 to <2 x float>*
  store <2 x float> %call174, <2 x float>* %116, align 4
  %coerce175.realp = getelementptr inbounds { float, float }, { float, float }* %coerce175, i32 0, i32 0
  %coerce175.real = load float, float* %coerce175.realp, align 4
  %coerce175.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce175, i32 0, i32 1
  %coerce175.imag = load float, float* %coerce175.imagp, align 4
  br label %complex_mul_cont.176

complex_mul_cont.176:                             ; preds = %complex_mul_libcall.173, %complex_mul_imag_nan.171, %complex_mul_cont
  %real_mul_phi177 = phi float [ %mul_r168, %complex_mul_cont ], [ %mul_r168, %complex_mul_imag_nan.171 ], [ %coerce175.real, %complex_mul_libcall.173 ]
  %imag_mul_phi178 = phi float [ %mul_i169, %complex_mul_cont ], [ %mul_i169, %complex_mul_imag_nan.171 ], [ %coerce175.imag, %complex_mul_libcall.173 ]
  %add.r = fadd float %real_mul_phi, %real_mul_phi177
  %add.i = fadd float %imag_mul_phi, %imag_mul_phi178
  %117 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %117 to i64
  %118 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node180 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %118, i32 0, i32 3
  %119 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node180, align 8
  %arrayidx181 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %119, i64 %idxprom179
  %amplitude182 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx181, i32 0, i32 0
  %real183 = getelementptr inbounds { float, float }, { float, float }* %amplitude182, i32 0, i32 0
  %imag184 = getelementptr inbounds { float, float }, { float, float }* %amplitude182, i32 0, i32 1
  store float %add.r, float* %real183, align 4
  store float %add.i, float* %imag184, align 4
  br label %if.end.235

if.else:                                          ; preds = %if.end.155
  %t185 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %120 = load { float, float }*, { float, float }** %t185, align 8
  %arrayidx186 = getelementptr inbounds { float, float }, { float, float }* %120, i64 0
  %arrayidx186.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx186, i32 0, i32 0
  %arrayidx186.real = load float, float* %arrayidx186.realp, align 4
  %arrayidx186.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx186, i32 0, i32 1
  %arrayidx186.imag = load float, float* %arrayidx186.imagp, align 4
  %t.realp187 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real188 = load float, float* %t.realp187, align 4
  %t.imagp189 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag190 = load float, float* %t.imagp189, align 4
  %mul_ac191 = fmul float %arrayidx186.real, %t.real188
  %mul_bd192 = fmul float %arrayidx186.imag, %t.imag190
  %mul_ad193 = fmul float %arrayidx186.real, %t.imag190
  %mul_bc194 = fmul float %arrayidx186.imag, %t.real188
  %mul_r195 = fsub float %mul_ac191, %mul_bd192
  %mul_i196 = fadd float %mul_ad193, %mul_bc194
  %isnan_cmp197 = fcmp uno float %mul_r195, %mul_r195
  br i1 %isnan_cmp197, label %complex_mul_imag_nan.198, label %complex_mul_cont.203, !prof !1

complex_mul_imag_nan.198:                         ; preds = %if.else
  %isnan_cmp199 = fcmp uno float %mul_i196, %mul_i196
  br i1 %isnan_cmp199, label %complex_mul_libcall.200, label %complex_mul_cont.203, !prof !1

complex_mul_libcall.200:                          ; preds = %complex_mul_imag_nan.198
  %call201 = call <2 x float> @__mulsc3(float %arrayidx186.real, float %arrayidx186.imag, float %t.real188, float %t.imag190) #4
  %121 = bitcast { float, float }* %coerce202 to <2 x float>*
  store <2 x float> %call201, <2 x float>* %121, align 4
  %coerce202.realp = getelementptr inbounds { float, float }, { float, float }* %coerce202, i32 0, i32 0
  %coerce202.real = load float, float* %coerce202.realp, align 4
  %coerce202.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce202, i32 0, i32 1
  %coerce202.imag = load float, float* %coerce202.imagp, align 4
  br label %complex_mul_cont.203

complex_mul_cont.203:                             ; preds = %complex_mul_libcall.200, %complex_mul_imag_nan.198, %if.else
  %real_mul_phi204 = phi float [ %mul_r195, %if.else ], [ %mul_r195, %complex_mul_imag_nan.198 ], [ %coerce202.real, %complex_mul_libcall.200 ]
  %imag_mul_phi205 = phi float [ %mul_i196, %if.else ], [ %mul_i196, %complex_mul_imag_nan.198 ], [ %coerce202.imag, %complex_mul_libcall.200 ]
  %t206 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %122 = load { float, float }*, { float, float }** %t206, align 8
  %arrayidx207 = getelementptr inbounds { float, float }, { float, float }* %122, i64 1
  %arrayidx207.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx207, i32 0, i32 0
  %arrayidx207.real = load float, float* %arrayidx207.realp, align 4
  %arrayidx207.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx207, i32 0, i32 1
  %arrayidx207.imag = load float, float* %arrayidx207.imagp, align 4
  %tnot.realp208 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real209 = load float, float* %tnot.realp208, align 4
  %tnot.imagp210 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag211 = load float, float* %tnot.imagp210, align 4
  %mul_ac212 = fmul float %arrayidx207.real, %tnot.real209
  %mul_bd213 = fmul float %arrayidx207.imag, %tnot.imag211
  %mul_ad214 = fmul float %arrayidx207.real, %tnot.imag211
  %mul_bc215 = fmul float %arrayidx207.imag, %tnot.real209
  %mul_r216 = fsub float %mul_ac212, %mul_bd213
  %mul_i217 = fadd float %mul_ad214, %mul_bc215
  %isnan_cmp218 = fcmp uno float %mul_r216, %mul_r216
  br i1 %isnan_cmp218, label %complex_mul_imag_nan.219, label %complex_mul_cont.224, !prof !1

complex_mul_imag_nan.219:                         ; preds = %complex_mul_cont.203
  %isnan_cmp220 = fcmp uno float %mul_i217, %mul_i217
  br i1 %isnan_cmp220, label %complex_mul_libcall.221, label %complex_mul_cont.224, !prof !1

complex_mul_libcall.221:                          ; preds = %complex_mul_imag_nan.219
  %call222 = call <2 x float> @__mulsc3(float %arrayidx207.real, float %arrayidx207.imag, float %tnot.real209, float %tnot.imag211) #4
  %123 = bitcast { float, float }* %coerce223 to <2 x float>*
  store <2 x float> %call222, <2 x float>* %123, align 4
  %coerce223.realp = getelementptr inbounds { float, float }, { float, float }* %coerce223, i32 0, i32 0
  %coerce223.real = load float, float* %coerce223.realp, align 4
  %coerce223.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce223, i32 0, i32 1
  %coerce223.imag = load float, float* %coerce223.imagp, align 4
  br label %complex_mul_cont.224

complex_mul_cont.224:                             ; preds = %complex_mul_libcall.221, %complex_mul_imag_nan.219, %complex_mul_cont.203
  %real_mul_phi225 = phi float [ %mul_r216, %complex_mul_cont.203 ], [ %mul_r216, %complex_mul_imag_nan.219 ], [ %coerce223.real, %complex_mul_libcall.221 ]
  %imag_mul_phi226 = phi float [ %mul_i217, %complex_mul_cont.203 ], [ %mul_i217, %complex_mul_imag_nan.219 ], [ %coerce223.imag, %complex_mul_libcall.221 ]
  %add.r227 = fadd float %real_mul_phi204, %real_mul_phi225
  %add.i228 = fadd float %imag_mul_phi205, %imag_mul_phi226
  %124 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %124 to i64
  %125 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node230 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %125, i32 0, i32 3
  %126 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node230, align 8
  %arrayidx231 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %126, i64 %idxprom229
  %amplitude232 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx231, i32 0, i32 0
  %real233 = getelementptr inbounds { float, float }, { float, float }* %amplitude232, i32 0, i32 0
  %imag234 = getelementptr inbounds { float, float }, { float, float }* %amplitude232, i32 0, i32 1
  store float %add.r227, float* %real233, align 4
  store float %add.i228, float* %imag234, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %complex_mul_cont.224, %complex_mul_cont.176
  %127 = load i32, i32* %j, align 4
  %cmp236 = icmp sge i32 %127, 0
  br i1 %cmp236, label %if.then.238, label %if.else.343

if.then.238:                                      ; preds = %if.end.235
  %128 = load i32, i32* %iset, align 4
  %tobool239 = icmp ne i32 %128, 0
  br i1 %tobool239, label %if.then.240, label %if.else.291

if.then.240:                                      ; preds = %if.then.238
  %t241 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %129 = load { float, float }*, { float, float }** %t241, align 8
  %arrayidx242 = getelementptr inbounds { float, float }, { float, float }* %129, i64 0
  %arrayidx242.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx242, i32 0, i32 0
  %arrayidx242.real = load float, float* %arrayidx242.realp, align 4
  %arrayidx242.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx242, i32 0, i32 1
  %arrayidx242.imag = load float, float* %arrayidx242.imagp, align 4
  %tnot.realp243 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real244 = load float, float* %tnot.realp243, align 4
  %tnot.imagp245 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag246 = load float, float* %tnot.imagp245, align 4
  %mul_ac247 = fmul float %arrayidx242.real, %tnot.real244
  %mul_bd248 = fmul float %arrayidx242.imag, %tnot.imag246
  %mul_ad249 = fmul float %arrayidx242.real, %tnot.imag246
  %mul_bc250 = fmul float %arrayidx242.imag, %tnot.real244
  %mul_r251 = fsub float %mul_ac247, %mul_bd248
  %mul_i252 = fadd float %mul_ad249, %mul_bc250
  %isnan_cmp253 = fcmp uno float %mul_r251, %mul_r251
  br i1 %isnan_cmp253, label %complex_mul_imag_nan.254, label %complex_mul_cont.259, !prof !1

complex_mul_imag_nan.254:                         ; preds = %if.then.240
  %isnan_cmp255 = fcmp uno float %mul_i252, %mul_i252
  br i1 %isnan_cmp255, label %complex_mul_libcall.256, label %complex_mul_cont.259, !prof !1

complex_mul_libcall.256:                          ; preds = %complex_mul_imag_nan.254
  %call257 = call <2 x float> @__mulsc3(float %arrayidx242.real, float %arrayidx242.imag, float %tnot.real244, float %tnot.imag246) #4
  %130 = bitcast { float, float }* %coerce258 to <2 x float>*
  store <2 x float> %call257, <2 x float>* %130, align 4
  %coerce258.realp = getelementptr inbounds { float, float }, { float, float }* %coerce258, i32 0, i32 0
  %coerce258.real = load float, float* %coerce258.realp, align 4
  %coerce258.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce258, i32 0, i32 1
  %coerce258.imag = load float, float* %coerce258.imagp, align 4
  br label %complex_mul_cont.259

complex_mul_cont.259:                             ; preds = %complex_mul_libcall.256, %complex_mul_imag_nan.254, %if.then.240
  %real_mul_phi260 = phi float [ %mul_r251, %if.then.240 ], [ %mul_r251, %complex_mul_imag_nan.254 ], [ %coerce258.real, %complex_mul_libcall.256 ]
  %imag_mul_phi261 = phi float [ %mul_i252, %if.then.240 ], [ %mul_i252, %complex_mul_imag_nan.254 ], [ %coerce258.imag, %complex_mul_libcall.256 ]
  %t262 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %131 = load { float, float }*, { float, float }** %t262, align 8
  %arrayidx263 = getelementptr inbounds { float, float }, { float, float }* %131, i64 1
  %arrayidx263.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx263, i32 0, i32 0
  %arrayidx263.real = load float, float* %arrayidx263.realp, align 4
  %arrayidx263.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx263, i32 0, i32 1
  %arrayidx263.imag = load float, float* %arrayidx263.imagp, align 4
  %t.realp264 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real265 = load float, float* %t.realp264, align 4
  %t.imagp266 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag267 = load float, float* %t.imagp266, align 4
  %mul_ac268 = fmul float %arrayidx263.real, %t.real265
  %mul_bd269 = fmul float %arrayidx263.imag, %t.imag267
  %mul_ad270 = fmul float %arrayidx263.real, %t.imag267
  %mul_bc271 = fmul float %arrayidx263.imag, %t.real265
  %mul_r272 = fsub float %mul_ac268, %mul_bd269
  %mul_i273 = fadd float %mul_ad270, %mul_bc271
  %isnan_cmp274 = fcmp uno float %mul_r272, %mul_r272
  br i1 %isnan_cmp274, label %complex_mul_imag_nan.275, label %complex_mul_cont.280, !prof !1

complex_mul_imag_nan.275:                         ; preds = %complex_mul_cont.259
  %isnan_cmp276 = fcmp uno float %mul_i273, %mul_i273
  br i1 %isnan_cmp276, label %complex_mul_libcall.277, label %complex_mul_cont.280, !prof !1

complex_mul_libcall.277:                          ; preds = %complex_mul_imag_nan.275
  %call278 = call <2 x float> @__mulsc3(float %arrayidx263.real, float %arrayidx263.imag, float %t.real265, float %t.imag267) #4
  %132 = bitcast { float, float }* %coerce279 to <2 x float>*
  store <2 x float> %call278, <2 x float>* %132, align 4
  %coerce279.realp = getelementptr inbounds { float, float }, { float, float }* %coerce279, i32 0, i32 0
  %coerce279.real = load float, float* %coerce279.realp, align 4
  %coerce279.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce279, i32 0, i32 1
  %coerce279.imag = load float, float* %coerce279.imagp, align 4
  br label %complex_mul_cont.280

complex_mul_cont.280:                             ; preds = %complex_mul_libcall.277, %complex_mul_imag_nan.275, %complex_mul_cont.259
  %real_mul_phi281 = phi float [ %mul_r272, %complex_mul_cont.259 ], [ %mul_r272, %complex_mul_imag_nan.275 ], [ %coerce279.real, %complex_mul_libcall.277 ]
  %imag_mul_phi282 = phi float [ %mul_i273, %complex_mul_cont.259 ], [ %mul_i273, %complex_mul_imag_nan.275 ], [ %coerce279.imag, %complex_mul_libcall.277 ]
  %add.r283 = fadd float %real_mul_phi260, %real_mul_phi281
  %add.i284 = fadd float %imag_mul_phi261, %imag_mul_phi282
  %133 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %133 to i64
  %134 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node286 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %134, i32 0, i32 3
  %135 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node286, align 8
  %arrayidx287 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %135, i64 %idxprom285
  %amplitude288 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx287, i32 0, i32 0
  %real289 = getelementptr inbounds { float, float }, { float, float }* %amplitude288, i32 0, i32 0
  %imag290 = getelementptr inbounds { float, float }, { float, float }* %amplitude288, i32 0, i32 1
  store float %add.r283, float* %real289, align 4
  store float %add.i284, float* %imag290, align 4
  br label %if.end.342

if.else.291:                                      ; preds = %if.then.238
  %t292 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %136 = load { float, float }*, { float, float }** %t292, align 8
  %arrayidx293 = getelementptr inbounds { float, float }, { float, float }* %136, i64 2
  %arrayidx293.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx293, i32 0, i32 0
  %arrayidx293.real = load float, float* %arrayidx293.realp, align 4
  %arrayidx293.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx293, i32 0, i32 1
  %arrayidx293.imag = load float, float* %arrayidx293.imagp, align 4
  %t.realp294 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real295 = load float, float* %t.realp294, align 4
  %t.imagp296 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag297 = load float, float* %t.imagp296, align 4
  %mul_ac298 = fmul float %arrayidx293.real, %t.real295
  %mul_bd299 = fmul float %arrayidx293.imag, %t.imag297
  %mul_ad300 = fmul float %arrayidx293.real, %t.imag297
  %mul_bc301 = fmul float %arrayidx293.imag, %t.real295
  %mul_r302 = fsub float %mul_ac298, %mul_bd299
  %mul_i303 = fadd float %mul_ad300, %mul_bc301
  %isnan_cmp304 = fcmp uno float %mul_r302, %mul_r302
  br i1 %isnan_cmp304, label %complex_mul_imag_nan.305, label %complex_mul_cont.310, !prof !1

complex_mul_imag_nan.305:                         ; preds = %if.else.291
  %isnan_cmp306 = fcmp uno float %mul_i303, %mul_i303
  br i1 %isnan_cmp306, label %complex_mul_libcall.307, label %complex_mul_cont.310, !prof !1

complex_mul_libcall.307:                          ; preds = %complex_mul_imag_nan.305
  %call308 = call <2 x float> @__mulsc3(float %arrayidx293.real, float %arrayidx293.imag, float %t.real295, float %t.imag297) #4
  %137 = bitcast { float, float }* %coerce309 to <2 x float>*
  store <2 x float> %call308, <2 x float>* %137, align 4
  %coerce309.realp = getelementptr inbounds { float, float }, { float, float }* %coerce309, i32 0, i32 0
  %coerce309.real = load float, float* %coerce309.realp, align 4
  %coerce309.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce309, i32 0, i32 1
  %coerce309.imag = load float, float* %coerce309.imagp, align 4
  br label %complex_mul_cont.310

complex_mul_cont.310:                             ; preds = %complex_mul_libcall.307, %complex_mul_imag_nan.305, %if.else.291
  %real_mul_phi311 = phi float [ %mul_r302, %if.else.291 ], [ %mul_r302, %complex_mul_imag_nan.305 ], [ %coerce309.real, %complex_mul_libcall.307 ]
  %imag_mul_phi312 = phi float [ %mul_i303, %if.else.291 ], [ %mul_i303, %complex_mul_imag_nan.305 ], [ %coerce309.imag, %complex_mul_libcall.307 ]
  %t313 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %138 = load { float, float }*, { float, float }** %t313, align 8
  %arrayidx314 = getelementptr inbounds { float, float }, { float, float }* %138, i64 3
  %arrayidx314.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx314, i32 0, i32 0
  %arrayidx314.real = load float, float* %arrayidx314.realp, align 4
  %arrayidx314.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx314, i32 0, i32 1
  %arrayidx314.imag = load float, float* %arrayidx314.imagp, align 4
  %tnot.realp315 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real316 = load float, float* %tnot.realp315, align 4
  %tnot.imagp317 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag318 = load float, float* %tnot.imagp317, align 4
  %mul_ac319 = fmul float %arrayidx314.real, %tnot.real316
  %mul_bd320 = fmul float %arrayidx314.imag, %tnot.imag318
  %mul_ad321 = fmul float %arrayidx314.real, %tnot.imag318
  %mul_bc322 = fmul float %arrayidx314.imag, %tnot.real316
  %mul_r323 = fsub float %mul_ac319, %mul_bd320
  %mul_i324 = fadd float %mul_ad321, %mul_bc322
  %isnan_cmp325 = fcmp uno float %mul_r323, %mul_r323
  br i1 %isnan_cmp325, label %complex_mul_imag_nan.326, label %complex_mul_cont.331, !prof !1

complex_mul_imag_nan.326:                         ; preds = %complex_mul_cont.310
  %isnan_cmp327 = fcmp uno float %mul_i324, %mul_i324
  br i1 %isnan_cmp327, label %complex_mul_libcall.328, label %complex_mul_cont.331, !prof !1

complex_mul_libcall.328:                          ; preds = %complex_mul_imag_nan.326
  %call329 = call <2 x float> @__mulsc3(float %arrayidx314.real, float %arrayidx314.imag, float %tnot.real316, float %tnot.imag318) #4
  %139 = bitcast { float, float }* %coerce330 to <2 x float>*
  store <2 x float> %call329, <2 x float>* %139, align 4
  %coerce330.realp = getelementptr inbounds { float, float }, { float, float }* %coerce330, i32 0, i32 0
  %coerce330.real = load float, float* %coerce330.realp, align 4
  %coerce330.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce330, i32 0, i32 1
  %coerce330.imag = load float, float* %coerce330.imagp, align 4
  br label %complex_mul_cont.331

complex_mul_cont.331:                             ; preds = %complex_mul_libcall.328, %complex_mul_imag_nan.326, %complex_mul_cont.310
  %real_mul_phi332 = phi float [ %mul_r323, %complex_mul_cont.310 ], [ %mul_r323, %complex_mul_imag_nan.326 ], [ %coerce330.real, %complex_mul_libcall.328 ]
  %imag_mul_phi333 = phi float [ %mul_i324, %complex_mul_cont.310 ], [ %mul_i324, %complex_mul_imag_nan.326 ], [ %coerce330.imag, %complex_mul_libcall.328 ]
  %add.r334 = fadd float %real_mul_phi311, %real_mul_phi332
  %add.i335 = fadd float %imag_mul_phi312, %imag_mul_phi333
  %140 = load i32, i32* %j, align 4
  %idxprom336 = sext i32 %140 to i64
  %141 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node337 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %141, i32 0, i32 3
  %142 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node337, align 8
  %arrayidx338 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %142, i64 %idxprom336
  %amplitude339 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx338, i32 0, i32 0
  %real340 = getelementptr inbounds { float, float }, { float, float }* %amplitude339, i32 0, i32 0
  %imag341 = getelementptr inbounds { float, float }, { float, float }* %amplitude339, i32 0, i32 1
  store float %add.r334, float* %real340, align 4
  store float %add.i335, float* %imag341, align 4
  br label %if.end.342

if.end.342:                                       ; preds = %complex_mul_cont.331, %complex_mul_cont.280
  br label %if.end.433

if.else.343:                                      ; preds = %if.end.235
  %t344 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %143 = load { float, float }*, { float, float }** %t344, align 8
  %arrayidx345 = getelementptr inbounds { float, float }, { float, float }* %143, i64 1
  %arrayidx345.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx345, i32 0, i32 0
  %arrayidx345.real = load float, float* %arrayidx345.realp, align 4
  %arrayidx345.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx345, i32 0, i32 1
  %arrayidx345.imag = load float, float* %arrayidx345.imagp, align 4
  %cmp.r346 = fcmp oeq float %arrayidx345.real, 0.000000e+00
  %cmp.i347 = fcmp oeq float %arrayidx345.imag, 0.000000e+00
  %and.ri = and i1 %cmp.r346, %cmp.i347
  br i1 %and.ri, label %land.lhs.true.349, label %if.end.352

land.lhs.true.349:                                ; preds = %if.else.343
  %144 = load i32, i32* %iset, align 4
  %tobool350 = icmp ne i32 %144, 0
  br i1 %tobool350, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %land.lhs.true.349
  br label %for.end.443

if.end.352:                                       ; preds = %land.lhs.true.349, %if.else.343
  %t353 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %145 = load { float, float }*, { float, float }** %t353, align 8
  %arrayidx354 = getelementptr inbounds { float, float }, { float, float }* %145, i64 2
  %arrayidx354.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx354, i32 0, i32 0
  %arrayidx354.real = load float, float* %arrayidx354.realp, align 4
  %arrayidx354.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx354, i32 0, i32 1
  %arrayidx354.imag = load float, float* %arrayidx354.imagp, align 4
  %cmp.r355 = fcmp oeq float %arrayidx354.real, 0.000000e+00
  %cmp.i356 = fcmp oeq float %arrayidx354.imag, 0.000000e+00
  %and.ri357 = and i1 %cmp.r355, %cmp.i356
  br i1 %and.ri357, label %land.lhs.true.359, label %if.end.362

land.lhs.true.359:                                ; preds = %if.end.352
  %146 = load i32, i32* %iset, align 4
  %tobool360 = icmp ne i32 %146, 0
  br i1 %tobool360, label %if.end.362, label %if.then.361

if.then.361:                                      ; preds = %land.lhs.true.359
  br label %for.end.443

if.end.362:                                       ; preds = %land.lhs.true.359, %if.end.352
  %147 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %147 to i64
  %148 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node364 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %148, i32 0, i32 3
  %149 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node364, align 8
  %arrayidx365 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %149, i64 %idxprom363
  %state366 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx365, i32 0, i32 1
  %150 = load i64, i64* %state366, align 8
  %151 = load i32, i32* %target.addr, align 4
  %sh_prom367 = zext i32 %151 to i64
  %shl368 = shl i64 1, %sh_prom367
  %xor369 = xor i64 %150, %shl368
  %152 = load i32, i32* %k, align 4
  %idxprom370 = sext i32 %152 to i64
  %153 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node371 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %153, i32 0, i32 3
  %154 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node371, align 8
  %arrayidx372 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %154, i64 %idxprom370
  %state373 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx372, i32 0, i32 1
  store i64 %xor369, i64* %state373, align 8
  %155 = load i32, i32* %iset, align 4
  %tobool374 = icmp ne i32 %155, 0
  br i1 %tobool374, label %if.then.375, label %if.else.403

if.then.375:                                      ; preds = %if.end.362
  %t376 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %156 = load { float, float }*, { float, float }** %t376, align 8
  %arrayidx377 = getelementptr inbounds { float, float }, { float, float }* %156, i64 1
  %arrayidx377.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx377, i32 0, i32 0
  %arrayidx377.real = load float, float* %arrayidx377.realp, align 4
  %arrayidx377.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx377, i32 0, i32 1
  %arrayidx377.imag = load float, float* %arrayidx377.imagp, align 4
  %t.realp378 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real379 = load float, float* %t.realp378, align 4
  %t.imagp380 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag381 = load float, float* %t.imagp380, align 4
  %mul_ac382 = fmul float %arrayidx377.real, %t.real379
  %mul_bd383 = fmul float %arrayidx377.imag, %t.imag381
  %mul_ad384 = fmul float %arrayidx377.real, %t.imag381
  %mul_bc385 = fmul float %arrayidx377.imag, %t.real379
  %mul_r386 = fsub float %mul_ac382, %mul_bd383
  %mul_i387 = fadd float %mul_ad384, %mul_bc385
  %isnan_cmp388 = fcmp uno float %mul_r386, %mul_r386
  br i1 %isnan_cmp388, label %complex_mul_imag_nan.389, label %complex_mul_cont.394, !prof !1

complex_mul_imag_nan.389:                         ; preds = %if.then.375
  %isnan_cmp390 = fcmp uno float %mul_i387, %mul_i387
  br i1 %isnan_cmp390, label %complex_mul_libcall.391, label %complex_mul_cont.394, !prof !1

complex_mul_libcall.391:                          ; preds = %complex_mul_imag_nan.389
  %call392 = call <2 x float> @__mulsc3(float %arrayidx377.real, float %arrayidx377.imag, float %t.real379, float %t.imag381) #4
  %157 = bitcast { float, float }* %coerce393 to <2 x float>*
  store <2 x float> %call392, <2 x float>* %157, align 4
  %coerce393.realp = getelementptr inbounds { float, float }, { float, float }* %coerce393, i32 0, i32 0
  %coerce393.real = load float, float* %coerce393.realp, align 4
  %coerce393.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce393, i32 0, i32 1
  %coerce393.imag = load float, float* %coerce393.imagp, align 4
  br label %complex_mul_cont.394

complex_mul_cont.394:                             ; preds = %complex_mul_libcall.391, %complex_mul_imag_nan.389, %if.then.375
  %real_mul_phi395 = phi float [ %mul_r386, %if.then.375 ], [ %mul_r386, %complex_mul_imag_nan.389 ], [ %coerce393.real, %complex_mul_libcall.391 ]
  %imag_mul_phi396 = phi float [ %mul_i387, %if.then.375 ], [ %mul_i387, %complex_mul_imag_nan.389 ], [ %coerce393.imag, %complex_mul_libcall.391 ]
  %158 = load i32, i32* %k, align 4
  %idxprom397 = sext i32 %158 to i64
  %159 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node398 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %159, i32 0, i32 3
  %160 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node398, align 8
  %arrayidx399 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %160, i64 %idxprom397
  %amplitude400 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx399, i32 0, i32 0
  %real401 = getelementptr inbounds { float, float }, { float, float }* %amplitude400, i32 0, i32 0
  %imag402 = getelementptr inbounds { float, float }, { float, float }* %amplitude400, i32 0, i32 1
  store float %real_mul_phi395, float* %real401, align 4
  store float %imag_mul_phi396, float* %imag402, align 4
  br label %if.end.431

if.else.403:                                      ; preds = %if.end.362
  %t404 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %161 = load { float, float }*, { float, float }** %t404, align 8
  %arrayidx405 = getelementptr inbounds { float, float }, { float, float }* %161, i64 2
  %arrayidx405.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx405, i32 0, i32 0
  %arrayidx405.real = load float, float* %arrayidx405.realp, align 4
  %arrayidx405.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx405, i32 0, i32 1
  %arrayidx405.imag = load float, float* %arrayidx405.imagp, align 4
  %t.realp406 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real407 = load float, float* %t.realp406, align 4
  %t.imagp408 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag409 = load float, float* %t.imagp408, align 4
  %mul_ac410 = fmul float %arrayidx405.real, %t.real407
  %mul_bd411 = fmul float %arrayidx405.imag, %t.imag409
  %mul_ad412 = fmul float %arrayidx405.real, %t.imag409
  %mul_bc413 = fmul float %arrayidx405.imag, %t.real407
  %mul_r414 = fsub float %mul_ac410, %mul_bd411
  %mul_i415 = fadd float %mul_ad412, %mul_bc413
  %isnan_cmp416 = fcmp uno float %mul_r414, %mul_r414
  br i1 %isnan_cmp416, label %complex_mul_imag_nan.417, label %complex_mul_cont.422, !prof !1

complex_mul_imag_nan.417:                         ; preds = %if.else.403
  %isnan_cmp418 = fcmp uno float %mul_i415, %mul_i415
  br i1 %isnan_cmp418, label %complex_mul_libcall.419, label %complex_mul_cont.422, !prof !1

complex_mul_libcall.419:                          ; preds = %complex_mul_imag_nan.417
  %call420 = call <2 x float> @__mulsc3(float %arrayidx405.real, float %arrayidx405.imag, float %t.real407, float %t.imag409) #4
  %162 = bitcast { float, float }* %coerce421 to <2 x float>*
  store <2 x float> %call420, <2 x float>* %162, align 4
  %coerce421.realp = getelementptr inbounds { float, float }, { float, float }* %coerce421, i32 0, i32 0
  %coerce421.real = load float, float* %coerce421.realp, align 4
  %coerce421.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce421, i32 0, i32 1
  %coerce421.imag = load float, float* %coerce421.imagp, align 4
  br label %complex_mul_cont.422

complex_mul_cont.422:                             ; preds = %complex_mul_libcall.419, %complex_mul_imag_nan.417, %if.else.403
  %real_mul_phi423 = phi float [ %mul_r414, %if.else.403 ], [ %mul_r414, %complex_mul_imag_nan.417 ], [ %coerce421.real, %complex_mul_libcall.419 ]
  %imag_mul_phi424 = phi float [ %mul_i415, %if.else.403 ], [ %mul_i415, %complex_mul_imag_nan.417 ], [ %coerce421.imag, %complex_mul_libcall.419 ]
  %163 = load i32, i32* %k, align 4
  %idxprom425 = sext i32 %163 to i64
  %164 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node426 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %164, i32 0, i32 3
  %165 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node426, align 8
  %arrayidx427 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %165, i64 %idxprom425
  %amplitude428 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx427, i32 0, i32 0
  %real429 = getelementptr inbounds { float, float }, { float, float }* %amplitude428, i32 0, i32 0
  %imag430 = getelementptr inbounds { float, float }, { float, float }* %amplitude428, i32 0, i32 1
  store float %real_mul_phi423, float* %real429, align 4
  store float %imag_mul_phi424, float* %imag430, align 4
  br label %if.end.431

if.end.431:                                       ; preds = %complex_mul_cont.422, %complex_mul_cont.394
  %166 = load i32, i32* %k, align 4
  %inc432 = add nsw i32 %166, 1
  store i32 %inc432, i32* %k, align 4
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.431, %if.end.342
  %167 = load i32, i32* %j, align 4
  %cmp434 = icmp sge i32 %167, 0
  br i1 %cmp434, label %if.then.436, label %if.end.439

if.then.436:                                      ; preds = %if.end.433
  %168 = load i32, i32* %j, align 4
  %idxprom437 = sext i32 %168 to i64
  %169 = load i8*, i8** %done, align 8
  %arrayidx438 = getelementptr inbounds i8, i8* %169, i64 %idxprom437
  store i8 1, i8* %arrayidx438, align 1
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.436, %if.end.433
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %for.body.117
  br label %for.inc.441

for.inc.441:                                      ; preds = %if.end.440
  %170 = load i32, i32* %i, align 4
  %inc442 = add nsw i32 %170, 1
  store i32 %inc442, i32* %i, align 4
  br label %for.cond.113

for.end.443:                                      ; preds = %if.then.361, %if.then.351, %for.cond.113
  %171 = load i32, i32* %addsize, align 4
  %172 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size444 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %172, i32 0, i32 1
  %173 = load i32, i32* %size444, align 4
  %add445 = add nsw i32 %173, %171
  store i32 %add445, i32* %size444, align 4
  %174 = load i8*, i8** %done, align 8
  call void @free(i8* %174) #4
  %175 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size446 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %175, i32 0, i32 1
  %176 = load i32, i32* %size446, align 4
  %sub = sub nsw i32 0, %176
  %conv447 = sext i32 %sub to i64
  %mul448 = mul i64 %conv447, 1
  %call449 = call i64 @quantum_memman(i64 %mul448)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.450

for.cond.450:                                     ; preds = %for.inc.493, %for.end.443
  %177 = load i32, i32* %i, align 4
  %178 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size451 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %178, i32 0, i32 1
  %179 = load i32, i32* %size451, align 4
  %cmp452 = icmp slt i32 %177, %179
  br i1 %cmp452, label %for.body.454, label %for.end.495

for.body.454:                                     ; preds = %for.cond.450
  %180 = load i32, i32* %i, align 4
  %idxprom455 = sext i32 %180 to i64
  %181 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node456 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %181, i32 0, i32 3
  %182 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node456, align 8
  %arrayidx457 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %182, i64 %idxprom455
  %amplitude458 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx457, i32 0, i32 0
  %amplitude458.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude458, i32 0, i32 0
  %amplitude458.real = load float, float* %amplitude458.realp, align 4
  %amplitude458.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude458, i32 0, i32 1
  %amplitude458.imag = load float, float* %amplitude458.imagp, align 4
  %real460 = getelementptr inbounds { float, float }, { float, float }* %coerce459, i32 0, i32 0
  %imag461 = getelementptr inbounds { float, float }, { float, float }* %coerce459, i32 0, i32 1
  store float %amplitude458.real, float* %real460, align 4
  store float %amplitude458.imag, float* %imag461, align 4
  %183 = bitcast { float, float }* %coerce459 to <2 x float>*
  %184 = load <2 x float>, <2 x float>* %183, align 4
  %call462 = call float @quantum_prob_inline(<2 x float> %184)
  %185 = load float, float* %limit, align 4
  %cmp463 = fcmp olt float %call462, %185
  br i1 %cmp463, label %if.then.465, label %if.else.468

if.then.465:                                      ; preds = %for.body.454
  %186 = load i32, i32* %j, align 4
  %inc466 = add nsw i32 %186, 1
  store i32 %inc466, i32* %j, align 4
  %187 = load i32, i32* %decsize, align 4
  %inc467 = add nsw i32 %187, 1
  store i32 %inc467, i32* %decsize, align 4
  br label %if.end.492

if.else.468:                                      ; preds = %for.body.454
  %188 = load i32, i32* %j, align 4
  %tobool469 = icmp ne i32 %188, 0
  br i1 %tobool469, label %if.then.470, label %if.end.491

if.then.470:                                      ; preds = %if.else.468
  %189 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %189 to i64
  %190 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node472 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %190, i32 0, i32 3
  %191 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node472, align 8
  %arrayidx473 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %191, i64 %idxprom471
  %state474 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx473, i32 0, i32 1
  %192 = load i64, i64* %state474, align 8
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %j, align 4
  %sub475 = sub nsw i32 %193, %194
  %idxprom476 = sext i32 %sub475 to i64
  %195 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node477 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %195, i32 0, i32 3
  %196 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node477, align 8
  %arrayidx478 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %196, i64 %idxprom476
  %state479 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx478, i32 0, i32 1
  store i64 %192, i64* %state479, align 8
  %197 = load i32, i32* %i, align 4
  %idxprom480 = sext i32 %197 to i64
  %198 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node481 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %198, i32 0, i32 3
  %199 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node481, align 8
  %arrayidx482 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %199, i64 %idxprom480
  %amplitude483 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx482, i32 0, i32 0
  %amplitude483.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude483, i32 0, i32 0
  %amplitude483.real = load float, float* %amplitude483.realp, align 4
  %amplitude483.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude483, i32 0, i32 1
  %amplitude483.imag = load float, float* %amplitude483.imagp, align 4
  %200 = load i32, i32* %i, align 4
  %201 = load i32, i32* %j, align 4
  %sub484 = sub nsw i32 %200, %201
  %idxprom485 = sext i32 %sub484 to i64
  %202 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node486 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %202, i32 0, i32 3
  %203 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node486, align 8
  %arrayidx487 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %203, i64 %idxprom485
  %amplitude488 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx487, i32 0, i32 0
  %real489 = getelementptr inbounds { float, float }, { float, float }* %amplitude488, i32 0, i32 0
  %imag490 = getelementptr inbounds { float, float }, { float, float }* %amplitude488, i32 0, i32 1
  store float %amplitude483.real, float* %real489, align 4
  store float %amplitude483.imag, float* %imag490, align 4
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.470, %if.else.468
  br label %if.end.492

if.end.492:                                       ; preds = %if.end.491, %if.then.465
  br label %for.inc.493

for.inc.493:                                      ; preds = %if.end.492
  %204 = load i32, i32* %i, align 4
  %inc494 = add nsw i32 %204, 1
  store i32 %inc494, i32* %i, align 4
  br label %for.cond.450

for.end.495:                                      ; preds = %for.cond.450
  %205 = load i32, i32* %decsize, align 4
  %tobool496 = icmp ne i32 %205, 0
  br i1 %tobool496, label %if.then.497, label %if.end.517

if.then.497:                                      ; preds = %for.end.495
  %206 = load i32, i32* %decsize, align 4
  %207 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size498 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %207, i32 0, i32 1
  %208 = load i32, i32* %size498, align 4
  %sub499 = sub nsw i32 %208, %206
  store i32 %sub499, i32* %size498, align 4
  %209 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node500 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %209, i32 0, i32 3
  %210 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node500, align 8
  %211 = bitcast %struct.quantum_reg_node_struct* %210 to i8*
  %212 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size501 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %212, i32 0, i32 1
  %213 = load i32, i32* %size501, align 4
  %conv502 = sext i32 %213 to i64
  %mul503 = mul i64 %conv502, 16
  %call504 = call i8* @realloc(i8* %211, i64 %mul503) #4
  %214 = bitcast i8* %call504 to %struct.quantum_reg_node_struct*
  %215 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node505 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %215, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %214, %struct.quantum_reg_node_struct** %node505, align 8
  %216 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node506 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %216, i32 0, i32 3
  %217 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node506, align 8
  %tobool507 = icmp ne %struct.quantum_reg_node_struct* %217, null
  br i1 %tobool507, label %if.end.512, label %if.then.508

if.then.508:                                      ; preds = %if.then.497
  %218 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size509 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %218, i32 0, i32 1
  %219 = load i32, i32* %size509, align 4
  %220 = load i32, i32* %addsize, align 4
  %add510 = add nsw i32 %219, %220
  %call511 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add510)
  call void @exit(i32 1) #6
  unreachable

if.end.512:                                       ; preds = %if.then.497
  %221 = load i32, i32* %decsize, align 4
  %sub513 = sub nsw i32 0, %221
  %conv514 = sext i32 %sub513 to i64
  %mul515 = mul i64 %conv514, 16
  %call516 = call i64 @quantum_memman(i64 %mul515)
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.512, %for.end.495
  %222 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %222)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_hadamard(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 6, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %1 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %2 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 0
  %3 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %3, i64* %2, align 8
  %4 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 1
  %5 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %5, { float, float }** %4, align 8
  %6 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %7 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %call2 = call double @sqrt(double 5.000000e-01) #4
  %conv = fptrunc double %call2 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %8 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %8, i64 0
  %real = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %call3 = call double @sqrt(double 5.000000e-01) #4
  %conv4 = fptrunc double %call3 to float
  %t5 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %9 = load { float, float }*, { float, float }** %t5, align 8
  %arrayidx6 = getelementptr inbounds { float, float }, { float, float }* %9, i64 1
  %real7 = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 0
  %imag8 = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 1
  store float %conv4, float* %real7, align 4
  store float 0.000000e+00, float* %imag8, align 4
  %call9 = call double @sqrt(double 5.000000e-01) #4
  %conv10 = fptrunc double %call9 to float
  %t11 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t11, align 8
  %arrayidx12 = getelementptr inbounds { float, float }, { float, float }* %10, i64 2
  %real13 = getelementptr inbounds { float, float }, { float, float }* %arrayidx12, i32 0, i32 0
  %imag14 = getelementptr inbounds { float, float }, { float, float }* %arrayidx12, i32 0, i32 1
  store float %conv10, float* %real13, align 4
  store float 0.000000e+00, float* %imag14, align 4
  %call15 = call double @sqrt(double 5.000000e-01) #4
  %sub = fsub double -0.000000e+00, %call15
  %conv16 = fptrunc double %sub to float
  %t17 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %11 = load { float, float }*, { float, float }** %t17, align 8
  %arrayidx18 = getelementptr inbounds { float, float }, { float, float }* %11, i64 3
  %real19 = getelementptr inbounds { float, float }, { float, float }* %arrayidx18, i32 0, i32 0
  %imag20 = getelementptr inbounds { float, float }, { float, float }* %arrayidx18, i32 0, i32 1
  store float %conv16, float* %real19, align 4
  store float 0.000000e+00, float* %imag20, align 4
  %12 = load i32, i32* %target.addr, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %14 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %15 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %14, i32 0, i32 1
  %18 = load { float, float }*, { float, float }** %17, align 1
  call void @quantum_gate1(i32 %12, i64 %16, { float, float }* %18, %struct.quantum_reg_struct* %13)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare { i64, { float, float }* } @quantum_new_matrix(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare void @quantum_delete_matrix(%struct.quantum_matrix_struct*) #1

; Function Attrs: nounwind uwtable
define void @quantum_walsh(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %2, %struct.quantum_reg_struct* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_r_x(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 7, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %2 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %3 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %6, { float, float }** %5, align 8
  %7 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %8 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load float, float* %gamma.addr, align 4
  %div = fdiv float %9, 2.000000e+00
  %conv2 = fpext float %div to double
  %call3 = call double @cos(double %conv2) #4
  %conv4 = fptrunc double %call3 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %10, i64 0
  %real = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv4, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %11 = load float, float* %gamma.addr, align 4
  %div5 = fdiv float %11, 2.000000e+00
  %conv6 = fpext float %div5 to double
  %call7 = call double @sin(double %conv6) #4
  %mul.rl = fmul double -0.000000e+00, %call7
  %mul.il = fmul double -1.000000e+00, %call7
  %conv8 = fptrunc double %mul.rl to float
  %conv9 = fptrunc double %mul.il to float
  %t10 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }*, { float, float }** %t10, align 8
  %arrayidx11 = getelementptr inbounds { float, float }, { float, float }* %12, i64 1
  %real12 = getelementptr inbounds { float, float }, { float, float }* %arrayidx11, i32 0, i32 0
  %imag13 = getelementptr inbounds { float, float }, { float, float }* %arrayidx11, i32 0, i32 1
  store float %conv8, float* %real12, align 4
  store float %conv9, float* %imag13, align 4
  %13 = load float, float* %gamma.addr, align 4
  %div14 = fdiv float %13, 2.000000e+00
  %conv15 = fpext float %div14 to double
  %call16 = call double @sin(double %conv15) #4
  %mul.rl17 = fmul double -0.000000e+00, %call16
  %mul.il18 = fmul double -1.000000e+00, %call16
  %conv19 = fptrunc double %mul.rl17 to float
  %conv20 = fptrunc double %mul.il18 to float
  %t21 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %14 = load { float, float }*, { float, float }** %t21, align 8
  %arrayidx22 = getelementptr inbounds { float, float }, { float, float }* %14, i64 2
  %real23 = getelementptr inbounds { float, float }, { float, float }* %arrayidx22, i32 0, i32 0
  %imag24 = getelementptr inbounds { float, float }, { float, float }* %arrayidx22, i32 0, i32 1
  store float %conv19, float* %real23, align 4
  store float %conv20, float* %imag24, align 4
  %15 = load float, float* %gamma.addr, align 4
  %div25 = fdiv float %15, 2.000000e+00
  %conv26 = fpext float %div25 to double
  %call27 = call double @cos(double %conv26) #4
  %conv28 = fptrunc double %call27 to float
  %t29 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }*, { float, float }** %t29, align 8
  %arrayidx30 = getelementptr inbounds { float, float }, { float, float }* %16, i64 3
  %real31 = getelementptr inbounds { float, float }, { float, float }* %arrayidx30, i32 0, i32 0
  %imag32 = getelementptr inbounds { float, float }, { float, float }* %arrayidx30, i32 0, i32 1
  store float %conv28, float* %real31, align 4
  store float 0.000000e+00, float* %imag32, align 4
  %17 = load i32, i32* %target.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %19 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %20 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 1
  %23 = load { float, float }*, { float, float }** %22, align 1
  call void @quantum_gate1(i32 %17, i64 %21, { float, float }* %23, %struct.quantum_reg_struct* %18)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define void @quantum_r_y(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 8, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %2 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %3 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %6, { float, float }** %5, align 8
  %7 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %8 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load float, float* %gamma.addr, align 4
  %div = fdiv float %9, 2.000000e+00
  %conv2 = fpext float %div to double
  %call3 = call double @cos(double %conv2) #4
  %conv4 = fptrunc double %call3 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %10, i64 0
  %real = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv4, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %11 = load float, float* %gamma.addr, align 4
  %div5 = fdiv float %11, 2.000000e+00
  %conv6 = fpext float %div5 to double
  %call7 = call double @sin(double %conv6) #4
  %sub = fsub double -0.000000e+00, %call7
  %conv8 = fptrunc double %sub to float
  %t9 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }*, { float, float }** %t9, align 8
  %arrayidx10 = getelementptr inbounds { float, float }, { float, float }* %12, i64 1
  %real11 = getelementptr inbounds { float, float }, { float, float }* %arrayidx10, i32 0, i32 0
  %imag12 = getelementptr inbounds { float, float }, { float, float }* %arrayidx10, i32 0, i32 1
  store float %conv8, float* %real11, align 4
  store float 0.000000e+00, float* %imag12, align 4
  %13 = load float, float* %gamma.addr, align 4
  %div13 = fdiv float %13, 2.000000e+00
  %conv14 = fpext float %div13 to double
  %call15 = call double @sin(double %conv14) #4
  %conv16 = fptrunc double %call15 to float
  %t17 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %14 = load { float, float }*, { float, float }** %t17, align 8
  %arrayidx18 = getelementptr inbounds { float, float }, { float, float }* %14, i64 2
  %real19 = getelementptr inbounds { float, float }, { float, float }* %arrayidx18, i32 0, i32 0
  %imag20 = getelementptr inbounds { float, float }, { float, float }* %arrayidx18, i32 0, i32 1
  store float %conv16, float* %real19, align 4
  store float 0.000000e+00, float* %imag20, align 4
  %15 = load float, float* %gamma.addr, align 4
  %div21 = fdiv float %15, 2.000000e+00
  %conv22 = fpext float %div21 to double
  %call23 = call double @cos(double %conv22) #4
  %conv24 = fptrunc double %call23 to float
  %t25 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }*, { float, float }** %t25, align 8
  %arrayidx26 = getelementptr inbounds { float, float }, { float, float }* %16, i64 3
  %real27 = getelementptr inbounds { float, float }, { float, float }* %arrayidx26, i32 0, i32 0
  %imag28 = getelementptr inbounds { float, float }, { float, float }* %arrayidx26, i32 0, i32 1
  store float %conv24, float* %real27, align 4
  store float 0.000000e+00, float* %imag28, align 4
  %17 = load i32, i32* %target.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %19 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %20 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 1
  %23 = load { float, float }*, { float, float }** %22, align 1
  call void @quantum_gate1(i32 %17, i64 %21, { float, float }* %23, %struct.quantum_reg_struct* %18)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_r_z(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce10 = alloca { float, float }, align 4
  %coerce22 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 9, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %gamma.addr, align 4
  %div = fdiv float %2, 2.000000e+00
  %call1 = call <2 x float> @quantum_cexp(float %div)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %10 = load i64, i64* %state, align 8
  %11 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %10, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom5
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.4
  %isnan_cmp8 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp8, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call9 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #4
  %15 = bitcast { float, float }* %coerce10 to <2 x float>*
  store <2 x float> %call9, <2 x float>* %15, align 4
  %coerce10.realp = getelementptr inbounds { float, float }, { float, float }* %coerce10, i32 0, i32 0
  %coerce10.real = load float, float* %coerce10.realp, align 4
  %coerce10.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce10, i32 0, i32 1
  %coerce10.imag = load float, float* %coerce10.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.4
  %real_mul_phi = phi float [ %mul_r, %if.then.4 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce10.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.4 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce10.imag, %complex_mul_libcall ]
  %real11 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag12 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real11, align 4
  store float %imag_mul_phi, float* %imag12, align 4
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %z.realp13 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real14 = load float, float* %z.realp13, align 4
  %z.imagp15 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag16 = load float, float* %z.imagp15, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 3
  %18 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node18, align 8
  %arrayidx19 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %18, i64 %idxprom17
  %amplitude20 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx19, i32 0, i32 0
  %amplitude20.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude20, i32 0, i32 0
  %amplitude20.real = load float, float* %amplitude20.realp, align 4
  %amplitude20.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude20, i32 0, i32 1
  %amplitude20.imag = load float, float* %amplitude20.imagp, align 4
  %call21 = call <2 x float> @__divsc3(float %amplitude20.real, float %amplitude20.imag, float %z.real14, float %z.imag16) #4
  %19 = bitcast { float, float }* %coerce22 to <2 x float>*
  store <2 x float> %call21, <2 x float>* %19, align 4
  %coerce22.realp = getelementptr inbounds { float, float }, { float, float }* %coerce22, i32 0, i32 0
  %coerce22.real = load float, float* %coerce22.realp, align 4
  %coerce22.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce22, i32 0, i32 1
  %coerce22.imag = load float, float* %coerce22.imagp, align 4
  %real23 = getelementptr inbounds { float, float }, { float, float }* %amplitude20, i32 0, i32 0
  %imag24 = getelementptr inbounds { float, float }, { float, float }* %amplitude20, i32 0, i32 1
  store float %coerce22.real, float* %real23, align 4
  store float %coerce22.imag, float* %imag24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %21)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare <2 x float> @quantum_cexp(float) #1

declare <2 x float> @__divsc3(float, float, float, float)

; Function Attrs: nounwind uwtable
define void @quantum_phase_scale(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 11, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %2)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp3 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp3, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call4 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #4
  %10 = bitcast { float, float }* %coerce5 to <2 x float>*
  store <2 x float> %call4, <2 x float>* %10, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.real = load float, float* %coerce5.realp, align 4
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  %coerce5.imag = load float, float* %coerce5.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce5.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce5.imag, %complex_mul_libcall ]
  %real6 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real6, align 4
  store float %imag_mul_phi, float* %imag7, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %12)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_kick(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce10 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 10, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %2)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %10 = load i64, i64* %state, align 8
  %11 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %10, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %for.body
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom5
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.4
  %isnan_cmp8 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp8, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call9 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #4
  %15 = bitcast { float, float }* %coerce10 to <2 x float>*
  store <2 x float> %call9, <2 x float>* %15, align 4
  %coerce10.realp = getelementptr inbounds { float, float }, { float, float }* %coerce10, i32 0, i32 0
  %coerce10.real = load float, float* %coerce10.realp, align 4
  %coerce10.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce10, i32 0, i32 1
  %coerce10.imag = load float, float* %coerce10.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.4
  %real_mul_phi = phi float [ %mul_r, %if.then.4 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce10.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.4 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce10.imag, %complex_mul_libcall ]
  %real11 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag12 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real11, align 4
  store float %imag_mul_phi, float* %imag12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %complex_mul_cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %17)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce22 = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %control.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 12, i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %control.addr, align 4
  %3 = load i32, i32* %target.addr, align 4
  %sub = sub nsw i32 %2, %3
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %conv = uitofp i64 %shl to double
  %div = fdiv double 0x400921FB54524550, %conv
  %conv1 = fptrunc double %div to float
  %call2 = call <2 x float> @quantum_cexp(float %conv1)
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call2, <2 x float>* %4, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %control.addr, align 4
  %sh_prom4 = zext i32 %12 to i64
  %shl5 = shl i64 1, %sh_prom4
  %and = and i64 %11, %shl5
  %tobool6 = icmp ne i64 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.26

if.then.7:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node9, align 8
  %arrayidx10 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %15, i64 %idxprom8
  %state11 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx10, i32 0, i32 1
  %16 = load i64, i64* %state11, align 8
  %17 = load i32, i32* %target.addr, align 4
  %sh_prom12 = zext i32 %17 to i64
  %shl13 = shl i64 1, %sh_prom12
  %and14 = and i64 %16, %shl13
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.then.7
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %19, i32 0, i32 3
  %20 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node18, align 8
  %arrayidx19 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %20, i64 %idxprom17
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx19, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.16
  %isnan_cmp20 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp20, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call21 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #4
  %21 = bitcast { float, float }* %coerce22 to <2 x float>*
  store <2 x float> %call21, <2 x float>* %21, align 4
  %coerce22.realp = getelementptr inbounds { float, float }, { float, float }* %coerce22, i32 0, i32 0
  %coerce22.real = load float, float* %coerce22.realp, align 4
  %coerce22.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce22, i32 0, i32 1
  %coerce22.imag = load float, float* %coerce22.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.16
  %real_mul_phi = phi float [ %mul_r, %if.then.16 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce22.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.16 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce22.imag, %complex_mul_libcall ]
  %real23 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag24 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real23, align 4
  store float %imag_mul_phi, float* %imag24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %complex_mul_cont, %if.then.7
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %23)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_inv(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce19 = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %control.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %sub = sub nsw i32 %0, %1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %conv = uitofp i64 %shl to double
  %div = fdiv double 0xC00921FB54524550, %conv
  %conv1 = fptrunc double %div to float
  %call = call <2 x float> @quantum_cexp(float %conv1)
  %2 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %2, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %9 = load i64, i64* %state, align 8
  %10 = load i32, i32* %control.addr, align 4
  %sh_prom3 = zext i32 %10 to i64
  %shl4 = shl i64 1, %sh_prom3
  %and = and i64 %9, %shl4
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %12, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom5
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %14 = load i64, i64* %state8, align 8
  %15 = load i32, i32* %target.addr, align 4
  %sh_prom9 = zext i32 %15 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %14, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 3
  %18 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node15, align 8
  %arrayidx16 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %18, i64 %idxprom14
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx16, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.13
  %isnan_cmp17 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp17, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call18 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #4
  %19 = bitcast { float, float }* %coerce19 to <2 x float>*
  store <2 x float> %call18, <2 x float>* %19, align 4
  %coerce19.realp = getelementptr inbounds { float, float }, { float, float }* %coerce19, i32 0, i32 0
  %coerce19.real = load float, float* %coerce19.realp, align 4
  %coerce19.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce19, i32 0, i32 1
  %coerce19.imag = load float, float* %coerce19.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.13
  %real_mul_phi = phi float [ %mul_r, %if.then.13 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce19.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.13 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce19.imag, %complex_mul_libcall ]
  %real20 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag21 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real20, align 4
  store float %imag_mul_phi, float* %imag21, align 4
  br label %if.end

if.end:                                           ; preds = %complex_mul_cont, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_kick(i32 %control, i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce19 = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %control.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %2 = load float, float* %gamma.addr, align 4
  %conv = fpext float %2 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 12, i32 %0, i32 %1, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %3)
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %4, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %control.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %11, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %15, i64 %idxprom5
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %16 = load i64, i64* %state8, align 8
  %17 = load i32, i32* %target.addr, align 4
  %sh_prom9 = zext i32 %17 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %16, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.then.4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %19, i32 0, i32 3
  %20 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node15, align 8
  %arrayidx16 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %20, i64 %idxprom14
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx16, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then.13
  %isnan_cmp17 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp17, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call18 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #4
  %21 = bitcast { float, float }* %coerce19 to <2 x float>*
  store <2 x float> %call18, <2 x float>* %21, align 4
  %coerce19.realp = getelementptr inbounds { float, float }, { float, float }* %coerce19, i32 0, i32 0
  %coerce19.real = load float, float* %coerce19.realp, align 4
  %coerce19.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce19, i32 0, i32 1
  %coerce19.imag = load float, float* %coerce19.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then.13
  %real_mul_phi = phi float [ %mul_r, %if.then.13 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce19.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then.13 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce19.imag, %complex_mul_libcall ]
  %real20 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag21 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %real20, align 4
  store float %imag_mul_phi, float* %imag21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %complex_mul_cont, %if.then.4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %23)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @quantum_gate_counter(i32 %inc) #0 {
entry:
  %inc.addr = alloca i32, align 4
  store i32 %inc, i32* %inc.addr, align 4
  %0 = load i32, i32* %inc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %inc.addr, align 4
  %2 = load i32, i32* @quantum_gate_counter.counter, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @quantum_gate_counter.counter, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %inc.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* @quantum_gate_counter.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* @quantum_gate_counter.counter, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_hash64(i64 %key, i32 %width) #5 {
entry:
  %key.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %k32 = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i64, i64* %key.addr, align 8
  %and = and i64 %0, 4294967295
  %1 = load i64, i64* %key.addr, align 8
  %shr = lshr i64 %1, 32
  %xor = xor i64 %and, %shr
  %conv = trunc i64 %xor to i32
  store i32 %conv, i32* %k32, align 4
  %2 = load i32, i32* %k32, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 2654404609
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %k32, align 4
  %3 = load i32, i32* %k32, align 4
  %4 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 32, %4
  %shr3 = lshr i32 %3, %sub
  store i32 %shr3, i32* %k32, align 4
  %5 = load i32, i32* %k32, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real(<2 x float> %a.coerce) #5 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag(<2 x float> %a.coerce) #5 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
