; ModuleID = 'objcode.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

@opstatus = global i32 0, align 4
@objcode = global i8* null, align 8
@position = global i64 0, align 8
@allocated = global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Error allocating memory for objcode data!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown opcode 0x(%X)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Error reallocating memory for objcode data!\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Object code generation not active! Forgot to call quantum_objcode_start?\0A\00", align 1
@globalfile = common global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"quantum_objcode_run: Could not open %s: \00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%i: Unknown opcode 0x(%X)!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @quantum_mu2char(i64 %mu, i8* %buf) #0 {
entry:
  %mu.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i64 %mu, i64* %mu.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 8, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %mu.addr, align 8
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %sub1 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub1, 8
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %div = udiv i64 %2, %shl
  %conv = trunc i64 %div to i8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32, i32* %size, align 4
  %8 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub2, 1
  %mul4 = mul nsw i32 %sub3, 8
  %sh_prom5 = zext i32 %mul4 to i64
  %shl6 = shl i64 1, %sh_prom5
  %9 = load i64, i64* %mu.addr, align 8
  %rem = urem i64 %9, %shl6
  store i64 %rem, i64* %mu.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_int2char(i32 %j, i8* %buf) #0 {
entry:
  %j.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 4, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j.addr, align 4
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %sub1 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub1, 8
  %shl = shl i32 1, %mul
  %div = sdiv i32 %2, %shl
  %conv = trunc i32 %div to i8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32, i32* %size, align 4
  %8 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub2, 1
  %mul4 = mul nsw i32 %sub3, 8
  %shl5 = shl i32 1, %mul4
  %9 = load i32, i32* %j.addr, align 4
  %rem = srem i32 %9, %shl5
  store i32 %rem, i32* %j.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_double2char(double %d, i8* %buf) #0 {
