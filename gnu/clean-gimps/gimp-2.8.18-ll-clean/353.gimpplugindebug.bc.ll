; ModuleID = './app/plug-in/gimpplugindebug.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GDebugKey = type { i8*, i32 }
%struct._GimpPlugInDebug = type { i8*, i32, i8** }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GPtrArray = type { i8**, i32 }

@.str = private unnamed_addr constant [23 x i8] c"GIMP_PLUGIN_DEBUG_WRAP\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_PLUGIN_DEBUG_WRAPPER\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to parse debug wrapper: \22%s\22\0A%s\00", align 1
@gimp_debug_wrap_keys = internal constant [4 x %struct._GDebugKey] [%struct._GDebugKey { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct._GDebugKey { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 2 }, %struct._GDebugKey { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 4 }, %struct._GDebugKey { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 4 }], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_debug_free = private unnamed_addr constant [24 x i8] c"gimp_plug_in_debug_free\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"debug != NULL\00", align 1
@__func__.gimp_plug_in_debug_argv = private unnamed_addr constant [24 x i8] c"gimp_plug_in_debug_argv\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"on\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInDebug* @gimp_plug_in_debug_new() #0 {
entry:
  %retval = alloca %struct._GimpPlugInDebug*, align 8
  %debug = alloca %struct._GimpPlugInDebug*, align 8
  %wrap = alloca i8*, align 8
  %wrapper = alloca i8*, align 8
  %debug_string = alloca i8*, align 8
  %args = alloca i8**, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %wrap, align 8
  %call1 = call i8* @g_getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call1, i8** %wrapper, align 8
  %0 = load i8*, i8** %wrap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %wrapper, align 8
  %tobool2 = icmp ne i8* %1, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store %struct._GimpPlugInDebug* null, %struct._GimpPlugInDebug** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %2 = load i8*, i8** %wrapper, align 8
  %call3 = call i32 @g_shell_parse_argv(i8* %2, i32* null, i8*** %args, %struct._GError** %error)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %3 = load i8*, i8** %wrapper, align 8
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 2
  %5 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* %3, i8* %5)
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %6)
  store %struct._GimpPlugInDebug* null, %struct._GimpPlugInDebug** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call noalias i8* @g_slice_alloc(i64 24)
  %7 = bitcast i8* %call7 to %struct._GimpPlugInDebug*
  store %struct._GimpPlugInDebug* %7, %struct._GimpPlugInDebug** %debug, align 8
  %8 = load i8**, i8*** %args, align 8
  %9 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  %args8 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %9, i32 0, i32 2
  store i8** %8, i8*** %args8, align 8
  %10 = load i8*, i8** %wrap, align 8
  %call9 = call i8* @strchr(i8* %10, i32 44) #4
  store i8* %call9, i8** %debug_string, align 8
  %11 = load i8*, i8** %debug_string, align 8
  %tobool10 = icmp ne i8* %11, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.6
  %12 = load i8*, i8** %wrap, align 8
  %13 = load i8*, i8** %debug_string, align 8
  %14 = load i8*, i8** %wrap, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call12 = call noalias i8* @g_strndup(i8* %12, i64 %sub.ptr.sub)
  %15 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  %name = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %15, i32 0, i32 0
  store i8* %call12, i8** %name, align 8
  %16 = load i8*, i8** %debug_string, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %call13 = call i32 @g_parse_debug_string(i8* %add.ptr, %struct._GDebugKey* getelementptr inbounds ([4 x %struct._GDebugKey], [4 x %struct._GDebugKey]* @gimp_debug_wrap_keys, i32 0, i32 0), i32 4)
  %17 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  %flags = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %17, i32 0, i32 1
  store i32 %call13, i32* %flags, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end.6
  %18 = load i8*, i8** %wrap, align 8
  %call14 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  %name15 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %19, i32 0, i32 0
  store i8* %call14, i8** %name15, align 8
  %20 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  %flags16 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %20, i32 0, i32 1
  store i32 4, i32* %flags16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  %21 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug, align 8
  store %struct._GimpPlugInDebug* %21, %struct._GimpPlugInDebug** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.5, %if.then
  %22 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %retval
  ret %struct._GimpPlugInDebug* %22
}

declare i8* @g_getenv(i8*) #1

