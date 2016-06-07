; ModuleID = 'profile.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pctr_t = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ptmr_t = type { i8*, double, double, double, double, double, double }

@.str = private unnamed_addr constant [5 x i8] c"CTR:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  %d %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  %6.2fx %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"/tmp/__EnDiAn_TeSt__\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"profile.c\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"fopen(%s,wb) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"fwrite(%s) failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"fread(%s) failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @pctr_reset(%struct.pctr_t* %ctr) #0 {
entry:
  %ctr.addr = alloca %struct.pctr_t*, align 8
  store %struct.pctr_t* %ctr, %struct.pctr_t** %ctr.addr, align 8
  %0 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %count = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %0, i32 0, i32 1
  store i32 0, i32* %count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pctr_reset_all(%struct.pctr_t* %ctr) #0 {
entry:
  %ctr.addr = alloca %struct.pctr_t*, align 8
  store %struct.pctr_t* %ctr, %struct.pctr_t** %ctr.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %name = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  call void @pctr_reset(%struct.pctr_t* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %3, i32 1
  store %struct.pctr_t* %incdec.ptr, %struct.pctr_t** %ctr.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @pctr_print_all(%struct._IO_FILE* %fp, %struct.pctr_t* %ctr) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ctr.addr = alloca %struct.pctr_t*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.pctr_t* %ctr, %struct.pctr_t** %ctr.addr, align 8
  %0 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %name = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %name1 = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %count = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %6, i32 0, i32 1
  %7 = load i32, i32* %count, align 4
  %8 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %name3 = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %8, i32 0, i32 0
  %9 = load i8*, i8** %name3, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %7, i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.pctr_t*, %struct.pctr_t** %ctr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.pctr_t, %struct.pctr_t* %10, i32 1
  store %struct.pctr_t* %incdec.ptr, %struct.pctr_t** %ctr.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @host_pclk(i32 %dummy) #0 {
entry:
  %dummy.addr = alloca i32, align 4
  %mhz = alloca i32, align 4
  store i32 %dummy, i32* %dummy.addr, align 4
  store i32 0, i32* %mhz, align 4
  %0 = load i32, i32* %mhz, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @ptmr_start(%struct.ptmr_t* %tm) #0 {
entry:
  %tm.addr = alloca %struct.ptmr_t*, align 8
  store %struct.ptmr_t* %tm, %struct.ptmr_t** %tm.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptmr_stop(%struct.ptmr_t* %tm) #0 {
entry:
  %tm.addr = alloca %struct.ptmr_t*, align 8
  store %struct.ptmr_t* %tm, %struct.ptmr_t** %tm.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptmr_reset(%struct.ptmr_t* %tm) #0 {
entry:
  %tm.addr = alloca %struct.ptmr_t*, align 8
  store %struct.ptmr_t* %tm, %struct.ptmr_t** %tm.addr, align 8
  %0 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_cpu = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %0, i32 0, i32 1
  store double 0.000000e+00, double* %t_cpu, align 8
  %1 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_elapsed = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %1, i32 0, i32 2
  store double 0.000000e+00, double* %t_elapsed, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptmr_init(%struct.ptmr_t* %tm) #0 {
entry:
  %tm.addr = alloca %struct.ptmr_t*, align 8
  store %struct.ptmr_t* %tm, %struct.ptmr_t** %tm.addr, align 8
  %0 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_cpu = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %0, i32 0, i32 1
  store double 0.000000e+00, double* %t_cpu, align 8
  %1 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_elapsed = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %1, i32 0, i32 2
  store double 0.000000e+00, double* %t_elapsed, align 8
  %2 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_tot_cpu = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %2, i32 0, i32 3
  store double 0.000000e+00, double* %t_tot_cpu, align 8
  %3 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_tot_elapsed = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %3, i32 0, i32 4
  store double 0.000000e+00, double* %t_tot_elapsed, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptmr_reset_all(%struct.ptmr_t* %tm) #0 {
entry:
  %tm.addr = alloca %struct.ptmr_t*, align 8
  store %struct.ptmr_t* %tm, %struct.ptmr_t** %tm.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %name = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  call void @ptmr_reset(%struct.ptmr_t* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %3, i32 1
  store %struct.ptmr_t* %incdec.ptr, %struct.ptmr_t** %tm.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptmr_print_all(%struct._IO_FILE* %fp, %struct.ptmr_t* %tm, double %norm) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %tm.addr = alloca %struct.ptmr_t*, align 8
  %norm.addr = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.ptmr_t* %tm, %struct.ptmr_t** %tm.addr, align 8
  store double %norm, double* %norm.addr, align 8
  %0 = load double, double* %norm.addr, align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %norm.addr, align 8
  %div = fdiv double 1.000000e+00, %1
  store double %div, double* %norm.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %name = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %t_cpu = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %5, i32 0, i32 1
  %6 = load double, double* %t_cpu, align 8
  %7 = load double, double* %norm.addr, align 8
  %mul = fmul double %6, %7
  %8 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %name1 = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %8, i32 0, i32 0
  %9 = load i8*, i8** %name1, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), double %mul, i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.ptmr_t*, %struct.ptmr_t** %tm.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %10, i32 1
  store %struct.ptmr_t* %incdec.ptr, %struct.ptmr_t** %tm.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @host_endian() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %BYTE_ORDER_MAGIC = alloca i32, align 4
  %file = alloca i8*, align 8
  %buf = alloca [8 x i8], align 1
  %k = alloca i32, align 4
  %endian = alloca i32, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8** %file, align 8
  %0 = load i8*, i8** %file, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i64 291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %1 = load i8*, i8** %file, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %1)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 287454020, i32* %BYTE_ORDER_MAGIC, align 4
  %2 = load i32, i32* %BYTE_ORDER_MAGIC, align 4
  store i32 %2, i32* %k, align 4
  %3 = bitcast i32* %k to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i64 @fwrite(i8* %3, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp2 = icmp ne i64 %call1, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i64 299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %5 = load i8*, i8** %file, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %6)
  %7 = load i8*, i8** %file, align 8
  %call5 = call i32 @unlink(i8* %7) #3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %8)
  %9 = load i8*, i8** %file, align 8
  %call8 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fp, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i64 307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %10 = load i8*, i8** %file, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* %10)
  %11 = load i8*, i8** %file, align 8
  %call11 = call i32 @unlink(i8* %11) #3
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call13 = call i64 @fread(i8* %arraydecay, i64 1, i64 4, %struct._IO_FILE* %12)
  %cmp14 = icmp ne i64 %call13, 4
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i64 312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %13 = load i8*, i8** %file, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %14)
  %15 = load i8*, i8** %file, align 8
  %call17 = call i32 @unlink(i8* %15) #3
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %16)
  %17 = load i8*, i8** %file, align 8
  %call20 = call i32 @unlink(i8* %17) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %18 to i32
  %19 = load i32, i32* %BYTE_ORDER_MAGIC, align 4
  %and = and i32 %19, 255
  %cmp21 = icmp eq i32 %conv, %and
  %cond = select i1 %cmp21, i32 1, i32 0
  store i32 %cond, i32* %endian, align 4
  %20 = load i32, i32* %endian, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.then.10, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
