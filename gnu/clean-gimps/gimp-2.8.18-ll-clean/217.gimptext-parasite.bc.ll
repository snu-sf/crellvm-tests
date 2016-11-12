; ModuleID = './app/text/gimptext-parasite.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpConfig = type opaque
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"gimp-text-layer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_to_parasite = private unnamed_addr constant [22 x i8] c"gimp_text_to_parasite\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__func__.gimp_text_from_parasite = private unnamed_addr constant [24 x i8] c"gimp_text_from_parasite\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"parasite != NULL\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"strcmp (gimp_parasite_name (parasite), gimp_text_parasite_name ()) == 0\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"plug_in_gdyntext/data\00", align 1
@__func__.gimp_text_from_gdyntext_parasite = private unnamed_addr constant [33 x i8] c"gimp_text_from_gdyntext_parasite\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"strcmp (gimp_parasite_name (parasite), gimp_text_gdyntext_parasite_name ()) == 0\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"GDT10{\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"}{\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"line-spacing\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"color\00", align 1

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_text_parasite_name() #0 {
entry:
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_text_to_parasite(%struct._GimpText* %text) #1 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %1 = bitcast %struct._GimpText* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_to_parasite, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %14 = bitcast %struct._GimpText* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_config_interface_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpConfig*
  %call13 = call i8* @gimp_config_serialize_to_string(%struct._GimpConfig* %15, i8* null)
  store i8* %call13, i8** %str, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %16 = load i8*, i8** %str, align 8
  %cmp15 = icmp ne i8* %16, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_to_parasite, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %call20 = call i8* @gimp_text_parasite_name() #6
  %17 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %17) #7
  %add = add i64 %call21, 1
  %conv = trunc i64 %add to i32
  %18 = load i8*, i8** %str, align 8
  %call22 = call %struct._GimpParasite* @gimp_parasite_new(i8* %call20, i32 1, i32 %conv, i8* %18)
  store %struct._GimpParasite* %call22, %struct._GimpParasite** %parasite, align 8
  %19 = load i8*, i8** %str, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  store %struct._GimpParasite* %20, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.9
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %21
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #4

declare i8* @gimp_config_serialize_to_string(%struct._GimpConfig*, i8*) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @g_free(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GimpText* @gimp_text_from_parasite(%struct._GimpParasite* %parasite, %struct._GError** %error) #1 {
entry:
  %retval = alloca %struct._GimpText*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %text = alloca %struct._GimpText*, align 8
  %str = alloca i8*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp ne %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i8* @gimp_parasite_name(%struct._GimpParasite* %1)
  %call2 = call i8* @gimp_text_parasite_name() #6
  %call3 = call i32 @strcmp(i8* %call, i8* %call2) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.1
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp10 = icmp eq %struct._GError** %2, null
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp11 = icmp eq %struct._GError* %4, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %lor.lhs.false, %do.body.9
  br label %if.end.14

if.else.13:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call16 = call i8* @gimp_parasite_data(%struct._GimpParasite* %5)
  store i8* %call16, i8** %str, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.15
  %6 = load i8*, i8** %str, align 8
  %cmp18 = icmp ne i8* %6, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %call23 = call i64 @gimp_text_get_type() #6
  %call24 = call i8* (i64, i8*, ...) @g_object_new(i64 %call23, i8* null)
  %7 = bitcast i8* %call24 to %struct._GimpText*
  store %struct._GimpText* %7, %struct._GimpText** %text, align 8
  %8 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %9 = bitcast %struct._GimpText* %8 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_config_interface_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call25)
  %10 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpConfig*
  %11 = load i8*, i8** %str, align 8
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call27 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %12)
  %conv = trunc i64 %call27 to i32
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_config_deserialize_string(%struct._GimpConfig* %10, i8* %11, i32 %conv, i8* null, %struct._GError** %13)
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  store %struct._GimpText* %14, %struct._GimpText** %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.13, %if.else.6, %if.else
  %15 = load %struct._GimpText*, %struct._GimpText** %retval
  ret %struct._GimpText* %15
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @gimp_parasite_name(%struct._GimpParasite*) #4

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #4

declare i8* @g_object_new(i64, i8*, ...) #4

declare i32 @gimp_config_deserialize_string(%struct._GimpConfig*, i8*, i32, i8*, %struct._GError**) #4

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #4

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_text_gdyntext_parasite_name() #0 {
entry:
  ret i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define %struct._GimpText* @gimp_text_from_gdyntext_parasite(%struct._GimpParasite* %parasite) #1 {
entry:
  %retval = alloca %struct._GimpText*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %retval1 = alloca %struct._GimpText*, align 8
  %justify = alloca i32, align 4
  %str = alloca i8*, align 8
  %text = alloca i8*, align 8
  %params = alloca i8**, align 8
  %antialias = alloca i32, align 4
  %spacing = alloca double, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %color = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct._GimpText* null, %struct._GimpText** %retval1, align 8
  store i8* null, i8** %text, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp ne %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_from_gdyntext_parasite, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i8* @gimp_parasite_name(%struct._GimpParasite* %1)
  %call3 = call i8* @gimp_text_gdyntext_parasite_name() #6
  %call4 = call i32 @strcmp(i8* %call, i8* %call3) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.2
  br label %if.end.8