entry:
  %d.addr = alloca double, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store double %d, double* %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast double* %d.addr to i8*
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  store i8 %4, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantum_char2mu(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %mu = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 0, i64* %mu, align 8
  store i32 8, i32* %size, align 4
  %0 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i64
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %5, %6
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 8, %sub2
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %mul3 = mul i64 %conv, %shl
  %7 = load i64, i64* %mu, align 8
  %add = add i64 %7, %mul3
  store i64 %add, i64* %mu, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %mu, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i32 @quantum_char2int(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 4, i32* %size, align 4
  %0 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %5, %6
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 8, %sub2
  %shl = shl i32 1, %mul
  %mul3 = mul nsw i32 %conv, %shl
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %7, %mul3
  store i32 %add, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define double @quantum_char2double(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %d = alloca double*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = bitcast i8* %0 to double*
  store double* %1, double** %d, align 8
  %2 = load double*, double** %d, align 8
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_start() #0 {
entry:
  store i32 1, i32* @opstatus, align 4
  store i64 1, i64* @allocated, align 8
  %call = call noalias i8* @malloc(i64 65536) #4
  store i8* %call, i8** @objcode, align 8
  %0 = load i8*, i8** @objcode, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @quantum_memman(i64 65536)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i64 @quantum_memman(i64) #2

; Function Attrs: nounwind uwtable
define void @quantum_objcode_stop() #0 {
entry:
  store i32 0, i32* @opstatus, align 4
  %0 = load i8*, i8** @objcode, align 8
  call void @free(i8* %0) #4
  store i8* null, i8** @objcode, align 8
  %1 = load i64, i64* @allocated, align 8
  %sub = sub i64 0, %1
  %mul = mul i64 %sub, 65536
  %mul1 = mul i64 %mul, 1
  %call = call i64 @quantum_memman(i64 %mul1)
  store i64 0, i64* @allocated, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_put(i8 zeroext %operation, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [80 x i8], align 16
  %d = alloca double, align 8
  %mu = alloca i64, align 8
  store i8 %operation, i8* %operation.addr, align 1
  %0 = load i32, i32* @opstatus, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8, i8* %operation.addr, align 1
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 0
  store i8 %1, i8* %arrayidx, align 1
  %2 = load i8, i8* %operation.addr, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 12, label %sw.bb.4
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.71
    i32 4, label %sw.bb.71
    i32 5, label %sw.bb.71
    i32 6, label %sw.bb.71
    i32 129, label %sw.bb.71
    i32 130, label %sw.bb.71
    i32 14, label %sw.bb.71
    i32 7, label %sw.bb.85
    i32 8, label %sw.bb.85
    i32 9, label %sw.bb.85
    i32 10, label %sw.bb.85
    i32 11, label %sw.bb.85
    i32 13, label %sw.bb.109
    i32 128, label %sw.bb.149
    i32 255, label %sw.bb.149
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i64*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to i64*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i64* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i64, i64* %vaarg.addr
  store i64 %8, i64* %mu, align 8
  %9 = load i64, i64* %mu, align 8
  %arrayidx3 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_mu2char(i64 %9, i8* %arrayidx3)
  store i32 9, i32* %size, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset7 = load i32, i32* %gp_offset_p6
  %fits_in_gp8 = icmp ule i32 %gp_offset7, 40
  br i1 %fits_in_gp8, label %vaarg.in_reg.9, label %vaarg.in_mem.11

vaarg.in_reg.9:                                   ; preds = %sw.bb.4
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area10 = load i8*, i8** %10
  %11 = getelementptr i8, i8* %reg_save_area10, i32 %gp_offset7
  %12 = bitcast i8* %11 to i32*
  %13 = add i32 %gp_offset7, 8
  store i32 %13, i32* %gp_offset_p6
  br label %vaarg.end.15

vaarg.in_mem.11:                                  ; preds = %sw.bb.4
  %overflow_arg_area_p12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area13 = load i8*, i8** %overflow_arg_area_p12
  %14 = bitcast i8* %overflow_arg_area13 to i32*
  %overflow_arg_area.next14 = getelementptr i8, i8* %overflow_arg_area13, i32 8
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12
  br label %vaarg.end.15

vaarg.end.15:                                     ; preds = %vaarg.in_mem.11, %vaarg.in_reg.9
  %vaarg.addr16 = phi i32* [ %12, %vaarg.in_reg.9 ], [ %14, %vaarg.in_mem.11 ]
  %15 = load i32, i32* %vaarg.addr16
  store i32 %15, i32* %i, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %16, i8* %arrayidx17)
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 0
  %gp_offset20 = load i32, i32* %gp_offset_p19
  %fits_in_gp21 = icmp ule i32 %gp_offset20, 40
  br i1 %fits_in_gp21, label %vaarg.in_reg.22, label %vaarg.in_mem.24

vaarg.in_reg.22:                                  ; preds = %vaarg.end.15
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area23 = load i8*, i8** %17
  %18 = getelementptr i8, i8* %reg_save_area23, i32 %gp_offset20
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset20, 8
  store i32 %20, i32* %gp_offset_p19
  br label %vaarg.end.28

vaarg.in_mem.24:                                  ; preds = %vaarg.end.15
  %overflow_arg_area_p25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area26 = load i8*, i8** %overflow_arg_area_p25
  %21 = bitcast i8* %overflow_arg_area26 to i32*
  %overflow_arg_area.next27 = getelementptr i8, i8* %overflow_arg_area26, i32 8
  store i8* %overflow_arg_area.next27, i8** %overflow_arg_area_p25
  br label %vaarg.end.28

vaarg.end.28:                                     ; preds = %vaarg.in_mem.24, %vaarg.in_reg.22
  %vaarg.addr29 = phi i32* [ %19, %vaarg.in_reg.22 ], [ %21, %vaarg.in_mem.24 ]
  %22 = load i32, i32* %vaarg.addr29
  store i32 %22, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx30 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_int2char(i32 %23, i8* %arrayidx30)
  store i32 9, i32* %size, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 0
  %gp_offset34 = load i32, i32* %gp_offset_p33
  %fits_in_gp35 = icmp ule i32 %gp_offset34, 40
  br i1 %fits_in_gp35, label %vaarg.in_reg.36, label %vaarg.in_mem.38

vaarg.in_reg.36:                                  ; preds = %sw.bb.31
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 3
  %reg_save_area37 = load i8*, i8** %24
  %25 = getelementptr i8, i8* %reg_save_area37, i32 %gp_offset34
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %gp_offset34, 8
  store i32 %27, i32* %gp_offset_p33
  br label %vaarg.end.42

vaarg.in_mem.38:                                  ; preds = %sw.bb.31
  %overflow_arg_area_p39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 2
  %overflow_arg_area40 = load i8*, i8** %overflow_arg_area_p39
  %28 = bitcast i8* %overflow_arg_area40 to i32*
  %overflow_arg_area.next41 = getelementptr i8, i8* %overflow_arg_area40, i32 8
  store i8* %overflow_arg_area.next41, i8** %overflow_arg_area_p39
  br label %vaarg.end.42

vaarg.end.42:                                     ; preds = %vaarg.in_mem.38, %vaarg.in_reg.36
  %vaarg.addr43 = phi i32* [ %26, %vaarg.in_reg.36 ], [ %28, %vaarg.in_mem.38 ]
  %29 = load i32, i32* %vaarg.addr43
  store i32 %29, i32* %i, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx44 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %30, i8* %arrayidx44)
  %arraydecay45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 0
  %gp_offset47 = load i32, i32* %gp_offset_p46
  %fits_in_gp48 = icmp ule i32 %gp_offset47, 40
  br i1 %fits_in_gp48, label %vaarg.in_reg.49, label %vaarg.in_mem.51

vaarg.in_reg.49:                                  ; preds = %vaarg.end.42
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 3
  %reg_save_area50 = load i8*, i8** %31
  %32 = getelementptr i8, i8* %reg_save_area50, i32 %gp_offset47
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %gp_offset47, 8
  store i32 %34, i32* %gp_offset_p46
  br label %vaarg.end.55

vaarg.in_mem.51:                                  ; preds = %vaarg.end.42
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 2
  %overflow_arg_area53 = load i8*, i8** %overflow_arg_area_p52
  %35 = bitcast i8* %overflow_arg_area53 to i32*
  %overflow_arg_area.next54 = getelementptr i8, i8* %overflow_arg_area53, i32 8
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52
  br label %vaarg.end.55

vaarg.end.55:                                     ; preds = %vaarg.in_mem.51, %vaarg.in_reg.49
  %vaarg.addr56 = phi i32* [ %33, %vaarg.in_reg.49 ], [ %35, %vaarg.in_mem.51 ]
  %36 = load i32, i32* %vaarg.addr56
  store i32 %36, i32* %i, align 4
  %37 = load i32, i32* %i, align 4
  %arrayidx57 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_int2char(i32 %37, i8* %arrayidx57)
  %arraydecay58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 0
  %gp_offset60 = load i32, i32* %gp_offset_p59
  %fits_in_gp61 = icmp ule i32 %gp_offset60, 40
  br i1 %fits_in_gp61, label %vaarg.in_reg.62, label %vaarg.in_mem.64

vaarg.in_reg.62:                                  ; preds = %vaarg.end.55
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 3
  %reg_save_area63 = load i8*, i8** %38
  %39 = getelementptr i8, i8* %reg_save_area63, i32 %gp_offset60
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %gp_offset60, 8
  store i32 %41, i32* %gp_offset_p59
  br label %vaarg.end.68

vaarg.in_mem.64:                                  ; preds = %vaarg.end.55
  %overflow_arg_area_p65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 2
  %overflow_arg_area66 = load i8*, i8** %overflow_arg_area_p65
  %42 = bitcast i8* %overflow_arg_area66 to i32*
  %overflow_arg_area.next67 = getelementptr i8, i8* %overflow_arg_area66, i32 8
  store i8* %overflow_arg_area.next67, i8** %overflow_arg_area_p65
  br label %vaarg.end.68

vaarg.end.68:                                     ; preds = %vaarg.in_mem.64, %vaarg.in_reg.62
  %vaarg.addr69 = phi i32* [ %40, %vaarg.in_reg.62 ], [ %42, %vaarg.in_mem.64 ]
  %43 = load i32, i32* %vaarg.addr69
  store i32 %43, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %arrayidx70 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 9
  call void @quantum_int2char(i32 %44, i8* %arrayidx70)
  store i32 13, i32* %size, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arraydecay72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 0
  %gp_offset74 = load i32, i32* %gp_offset_p73
  %fits_in_gp75 = icmp ule i32 %gp_offset74, 40
  br i1 %fits_in_gp75, label %vaarg.in_reg.76, label %vaarg.in_mem.78

vaarg.in_reg.76:                                  ; preds = %sw.bb.71
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 3
  %reg_save_area77 = load i8*, i8** %45
  %46 = getelementptr i8, i8* %reg_save_area77, i32 %gp_offset74
  %47 = bitcast i8* %46 to i32*
  %48 = add i32 %gp_offset74, 8
  store i32 %48, i32* %gp_offset_p73
  br label %vaarg.end.82

vaarg.in_mem.78:                                  ; preds = %sw.bb.71
  %overflow_arg_area_p79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 2
  %overflow_arg_area80 = load i8*, i8** %overflow_arg_area_p79
  %49 = bitcast i8* %overflow_arg_area80 to i32*
  %overflow_arg_area.next81 = getelementptr i8, i8* %overflow_arg_area80, i32 8
  store i8* %overflow_arg_area.next81, i8** %overflow_arg_area_p79
  br label %vaarg.end.82

vaarg.end.82:                                     ; preds = %vaarg.in_mem.78, %vaarg.in_reg.76
  %vaarg.addr83 = phi i32* [ %47, %vaarg.in_reg.76 ], [ %49, %vaarg.in_mem.78 ]
  %50 = load i32, i32* %vaarg.addr83
  store i32 %50, i32* %i, align 4
  %51 = load i32, i32* %i, align 4
  %arrayidx84 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %51, i8* %arrayidx84)
  store i32 5, i32* %size, align 4
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %arraydecay86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 0
  %gp_offset88 = load i32, i32* %gp_offset_p87
  %fits_in_gp89 = icmp ule i32 %gp_offset88, 40
  br i1 %fits_in_gp89, label %vaarg.in_reg.90, label %vaarg.in_mem.92

vaarg.in_reg.90:                                  ; preds = %sw.bb.85
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 3
  %reg_save_area91 = load i8*, i8** %52
  %53 = getelementptr i8, i8* %reg_save_area91, i32 %gp_offset88
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %gp_offset88, 8
  store i32 %55, i32* %gp_offset_p87
  br label %vaarg.end.96

vaarg.in_mem.92:                                  ; preds = %sw.bb.85
  %overflow_arg_area_p93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 2
  %overflow_arg_area94 = load i8*, i8** %overflow_arg_area_p93
  %56 = bitcast i8* %overflow_arg_area94 to i32*
  %overflow_arg_area.next95 = getelementptr i8, i8* %overflow_arg_area94, i32 8
  store i8* %overflow_arg_area.next95, i8** %overflow_arg_area_p93
  br label %vaarg.end.96

vaarg.end.96:                                     ; preds = %vaarg.in_mem.92, %vaarg.in_reg.90
  %vaarg.addr97 = phi i32* [ %54, %vaarg.in_reg.90 ], [ %56, %vaarg.in_mem.92 ]
  %57 = load i32, i32* %vaarg.addr97
  store i32 %57, i32* %i, align 4
  %arraydecay98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.99, label %vaarg.in_mem.101

vaarg.in_reg.99:                                  ; preds = %vaarg.end.96
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 3
  %reg_save_area100 = load i8*, i8** %58
  %59 = getelementptr i8, i8* %reg_save_area100, i32 %fp_offset
  %60 = bitcast i8* %59 to double*
  %61 = add i32 %fp_offset, 16
  store i32 %61, i32* %fp_offset_p
  br label %vaarg.end.105

vaarg.in_mem.101:                                 ; preds = %vaarg.end.96
  %overflow_arg_area_p102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 2
  %overflow_arg_area103 = load i8*, i8** %overflow_arg_area_p102
  %62 = bitcast i8* %overflow_arg_area103 to double*
  %overflow_arg_area.next104 = getelementptr i8, i8* %overflow_arg_area103, i32 8
  store i8* %overflow_arg_area.next104, i8** %overflow_arg_area_p102
  br label %vaarg.end.105

vaarg.end.105:                                    ; preds = %vaarg.in_mem.101, %vaarg.in_reg.99
  %vaarg.addr106 = phi double* [ %60, %vaarg.in_reg.99 ], [ %62, %vaarg.in_mem.101 ]
  %63 = load double, double* %vaarg.addr106
  store double %63, double* %d, align 8
  %64 = load i32, i32* %i, align 4
  %arrayidx107 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %64, i8* %arrayidx107)
  %65 = load double, double* %d, align 8
  %arrayidx108 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_double2char(double %65, i8* %arrayidx108)
  store i32 13, i32* %size, align 4
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.end
  %arraydecay110 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay110, i32 0, i32 0
  %gp_offset112 = load i32, i32* %gp_offset_p111
  %fits_in_gp113 = icmp ule i32 %gp_offset112, 40
  br i1 %fits_in_gp113, label %vaarg.in_reg.114, label %vaarg.in_mem.116

