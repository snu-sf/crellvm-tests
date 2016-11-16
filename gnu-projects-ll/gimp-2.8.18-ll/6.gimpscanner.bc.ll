; ModuleID = './libgimpconfig/gimpscanner.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GMappedFile = type opaque
%struct.GimpScannerData = type { i8*, %struct._GMappedFile*, %struct._GError** }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }

@.str = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_scanner_new_file = private unnamed_addr constant [22 x i8] c"gimp_scanner_new_file\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_scanner_new_string = private unnamed_addr constant [24 x i8] c"gimp_scanner_new_string\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"text != NULL || text_len == 0\00", align 1
@__func__.gimp_scanner_destroy = private unnamed_addr constant [21 x i8] c"gimp_scanner_destroy\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"scanner != NULL\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid UTF-8 string\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"expected 'yes' or 'no' for boolean token, got '%s'\00", align 1
@gimp_scanner_parse_color.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"gimp_scanner_parse_color\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"color-rgb\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"color-rgba\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"color-hsv\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"color-hsva\00", align 1
@gimp_scanner_parse_color.col = private unnamed_addr constant [4 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00], align 16
@.str.17 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"gimp_scanner_parse_matrix\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_\00", align 1
@__func__.gimp_scanner_message = private unnamed_addr constant [21 x i8] c"gimp_scanner_message\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"is_error\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Error while parsing '%s' in line %d: %s\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Error parsing internal buffer: %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GScanner* @gimp_scanner_new_file(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GScanner*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %file = alloca %struct._GMappedFile*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_scanner_new_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GScanner* null, %struct._GScanner** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp3 = icmp eq %struct._GError* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_scanner_new_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GScanner* null, %struct._GScanner** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call noalias %struct._GMappedFile* @g_mapped_file_new(i8* %4, i32 0, %struct._GError** %5)
  store %struct._GMappedFile* %call, %struct._GMappedFile** %file, align 8
  %6 = load %struct._GMappedFile*, %struct._GMappedFile** %file, align 8
  %tobool = icmp ne %struct._GMappedFile* %6, null
  br i1 %tobool, label %if.end.15, label %if.then.8

if.then.8:                                        ; preds = %do.end.7
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %7, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.then.8
  %call11 = call i32 @gimp_config_error_quark() #6
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %9, i32 0, i32 0
  store i32 %call11, i32* %domain, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 1
  %12 = load i32, i32* %code, align 4
  %cmp12 = icmp eq i32 %12, 4
  %cond = select i1 %cmp12, i32 1, i32 0
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  %code13 = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 1
  store i32 %cond, i32* %code13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.then.8
  store %struct._GScanner* null, %struct._GScanner** %retval
  br label %return

if.end.15:                                        ; preds = %do.end.7
  %15 = load i8*, i8** %filename.addr, align 8
  %call16 = call i8* @gimp_filename_to_utf8(i8* %15)
  %16 = load %struct._GMappedFile*, %struct._GMappedFile** %file, align 8
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call17 = call %struct._GScanner* @gimp_scanner_new(i8* %call16, %struct._GMappedFile* %16, %struct._GError** %17)
  store %struct._GScanner* %call17, %struct._GScanner** %scanner, align 8
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %19 = load %struct._GMappedFile*, %struct._GMappedFile** %file, align 8
  %call18 = call i8* @g_mapped_file_get_contents(%struct._GMappedFile* %19)
  %20 = load %struct._GMappedFile*, %struct._GMappedFile** %file, align 8
  %call19 = call i64 @g_mapped_file_get_length(%struct._GMappedFile* %20)
  %conv = trunc i64 %call19 to i32
  call void @g_scanner_input_text(%struct._GScanner* %18, i8* %call18, i32 %conv)
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  store %struct._GScanner* %21, %struct._GScanner** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end.14, %if.else.5, %if.else
  %22 = load %struct._GScanner*, %struct._GScanner** %retval
  ret %struct._GScanner* %22
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias %struct._GMappedFile* @g_mapped_file_new(i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #2

; Function Attrs: nounwind uwtable
define internal %struct._GScanner* @gimp_scanner_new(i8* %name, %struct._GMappedFile* %file, %struct._GError** %error) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %file.addr = alloca %struct._GMappedFile*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %data = alloca %struct.GimpScannerData*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GMappedFile* %file, %struct._GMappedFile** %file.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %call = call %struct._GScanner* @g_scanner_new(%struct._GScannerConfig* null)
  store %struct._GScanner* %call, %struct._GScanner** %scanner, align 8
  %call1 = call noalias i8* @g_slice_alloc0(i64 24)
  %0 = bitcast i8* %call1 to %struct.GimpScannerData*
  store %struct.GimpScannerData* %0, %struct.GimpScannerData** %data, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %name3 = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %2, i32 0, i32 0
  store i8* %call2, i8** %name3, align 8
  %3 = load %struct._GMappedFile*, %struct._GMappedFile** %file.addr, align 8
  %4 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %file4 = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %4, i32 0, i32 1
  store %struct._GMappedFile* %3, %struct._GMappedFile** %file4, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %6 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %error5 = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %6, i32 0, i32 2
  store %struct._GError** %5, %struct._GError*** %error5, align 8
  %7 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %8 = bitcast %struct.GimpScannerData* %7 to i8*
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %user_data = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 0
  store i8* %8, i8** %user_data, align 8
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %msg_handler = getelementptr inbounds %struct._GScanner, %struct._GScanner* %10, i32 0, i32 20
  store void (%struct._GScanner*, i8*, i32)* @gimp_scanner_message, void (%struct._GScanner*, i8*, i32)** %msg_handler, align 8
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %config = getelementptr inbounds %struct._GScanner, %struct._GScanner* %11, i32 0, i32 5
  %12 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config, align 8
  %cset_identifier_first = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0), i8** %cset_identifier_first, align 8
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %config6 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %13, i32 0, i32 5
  %14 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config6, align 8
  %cset_identifier_nth = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i32 0, i32 0), i8** %cset_identifier_nth, align 8
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %config7 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %15, i32 0, i32 5
  %16 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config7, align 8
  %scan_identifier_1char = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %16, i32 0, i32 4
  %17 = bitcast i24* %scan_identifier_1char to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, -33
  %bf.set = or i32 %bf.clear, 32
  store i32 %bf.set, i32* %17, align 8
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %config8 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 5
  %19 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config8, align 8
  %store_int64 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %19, i32 0, i32 4
  %20 = bitcast i24* %store_int64 to i32*
  %bf.load9 = load i32, i32* %20, align 8
  %bf.clear10 = and i32 %bf.load9, -2097153
  %bf.set11 = or i32 %bf.clear10, 2097152
  store i32 %bf.set11, i32* %20, align 8
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  ret %struct._GScanner* %21
}

