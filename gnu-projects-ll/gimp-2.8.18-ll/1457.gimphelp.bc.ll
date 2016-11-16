; ModuleID = './plug-ins/help/gimphelp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct._GimpHelpDomain = type { i8*, i8*, %struct._GHashTable* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [53 x i8] c"help: number of names doesn't match number of URIs.\0A\00", align 1
@domain_hash = internal global %struct._GHashTable* null, align 8
@__func__.gimp_help_register_domain = private unnamed_addr constant [26 x i8] c"gimp_help_register_domain\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"domain_name != NULL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"domain_uri != NULL\00", align 1
@__func__.gimp_help_lookup_domain = private unnamed_addr constant [24 x i8] c"gimp_help_lookup_domain\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"domain_name\00", align 1
@__func__.gimp_help_parse_locales = private unnamed_addr constant [24 x i8] c"gimp_help_parse_locales\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"help_locales != NULL\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"en\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_help_init(i32 %num_domain_names, i8** %domain_names, i32 %num_domain_uris, i8** %domain_uris) #0 {
entry:
  %retval = alloca i32, align 4
  %num_domain_names.addr = alloca i32, align 4
  %domain_names.addr = alloca i8**, align 8
  %num_domain_uris.addr = alloca i32, align 4
  %domain_uris.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %num_domain_names, i32* %num_domain_names.addr, align 4
  store i8** %domain_names, i8*** %domain_names.addr, align 8
  store i32 %num_domain_uris, i32* %num_domain_uris.addr, align 4
  store i8** %domain_uris, i8*** %domain_uris.addr, align 8
  %0 = load i32, i32* %num_domain_names.addr, align 4
  %1 = load i32, i32* %num_domain_uris.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_domain_names.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %domain_names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8**, i8*** %domain_uris.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8
  call void @gimp_help_register_domain(i8* %6, i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_help_register_domain(i8* %domain_name, i8* %domain_uri) #0 {
entry:
  %domain_name.addr = alloca i8*, align 8
  %domain_uri.addr = alloca i8*, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  store i8* %domain_uri, i8** %domain_uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %domain_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_help_register_domain, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %domain_uri.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_help_register_domain, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GHashTable*, %struct._GHashTable** @domain_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %2, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end.6
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._GimpHelpDomain*)* @gimp_help_domain_free to void (i8*)*))
  store %struct._GHashTable* %call, %struct._GHashTable** @domain_hash, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end.6
  %3 = load %struct._GHashTable*, %struct._GHashTable** @domain_hash, align 8
  %4 = load i8*, i8** %domain_name.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %4)
  %5 = load i8*, i8** %domain_name.addr, align 8
  %6 = load i8*, i8** %domain_uri.addr, align 8
  %call10 = call %struct._GimpHelpDomain* @gimp_help_domain_new(i8* %5, i8* %6)
  %7 = bitcast %struct._GimpHelpDomain* %call10 to i8*
  %call11 = call i32 @g_hash_table_insert(%struct._GHashTable* %3, i8* %call9, i8* %7)
  br label %return

return:                                           ; preds = %if.end.8, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_help_exit() #0 {
entry:
  %0 = load %struct._GHashTable*, %struct._GHashTable** @domain_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @domain_hash, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %1)
  store %struct._GHashTable* null, %struct._GHashTable** @domain_hash, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_help_domain_free(%struct._GimpHelpDomain*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GimpHelpDomain* @gimp_help_domain_new(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpHelpDomain* @gimp_help_lookup_domain(i8* %domain_name) #0 {
entry:
  %retval = alloca %struct._GimpHelpDomain*, align 8
  %domain_name.addr = alloca i8*, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %domain_name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_help_lookup_domain, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpHelpDomain* null, %struct._GimpHelpDomain** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GHashTable*, %struct._GHashTable** @domain_hash, align 8
  %tobool1 = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %2 = load %struct._GHashTable*, %struct._GHashTable** @domain_hash, align 8
  %3 = load i8*, i8** %domain_name.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %3)
  %4 = bitcast i8* %call to %struct._GimpHelpDomain*
  store %struct._GimpHelpDomain* %4, %struct._GimpHelpDomain** %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  store %struct._GimpHelpDomain* null, %struct._GimpHelpDomain** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.else
  %5 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %retval
  ret %struct._GimpHelpDomain* %5
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_help_parse_locales(i8* %help_locales) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %help_locales.addr = alloca i8*, align 8
  %locales = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %new = alloca i8*, align 8
  store i8* %help_locales, i8** %help_locales.addr, align 8
  store %struct._GList* null, %struct._GList** %locales, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %help_locales.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_help_parse_locales, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %help_locales.addr, align 8
  store i8* %1, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %call = call i8* @strchr(i8* %2, i32 58) #3
  store i8* %call, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = call noalias i8* @g_strndup(i8* %4, i64 %sub.ptr.sub)
  store i8* %call1, i8** %new, align 8
  %7 = load %struct._GList*, %struct._GList** %locales, align 8
  %8 = load i8*, i8** %new, align 8
  %call2 = call %struct._GList* @g_list_append(%struct._GList* %7, i8* %8)
  store %struct._GList* %call2, %struct._GList** %locales, align 8
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %add.ptr, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i8*, i8** %s, align 8
  %call3 = call i8* @strchr(i8* %10, i32 58) #3
  store i8* %call3, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %tobool4 = icmp ne i8 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %for.end
  %13 = load %struct._GList*, %struct._GList** %locales, align 8
  %14 = load i8*, i8** %s, align 8
  %call6 = call noalias i8* @g_strdup(i8* %14)
  %call7 = call %struct._GList* @g_list_append(%struct._GList* %13, i8* %call6)
  store %struct._GList* %call7, %struct._GList** %locales, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %for.end
  %15 = load %struct._GList*, %struct._GList** %locales, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.16, %if.end.8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %16, null
  br i1 %tobool10, label %for.body.11, label %for.end.17

for.body.11:                                      ; preds = %for.cond.9
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %call12 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #3
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.11
  br label %for.end.17

if.end.15:                                        ; preds = %for.body.11
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond.9

for.end.17:                                       ; preds = %if.then.14, %for.cond.9
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %21, null
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %for.end.17
  %22 = load %struct._GList*, %struct._GList** %locales, align 8
  %call20 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %call21 = call %struct._GList* @g_list_append(%struct._GList* %22, i8* %call20)
  store %struct._GList* %call21, %struct._GList** %locales, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %for.end.17
  %23 = load %struct._GList*, %struct._GList** %locales, align 8
  store %struct._GList* %23, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else
  %24 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %24
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare noalias i8* @g_strndup(i8*, i64) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
