; ModuleID = './MultiSource.Benchmarks.FreeBench/6.analyzer.types.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.def_list_t = type { i8*, i64, i32, i32 }
%struct.conf_list_t = type { i8*, i64, i32 }

@hard_raw_mod.last = internal global %struct.hard_raw* null, align 8
@hard_raw_mod.hr_empty = internal global i32 1, align 4
@hard_raw_list = external global %struct.hard_raw*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@def_table_size = external global i32, align 4
@def_table = external global %struct.def_list_t**, align 8
@conflict_list.next = internal global %struct.conf_list_t* null, align 8
@first = external global i32, align 4
@list = external global %struct.conf_list_t*, align 8

; Function Attrs: nounwind uwtable
define void @hard_raw_mod(i64 %address, i32 %w_epoch, i32 %w_place, i64 %w_issue, i32 %r_epoch, i32 %r_place, i64 %r_issue) #0 {
entry:
  %address.addr = alloca i64, align 8
  %w_epoch.addr = alloca i32, align 4
  %w_place.addr = alloca i32, align 4
  %w_issue.addr = alloca i64, align 8
  %r_epoch.addr = alloca i32, align 4
  %r_place.addr = alloca i32, align 4
  %r_issue.addr = alloca i64, align 8
  store i64 %address, i64* %address.addr, align 8
  store i32 %w_epoch, i32* %w_epoch.addr, align 4
  store i32 %w_place, i32* %w_place.addr, align 4
  store i64 %w_issue, i64* %w_issue.addr, align 8
  store i32 %r_epoch, i32* %r_epoch.addr, align 4
  store i32 %r_place, i32* %r_place.addr, align 4
  store i64 %r_issue, i64* %r_issue.addr, align 8
  %0 = load i32, i32* @hard_raw_mod.hr_empty, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 56) #4
  %1 = bitcast i8* %call to %struct.hard_raw*
  store %struct.hard_raw* %1, %struct.hard_raw** @hard_raw_list, align 8
  %2 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %tobool1 = icmp ne %struct.hard_raw* %2, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %next = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %4, i32 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %next, align 8
  %5 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %prev = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %5, i32 0, i32 1
  store %struct.hard_raw* null, %struct.hard_raw** %prev, align 8
  %6 = load i64, i64* %address.addr, align 8
  %7 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %address4 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %7, i32 0, i32 2
  store i64 %6, i64* %address4, align 8
  %8 = load i32, i32* %w_epoch.addr, align 4
  %9 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %w_epoch5 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %9, i32 0, i32 3
  store i32 %8, i32* %w_epoch5, align 4
  %10 = load i32, i32* %w_place.addr, align 4
  %11 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %w_place6 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %11, i32 0, i32 4
  store i32 %10, i32* %w_place6, align 4
  %12 = load i64, i64* %w_issue.addr, align 8
  %13 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %w_issue7 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %13, i32 0, i32 5
  store i64 %12, i64* %w_issue7, align 8
  %14 = load i32, i32* %r_epoch.addr, align 4
  %15 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %r_epoch8 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %15, i32 0, i32 6
  store i32 %14, i32* %r_epoch8, align 4
  %16 = load i32, i32* %r_place.addr, align 4
  %17 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %r_place9 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %17, i32 0, i32 7
  store i32 %16, i32* %r_place9, align 4
  %18 = load i64, i64* %r_issue.addr, align 8
  %19 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %r_issue10 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %19, i32 0, i32 8
  store i64 %18, i64* %r_issue10, align 8
  store i32 0, i32* @hard_raw_mod.hr_empty, align 4
  %20 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %20, %struct.hard_raw** @hard_raw_mod.last, align 8
  br label %return