declare i8* @gimp_filename_to_utf8(i8*) #1

declare void @g_scanner_input_text(%struct._GScanner*, i8*, i32) #1

declare i8* @g_mapped_file_get_contents(%struct._GMappedFile*) #1

declare i64 @g_mapped_file_get_length(%struct._GMappedFile*) #1

; Function Attrs: nounwind uwtable
define %struct._GScanner* @gimp_scanner_new_string(i8* %text, i32 %text_len, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GScanner*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %text_len, i32* %text_len.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %text.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %text_len.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_scanner_new_string, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GScanner* null, %struct._GScanner** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp3 = icmp eq %struct._GError** %2, null
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %do.body.2
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp5 = icmp eq %struct._GError* %4, null
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %do.body.2
  br label %if.end.8

if.else.7:                                        ; preds = %lor.lhs.false.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_scanner_new_string, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GScanner* null, %struct._GScanner** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %5 = load i32, i32* %text_len.addr, align 4
  %cmp10 = icmp slt i32 %5, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end.9
  %6 = load i8*, i8** %text.addr, align 8
  %call = call i64 @strlen(i8* %6) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %text_len.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %do.end.9
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call %struct._GScanner* @gimp_scanner_new(i8* null, %struct._GMappedFile* null, %struct._GError** %7)
  store %struct._GScanner* %call13, %struct._GScanner** %scanner, align 8
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %9 = load i8*, i8** %text.addr, align 8
  %10 = load i32, i32* %text_len.addr, align 4
  call void @g_scanner_input_text(%struct._GScanner* %8, i8* %9, i32 %10)
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  store %struct._GScanner* %11, %struct._GScanner** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.else.7, %if.else
  %12 = load %struct._GScanner*, %struct._GScanner** %retval
  ret %struct._GScanner* %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_scanner_destroy(%struct._GScanner* %scanner) #0 {
entry:
  %scanner.addr = alloca %struct._GScanner*, align 8
  %data = alloca %struct.GimpScannerData*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %cmp = icmp ne %struct._GScanner* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_scanner_destroy, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %user_data = getelementptr inbounds %struct._GScanner, %struct._GScanner* %1, i32 0, i32 0
  %2 = load i8*, i8** %user_data, align 8
  %3 = bitcast i8* %2 to %struct.GimpScannerData*
  store %struct.GimpScannerData* %3, %struct.GimpScannerData** %data, align 8
  %4 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %file = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %4, i32 0, i32 1
  %5 = load %struct._GMappedFile*, %struct._GMappedFile** %file, align 8
  %tobool = icmp ne %struct._GMappedFile* %5, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %6 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %file2 = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %6, i32 0, i32 1
  %7 = load %struct._GMappedFile*, %struct._GMappedFile** %file2, align 8
  call void @g_mapped_file_unref(%struct._GMappedFile* %7)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %8 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %name = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  call void @g_free(i8* %9)
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  %10 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %11 = bitcast %struct.GimpScannerData* %10 to i8*
  call void @g_slice_free1(i64 24, i8* %11)
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  call void @g_scanner_destroy(%struct._GScanner* %12)
  br label %return

return:                                           ; preds = %do.end.5, %if.else
  ret void
}

