; ModuleID = './plug-ins/ifs-compose/ifs-compose-storage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct.IfsComposeVals = type { i32, i32, i32, i32, double, double, double, double }
%struct.AffElement = type { %struct.AffElementVals, %struct.Aff2, %struct.Aff3, i8*, %struct.IPolygon*, %struct.IPolygon* }
%struct.AffElementVals = type { double, double, double, double, double, double, i32, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.Aff2 = type { double, double, double, double, double, double }
%struct.Aff3 = type { [3 x [4 x double]] }
%struct.IPolygon = type { %struct._GdkPoint*, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"IfsCompose Saved Data\00", align 1
@symbols = internal global [24 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 271 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 272 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 273 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 274 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 275 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 276 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 277 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 278 }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i32 279 }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i32 280 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 281 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 282 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 283 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 284 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 285 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 286 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 287 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 288 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 289 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 290 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 291 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 292 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 293 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 294 }], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"iterations %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"max_memory %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"subdivide %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"radius %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"aspect_ratio %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"center_x %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"center_y %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"element {\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"    x %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"    y %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    theta %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"    scale %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"    asym %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"    shear %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"    flip %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"    red_color { %s,%s,%s }\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"    green_color { %s,%s,%s }\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"    blue_color { %s,%s,%s }\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"    black_color { %s,%s,%s }\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"    target_color { %s,%s,%s }\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"    hue_scale %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"    value_scale %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"    simple_color %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"    prob %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"max_memory\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"subdivide\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"aspect_ratio\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"center_x\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"center_y\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"theta\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"asym\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"shear\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"red_color\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"green_color\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"blue_color\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"black_color\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"target_color\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"hue_scale\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"value_scale\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"simple_color\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"prob\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"using default values...\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ifsvals_parse_string(i8* %str, %struct.IfsComposeVals* %vals, %struct.AffElement*** %elements) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %vals.addr = alloca %struct.IfsComposeVals*, align 8
  %elements.addr = alloca %struct.AffElement***, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.IfsComposeVals* %vals, %struct.IfsComposeVals** %vals.addr, align 8
  store %struct.AffElement*** %elements, %struct.AffElement**** %elements.addr, align 8
  %call = call %struct._GScanner* @g_scanner_new(%struct._GScannerConfig* null)
  store %struct._GScanner* %call, %struct._GScanner** %scanner, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %config = getelementptr inbounds %struct._GScanner, %struct._GScanner* %0, i32 0, i32 5
  %1 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config, align 8
  %symbol_2_token = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %1, i32 0, i32 4
  %2 = bitcast i24* %symbol_2_token to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, -524289
  %bf.set = or i32 %bf.clear, 524288
  store i32 %bf.set, i32* %2, align 8
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %config1 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %3, i32 0, i32 5
  %4 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config1, align 8
  %scan_identifier_1char = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %4, i32 0, i32 4
  %5 = bitcast i24* %scan_identifier_1char to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, -33
  %bf.set4 = or i32 %bf.clear3, 32
  store i32 %bf.set4, i32* %5, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %input_name = getelementptr inbounds %struct._GScanner, %struct._GScanner* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8** %input_name, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp ult i64 %conv, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [24 x %struct.anon], [24 x %struct.anon]* @symbols, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [24 x %struct.anon], [24 x %struct.anon]* @symbols, i32 0, i64 %idxprom6
  %token = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx7, i32 0, i32 1
  %12 = load i32, i32* %token, align 4
  %conv8 = zext i32 %12 to i64
  %13 = inttoptr i64 %conv8 to i8*
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %8, i32 0, i8* %10, i8* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %call9 = call i64 @strlen(i8* %17) #4
  %conv10 = trunc i64 %call9 to i32
  call void @g_scanner_input_text(%struct._GScanner* %15, i8* %16, i32 %conv10)
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %19 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %20 = load %struct.AffElement***, %struct.AffElement**** %elements.addr, align 8
  %call11 = call i32 @ifsvals_parse(%struct._GScanner* %18, %struct.IfsComposeVals* %19, %struct.AffElement*** %20)
  store i32 %call11, i32* %result, align 4
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_destroy(%struct._GScanner* %21)
  %22 = load i32, i32* %result, align 4
  ret i32 %22
}

