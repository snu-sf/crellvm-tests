; ModuleID = './plug-ins/common/file-glob.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GDir = type opaque
%struct._GPtrArray = type { i8**, i32 }
%struct._GError = type { i32, i32, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.glob_args = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The glob pattern (in UTF-8 encoding)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Encoding of the returned names: { UTF-8 (0), filename encoding (1) }\00", align 1
@query.glob_return_vals = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"num-files\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"The number of returned names\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"The list of matching names\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"file-glob\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Returns a list of matching filenames\00", align 1
@.str.10 = private unnamed_addr constant [239 x i8] c"This can be useful in scripts and other plugins (e.g., batch-conversion). See the glob(7) manpage for more info. Note however that this isn't a full-featured glob implementation. It only handles simple patterns like \22/home/foo/bar/*.jpg\22.\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@run.values = internal global [3 x %struct._GimpParam] zeroinitializer, align 16
@__func__.glob_match = private unnamed_addr constant [11 x i8] c"glob_match\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"pattern != NULL\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"num_matches != NULL\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"matches != NULL\00", align 1
@g_utf8_skip = external constant i8*, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2, i32 2, %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.glob_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.glob_return_vals, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %matches = alloca i8**, align 8
  %num_matches = alloca i32, align 4
  %filename_encoding = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nparams.addr, align 4
  %cmp1 = icmp sge i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %filename_encoding, align 4
  %4 = load i32, i32* %nparams.addr, align 4
  %cmp2 = icmp sgt i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_int32, align 4
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %filename_encoding, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 0
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data5 to i8**
  %8 = load i8*, i8** %d_string, align 8
  %9 = load i32, i32* %filename_encoding, align 4
  %call6 = call i32 @glob_match(i8* %8, i32 %9, i32* %num_matches, i8*** %matches)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.10

if.end.9:                                         ; preds = %if.end
  %10 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 3, i32* %10, align 4
  store i32 21, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %11 = load i32, i32* %num_matches, align 4
  store i32 %11, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  store i32 9, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %12 = load i8**, i8*** %matches, align 8
  store i8** %12, i8*** bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i8***), align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.9, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @glob_match(i8* %pattern, i32 %filename_encoding, i32* %num_matches, i8*** %matches) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %filename_encoding.addr = alloca i32, align 4
  %num_matches.addr = alloca i32*, align 8
  %matches.addr = alloca i8***, align 8
  %dir = alloca %struct._GDir*, align 8
  %array = alloca %struct._GPtrArray*, align 8
  %filename = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %path = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %filename_encoding, i32* %filename_encoding.addr, align 4
  store i32* %num_matches, i32** %num_matches.addr, align 8
  store i8*** %matches, i8**** %matches.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %pattern.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.glob_match, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %num_matches.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.glob_match, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i8***, i8**** %matches.addr, align 8
  %cmp8 = icmp ne i8*** %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.glob_match, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i32*, i32** %num_matches.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i8***, i8**** %matches.addr, align 8
  store i8** null, i8*** %4, align 8
  %5 = load i8*, i8** %pattern.addr, align 8
  %call = call noalias i8* @g_filename_from_utf8(i8* %5, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call, i8** %tmp, align 8
  %6 = load i8*, i8** %tmp, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end.12
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end.12
  %7 = load i8*, i8** %tmp, align 8
  %call15 = call noalias i8* @g_path_get_dirname(i8* %7)
  store i8* %call15, i8** %dirname, align 8
  %8 = load i8*, i8** %dirname, align 8
  %call16 = call %struct._GDir* @g_dir_open(i8* %8, i32 0, %struct._GError** null)
  store %struct._GDir* %call16, %struct._GDir** %dir, align 8
  %9 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool17 = icmp ne %struct._GDir* %10, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %11 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %11)
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %12 = load i8*, i8** %pattern.addr, align 8
  %call20 = call noalias i8* @g_path_get_basename(i8* %12)
  store i8* %call20, i8** %tmp, align 8
  %13 = load i8*, i8** %pattern.addr, align 8
  %14 = load i8*, i8** %tmp, align 8
  %call21 = call i32 @strcmp(i8* %13, i8* %14) #3
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  %15 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %15)
  store i8* null, i8** %dirname, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.19
  %16 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %16)
  %call25 = call %struct._GPtrArray* @g_ptr_array_new()
  store %struct._GPtrArray* %call25, %struct._GPtrArray** %array, align 8
  %17 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call26 = call i8* @g_dir_read_name(%struct._GDir* %17)
  store i8* %call26, i8** %filename, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %18 = load i8*, i8** %filename, align 8
  %tobool27 = icmp ne i8* %18, null
  br i1 %tobool27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %dirname, align 8
  %tobool30 = icmp ne i8* %19, null
  br i1 %tobool30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %for.body
  %20 = load i8*, i8** %dirname, align 8
  %21 = load i8*, i8** %filename, align 8
  %call32 = call noalias i8* (i8*, ...) @g_build_filename(i8* %20, i8* %21, i8* null)
  store i8* %call32, i8** %path, align 8
  br label %if.end.35