vaarg.in_reg.114:                                 ; preds = %sw.bb.109
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay110, i32 0, i32 3
  %reg_save_area115 = load i8*, i8** %66
  %67 = getelementptr i8, i8* %reg_save_area115, i32 %gp_offset112
  %68 = bitcast i8* %67 to i32*
  %69 = add i32 %gp_offset112, 8
  store i32 %69, i32* %gp_offset_p111
  br label %vaarg.end.120

vaarg.in_mem.116:                                 ; preds = %sw.bb.109
  %overflow_arg_area_p117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay110, i32 0, i32 2
  %overflow_arg_area118 = load i8*, i8** %overflow_arg_area_p117
  %70 = bitcast i8* %overflow_arg_area118 to i32*
  %overflow_arg_area.next119 = getelementptr i8, i8* %overflow_arg_area118, i32 8
  store i8* %overflow_arg_area.next119, i8** %overflow_arg_area_p117
  br label %vaarg.end.120

vaarg.end.120:                                    ; preds = %vaarg.in_mem.116, %vaarg.in_reg.114
  %vaarg.addr121 = phi i32* [ %68, %vaarg.in_reg.114 ], [ %70, %vaarg.in_mem.116 ]
  %71 = load i32, i32* %vaarg.addr121
  store i32 %71, i32* %i, align 4
  %72 = load i32, i32* %i, align 4
  %arrayidx122 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %72, i8* %arrayidx122)
  %arraydecay123 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p124 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 0
  %gp_offset125 = load i32, i32* %gp_offset_p124
  %fits_in_gp126 = icmp ule i32 %gp_offset125, 40
  br i1 %fits_in_gp126, label %vaarg.in_reg.127, label %vaarg.in_mem.129

