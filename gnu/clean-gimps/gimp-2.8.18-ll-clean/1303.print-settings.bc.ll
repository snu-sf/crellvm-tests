; ModuleID = './plug-ins/print/print-settings.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PrintData = type { i32, i32, i32, double, double, i32, double, double, i32, i32, i32, %struct._GtkPrintOperation* }
%struct._GtkPrintOperation = type { %struct._GObject, %struct._GtkPrintOperationPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkPrintOperationPrivate = type opaque
%struct._GKeyFile = type opaque
%struct._GtkPrintSettings = type opaque
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"image-setup\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x-resolution\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"y-resolution\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x-offset\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"y-offset\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"center-mode\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"use-full-page\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"crop-marks\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"print-settings\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"n-copies\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"major-version\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"minor-version\00", align 1

; Function Attrs: nounwind uwtable
define i32 @print_settings_load(%struct.PrintData* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.PrintData*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  %0 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %image_id = getelementptr inbounds %struct.PrintData, %struct.PrintData* %0, i32 0, i32 0
  %1 = load i32, i32* %image_id, align 4
  %call = call %struct._GKeyFile* @print_settings_key_file_from_parasite(i32 %1)
  store %struct._GKeyFile* %call, %struct._GKeyFile** %key_file, align 8
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %tobool = icmp ne %struct._GKeyFile* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct._GKeyFile* @print_settings_key_file_from_resource_file()
  store %struct._GKeyFile* %call1, %struct._GKeyFile** %key_file, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %tobool2 = icmp ne %struct._GKeyFile* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %5 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call4 = call i32 @print_settings_load_from_key_file(%struct.PrintData* %4, %struct._GKeyFile* %5)
  %6 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %6)
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._GKeyFile* @print_settings_key_file_from_parasite(i32 %image_ID) #0 {
entry:
  %retval = alloca %struct._GKeyFile*, align 8
  %image_ID.addr = alloca i32, align 4
  %key_file = alloca %struct._GKeyFile*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GKeyFile* @print_utils_key_file_load_from_parasite(i32 %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GKeyFile* %call, %struct._GKeyFile** %key_file, align 8
  %1 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %tobool = icmp ne %struct._GKeyFile* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call1 = call i32 @print_settings_check_version(%struct._GKeyFile* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %3)
  store %struct._GKeyFile* null, %struct._GKeyFile** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  store %struct._GKeyFile* %4, %struct._GKeyFile** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._GKeyFile*, %struct._GKeyFile** %retval
  ret %struct._GKeyFile* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._GKeyFile* @print_settings_key_file_from_resource_file() #0 {
entry:
  %retval = alloca %struct._GKeyFile*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  %call = call %struct._GKeyFile* @print_utils_key_file_load_from_rcfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GKeyFile* %call, %struct._GKeyFile** %key_file, align 8
  %0 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %tobool = icmp ne %struct._GKeyFile* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call1 = call i32 @print_settings_check_version(%struct._GKeyFile* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %2)
  store %struct._GKeyFile* null, %struct._GKeyFile** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  store %struct._GKeyFile* %3, %struct._GKeyFile** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._GKeyFile*, %struct._GKeyFile** %retval
  ret %struct._GKeyFile* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @print_settings_load_from_key_file(%struct.PrintData* %data, %struct._GKeyFile* %key_file) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.PrintData*, align 8
  %key_file.addr = alloca %struct._GKeyFile*, align 8
  %operation = alloca %struct._GtkPrintOperation*, align 8
  %settings = alloca %struct._GtkPrintSettings*, align 8
  %keys = alloca i8**, align 8
  %n_keys = alloca i64, align 8
  %i = alloca i32, align 4
  %value = alloca i8*, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  store %struct._GKeyFile* %key_file, %struct._GKeyFile** %key_file.addr, align 8
  %0 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %operation1 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %0, i32 0, i32 11
  %1 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation1, align 8
  store %struct._GtkPrintOperation* %1, %struct._GtkPrintOperation** %operation, align 8
  %2 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %call = call %struct._GtkPrintSettings* @gtk_print_operation_get_print_settings(%struct._GtkPrintOperation* %2)
  store %struct._GtkPrintSettings* %call, %struct._GtkPrintSettings** %settings, align 8
  %3 = load %struct._GtkPrintSettings*, %struct._GtkPrintSettings** %settings, align 8
  %tobool = icmp ne %struct._GtkPrintSettings* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct._GtkPrintSettings* @gtk_print_settings_new()
  store %struct._GtkPrintSettings* %call2, %struct._GtkPrintSettings** %settings, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call3 = call noalias i8** @g_key_file_get_keys(%struct._GKeyFile* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i64* %n_keys, %struct._GError** null)
  store i8** %call3, i8*** %keys, align 8
  %5 = load i8**, i8*** %keys, align 8
  %tobool4 = icmp ne i8** %5, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %n_keys, align 8
  %cmp = icmp ult i64 %conv, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %keys, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %call8 = call noalias i8* @g_key_file_get_value(%struct._GKeyFile* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %11, %struct._GError** null)
  store i8* %call8, i8** %value, align 8
  %12 = load i8*, i8** %value, align 8
  %tobool9 = icmp ne i8* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %for.body
  %13 = load %struct._GtkPrintSettings*, %struct._GtkPrintSettings** %settings, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i8**, i8*** %keys, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %15, i64 %idxprom11
  %16 = load i8*, i8** %arrayidx12, align 8
  %17 = load i8*, i8** %value, align 8
  call void @gtk_print_settings_set(%struct._GtkPrintSettings* %13, i8* %16, i8* %17)
  %18 = load i8*, i8** %value, align 8
  call void @g_free(i8* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8**, i8*** %keys, align 8
  call void @g_strfreev(i8** %20)
  %21 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call14 = call i32 @g_key_file_has_key(%struct._GKeyFile* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._GError** null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %22 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call17 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._GError** null)
  %23 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %23, i32 0, i32 2
  store i32 %call17, i32* %unit, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %24 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call19 = call i32 @g_key_file_has_key(%struct._GKeyFile* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._GError** null)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.18
  %25 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call21 = call i32 @g_key_file_has_key(%struct._GKeyFile* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GError** null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %land.lhs.true
  %26 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call24 = call double @g_key_file_get_double(%struct._GKeyFile* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._GError** null)
  %27 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %27, i32 0, i32 3
  store double %call24, double* %xres, align 8
  %28 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call25 = call double @g_key_file_get_double(%struct._GKeyFile* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GError** null)
  %29 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %29, i32 0, i32 4
  store double %call25, double* %yres, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %land.lhs.true, %if.end.18
  %30 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call27 = call i32 @g_key_file_has_key(%struct._GKeyFile* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._GError** null)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.35

land.lhs.true.29:                                 ; preds = %if.end.26
  %31 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call30 = call i32 @g_key_file_has_key(%struct._GKeyFile* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._GError** null)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true.29
  %32 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call33 = call double @g_key_file_get_double(%struct._GKeyFile* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._GError** null)
  %33 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %33, i32 0, i32 6
  store double %call33, double* %offset_x, align 8
  %34 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call34 = call double @g_key_file_get_double(%struct._GKeyFile* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._GError** null)
  %35 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %35, i32 0, i32 7
  store double %call34, double* %offset_y, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.end.26
  %36 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call36 = call i32 @g_key_file_has_key(%struct._GKeyFile* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct._GError** null)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %37 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call39 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct._GError** null)
  %38 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %38, i32 0, i32 8
  store i32 %call39, i32* %center, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %39 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call41 = call i32 @g_key_file_has_key(%struct._GKeyFile* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct._GError** null)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %40 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call44 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct._GError** null)
  %41 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %41, i32 0, i32 9
  store i32 %call44, i32* %use_full_page, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  %42 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call46 = call i32 @g_key_file_has_key(%struct._GKeyFile* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._GError** null)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %43 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call49 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._GError** null)
  %44 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %draw_crop_marks = getelementptr inbounds %struct.PrintData, %struct.PrintData* %44, i32 0, i32 10
  store i32 %call49, i32* %draw_crop_marks, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %45 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %46 = load %struct._GtkPrintSettings*, %struct._GtkPrintSettings** %settings, align 8
  call void @gtk_print_operation_set_print_settings(%struct._GtkPrintOperation* %45, %struct._GtkPrintSettings* %46)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.5
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare void @g_key_file_free(%struct._GKeyFile*) #1

; Function Attrs: nounwind uwtable
define void @print_settings_save(%struct.PrintData* %data) #0 {
entry:
  %data.addr = alloca %struct.PrintData*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  %0 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %call = call %struct._GKeyFile* @print_settings_key_file_from_settings(%struct.PrintData* %0)
  store %struct._GKeyFile* %call, %struct._GKeyFile** %key_file, align 8
  %1 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %image_id = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 0
  %2 = load i32, i32* %image_id, align 4
  %call1 = call i32 @gimp_image_is_valid(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %4 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %4, i32 0, i32 2
  %5 = load i32, i32* %unit, align 4
  call void @g_key_file_set_integer(%struct._GKeyFile* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  %6 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %7 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %7, i32 0, i32 3
  %8 = load double, double* %xres, align 8
  call void @g_key_file_set_double(%struct._GKeyFile* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), double %8)
  %9 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %10 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %10, i32 0, i32 4
  %11 = load double, double* %yres, align 8
  call void @g_key_file_set_double(%struct._GKeyFile* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), double %11)
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %13 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %13, i32 0, i32 6
  %14 = load double, double* %offset_x, align 8
  call void @g_key_file_set_double(%struct._GKeyFile* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), double %14)
  %15 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %16 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %16, i32 0, i32 7
  %17 = load double, double* %offset_y, align 8
  call void @g_key_file_set_double(%struct._GKeyFile* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), double %17)
  %18 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %19 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %19, i32 0, i32 8
  %20 = load i32, i32* %center, align 4
  call void @g_key_file_set_integer(%struct._GKeyFile* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %20)
  %21 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %22 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %22, i32 0, i32 9
  %23 = load i32, i32* %use_full_page, align 4
  call void @g_key_file_set_boolean(%struct._GKeyFile* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %23)
  %24 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %25 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %draw_crop_marks = getelementptr inbounds %struct.PrintData, %struct.PrintData* %25, i32 0, i32 10
  %26 = load i32, i32* %draw_crop_marks, align 4
  call void @g_key_file_set_boolean(%struct._GKeyFile* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %26)
  %27 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %28 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %image_id2 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %28, i32 0, i32 0
  %29 = load i32, i32* %image_id2, align 4
  call void @print_utils_key_file_save_as_parasite(%struct._GKeyFile* %27, i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call3 = call i32 @g_key_file_remove_key(%struct._GKeyFile* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._GError** null)
  %31 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call4 = call i32 @g_key_file_remove_key(%struct._GKeyFile* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GError** null)
  %32 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call5 = call i32 @g_key_file_remove_key(%struct._GKeyFile* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._GError** null)
  %33 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call6 = call i32 @g_key_file_remove_key(%struct._GKeyFile* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._GError** null)
  %34 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call7 = call i32 @g_key_file_remove_key(%struct._GKeyFile* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct._GError** null)
  %35 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @print_utils_key_file_save_as_rcfile(%struct._GKeyFile* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  %36 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GKeyFile* @print_settings_key_file_from_settings(%struct.PrintData* %data) #0 {
entry:
  %data.addr = alloca %struct.PrintData*, align 8
  %operation = alloca %struct._GtkPrintOperation*, align 8
  %settings = alloca %struct._GtkPrintSettings*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  %0 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %operation1 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %0, i32 0, i32 11
  %1 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation1, align 8
  store %struct._GtkPrintOperation* %1, %struct._GtkPrintOperation** %operation, align 8
  %call = call %struct._GKeyFile* @g_key_file_new()
  store %struct._GKeyFile* %call, %struct._GKeyFile** %key_file, align 8
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_set_integer(%struct._GKeyFile* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 0)
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_set_integer(%struct._GKeyFile* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 4)
  %4 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %call2 = call %struct._GtkPrintSettings* @gtk_print_operation_get_print_settings(%struct._GtkPrintOperation* %4)
  store %struct._GtkPrintSettings* %call2, %struct._GtkPrintSettings** %settings, align 8
  %5 = load %struct._GtkPrintSettings*, %struct._GtkPrintSettings** %settings, align 8
  %tobool = icmp ne %struct._GtkPrintSettings* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkPrintSettings*, %struct._GtkPrintSettings** %settings, align 8
  %7 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %8 = bitcast %struct._GKeyFile* %7 to i8*
  call void @gtk_print_settings_foreach(%struct._GtkPrintSettings* %6, void (i8*, i8*, i8*)* @print_settings_add_to_key_file, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  ret %struct._GKeyFile* %9
}

declare i32 @gimp_image_is_valid(i32) #1

declare void @g_key_file_set_integer(%struct._GKeyFile*, i8*, i8*, i32) #1

declare void @g_key_file_set_double(%struct._GKeyFile*, i8*, i8*, double) #1

declare void @g_key_file_set_boolean(%struct._GKeyFile*, i8*, i8*, i32) #1

declare void @print_utils_key_file_save_as_parasite(%struct._GKeyFile*, i32, i8*) #1

declare i32 @g_key_file_remove_key(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare void @print_utils_key_file_save_as_rcfile(%struct._GKeyFile*, i8*) #1

declare %struct._GKeyFile* @g_key_file_new() #1

declare %struct._GtkPrintSettings* @gtk_print_operation_get_print_settings(%struct._GtkPrintOperation*) #1

declare void @gtk_print_settings_foreach(%struct._GtkPrintSettings*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @print_settings_add_to_key_file(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GKeyFile*
  store %struct._GKeyFile* %1, %struct._GKeyFile** %key_file, align 8
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  call void @g_key_file_set_value(%struct._GKeyFile* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %3, i8* %4)
  ret void
}

declare void @g_key_file_set_value(%struct._GKeyFile*, i8*, i8*, i8*) #1

declare %struct._GKeyFile* @print_utils_key_file_load_from_rcfile(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @print_settings_check_version(%struct._GKeyFile* %key_file) #0 {
entry:
  %retval = alloca i32, align 4
  %key_file.addr = alloca %struct._GKeyFile*, align 8
  %major_version = alloca i32, align 4
  %minor_version = alloca i32, align 4
  store %struct._GKeyFile* %key_file, %struct._GKeyFile** %key_file.addr, align 8
  %0 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call = call i32 @g_key_file_has_group(%struct._GKeyFile* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call1 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct._GError** null)
  store i32 %call1, i32* %major_version, align 4
  %2 = load i32, i32* %major_version, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call4 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._GError** null)
  store i32 %call4, i32* %minor_version, align 4
  %4 = load i32, i32* %minor_version, align 4
  %cmp5 = icmp ne i32 %4, 4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @g_key_file_has_group(%struct._GKeyFile*, i8*) #1

declare i32 @g_key_file_get_integer(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare %struct._GKeyFile* @print_utils_key_file_load_from_parasite(i32, i8*) #1

declare %struct._GtkPrintSettings* @gtk_print_settings_new() #1

declare noalias i8** @g_key_file_get_keys(%struct._GKeyFile*, i8*, i64*, %struct._GError**) #1

declare noalias i8* @g_key_file_get_value(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare void @gtk_print_settings_set(%struct._GtkPrintSettings*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_strfreev(i8**) #1

declare i32 @g_key_file_has_key(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare double @g_key_file_get_double(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare void @gtk_print_operation_set_print_settings(%struct._GtkPrintOperation*, %struct._GtkPrintSettings*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
