; ModuleID = './app/file/file-procedure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._Gimp = type opaque
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-File\00", align 1
@__func__.file_procedure_find = private unnamed_addr constant [20 x i8] c"file_procedure_find\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"procs != NULL\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Unknown file type\00", align 1
@__func__.file_procedure_find_by_prefix = private unnamed_addr constant [30 x i8] c"file_procedure_find_by_prefix\00", align 1
@__func__.file_procedure_find_by_extension = private unnamed_addr constant [33 x i8] c"file_procedure_find_by_extension\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"gimp-xcf-save\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"file-gz-save\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"file-bz2-save\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"file-uri-save\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%o\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %procs, i8* %uri, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %procs.addr = alloca %struct._GSList*, align 8
  %uri.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %all_procs = alloca %struct._GSList*, align 8
  %filename = alloca i8*, align 8
  %size_matched_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %ifp = alloca %struct._IO_FILE*, align 8
  %opened = alloca i32, align 4
  %head_size = alloca i32, align 4
  %size_match_count = alloca i32, align 4
  %head = alloca [256 x i8], align 16
  %match_val = alloca i32, align 4
  store %struct._GSList* %procs, %struct._GSList** %procs.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  store %struct._GSList* %0, %struct._GSList** %all_procs, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %cmp = icmp ne %struct._GSList* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_procedure_find, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %uri.addr, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_procedure_find, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp8 = icmp eq %struct._GError** %3, null
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  %cmp9 = icmp eq %struct._GError* %5, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_procedure_find, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %6 = load %struct._GSList*, %struct._GSList** %all_procs, align 8
  %7 = load i8*, i8** %uri.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @file_proc_find_by_name(%struct._GSList* %6, i8* %7, i32 1)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %file_proc, align 8
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %8, null
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end.13
  %9 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GimpPlugInProcedure* %9, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.15:                                        ; preds = %do.end.13
  %10 = load i8*, i8** %uri.addr, align 8
  %call16 = call i8* @file_utils_filename_from_uri(i8* %10)
  store i8* %call16, i8** %filename, align 8
  %11 = load i8*, i8** %filename, align 8
  %tobool17 = icmp ne i8* %11, null
  br i1 %tobool17, label %if.then.18, label %if.end.71

if.then.18:                                       ; preds = %if.end.15
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %size_matched_proc, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %ifp, align 8
  store i32 0, i32* %opened, align 4
  store i32 0, i32* %head_size, align 4
  store i32 0, i32* %size_match_count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.then.18
  %12 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %tobool19 = icmp ne %struct._GSList* %12, null
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %15, %struct._GimpPlugInProcedure** %file_proc, align 8
  %16 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1
  %17 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %17, %struct._GSList** %procs.addr, align 8
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %magics_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 21
  %19 = load %struct._GSList*, %struct._GSList** %magics_list, align 8
  %tobool20 = icmp ne %struct._GSList* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.53

if.then.21:                                       ; preds = %while.body
  %20 = load i32, i32* %opened, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.end.35, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  %21 = load i8*, i8** %filename, align 8
  %call24 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call24, %struct._IO_FILE** %ifp, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %cmp25 = icmp ne %struct._IO_FILE* %22, null
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.23
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %head, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call27 = call i64 @fread(i8* %arraydecay, i64 1, i64 256, %struct._IO_FILE* %23)
  %conv = trunc i64 %call27 to i32
  store i32 %conv, i32* %head_size, align 4
  br label %if.end.34

if.else.28:                                       ; preds = %if.then.23
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @g_file_error_quark()
  %call30 = call i32* @__errno_location() #5
  %25 = load i32, i32* %call30, align 4
  %call31 = call i32 @g_file_error_from_errno(i32 %25)
  %call32 = call i32* @__errno_location() #5
  %26 = load i32, i32* %call32, align 4
  %call33 = call i8* @g_strerror(i32 %26) #5
  call void @g_set_error_literal(%struct._GError** %24, i32 %call29, i32 %call31, i8* %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.28, %if.then.26
  store i32 1, i32* %opened, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.21
  %27 = load i32, i32* %head_size, align 4
  %cmp36 = icmp sge i32 %27, 4
  br i1 %cmp36, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end.35
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %magics_list39 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %28, i32 0, i32 21
  %29 = load %struct._GSList*, %struct._GSList** %magics_list39, align 8
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %head, i32 0, i32 0
  %30 = load i32, i32* %head_size, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call41 = call i32 @file_check_magic_list(%struct._GSList* %29, i8* %arraydecay40, i32 %30, %struct._IO_FILE* %31)
  store i32 %call41, i32* %match_val, align 4
  %32 = load i32, i32* %match_val, align 4
  %cmp42 = icmp eq i32 %32, 2
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.38
  %33 = load i32, i32* %size_match_count, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %size_match_count, align 4
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GimpPlugInProcedure* %34, %struct._GimpPlugInProcedure** %size_matched_proc, align 8
  br label %if.end.51

if.else.45:                                       ; preds = %if.then.38
  %35 = load i32, i32* %match_val, align 4
  %cmp46 = icmp ne i32 %35, 0
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else.45
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %36)
  %37 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GimpPlugInProcedure* %38, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.50:                                        ; preds = %if.else.45
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.35
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %tobool54 = icmp ne %struct._IO_FILE* %39, null
  br i1 %tobool54, label %if.then.55, label %if.end.66

