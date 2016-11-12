; ModuleID = './contrib/sample/main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_job = type opaque

@a = global i32 10000, align 4
@c = global i32 8400, align 4
@b = common global i32 0, align 4
@f = common global [8401 x i32] zeroinitializer, align 16
@d = common global i32 0, align 4
@g = common global i32 0, align 4
@buf = common global [10 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"%.4d\00", align 1
@e = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Sample\00", align 1
@program_name = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), align 8
@program_invocation_name = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Sample Input\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Hello world\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"This is an Error\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Surprise!\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" = \00", align 1

; Function Attrs: nounwind uwtable
define void @foo(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, i32* @b, align 4
  %1 = load i32, i32* @c, align 4
  %sub = sub nsw i32 %0, %1
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @a, align 4
  %div = sdiv i32 %2, 5
  %3 = load i32, i32* @b, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @b, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8401 x i32], [8401 x i32]* @f, i32 0, i64 %idxprom
  store i32 %div, i32* %arrayidx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %for.end
  store i32 0, i32* @d, align 4
  %4 = load i32, i32* @c, align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* @g, align 4
  %tobool2 = icmp ne i32 %mul, 0
  br i1 %tobool2, label %for.body.3, label %for.end.22

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* @c, align 4
  store i32 %5, i32* @b, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %6 = load i32, i32* @b, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [8401 x i32], [8401 x i32]* @f, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* @a, align 4
  %mul7 = mul nsw i32 %7, %8
  %9 = load i32, i32* @d, align 4
  %add = add nsw i32 %9, %mul7
  store i32 %add, i32* @d, align 4
  %10 = load i32, i32* @d, align 4
  %11 = load i32, i32* @g, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* @g, align 4
  %rem = srem i32 %10, %dec
  %12 = load i32, i32* @b, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [8401 x i32], [8401 x i32]* @f, i32 0, i64 %idxprom8
  store i32 %rem, i32* %arrayidx9, align 4
  %13 = load i32, i32* @g, align 4
  %dec10 = add nsw i32 %13, -1
  store i32 %dec10, i32* @g, align 4
  %14 = load i32, i32* @d, align 4
  %div11 = sdiv i32 %14, %13
  store i32 %div11, i32* @d, align 4
  %15 = load i32, i32* @b, align 4
  %dec12 = add nsw i32 %15, -1
  store i32 %dec12, i32* @b, align 4
  %tobool13 = icmp ne i32 %dec12, 0
  br i1 %tobool13, label %for.body.14, label %for.end.16

for.body.14:                                      ; preds = %for.cond.4
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %16 = load i32, i32* @b, align 4
  %17 = load i32, i32* @d, align 4
  %mul15 = mul nsw i32 %17, %16
  store i32 %mul15, i32* @d, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %18 = load i32, i32* @c, align 4
  %sub18 = sub nsw i32 %18, 14
  store i32 %sub18, i32* @c, align 4
  %19 = load i32, i32* @e, align 4
  %20 = load i32, i32* @d, align 4
  %21 = load i32, i32* @a, align 4
  %div19 = sdiv i32 %20, %21
  %add20 = add nsw i32 %19, %div19
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @buf, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %add20) #4
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @a2ps_print_string(%struct.a2ps_job* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @buf, i32 0, i32 0), i32 5)
  %23 = load i32, i32* @d, align 4
  %24 = load i32, i32* @a, align 4
  %rem21 = srem i32 %23, %24
  store i32 %rem21, i32* @e, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @a2ps_print_string(%struct.a2ps_job*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %job = alloca %struct.a2ps_job*, align 8
  store i32 0, i32* %retval
  %call = call %struct.a2ps_job* @a2ps_job_new()
  store %struct.a2ps_job* %call, %struct.a2ps_job** %job, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2_read_sys_config(%struct.a2ps_job* %0)
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_job_finalize(%struct.a2ps_job* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_open_output_session(%struct.a2ps_job* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_open_input_session(%struct.a2ps_job* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %5, 9
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  %7 = load i32, i32* %i, align 4
  call void @a2ps_print_string(%struct.a2ps_job* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %9 = load i32, i32* %j, align 4
  %inc5 = add nsw i32 %9, 1
  store i32 %inc5, i32* %j, align 4
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_print_string(%struct.a2ps_job* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 7)
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_close_input_session(%struct.a2ps_job* %11)
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_open_input_session(%struct.a2ps_job* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_print_char(%struct.a2ps_job* %13, i32 112, i32 6)
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_print_string(%struct.a2ps_job* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 0)
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @foo(%struct.a2ps_job* %15)
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_close_input_session(%struct.a2ps_job* %16)
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_close_output_session(%struct.a2ps_job* %17)
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job, align 8
  call void @a2ps_job_free(%struct.a2ps_job* %18)
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare %struct.a2ps_job* @a2ps_job_new() #2

declare void @a2_read_sys_config(%struct.a2ps_job*) #2

declare void @a2ps_job_finalize(%struct.a2ps_job*) #2

declare void @a2ps_open_output_session(%struct.a2ps_job*) #2

declare void @a2ps_open_input_session(%struct.a2ps_job*, i8*) #2

declare void @a2ps_close_input_session(%struct.a2ps_job*) #2

declare void @a2ps_print_char(%struct.a2ps_job*, i32, i32) #2

declare void @a2ps_close_output_session(%struct.a2ps_job*) #2

declare void @a2ps_job_free(%struct.a2ps_job*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
