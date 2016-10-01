; ModuleID = './MultiSource.Benchmarks.MallocBench/63.gs.gp_unix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Ghostscript: gettimeofday failed:\00", align 1
@gp_file_name_list_separator = global i8 58, align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind uwtable
define void @gp_init() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_get_clock(i64* %pdt) #0 {
entry:
  %pdt.addr = alloca i64*, align 8
  %secs_since_1980 = alloca i64, align 8
  %tp = alloca %struct.timeval, align 8
  %tzp = alloca %struct.timezone, align 4
  %tm = alloca %struct.tm*, align 8
  store i64* %pdt, i64** %pdt.addr, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tp, %struct.timezone* %tzp) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %sub = sub nsw i64 %0, 315576000
  store i64 %sub, i64* %secs_since_1980, align 8
  %tz_minuteswest = getelementptr inbounds %struct.timezone, %struct.timezone* %tzp, i32 0, i32 0
  %1 = load i32, i32* %tz_minuteswest, align 4
  %mul = mul nsw i32 %1, 60
  %conv = sext i32 %mul to i64
  %2 = load i64, i64* %secs_since_1980, align 8
  %sub1 = sub nsw i64 %2, %conv
  store i64 %sub1, i64* %secs_since_1980, align 8
  %tv_sec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  %call3 = call %struct.tm* @localtime(i64* %tv_sec2) #4
  store %struct.tm* %call3, %struct.tm** %tm, align 8
  %3 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 8
  %4 = load i32, i32* %tm_isdst, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load i64, i64* %secs_since_1980, align 8
  %add = add nsw i64 %5, 3600
  store i64 %add, i64* %secs_since_1980, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %6 = load i64, i64* %secs_since_1980, align 8
  %div = sdiv i64 %6, 86400
  %7 = load i64*, i64** %pdt.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %div, i64* %arrayidx, align 8
  %8 = load i64, i64* %secs_since_1980, align 8
  %rem = srem i64 %8, 86400
  %mul6 = mul nsw i64 %rem, 1000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %9 = load i64, i64* %tv_usec, align 8
  %div7 = sdiv i64 %9, 1000
  %add8 = add nsw i64 %mul6, %div7
  %10 = load i64*, i64** %pdt.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 %add8, i64* %arrayidx9, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare void @perror(i8*) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_is_absolute(i8* %fname, i32 %len) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp uge i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i8* @gp_file_name_concat_string(i8* %prefix, i32 %plen, i8* %fname, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %plen.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 %plen, i32* %plen.addr, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %plen.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %plen.addr, align 4
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %2 = load i8*, i8** %prefix.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
