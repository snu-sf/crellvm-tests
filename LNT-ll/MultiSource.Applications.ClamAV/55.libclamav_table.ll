; ModuleID = './MultiSource.Applications.ClamAV/55.libclamav_table.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.tableEntry*, %struct.tableEntry*, i32 }
%struct.tableEntry = type { i8*, i32, %struct.tableEntry* }

; Function Attrs: nounwind uwtable
define %struct.table* @tableCreate() #0 {
entry:
  %call = call i8* @cli_calloc(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.table*
  ret %struct.table* %0
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @tableDestroy(%struct.table* %table) #0 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %tableItem = alloca %struct.tableEntry*, align 8
  %tableNext = alloca %struct.tableEntry*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 0
  %1 = load %struct.tableEntry*, %struct.tableEntry** %tableHead, align 8
  store %struct.tableEntry* %1, %struct.tableEntry** %tableItem, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %tobool = icmp ne %struct.tableEntry* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %next = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %3, i32 0, i32 2
  %4 = load %struct.tableEntry*, %struct.tableEntry** %next, align 8
  store %struct.tableEntry* %4, %struct.tableEntry** %tableNext, align 8
  %5 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %5, i32 0, i32 0
  %6 = load i8*, i8** %key, align 8
  %tobool1 = icmp ne i8* %6, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key2 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %7, i32 0, i32 0
  %8 = load i8*, i8** %key2, align 8
  call void @free(i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %10 = bitcast %struct.tableEntry* %9 to i8*
  call void @free(i8* %10) #4
  %11 = load %struct.tableEntry*, %struct.tableEntry** %tableNext, align 8
  store %struct.tableEntry* %11, %struct.tableEntry** %tableItem, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.table*, %struct.table** %table.addr, align 8
  %13 = bitcast %struct.table* %12 to i8*
  call void @free(i8* %13) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @tableInsert(%struct.table* %table, i8* %key, i32 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.table*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %tableItem = alloca %struct.tableEntry*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @tableFind(%struct.table* %0, i8* %1)
  store i32 %call, i32* %v, align 4
  %2 = load i32, i32* %v, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %v, align 4
  %4 = load i32, i32* %value.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i32, i32* %value.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead = getelementptr inbounds %struct.table, %struct.table* %6, i32 0, i32 0
  %7 = load %struct.tableEntry*, %struct.tableEntry** %tableHead, align 8
  %cmp2 = icmp eq %struct.tableEntry* %7, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @cli_malloc(i64 24)
  %8 = bitcast i8* %call4 to %struct.tableEntry*
  %9 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead5 = getelementptr inbounds %struct.table, %struct.table* %9, i32 0, i32 0
  store %struct.tableEntry* %8, %struct.tableEntry** %tableHead5, align 8
  %10 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast = getelementptr inbounds %struct.table, %struct.table* %10, i32 0, i32 1
  store %struct.tableEntry* %8, %struct.tableEntry** %tableLast, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %11 = load %struct.table*, %struct.table** %table.addr, align 8
  %flags = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 2
  %12 = load i32, i32* %flags, align 4
  %and = and i32 %12, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.else
  %13 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead7 = getelementptr inbounds %struct.table, %struct.table* %13, i32 0, i32 0
  %14 = load %struct.tableEntry*, %struct.tableEntry** %tableHead7, align 8
  store %struct.tableEntry* %14, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %15 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %tobool8 = icmp ne %struct.tableEntry* %15, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key9 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %16, i32 0, i32 0
  %17 = load i8*, i8** %key9, align 8
  %cmp10 = icmp eq i8* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.body
  %18 = load i8*, i8** %key.addr, align 8
  %call12 = call i8* @cli_strdup(i8* %18)
  %19 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key13 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %19, i32 0, i32 0
  store i8* %call12, i8** %key13, align 8
  %20 = load i32, i32* %value.addr, align 4
  %21 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %value14 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %21, i32 0, i32 1
  store i32 %20, i32* %value14, align 4
  %22 = load i32, i32* %value.addr, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %23 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %next = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %23, i32 0, i32 2
  %24 = load %struct.tableEntry*, %struct.tableEntry** %next, align 8
  store %struct.tableEntry* %24, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.table*, %struct.table** %table.addr, align 8
  %flags16 = getelementptr inbounds %struct.table, %struct.table* %25, i32 0, i32 2
  %26 = load i32, i32* %flags16, align 4
  %and17 = and i32 %26, -2
  store i32 %and17, i32* %flags16, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.else
  %call19 = call i8* @cli_malloc(i64 24)
  %27 = bitcast i8* %call19 to %struct.tableEntry*
  %28 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast20 = getelementptr inbounds %struct.table, %struct.table* %28, i32 0, i32 1
  %29 = load %struct.tableEntry*, %struct.tableEntry** %tableLast20, align 8
  %next21 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %29, i32 0, i32 2
  store %struct.tableEntry* %27, %struct.tableEntry** %next21, align 8
  %30 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast22 = getelementptr inbounds %struct.table, %struct.table* %30, i32 0, i32 1
  store %struct.tableEntry* %27, %struct.tableEntry** %tableLast22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.18, %if.then.3
  %31 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast24 = getelementptr inbounds %struct.table, %struct.table* %31, i32 0, i32 1
  %32 = load %struct.tableEntry*, %struct.tableEntry** %tableLast24, align 8
  %cmp25 = icmp eq %struct.tableEntry* %32, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %33 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast28 = getelementptr inbounds %struct.table, %struct.table* %33, i32 0, i32 1
  %34 = load %struct.tableEntry*, %struct.tableEntry** %tableLast28, align 8
  %next29 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %34, i32 0, i32 2
  store %struct.tableEntry* null, %struct.tableEntry** %next29, align 8
  %35 = load i8*, i8** %key.addr, align 8
  %call30 = call i8* @cli_strdup(i8* %35)
  %36 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast31 = getelementptr inbounds %struct.table, %struct.table* %36, i32 0, i32 1
  %37 = load %struct.tableEntry*, %struct.tableEntry** %tableLast31, align 8
  %key32 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %37, i32 0, i32 0
  store i8* %call30, i8** %key32, align 8
  %38 = load i32, i32* %value.addr, align 4
  %39 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableLast33 = getelementptr inbounds %struct.table, %struct.table* %39, i32 0, i32 1
  %40 = load %struct.tableEntry*, %struct.tableEntry** %tableLast33, align 8
  %value34 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %40, i32 0, i32 1
  store i32 %38, i32* %value34, align 4
  %41 = load i32, i32* %value.addr, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.11, %cond.end
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @tableFind(%struct.table* %table, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.table*, align 8
  %key.addr = alloca i8*, align 8
  %tableItem = alloca %struct.tableEntry*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 0
  %2 = load %struct.tableEntry*, %struct.tableEntry** %tableHead, align 8
  store %struct.tableEntry* %2, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %tobool = icmp ne %struct.tableEntry* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key1 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %4, i32 0, i32 0
  %5 = load i8*, i8** %key1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key3 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcasecmp(i8* %7, i8* %8) #5
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %value = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %9, i32 0, i32 1
  %10 = load i32, i32* %value, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %next = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %11, i32 0, i32 2
  %12 = load %struct.tableEntry*, %struct.tableEntry** %next, align 8
  store %struct.tableEntry* %12, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i8* @cli_malloc(i64) #1

declare i8* @cli_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @tableUpdate(%struct.table* %table, i8* %key, i32 %new_value) #0 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.table*, align 8
  %key.addr = alloca i8*, align 8
  %new_value.addr = alloca i32, align 4
  %tableItem = alloca %struct.tableEntry*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %new_value, i32* %new_value.addr, align 4
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 0
  %2 = load %struct.tableEntry*, %struct.tableEntry** %tableHead, align 8
  store %struct.tableEntry* %2, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %tobool = icmp ne %struct.tableEntry* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key1 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %4, i32 0, i32 0
  %5 = load i8*, i8** %key1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key3 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcasecmp(i8* %7, i8* %8) #5
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %new_value.addr, align 4
  %10 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %value = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %10, i32 0, i32 1
  store i32 %9, i32* %value, align 4
  %11 = load i32, i32* %new_value.addr, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %12 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %next = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %12, i32 0, i32 2
  %13 = load %struct.tableEntry*, %struct.tableEntry** %next, align 8
  store %struct.tableEntry* %13, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.table*, %struct.table** %table.addr, align 8
  %15 = load i8*, i8** %key.addr, align 8
  %16 = load i32, i32* %new_value.addr, align 4
  %call7 = call i32 @tableInsert(%struct.table* %14, i8* %15, i32 %16)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @tableRemove(%struct.table* %table, i8* %key) #0 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %key.addr = alloca i8*, align 8
  %tableItem = alloca %struct.tableEntry*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 0
  %2 = load %struct.tableEntry*, %struct.tableEntry** %tableHead, align 8
  store %struct.tableEntry* %2, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %tobool = icmp ne %struct.tableEntry* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key1 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %4, i32 0, i32 0
  %5 = load i8*, i8** %key1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key3 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcasecmp(i8* %7, i8* %8) #5
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key6 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %9, i32 0, i32 0
  %10 = load i8*, i8** %key6, align 8
  call void @free(i8* %10) #4
  %11 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key7 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %11, i32 0, i32 0
  store i8* null, i8** %key7, align 8
  %12 = load %struct.table*, %struct.table** %table.addr, align 8
  %flags = getelementptr inbounds %struct.table, %struct.table* %12, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %or = or i32 %13, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %14 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %next = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %14, i32 0, i32 2
  %15 = load %struct.tableEntry*, %struct.tableEntry** %next, align 8
  store %struct.tableEntry* %15, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @tableIterate(%struct.table* %table, void (i8*, i32, i8*)* %callback, i8* %arg) #0 {
entry:
  %table.addr = alloca %struct.table*, align 8
  %callback.addr = alloca void (i8*, i32, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %tableItem = alloca %struct.tableEntry*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  store void (i8*, i32, i8*)* %callback, void (i8*, i32, i8*)** %callback.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  %cmp = icmp eq %struct.table* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.table*, %struct.table** %table.addr, align 8
  %tableHead = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 0
  %2 = load %struct.tableEntry*, %struct.tableEntry** %tableHead, align 8
  store %struct.tableEntry* %2, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %tobool = icmp ne %struct.tableEntry* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %4, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %for.body
  %6 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %callback.addr, align 8
  %7 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %key3 = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %7, i32 0, i32 0
  %8 = load i8*, i8** %key3, align 8
  %9 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %value = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %9, i32 0, i32 1
  %10 = load i32, i32* %value, align 4
  %11 = load i8*, i8** %arg.addr, align 8
  call void %6(i8* %8, i32 %10, i8* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %12 = load %struct.tableEntry*, %struct.tableEntry** %tableItem, align 8
  %next = getelementptr inbounds %struct.tableEntry, %struct.tableEntry* %12, i32 0, i32 2
  %13 = load %struct.tableEntry*, %struct.tableEntry** %next, align 8
  store %struct.tableEntry* %13, %struct.tableEntry** %tableItem, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
