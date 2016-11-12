; ModuleID = './plug-ins/imagemap/imap_taglist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TagList_t = type { %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.Tag_t = type { i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"\22%s\22=\22%s\22\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.TagList_t* @taglist_create() #0 {
entry:
  %tlist = alloca %struct.TagList_t*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 8)
  %0 = bitcast i8* %call to %struct.TagList_t*
  store %struct.TagList_t* %0, %struct.TagList_t** %tlist, align 8
  %1 = load %struct.TagList_t*, %struct.TagList_t** %tlist, align 8
  %list = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %1, i32 0, i32 0
  store %struct._GList* null, %struct._GList** %list, align 8
  %2 = load %struct.TagList_t*, %struct.TagList_t** %tlist, align 8
  ret %struct.TagList_t* %2
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.TagList_t* @taglist_clone(%struct.TagList_t* %src) #0 {
entry:
  %src.addr = alloca %struct.TagList_t*, align 8
  store %struct.TagList_t* %src, %struct.TagList_t** %src.addr, align 8
  %0 = load %struct.TagList_t*, %struct.TagList_t** %src.addr, align 8
  %call = call %struct.TagList_t* @taglist_create()
  %call1 = call %struct.TagList_t* @taglist_copy(%struct.TagList_t* %0, %struct.TagList_t* %call)
  ret %struct.TagList_t* %call1
}

; Function Attrs: nounwind uwtable
define %struct.TagList_t* @taglist_copy(%struct.TagList_t* %src, %struct.TagList_t* %des) #0 {
entry:
  %src.addr = alloca %struct.TagList_t*, align 8
  %des.addr = alloca %struct.TagList_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.TagList_t* %src, %struct.TagList_t** %src.addr, align 8
  store %struct.TagList_t* %des, %struct.TagList_t** %des.addr, align 8
  %0 = load %struct.TagList_t*, %struct.TagList_t** %des.addr, align 8
  call void @taglist_remove_all(%struct.TagList_t* %0)
  %1 = load %struct.TagList_t*, %struct.TagList_t** %src.addr, align 8
  %list = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %1, i32 0, i32 0
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %2, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.TagList_t*, %struct.TagList_t** %des.addr, align 8
  %list1 = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %4, i32 0, i32 0
  %5 = load %struct._GList*, %struct._GList** %list1, align 8
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct.Tag_t*
  %call = call %struct.Tag_t* @tag_clone(%struct.Tag_t* %8)
  %9 = bitcast %struct.Tag_t* %call to i8*
  %call2 = call %struct._GList* @g_list_append(%struct._GList* %5, i8* %9)
  %10 = load %struct.TagList_t*, %struct.TagList_t** %des.addr, align 8
  %list3 = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %10, i32 0, i32 0
  store %struct._GList* %call2, %struct._GList** %list3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.TagList_t*, %struct.TagList_t** %des.addr, align 8
  ret %struct.TagList_t* %13
}

; Function Attrs: nounwind uwtable
define internal void @taglist_remove_all(%struct.TagList_t* %tlist) #0 {
entry:
  %tlist.addr = alloca %struct.TagList_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.TagList_t* %tlist, %struct.TagList_t** %tlist.addr, align 8
  %0 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Tag_t*
  call void @tag_destruct(%struct.Tag_t* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %7, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list1 = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %8, i32 0, i32 0
  %9 = load %struct._GList*, %struct._GList** %list1, align 8
  call void @g_list_free(%struct._GList* %9)
  %10 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list2 = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %10, i32 0, i32 0
  store %struct._GList* null, %struct._GList** %list2, align 8
  ret void
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Tag_t* @tag_clone(%struct.Tag_t* %src) #0 {
entry:
  %src.addr = alloca %struct.Tag_t*, align 8
  store %struct.Tag_t* %src, %struct.Tag_t** %src.addr, align 8
  %0 = load %struct.Tag_t*, %struct.Tag_t** %src.addr, align 8
  %name = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.Tag_t*, %struct.Tag_t** %src.addr, align 8
  %value = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  %call = call %struct.Tag_t* @tag_create(i8* %1, i8* %3)
  ret %struct.Tag_t* %call
}