if.end.11:                                        ; preds = %entry
  %call12 = call noalias i8* @malloc(i64 56) #4
  %21 = bitcast i8* %call12 to %struct.hard_raw*
  %22 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %next13 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %22, i32 0, i32 0
  store %struct.hard_raw* %21, %struct.hard_raw** %next13, align 8
  %23 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %24 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %next14 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %24, i32 0, i32 0
  %25 = load %struct.hard_raw*, %struct.hard_raw** %next14, align 8
  %prev15 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %25, i32 0, i32 1
  store %struct.hard_raw* %23, %struct.hard_raw** %prev15, align 8
  %26 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %next16 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %26, i32 0, i32 0
  %27 = load %struct.hard_raw*, %struct.hard_raw** %next16, align 8
  store %struct.hard_raw* %27, %struct.hard_raw** @hard_raw_mod.last, align 8
  %28 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %tobool17 = icmp ne %struct.hard_raw* %28, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.11
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.20:                                        ; preds = %if.end.11
  %30 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %next21 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %30, i32 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %next21, align 8
  %31 = load i64, i64* %address.addr, align 8
  %32 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %address22 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %32, i32 0, i32 2
  store i64 %31, i64* %address22, align 8
  %33 = load i32, i32* %w_epoch.addr, align 4
  %34 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %w_epoch23 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %34, i32 0, i32 3
  store i32 %33, i32* %w_epoch23, align 4
  %35 = load i32, i32* %w_place.addr, align 4
  %36 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %w_place24 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %36, i32 0, i32 4
  store i32 %35, i32* %w_place24, align 4
  %37 = load i64, i64* %w_issue.addr, align 8
  %38 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %w_issue25 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %38, i32 0, i32 5
  store i64 %37, i64* %w_issue25, align 8
  %39 = load i32, i32* %r_epoch.addr, align 4
  %40 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %r_epoch26 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %40, i32 0, i32 6
  store i32 %39, i32* %r_epoch26, align 4
  %41 = load i32, i32* %r_place.addr, align 4
  %42 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %r_place27 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %42, i32 0, i32 7
  store i32 %41, i32* %r_place27, align 4
  %43 = load i64, i64* %r_issue.addr, align 8
  %44 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %r_issue28 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %44, i32 0, i32 8
  store i64 %43, i64* %r_issue28, align 8
  br label %return

return:                                           ; preds = %if.end.20, %if.end
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i64 @def_hash(i64 %address) #0 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, i64* %address.addr, align 8
  %0 = load i64, i64* %address.addr, align 8
  %1 = load i32, i32* @def_table_size, align 4
  %conv = sext i32 %1 to i64
  %rem = urem i64 %0, %conv
  ret i64 %rem
}

; Function Attrs: nounwind uwtable
define %struct.def_list_t* @def_list_lookup(i64 %address) #0 {
entry:
  %retval = alloca %struct.def_list_t*, align 8
  %address.addr = alloca i64, align 8
  %place = alloca i64, align 8
  %counter = alloca %struct.def_list_t*, align 8
  store i64 %address, i64* %address.addr, align 8
  %0 = load i64, i64* %address.addr, align 8
  %call = call i64 @def_hash(i64 %0)
  store i64 %call, i64* %place, align 8
  %1 = load i64, i64* %place, align 8
  %2 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %arrayidx = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %2, i64 %1
  %3 = load %struct.def_list_t*, %struct.def_list_t** %arrayidx, align 8
  store %struct.def_list_t* %3, %struct.def_list_t** %counter, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %cmp = icmp ne %struct.def_list_t* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %address.addr, align 8
  %6 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %address1 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %6, i32 0, i32 1
  %7 = load i64, i64* %address1, align 8
  %cmp2 = icmp eq i64 %5, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  store %struct.def_list_t* %8, %struct.def_list_t** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %next = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %next, align 8
  %11 = bitcast i8* %10 to %struct.def_list_t*
  store %struct.def_list_t* %11, %struct.def_list_t** %counter, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.def_list_t* null, %struct.def_list_t** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load %struct.def_list_t*, %struct.def_list_t** %retval
  ret %struct.def_list_t* %12
}