if.else.33:                                       ; preds = %for.body
  %22 = load i8*, i8** %filename, align 8
  %call34 = call noalias i8* @g_strdup(i8* %22)
  store i8* %call34, i8** %path, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.31
  %23 = load i8*, i8** %path, align 8
  %call36 = call noalias i8* @g_filename_to_utf8(i8* %23, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call36, i8** %name, align 8
  %24 = load i8*, i8** %name, align 8
  %tobool37 = icmp ne i8* %24, null
  br i1 %tobool37, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.35
  %25 = load i8*, i8** %pattern.addr, align 8
  %26 = load i8*, i8** %name, align 8
  %call38 = call i32 @glob_fnmatch(i8* %25, i8* %26)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %filename_encoding.addr, align 4
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.then.40
  %28 = load %struct._GPtrArray*, %struct._GPtrArray** %array, align 8
  %29 = load i8*, i8** %path, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %28, i8* %29)
  store i8* null, i8** %path, align 8
  br label %if.end.44

if.else.43:                                       ; preds = %if.then.40
  %30 = load %struct._GPtrArray*, %struct._GPtrArray** %array, align 8
  %31 = load i8*, i8** %name, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %30, i8* %31)
  store i8* null, i8** %name, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true, %if.end.35
  %32 = load i8*, i8** %path, align 8
  call void @g_free(i8* %32)
  %33 = load i8*, i8** %name, align 8
  call void @g_free(i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %34 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call46 = call i8* @g_dir_read_name(%struct._GDir* %34)
  store i8* %call46, i8** %filename, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %35)
  %36 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GPtrArray*, %struct._GPtrArray** %array, align 8
  %len = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %37, i32 0, i32 1
  %38 = load i32, i32* %len, align 4
  %39 = load i32*, i32** %num_matches.addr, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct._GPtrArray*, %struct._GPtrArray** %array, align 8
  %call47 = call i8** @g_ptr_array_free(%struct._GPtrArray* %40, i32 0)
  %41 = load i8***, i8**** %matches.addr, align 8
  store i8** %call47, i8*** %41, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.then.13, %if.else.10, %if.else.4, %if.else
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare noalias i8* @g_path_get_dirname(i8*) #1

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

declare %struct._GPtrArray* @g_ptr_array_new() #1

declare i8* @g_dir_read_name(%struct._GDir*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @glob_fnmatch(i8* %pattern, i8* %string) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i32 @fnmatch_intern(i8* %0, i8* %1, i32 1, i32 1)
  ret i32 %call
}

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #1