declare i32 @g_shell_parse_argv(i8*, i32*, i8***, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

declare noalias i8* @g_slice_alloc(i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare noalias i8* @g_strndup(i8*, i64) #1

declare i32 @g_parse_debug_string(i8*, %struct._GDebugKey*, i32) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_debug_free(%struct._GimpPlugInDebug* %debug) #0 {
entry:
  %debug.addr = alloca %struct._GimpPlugInDebug*, align 8
  store %struct._GimpPlugInDebug* %debug, %struct._GimpPlugInDebug** %debug.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInDebug* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_plug_in_debug_free, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.9

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %name = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %name2 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %3, i32 0, i32 0
  %4 = load i8*, i8** %name2, align 8
  call void @g_free(i8* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %5 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %args = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %5, i32 0, i32 2
  %6 = load i8**, i8*** %args, align 8
  %tobool4 = icmp ne i8** %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %args6 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %7, i32 0, i32 2
  %8 = load i8**, i8*** %args6, align 8
  call void @g_strfreev(i8** %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %9 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %10 = bitcast %struct._GimpPlugInDebug* %9 to i8*
  call void @g_slice_free1(i64 24, i8* %10)
  br label %do.end.9

do.end.9:                                         ; preds = %if.else, %do.body.8
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_strfreev(i8**) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_plug_in_debug_argv(%struct._GimpPlugInDebug* %debug, i8* %name, i32 %flag, i8** %args) #0 {
entry:
  %retval = alloca i8**, align 8
  %debug.addr = alloca %struct._GimpPlugInDebug*, align 8
  %name.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  %args.addr = alloca i8**, align 8
  %argv = alloca %struct._GPtrArray*, align 8
  %arg = alloca i8**, align 8
  %basename = alloca i8*, align 8
  store %struct._GimpPlugInDebug* %debug, %struct._GimpPlugInDebug** %debug.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i8** %args, i8*** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInDebug* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_plug_in_debug_argv, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_plug_in_debug_argv, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i8**, i8*** %args.addr, align 8
  %cmp8 = icmp ne i8** %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_plug_in_debug_argv, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_path_get_basename(i8* %3)
  store i8* %call, i8** %basename, align 8
  %4 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %flags = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %4, i32 0, i32 1
  %5 = load i32, i32* %flags, align 4
  %6 = load i32, i32* %flag.addr, align 4
  %and = and i32 %5, %6
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %do.end.12
  %7 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %name13 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %7, i32 0, i32 0
  %8 = load i8*, i8** %name13, align 8
  %9 = load i8*, i8** %basename, align 8
  %call14 = call i32 @strcmp(i8* %8, i8* %9) #4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %do.end.12
  %10 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %10)
  store i8** null, i8*** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  %11 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %11)
  %call18 = call %struct._GPtrArray* @g_ptr_array_sized_new(i32 8)
  store %struct._GPtrArray* %call18, %struct._GPtrArray** %argv, align 8
  %12 = load %struct._GimpPlugInDebug*, %struct._GimpPlugInDebug** %debug.addr, align 8
  %args19 = getelementptr inbounds %struct._GimpPlugInDebug, %struct._GimpPlugInDebug* %12, i32 0, i32 2
  %13 = load i8**, i8*** %args19, align 8
  store i8** %13, i8*** %arg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %14 = load i8**, i8*** %arg, align 8
  %15 = load i8*, i8** %14, align 8
  %cmp20 = icmp ne i8* %15, null
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GPtrArray*, %struct._GPtrArray** %argv, align 8
  %17 = load i8**, i8*** %arg, align 8
  %18 = load i8*, i8** %17, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %16, i8* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i8**, i8*** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %arg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8**, i8*** %args.addr, align 8
  store i8** %20, i8*** %arg, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.24, %for.end
  %21 = load i8**, i8*** %arg, align 8
  %22 = load i8*, i8** %21, align 8
  %cmp22 = icmp ne i8* %22, null
  br i1 %cmp22, label %for.body.23, label %for.end.26

for.body.23:                                      ; preds = %for.cond.21
  %23 = load %struct._GPtrArray*, %struct._GPtrArray** %argv, align 8
  %24 = load i8**, i8*** %arg, align 8
  %25 = load i8*, i8** %24, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %23, i8* %25)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.23
  %26 = load i8**, i8*** %arg, align 8
  %incdec.ptr25 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr25, i8*** %arg, align 8
  br label %for.cond.21

for.end.26:                                       ; preds = %for.cond.21
  %27 = load %struct._GPtrArray*, %struct._GPtrArray** %argv, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %27, i8* null)
  %28 = load %struct._GPtrArray*, %struct._GPtrArray** %argv, align 8
  %call27 = call i8** @g_ptr_array_free(%struct._GPtrArray* %28, i32 0)
  store i8** %call27, i8*** %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.16, %if.else.10, %if.else.4, %if.else
  %29 = load i8**, i8*** %retval
  ret i8** %29
}

declare noalias i8* @g_path_get_basename(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GPtrArray* @g_ptr_array_sized_new(i32) #1

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #1

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