declare void @g_mapped_file_unref(%struct._GMappedFile*) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_scanner_destroy(%struct._GScanner*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_token(%struct._GScanner* %scanner, i32 %token) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %token.addr = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %token, i32* %token.addr, align 4
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %1 = load i32, i32* %token.addr, align 4
  %cmp = icmp ne i32 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_identifier(%struct._GScanner* %scanner, i8* %identifier) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %identifier.addr = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 266
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_identifier, align 8
  %4 = load i8*, i8** %identifier.addr, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* %4) #7
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_string(%struct._GScanner* %scanner, i8** %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca i8**, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 264
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_string, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value3 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_string4 = bitcast %union._GTokenValue* %value3 to i8**
  %6 = load i8*, i8** %v_string4, align 8
  %call5 = call i32 @g_utf8_validate(i8* %6, i64 -1, i8** null)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.then.2
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  call void (%struct._GScanner*, i8*, ...) @g_scanner_warn(%struct._GScanner* %7, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value10 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %8, i32 0, i32 7
  %v_string11 = bitcast %union._GTokenValue* %value10 to i8**
  %9 = load i8*, i8** %v_string11, align 8
  %call12 = call noalias i8* @g_strdup(i8* %9)
  %10 = load i8**, i8*** %dest.addr, align 8
  store i8* %call12, i8** %10, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %11 = load i8**, i8*** %dest.addr, align 8
  store i8* null, i8** %11, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.7, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare void @g_scanner_warn(%struct._GScanner*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_string_no_validate(%struct._GScanner* %scanner, i8** %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca i8**, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 264
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_string, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value3 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_string4 = bitcast %union._GTokenValue* %value3 to i8**
  %6 = load i8*, i8** %v_string4, align 8
  %call5 = call noalias i8* @g_strdup(i8* %6)
  %7 = load i8**, i8*** %dest.addr, align 8
  store i8* %call5, i8** %7, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %8 = load i8**, i8*** %dest.addr, align 8
  store i8* null, i8** %8, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_data(%struct._GScanner* %scanner, i32 %length, i8** %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %length.addr = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 264
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_string, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value3 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %4, i32 0, i32 7
  %v_string4 = bitcast %union._GTokenValue* %value3 to i8**
  %5 = load i8*, i8** %v_string4, align 8
  %6 = load i32, i32* %length.addr, align 4
  %call5 = call noalias i8* @g_memdup(i8* %5, i32 %6)
  %7 = load i8**, i8*** %dest.addr, align 8
  store i8* %call5, i8** %7, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %8 = load i8**, i8*** %dest.addr, align 8
  store i8* null, i8** %8, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_int(%struct._GScanner* %scanner, i32* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca i32*, align 8
  %negate = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32 0, i32* %negate, align 4
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp eq i32 %call, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %negate, align 4
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %2)
  %cmp3 = icmp ne i32 %call2, 261
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call6 = call i32 @g_scanner_get_next_token(%struct._GScanner* %3)
  %4 = load i32, i32* %negate, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_int64 = bitcast %union._GTokenValue* %value to i64*
  %6 = load i64, i64* %v_int64, align 8
  %sub = sub i64 0, %6
  %conv = trunc i64 %sub to i32
  %7 = load i32*, i32** %dest.addr, align 8
  store i32 %conv, i32* %7, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end.5
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value8 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %8, i32 0, i32 7
  %v_int649 = bitcast %union._GTokenValue* %value8 to i64*
  %9 = load i64, i64* %v_int649, align 8
  %conv10 = trunc i64 %9 to i32
  %10 = load i32*, i32** %dest.addr, align 8
  store i32 %conv10, i32* %10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.4
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_float(%struct._GScanner* %scanner, double* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca double*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store double* %dest, double** %dest.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 263
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_float = bitcast %union._GTokenValue* %value to double*
  %3 = load double, double* %v_float, align 8
  %4 = load double*, double** %dest.addr, align 8
  store double %3, double* %4, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_boolean(%struct._GScanner* %scanner, i32* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca i32*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 266
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_identifier, align 8
  %call2 = call i32 @g_ascii_strcasecmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value3 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %4, i32 0, i32 7
  %v_identifier4 = bitcast %union._GTokenValue* %value3 to i8**
  %5 = load i8*, i8** %v_identifier4, align 8
  %call5 = call i32 @g_ascii_strcasecmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load i32*, i32** %dest.addr, align 8
  store i32 1, i32* %6, align 4
  br label %if.end.23

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value8 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %7, i32 0, i32 7
  %v_identifier9 = bitcast %union._GTokenValue* %value8 to i8**
  %8 = load i8*, i8** %v_identifier9, align 8
  %call10 = call i32 @g_ascii_strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.17

lor.lhs.false.12:                                 ; preds = %if.else
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value13 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 7
  %v_identifier14 = bitcast %union._GTokenValue* %value13 to i8**
  %10 = load i8*, i8** %v_identifier14, align 8
  %call15 = call i32 @g_ascii_strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %lor.lhs.false.12, %if.else
  %11 = load i32*, i32** %dest.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.22

if.else.18:                                       ; preds = %lor.lhs.false.12
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call19 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0)) #5
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value20 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %13, i32 0, i32 7
  %v_identifier21 = bitcast %union._GTokenValue* %value20 to i8**
  %14 = load i8*, i8** %v_identifier21, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %12, i8* %call19, i8* %14)
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.else.18, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @g_scanner_error(%struct._GScanner*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_color(%struct._GScanner* %scanner, %struct._GimpRGB* %dest) #0 {
entry:
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca %struct._GimpRGB*, align 8
  %scope_id = alloca i32, align 4
  %old_scope_id = alloca i32, align 4
  %token = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %col = alloca [4 x double], align 16
  %n_channels = alloca i32, align 4
  %is_hsv = alloca i32, align 4
  %i = alloca i32, align 4
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpRGB* %dest, %struct._GimpRGB** %dest.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @gimp_scanner_parse_color.color to i8*), i64 32, i32 8, i1 false)
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  store i32 %call, i32* %scope_id, align 4
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %2 = load i32, i32* %scope_id, align 4
  %call1 = call i32 @g_scanner_set_scope(%struct._GScanner* %1, i32 %2)
  store i32 %call1, i32* %old_scope_id, align 4
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %4 = load i32, i32* %scope_id, align 4
  %call2 = call i8* @g_scanner_scope_lookup_symbol(%struct._GScanner* %3, i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %6 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %5, i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %8 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %7, i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %10 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %9, i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %12 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %11, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* inttoptr (i64 4 to i8*))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.28, %if.end
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %13)
  %14 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call3, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call4 = call i32 @g_scanner_get_next_token(%struct._GScanner* %15)
  store i32 %call4, i32* %token, align 4
  %16 = load i32, i32* %token, align 4
  switch i32 %16, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.5
    i32 41, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.28

sw.bb.5:                                          ; preds = %while.body
  %17 = bitcast [4 x double]* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([4 x double]* @gimp_scanner_parse_color.col to i8*), i64 32, i32 16, i1 false)
  store i32 4, i32* %n_channels, align 4
  store i32 0, i32* %is_hsv, align 4
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %19 = load i8*, i8** %v_symbol, align 8
  %20 = ptrtoint i8* %19 to i64
  %conv = trunc i64 %20 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.9
  ]