vaarg.in_reg.127:                                 ; preds = %vaarg.end.120
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 3
  %reg_save_area128 = load i8*, i8** %73
  %74 = getelementptr i8, i8* %reg_save_area128, i32 %gp_offset125
  %75 = bitcast i8* %74 to i32*
  %76 = add i32 %gp_offset125, 8
  store i32 %76, i32* %gp_offset_p124
  br label %vaarg.end.133

vaarg.in_mem.129:                                 ; preds = %vaarg.end.120
  %overflow_arg_area_p130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 2
  %overflow_arg_area131 = load i8*, i8** %overflow_arg_area_p130
  %77 = bitcast i8* %overflow_arg_area131 to i32*
  %overflow_arg_area.next132 = getelementptr i8, i8* %overflow_arg_area131, i32 8
  store i8* %overflow_arg_area.next132, i8** %overflow_arg_area_p130
  br label %vaarg.end.133

vaarg.end.133:                                    ; preds = %vaarg.in_mem.129, %vaarg.in_reg.127
  %vaarg.addr134 = phi i32* [ %75, %vaarg.in_reg.127 ], [ %77, %vaarg.in_mem.129 ]
  %78 = load i32, i32* %vaarg.addr134
  store i32 %78, i32* %i, align 4
  %79 = load i32, i32* %i, align 4
  %arrayidx135 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_int2char(i32 %79, i8* %arrayidx135)
  %arraydecay136 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay136, i32 0, i32 1
  %fp_offset138 = load i32, i32* %fp_offset_p137
  %fits_in_fp139 = icmp ule i32 %fp_offset138, 160
  br i1 %fits_in_fp139, label %vaarg.in_reg.140, label %vaarg.in_mem.142

