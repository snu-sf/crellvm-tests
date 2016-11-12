; ModuleID = './src/vm-limit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@data_start = external global [0 x i8], align 1
@data_space_start = internal global i8* null, align 8
@warn_function = internal global void (i8*)* null, align 8
@__after_morecore_hook = external global void ()*, align 8
@lim_data = internal global i64 0, align 8
@__morecore = external global i8* (i64)*, align 8
@warnlevel = internal global i32 0, align 4
@check_memory_limits.warn_diagnostic = internal constant [3 x i8*] [i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [34 x i8] c"Warning: past 75% of memory limit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Warning: past 85% of memory limit\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Warning: past 95% of memory limit\00", align 1

; Function Attrs: nounwind uwtable
define void @memory_warnings(i8* %start, void (i8*)* %warnfun) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %warnfun.addr = alloca void (i8*)*, align 8
  store i8* %start, i8** %start.addr, align 8
  store void (i8*)* %warnfun, void (i8*)** %warnfun.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %start.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @data_start, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** @data_space_start, align 8
  %2 = load void (i8*)*, void (i8*)** %warnfun.addr, align 8
  store void (i8*)* %2, void (i8*)** @warn_function, align 8
  store void ()* @check_memory_limits, void ()** @__after_morecore_hook, align 8
  store i64 0, i64* @lim_data, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_memory_limits() #0 {
entry:
  %real_morecore = alloca i8* (i64)*, align 8
  %cp = alloca i8*, align 8
  %five_percent = alloca i64, align 8
  %data_size = alloca i64, align 8
  %new_warnlevel = alloca i32, align 4
  store i8* (i64)* null, i8* (i64)** %real_morecore, align 8
  %0 = load i64, i64* @lim_data, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @get_lim_data()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @lim_data, align 8
  %div = udiv i64 %1, 20
  store i64 %div, i64* %five_percent, align 8
  %2 = load i8* (i64)*, i8* (i64)** %real_morecore, align 8
  %tobool = icmp ne i8* (i64)* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i8* (i64)*, i8* (i64)** %real_morecore, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i8* (i64)*, i8* (i64)** @__morecore, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* (i64)* [ %3, %cond.true ], [ %4, %cond.false ]
  %call = call i8* %cond(i64 0)
  store i8* %call, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8*, i8** @data_space_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %data_size, align 8
  %7 = load void (i8*)*, void (i8*)** @warn_function, align 8
  %tobool1 = icmp ne void (i8*)* %7, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %cond.end
  br label %if.end.38

if.end.3:                                         ; preds = %cond.end
  %8 = load i64, i64* %data_size, align 8
  %9 = load i64, i64* %five_percent, align 8
  %mul = mul i64 %9, 19
  %cmp4 = icmp ugt i64 %8, %mul
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end.3
  br label %cond.end.16

cond.false.6:                                     ; preds = %if.end.3
  %10 = load i64, i64* %data_size, align 8
  %11 = load i64, i64* %five_percent, align 8
  %mul7 = mul i64 %11, 17
  %cmp8 = icmp ugt i64 %10, %mul7
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false.6
  br label %cond.end.14

cond.false.10:                                    ; preds = %cond.false.6
  %12 = load i64, i64* %data_size, align 8
  %13 = load i64, i64* %five_percent, align 8
  %mul11 = mul i64 %13, 15
  %cmp12 = icmp ugt i64 %12, %mul11
  %cond13 = select i1 %cmp12, i32 1, i32 0
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.10, %cond.true.9
  %cond15 = phi i32 [ 2, %cond.true.9 ], [ %cond13, %cond.false.10 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end.14, %cond.true.5
  %cond17 = phi i32 [ 3, %cond.true.5 ], [ %cond15, %cond.end.14 ]
  store i32 %cond17, i32* %new_warnlevel, align 4
  %14 = load i32, i32* %new_warnlevel, align 4
  %15 = load i32, i32* @warnlevel, align 4
  %cmp18 = icmp ugt i32 %14, %15
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.16
  %16 = load i32, i32* %new_warnlevel, align 4
  %cmp19 = icmp eq i32 %16, 3
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %lor.lhs.false, %cond.end.16
  %17 = load i32, i32* %new_warnlevel, align 4
  store i32 %17, i32* @warnlevel, align 4
  %18 = load void (i8*)*, void (i8*)** @warn_function, align 8
  %19 = load i32, i32* @warnlevel, align 4
  %sub = sub i32 %19, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @check_memory_limits.warn_diagnostic, i32 0, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  call void %18(i8* %20)
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i64, i64* %data_size, align 8
  %22 = load i64, i64* %five_percent, align 8
  %mul21 = mul i64 %22, 14
  %cmp22 = icmp ult i64 %21, %mul21
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store i32 0, i32* @warnlevel, align 4
  br label %if.end.37

if.else.24:                                       ; preds = %if.else
  %23 = load i32, i32* @warnlevel, align 4
  %cmp25 = icmp ugt i32 %23, 1
  br i1 %cmp25, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.else.24
  %24 = load i64, i64* %data_size, align 8
  %25 = load i64, i64* %five_percent, align 8
  %mul26 = mul i64 %25, 16
  %cmp27 = icmp ult i64 %24, %mul26
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true
  store i32 1, i32* @warnlevel, align 4
  br label %if.end.36

if.else.29:                                       ; preds = %land.lhs.true, %if.else.24
  %26 = load i32, i32* @warnlevel, align 4
  %cmp30 = icmp ugt i32 %26, 2
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %if.else.29
  %27 = load i64, i64* %data_size, align 8
  %28 = load i64, i64* %five_percent, align 8
  %mul32 = mul i64 %28, 18
  %cmp33 = icmp ult i64 %27, %mul32
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.31
  store i32 2, i32* @warnlevel, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.31, %if.else.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.23
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.2, %if.end.37, %if.then.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_lim_data() #0 {
entry:
  %rlimit = alloca %struct.rlimit, align 8
  %call = call i32 @getrlimit(i32 9, %struct.rlimit* %rlimit) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlimit, i32 0, i32 0
  %0 = load i64, i64* %rlim_cur, align 8
  %cmp1 = icmp ule i64 %0, -1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %rlim_cur2 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlimit, i32 0, i32 0
  %1 = load i64, i64* %rlim_cur2, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* @lim_data, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