if.else.7:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_from_gdyntext_parasite, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %2 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call10 = call i8* @gimp_parasite_data(%struct._GimpParasite* %2)
  store i8* %call10, i8** %str, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.9
  %3 = load i8*, i8** %str, align 8
  %cmp12 = icmp ne i8* %3, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_from_gdyntext_parasite, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %4 = load i8*, i8** %str, align 8
  %call17 = call i32 @g_str_has_prefix(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %do.end.16
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.19:                                        ; preds = %do.end.16
  %5 = load i8*, i8** %str, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 6
  %call20 = call noalias i8** @g_strsplit(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 -1)
  store i8** %call20, i8*** %params, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %6 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %6, 8
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %params, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %tobool22 = icmp ne i8* %9, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.body
  br label %cleanup

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8**, i8*** %params, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx25, align 8
  %call26 = call noalias i8* @g_strcompress(i8* %12)
  store i8* %call26, i8** %text, align 8
  %13 = load i8*, i8** %text, align 8
  %call27 = call i32 @g_utf8_validate(i8* %13, i64 -1, i8** null)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %for.end
  %14 = load i8*, i8** %text, align 8
  %call30 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %14, i64 -1, i8* null)
  store i8* %call30, i8** %tmp, align 8
  %15 = load i8*, i8** %text, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** %tmp, align 8
  store i8* %16, i8** %text, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.end
  %17 = load i8**, i8*** %params, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 @atoi(i8* %18) #7
  %tobool34 = icmp ne i32 %call33, 0
  %cond = select i1 %tobool34, i32 1, i32 0
  store i32 %cond, i32* %antialias, align 4
  %19 = load i8**, i8*** %params, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx35, align 8
  %call36 = call i32 @atoi(i8* %20) #7
  switch i32 %call36, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.37
    i32 2, label %sw.bb.38
  ]

sw.default:                                       ; preds = %if.end.31
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.31, %sw.default
  store i32 0, i32* %justify, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.31
  store i32 2, i32* %justify, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.31
  store i32 1, i32* %justify, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.38, %sw.bb.37, %sw.bb
  %21 = load i8**, i8*** %params, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %21, i64 4
  %22 = load i8*, i8** %arrayidx39, align 8
  %call40 = call double @g_strtod(i8* %22, i8** null)
  store double %call40, double* %spacing, align 8
  %23 = load i8**, i8*** %params, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %23, i64 5
  %24 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i64 @strtol(i8* %24, i8** null, i32 16) #8
  store i64 %call42, i64* %color, align 8
  %25 = load i64, i64* %color, align 8
  %shr = ashr i64 %25, 16
  %conv = trunc i64 %shr to i8
  %26 = load i64, i64* %color, align 8
  %shr43 = ashr i64 %26, 8
  %conv44 = trunc i64 %shr43 to i8
  %27 = load i64, i64* %color, align 8
  %conv45 = trunc i64 %27 to i8
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %conv, i8 zeroext %conv44, i8 zeroext %conv45, i8 zeroext -1)
  %call46 = call i64 @gimp_text_get_type() #6
  %28 = load i8*, i8** %text, align 8
  %29 = load i32, i32* %antialias, align 4
  %30 = load i32, i32* %justify, align 4
  %31 = load double, double* %spacing, align 8
  %call47 = call i8* (i64, i8*, ...) @g_object_new(i64 %call46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), double %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._GimpRGB* %rgb, i8* null)
  %32 = bitcast i8* %call47 to %struct._GimpText*
  store %struct._GimpText* %32, %struct._GimpText** %retval1, align 8
  %33 = load %struct._GimpText*, %struct._GimpText** %retval1, align 8
  %34 = bitcast %struct._GimpText* %33 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_text_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call48)
  %35 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpText*
  %36 = load i8**, i8*** %params, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %36, i64 7
  %37 = load i8*, i8** %arrayidx50, align 8
  call void @gimp_text_set_font_from_xlfd(%struct._GimpText* %35, i8* %37)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.23
  %38 = load i8*, i8** %text, align 8
  call void @g_free(i8* %38)
  %39 = load i8**, i8*** %params, align 8
  call void @g_strfreev(i8** %39)
  %40 = load %struct._GimpText*, %struct._GimpText** %retval1, align 8
  store %struct._GimpText* %40, %struct._GimpText** %retval
  br label %return

return:                                           ; preds = %cleanup, %if.then.18, %if.else.14, %if.else.7, %if.else
  %41 = load %struct._GimpText*, %struct._GimpText** %retval
  ret %struct._GimpText* %41
}

declare i32 @g_str_has_prefix(i8*, i8*) #4

declare noalias i8** @g_strsplit(i8*, i8*, i32) #4

declare noalias i8* @g_strcompress(i8*) #4

declare i32 @g_utf8_validate(i8*, i64, i8**) #4

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare double @g_strtod(i8*, i8**) #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #4

declare void @gimp_text_set_font_from_xlfd(%struct._GimpText*, i8*) #4

declare void @g_strfreev(i8**) #4

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