vaarg.in_reg.140:                                 ; preds = %vaarg.end.133
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay136, i32 0, i32 3
  %reg_save_area141 = load i8*, i8** %80
  %81 = getelementptr i8, i8* %reg_save_area141, i32 %fp_offset138
  %82 = bitcast i8* %81 to double*
  %83 = add i32 %fp_offset138, 16
  store i32 %83, i32* %fp_offset_p137
  br label %vaarg.end.146

vaarg.in_mem.142:                                 ; preds = %vaarg.end.133
  %overflow_arg_area_p143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay136, i32 0, i32 2
  %overflow_arg_area144 = load i8*, i8** %overflow_arg_area_p143
  %84 = bitcast i8* %overflow_arg_area144 to double*
  %overflow_arg_area.next145 = getelementptr i8, i8* %overflow_arg_area144, i32 8
  store i8* %overflow_arg_area.next145, i8** %overflow_arg_area_p143
  br label %vaarg.end.146

vaarg.end.146:                                    ; preds = %vaarg.in_mem.142, %vaarg.in_reg.140
  %vaarg.addr147 = phi double* [ %82, %vaarg.in_reg.140 ], [ %84, %vaarg.in_mem.142 ]
  %85 = load double, double* %vaarg.addr147
  store double %85, double* %d, align 8
  %86 = load double, double* %d, align 8
  %arrayidx148 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 9
  call void @quantum_double2char(double %86, i8* %arrayidx148)
  store i32 17, i32* %size, align 4
  br label %sw.epilog

sw.bb.149:                                        ; preds = %if.end, %if.end
  store i32 1, i32* %size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %87 = load i8, i8* %operation.addr, align 1
  %conv150 = zext i8 %87 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %conv150)
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.149, %vaarg.end.146, %vaarg.end.105, %vaarg.end.82, %vaarg.end.68, %vaarg.end.28, %vaarg.end
  %88 = load i64, i64* @position, align 8
  %89 = load i32, i32* %size, align 4
  %conv151 = sext i32 %89 to i64
  %add = add i64 %88, %conv151
  %div = udiv i64 %add, 65536
  %90 = load i64, i64* @position, align 8
  %div152 = udiv i64 %90, 65536
  %cmp = icmp ugt i64 %div, %div152
  br i1 %cmp, label %if.then.154, label %if.end.161

if.then.154:                                      ; preds = %sw.epilog
  %91 = load i64, i64* @allocated, align 8
  %inc = add i64 %91, 1
  store i64 %inc, i64* @allocated, align 8
  %92 = load i8*, i8** @objcode, align 8
  %93 = load i64, i64* @allocated, align 8
  %mul = mul i64 %93, 65536
  %call155 = call i8* @realloc(i8* %92, i64 %mul) #4
  store i8* %call155, i8** @objcode, align 8
  %94 = load i8*, i8** @objcode, align 8
  %tobool156 = icmp ne i8* %94, null
  br i1 %tobool156, label %if.end.159, label %if.then.157

