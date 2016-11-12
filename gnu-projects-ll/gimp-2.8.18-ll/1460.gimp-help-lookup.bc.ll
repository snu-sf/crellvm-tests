; ModuleID = './plug-ins/help/gimp-help-lookup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct.GimpHelpProgressVTable = type { void (i8*, i32, i8*)*, void (i8*)*, void (double, i8*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GOptionContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpHelpDomain = type { i8*, i8*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpHelpProgress = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpHelpLocale = type { i8*, %struct._GHashTable*, i8*, %struct._GList* }

@.str = private unnamed_addr constant [15 x i8] c"GIMP2_HELP_URI\00", align 1
@help_base = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@help_root = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"HELP-ID\00", align 1
@entries = internal constant [7 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 118, i32 0, i32 3, i8* bitcast (void ()* @show_version to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8 98, i32 0, i32 1, i8* bitcast (i8** @help_base to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8 114, i32 0, i32 4, i8* bitcast (i8** @help_root to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8 108, i32 0, i32 1, i8* bitcast (i8** @help_locales to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, i32 0, i8* bitcast (i32* @be_verbose to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, i32 5, i8* bitcast (i8*** @help_ids to i8*), i8* null, i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"http://www.gimp.org/help\00", align 1
@help_locales = internal global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@help_ids = internal global i8** null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"gimp-main\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Show version information and exit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Specifies base URI\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Specifies root directory for index files\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Specifies help language\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@be_verbose = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"Be more verbose\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"gimp-help-lookup version %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"2.8.18\00", align 1
@progress_new.vtable = internal constant %struct.GimpHelpProgressVTable { void (i8*, i32, i8*)* @progress_start, void (i8*)* @progress_end, void (double, i8*)* @progress_set_value, void ()* null, void ()* null, void ()* null, void ()* null }, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %context = alloca %struct._GOptionContext*, align 8
  %uri = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** @help_base, align 8
  %call1 = call i8* @gimp_data_directory() #5
  %call2 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null)
  store i8* %call2, i8** @help_root, align 8
  %call3 = call %struct._GOptionContext* @g_option_context_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GOptionContext* %call3, %struct._GOptionContext** %context, align 8
  %0 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %0, %struct._GOptionEntry* getelementptr inbounds ([7 x %struct._GOptionEntry], [7 x %struct._GOptionEntry]* @entries, i32 0, i32 0), i8* null)
  %1 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %call4 = call i32 @g_option_context_parse(%struct._GOptionContext* %1, i32* %argc.addr, i8*** %argv.addr, %struct._GError** %error)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %2, i32 0, i32 2
  %3 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %3)
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %4)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @g_type_init()
  %5 = load i8*, i8** @help_base, align 8
  %tobool5 = icmp ne i8* %5, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %6 = load i8*, i8** @help_base, align 8
  %call7 = call noalias i8* @g_strdup(i8* %6)
  store i8* %call7, i8** %uri, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** @help_root, align 8
  %call8 = call noalias i8* @g_filename_to_uri(i8* %7, i8* null, %struct._GError** null)
  store i8* %call8, i8** %uri, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %8 = load i8*, i8** %uri, align 8
  call void @gimp_help_register_domain(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %8)
  %9 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** @help_locales, align 8
  %tobool10 = icmp ne i8* %10, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %11 = load i8*, i8** @help_locales, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), %cond.false ]
  %12 = load i8**, i8*** @help_ids, align 8
  %tobool11 = icmp ne i8** %12, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %13 = load i8**, i8*** @help_ids, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i8* [ %14, %cond.true.12 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %cond.false.13 ]
  %call16 = call i8* @lookup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %cond, i8* %cond15)
  store i8* %call16, i8** %uri, align 8
  %15 = load i8*, i8** %uri, align 8
  %tobool17 = icmp ne i8* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end.14
  %16 = load i8*, i8** %uri, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %16)
  %17 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %cond.end.14
  %18 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  call void @g_option_context_free(%struct._GOptionContext* %18)
  %19 = load i8*, i8** @help_root, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %uri, align 8
  %tobool20 = icmp ne i8* %20, null
  %cond21 = select i1 %tobool20, i32 0, i32 1
  store i32 %cond21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @g_getenv(i8*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #2

declare %struct._GOptionContext* @g_option_context_new(i8*) #1

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #1

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #1

declare void @g_print(i8*, ...) #1

declare void @g_error_free(%struct._GError*) #1

declare void @g_type_init() #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

declare void @gimp_help_register_domain(i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @lookup(i8* %help_domain, i8* %help_locales, i8* %help_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_locales.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %domain = alloca %struct._GimpHelpDomain*, align 8
  %progress = alloca %struct._GimpHelpProgress*, align 8
  %locales = alloca %struct._GList*, align 8
  %full_uri = alloca i8*, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_locales, i8** %help_locales.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %0 = load i8*, i8** %help_domain.addr, align 8
  %call = call %struct._GimpHelpDomain* @gimp_help_lookup_domain(i8* %0)
  store %struct._GimpHelpDomain* %call, %struct._GimpHelpDomain** %domain, align 8
  %1 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %tobool = icmp ne %struct._GimpHelpDomain* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._GimpHelpProgress* @progress_new()
  store %struct._GimpHelpProgress* %call1, %struct._GimpHelpProgress** %progress, align 8
  %2 = load i8*, i8** %help_locales.addr, align 8
  %call2 = call %struct._GList* @gimp_help_parse_locales(i8* %2)
  store %struct._GList* %call2, %struct._GList** %locales, align 8
  %3 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %4 = load %struct._GList*, %struct._GList** %locales, align 8
  %5 = load i8*, i8** %help_id.addr, align 8
  %6 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %call3 = call i8* @gimp_help_domain_map(%struct._GimpHelpDomain* %3, %struct._GList* %4, i8* %5, %struct._GimpHelpProgress* %6, %struct._GimpHelpLocale** null, i32* null)
  store i8* %call3, i8** %full_uri, align 8
  %7 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  call void @gimp_help_progress_free(%struct._GimpHelpProgress* %7)
  %8 = load %struct._GList*, %struct._GList** %locales, align 8
  call void @g_list_free_full(%struct._GList* %8, void (i8*)* @g_free)
  %9 = load i8*, i8** %full_uri, align 8
  store i8* %9, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare void @g_option_context_free(%struct._GOptionContext*) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @show_version() #3 {
entry:
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct._GimpHelpDomain* @gimp_help_lookup_domain(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpHelpProgress* @progress_new() #0 {
entry:
  %call = call %struct._GimpHelpProgress* @gimp_help_progress_new(%struct.GimpHelpProgressVTable* @progress_new.vtable, i8* null)
  ret %struct._GimpHelpProgress* %call
}

declare %struct._GList* @gimp_help_parse_locales(i8*) #1

declare i8* @gimp_help_domain_map(%struct._GimpHelpDomain*, %struct._GList*, i8*, %struct._GimpHelpProgress*, %struct._GimpHelpLocale**, i32*) #1

declare void @gimp_help_progress_free(%struct._GimpHelpProgress*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @progress_start(i8* %message, i32 %cancelable, i8* %user_data) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* @be_verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %message.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @progress_end(i8* %user_data) #0 {
entry:
  %user_data.addr = alloca i8*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* @be_verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @progress_set_value(double %percentage, i8* %user_data) #0 {
entry:
  %percentage.addr = alloca double, align 8
  %user_data.addr = alloca i8*, align 8
  store double %percentage, double* %percentage.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* @be_verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpHelpProgress* @gimp_help_progress_new(%struct.GimpHelpProgressVTable*, i8*) #1

declare void @g_printerr(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