; Function Attrs: nounwind uwtable
define void @def_list_mod(i64 %address, i32 %epoch, i32 %place_in_epoch) #0 {
entry:
  %address.addr = alloca i64, align 8
  %epoch.addr = alloca i32, align 4
  %place_in_epoch.addr = alloca i32, align 4
  %temp = alloca %struct.def_list_t*, align 8
  %counter = alloca %struct.def_list_t*, align 8
  %place = alloca i64, align 8
  store i64 %address, i64* %address.addr, align 8
  store i32 %epoch, i32* %epoch.addr, align 4
  store i32 %place_in_epoch, i32* %place_in_epoch.addr, align 4
  store %struct.def_list_t* null, %struct.def_list_t** %temp, align 8
  %0 = load i64, i64* %address.addr, align 8
  %call = call i64 @def_hash(i64 %0)
  store i64 %call, i64* %place, align 8
  %1 = load i64, i64* %place, align 8
  %2 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %arrayidx = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %2, i64 %1
  %3 = load %struct.def_list_t*, %struct.def_list_t** %arrayidx, align 8
  %cmp = icmp eq %struct.def_list_t* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 24) #4
  %4 = bitcast i8* %call1 to %struct.def_list_t*
  store %struct.def_list_t* %4, %struct.def_list_t** %temp, align 8
  %5 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %tobool = icmp ne %struct.def_list_t* %5, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %next = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %7, i32 0, i32 0
  store i8* null, i8** %next, align 8
  %8 = load i64, i64* %address.addr, align 8
  %9 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %address4 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %9, i32 0, i32 1
  store i64 %8, i64* %address4, align 8
  %10 = load i32, i32* %epoch.addr, align 4
  %11 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %epoch5 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %11, i32 0, i32 2
  store i32 %10, i32* %epoch5, align 4
  %12 = load i32, i32* %place_in_epoch.addr, align 4
  %13 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %place_in_epoch6 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %13, i32 0, i32 3
  store i32 %12, i32* %place_in_epoch6, align 4
  %14 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %15 = load i64, i64* %place, align 8
  %16 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %arrayidx7 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %16, i64 %15
  store %struct.def_list_t* %14, %struct.def_list_t** %arrayidx7, align 8
  br label %if.end.27

if.else:                                          ; preds = %entry
  %17 = load i64, i64* %place, align 8
  %18 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %arrayidx8 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %18, i64 %17
  %19 = load %struct.def_list_t*, %struct.def_list_t** %arrayidx8, align 8
  store %struct.def_list_t* %19, %struct.def_list_t** %counter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %20 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %cmp9 = icmp ne %struct.def_list_t* %20, null
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  store %struct.def_list_t* %21, %struct.def_list_t** %temp, align 8
  %22 = load i64, i64* %address.addr, align 8
  %23 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %address10 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %23, i32 0, i32 1
  %24 = load i64, i64* %address10, align 8
  %cmp11 = icmp eq i64 %22, %24
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %for.body
  %25 = load i32, i32* %epoch.addr, align 4
  %26 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %epoch13 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %26, i32 0, i32 2
  store i32 %25, i32* %epoch13, align 4
  %27 = load i32, i32* %place_in_epoch.addr, align 4
  %28 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %place_in_epoch14 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %28, i32 0, i32 3
  store i32 %27, i32* %place_in_epoch14, align 4
  br label %if.end.27

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %29 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %next16 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %29, i32 0, i32 0
  %30 = load i8*, i8** %next16, align 8
  %31 = bitcast i8* %30 to %struct.def_list_t*
  store %struct.def_list_t* %31, %struct.def_list_t** %counter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call noalias i8* @malloc(i64 24) #4
  %32 = bitcast i8* %call17 to %struct.def_list_t*
  store %struct.def_list_t* %32, %struct.def_list_t** %counter, align 8
  %33 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %tobool18 = icmp ne %struct.def_list_t* %33, null
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %for.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.21:                                        ; preds = %for.end
  %35 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %next22 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %35, i32 0, i32 0
  store i8* null, i8** %next22, align 8
  %36 = load i64, i64* %address.addr, align 8
  %37 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %address23 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %37, i32 0, i32 1
  store i64 %36, i64* %address23, align 8
  %38 = load i32, i32* %epoch.addr, align 4
  %39 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %epoch24 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %39, i32 0, i32 2
  store i32 %38, i32* %epoch24, align 4
  %40 = load i32, i32* %place_in_epoch.addr, align 4
  %41 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %place_in_epoch25 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %41, i32 0, i32 3
  store i32 %40, i32* %place_in_epoch25, align 4
  %42 = load %struct.def_list_t*, %struct.def_list_t** %counter, align 8
  %43 = bitcast %struct.def_list_t* %42 to i8*
  %44 = load %struct.def_list_t*, %struct.def_list_t** %temp, align 8
  %next26 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %44, i32 0, i32 0
  store i8* %43, i8** %next26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.12, %if.end.21, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @conflict_list(i64 %address) #0 {