if.then.157:                                      ; preds = %if.then.154
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.159:                                       ; preds = %if.then.154
  %call160 = call i64 @quantum_memman(i64 65536)
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.159, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.161
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %size, align 4
  %cmp162 = icmp slt i32 %95, %96
  br i1 %cmp162, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %i, align 4
  %idxprom = sext i32 %97 to i64
  %arrayidx164 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 %idxprom
  %98 = load i8, i8* %arrayidx164, align 1
  %99 = load i64, i64* @position, align 8
  %100 = load i8*, i8** @objcode, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8 %98, i8* %arrayidx165, align 1
  %101 = load i64, i64* @position, align 8
  %inc166 = add i64 %101, 1
  store i64 %inc166, i64* @position, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %102, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_write(i8* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %fhd = alloca %struct._IO_FILE*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i32, i32* @opstatus, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %file.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** @globalfile, align 8
  store i8* %3, i8** %file.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i8*, i8** %file.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fhd, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load i8*, i8** @objcode, align 8
  %7 = load i64, i64* @position, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call7 = call i64 @fwrite(i8* %6, i64 %7, i64 1, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @quantum_objcode_file(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  store i8* %0, i8** @globalfile, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_exit(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %call = call i32 @quantum_objcode_write(i8* null)
  call void @quantum_objcode_stop()
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_run(i8* %file, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %fhd = alloca %struct._IO_FILE*, align 8
  %operation = alloca i8, align 1
  %buf = alloca [80 x i8], align 16
  %mu = alloca i64, align 8
  %d = alloca double, align 8
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fhd, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* %3)
  call void @perror(i8* null)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %4) #4
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %5, 80
  br i1 %cmp, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call6 = call i32 @fgetc(%struct._IO_FILE* %8)
  %conv = trunc i32 %call6 to i8
  store i8 %conv, i8* %operation, align 1
  %9 = load i8, i8* %operation, align 1
  %conv7 = zext i8 %9 to i32
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 12, label %sw.bb.11
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.36
    i32 4, label %sw.bb.36
    i32 5, label %sw.bb.36
    i32 6, label %sw.bb.36
    i32 129, label %sw.bb.36
    i32 130, label %sw.bb.36
    i32 14, label %sw.bb.36
    i32 7, label %sw.bb.52
    i32 8, label %sw.bb.52
    i32 9, label %sw.bb.52
    i32 10, label %sw.bb.52
    i32 11, label %sw.bb.52
    i32 13, label %sw.bb.73
    i32 128, label %sw.bb.87
    i32 255, label %sw.bb.89
  ]

sw.bb:                                            ; preds = %for.end
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call8 = call i64 @fread(i8* %arraydecay, i64 8, i64 1, %struct._IO_FILE* %10)
  %arraydecay9 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call10 = call i64 @quantum_char2mu(i8* %arraydecay9)
  store i64 %call10, i64* %mu, align 8
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %12 = load i64, i64* %mu, align 8
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %tmp, i64 %12, i32 12)
  %13 = bitcast %struct.quantum_reg_struct* %11 to i8*
  %14 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %sw.epilog.92

sw.bb.11:                                         ; preds = %for.end, %for.end
  %arraydecay12 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call13 = call i64 @fread(i8* %arraydecay12, i64 4, i64 1, %struct._IO_FILE* %15)
  %arraydecay14 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 @quantum_char2int(i8* %arraydecay14)
  store i32 %call15, i32* %j, align 4
  %arraydecay16 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call17 = call i64 @fread(i8* %arraydecay16, i64 4, i64 1, %struct._IO_FILE* %16)
  %arraydecay18 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @quantum_char2int(i8* %arraydecay18)
  store i32 %call19, i32* %k, align 4
  %17 = load i8, i8* %operation, align 1
  %conv20 = zext i8 %17 to i32
  switch i32 %conv20, label %sw.epilog [
    i32 1, label %sw.bb.21
    i32 12, label %sw.bb.22
  ]

sw.bb.21:                                         ; preds = %sw.bb.11
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %k, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %sw.bb.11
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase(i32 %21, i32 %22, %struct.quantum_reg_struct* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.22, %sw.bb.21
  br label %sw.epilog.92

sw.bb.23:                                         ; preds = %for.end
  %arraydecay24 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call25 = call i64 @fread(i8* %arraydecay24, i64 4, i64 1, %struct._IO_FILE* %24)
  %arraydecay26 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call27 = call i32 @quantum_char2int(i8* %arraydecay26)
  store i32 %call27, i32* %j, align 4
  %arraydecay28 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call29 = call i64 @fread(i8* %arraydecay28, i64 4, i64 1, %struct._IO_FILE* %25)
  %arraydecay30 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 @quantum_char2int(i8* %arraydecay30)
  store i32 %call31, i32* %k, align 4
  %arraydecay32 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call33 = call i64 @fread(i8* %arraydecay32, i64 4, i64 1, %struct._IO_FILE* %26)
  %arraydecay34 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @quantum_char2int(i8* %arraydecay34)
  store i32 %call35, i32* %l, align 4
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %l, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %28, i32 %29, %struct.quantum_reg_struct* %30)
  br label %sw.epilog.92

sw.bb.36:                                         ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end
  %arraydecay37 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call38 = call i64 @fread(i8* %arraydecay37, i64 4, i64 1, %struct._IO_FILE* %31)
  %arraydecay39 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call40 = call i32 @quantum_char2int(i8* %arraydecay39)
  store i32 %call40, i32* %j, align 4
  %32 = load i8, i8* %operation, align 1
  %conv41 = zext i8 %32 to i32
  switch i32 %conv41, label %sw.epilog.51 [
    i32 3, label %sw.bb.42
    i32 4, label %sw.bb.43
    i32 5, label %sw.bb.44
    i32 6, label %sw.bb.45
    i32 129, label %sw.bb.46
    i32 130, label %sw.bb.48
    i32 14, label %sw.bb.50
  ]

sw.bb.42:                                         ; preds = %sw.bb.36
  %33 = load i32, i32* %j, align 4
  %34 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %33, %struct.quantum_reg_struct* %34)
  br label %sw.epilog.51

