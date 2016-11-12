; ModuleID = './app/plug-in/plug-in-menu-path.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MenuPathMapping = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.plug_in_menu_path_map = private unnamed_addr constant [22 x i8] c"plug_in_menu_path_map\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"menu_path != NULL\00", align 1
@menu_path_mappings = internal constant [19 x %struct._MenuPathMapping] [%struct._MenuPathMapping { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0) }, %struct._MenuPathMapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct._MenuPathMapping zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"<Toolbox>/Xtns/Languages\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"<Image>/Filters/Languages\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"<Toolbox>/Xtns/Extensions\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"<Image>/Filters/Extensions\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"<Toolbox>/Xtns/Buttons\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"<Image>/File/Create/Buttons\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"<Toolbox>/Xtns/Logos\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"<Image>/File/Create/Logos\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"<Toolbox>/Xtns/Misc\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"<Image>/File/Create/Misc\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"<Toolbox>/Xtns/Patterns\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"<Image>/File/Create/Patterns\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"<Toolbox>/Xtns/Web Page Themes\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"<Image>/File/Create/Web Page Themes\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"<Toolbox>/Xtns\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Buttons\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"<Image>/File/Create\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Logos\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Patterns\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Web Page Themes\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"<Toolbox>/Help\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"<Image>/Help\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"<Toolbox>/File/Acquire\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"<Image>/File/Create/Acquire\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"<Toolbox>\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"<Image>/File/Acquire\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"<Image>/File/New\00", align 1

; Function Attrs: nounwind uwtable
define i8* @plug_in_menu_path_map(i8* %menu_path, i8* %menu_label) #0 {
entry:
  %retval = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %mapping = alloca %struct._MenuPathMapping*, align 8
  %stripped_label = alloca i8*, align 8
  %orig_len = alloca i32, align 4
  %mapped_path = alloca i8*, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store i8* null, i8** %stripped_label, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %menu_path.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.plug_in_menu_path_map, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %menu_label.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %menu_label.addr, align 8
  %call = call noalias i8* @gimp_strip_uline(i8* %2)
  store i8* %call, i8** %stripped_label, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  store %struct._MenuPathMapping* getelementptr inbounds ([19 x %struct._MenuPathMapping], [19 x %struct._MenuPathMapping]* @menu_path_mappings, i32 0, i32 0), %struct._MenuPathMapping** %mapping, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %3 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %orig_path = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %3, i32 0, i32 0
  %4 = load i8*, i8** %orig_path, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %menu_path.addr, align 8
  %6 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %orig_path4 = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %6, i32 0, i32 0
  %7 = load i8*, i8** %orig_path4, align 8
  %call5 = call i32 @g_str_has_prefix(i8* %5, i8* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.33

if.then.7:                                        ; preds = %for.body
  %8 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %orig_path8 = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %8, i32 0, i32 0
  %9 = load i8*, i8** %orig_path8, align 8
  %call9 = call i64 @strlen(i8* %9) #3
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %orig_len, align 4
  %10 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %label = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %10, i32 0, i32 1
  %11 = load i8*, i8** %label, align 8
  %tobool10 = icmp ne i8* %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.7
  %12 = load i8*, i8** %stripped_label, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i8*, i8** %menu_path.addr, align 8
  %call12 = call i64 @strlen(i8* %13) #3
  %14 = load i32, i32* %orig_len, align 4
  %conv13 = sext i32 %14 to i64
  %cmp14 = icmp ne i64 %call12, %conv13
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %15 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %label17 = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %15, i32 0, i32 1
  %16 = load i8*, i8** %label17, align 8
  %17 = load i8*, i8** %stripped_label, align 8
  %call18 = call i32 @strcmp(i8* %16, i8* %17) #3
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %land.lhs.true
  br label %for.inc

if.end.21:                                        ; preds = %lor.lhs.false.16, %if.then.7
  %18 = load i8*, i8** %menu_path.addr, align 8
  %call22 = call i64 @strlen(i8* %18) #3
  %19 = load i32, i32* %orig_len, align 4
  %conv23 = sext i32 %19 to i64
  %cmp24 = icmp ugt i64 %call22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.21
  %20 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %mapped_path27 = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %20, i32 0, i32 2
  %21 = load i8*, i8** %mapped_path27, align 8
  %22 = load i8*, i8** %menu_path.addr, align 8
  %23 = load i32, i32* %orig_len, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %call28 = call noalias i8* (i8*, ...) @g_strconcat(i8* %21, i8* %add.ptr, i8* null)
  store i8* %call28, i8** %mapped_path, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %if.end.21
  %24 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %mapped_path30 = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %24, i32 0, i32 2
  %25 = load i8*, i8** %mapped_path30, align 8
  %call31 = call noalias i8* @g_strdup(i8* %25)
  store i8* %call31, i8** %mapped_path, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  %26 = load i8*, i8** %stripped_label, align 8
  call void @g_free(i8* %26)
  %27 = load i8*, i8** %mapped_path, align 8
  store i8* %27, i8** %retval
  br label %return

if.end.33:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %if.then.20
  %28 = load %struct._MenuPathMapping*, %struct._MenuPathMapping** %mapping, align 8
  %incdec.ptr = getelementptr inbounds %struct._MenuPathMapping, %struct._MenuPathMapping* %28, i32 1
  store %struct._MenuPathMapping* %incdec.ptr, %struct._MenuPathMapping** %mapping, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %stripped_label, align 8
  call void @g_free(i8* %29)
  %30 = load i8*, i8** %menu_path.addr, align 8
  %call34 = call noalias i8* @g_strdup(i8* %30)
  store i8* %call34, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.32, %if.else
  %31 = load i8*, i8** %retval
  ret i8* %31
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @gimp_strip_uline(i8*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
