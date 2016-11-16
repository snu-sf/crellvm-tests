; ModuleID = './app/widgets/gimppixbuf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._GdkPixbufFormat = type opaque
%struct._GtkTargetList = type { %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkAtom = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_pixbuf_targets_add = private unnamed_addr constant [24 x i8] c"gimp_pixbuf_targets_add\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"target_list != NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"image/x-icon\00", align 1
@__func__.gimp_pixbuf_targets_remove = private unnamed_addr constant [27 x i8] c"gimp_pixbuf_targets_remove\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gif\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GSList* @gimp_pixbuf_get_formats() #0 {
entry:
  %call = call %struct._GSList* @gdk_pixbuf_get_formats()
  %call1 = call %struct._GSList* @g_slist_sort(%struct._GSList* %call, i32 (i8*, i8*)* bitcast (i32 (%struct._GdkPixbufFormat*, %struct._GdkPixbufFormat*)* @gimp_pixbuf_format_compare to i32 (i8*, i8*)*))
  ret %struct._GSList* %call1
}

declare %struct._GSList* @g_slist_sort(%struct._GSList*, i32 (i8*, i8*)*) #1

declare %struct._GSList* @gdk_pixbuf_get_formats() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_pixbuf_format_compare(%struct._GdkPixbufFormat* %a, %struct._GdkPixbufFormat* %b) #0 {
entry:
  %a.addr = alloca %struct._GdkPixbufFormat*, align 8
  %b.addr = alloca %struct._GdkPixbufFormat*, align 8
  %a_name = alloca i8*, align 8
  %b_name = alloca i8*, align 8
  %retval2 = alloca i32, align 4
  store %struct._GdkPixbufFormat* %a, %struct._GdkPixbufFormat** %a.addr, align 8
  store %struct._GdkPixbufFormat* %b, %struct._GdkPixbufFormat** %b.addr, align 8
  %0 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %a.addr, align 8
  %call = call i8* @gdk_pixbuf_format_get_name(%struct._GdkPixbufFormat* %0)
  store i8* %call, i8** %a_name, align 8
  %1 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %b.addr, align 8
  %call1 = call i8* @gdk_pixbuf_format_get_name(%struct._GdkPixbufFormat* %1)
  store i8* %call1, i8** %b_name, align 8
  store i32 0, i32* %retval2, align 4
  %2 = load i8*, i8** %a_name, align 8
  %call3 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #3
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval2, align 4
  br label %if.end.27

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %b_name, align 8
  %call4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #3
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %retval2, align 4
  br label %if.end.26

if.else.7:                                        ; preds = %if.else
  %4 = load i8*, i8** %a_name, align 8
  %call8 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #3
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.7
  store i32 1, i32* %retval2, align 4
  br label %if.end.25

if.else.11:                                       ; preds = %if.else.7
  %5 = load i8*, i8** %b_name, align 8
  %call12 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #3
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.11
  store i32 -1, i32* %retval2, align 4
  br label %if.end.24

if.else.15:                                       ; preds = %if.else.11
  %6 = load i8*, i8** %a_name, align 8
  %call16 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #3
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.15
  store i32 1, i32* %retval2, align 4
  br label %if.end.23

if.else.19:                                       ; preds = %if.else.15
  %7 = load i8*, i8** %b_name, align 8
  %call20 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #3
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else.19
  store i32 -1, i32* %retval2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.10
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.6
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %8 = load i8*, i8** %a_name, align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** %b_name, align 8
  call void @g_free(i8* %9)
  %10 = load i32, i32* %retval2, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @gimp_pixbuf_targets_add(%struct._GtkTargetList* %target_list, i32 %info, i32 %writable) #0 {