sw.bb.6:                                          ; preds = %sw.bb.5
  store i32 3, i32* %n_channels, align 4
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %sw.bb.5, %sw.bb.6
  br label %sw.epilog

sw.bb.8:                                          ; preds = %sw.bb.5
  store i32 3, i32* %n_channels, align 4
  br label %sw.bb.9

sw.bb.9:                                          ; preds = %sw.bb.5, %sw.bb.8
  store i32 1, i32* %is_hsv, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.9, %sw.bb.7
  store i32 263, i32* %token, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %n_channels, align 4
  %cmp10 = icmp slt i32 %21, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 %idxprom
  %call12 = call i32 @gimp_scanner_parse_float(%struct._GScanner* %23, double* %arrayidx)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %for.body
  br label %finish

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %is_hsv, align 4
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.end
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 0
  %27 = load double, double* %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 1
  %28 = load double, double* %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 2
  %29 = load double, double* %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 3
  %30 = load double, double* %arrayidx21, align 8
  call void @gimp_hsva_set(%struct._GimpHSV* %hsv, double %27, double %28, double %29, double %30)
  call void @gimp_hsv_clamp(%struct._GimpHSV* %hsv)
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  br label %if.end.26

if.else:                                          ; preds = %for.end
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 0
  %31 = load double, double* %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 1
  %32 = load double, double* %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 2
  %33 = load double, double* %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %col, i32 0, i64 3
  %34 = load double, double* %arrayidx25, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %31, double %32, double %33, double %34)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.17
  store i32 41, i32* %token, align 4
  br label %sw.epilog.28