if.then.55:                                       ; preds = %while.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call56 = call i32 @ferror(%struct._IO_FILE* %40) #6
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.then.55
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call59 = call i32 @g_file_error_quark()
  %call60 = call i32* @__errno_location() #5
  %42 = load i32, i32* %call60, align 4
  %call61 = call i32 @g_file_error_from_errno(i32 %42)
  %call62 = call i32* @__errno_location() #5
  %43 = load i32, i32* %call62, align 4
  %call63 = call i8* @g_strerror(i32 %43) #5
  call void @g_set_error_literal(%struct._GError** %41, i32 %call59, i32 %call61, i8* %call63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.then.55
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call65 = call i32 @fclose(%struct._IO_FILE* %44)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.64, %while.end
  %45 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %45)
  %46 = load i32, i32* %size_match_count, align 4
  %cmp67 = icmp eq i32 %46, 1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  %47 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %size_matched_proc, align 8
  store %struct._GimpPlugInProcedure* %47, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.15
  %48 = load %struct._GSList*, %struct._GSList** %all_procs, align 8
  %49 = load i8*, i8** %uri.addr, align 8
  %call72 = call %struct._GimpPlugInProcedure* @file_proc_find_by_name(%struct._GSList* %48, i8* %49, i32 0)
  store %struct._GimpPlugInProcedure* %call72, %struct._GimpPlugInProcedure** %file_proc, align 8
  %50 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool73 = icmp ne %struct._GimpPlugInProcedure* %50, null
  br i1 %tobool73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.71
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void @g_clear_error(%struct._GError** %51)
  br label %if.end.83

if.else.75:                                       ; preds = %if.end.71
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool76 = icmp ne %struct._GError** %52, null
  br i1 %tobool76, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.else.75
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %54 = load %struct._GError*, %struct._GError** %53, align 8
  %cmp77 = icmp eq %struct._GError* %54, null
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %land.lhs.true
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call80 = call i32 @g_file_error_quark()
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %55, i32 %call80, i32 24, i8* %call81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %land.lhs.true, %if.else.75
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.74
  %56 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GimpPlugInProcedure* %56, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.69, %if.then.48, %if.then.14, %if.else.11, %if.else.4, %if.else
  %57 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %57
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInProcedure* @file_proc_find_by_name(%struct._GSList* %procs, i8* %uri, i32 %skip_magic) #0 {
entry:
  %procs.addr = alloca %struct._GSList*, align 8
  %uri.addr = alloca i8*, align 8
  %skip_magic.addr = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GSList* %procs, %struct._GSList** %procs.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %skip_magic, i32* %skip_magic.addr, align 4
  %0 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %1 = load i8*, i8** %uri.addr, align 8
  %2 = load i32, i32* %skip_magic.addr, align 4
  %call = call %struct._GimpPlugInProcedure* @file_proc_find_by_prefix(%struct._GSList* %0, i8* %1, i32 %2)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %proc, align 8
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %5 = load i8*, i8** %uri.addr, align 8
  %6 = load i32, i32* %skip_magic.addr, align 4
  %call1 = call %struct._GimpPlugInProcedure* @file_proc_find_by_extension(%struct._GSList* %4, i8* %5, i32 %6)
  store %struct._GimpPlugInProcedure* %call1, %struct._GimpPlugInProcedure** %proc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  ret %struct._GimpPlugInProcedure* %7
}