entry:
  %target_list.addr = alloca %struct._GtkTargetList*, align 8
  %info.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %formats = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %format = alloca %struct._GdkPixbufFormat*, align 8
  %mime_types = alloca i8**, align 8
  %type = alloca i8**, align 8
  store %struct._GtkTargetList* %target_list, %struct._GtkTargetList** %target_list.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %writable, i32* %writable.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list.addr, align 8
  %cmp = icmp ne %struct._GtkTargetList* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixbuf_targets_add, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GSList* @gimp_pixbuf_get_formats()
  store %struct._GSList* %call, %struct._GSList** %formats, align 8
  %1 = load %struct._GSList*, %struct._GSList** %formats, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GdkPixbufFormat*
  store %struct._GdkPixbufFormat* %5, %struct._GdkPixbufFormat** %format, align 8
  %6 = load i32, i32* %writable.addr, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call2 = call i32 @gdk_pixbuf_format_is_writable(%struct._GdkPixbufFormat* %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  br label %for.inc.17

if.end.5:                                         ; preds = %land.lhs.true, %for.body
  %8 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call6 = call i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat* %8)
  store i8** %call6, i8*** %mime_types, align 8
  %9 = load i8**, i8*** %mime_types, align 8
  store i8** %9, i8*** %type, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end.5
  %10 = load i8**, i8*** %type, align 8
  %11 = load i8*, i8** %10, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %12 = load i32, i32* %writable.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %for.body.9
  %13 = load i8**, i8*** %type, align 8
  %14 = load i8*, i8** %13, align 8
  %call12 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  br label %for.inc

if.end.15:                                        ; preds = %land.lhs.true.11, %for.body.9
  %15 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list.addr, align 8
  %16 = load i8**, i8*** %type, align 8
  %17 = load i8*, i8** %16, align 8
  %call16 = call %struct._GdkAtom* @gdk_atom_intern(i8* %17, i32 0)
  %18 = load i32, i32* %info.addr, align 4
  call void @gtk_target_list_add(%struct._GtkTargetList* %15, %struct._GdkAtom* %call16, i32 0, i32 %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then.14
  %19 = load i8**, i8*** %type, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %type, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %20 = load i8**, i8*** %mime_types, align 8
  call void @g_strfreev(i8** %20)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end, %if.then.4
  %21 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool18 = icmp ne %struct._GSList* %21, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.17
  %22 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 1
  %23 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %24 = load %struct._GSList*, %struct._GSList** %formats, align 8
  call void @g_slist_free(%struct._GSList* %24)
  br label %return

return:                                           ; preds = %for.end.19, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gdk_pixbuf_format_is_writable(%struct._GdkPixbufFormat*) #1

declare i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @gtk_target_list_add(%struct._GtkTargetList*, %struct._GdkAtom*, i32, i32) #1

declare %struct._GdkAtom* @gdk_atom_intern(i8*, i32) #1

declare void @g_strfreev(i8**) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixbuf_targets_remove(%struct._GtkTargetList* %target_list) #0 {
entry:
  %target_list.addr = alloca %struct._GtkTargetList*, align 8
  %formats = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %format = alloca %struct._GdkPixbufFormat*, align 8
  %mime_types = alloca i8**, align 8
  %type = alloca i8**, align 8
  store %struct._GtkTargetList* %target_list, %struct._GtkTargetList** %target_list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list.addr, align 8
  %cmp = icmp ne %struct._GtkTargetList* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pixbuf_targets_remove, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GSList* @gimp_pixbuf_get_formats()
  store %struct._GSList* %call, %struct._GSList** %formats, align 8
  %1 = load %struct._GSList*, %struct._GSList** %formats, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GdkPixbufFormat*
  store %struct._GdkPixbufFormat* %5, %struct._GdkPixbufFormat** %format, align 8
  %6 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call1 = call i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat* %6)
  store i8** %call1, i8*** %mime_types, align 8
  %7 = load i8**, i8*** %mime_types, align 8
  store i8** %7, i8*** %type, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i8**, i8*** %type, align 8
  %9 = load i8*, i8** %8, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list.addr, align 8
  %11 = load i8**, i8*** %type, align 8
  %12 = load i8*, i8** %11, align 8
  %call5 = call %struct._GdkAtom* @gdk_atom_intern(i8* %12, i32 0)
  call void @gtk_target_list_remove(%struct._GtkTargetList* %10, %struct._GdkAtom* %call5)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i8**, i8*** %type, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %type, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %14 = load i8**, i8*** %mime_types, align 8
  call void @g_strfreev(i8** %14)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool7 = icmp ne %struct._GSList* %15, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.6
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1
  %17 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %18 = load %struct._GSList*, %struct._GSList** %formats, align 8
  call void @g_slist_free(%struct._GSList* %18)
  br label %return

return:                                           ; preds = %for.end.8, %if.else
  ret void
}

declare void @gtk_target_list_remove(%struct._GtkTargetList*, %struct._GdkAtom*) #1

declare i8* @gdk_pixbuf_format_get_name(%struct._GdkPixbufFormat*) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
