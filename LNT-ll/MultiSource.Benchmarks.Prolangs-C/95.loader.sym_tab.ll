; ModuleID = './MultiSource.Benchmarks.Prolangs-C/95.loader.sym_tab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

; Function Attrs: nounwind uwtable
define void @INIT_SYM_TAB(%struct.SYMBOL_TABLE_ENTRY** %TABLE) #0 {
entry:
  %TABLE.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %TABLE, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  %0 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(i8* %MODULE, i8* %LABEL, %struct.SYMBOL_TABLE_ENTRY** %TABLE) #0 {
entry:
  %retval = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %MODULE.addr = alloca i8*, align 8
  %LABEL.addr = alloca i8*, align 8
  %TABLE.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %MODULE, i8** %MODULE.addr, align 8
  store i8* %LABEL, i8** %LABEL.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %TABLE, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  %0 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  %1 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %0, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %1, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %cmp = icmp ne %struct.SYMBOL_TABLE_ENTRY* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %MODULE1 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE1, i32 0, i32 0
  %4 = load i8*, i8** %MODULE.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay, i8* %4) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LABEL2 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %5, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL2, i32 0, i32 0
  %6 = load i8*, i8** %LABEL.addr, align 8
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* %6) #3
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %7, %struct.SYMBOL_TABLE_ENTRY** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %8 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %NEXT = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %8, i32 0, i32 5
  %9 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %9, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %retval
  ret %struct.SYMBOL_TABLE_ENTRY* %10
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @INSERT_IN_SYM_TAB(i8* %MODULE, i8* %LABEL, i32 %LOCATION, i32 %TYPE, %struct.SYMBOL_TABLE_ENTRY** %TABLE) #0 {
entry:
  %retval = alloca i32, align 4
  %MODULE.addr = alloca i8*, align 8
  %LABEL.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32, align 4
  %TYPE.addr = alloca i32, align 4
  %TABLE.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %MODULE, i8** %MODULE.addr, align 8
  store i8* %LABEL, i8** %LABEL.addr, align 8
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store i32 %TYPE, i32* %TYPE.addr, align 4
  store %struct.SYMBOL_TABLE_ENTRY** %TABLE, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  %0 = load i8*, i8** %MODULE.addr, align 8
  %1 = load i8*, i8** %LABEL.addr, align 8
  %2 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  %call = call %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(i8* %0, i8* %1, %struct.SYMBOL_TABLE_ENTRY** %2)
  store %struct.SYMBOL_TABLE_ENTRY* %call, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %3 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %cmp = icmp eq %struct.SYMBOL_TABLE_ENTRY* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 40) #4
  %4 = bitcast i8* %call1 to %struct.SYMBOL_TABLE_ENTRY*
  store %struct.SYMBOL_TABLE_ENTRY* %4, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %5 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  %6 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %5, align 8
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %NEXT = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 5
  store %struct.SYMBOL_TABLE_ENTRY* %6, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %8 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %MODULE2 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE2, i32 0, i32 0
  %9 = load i8*, i8** %MODULE.addr, align 8
  %call3 = call i8* @strcpy(i8* %arraydecay, i8* %9) #4
  %10 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LABEL4 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL4, i32 0, i32 0
  %11 = load i8*, i8** %LABEL.addr, align 8
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* %11) #4
  %12 = load i32, i32* %LOCATION.addr, align 4
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION7 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i32 0, i32 2
  store i32 %12, i32* %LOCATION7, align 4
  %14 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %14, i32 0, i32 3
  store i32 0, i32* %LENGTH, align 4
  %15 = load i32, i32* %TYPE.addr, align 4
  %16 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %TYPE8 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %16, i32 0, i32 4
  store i32 %15, i32* %TYPE8, align 4
  %17 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %18 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %TABLE.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %17, %struct.SYMBOL_TABLE_ENTRY** %18, align 8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