declare void @g_dir_close(%struct._GDir*) #1

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @fnmatch_intern(i8* %pattern, i8* %string, i32 %component_start, i32 %no_leading_period) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %component_start.addr = alloca i32, align 4
  %no_leading_period.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %n = alloca i8*, align 8
  %last_n = alloca i8*, align 8
  %c = alloca i32, align 4
  %nc = alloca i32, align 4
  %last_p = alloca i8*, align 8
  %not = alloca i32, align 4
  %was_escaped = alloca i32, align 4
  %cstart = alloca i32, align 4
  %cend = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %component_start, i32* %component_start.addr, align 4
  store i32 %no_leading_period, i32* %no_leading_period.addr, align 4
  %0 = load i8*, i8** %pattern.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %string.addr, align 8
  store i8* %1, i8** %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end.154

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %n, align 8
  store i8* %4, i8** %last_n, align 8
  %call = call i32 @get_char(i8** %p)
  store i32 %call, i32* %c, align 4
  %call1 = call i32 @get_char(i8** %n)
  store i32 %call1, i32* %nc, align 4
  %5 = load i32, i32* %c, align 4
  switch i32 %5, label %sw.default [
    i32 63, label %sw.bb
    i32 92, label %sw.bb.12
    i32 42, label %sw.bb.17
    i32 91, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i32, i32* %nc, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %7 = load i32, i32* %nc, align 4
  %cmp2 = icmp eq i32 %7, 47
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %8 = load i32, i32* %nc, align 4
  %cmp5 = icmp eq i32 %8, 46
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else.4
  %9 = load i32, i32* %component_start.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %no_leading_period.addr, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true, %if.else.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body
  %call13 = call i32 @get_char(i8** %p)
  store i32 %call13, i32* %c, align 4
  %11 = load i32, i32* %nc, align 4
  %12 = load i32, i32* %c, align 4
  %cmp14 = icmp ne i32 %11, %12
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  br label %sw.epilog

sw.bb.17:                                         ; preds = %while.body
  %13 = load i32, i32* %nc, align 4
  %cmp18 = icmp eq i32 %13, 46
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %sw.bb.17
  %14 = load i32, i32* %component_start.addr, align 4
  %tobool20 = icmp ne i32 %14, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %15 = load i32, i32* %no_leading_period.addr, align 4
  %tobool22 = icmp ne i32 %15, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.21
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.21, %land.lhs.true.19, %sw.bb.17
  %16 = load i8*, i8** %p, align 8
  store i8* %16, i8** %last_p, align 8
  %17 = load i8*, i8** %p, align 8
  store i8* %17, i8** %last_p, align 8
  %call25 = call i32 @get_char(i8** %p)
  store i32 %call25, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %18 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %18, 63
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %19 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %19, 42
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %20 = phi i1 [ true, %for.cond ], [ %cmp27, %lor.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %21 = load i32, i32* %c, align 4
  %cmp28 = icmp eq i32 %21, 63
  br i1 %cmp28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %for.body
  %22 = load i32, i32* %nc, align 4
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %retval
  br label %return

if.else.32:                                       ; preds = %if.then.29
  %23 = load i32, i32* %nc, align 4
  %cmp33 = icmp eq i32 %23, 47
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.32
  store i32 0, i32* %retval
  br label %return

if.else.35:                                       ; preds = %if.else.32
  %24 = load i8*, i8** %n, align 8
  store i8* %24, i8** %last_n, align 8
  %call36 = call i32 @get_char(i8** %n)
  store i32 %call36, i32* %nc, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %25 = load i8*, i8** %p, align 8
  store i8* %25, i8** %last_p, align 8
  %call40 = call i32 @get_char(i8** %p)
  store i32 %call40, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %26 = load i32, i32* %c, align 4
  %cmp41 = icmp eq i32 %26, 0
  br i1 %cmp41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %for.end
  %27 = load i8*, i8** %last_n, align 8
  %call43 = call i8* @strchr(i8* %27, i32 47) #3
  %cmp44 = icmp ne i8* %call43, null
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.then.42
  store i32 0, i32* %retval
  br label %return

if.else.46:                                       ; preds = %if.then.42
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.end
  %28 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %28, 92
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %call50 = call i32 @get_char(i8** %p)
  store i32 %call50, i32* %c, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  %29 = load i8*, i8** %last_p, align 8
  store i8* %29, i8** %p, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %if.end.61, %if.end.51
  %30 = load i32, i32* %nc, align 4
  %cmp53 = icmp ne i32 %30, 0
  br i1 %cmp53, label %for.body.54, label %for.end.64

for.body.54:                                      ; preds = %for.cond.52
  %31 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %31, 91
  br i1 %cmp55, label %land.lhs.true.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.54
  %32 = load i32, i32* %nc, align 4
  %33 = load i32, i32* %c, align 4
  %cmp56 = icmp eq i32 %32, %33
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.61

land.lhs.true.57:                                 ; preds = %lor.lhs.false, %for.body.54
  %34 = load i8*, i8** %p, align 8
  %35 = load i8*, i8** %last_n, align 8
  %36 = load i32, i32* %component_start.addr, align 4
  %37 = load i32, i32* %no_leading_period.addr, align 4
  %call58 = call i32 @fnmatch_intern(i8* %34, i8* %35, i32 %36, i32 %37)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.57
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.57, %lor.lhs.false
  %38 = load i32, i32* %nc, align 4
  %cmp62 = icmp eq i32 %38, 47
  %conv = zext i1 %cmp62 to i32
  store i32 %conv, i32* %component_start.addr, align 4
  %39 = load i8*, i8** %n, align 8
  store i8* %39, i8** %last_n, align 8
  %call63 = call i32 @get_char(i8** %n)
  store i32 %call63, i32* %nc, align 4
  br label %for.cond.52

for.end.64:                                       ; preds = %for.cond.52
  store i32 0, i32* %retval
  br label %return

sw.bb.65:                                         ; preds = %while.body
  %40 = load i32, i32* %nc, align 4
  %cmp66 = icmp eq i32 %40, 0
  br i1 %cmp66, label %if.then.71, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %sw.bb.65
  %41 = load i32, i32* %nc, align 4
  %cmp69 = icmp eq i32 %41, 47
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false.68, %sw.bb.65
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %lor.lhs.false.68
  %42 = load i32, i32* %nc, align 4
  %cmp73 = icmp eq i32 %42, 46
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.80

land.lhs.true.75:                                 ; preds = %if.end.72
  %43 = load i32, i32* %component_start.addr, align 4
  %tobool76 = icmp ne i32 %43, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.80

land.lhs.true.77:                                 ; preds = %land.lhs.true.75
  %44 = load i32, i32* %no_leading_period.addr, align 4
  %tobool78 = icmp ne i32 %44, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.77
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %land.lhs.true.77, %land.lhs.true.75, %if.end.72
  %45 = load i8*, i8** %p, align 8
  %46 = load i8, i8* %45, align 1
  %conv81 = sext i8 %46 to i32
  %cmp82 = icmp eq i32 %conv81, 33
  br i1 %cmp82, label %lor.end.88, label %lor.rhs.84

lor.rhs.84:                                       ; preds = %if.end.80
  %47 = load i8*, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %conv85 = sext i8 %48 to i32
  %cmp86 = icmp eq i32 %conv85, 94
  br label %lor.end.88

lor.end.88:                                       ; preds = %lor.rhs.84, %if.end.80
  %49 = phi i1 [ true, %if.end.80 ], [ %cmp86, %lor.rhs.84 ]
  %lor.ext = zext i1 %49 to i32
  store i32 %lor.ext, i32* %not, align 4
  %50 = load i32, i32* %not, align 4
  %tobool89 = icmp ne i32 %50, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %lor.end.88
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %lor.end.88
  %call92 = call i32 @get_unescaped_char(i8** %p, i32* %was_escaped)
  store i32 %call92, i32* %c, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %if.end.127, %if.end.91
  %52 = load i32, i32* %c, align 4
  store i32 %52, i32* %cstart, align 4
  %53 = load i32, i32* %c, align 4
  store i32 %53, i32* %cend, align 4
  %54 = load i32, i32* %c, align 4
  %cmp94 = icmp eq i32 %54, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %for.cond.93
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %for.cond.93
  %call98 = call i32 @get_unescaped_char(i8** %p, i32* %was_escaped)
  store i32 %call98, i32* %c, align 4
  %55 = load i32, i32* %was_escaped, align 4
  %tobool99 = icmp ne i32 %55, 0
  br i1 %tobool99, label %if.end.114, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %if.end.97
  %56 = load i32, i32* %c, align 4
  %cmp101 = icmp eq i32 %56, 45
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.114

land.lhs.true.103:                                ; preds = %land.lhs.true.100
  %57 = load i8*, i8** %p, align 8
  %58 = load i8, i8* %57, align 1
  %conv104 = sext i8 %58 to i32
  %cmp105 = icmp ne i32 %conv104, 93
  br i1 %cmp105, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %land.lhs.true.103
  %call108 = call i32 @get_unescaped_char(i8** %p, i32* %was_escaped)
  store i32 %call108, i32* %cend, align 4
  %59 = load i32, i32* %cend, align 4
  %cmp109 = icmp eq i32 %59, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.107
  store i32 0, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.then.107
  %call113 = call i32 @get_char(i8** %p)
  store i32 %call113, i32* %c, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.112, %land.lhs.true.103, %land.lhs.true.100, %if.end.97
  %60 = load i32, i32* %nc, align 4
  %61 = load i32, i32* %cstart, align 4
  %cmp115 = icmp uge i32 %60, %61
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.121

land.lhs.true.117:                                ; preds = %if.end.114
  %62 = load i32, i32* %nc, align 4
  %63 = load i32, i32* %cend, align 4
  %cmp118 = icmp ule i32 %62, %63
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.117
  br label %matched

if.end.121:                                       ; preds = %land.lhs.true.117, %if.end.114
  %64 = load i32, i32* %was_escaped, align 4
  %tobool122 = icmp ne i32 %64, 0
  br i1 %tobool122, label %if.end.127, label %land.lhs.true.123

land.lhs.true.123:                                ; preds = %if.end.121
  %65 = load i32, i32* %c, align 4
  %cmp124 = icmp eq i32 %65, 93
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.123
  br label %for.end.128

if.end.127:                                       ; preds = %land.lhs.true.123, %if.end.121
  br label %for.cond.93

for.end.128:                                      ; preds = %if.then.126
  %66 = load i32, i32* %not, align 4
  %tobool129 = icmp ne i32 %66, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %for.end.128
  store i32 0, i32* %retval
  br label %return

if.end.131:                                       ; preds = %for.end.128
  br label %sw.epilog

matched:                                          ; preds = %if.then.120
  br label %while.cond.132

while.cond.132:                                   ; preds = %if.end.143, %matched
  %67 = load i32, i32* %was_escaped, align 4
  %tobool133 = icmp ne i32 %67, 0
  br i1 %tobool133, label %lor.end.137, label %lor.rhs.134

lor.rhs.134:                                      ; preds = %while.cond.132
  %68 = load i32, i32* %c, align 4
  %cmp135 = icmp ne i32 %68, 93
  br label %lor.end.137

lor.end.137:                                      ; preds = %lor.rhs.134, %while.cond.132
  %69 = phi i1 [ true, %while.cond.132 ], [ %cmp135, %lor.rhs.134 ]
  br i1 %69, label %while.body.139, label %while.end

while.body.139:                                   ; preds = %lor.end.137
  %70 = load i32, i32* %c, align 4
  %cmp140 = icmp eq i32 %70, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %while.body.139
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %while.body.139
  %call144 = call i32 @get_unescaped_char(i8** %p, i32* %was_escaped)
  store i32 %call144, i32* %c, align 4
  br label %while.cond.132

while.end:                                        ; preds = %lor.end.137
  %71 = load i32, i32* %not, align 4
  %tobool145 = icmp ne i32 %71, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.147:                                       ; preds = %while.end
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %72 = load i32, i32* %c, align 4
  %73 = load i32, i32* %nc, align 4
  %cmp148 = icmp ne i32 %72, %73
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

if.end.151:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.151, %if.end.147, %if.end.131, %if.end.16, %if.end.11
  %74 = load i32, i32* %nc, align 4
  %cmp152 = icmp eq i32 %74, 47
  %conv153 = zext i1 %cmp152 to i32
  store i32 %conv153, i32* %component_start.addr, align 4
  br label %while.cond

while.end.154:                                    ; preds = %while.cond
  %75 = load i8*, i8** %n, align 8
  %76 = load i8, i8* %75, align 1
  %conv155 = sext i8 %76 to i32
  %cmp156 = icmp eq i32 %conv155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %while.end.154
  store i32 1, i32* %retval
  br label %return

if.end.159:                                       ; preds = %while.end.154
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.159, %if.then.158, %if.then.150, %if.then.146, %if.then.142, %if.then.130, %if.then.111, %if.then.96, %if.then.79, %if.then.71, %for.end.64, %if.then.60, %if.else.46, %if.then.45, %if.then.34, %if.then.31, %if.then.23, %if.then.15, %if.then.9, %if.then.3, %if.then
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @get_char(i8** %str) #0 {
entry:
  %str.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  store i8** %str, i8*** %str.addr, align 8
  %0 = load i8**, i8*** %str.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @g_utf8_get_char(i8* %1) #3
  store i32 %call, i32* %c, align 4
  %2 = load i8**, i8*** %str.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8**, i8*** %str.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %7 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %9 = load i8**, i8*** %str.addr, align 8
  store i8* %add.ptr, i8** %9, align 8
  %10 = load i32, i32* %c, align 4
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_unescaped_char(i8** %str, i32* %was_escaped) #0 {
entry:
  %str.addr = alloca i8**, align 8
  %was_escaped.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  store i8** %str, i8*** %str.addr, align 8
  store i32* %was_escaped, i32** %was_escaped.addr, align 8
  %0 = load i8**, i8*** %str.addr, align 8
  %call = call i32 @get_char(i8** %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 92
  %land.ext = zext i1 %cmp to i32
  %2 = load i32*, i32** %was_escaped.addr, align 8
  store i32 %land.ext, i32* %2, align 4
  %3 = load i32*, i32** %was_escaped.addr, align 8
  %4 = load i32, i32* %3, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %str.addr, align 8
  %call1 = call i32 @get_char(i8** %5)
  store i32 %call1, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %c, align 4
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
