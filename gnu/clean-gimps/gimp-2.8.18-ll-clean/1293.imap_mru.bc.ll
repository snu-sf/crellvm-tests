; ModuleID = './plug-ins/imagemap/imap_mru.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MRU_t = type { %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"(mru-entry %s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.MRU_t* @mru_create() #0 {
entry:
  %mru = alloca %struct.MRU_t*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.MRU_t*
  store %struct.MRU_t* %0, %struct.MRU_t** %mru, align 8
  %1 = load %struct.MRU_t*, %struct.MRU_t** %mru, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %1, i32 0, i32 0
  store %struct._GList* null, %struct._GList** %list, align 8
  %2 = load %struct.MRU_t*, %struct.MRU_t** %mru, align 8
  %max_size = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %2, i32 0, i32 1
  store i32 4, i32* %max_size, align 4
  %3 = load %struct.MRU_t*, %struct.MRU_t** %mru, align 8
  ret %struct.MRU_t* %3
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @mru_destruct(%struct.MRU_t* %mru) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  call void @g_list_free_full(%struct._GList* %1, void (i8*)* @g_free)
  %2 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %3 = bitcast %struct.MRU_t* %2 to i8*
  call void @g_free(i8* %3)
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @mru_add(%struct.MRU_t* %mru, i8* %filename) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %call = call i32 @g_list_length(%struct._GList* %1)
  %2 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %max_size = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %2, i32 0, i32 1
  %3 = load i32, i32* %max_size, align 4
  %cmp = icmp eq i32 %call, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %5 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list1 = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %5, i32 0, i32 0
  %6 = load %struct._GList*, %struct._GList** %list1, align 8
  %call2 = call %struct._GList* @g_list_last(%struct._GList* %6)
  call void @mru_remove_link(%struct.MRU_t* %4, %struct._GList* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list3 = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %7, i32 0, i32 0
  %8 = load %struct._GList*, %struct._GList** %list3, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  %call4 = call noalias i8* @g_strdup(i8* %9)
  %call5 = call %struct._GList* @g_list_prepend(%struct._GList* %8, i8* %call4)
  %10 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list6 = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %10, i32 0, i32 0
  store %struct._GList* %call5, %struct._GList** %list6, align 8
  ret void
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal void @mru_remove_link(%struct.MRU_t* %mru, %struct._GList* %link) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %link.addr = alloca %struct._GList*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store %struct._GList* %link, %struct._GList** %link.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %link.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %link.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  call void @g_free(i8* %2)
  %3 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %3, i32 0, i32 0
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %link.addr, align 8
  %call = call %struct._GList* @g_list_remove_link(%struct._GList* %4, %struct._GList* %5)
  %6 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list1 = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %6, i32 0, i32 0
  store %struct._GList* %call, %struct._GList** %list1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GList* @g_list_last(%struct._GList*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @mru_remove(%struct.MRU_t* %mru, i8* %filename) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %1 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GList* @mru_find_link(%struct.MRU_t* %1, i8* %2)
  call void @mru_remove_link(%struct.MRU_t* %0, %struct._GList* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @mru_find_link(%struct.MRU_t* %mru, i8* %filename) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GList* @g_list_find_custom(%struct._GList* %1, i8* %2, i32 (i8*, i8*)* @strcmp)
  ret %struct._GList* %call
}

; Function Attrs: nounwind uwtable
define void @mru_set_first(%struct.MRU_t* %mru, i8* %filename) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %filename.addr = alloca i8*, align 8
  %link = alloca %struct._GList*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GList* @mru_find_link(%struct.MRU_t* %0, i8* %1)
  store %struct._GList* %call, %struct._GList** %link, align 8
  %2 = load %struct._GList*, %struct._GList** %link, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %3, i32 0, i32 0
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %link, align 8
  %call1 = call %struct._GList* @g_list_remove_link(%struct._GList* %4, %struct._GList* %5)
  %6 = load %struct._GList*, %struct._GList** %link, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %call1, i8* %7)
  %8 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list3 = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %8, i32 0, i32 0
  store %struct._GList* %call2, %struct._GList** %list3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %10 = load i8*, i8** %filename.addr, align 8
  call void @mru_add(%struct.MRU_t* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @mru_set_size(%struct.MRU_t* %mru, i32 %size) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %size.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %call = call i32 @g_list_length(%struct._GList* %1)
  %2 = load i32, i32* %size.addr, align 4
  %sub = sub i32 %call, %2
  store i32 %sub, i32* %diff, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %diff, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %5 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list1 = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %5, i32 0, i32 0
  %6 = load %struct._GList*, %struct._GList** %list1, align 8
  %call2 = call %struct._GList* @g_list_last(%struct._GList* %6)
  call void @mru_remove_link(%struct.MRU_t* %4, %struct._GList* %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %diff, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %diff, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %size.addr, align 4
  %9 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %max_size = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %9, i32 0, i32 1
  store i32 %8, i32* %max_size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @mru_write(%struct.MRU_t* %mru, %struct._IO_FILE* %out) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct.MRU_t*, %struct.MRU_t** %mru.addr, align 8
  %list = getelementptr inbounds %struct.MRU_t, %struct.MRU_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._GList* @g_list_find_custom(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
