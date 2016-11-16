; ModuleID = './libgimpbase/gimpbasetypes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GimpFlagsDesc = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_enum_set_value_descriptions = private unnamed_addr constant [33 x i8] c"gimp_enum_set_value_descriptions\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"g_type_is_a (enum_type, G_TYPE_ENUM)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"descriptions != NULL\00", align 1
@__func__.gimp_enum_get_value_descriptions = private unnamed_addr constant [33 x i8] c"gimp_enum_get_value_descriptions\00", align 1
@__func__.gimp_flags_set_value_descriptions = private unnamed_addr constant [34 x i8] c"gimp_flags_set_value_descriptions\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"g_type_is_a (flags_type, G_TYPE_FLAGS)\00", align 1
@__func__.gimp_flags_get_value_descriptions = private unnamed_addr constant [34 x i8] c"gimp_flags_get_value_descriptions\00", align 1
@gimp_translation_domain_quark.quark = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"gimp-translation-domain-quark\00", align 1
@gimp_translation_context_quark.quark = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"gimp-translation-context-quark\00", align 1
@gimp_value_descriptions_quark.quark = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"gimp-value-descriptions-quark\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_type_set_translation_domain(i64 %type, i8* %domain) #0 {
entry:
  %type.addr = alloca i64, align 8
  %domain.addr = alloca i8*, align 8
  store i64 %type, i64* %type.addr, align 8
  store i8* %domain, i8** %domain.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call i32 @gimp_translation_domain_quark() #3
  %1 = load i8*, i8** %domain.addr, align 8
  call void @g_type_set_qdata(i64 %0, i32 %call, i8* %1)
  ret void
}

declare void @g_type_set_qdata(i64, i32, i8*) #1

; Function Attrs: nounwind readnone uwtable
define internal i32 @gimp_translation_domain_quark() #2 {
entry:
  %0 = load i32, i32* @gimp_translation_domain_quark.quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store i32 %call, i32* @gimp_translation_domain_quark.quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @gimp_translation_domain_quark.quark, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @gimp_type_get_translation_domain(i64 %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call i32 @gimp_translation_domain_quark() #3
  %call1 = call i8* @g_type_get_qdata(i64 %0, i32 %call)
  ret i8* %call1
}

declare i8* @g_type_get_qdata(i64, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_type_set_translation_context(i64 %type, i8* %context) #0 {
entry:
  %type.addr = alloca i64, align 8
  %context.addr = alloca i8*, align 8
  store i64 %type, i64* %type.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call i32 @gimp_translation_context_quark() #3
  %1 = load i8*, i8** %context.addr, align 8
  call void @g_type_set_qdata(i64 %0, i32 %call, i8* %1)
  ret void
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @gimp_translation_context_quark() #2 {
entry:
  %0 = load i32, i32* @gimp_translation_context_quark.quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store i32 %call, i32* @gimp_translation_context_quark.quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @gimp_translation_context_quark.quark, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @gimp_type_get_translation_context(i64 %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call i32 @gimp_translation_context_quark() #3
  %call1 = call i8* @g_type_get_qdata(i64 %0, i32 %call)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define void @gimp_enum_set_value_descriptions(i64 %enum_type, %struct._GimpEnumDesc* %descriptions) #0 {
entry:
  %enum_type.addr = alloca i64, align 8
  %descriptions.addr = alloca %struct._GimpEnumDesc*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store %struct._GimpEnumDesc* %descriptions, %struct._GimpEnumDesc** %descriptions.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i32 @g_type_is_a(i64 %0, i64 48)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_enum_set_value_descriptions, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %descriptions.addr, align 8
  %cmp = icmp ne %struct._GimpEnumDesc* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_enum_set_value_descriptions, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %2 = load i64, i64* %enum_type.addr, align 8
  %call6 = call i32 @gimp_value_descriptions_quark() #3
  %3 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %descriptions.addr, align 8
  %4 = bitcast %struct._GimpEnumDesc* %3 to i8*
  call void @g_type_set_qdata(i64 %2, i32 %call6, i8* %4)
  br label %return

return:                                           ; preds = %do.end.5, %if.else.3, %if.else
  ret void
}

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone uwtable
define internal i32 @gimp_value_descriptions_quark() #2 {
entry:
  %0 = load i32, i32* @gimp_value_descriptions_quark.quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call, i32* @gimp_value_descriptions_quark.quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @gimp_value_descriptions_quark.quark, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct._GimpEnumDesc* @gimp_enum_get_value_descriptions(i64 %enum_type) #0 {
entry:
  %retval = alloca %struct._GimpEnumDesc*, align 8
  %enum_type.addr = alloca i64, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i32 @g_type_is_a(i64 %0, i64 48)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_enum_get_value_descriptions, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpEnumDesc* null, %struct._GimpEnumDesc** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i32 @gimp_value_descriptions_quark() #3
  %call2 = call i8* @g_type_get_qdata(i64 %1, i32 %call1)
  %2 = bitcast i8* %call2 to %struct._GimpEnumDesc*
  store %struct._GimpEnumDesc* %2, %struct._GimpEnumDesc** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %retval
  ret %struct._GimpEnumDesc* %3
}

; Function Attrs: nounwind uwtable
define void @gimp_flags_set_value_descriptions(i64 %flags_type, %struct._GimpFlagsDesc* %descriptions) #0 {
entry:
  %flags_type.addr = alloca i64, align 8
  %descriptions.addr = alloca %struct._GimpFlagsDesc*, align 8
  store i64 %flags_type, i64* %flags_type.addr, align 8
  store %struct._GimpFlagsDesc* %descriptions, %struct._GimpFlagsDesc** %descriptions.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %flags_type.addr, align 8
  %call = call i32 @g_type_is_a(i64 %0, i64 52)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_flags_set_value_descriptions, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %descriptions.addr, align 8
  %cmp = icmp ne %struct._GimpFlagsDesc* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_flags_set_value_descriptions, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %2 = load i64, i64* %flags_type.addr, align 8
  %call6 = call i32 @gimp_value_descriptions_quark() #3
  %3 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %descriptions.addr, align 8
  %4 = bitcast %struct._GimpFlagsDesc* %3 to i8*
  call void @g_type_set_qdata(i64 %2, i32 %call6, i8* %4)
  br label %return

return:                                           ; preds = %do.end.5, %if.else.3, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpFlagsDesc* @gimp_flags_get_value_descriptions(i64 %flags_type) #0 {
entry:
  %retval = alloca %struct._GimpFlagsDesc*, align 8
  %flags_type.addr = alloca i64, align 8
  store i64 %flags_type, i64* %flags_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %flags_type.addr, align 8
  %call = call i32 @g_type_is_a(i64 %0, i64 52)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_flags_get_value_descriptions, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpFlagsDesc* null, %struct._GimpFlagsDesc** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %flags_type.addr, align 8
  %call1 = call i32 @gimp_value_descriptions_quark() #3
  %call2 = call i8* @g_type_get_qdata(i64 %1, i32 %call1)
  %2 = bitcast i8* %call2 to %struct._GimpFlagsDesc*
  store %struct._GimpFlagsDesc* %2, %struct._GimpFlagsDesc** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %retval
  ret %struct._GimpFlagsDesc* %3
}

declare i32 @g_quark_from_static_string(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