; Function Attrs: nounwind uwtable
define void @taglist_destruct(%struct.TagList_t* %tlist) #0 {
entry:
  %tlist.addr = alloca %struct.TagList_t*, align 8
  store %struct.TagList_t* %tlist, %struct.TagList_t** %tlist.addr, align 8
  %0 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  call void @taglist_remove_all(%struct.TagList_t* %0)
  %1 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %2 = bitcast %struct.TagList_t* %1 to i8*
  call void @g_free(i8* %2)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @taglist_set(%struct.TagList_t* %tlist, i8* %name, i8* %value) #0 {
entry:
  %tlist.addr = alloca %struct.TagList_t*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %p = alloca %struct._GList*, align 8
  %tag = alloca %struct.Tag_t*, align 8
  store %struct.TagList_t* %tlist, %struct.TagList_t** %tlist.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Tag_t*
  store %struct.Tag_t* %5, %struct.Tag_t** %tag, align 8
  %6 = load %struct.Tag_t*, %struct.Tag_t** %tag, align 8
  %name1 = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %6, i32 0, i32 0
  %7 = load i8*, i8** %name1, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call = call i32 @g_ascii_strcasecmp(i8* %7, i8* %8)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct.Tag_t*, %struct.Tag_t** %tag, align 8
  %value3 = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %value.addr, align 8
  %call4 = call i8* @g_strreplace(i8** %value3, i8* %10)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %12, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list5 = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %13, i32 0, i32 0
  %14 = load %struct._GList*, %struct._GList** %list5, align 8
  %15 = load i8*, i8** %name.addr, align 8
  %16 = load i8*, i8** %value.addr, align 8
  %call6 = call %struct.Tag_t* @tag_create(i8* %15, i8* %16)
  %17 = bitcast %struct.Tag_t* %call6 to i8*
  %call7 = call %struct._GList* @g_list_append(%struct._GList* %14, i8* %17)
  %18 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list8 = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %18, i32 0, i32 0
  store %struct._GList* %call7, %struct._GList** %list8, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i8* @g_strreplace(i8**, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Tag_t* @tag_create(i8* %name, i8* %value) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %tag = alloca %struct.Tag_t*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.Tag_t*
  store %struct.Tag_t* %0, %struct.Tag_t** %tag, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct.Tag_t*, %struct.Tag_t** %tag, align 8
  %name2 = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %2, i32 0, i32 0
  store i8* %call1, i8** %name2, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct.Tag_t*, %struct.Tag_t** %tag, align 8
  %value4 = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %4, i32 0, i32 1
  store i8* %call3, i8** %value4, align 8
  %5 = load %struct.Tag_t*, %struct.Tag_t** %tag, align 8
  ret %struct.Tag_t* %5
}

; Function Attrs: nounwind uwtable
define void @taglist_write(%struct.TagList_t* %tlist) #0 {
entry:
  %tlist.addr = alloca %struct.TagList_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.TagList_t* %tlist, %struct.TagList_t** %tlist.addr, align 8
  %0 = load %struct.TagList_t*, %struct.TagList_t** %tlist.addr, align 8
  %list = getelementptr inbounds %struct.TagList_t, %struct.TagList_t* %0, i32 0, i32 0
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %1, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.Tag_t*
  call void @tag_write(%struct.Tag_t* %5)
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

; Function Attrs: nounwind uwtable
define internal void @tag_write(%struct.Tag_t* %tag) #0 {
entry:
  %tag.addr = alloca %struct.Tag_t*, align 8
  store %struct.Tag_t* %tag, %struct.Tag_t** %tag.addr, align 8
  %0 = load %struct.Tag_t*, %struct.Tag_t** %tag.addr, align 8
  %name = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.Tag_t*, %struct.Tag_t** %tag.addr, align 8
  %value = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %1, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tag_destruct(%struct.Tag_t* %tag) #0 {
entry:
  %tag.addr = alloca %struct.Tag_t*, align 8
  store %struct.Tag_t* %tag, %struct.Tag_t** %tag.addr, align 8
  %0 = load %struct.Tag_t*, %struct.Tag_t** %tag.addr, align 8
  %name = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct.Tag_t*, %struct.Tag_t** %tag.addr, align 8
  %value = getelementptr inbounds %struct.Tag_t, %struct.Tag_t* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  call void @g_free(i8* %3)
  %4 = load %struct.Tag_t*, %struct.Tag_t** %tag.addr, align 8
  %5 = bitcast %struct.Tag_t* %4 to i8*
  call void @g_free(i8* %5)
  ret void
}

declare void @g_list_free(%struct._GList*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
