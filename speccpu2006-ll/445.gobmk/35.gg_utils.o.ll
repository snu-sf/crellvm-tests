; ModuleID = 'utils/gg_utils.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.interpolation_data = type { i32, float, float, [21 x float] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1

; Function Attrs: nounwind uwtable
define void @gg_init_color() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_color_char_no_space(i32 %c, i32 %x) #0 {
entry:
  %c.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %1)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @write_color_string(i32 %c, i8* %str) #0 {
entry:
  %c.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c.addr, align 4
  %3 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  call void @write_color_char_no_space(i32 %2, i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_color_char(i32 %c, i32 %x) #0 {
entry:
  %c.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  call void @write_color_char_no_space(i32 %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gg_vsnprintf(i8* %dest, i64 %len, i8* %fmt, %struct.__va_list_tag* %args) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %fmt.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i32 @vsprintf(i8* %1, i8* %2, %struct.__va_list_tag* %3) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind uwtable
define void @gg_snprintf(i8* %dest, i64 %len, i8* %fmt, ...) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gg_vsnprintf(i8* %0, i64 %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define double @gg_gettimeofday() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define i8* @gg_version() #0 {
entry:
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define double @gg_cputime() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define float @gg_normalize_float(float %x, float %a) #0 {
entry:
  %x.addr = alloca float, align 4
  %a.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %x.addr, align 4
  %2 = load float, float* %a.addr, align 4
  %div = fdiv float %1, %2
  %conv = fpext float %div to double
  %add = fadd double 5.000000e-01, %conv
  %conv1 = fptosi double %add to i32
  %conv2 = sitofp i32 %conv1 to float
  %mul = fmul float %0, %conv2
  ret float %mul
}

; Function Attrs: nounwind uwtable
define i32 @gg_normalize_float2int(float %x, float %a) #0 {
entry:
  %x.addr = alloca float, align 4
  %a.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %a.addr, align 4
  %div = fdiv float %0, %1
  %conv = fpext float %div to double
  %add = fadd double 5.000000e-01, %conv
  %conv1 = fptosi double %add to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @gg_sort(i8* %base, i64 %nel, i64 %width, i32 (i8*, i8*)* %cmp) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %nel.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %cmp.addr = alloca i32 (i8*, i8*)*, align 8
  %gap = alloca i32, align 4
  %swap_made = alloca i32, align 4
  %end = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %c = alloca i8*, align 8
  %d = alloca i8*, align 8
  %size = alloca i64, align 8
  %tmp = alloca i8, align 1
  store i8* %base, i8** %base.addr, align 8
  store i64 %nel, i64* %nel.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  store i32 (i8*, i8*)* %cmp, i32 (i8*, i8*)** %cmp.addr, align 8
  %0 = load i64, i64* %nel.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %gap, align 4
  %1 = load i8*, i8** %base.addr, align 8
  %2 = load i64, i64* %width.addr, align 8
  %3 = load i64, i64* %nel.addr, align 8
  %sub = sub i64 %3, 1
  %mul = mul i64 %2, %sub
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %mul
  store i8* %add.ptr, i8** %end, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  store i32 0, i32* %swap_made, align 4
  %4 = load i32, i32* %gap, align 4
  %mul1 = mul nsw i32 10, %4
  %add = add nsw i32 %mul1, 3
  %div = sdiv i32 %add, 13
  store i32 %div, i32* %gap, align 4
  %5 = load i8*, i8** %base.addr, align 8
  store i8* %5, i8** %a, align 8
  %6 = load i8*, i8** %a, align 8
  %7 = load i32, i32* %gap, align 4
  %conv2 = sext i32 %7 to i64
  %8 = load i64, i64* %width.addr, align 8
  %mul3 = mul i64 %conv2, %8
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 %mul3
  store i8* %add.ptr4, i8** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %9 = load i8*, i8** %b, align 8
  %10 = load i8*, i8** %end, align 8
  %cmp5 = icmp ule i8* %9, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %12 = load i8*, i8** %a, align 8
  %13 = load i8*, i8** %b, align 8
  %call = call i32 %11(i8* %12, i8* %13)
  %cmp7 = icmp sgt i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i8*, i8** %a, align 8
  store i8* %14, i8** %c, align 8
  %15 = load i8*, i8** %b, align 8
  store i8* %15, i8** %d, align 8
  %16 = load i64, i64* %width.addr, align 8
  store i64 %16, i64* %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %17 = load i64, i64* %size, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %size, align 8
  %cmp9 = icmp ugt i64 %17, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %c, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %tmp, align 1
  %20 = load i8*, i8** %d, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8, i8* %tmp, align 1
  %24 = load i8*, i8** %d, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr11, i8** %d, align 8
  store i8 %23, i8* %24, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %swap_made, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i64, i64* %width.addr, align 8
  %26 = load i8*, i8** %a, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %add.ptr12, i8** %a, align 8
  %27 = load i64, i64* %width.addr, align 8
  %28 = load i8*, i8** %b, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %add.ptr13, i8** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %29 = load i32, i32* %gap, align 4
  %cmp14 = icmp sgt i32 %29, 1
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %30 = load i32, i32* %swap_made, align 4
  %tobool = icmp ne i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %31 = phi i1 [ true, %do.cond ], [ %tobool, %lor.rhs ]
  br i1 %31, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define float @gg_interpolate(%struct.interpolation_data* %f, float %x) #0 {
entry:
  %retval = alloca float, align 4
  %f.addr = alloca %struct.interpolation_data*, align 8
  %x.addr = alloca float, align 4
  %i = alloca i32, align 4
  %ratio = alloca float, align 4
  %diff = alloca float, align 4
  store %struct.interpolation_data* %f, %struct.interpolation_data** %f.addr, align 8
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %range_lowerbound = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %1, i32 0, i32 1
  %2 = load float, float* %range_lowerbound, align 4
  %cmp = fcmp olt float %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %values = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [21 x float], [21 x float]* %values, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4
  store float %4, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load float, float* %x.addr, align 4
  %6 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %range_upperbound = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %6, i32 0, i32 2
  %7 = load float, float* %range_upperbound, align 4
  %cmp1 = fcmp ogt float %5, %7
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %sections = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %8, i32 0, i32 0
  %9 = load i32, i32* %sections, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %values3 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %10, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [21 x float], [21 x float]* %values3, i32 0, i64 %idxprom
  %11 = load float, float* %arrayidx4, align 4
  store float %11, float* %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %12 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %sections6 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %12, i32 0, i32 0
  %13 = load i32, i32* %sections6, align 4
  %conv = sitofp i32 %13 to float
  %14 = load float, float* %x.addr, align 4
  %15 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %range_lowerbound7 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %15, i32 0, i32 1
  %16 = load float, float* %range_lowerbound7, align 4
  %sub = fsub float %14, %16
  %mul = fmul float %conv, %sub
  %17 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %range_upperbound8 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %17, i32 0, i32 2
  %18 = load float, float* %range_upperbound8, align 4
  %19 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %range_lowerbound9 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %19, i32 0, i32 1
  %20 = load float, float* %range_lowerbound9, align 4
  %sub10 = fsub float %18, %20
  %div = fdiv float %mul, %sub10
  store float %div, float* %ratio, align 4
  %21 = load float, float* %ratio, align 4
  %conv11 = fptosi float %21 to i32
  store i32 %conv11, i32* %i, align 4
  %22 = load float, float* %ratio, align 4
  %23 = load i32, i32* %i, align 4
  %conv12 = sitofp i32 %23 to float
  %sub13 = fsub float %22, %conv12
  store float %sub13, float* %diff, align 4
  %24 = load float, float* %diff, align 4
  %sub14 = fsub float 1.000000e+00, %24
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %values16 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %26, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [21 x float], [21 x float]* %values16, i32 0, i64 %idxprom15
  %27 = load float, float* %arrayidx17, align 4
  %mul18 = fmul float %sub14, %27
  %28 = load float, float* %diff, align 4
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %29, 1
  %idxprom19 = sext i32 %add to i64
  %30 = load %struct.interpolation_data*, %struct.interpolation_data** %f.addr, align 8
  %values20 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %30, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [21 x float], [21 x float]* %values20, i32 0, i64 %idxprom19
  %31 = load float, float* %arrayidx21, align 4
  %mul22 = fmul float %28, %31
  %add23 = fadd float %mul18, %mul22
  store float %add23, float* %retval
  br label %return

return:                                           ; preds = %if.else.5, %if.then.2, %if.then
  %32 = load float, float* %retval
  ret float %32
}

; Function Attrs: nounwind uwtable
define float @soft_cap(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %mul = fmul float %0, %1
  %2 = load float, float* %a.addr, align 4
  %3 = load float, float* %b.addr, align 4
  %add = fadd float %2, %3
  %div = fdiv float %mul, %add
  ret float %div
}

; Function Attrs: nounwind uwtable
define void @rotate(i32 %i, i32 %j, i32* %ri, i32* %rj, i32 %bs, i32 %rot) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %ri.addr = alloca i32*, align 8
  %rj.addr = alloca i32*, align 8
  %bs.addr = alloca i32, align 4
  %rot.addr = alloca i32, align 4
  %bs1 = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32* %ri, i32** %ri.addr, align 8
  store i32* %rj, i32** %rj.addr, align 8
  store i32 %bs, i32* %bs.addr, align 4
  store i32 %rot, i32* %rot.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %j.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32*, i32** %ri.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %j.addr, align 4
  %5 = load i32*, i32** %rj.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %if.end.39

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %bs.addr, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %bs1, align 4
  %7 = load i32, i32* %rot.addr, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %i.addr, align 4
  %9 = load i32*, i32** %ri.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %j.addr, align 4
  %11 = load i32*, i32** %rj.addr, align 8
  store i32 %10, i32* %11, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %rot.addr, align 4
  %cmp4 = icmp eq i32 %12, 1
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %13 = load i32, i32* %bs1, align 4
  %14 = load i32, i32* %j.addr, align 4
  %sub6 = sub nsw i32 %13, %14
  %15 = load i32*, i32** %ri.addr, align 8
  store i32 %sub6, i32* %15, align 4
  %16 = load i32, i32* %i.addr, align 4
  %17 = load i32*, i32** %rj.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end.38

if.else.7:                                        ; preds = %if.else
  %18 = load i32, i32* %rot.addr, align 4
  %cmp8 = icmp eq i32 %18, 2
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else.7
  %19 = load i32, i32* %bs1, align 4
  %20 = load i32, i32* %i.addr, align 4
  %sub10 = sub nsw i32 %19, %20
  %21 = load i32*, i32** %ri.addr, align 8
  store i32 %sub10, i32* %21, align 4
  %22 = load i32, i32* %bs1, align 4
  %23 = load i32, i32* %j.addr, align 4
  %sub11 = sub nsw i32 %22, %23
  %24 = load i32*, i32** %rj.addr, align 8
  store i32 %sub11, i32* %24, align 4
  br label %if.end.37

if.else.12:                                       ; preds = %if.else.7
  %25 = load i32, i32* %rot.addr, align 4
  %cmp13 = icmp eq i32 %25, 3
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else.12
  %26 = load i32, i32* %j.addr, align 4
  %27 = load i32*, i32** %ri.addr, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %bs1, align 4
  %29 = load i32, i32* %i.addr, align 4
  %sub15 = sub nsw i32 %28, %29
  %30 = load i32*, i32** %rj.addr, align 8
  store i32 %sub15, i32* %30, align 4
  br label %if.end.36

if.else.16:                                       ; preds = %if.else.12
  %31 = load i32, i32* %rot.addr, align 4
  %cmp17 = icmp eq i32 %31, 4
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.16
  %32 = load i32, i32* %j.addr, align 4
  %33 = load i32*, i32** %ri.addr, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %i.addr, align 4
  %35 = load i32*, i32** %rj.addr, align 8
  store i32 %34, i32* %35, align 4
  br label %if.end.35

if.else.19:                                       ; preds = %if.else.16
  %36 = load i32, i32* %rot.addr, align 4
  %cmp20 = icmp eq i32 %36, 5
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.19
  %37 = load i32, i32* %bs1, align 4
  %38 = load i32, i32* %i.addr, align 4
  %sub22 = sub nsw i32 %37, %38
  %39 = load i32*, i32** %ri.addr, align 8
  store i32 %sub22, i32* %39, align 4
  %40 = load i32, i32* %j.addr, align 4
  %41 = load i32*, i32** %rj.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %if.else.19
  %42 = load i32, i32* %rot.addr, align 4
  %cmp24 = icmp eq i32 %42, 6
  br i1 %cmp24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else.23
  %43 = load i32, i32* %bs1, align 4
  %44 = load i32, i32* %j.addr, align 4
  %sub26 = sub nsw i32 %43, %44
  %45 = load i32*, i32** %ri.addr, align 8
  store i32 %sub26, i32* %45, align 4
  %46 = load i32, i32* %bs1, align 4
  %47 = load i32, i32* %i.addr, align 4
  %sub27 = sub nsw i32 %46, %47
  %48 = load i32*, i32** %rj.addr, align 8
  store i32 %sub27, i32* %48, align 4
  br label %if.end.33

if.else.28:                                       ; preds = %if.else.23
  %49 = load i32, i32* %rot.addr, align 4
  %cmp29 = icmp eq i32 %49, 7
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.else.28
  %50 = load i32, i32* %i.addr, align 4
  %51 = load i32*, i32** %ri.addr, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %bs1, align 4
  %53 = load i32, i32* %j.addr, align 4
  %sub31 = sub nsw i32 %52, %53
  %54 = load i32*, i32** %rj.addr, align 8
  store i32 %sub31, i32* %54, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.else.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.18
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.14
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.9
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then, %if.end.38, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @inv_rotate(i32 %i, i32 %j, i32* %ri, i32* %rj, i32 %bs, i32 %rot) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %ri.addr = alloca i32*, align 8
  %rj.addr = alloca i32*, align 8
  %bs.addr = alloca i32, align 4
  %rot.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32* %ri, i32** %ri.addr, align 8
  store i32* %rj, i32** %rj.addr, align 8
  store i32 %bs, i32* %bs.addr, align 4
  store i32 %rot, i32* %rot.addr, align 4
  %0 = load i32, i32* %rot.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %2 = load i32, i32* %j.addr, align 4
  %3 = load i32*, i32** %ri.addr, align 8
  %4 = load i32*, i32** %rj.addr, align 8
  %5 = load i32, i32* %bs.addr, align 4
  call void @rotate(i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 3)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %rot.addr, align 4
  %cmp1 = icmp eq i32 %6, 3
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %7 = load i32, i32* %i.addr, align 4
  %8 = load i32, i32* %j.addr, align 4
  %9 = load i32*, i32** %ri.addr, align 8
  %10 = load i32*, i32** %rj.addr, align 8
  %11 = load i32, i32* %bs.addr, align 4
  call void @rotate(i32 %7, i32 %8, i32* %9, i32* %10, i32 %11, i32 1)
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %12 = load i32, i32* %i.addr, align 4
  %13 = load i32, i32* %j.addr, align 4
  %14 = load i32*, i32** %ri.addr, align 8
  %15 = load i32*, i32** %rj.addr, align 8
  %16 = load i32, i32* %bs.addr, align 4
  %17 = load i32, i32* %rot.addr, align 4
  call void @rotate(i32 %12, i32 %13, i32* %14, i32* %15, i32 %16, i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