entry:
  %address.addr = alloca i64, align 8
  %temp = alloca %struct.conf_list_t*, align 8
  %counter = alloca %struct.conf_list_t*, align 8
  %make_new = alloca i32, align 4
  store i64 %address, i64* %address.addr, align 8
  store %struct.conf_list_t* null, %struct.conf_list_t** %temp, align 8
  store i32 1, i32* %make_new, align 4
  %0 = load i32, i32* @first, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.conf_list_t*
  store %struct.conf_list_t* %1, %struct.conf_list_t** @list, align 8
  %2 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %tobool1 = icmp ne %struct.conf_list_t* %2, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %next = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %4, i32 0, i32 0
  store i8* null, i8** %next, align 8
  %5 = load i64, i64* %address.addr, align 8
  %6 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %address4 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %6, i32 0, i32 1
  store i64 %5, i64* %address4, align 8
  %7 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %accesser = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %7, i32 0, i32 2
  store i32 1, i32* %accesser, align 4
  store i32 0, i32* @first, align 4
  %8 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %8, %struct.conf_list_t** @conflict_list.next, align 8
  br label %if.end.23

if.end.5:                                         ; preds = %entry
  %9 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %9, %struct.conf_list_t** %counter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load %struct.conf_list_t*, %struct.conf_list_t** %counter, align 8
  %cmp = icmp ne %struct.conf_list_t* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.conf_list_t*, %struct.conf_list_t** %counter, align 8
  store %struct.conf_list_t* %11, %struct.conf_list_t** %temp, align 8
  %12 = load i64, i64* %address.addr, align 8
  %13 = load %struct.conf_list_t*, %struct.conf_list_t** %counter, align 8
  %address6 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %13, i32 0, i32 1
  %14 = load i64, i64* %address6, align 8
  %cmp7 = icmp eq i64 %12, %14
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body
  %15 = load %struct.conf_list_t*, %struct.conf_list_t** %counter, align 8
  %accesser9 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %15, i32 0, i32 2
  %16 = load i32, i32* %accesser9, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %accesser9, align 4
  store i32 0, i32* %make_new, align 4
  br label %for.end

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %17 = load %struct.conf_list_t*, %struct.conf_list_t** %counter, align 8
  %next11 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %17, i32 0, i32 0
  %18 = load i8*, i8** %next11, align 8
  %19 = bitcast i8* %18 to %struct.conf_list_t*
  store %struct.conf_list_t* %19, %struct.conf_list_t** %counter, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %20 = load i32, i32* %make_new, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %for.end
  %call14 = call noalias i8* @malloc(i64 24) #4
  %21 = bitcast i8* %call14 to %struct.conf_list_t*
  store %struct.conf_list_t* %21, %struct.conf_list_t** @conflict_list.next, align 8
  %22 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %tobool15 = icmp ne %struct.conf_list_t* %22, null
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.18:                                        ; preds = %if.then.13
  %24 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %next19 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %24, i32 0, i32 0
  store i8* null, i8** %next19, align 8
  %25 = load i64, i64* %address.addr, align 8
  %26 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %address20 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %26, i32 0, i32 1
  store i64 %25, i64* %address20, align 8
  %27 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %accesser21 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %27, i32 0, i32 2
  store i32 1, i32* %accesser21, align 4
  %28 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %29 = bitcast %struct.conf_list_t* %28 to i8*
  %30 = load %struct.conf_list_t*, %struct.conf_list_t** %temp, align 8
  %next22 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %30, i32 0, i32 0
  store i8* %29, i8** %next22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.end.18, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