sw.bb.43:                                         ; preds = %sw.bb.36
  %35 = load i32, i32* %j, align 4
  %36 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_y(i32 %35, %struct.quantum_reg_struct* %36)
  br label %sw.epilog.51

sw.bb.44:                                         ; preds = %sw.bb.36
  %37 = load i32, i32* %j, align 4
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_z(i32 %37, %struct.quantum_reg_struct* %38)
  br label %sw.epilog.51

sw.bb.45:                                         ; preds = %sw.bb.36
  %39 = load i32, i32* %j, align 4
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %39, %struct.quantum_reg_struct* %40)
  br label %sw.epilog.51

sw.bb.46:                                         ; preds = %sw.bb.36
  %41 = load i32, i32* %j, align 4
  %42 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call47 = call i32 @quantum_bmeasure(i32 %41, %struct.quantum_reg_struct* %42)
  br label %sw.epilog.51

sw.bb.48:                                         ; preds = %sw.bb.36
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call49 = call i32 @quantum_bmeasure_bitpreserve(i32 %43, %struct.quantum_reg_struct* %44)
  br label %sw.epilog.51

sw.bb.50:                                         ; preds = %sw.bb.36
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads(i32 %45, %struct.quantum_reg_struct* %46)
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.bb.36, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.42
  br label %sw.epilog.92

sw.bb.52:                                         ; preds = %for.end, %for.end, %for.end, %for.end, %for.end
  %arraydecay53 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call54 = call i64 @fread(i8* %arraydecay53, i64 4, i64 1, %struct._IO_FILE* %47)
  %arraydecay55 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call56 = call i32 @quantum_char2int(i8* %arraydecay55)
  store i32 %call56, i32* %j, align 4
  %arraydecay57 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call58 = call i64 @fread(i8* %arraydecay57, i64 8, i64 1, %struct._IO_FILE* %48)
  %arraydecay59 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call60 = call double @quantum_char2double(i8* %arraydecay59)
  store double %call60, double* %d, align 8
  %49 = load i8, i8* %operation, align 1
  %conv61 = zext i8 %49 to i32
  switch i32 %conv61, label %sw.epilog.72 [
    i32 7, label %sw.bb.62
    i32 8, label %sw.bb.64
    i32 9, label %sw.bb.66
    i32 10, label %sw.bb.68
    i32 11, label %sw.bb.70
  ]

sw.bb.62:                                         ; preds = %sw.bb.52
  %50 = load i32, i32* %j, align 4
  %51 = load double, double* %d, align 8
  %conv63 = fptrunc double %51 to float
  %52 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_x(i32 %50, float %conv63, %struct.quantum_reg_struct* %52)
  br label %sw.epilog.72

sw.bb.64:                                         ; preds = %sw.bb.52
  %53 = load i32, i32* %j, align 4
  %54 = load double, double* %d, align 8
  %conv65 = fptrunc double %54 to float
  %55 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_y(i32 %53, float %conv65, %struct.quantum_reg_struct* %55)
  br label %sw.epilog.72