declare %struct._GScanner* @g_scanner_new(%struct._GScannerConfig*) #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare void @g_scanner_input_text(%struct._GScanner*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ifsvals_parse(%struct._GScanner* %scanner, %struct.IfsComposeVals* %vals, %struct.AffElement*** %elements) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %vals.addr = alloca %struct.IfsComposeVals*, align 8
  %elements.addr = alloca %struct.AffElement***, align 8
  %token = alloca i32, align 4
  %expected_token = alloca i32, align 4
  %el = alloca %struct.AffElement*, align 8
  %new_vals = alloca %struct.IfsComposeVals, align 8
  %color = alloca %struct._GimpRGB, align 8
  %el_list = alloca %struct._GList*, align 8
  %tmp_list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct.IfsComposeVals* %vals, %struct.IfsComposeVals** %vals.addr, align 8
  store %struct.AffElement*** %elements, %struct.AffElement**** %elements.addr, align 8
  store %struct._GList* null, %struct._GList** %el_list, align 8
  %0 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %1 = bitcast %struct.IfsComposeVals* %new_vals to i8*
  %2 = bitcast %struct.IfsComposeVals* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 48, i32 8, i1 false)
  %num_elements = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 0
  store i32 0, i32* %num_elements, align 4
  store i32 0, i32* %i, align 4
  store i32 256, i32* %expected_token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %expected_token, align 4
  %cmp = icmp eq i32 %3, 256
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_get_next_token(%struct._GScanner* %4)
  store i32 %call, i32* %token, align 4
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_eof(%struct._GScanner* %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %token, align 4
  switch i32 %6, label %sw.default [
    i32 271, label %sw.bb
    i32 272, label %sw.bb.6
    i32 273, label %sw.bb.16
    i32 274, label %sw.bb.26
    i32 275, label %sw.bb.28
    i32 276, label %sw.bb.30
    i32 277, label %sw.bb.32
    i32 278, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @g_scanner_get_next_token(%struct._GScanner* %7)
  store i32 %call2, i32* %token, align 4
  %8 = load i32, i32* %token, align 4
  %cmp3 = icmp eq i32 %8, 261
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %sw.bb
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 7
  %v_int = bitcast %union._GTokenValue* %value to i64*
  %10 = load i64, i64* %v_int, align 8
  %conv = trunc i64 %10 to i32
  %iterations = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 1
  store i32 %conv, i32* %iterations, align 4
  br label %if.end.5

if.else:                                          ; preds = %sw.bb
  store i32 261, i32* %expected_token, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call7 = call i32 @g_scanner_get_next_token(%struct._GScanner* %11)
  store i32 %call7, i32* %token, align 4
  %12 = load i32, i32* %token, align 4
  %cmp8 = icmp eq i32 %12, 261
  br i1 %cmp8, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %sw.bb.6
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value11 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %13, i32 0, i32 7
  %v_int12 = bitcast %union._GTokenValue* %value11 to i64*
  %14 = load i64, i64* %v_int12, align 8
  %conv13 = trunc i64 %14 to i32
  %max_memory = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 2
  store i32 %conv13, i32* %max_memory, align 4
  br label %if.end.15

if.else.14:                                       ; preds = %sw.bb.6
  store i32 261, i32* %expected_token, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.10
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call17 = call i32 @g_scanner_get_next_token(%struct._GScanner* %15)
  store i32 %call17, i32* %token, align 4
  %16 = load i32, i32* %token, align 4
  %cmp18 = icmp eq i32 %16, 261
  br i1 %cmp18, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %sw.bb.16
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value21 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %17, i32 0, i32 7
  %v_int22 = bitcast %union._GTokenValue* %value21 to i64*
  %18 = load i64, i64* %v_int22, align 8
  %conv23 = trunc i64 %18 to i32
  %subdivide = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 3
  store i32 %conv23, i32* %subdivide, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %sw.bb.16
  store i32 261, i32* %expected_token, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.20
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %radius = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 4
  %call27 = call i32 @parse_genuine_float(%struct._GScanner* %19, double* %radius)
  store i32 %call27, i32* %expected_token, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 5
  %call29 = call i32 @parse_genuine_float(%struct._GScanner* %20, double* %aspect_ratio)
  store i32 %call29, i32* %expected_token, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %center_x = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 6
  %call31 = call i32 @parse_genuine_float(%struct._GScanner* %21, double* %center_x)
  store i32 %call31, i32* %expected_token, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end
  %22 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %center_y = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 7
  %call33 = call i32 @parse_genuine_float(%struct._GScanner* %22, double* %center_y)
  store i32 %call33, i32* %expected_token, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %call35 = call %struct.AffElement* @aff_element_new(double 0.000000e+00, double 0.000000e+00, %struct._GimpRGB* %color, i32 %inc)
  store %struct.AffElement* %call35, %struct.AffElement** %el, align 8
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %25 = load %struct.AffElement*, %struct.AffElement** %el, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %25, i32 0, i32 0
  %call36 = call i32 @ifsvals_parse_element(%struct._GScanner* %24, %struct.AffElementVals* %v)
  store i32 %call36, i32* %expected_token, align 4
  %26 = load i32, i32* %expected_token, align 4
  %cmp37 = icmp eq i32 %26, 256
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %sw.bb.34
  %27 = load %struct._GList*, %struct._GList** %el_list, align 8
  %28 = load %struct.AffElement*, %struct.AffElement** %el, align 8
  %29 = bitcast %struct.AffElement* %28 to i8*
  %call40 = call %struct._GList* @g_list_prepend(%struct._GList* %27, i8* %29)
  store %struct._GList* %call40, %struct._GList** %el_list, align 8
  %num_elements41 = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 0
  %30 = load i32, i32* %num_elements41, align 4
  %inc42 = add nsw i32 %30, 1
  store i32 %inc42, i32* %num_elements41, align 4
  br label %if.end.44

if.else.43:                                       ; preds = %sw.bb.34
  %31 = load %struct.AffElement*, %struct.AffElement** %el, align 8
  call void @aff_element_free(%struct.AffElement* %31)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.39
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 265, i32* %expected_token, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.44, %sw.bb.32, %sw.bb.30, %sw.bb.28, %sw.bb.26, %if.end.25, %if.end.15, %if.end.5
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %32 = load i32, i32* %expected_token, align 4
  %cmp45 = icmp ne i32 %32, 256
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.end
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %34 = load i32, i32* %expected_token, align 4
  call void @g_scanner_unexp_token(%struct._GScanner* %33, i32 %34, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i32 1)
  %35 = load %struct._GList*, %struct._GList** %el_list, align 8
  call void @g_list_free_full(%struct._GList* %35, void (i8*)* @g_free)
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %while.end
  %36 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %37 = bitcast %struct.IfsComposeVals* %36 to i8*
  %38 = bitcast %struct.IfsComposeVals* %new_vals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 48, i32 8, i1 false)
  %39 = load %struct._GList*, %struct._GList** %el_list, align 8
  %call49 = call %struct._GList* @g_list_reverse(%struct._GList* %39)
  store %struct._GList* %call49, %struct._GList** %el_list, align 8
  %num_elements50 = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 0
  %40 = load i32, i32* %num_elements50, align 4
  %conv51 = sext i32 %40 to i64
  %call52 = call noalias i8* @g_malloc_n(i64 %conv51, i64 8)
  %41 = bitcast i8* %call52 to %struct.AffElement**
  %42 = load %struct.AffElement***, %struct.AffElement**** %elements.addr, align 8
  store %struct.AffElement** %41, %struct.AffElement*** %42, align 8
  %43 = load %struct._GList*, %struct._GList** %el_list, align 8
  store %struct._GList* %43, %struct._GList** %tmp_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %44 = load i32, i32* %i, align 4
  %num_elements53 = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %new_vals, i32 0, i32 0
  %45 = load i32, i32* %num_elements53, align 4
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct._GList*, %struct._GList** %tmp_list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = bitcast i8* %47 to %struct.AffElement*
  %49 = load i32, i32* %i, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.AffElement***, %struct.AffElement**** %elements.addr, align 8
  %51 = load %struct.AffElement**, %struct.AffElement*** %50, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %51, i64 %idxprom
  store %struct.AffElement* %48, %struct.AffElement** %arrayidx, align 8
  %52 = load %struct._GList*, %struct._GList** %tmp_list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 1
  %53 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %53, %struct._GList** %tmp_list, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._GList*, %struct._GList** %el_list, align 8
  call void @g_list_free(%struct._GList* %55)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.47
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare void @g_scanner_destroy(%struct._GScanner*) #1

; Function Attrs: nounwind uwtable
define i8* @ifsvals_stringify(%struct.IfsComposeVals* %vals, %struct.AffElement** %elements) #0 {
entry:
  %vals.addr = alloca %struct.IfsComposeVals*, align 8
  %elements.addr = alloca %struct.AffElement**, align 8
  %i = alloca i32, align 4
  %buf = alloca [39 x i8], align 16
  %cbuf = alloca [3 x [39 x i8]], align 16
  %result = alloca %struct._GString*, align 8
  store %struct.IfsComposeVals* %vals, %struct.IfsComposeVals** %vals.addr, align 8
  store %struct.AffElement** %elements, %struct.AffElement*** %elements.addr, align 8
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %result, align 8
  %0 = load %struct._GString*, %struct._GString** %result, align 8
  %1 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %iterations = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %1, i32 0, i32 1
  %2 = load i32, i32* %iterations, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  %3 = load %struct._GString*, %struct._GString** %result, align 8
  %4 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %max_memory = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %4, i32 0, i32 2
  %5 = load i32, i32* %max_memory, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  %6 = load %struct._GString*, %struct._GString** %result, align 8
  %7 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %subdivide = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %7, i32 0, i32 3
  %8 = load i32, i32* %subdivide, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %8)
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %9 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %radius = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %9, i32 0, i32 4
  %10 = load double, double* %radius, align 8
  %call1 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %10)
  %11 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay2 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %12 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %12, i32 0, i32 5
  %13 = load double, double* %aspect_ratio, align 8
  %call4 = call i8* @g_ascii_formatd(i8* %arraydecay3, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %13)
  %14 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay5 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %15 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %center_x = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %15, i32 0, i32 6
  %16 = load double, double* %center_x, align 8
  %call7 = call i8* @g_ascii_formatd(i8* %arraydecay6, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %16)
  %17 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay8 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %18 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %center_y = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %18, i32 0, i32 7
  %19 = load double, double* %center_y, align 8
  %call10 = call i8* @g_ascii_formatd(i8* %arraydecay9, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %19)
  %20 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay11 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %vals.addr, align 8
  %num_elements = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elements, align 4
  %cmp = icmp slt i32 %21, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GString*, %struct._GString** %result, align 8
  %call12 = call %struct._GString* @g_string_append(%struct._GString* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %arraydecay13 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %26, i64 %idxprom
  %27 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %27, i32 0, i32 0
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 0
  %28 = load double, double* %x, align 8
  %call14 = call i8* @g_ascii_formatd(i8* %arraydecay13, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %28)
  %29 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay15 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %30 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %31, i64 %idxprom17
  %32 = load %struct.AffElement*, %struct.AffElement** %arrayidx18, align 8
  %v19 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %32, i32 0, i32 0
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v19, i32 0, i32 1
  %33 = load double, double* %y, align 8
  %call20 = call i8* @g_ascii_formatd(i8* %arraydecay16, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %33)
  %34 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay21 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay21)
  %arraydecay22 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %35 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %36, i64 %idxprom23
  %37 = load %struct.AffElement*, %struct.AffElement** %arrayidx24, align 8
  %v25 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %37, i32 0, i32 0
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v25, i32 0, i32 2
  %38 = load double, double* %theta, align 8
  %call26 = call i8* @g_ascii_formatd(i8* %arraydecay22, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %38)
  %39 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay27 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay27)
  %arraydecay28 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %40 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %40 to i64
  %41 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %41, i64 %idxprom29
  %42 = load %struct.AffElement*, %struct.AffElement** %arrayidx30, align 8
  %v31 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %42, i32 0, i32 0
  %scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v31, i32 0, i32 3
  %43 = load double, double* %scale, align 8
  %call32 = call i8* @g_ascii_formatd(i8* %arraydecay28, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %43)
  %44 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay33 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay33)
  %arraydecay34 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %45 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %45 to i64
  %46 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %46, i64 %idxprom35
  %47 = load %struct.AffElement*, %struct.AffElement** %arrayidx36, align 8
  %v37 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %47, i32 0, i32 0
  %asym = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v37, i32 0, i32 4
  %48 = load double, double* %asym, align 8
  %call38 = call i8* @g_ascii_formatd(i8* %arraydecay34, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %48)
  %49 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay39 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay39)
  %arraydecay40 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %50 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %51, i64 %idxprom41
  %52 = load %struct.AffElement*, %struct.AffElement** %arrayidx42, align 8
  %v43 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %52, i32 0, i32 0
  %shear = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v43, i32 0, i32 5
  %53 = load double, double* %shear, align 8
  %call44 = call i8* @g_ascii_formatd(i8* %arraydecay40, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %53)
  %54 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay45)
  %55 = load %struct._GString*, %struct._GString** %result, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %56 to i64
  %57 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %57, i64 %idxprom46
  %58 = load %struct.AffElement*, %struct.AffElement** %arrayidx47, align 8
  %v48 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %58, i32 0, i32 0
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v48, i32 0, i32 6
  %59 = load i32, i32* %flip, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 %59)
  %arrayidx49 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay50 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx49, i32 0, i32 0
  %60 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %60 to i64
  %61 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %61, i64 %idxprom51
  %62 = load %struct.AffElement*, %struct.AffElement** %arrayidx52, align 8
  %v53 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %62, i32 0, i32 0
  %red_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v53, i32 0, i32 7
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color, i32 0, i32 0
  %63 = load double, double* %r, align 8
  %call54 = call i8* @g_ascii_formatd(i8* %arraydecay50, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %63)
  %arrayidx55 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay56 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx55, i32 0, i32 0
  %64 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %64 to i64
  %65 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %65, i64 %idxprom57
  %66 = load %struct.AffElement*, %struct.AffElement** %arrayidx58, align 8
  %v59 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %66, i32 0, i32 0
  %red_color60 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v59, i32 0, i32 7
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color60, i32 0, i32 1
  %67 = load double, double* %g, align 8
  %call61 = call i8* @g_ascii_formatd(i8* %arraydecay56, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %67)
  %arrayidx62 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay63 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx62, i32 0, i32 0
  %68 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %68 to i64
  %69 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %69, i64 %idxprom64
  %70 = load %struct.AffElement*, %struct.AffElement** %arrayidx65, align 8
  %v66 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %70, i32 0, i32 0
  %red_color67 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v66, i32 0, i32 7
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %red_color67, i32 0, i32 2
  %71 = load double, double* %b, align 8
  %call68 = call i8* @g_ascii_formatd(i8* %arraydecay63, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %71)
  %72 = load %struct._GString*, %struct._GString** %result, align 8
  %arrayidx69 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay70 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx69, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay72 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx71, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay74 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx73, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay70, i8* %arraydecay72, i8* %arraydecay74)
  %arrayidx75 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay76 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx75, i32 0, i32 0
  %73 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %73 to i64
  %74 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %74, i64 %idxprom77
  %75 = load %struct.AffElement*, %struct.AffElement** %arrayidx78, align 8
  %v79 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %75, i32 0, i32 0
  %green_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v79, i32 0, i32 8
  %r80 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color, i32 0, i32 0
  %76 = load double, double* %r80, align 8
  %call81 = call i8* @g_ascii_formatd(i8* %arraydecay76, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %76)
  %arrayidx82 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay83 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx82, i32 0, i32 0
  %77 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %77 to i64
  %78 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %78, i64 %idxprom84
  %79 = load %struct.AffElement*, %struct.AffElement** %arrayidx85, align 8
  %v86 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %79, i32 0, i32 0
  %green_color87 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v86, i32 0, i32 8
  %g88 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color87, i32 0, i32 1
  %80 = load double, double* %g88, align 8
  %call89 = call i8* @g_ascii_formatd(i8* %arraydecay83, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %80)
  %arrayidx90 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay91 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx90, i32 0, i32 0
  %81 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %81 to i64
  %82 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %82, i64 %idxprom92
  %83 = load %struct.AffElement*, %struct.AffElement** %arrayidx93, align 8
  %v94 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %83, i32 0, i32 0
  %green_color95 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v94, i32 0, i32 8
  %b96 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %green_color95, i32 0, i32 2
  %84 = load double, double* %b96, align 8
  %call97 = call i8* @g_ascii_formatd(i8* %arraydecay91, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %84)
  %85 = load %struct._GString*, %struct._GString** %result, align 8
  %arrayidx98 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay99 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx98, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay101 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay103 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx102, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay99, i8* %arraydecay101, i8* %arraydecay103)
  %arrayidx104 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay105 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx104, i32 0, i32 0
  %86 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %86 to i64
  %87 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx107 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %87, i64 %idxprom106
  %88 = load %struct.AffElement*, %struct.AffElement** %arrayidx107, align 8
  %v108 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %88, i32 0, i32 0
  %blue_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v108, i32 0, i32 9
  %r109 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color, i32 0, i32 0
  %89 = load double, double* %r109, align 8
  %call110 = call i8* @g_ascii_formatd(i8* %arraydecay105, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %89)
  %arrayidx111 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay112 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx111, i32 0, i32 0
  %90 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %90 to i64
  %91 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %91, i64 %idxprom113
  %92 = load %struct.AffElement*, %struct.AffElement** %arrayidx114, align 8
  %v115 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %92, i32 0, i32 0
  %blue_color116 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v115, i32 0, i32 9
  %g117 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color116, i32 0, i32 1
  %93 = load double, double* %g117, align 8
  %call118 = call i8* @g_ascii_formatd(i8* %arraydecay112, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %93)
  %arrayidx119 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay120 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx119, i32 0, i32 0
  %94 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %94 to i64
  %95 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %95, i64 %idxprom121
  %96 = load %struct.AffElement*, %struct.AffElement** %arrayidx122, align 8
  %v123 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %96, i32 0, i32 0
  %blue_color124 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v123, i32 0, i32 9
  %b125 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %blue_color124, i32 0, i32 2
  %97 = load double, double* %b125, align 8
  %call126 = call i8* @g_ascii_formatd(i8* %arraydecay120, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %97)
  %98 = load %struct._GString*, %struct._GString** %result, align 8
  %arrayidx127 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay128 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay130 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay132 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx131, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay128, i8* %arraydecay130, i8* %arraydecay132)
  %arrayidx133 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay134 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx133, i32 0, i32 0
  %99 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %99 to i64
  %100 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %100, i64 %idxprom135
  %101 = load %struct.AffElement*, %struct.AffElement** %arrayidx136, align 8
  %v137 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %101, i32 0, i32 0
  %black_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v137, i32 0, i32 10
  %r138 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color, i32 0, i32 0
  %102 = load double, double* %r138, align 8
  %call139 = call i8* @g_ascii_formatd(i8* %arraydecay134, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %102)
  %arrayidx140 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay141 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx140, i32 0, i32 0
  %103 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %104, i64 %idxprom142
  %105 = load %struct.AffElement*, %struct.AffElement** %arrayidx143, align 8
  %v144 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %105, i32 0, i32 0
  %black_color145 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v144, i32 0, i32 10
  %g146 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color145, i32 0, i32 1
  %106 = load double, double* %g146, align 8
  %call147 = call i8* @g_ascii_formatd(i8* %arraydecay141, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %106)
  %arrayidx148 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay149 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx148, i32 0, i32 0
  %107 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %107 to i64
  %108 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx151 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %108, i64 %idxprom150
  %109 = load %struct.AffElement*, %struct.AffElement** %arrayidx151, align 8
  %v152 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %109, i32 0, i32 0
  %black_color153 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v152, i32 0, i32 10
  %b154 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %black_color153, i32 0, i32 2
  %110 = load double, double* %b154, align 8
  %call155 = call i8* @g_ascii_formatd(i8* %arraydecay149, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %110)
  %111 = load %struct._GString*, %struct._GString** %result, align 8
  %arrayidx156 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay157 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay159 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay161 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx160, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay157, i8* %arraydecay159, i8* %arraydecay161)
  %arrayidx162 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay163 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx162, i32 0, i32 0
  %112 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %112 to i64
  %113 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %113, i64 %idxprom164
  %114 = load %struct.AffElement*, %struct.AffElement** %arrayidx165, align 8
  %v166 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %114, i32 0, i32 0
  %target_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v166, i32 0, i32 11
  %r167 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color, i32 0, i32 0
  %115 = load double, double* %r167, align 8
  %call168 = call i8* @g_ascii_formatd(i8* %arraydecay163, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %115)
  %arrayidx169 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay170 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx169, i32 0, i32 0
  %116 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %116 to i64
  %117 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx172 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %117, i64 %idxprom171
  %118 = load %struct.AffElement*, %struct.AffElement** %arrayidx172, align 8
  %v173 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %118, i32 0, i32 0
  %target_color174 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v173, i32 0, i32 11
  %g175 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color174, i32 0, i32 1
  %119 = load double, double* %g175, align 8
  %call176 = call i8* @g_ascii_formatd(i8* %arraydecay170, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %119)
  %arrayidx177 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay178 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx177, i32 0, i32 0
  %120 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %120 to i64
  %121 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %121, i64 %idxprom179
  %122 = load %struct.AffElement*, %struct.AffElement** %arrayidx180, align 8
  %v181 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %122, i32 0, i32 0
  %target_color182 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v181, i32 0, i32 11
  %b183 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %target_color182, i32 0, i32 2
  %123 = load double, double* %b183, align 8
  %call184 = call i8* @g_ascii_formatd(i8* %arraydecay178, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %123)
  %124 = load %struct._GString*, %struct._GString** %result, align 8
  %arrayidx185 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 0
  %arraydecay186 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 1
  %arraydecay188 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %cbuf, i32 0, i64 2
  %arraydecay190 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx189, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i8* %arraydecay186, i8* %arraydecay188, i8* %arraydecay190)
  %arraydecay191 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %125 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %125 to i64
  %126 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx193 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %126, i64 %idxprom192
  %127 = load %struct.AffElement*, %struct.AffElement** %arrayidx193, align 8
  %v194 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %127, i32 0, i32 0
  %hue_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v194, i32 0, i32 12
  %128 = load double, double* %hue_scale, align 8
  %call195 = call i8* @g_ascii_formatd(i8* %arraydecay191, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %128)
  %129 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay196 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay196)
  %arraydecay197 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %130 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %130 to i64
  %131 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx199 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %131, i64 %idxprom198
  %132 = load %struct.AffElement*, %struct.AffElement** %arrayidx199, align 8
  %v200 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %132, i32 0, i32 0
  %value_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v200, i32 0, i32 13
  %133 = load double, double* %value_scale, align 8
  %call201 = call i8* @g_ascii_formatd(i8* %arraydecay197, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %133)
  %134 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay202 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay202)
  %135 = load %struct._GString*, %struct._GString** %result, align 8
  %136 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %136 to i64
  %137 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx204 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %137, i64 %idxprom203
  %138 = load %struct.AffElement*, %struct.AffElement** %arrayidx204, align 8
  %v205 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %138, i32 0, i32 0
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v205, i32 0, i32 14
  %139 = load i32, i32* %simple_color, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 %139)
  %arraydecay206 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %140 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %140 to i64
  %141 = load %struct.AffElement**, %struct.AffElement*** %elements.addr, align 8
  %arrayidx208 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %141, i64 %idxprom207
  %142 = load %struct.AffElement*, %struct.AffElement** %arrayidx208, align 8
  %v209 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %142, i32 0, i32 0
  %prob = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v209, i32 0, i32 15
  %143 = load double, double* %prob, align 8
  %call210 = call i8* @g_ascii_formatd(i8* %arraydecay206, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %143)
  %144 = load %struct._GString*, %struct._GString** %result, align 8
  %arraydecay211 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay211)
  %145 = load %struct._GString*, %struct._GString** %result, align 8
  %call212 = call %struct._GString* @g_string_append(%struct._GString* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %146 = load i32, i32* %i, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %147 = load %struct._GString*, %struct._GString** %result, align 8
  %call213 = call i8* @g_string_free(%struct._GString* %147, i32 0)
  ret i8* %call213
}

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_eof(%struct._GScanner*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_genuine_float(%struct._GScanner* %scanner, double* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %result.addr = alloca double*, align 8
  %negate = alloca i32, align 4
  %token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store double* %result, double** %result.addr, align 8
  store i32 0, i32* %negate, align 4
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_get_next_token(%struct._GScanner* %0)
  store i32 %call, i32* %token, align 4
  %1 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %1, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %negate, align 4
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %2)
  store i32 %call1, i32* %token, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %token, align 4
  %cmp2 = icmp eq i32 %3, 263
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %negate, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_float = bitcast %union._GTokenValue* %value to double*
  %6 = load double, double* %v_float, align 8
  %sub = fsub double -0.000000e+00, %6
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value4 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %7, i32 0, i32 7
  %v_float5 = bitcast %union._GTokenValue* %value4 to double*
  %8 = load double, double* %v_float5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %8, %cond.false ]
  %9 = load double*, double** %result.addr, align 8
  store double %cond, double* %9, align 8
  store i32 256, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 263, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %cond.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct.AffElement* @aff_element_new(double, double, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ifsvals_parse_element(%struct._GScanner* %scanner, %struct.AffElementVals* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %result.addr = alloca %struct.AffElementVals*, align 8
  %token = alloca i32, align 4
  %expected_token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct.AffElementVals* %result, %struct.AffElementVals** %result.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_get_next_token(%struct._GScanner* %0)
  store i32 %call, i32* %token, align 4
  %1 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %1, 123
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %2)
  store i32 %call1, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %3 = load i32, i32* %token, align 4
  %cmp2 = icmp ne i32 %3, 125
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %token, align 4
  switch i32 %4, label %sw.default [
    i32 279, label %sw.bb
    i32 280, label %sw.bb.7
    i32 281, label %sw.bb.12
    i32 282, label %sw.bb.17
    i32 283, label %sw.bb.22
    i32 284, label %sw.bb.27
    i32 285, label %sw.bb.32
    i32 286, label %sw.bb.37
    i32 287, label %sw.bb.43
    i32 288, label %sw.bb.49
    i32 289, label %sw.bb.55
    i32 290, label %sw.bb.61
    i32 291, label %sw.bb.67
    i32 292, label %sw.bb.73
    i32 293, label %sw.bb.79
    i32 294, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %6 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %6, i32 0, i32 0
  %call3 = call i32 @parse_genuine_float(%struct._GScanner* %5, double* %x)
  store i32 %call3, i32* %expected_token, align 4
  %7 = load i32, i32* %expected_token, align 4
  %cmp4 = icmp ne i32 %7, 256
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb
  %8 = load i32, i32* %expected_token, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %10 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %10, i32 0, i32 1
  %call8 = call i32 @parse_genuine_float(%struct._GScanner* %9, double* %y)
  store i32 %call8, i32* %expected_token, align 4
  %11 = load i32, i32* %expected_token, align 4
  %cmp9 = icmp ne i32 %11, 256
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  %12 = load i32, i32* %expected_token, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %14 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %14, i32 0, i32 2
  %call13 = call i32 @parse_genuine_float(%struct._GScanner* %13, double* %theta)
  store i32 %call13, i32* %expected_token, align 4
  %15 = load i32, i32* %expected_token, align 4
  %cmp14 = icmp ne i32 %15, 256
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.12
  %16 = load i32, i32* %expected_token, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  br label %sw.epilog

sw.bb.17:                                         ; preds = %while.body
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %18 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %18, i32 0, i32 3
  %call18 = call i32 @parse_genuine_float(%struct._GScanner* %17, double* %scale)
  store i32 %call18, i32* %expected_token, align 4
  %19 = load i32, i32* %expected_token, align 4
  %cmp19 = icmp ne i32 %19, 256
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.17
  %20 = load i32, i32* %expected_token, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.21:                                        ; preds = %sw.bb.17
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %22 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %asym = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %22, i32 0, i32 4
  %call23 = call i32 @parse_genuine_float(%struct._GScanner* %21, double* %asym)
  store i32 %call23, i32* %expected_token, align 4
  %23 = load i32, i32* %expected_token, align 4
  %cmp24 = icmp ne i32 %23, 256
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.22
  %24 = load i32, i32* %expected_token, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.22
  br label %sw.epilog

sw.bb.27:                                         ; preds = %while.body
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %26 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %shear = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %26, i32 0, i32 5
  %call28 = call i32 @parse_genuine_float(%struct._GScanner* %25, double* %shear)
  store i32 %call28, i32* %expected_token, align 4
  %27 = load i32, i32* %expected_token, align 4
  %cmp29 = icmp ne i32 %27, 256
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.27
  %28 = load i32, i32* %expected_token, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.31:                                        ; preds = %sw.bb.27
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call33 = call i32 @g_scanner_get_next_token(%struct._GScanner* %29)
  store i32 %call33, i32* %token, align 4
  %30 = load i32, i32* %token, align 4
  %cmp34 = icmp ne i32 %30, 261
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.32
  store i32 261, i32* %retval
  br label %return

if.end.36:                                        ; preds = %sw.bb.32
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %31, i32 0, i32 7
  %v_int = bitcast %union._GTokenValue* %value to i64*
  %32 = load i64, i64* %v_int, align 8
  %conv = trunc i64 %32 to i32
  %33 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %33, i32 0, i32 6
  store i32 %conv, i32* %flip, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %35 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %red_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %35, i32 0, i32 7
  %call38 = call i32 @ifsvals_parse_color(%struct._GScanner* %34, %struct._GimpRGB* %red_color)
  store i32 %call38, i32* %token, align 4
  %36 = load i32, i32* %token, align 4
  %cmp39 = icmp ne i32 %36, 256
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %sw.bb.37
  %37 = load i32, i32* %token, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.42:                                        ; preds = %sw.bb.37
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body
  %38 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %39 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %green_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %39, i32 0, i32 8
  %call44 = call i32 @ifsvals_parse_color(%struct._GScanner* %38, %struct._GimpRGB* %green_color)
  store i32 %call44, i32* %token, align 4
  %40 = load i32, i32* %token, align 4
  %cmp45 = icmp ne i32 %40, 256
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %sw.bb.43
  %41 = load i32, i32* %token, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.48:                                        ; preds = %sw.bb.43
  br label %sw.epilog

sw.bb.49:                                         ; preds = %while.body
  %42 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %43 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %blue_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %43, i32 0, i32 9
  %call50 = call i32 @ifsvals_parse_color(%struct._GScanner* %42, %struct._GimpRGB* %blue_color)
  store i32 %call50, i32* %token, align 4
  %44 = load i32, i32* %token, align 4
  %cmp51 = icmp ne i32 %44, 256
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.bb.49
  %45 = load i32, i32* %token, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.54:                                        ; preds = %sw.bb.49
  br label %sw.epilog

sw.bb.55:                                         ; preds = %while.body
  %46 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %47 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %black_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %47, i32 0, i32 10
  %call56 = call i32 @ifsvals_parse_color(%struct._GScanner* %46, %struct._GimpRGB* %black_color)
  store i32 %call56, i32* %token, align 4
  %48 = load i32, i32* %token, align 4
  %cmp57 = icmp ne i32 %48, 256
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.bb.55
  %49 = load i32, i32* %token, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.60:                                        ; preds = %sw.bb.55
  br label %sw.epilog

sw.bb.61:                                         ; preds = %while.body
  %50 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %51 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %target_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %51, i32 0, i32 11
  %call62 = call i32 @ifsvals_parse_color(%struct._GScanner* %50, %struct._GimpRGB* %target_color)
  store i32 %call62, i32* %token, align 4
  %52 = load i32, i32* %token, align 4
  %cmp63 = icmp ne i32 %52, 256
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.bb.61
  %53 = load i32, i32* %token, align 4
  store i32 %53, i32* %retval
  br label %return

if.end.66:                                        ; preds = %sw.bb.61
  br label %sw.epilog

sw.bb.67:                                         ; preds = %while.body
  %54 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %55 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %hue_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %55, i32 0, i32 12
  %call68 = call i32 @parse_genuine_float(%struct._GScanner* %54, double* %hue_scale)
  store i32 %call68, i32* %expected_token, align 4
  %56 = load i32, i32* %expected_token, align 4
  %cmp69 = icmp ne i32 %56, 256
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %sw.bb.67
  %57 = load i32, i32* %expected_token, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.72:                                        ; preds = %sw.bb.67
  br label %sw.epilog

sw.bb.73:                                         ; preds = %while.body
  %58 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %59 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %value_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %59, i32 0, i32 13
  %call74 = call i32 @parse_genuine_float(%struct._GScanner* %58, double* %value_scale)
  store i32 %call74, i32* %expected_token, align 4
  %60 = load i32, i32* %expected_token, align 4
  %cmp75 = icmp ne i32 %60, 256
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %sw.bb.73
  %61 = load i32, i32* %expected_token, align 4
  store i32 %61, i32* %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.73
  br label %sw.epilog

sw.bb.79:                                         ; preds = %while.body
  %62 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call80 = call i32 @g_scanner_get_next_token(%struct._GScanner* %62)
  store i32 %call80, i32* %token, align 4
  %63 = load i32, i32* %token, align 4
  %cmp81 = icmp ne i32 %63, 261
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %sw.bb.79
  store i32 261, i32* %retval
  br label %return

if.end.84:                                        ; preds = %sw.bb.79
  %64 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value85 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %64, i32 0, i32 7
  %v_int86 = bitcast %union._GTokenValue* %value85 to i64*
  %65 = load i64, i64* %v_int86, align 8
  %conv87 = trunc i64 %65 to i32
  %66 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %66, i32 0, i32 14
  store i32 %conv87, i32* %simple_color, align 4
  br label %sw.epilog

sw.bb.88:                                         ; preds = %while.body
  %67 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call89 = call i32 @g_scanner_get_next_token(%struct._GScanner* %67)
  store i32 %call89, i32* %token, align 4
  %68 = load i32, i32* %token, align 4
  %cmp90 = icmp ne i32 %68, 263
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %sw.bb.88
  store i32 263, i32* %retval
  br label %return

if.end.93:                                        ; preds = %sw.bb.88
  %69 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value94 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %69, i32 0, i32 7
  %v_float = bitcast %union._GTokenValue* %value94 to double*
  %70 = load double, double* %v_float, align 8
  %71 = load %struct.AffElementVals*, %struct.AffElementVals** %result.addr, align 8
  %prob = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %71, i32 0, i32 15
  store double %70, double* %prob, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 265, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.93, %if.end.84, %if.end.78, %if.end.72, %if.end.66, %if.end.60, %if.end.54, %if.end.48, %if.end.42, %if.end.36, %if.end.31, %if.end.26, %if.end.21, %if.end.16, %if.end.11, %if.end.6
  %72 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call95 = call i32 @g_scanner_get_next_token(%struct._GScanner* %72)
  store i32 %call95, i32* %token, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 256, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.then.92, %if.then.83, %if.then.77, %if.then.71, %if.then.65, %if.then.59, %if.then.53, %if.then.47, %if.then.41, %if.then.35, %if.then.30, %if.then.25, %if.then.20, %if.then.15, %if.then.10, %if.then.5, %if.then
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @aff_element_free(%struct.AffElement*) #1

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ifsvals_parse_color(%struct._GScanner* %scanner, %struct._GimpRGB* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %result.addr = alloca %struct._GimpRGB*, align 8
  %token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpRGB* %result, %struct._GimpRGB** %result.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_get_next_token(%struct._GScanner* %0)
  store i32 %call, i32* %token, align 4
  %1 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %1, 123
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %2)
  store i32 %call1, i32* %token, align 4
  %3 = load i32, i32* %token, align 4
  %cmp2 = icmp ne i32 %3, 263
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 263, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %4, i32 0, i32 7
  %v_float = bitcast %union._GTokenValue* %value to double*
  %5 = load double, double* %v_float, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %result.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  store double %5, double* %r, align 8
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @g_scanner_get_next_token(%struct._GScanner* %7)
  store i32 %call5, i32* %token, align 4
  %8 = load i32, i32* %token, align 4
  %cmp6 = icmp ne i32 %8, 44
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 44, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call9 = call i32 @g_scanner_get_next_token(%struct._GScanner* %9)
  store i32 %call9, i32* %token, align 4
  %10 = load i32, i32* %token, align 4
  %cmp10 = icmp ne i32 %10, 263
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 263, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value13 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %11, i32 0, i32 7
  %v_float14 = bitcast %union._GTokenValue* %value13 to double*
  %12 = load double, double* %v_float14, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %result.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 1
  store double %12, double* %g, align 8
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call15 = call i32 @g_scanner_get_next_token(%struct._GScanner* %14)
  store i32 %call15, i32* %token, align 4
  %15 = load i32, i32* %token, align 4
  %cmp16 = icmp ne i32 %15, 44
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  store i32 44, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %16 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call19 = call i32 @g_scanner_get_next_token(%struct._GScanner* %16)
  store i32 %call19, i32* %token, align 4
  %17 = load i32, i32* %token, align 4
  %cmp20 = icmp ne i32 %17, 263
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 263, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value23 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 7
  %v_float24 = bitcast %union._GTokenValue* %value23 to double*
  %19 = load double, double* %v_float24, align 8
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %result.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 2
  store double %19, double* %b, align 8
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call25 = call i32 @g_scanner_get_next_token(%struct._GScanner* %21)
  store i32 %call25, i32* %token, align 4
  %22 = load i32, i32* %token, align 4
  %cmp26 = icmp ne i32 %22, 125
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store i32 125, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  store i32 256, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %if.then.21, %if.then.17, %if.then.11, %if.then.7, %if.then.3, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