sw.bb.27:                                         ; preds = %while.body
  store i32 256, i32* %token, align 4
  br label %finish

sw.default:                                       ; preds = %while.body
  br label %sw.epilog.28

sw.epilog.28:                                     ; preds = %sw.default, %if.end.26, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %finish

finish:                                           ; preds = %while.end, %sw.bb.27, %if.then.14
  %35 = load i32, i32* %token, align 4
  %cmp29 = icmp ne i32 %35, 256
  br i1 %cmp29, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %finish
  %36 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call32 = call i32 @g_scanner_get_next_token(%struct._GScanner* %36)
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %38 = load i32, i32* %token, align 4
  %call33 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  call void @g_scanner_unexp_token(%struct._GScanner* %37, i32 %38, i8* null, i8* null, i8* null, i8* %call33, i32 1)
  br label %if.end.35

if.else.34:                                       ; preds = %finish
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %dest.addr, align 8
  %40 = bitcast %struct._GimpRGB* %39 to i8*
  %41 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.31
  %42 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %43 = load i32, i32* %old_scope_id, align 4
  %call36 = call i32 @g_scanner_set_scope(%struct._GScanner* %42, i32 %43)
  %44 = load i32, i32* %token, align 4
  %cmp37 = icmp eq i32 %44, 256
  %conv38 = zext i1 %cmp37 to i32
  ret i32 %conv38
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @g_quark_from_static_string(i8*) #1

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #1

declare i8* @g_scanner_scope_lookup_symbol(%struct._GScanner*, i32, i8*) #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare void @gimp_hsva_set(%struct._GimpHSV*, double, double, double, double) #1