declare i8* @file_utils_filename_from_uri(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @file_check_magic_list(%struct._GSList* %magics_list, i8* %head, i32 %headsize, %struct._IO_FILE* %ifp) #0 {
entry:
  %retval = alloca i32, align 4
  %magics_list.addr = alloca %struct._GSList*, align 8
  %head.addr = alloca i8*, align 8
  %headsize.addr = alloca i32, align 4
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %offset = alloca i8*, align 8
  %type = alloca i8*, align 8
  %value = alloca i8*, align 8
  %and = alloca i32, align 4
  %found = alloca i32, align 4
  %match_val = alloca i32, align 4
  store %struct._GSList* %magics_list, %struct._GSList** %magics_list.addr, align 8
  store i8* %head, i8** %head.addr, align 8
  store i32 %headsize, i32* %headsize.addr, align 4
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32 0, i32* %and, align 4
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %0 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %tobool = icmp ne %struct._GSList* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  store i8* %2, i8** %offset, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 1
  %4 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %4, %struct._GSList** %magics_list.addr, align 8
  %cmp1 = icmp eq %struct._GSList* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %while.end

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %data4 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data4, align 8
  store i8* %6, i8** %type, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %while.end

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %next8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 1
  %8 = load %struct._GSList*, %struct._GSList** %next8, align 8
  store %struct._GSList* %8, %struct._GSList** %magics_list.addr, align 8
  %cmp9 = icmp eq %struct._GSList* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  br label %while.end

if.end.11:                                        ; preds = %if.end.7
  %9 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %data12 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data12, align 8
  store i8* %10, i8** %value, align 8
  %cmp13 = icmp eq i8* %10, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %while.end

if.end.15:                                        ; preds = %if.end.11
  %11 = load %struct._GSList*, %struct._GSList** %magics_list.addr, align 8
  %next16 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 1
  %12 = load %struct._GSList*, %struct._GSList** %next16, align 8
  store %struct._GSList* %12, %struct._GSList** %magics_list.addr, align 8
  %13 = load i8*, i8** %offset, align 8
  %14 = load i8*, i8** %type, align 8
  %15 = load i8*, i8** %value, align 8
  %16 = load i8*, i8** %head.addr, align 8
  %17 = load i32, i32* %headsize.addr, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @file_check_single_magic(i8* %13, i8* %14, i8* %15, i8* %16, i32 %17, %struct._IO_FILE* %18)
  store i32 %call, i32* %match_val, align 4
  %19 = load i32, i32* %and, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  %20 = load i32, i32* %found, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.18
  %21 = load i32, i32* %match_val, align 4
  %cmp20 = icmp ne i32 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.18
  %22 = phi i1 [ false, %if.then.18 ], [ %cmp20, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %found, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.15
  %23 = load i32, i32* %match_val, align 4
  %cmp21 = icmp ne i32 %23, 0
  %conv = zext i1 %cmp21 to i32
  store i32 %conv, i32* %found, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %land.end
  %24 = load i8*, i8** %offset, align 8
  %call23 = call i8* @strchr(i8* %24, i32 38) #7
  %cmp24 = icmp ne i8* %call23, null
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %and, align 4
  %25 = load i32, i32* %and, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.22
  %26 = load i32, i32* %found, align 4
  %tobool27 = icmp ne i32 %26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %match_val, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %if.end.22
  br label %while.cond

while.end:                                        ; preds = %if.then.14, %if.then.10, %if.then.6, %if.then.2, %if.then, %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.28
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcedure* @file_procedure_find_by_prefix(%struct._GSList* %procs, i8* %uri) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %procs.addr = alloca %struct._GSList*, align 8
  %uri.addr = alloca i8*, align 8
  store %struct._GSList* %procs, %struct._GSList** %procs.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.file_procedure_find_by_prefix, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %2 = load i8*, i8** %uri.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @file_proc_find_by_prefix(%struct._GSList* %1, i8* %2, i32 0)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInProcedure* @file_proc_find_by_prefix(%struct._GSList* %procs, i8* %uri, i32 %skip_magic) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %procs.addr = alloca %struct._GSList*, align 8
  %uri.addr = alloca i8*, align 8
  %skip_magic.addr = alloca i32, align 4
  %p = alloca %struct._GSList*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %prefixes = alloca %struct._GSList*, align 8
  store %struct._GSList* %procs, %struct._GSList** %procs.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %skip_magic, i32* %skip_magic.addr, align 4
  %0 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  store %struct._GSList* %0, %struct._GSList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.16, %entry
  %1 = load %struct._GSList*, %struct._GSList** %p, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %p, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %4, %struct._GimpPlugInProcedure** %proc, align 8
  %5 = load i32, i32* %skip_magic.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %6, i32 0, i32 21
  %7 = load %struct._GSList*, %struct._GSList** %magics_list, align 8
  %tobool2 = icmp ne %struct._GSList* %7, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.11

if.end:                                           ; preds = %land.lhs.true, %for.body
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %8, i32 0, i32 20
  %9 = load %struct._GSList*, %struct._GSList** %prefixes_list, align 8
  store %struct._GSList* %9, %struct._GSList** %prefixes, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %cond.end, %if.end
  %10 = load %struct._GSList*, %struct._GSList** %prefixes, align 8
  %tobool4 = icmp ne %struct._GSList* %10, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i8*, i8** %uri.addr, align 8
  %12 = load %struct._GSList*, %struct._GSList** %prefixes, align 8
  %data6 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data6, align 8
  %call = call i32 @g_str_has_prefix(i8* %11, i8* %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.5
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  store %struct._GimpPlugInProcedure* %14, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.9:                                         ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %15 = load %struct._GSList*, %struct._GSList** %prefixes, align 8
  %tobool10 = icmp ne %struct._GSList* %15, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GSList*, %struct._GSList** %prefixes, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1
  %17 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %prefixes, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end, %if.then
  %18 = load %struct._GSList*, %struct._GSList** %p, align 8
  %tobool12 = icmp ne %struct._GSList* %18, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %for.inc.11
  %19 = load %struct._GSList*, %struct._GSList** %p, align 8
  %next14 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %next14, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %for.inc.11
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi %struct._GSList* [ %20, %cond.true.13 ], [ null, %cond.false.15 ]
  store %struct._GSList* %cond17, %struct._GSList** %p, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then.8
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %21
}

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcedure* @file_procedure_find_by_extension(%struct._GSList* %procs, i8* %uri) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %procs.addr = alloca %struct._GSList*, align 8
  %uri.addr = alloca i8*, align 8
  store %struct._GSList* %procs, %struct._GSList** %procs.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.file_procedure_find_by_extension, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  %2 = load i8*, i8** %uri.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @file_proc_find_by_extension(%struct._GSList* %1, i8* %2, i32 0)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInProcedure* @file_proc_find_by_extension(%struct._GSList* %procs, i8* %uri, i32 %skip_magic) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %procs.addr = alloca %struct._GSList*, align 8
  %uri.addr = alloca i8*, align 8
  %skip_magic.addr = alloca i32, align 4
  %p = alloca %struct._GSList*, align 8
  %ext = alloca i8*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %extensions = alloca %struct._GSList*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store %struct._GSList* %procs, %struct._GSList** %procs.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %skip_magic, i32* %skip_magic.addr, align 4
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call i8* @file_utils_uri_get_ext(i8* %0)
  store i8* %call, i8** %ext, align 8
  %1 = load i8*, i8** %ext, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %ext, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %4 = load i8*, i8** %ext, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %ext, align 8
  %5 = load %struct._GSList*, %struct._GSList** %procs.addr, align 8
  store %struct._GSList* %5, %struct._GSList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.40, %if.end
  %6 = load %struct._GSList*, %struct._GSList** %p, align 8
  %tobool2 = icmp ne %struct._GSList* %6, null
  br i1 %tobool2, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GSList*, %struct._GSList** %p, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %9, %struct._GimpPlugInProcedure** %proc, align 8
  %10 = load i32, i32* %skip_magic.addr, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.7

land.lhs.true.4:                                  ; preds = %for.body
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %11, i32 0, i32 21
  %12 = load %struct._GSList*, %struct._GSList** %magics_list, align 8
  %tobool5 = icmp ne %struct._GSList* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true.4
  br label %for.inc.35

if.end.7:                                         ; preds = %land.lhs.true.4, %for.body
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %13, i32 0, i32 19
  %14 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  store %struct._GSList* %14, %struct._GSList** %extensions, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %cond.end, %if.end.7
  %15 = load i8*, i8** %ext, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.8
  %16 = load %struct._GSList*, %struct._GSList** %extensions, align 8
  %tobool10 = icmp ne %struct._GSList* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.8
  %17 = phi i1 [ false, %for.cond.8 ], [ %tobool10, %land.rhs ]
  br i1 %17, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %land.end
  %18 = load i8*, i8** %ext, align 8
  store i8* %18, i8** %p1, align 8
  %19 = load %struct._GSList*, %struct._GSList** %extensions, align 8
  %data12 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data12, align 8
  store i8* %20, i8** %p2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %for.body.11
  %21 = load i8*, i8** %p1, align 8
  %22 = load i8, i8* %21, align 1
  %conv13 = sext i8 %22 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.rhs.15, label %land.end.18

land.rhs.15:                                      ; preds = %while.cond
  %23 = load i8*, i8** %p2, align 8
  %24 = load i8, i8* %23, align 1
  %conv16 = sext i8 %24 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.15, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %tobool17, %land.rhs.15 ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.18
  %26 = load i8*, i8** %p1, align 8
  %27 = load i8, i8* %26, align 1
  %call19 = call signext i8 @g_ascii_tolower(i8 signext %27) #5
  %conv20 = sext i8 %call19 to i32
  %28 = load i8*, i8** %p2, align 8
  %29 = load i8, i8* %28, align 1
  %call21 = call signext i8 @g_ascii_tolower(i8 signext %29) #5
  %conv22 = sext i8 %call21 to i32
  %cmp23 = icmp ne i32 %conv20, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.body
  br label %while.end

if.end.26:                                        ; preds = %while.body
  %30 = load i8*, i8** %p1, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr27, i8** %p1, align 8
  %31 = load i8*, i8** %p2, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr28, i8** %p2, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.25, %land.end.18
  %32 = load i8*, i8** %p1, align 8
  %33 = load i8, i8* %32, align 1
  %tobool29 = icmp ne i8 %33, 0
  br i1 %tobool29, label %if.end.33, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %while.end
  %34 = load i8*, i8** %p2, align 8
  %35 = load i8, i8* %34, align 1
  %tobool31 = icmp ne i8 %35, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  store %struct._GimpPlugInProcedure* %36, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.30, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %37 = load %struct._GSList*, %struct._GSList** %extensions, align 8
  %tobool34 = icmp ne %struct._GSList* %37, null
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GSList*, %struct._GSList** %extensions, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1
  %39 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %extensions, align 8
  br label %for.cond.8

for.end:                                          ; preds = %land.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end, %if.then.6
  %40 = load %struct._GSList*, %struct._GSList** %p, align 8
  %tobool36 = icmp ne %struct._GSList* %40, null
  br i1 %tobool36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %for.inc.35
  %41 = load %struct._GSList*, %struct._GSList** %p, align 8
  %next38 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1
  %42 = load %struct._GSList*, %struct._GSList** %next38, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %for.inc.35
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.37
  %cond41 = phi %struct._GSList* [ %42, %cond.true.37 ], [ null, %cond.false.39 ]
  store %struct._GSList* %cond41, %struct._GSList** %p, align 8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %for.end.42, %if.then.32, %if.then
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %43
}

; Function Attrs: nounwind uwtable
define i32 @file_procedure_in_group(%struct._GimpPlugInProcedure* %file_proc, i32 %group) #0 {
entry:
  %retval = alloca i32, align 4
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %group.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %is_xcf_save = alloca i32, align 4
  %is_filter = alloca i32, align 4
  %is_uri = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  store i32 %group, i32* %group.addr, align 4
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %name, align 8
  store i32 0, i32* %is_xcf_save, align 4
  store i32 0, i32* %is_filter, align 4
  store i32 0, i32* %is_uri, align 4
  %2 = load i8*, i8** %name, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_xcf_save, align 4
  %3 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load i8*, i8** %name, align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %is_filter, align 4
  %6 = load i8*, i8** %name, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %is_uri, align 4
  %7 = load i32, i32* %group.addr, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.16
    i32 1, label %sw.bb.22
    i32 0, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %lor.end
  %8 = load i32, i32* %is_xcf_save, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %lor.end.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load i32, i32* %is_filter, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %lor.end.14, label %lor.rhs.12

lor.rhs.12:                                       ; preds = %lor.lhs.false
  %10 = load i32, i32* %is_uri, align 4
  %tobool13 = icmp ne i32 %10, 0
  br label %lor.end.14

lor.end.14:                                       ; preds = %lor.rhs.12, %lor.lhs.false, %sw.bb
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb ], [ %tobool13, %lor.rhs.12 ]
  %lor.ext15 = zext i1 %11 to i32
  store i32 %lor.ext15, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %lor.end
  %12 = load i32, i32* %is_xcf_save, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %lor.rhs.18, label %lor.end.20