sw.bb.66:                                         ; preds = %sw.bb.52
  %56 = load i32, i32* %j, align 4
  %57 = load double, double* %d, align 8
  %conv67 = fptrunc double %57 to float
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_z(i32 %56, float %conv67, %struct.quantum_reg_struct* %58)
  br label %sw.epilog.72

sw.bb.68:                                         ; preds = %sw.bb.52
  %59 = load i32, i32* %j, align 4
  %60 = load double, double* %d, align 8
  %conv69 = fptrunc double %60 to float
  %61 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_phase_kick(i32 %59, float %conv69, %struct.quantum_reg_struct* %61)
  br label %sw.epilog.72

sw.bb.70:                                         ; preds = %sw.bb.52
  %62 = load i32, i32* %j, align 4
  %63 = load double, double* %d, align 8
  %conv71 = fptrunc double %63 to float
  %64 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_phase_scale(i32 %62, float %conv71, %struct.quantum_reg_struct* %64)
  br label %sw.epilog.72

sw.epilog.72:                                     ; preds = %sw.bb.52, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62
  br label %sw.epilog.92

sw.bb.73:                                         ; preds = %for.end
  %arraydecay74 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call75 = call i64 @fread(i8* %arraydecay74, i64 4, i64 1, %struct._IO_FILE* %65)
  %arraydecay76 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call77 = call i32 @quantum_char2int(i8* %arraydecay76)
  store i32 %call77, i32* %j, align 4
  %arraydecay78 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call79 = call i64 @fread(i8* %arraydecay78, i64 4, i64 1, %struct._IO_FILE* %66)
  %arraydecay80 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call81 = call i32 @quantum_char2int(i8* %arraydecay80)
  store i32 %call81, i32* %k, align 4
  %arraydecay82 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call83 = call i64 @fread(i8* %arraydecay82, i64 8, i64 1, %struct._IO_FILE* %67)
  %arraydecay84 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call85 = call double @quantum_char2double(i8* %arraydecay84)
  store double %call85, double* %d, align 8
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %k, align 4
  %70 = load double, double* %d, align 8
  %conv86 = fptrunc double %70 to float
  %71 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase_kick(i32 %68, i32 %69, float %conv86, %struct.quantum_reg_struct* %71)
  br label %sw.epilog.92

sw.bb.87:                                         ; preds = %for.end
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call88 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %72)
  br label %sw.epilog.92

sw.bb.89:                                         ; preds = %for.end
  br label %sw.epilog.92

sw.default:                                       ; preds = %for.end
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load i8, i8* %operation, align 1
  %conv90 = zext i8 %75 to i32
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %74, i32 %conv90)
  br label %return

sw.epilog.92:                                     ; preds = %sw.bb.89, %sw.bb.87, %sw.bb.73, %sw.epilog.72, %sw.epilog.51, %sw.bb.23, %sw.epilog, %sw.bb
  br label %for.inc.93

for.inc.93:                                       ; preds = %sw.epilog.92
  %76 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call96 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %return

return:                                           ; preds = %for.end.95, %sw.default, %if.then
  ret void
}

declare void @perror(i8*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare void @quantum_new_qureg(%struct.quantum_reg_struct* sret, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @quantum_cnot(i32, i32, %struct.quantum_reg_struct*) #2

declare void @quantum_cond_phase(i32, i32, %struct.quantum_reg_struct*) #2

declare void @quantum_toffoli(i32, i32, i32, %struct.quantum_reg_struct*) #2

declare void @quantum_sigma_x(i32, %struct.quantum_reg_struct*) #2

declare void @quantum_sigma_y(i32, %struct.quantum_reg_struct*) #2

declare void @quantum_sigma_z(i32, %struct.quantum_reg_struct*) #2

declare void @quantum_hadamard(i32, %struct.quantum_reg_struct*) #2

declare i32 @quantum_bmeasure(i32, %struct.quantum_reg_struct*) #2

declare i32 @quantum_bmeasure_bitpreserve(i32, %struct.quantum_reg_struct*) #2

declare void @quantum_swaptheleads(i32, %struct.quantum_reg_struct*) #2

declare void @quantum_r_x(i32, float, %struct.quantum_reg_struct*) #2

declare void @quantum_r_y(i32, float, %struct.quantum_reg_struct*) #2

declare void @quantum_r_z(i32, float, %struct.quantum_reg_struct*) #2

declare void @quantum_phase_kick(i32, float, %struct.quantum_reg_struct*) #2

declare void @quantum_phase_scale(i32, float, %struct.quantum_reg_struct*) #2

declare void @quantum_cond_phase_kick(i32, i32, float, %struct.quantum_reg_struct*) #2

declare i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