declare void @gimp_hsv_clamp(%struct._GimpHSV*) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scanner_parse_matrix2(%struct._GScanner* %scanner, %struct._GimpMatrix2* %dest) #0 {
entry:
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca %struct._GimpMatrix2*, align 8
  %scope_id = alloca i32, align 4
  %old_scope_id = alloca i32, align 4
  %token = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix2, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpMatrix2* %dest, %struct._GimpMatrix2** %dest.addr, align 8
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0))
  store i32 %call, i32* %scope_id, align 4
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %1 = load i32, i32* %scope_id, align 4
  %call1 = call i32 @g_scanner_set_scope(%struct._GScanner* %0, i32 %1)
  store i32 %call1, i32* %old_scope_id, align 4
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %3 = load i32, i32* %scope_id, align 4
  %call2 = call i8* @g_scanner_scope_lookup_symbol(%struct._GScanner* %2, i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %5 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %4, i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %6)
  %7 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call3, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call4 = call i32 @g_scanner_get_next_token(%struct._GScanner* %8)
  store i32 %call4, i32* %token, align 4
  %9 = load i32, i32* %token, align 4
  switch i32 %9, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.5
    i32 41, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  store i32 263, i32* %token, align 4
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %matrix, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %call7 = call i32 @gimp_scanner_parse_float(%struct._GScanner* %10, double* %arrayidx6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.5
  br label %finish

if.end.10:                                        ; preds = %sw.bb.5
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %coeff11 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %matrix, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx12, i32 0, i64 1
  %call14 = call i32 @gimp_scanner_parse_float(%struct._GScanner* %11, double* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.10
  br label %finish

if.end.17:                                        ; preds = %if.end.10
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %coeff18 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %matrix, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff18, i32 0, i64 1
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx19, i32 0, i64 0
  %call21 = call i32 @gimp_scanner_parse_float(%struct._GScanner* %12, double* %arrayidx20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.17
  br label %finish

if.end.24:                                        ; preds = %if.end.17
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %coeff25 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %matrix, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff25, i32 0, i64 1
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx26, i32 0, i64 1
  %call28 = call i32 @gimp_scanner_parse_float(%struct._GScanner* %13, double* %arrayidx27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.24
  br label %finish

if.end.31:                                        ; preds = %if.end.24
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  store i32 256, i32* %token, align 4
  br label %finish

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.31, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %finish

finish:                                           ; preds = %while.end, %sw.bb.32, %if.then.30, %if.then.23, %if.then.16, %if.then.9
  %14 = load i32, i32* %token, align 4
  %cmp33 = icmp ne i32 %14, 256
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %finish
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call35 = call i32 @g_scanner_get_next_token(%struct._GScanner* %15)
  %16 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %17 = load i32, i32* %token, align 4
  %call36 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  call void @g_scanner_unexp_token(%struct._GScanner* %16, i32 %17, i8* null, i8* null, i8* null, i8* %call36, i32 1)
  br label %if.end.37

if.else:                                          ; preds = %finish
  %18 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %dest.addr, align 8
  %19 = bitcast %struct._GimpMatrix2* %18 to i8*
  %20 = bitcast %struct._GimpMatrix2* %matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %22 = load i32, i32* %old_scope_id, align 4
  %call38 = call i32 @g_scanner_set_scope(%struct._GScanner* %21, i32 %22)
  %23 = load i32, i32* %token, align 4
  %cmp39 = icmp eq i32 %23, 256
  %conv = zext i1 %cmp39 to i32
  ret i32 %conv
}

declare %struct._GScanner* @g_scanner_new(%struct._GScannerConfig*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scanner_message(%struct._GScanner* %scanner, i8* %message, i32 %is_error) #0 {
entry:
  %scanner.addr = alloca %struct._GScanner*, align 8
  %message.addr = alloca i8*, align 8
  %is_error.addr = alloca i32, align 4
  %data = alloca %struct.GimpScannerData*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %is_error, i32* %is_error.addr, align 4
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %user_data = getelementptr inbounds %struct._GScanner, %struct._GScanner* %0, i32 0, i32 0
  %1 = load i8*, i8** %user_data, align 8
  %2 = bitcast i8* %1 to %struct.GimpScannerData*
  store %struct.GimpScannerData* %2, %struct.GimpScannerData** %data, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* %is_error.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_scanner_message, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.8

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %name = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %do.end
  %6 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %error = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %6, i32 0, i32 2
  %7 = load %struct._GError**, %struct._GError*** %error, align 8
  %call = call i32 @gimp_config_error_quark() #6
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0)) #5
  %8 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %name4 = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %8, i32 0, i32 0
  %9 = load i8*, i8** %name4, align 8
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %line = getelementptr inbounds %struct._GScanner, %struct._GScanner* %10, i32 0, i32 8
  %11 = load i32, i32* %line, align 4
  %12 = load i8*, i8** %message.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call, i32 3, i8* %call3, i8* %9, i32 %11, i8* %12)
  br label %if.end.8

if.else.5:                                        ; preds = %do.end
  %13 = load %struct.GimpScannerData*, %struct.GimpScannerData** %data, align 8
  %error6 = getelementptr inbounds %struct.GimpScannerData, %struct.GimpScannerData* %13, i32 0, i32 2
  %14 = load %struct._GError**, %struct._GError*** %error6, align 8
  %call7 = call i32 @gimp_config_error_quark() #6
  %15 = load i8*, i8** %message.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %14, i32 %call7, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i8* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.else.5, %if.then.2
  ret void
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