lor.rhs.18:                                       ; preds = %sw.bb.16
  %13 = load i32, i32* %is_uri, align 4
  %tobool19 = icmp ne i32 %13, 0
  br label %lor.end.20

lor.end.20:                                       ; preds = %lor.rhs.18, %sw.bb.16
  %14 = phi i1 [ true, %sw.bb.16 ], [ %tobool19, %lor.rhs.18 ]
  %lor.ext21 = zext i1 %14 to i32
  store i32 %lor.ext21, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %lor.end
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %lor.end
  br label %sw.bb.23

sw.bb.23:                                         ; preds = %lor.end, %sw.default
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.bb.23, %sw.bb.22, %lor.end.20, %lor.end.14
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare i8* @file_utils_uri_get_ext(i8*) #1

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_tolower(i8 signext) #2

; Function Attrs: nounwind uwtable
define internal i32 @file_check_single_magic(i8* %offset, i8* %type, i8* %value, i8* %file_head, i32 %headsize, %struct._IO_FILE* %ifp) #0 {
entry:
  %retval = alloca i32, align 4
  %offset.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %file_head.addr = alloca i8*, align 8
  %headsize.addr = alloca i32, align 4
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %found = alloca i32, align 4
  %offs = alloca i64, align 8
  %num_testval = alloca i64, align 8
  %num_operatorval = alloca i64, align 8
  %numbytes = alloca i32, align 4
  %k = alloca i32, align 4
  %num_operator_ptr = alloca i8*, align 8
  %num_operator = alloca i8, align 1
  %num_test = alloca i8, align 1
  %fileval = alloca i64, align 8
  %buf = alloca %struct.stat, align 8
  %c = alloca i32, align 4
  %mem_testval = alloca [256 x i8], align 16
  %c194 = alloca i32, align 4
  store i8* %offset, i8** %offset.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %file_head, i8** %file_head.addr, align 8
  store i32 %headsize, i32* %headsize.addr, align 4
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32 0, i32* %found, align 4
  %0 = load i8*, i8** %offset.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64* %offs) #6
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %num_operator_ptr, align 8
  store i8 0, i8* %num_operator, align 1
  %1 = load i8*, i8** %type.addr, align 8
  %call1 = call i32 @g_str_has_prefix(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %numbytes, align 4
  %2 = load i8*, i8** %type.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  store i8* %add.ptr, i8** %num_operator_ptr, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %type.addr, align 8
  %call3 = call i32 @g_str_has_prefix(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  store i32 2, i32* %numbytes, align 4
  %4 = load i8*, i8** %type.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %4, i64 5
  store i8* %add.ptr6, i8** %num_operator_ptr, align 8
  br label %if.end.24

if.else.7:                                        ; preds = %if.else
  %5 = load i8*, i8** %type.addr, align 8
  %call8 = call i32 @g_str_has_prefix(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.7
  store i32 4, i32* %numbytes, align 4
  %6 = load i8*, i8** %type.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr11, i8** %num_operator_ptr, align 8
  br label %if.end.23

if.else.12:                                       ; preds = %if.else.7
  %7 = load i8*, i8** %type.addr, align 8
  %call13 = call i32 @g_str_has_prefix(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 5, i32* %numbytes, align 4
  br label %if.end.22

if.else.16:                                       ; preds = %if.else.12
  %8 = load i8*, i8** %type.addr, align 8
  %call17 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 0, i32* %numbytes, align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.else.16
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.5
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.2
  %9 = load i8*, i8** %num_operator_ptr, align 8
  %tobool26 = icmp ne i8* %9, null
  br i1 %tobool26, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.end.25
  %10 = load i8*, i8** %num_operator_ptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp27 = icmp eq i32 %conv, 38
  br i1 %cmp27, label %if.then.29, label %if.end.56

if.then.29:                                       ; preds = %land.lhs.true
  %12 = load i8*, i8** %num_operator_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %13 to i64
  %14 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %15 to i32
  %and = and i32 %conv31, 8
  %cmp32 = icmp ne i32 %and, 0
  br i1 %cmp32, label %if.then.34, label %if.end.55

if.then.34:                                       ; preds = %if.then.29
  %16 = load i8*, i8** %num_operator_ptr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %17 to i32
  %cmp37 = icmp ne i32 %conv36, 48
  br i1 %cmp37, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.then.34
  %18 = load i8*, i8** %num_operator_ptr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %18, i64 1
  %call41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i64* %num_operatorval) #6
  br label %if.end.54

if.else.42:                                       ; preds = %if.then.34
  %19 = load i8*, i8** %num_operator_ptr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %20 to i32
  %cmp45 = icmp eq i32 %conv44, 120
  br i1 %cmp45, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %if.else.42
  %21 = load i8*, i8** %num_operator_ptr, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %21, i64 3
  %call49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i64* %num_operatorval) #6
  br label %if.end.53

if.else.50:                                       ; preds = %if.else.42
  %22 = load i8*, i8** %num_operator_ptr, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %22, i64 2
  %call52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %num_operatorval) #6
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.39
  %23 = load i8*, i8** %num_operator_ptr, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %num_operator, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.29
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true, %if.end.25
  %25 = load i32, i32* %numbytes, align 4
  %cmp57 = icmp sgt i32 %25, 0
  br i1 %cmp57, label %if.then.59, label %if.else.157

if.then.59:                                       ; preds = %if.end.56
  store i8 61, i8* %num_test, align 1
  store i64 0, i64* %fileval, align 8
  %26 = load i8*, i8** %value.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %27 to i32
  %cmp62 = icmp eq i32 %conv61, 62
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.59
  %28 = load i8*, i8** %value.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %29 to i32
  %cmp66 = icmp eq i32 %conv65, 60
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %lor.lhs.false, %if.then.59
  %30 = load i8*, i8** %value.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx69, align 1
  store i8 %31, i8* %num_test, align 1
  %32 = load i8*, i8** %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %value.addr, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %lor.lhs.false
  %call71 = call i32* @__errno_location() #5
  store i32 0, i32* %call71, align 4
  %33 = load i8*, i8** %value.addr, align 8
  %call72 = call i64 @strtol(i8* %33, i8** null, i32 0) #6
  store i64 %call72, i64* %num_testval, align 8
  %call73 = call i32* @__errno_location() #5
  %34 = load i32, i32* %call73, align 4
  %cmp74 = icmp ne i32 %34, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.70
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.70
  %35 = load i32, i32* %numbytes, align 4
  %cmp78 = icmp eq i32 %35, 5
  br i1 %cmp78, label %if.then.80, label %if.else.87

if.then.80:                                       ; preds = %if.end.77
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call81 = call i32 @fileno(%struct._IO_FILE* %36) #6
  %call82 = call i32 @fstat(i32 %call81, %struct.stat* %buf) #6
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.80
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.then.80
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %37 = load i64, i64* %st_size, align 8
  store i64 %37, i64* %fileval, align 8
  br label %if.end.126

if.else.87:                                       ; preds = %if.end.77
  %38 = load i64, i64* %offs, align 8
  %cmp88 = icmp sge i64 %38, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.102

land.lhs.true.90:                                 ; preds = %if.else.87
  %39 = load i64, i64* %offs, align 8
  %40 = load i32, i32* %numbytes, align 4
  %conv91 = sext i32 %40 to i64
  %add = add nsw i64 %39, %conv91
  %41 = load i32, i32* %headsize.addr, align 4
  %conv92 = sext i32 %41 to i64
  %cmp93 = icmp sle i64 %add, %conv92
  br i1 %cmp93, label %if.then.95, label %if.else.102

if.then.95:                                       ; preds = %land.lhs.true.90
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.95
  %42 = load i32, i32* %k, align 4
  %43 = load i32, i32* %numbytes, align 4
  %cmp96 = icmp slt i32 %42, %43
  br i1 %cmp96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i64, i64* %fileval, align 8
  %shl = shl i64 %44, 8
  %45 = load i64, i64* %offs, align 8
  %46 = load i32, i32* %k, align 4
  %conv98 = sext i32 %46 to i64
  %add99 = add nsw i64 %45, %conv98
  %47 = load i8*, i8** %file_head.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %47, i64 %add99
  %48 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %48 to i64
  %or = or i64 %shl, %conv101
  store i64 %or, i64* %fileval, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %k, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.125

if.else.102:                                      ; preds = %land.lhs.true.90, %if.else.87
  store i32 0, i32* %c, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %51 = load i64, i64* %offs, align 8
  %52 = load i64, i64* %offs, align 8
  %cmp103 = icmp sge i64 %52, 0
  %cond = select i1 %cmp103, i32 0, i32 2
  %call105 = call i32 @fseek(%struct._IO_FILE* %50, i64 %51, i32 %cond)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.else.102
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.else.102
  store i32 0, i32* %k, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.118, %if.end.109
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %numbytes, align 4
  %cmp111 = icmp slt i32 %53, %54
  br i1 %cmp111, label %for.body.113, label %for.end.120

for.body.113:                                     ; preds = %for.cond.110
  %55 = load i64, i64* %fileval, align 8
  %shl114 = shl i64 %55, 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call115 = call i32 @_IO_getc(%struct._IO_FILE* %56)
  store i32 %call115, i32* %c, align 4
  %conv116 = sext i32 %call115 to i64
  %or117 = or i64 %shl114, %conv116
  store i64 %or117, i64* %fileval, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.113
  %57 = load i32, i32* %k, align 4
  %inc119 = add nsw i32 %57, 1
  store i32 %inc119, i32* %k, align 4
  br label %for.cond.110

for.end.120:                                      ; preds = %for.cond.110
  %58 = load i32, i32* %c, align 4
  %cmp121 = icmp eq i32 %58, -1
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.end.120
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %for.end.120
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %for.end
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.86
  %59 = load i8, i8* %num_operator, align 1
  %conv127 = sext i8 %59 to i32
  %cmp128 = icmp eq i32 %conv127, 38
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.126
  %60 = load i64, i64* %num_operatorval, align 8
  %61 = load i64, i64* %fileval, align 8
  %and131 = and i64 %61, %60
  store i64 %and131, i64* %fileval, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.126
  %62 = load i8, i8* %num_test, align 1
  %conv133 = sext i8 %62 to i32
  %cmp134 = icmp eq i32 %conv133, 60
  br i1 %cmp134, label %if.then.136, label %if.else.139

if.then.136:                                      ; preds = %if.end.132
  %63 = load i64, i64* %fileval, align 8
  %64 = load i64, i64* %num_testval, align 8
  %cmp137 = icmp ult i64 %63, %64
  %conv138 = zext i1 %cmp137 to i32
  store i32 %conv138, i32* %found, align 4
  br label %if.end.150

if.else.139:                                      ; preds = %if.end.132
  %65 = load i8, i8* %num_test, align 1
  %conv140 = sext i8 %65 to i32
  %cmp141 = icmp eq i32 %conv140, 62
  br i1 %cmp141, label %if.then.143, label %if.else.146

if.then.143:                                      ; preds = %if.else.139
  %66 = load i64, i64* %fileval, align 8
  %67 = load i64, i64* %num_testval, align 8
  %cmp144 = icmp ugt i64 %66, %67
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %found, align 4
  br label %if.end.149

if.else.146:                                      ; preds = %if.else.139
  %68 = load i64, i64* %fileval, align 8
  %69 = load i64, i64* %num_testval, align 8
  %cmp147 = icmp eq i64 %68, %69
  %conv148 = zext i1 %cmp147 to i32
  store i32 %conv148, i32* %found, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.143
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.136
  %70 = load i32, i32* %found, align 4
  %tobool151 = icmp ne i32 %70, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.156

land.lhs.true.152:                                ; preds = %if.end.150
  %71 = load i32, i32* %numbytes, align 4
  %cmp153 = icmp eq i32 %71, 5
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %land.lhs.true.152
  store i32 2, i32* %found, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %land.lhs.true.152, %if.end.150
  br label %if.end.210

if.else.157:                                      ; preds = %if.end.56
  %72 = load i32, i32* %numbytes, align 4
  %cmp158 = icmp eq i32 %72, 0
  br i1 %cmp158, label %if.then.160, label %if.end.209

if.then.160:                                      ; preds = %if.else.157
  %73 = load i8*, i8** %value.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %mem_testval, i32 0, i32 0
  call void @file_convert_string(i8* %73, i8* %arraydecay, i32 256, i32* %numbytes)
  %74 = load i32, i32* %numbytes, align 4
  %cmp161 = icmp sle i32 %74, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.160
  store i32 0, i32* %retval
  br label %return

if.end.164:                                       ; preds = %if.then.160
  %75 = load i64, i64* %offs, align 8
  %cmp165 = icmp sge i64 %75, 0
  br i1 %cmp165, label %land.lhs.true.167, label %if.else.180

land.lhs.true.167:                                ; preds = %if.end.164
  %76 = load i64, i64* %offs, align 8
  %77 = load i32, i32* %numbytes, align 4
  %conv168 = sext i32 %77 to i64
  %add169 = add nsw i64 %76, %conv168
  %78 = load i32, i32* %headsize.addr, align 4
  %conv170 = sext i32 %78 to i64
  %cmp171 = icmp sle i64 %add169, %conv170
  br i1 %cmp171, label %if.then.173, label %if.else.180

if.then.173:                                      ; preds = %land.lhs.true.167
  %arraydecay174 = getelementptr inbounds [256 x i8], [256 x i8]* %mem_testval, i32 0, i32 0
  %79 = load i8*, i8** %file_head.addr, align 8
  %80 = load i64, i64* %offs, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %79, i64 %80
  %81 = load i32, i32* %numbytes, align 4
  %conv176 = sext i32 %81 to i64
  %call177 = call i32 @memcmp(i8* %arraydecay174, i8* %add.ptr175, i64 %conv176) #7
  %cmp178 = icmp eq i32 %call177, 0
  %conv179 = zext i1 %cmp178 to i32
  store i32 %conv179, i32* %found, align 4
  br label %if.end.208

if.else.180:                                      ; preds = %land.lhs.true.167, %if.end.164
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %83 = load i64, i64* %offs, align 8
  %84 = load i64, i64* %offs, align 8
  %cmp181 = icmp sge i64 %84, 0
  %cond183 = select i1 %cmp181, i32 0, i32 2
  %call184 = call i32 @fseek(%struct._IO_FILE* %82, i64 %83, i32 %cond183)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.else.180
  store i32 0, i32* %retval
  br label %return

if.end.188:                                       ; preds = %if.else.180
  store i32 1, i32* %found, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.205, %if.end.188
  %85 = load i32, i32* %found, align 4
  %tobool190 = icmp ne i32 %85, 0
  br i1 %tobool190, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.189
  %86 = load i32, i32* %k, align 4
  %87 = load i32, i32* %numbytes, align 4
  %cmp191 = icmp slt i32 %86, %87
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.189
  %88 = phi i1 [ false, %for.cond.189 ], [ %cmp191, %land.rhs ]
  br i1 %88, label %for.body.193, label %for.end.207

for.body.193:                                     ; preds = %land.end
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call195 = call i32 @_IO_getc(%struct._IO_FILE* %89)
  store i32 %call195, i32* %c194, align 4
  %90 = load i32, i32* %c194, align 4
  %cmp196 = icmp ne i32 %90, -1
  br i1 %cmp196, label %land.rhs.198, label %land.end.204

land.rhs.198:                                     ; preds = %for.body.193
  %91 = load i32, i32* %c194, align 4
  %92 = load i32, i32* %k, align 4
  %idxprom199 = sext i32 %92 to i64
  %arrayidx200 = getelementptr inbounds [256 x i8], [256 x i8]* %mem_testval, i32 0, i64 %idxprom199
  %93 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %93 to i32
  %cmp202 = icmp eq i32 %91, %conv201
  br label %land.end.204

land.end.204:                                     ; preds = %land.rhs.198, %for.body.193
  %94 = phi i1 [ false, %for.body.193 ], [ %cmp202, %land.rhs.198 ]
  %land.ext = zext i1 %94 to i32
  store i32 %land.ext, i32* %found, align 4
  br label %for.inc.205

for.inc.205:                                      ; preds = %land.end.204
  %95 = load i32, i32* %k, align 4
  %inc206 = add nsw i32 %95, 1
  store i32 %inc206, i32* %k, align 4
  br label %for.cond.189

for.end.207:                                      ; preds = %land.end
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.207, %if.then.173
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.else.157
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.156
  %96 = load i32, i32* %found, align 4
  store i32 %96, i32* %retval
  br label %return

return:                                           ; preds = %if.end.210, %if.then.187, %if.then.163, %if.then.123, %if.then.108, %if.then.85, %if.then.76, %if.else.20, %if.then
  %97 = load i32, i32* %retval
  ret i32 %97
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @file_convert_string(i8* %instr, i8* %outmem, i32 %maxmem, i32* %nmem) #0 {
entry:
  %instr.addr = alloca i8*, align 8
  %outmem.addr = alloca i8*, align 8
  %maxmem.addr = alloca i32, align 4
  %nmem.addr = alloca i32*, align 8
  %uin = alloca i8*, align 8
  %uout = alloca i8*, align 8
  %tmp = alloca [5 x i8], align 1
  %tmpptr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %instr, i8** %instr.addr, align 8
  store i8* %outmem, i8** %outmem.addr, align 8
  store i32 %maxmem, i32* %maxmem.addr, align 4
  store i32* %nmem, i32** %nmem.addr, align 8
  %0 = load i8*, i8** %instr.addr, align 8
  store i8* %0, i8** %uin, align 8
  %1 = load i8*, i8** %outmem.addr, align 8
  store i8* %1, i8** %uout, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then, %entry
  %2 = load i8*, i8** %uin, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %uout, align 8
  %5 = load i8*, i8** %outmem.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i32, i32* %maxmem.addr, align 4
  %conv4 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %sub.ptr.sub, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %uin, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp ne i32 %conv7, 92
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i8*, i8** %uin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %uin, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %uout, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %uout, align 8
  store i8 %11, i8* %12, align 1
  br label %while.cond

if.end:                                           ; preds = %while.body
  %13 = load i8*, i8** %uin, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %uin, align 8
  %14 = load i8, i8* %incdec.ptr11, align 1
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %15 = load i8*, i8** %uout, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr16, i8** %uout, align 8
  store i8 92, i8* %15, align 1
  br label %while.end

if.end.17:                                        ; preds = %if.end
  %16 = load i8*, i8** %uin, align 8
  %17 = load i8, i8* %16, align 1
  %conv18 = zext i8 %17 to i32
  switch i32 %conv18, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 97, label %sw.bb.46
    i32 98, label %sw.bb.49
    i32 116, label %sw.bb.52
    i32 110, label %sw.bb.55
    i32 118, label %sw.bb.58
    i32 102, label %sw.bb.61
    i32 114, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %if.end.17, %if.end.17, %if.end.17, %if.end.17
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %tmp, i32 0, i32 0
  store i8* %arraydecay, i8** %tmpptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.42, %sw.bb
  %18 = load i8*, i8** %tmpptr, align 8
  %arraydecay19 = getelementptr inbounds [5 x i8], [5 x i8]* %tmp, i32 0, i32 0
  %sub.ptr.lhs.cast20 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %arraydecay19 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %cmp23 = icmp sle i64 %sub.ptr.sub22, 3
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %uin, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr25, i8** %uin, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %tmpptr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr26, i8** %tmpptr, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %uin, align 8
  %23 = load i8, i8* %22, align 1
  %conv27 = zext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %24 = load i8*, i8** %uin, align 8
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i64
  %26 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %26, i64 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv30 = zext i16 %27 to i32
  %and = and i32 %conv30, 8
  %cmp31 = icmp ne i32 %and, 0
  br i1 %cmp31, label %lor.lhs.false.33, label %if.then.41

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %28 = load i8*, i8** %uin, align 8
  %29 = load i8, i8* %28, align 1
  %conv34 = zext i8 %29 to i32
  %cmp35 = icmp eq i32 %conv34, 56
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %30 = load i8*, i8** %uin, align 8
  %31 = load i8, i8* %30, align 1
  %conv38 = zext i8 %31 to i32
  %cmp39 = icmp eq i32 %conv38, 57
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false, %for.body
  br label %for.end

if.end.42:                                        ; preds = %lor.lhs.false.37
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %32 = load i8*, i8** %tmpptr, align 8
  store i8 0, i8* %32, align 1
  %arraydecay43 = getelementptr inbounds [5 x i8], [5 x i8]* %tmp, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32* %k) #6
  %33 = load i32, i32* %k, align 4
  %conv44 = trunc i32 %33 to i8
  %34 = load i8*, i8** %uout, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr45, i8** %uout, align 8
  store i8 %conv44, i8* %34, align 1
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.17
  %35 = load i8*, i8** %uout, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr47, i8** %uout, align 8
  store i8 7, i8* %35, align 1
  %36 = load i8*, i8** %uin, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr48, i8** %uin, align 8
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.17
  %37 = load i8*, i8** %uout, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr50, i8** %uout, align 8
  store i8 8, i8* %37, align 1
  %38 = load i8*, i8** %uin, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr51, i8** %uin, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.17
  %39 = load i8*, i8** %uout, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr53, i8** %uout, align 8
  store i8 9, i8* %39, align 1
  %40 = load i8*, i8** %uin, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr54, i8** %uin, align 8
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.17
  %41 = load i8*, i8** %uout, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr56, i8** %uout, align 8
  store i8 10, i8* %41, align 1
  %42 = load i8*, i8** %uin, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr57, i8** %uin, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.17
  %43 = load i8*, i8** %uout, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr59, i8** %uout, align 8
  store i8 11, i8* %43, align 1
  %44 = load i8*, i8** %uin, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr60, i8** %uin, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.17
  %45 = load i8*, i8** %uout, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr62, i8** %uout, align 8
  store i8 12, i8* %45, align 1
  %46 = load i8*, i8** %uin, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr63, i8** %uin, align 8
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.17
  %47 = load i8*, i8** %uout, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr65, i8** %uout, align 8
  store i8 13, i8* %47, align 1
  %48 = load i8*, i8** %uin, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr66, i8** %uin, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.17
  %49 = load i8*, i8** %uin, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr67, i8** %uin, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %uout, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr68, i8** %uout, align 8
  store i8 %50, i8* %51, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.64, %sw.bb.61, %sw.bb.58, %sw.bb.55, %sw.bb.52, %sw.bb.49, %sw.bb.46, %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %land.end
  %52 = load i8*, i8** %uout, align 8
  %53 = load i8*, i8** %outmem.addr, align 8
  %sub.ptr.lhs.cast69 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %53 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  %54 = load i32*, i32** %nmem.addr, align 8
  store i32 %conv72, i32* %54, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
