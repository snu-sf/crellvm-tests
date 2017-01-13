; ModuleID = './lib/darray.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@da_exit_error = global i32 1, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid size for dynamic array `%s': %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid increment for dynamic array `%s': %d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Dynamic array `%s':\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09load: %d/%d (%2.1f%%)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"[const]\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\09original size: %d, growth: %s %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"can't insert at %d in darray %s [0,%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"can't remove at %d in darray %s [0,%d]\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"da_qsort: QSORT_STACK too small (%d)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"[%2d] = \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.darray* @da_new(i8* %name, i64 %size, i32 %growth, i64 %increment, void (i8*, %struct._IO_FILE*)* %self_print, i32 (i8*, i8*)* %cmp) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %growth.addr = alloca i32, align 4
  %increment.addr = alloca i64, align 8
  %self_print.addr = alloca void (i8*, %struct._IO_FILE*)*, align 8
  %cmp.addr = alloca i32 (i8*, i8*)*, align 8
  %res = alloca %struct.darray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %growth, i32* %growth.addr, align 4
  store i64 %increment, i64* %increment.addr, align 8
  store void (i8*, %struct._IO_FILE*)* %self_print, void (i8*, %struct._IO_FILE*)** %self_print.addr, align 8
  store i32 (i8*, i8*)* %cmp, i32 (i8*, i8*)** %cmp.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @da_exit_error, align 4
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %increment.addr, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %growth.addr, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* @da_exit_error, align 4
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i64, i64* %increment.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 %6, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %7, i64 %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %call = call i8* @xmalloc(i64 72)
  %9 = bitcast i8* %call to %struct.darray*
  store %struct.darray* %9, %struct.darray** %res, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load %struct.darray*, %struct.darray** %res, align 8
  %name6 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 0
  store i8* %10, i8** %name6, align 8
  %12 = load i64, i64* %size.addr, align 8
  %13 = load %struct.darray*, %struct.darray** %res, align 8
  %original_size = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 2
  store i64 %12, i64* %original_size, align 8
  %14 = load i64, i64* %size.addr, align 8
  %15 = load %struct.darray*, %struct.darray** %res, align 8
  %size7 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 1
  store i64 %14, i64* %size7, align 8
  %16 = load %struct.darray*, %struct.darray** %res, align 8
  %size8 = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 1
  %17 = load i64, i64* %size8, align 8
  %call9 = call i8* @xcalloc(i64 8, i64 %17)
  %18 = bitcast i8* %call9 to i8**
  %19 = load %struct.darray*, %struct.darray** %res, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  store i8** %18, i8*** %content, align 8
  %20 = load i32, i32* %growth.addr, align 4
  %21 = load %struct.darray*, %struct.darray** %res, align 8
  %growth10 = getelementptr inbounds %struct.darray, %struct.darray* %21, i32 0, i32 3
  store i32 %20, i32* %growth10, align 4
  %22 = load i64, i64* %increment.addr, align 8
  %23 = load %struct.darray*, %struct.darray** %res, align 8
  %increment11 = getelementptr inbounds %struct.darray, %struct.darray* %23, i32 0, i32 4
  store i64 %22, i64* %increment11, align 8
  %24 = load %struct.darray*, %struct.darray** %res, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %24, i32 0, i32 5
  store i64 0, i64* %len, align 8
  %25 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %self_print.addr, align 8
  %26 = load %struct.darray*, %struct.darray** %res, align 8
  %self_print12 = getelementptr inbounds %struct.darray, %struct.darray* %26, i32 0, i32 7
  store void (i8*, %struct._IO_FILE*)* %25, void (i8*, %struct._IO_FILE*)** %self_print12, align 8
  %27 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %28 = load %struct.darray*, %struct.darray** %res, align 8
  %cmp13 = getelementptr inbounds %struct.darray, %struct.darray* %28, i32 0, i32 8
  store i32 (i8*, i8*)* %27, i32 (i8*, i8*)** %cmp13, align 8
  %29 = load %struct.darray*, %struct.darray** %res, align 8
  ret %struct.darray* %29
}

declare void @error(i32, i32, i8*, ...) #1

declare i8* @xmalloc(i64) #1

declare i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @da_erase(%struct.darray* %arr) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  call void @_da_erase(%struct.darray* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_da_erase(%struct.darray* %arr) #2 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %tobool = icmp ne %struct.darray* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 6
  %2 = load i8**, i8*** %content, align 8
  %tobool1 = icmp ne i8** %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content3 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 6
  %4 = load i8**, i8*** %content3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %7 = bitcast %struct.darray* %6 to i8*
  call void @free(i8* %7) #5
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_free_content(%struct.darray* %arr, void (i8*)* %free_func) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %1 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @_da_free_content(%struct.darray* %0, void (i8*)* %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_da_free_content(%struct.darray* %arr, void (i8*)* %free_func) #2 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %tobool = icmp ne void (i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 6
  %7 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %5
  %8 = load i8*, i8** %arrayidx, align 8
  call void %4(i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %10 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 5
  store i64 0, i64* %len1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_free(%struct.darray* %arr, void (i8*)* %free_func) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %1 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @_da_free_content(%struct.darray* %0, void (i8*)* %1)
  %2 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  call void @_da_erase(%struct.darray* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_print_stats(%struct.darray* %arr, %struct._IO_FILE* %stream) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* null, i8** %cp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %name = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %call, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #5
  %4 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 5
  %5 = load i64, i64* %len, align 8
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 1
  %7 = load i64, i64* %size, align 8
  %8 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len3 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len3, align 8
  %conv = uitofp i64 %9 to double
  %mul = fmul double 1.000000e+02, %conv
  %10 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size4 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 1
  %11 = load i64, i64* %size4, align 8
  %conv5 = uitofp i64 %11 to double
  %div = fdiv double %mul, %conv5
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %call2, i64 %5, i64 %7, double %div)
  %12 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %growth = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 3
  %13 = load i32, i32* %growth, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %cp, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %cp, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %cp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.8, %sw.bb.7, %sw.bb
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #5
  %15 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %original_size = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 2
  %16 = load i64, i64* %original_size, align 8
  %17 = load i8*, i8** %cp, align 8
  %18 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %increment = getelementptr inbounds %struct.darray, %struct.darray* %18, i32 0, i32 4
  %19 = load i64, i64* %increment, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* %call9, i64 %16, i8* %17, i64 %19)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define void @da_resize(%struct.darray* %arr, i64 %size) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %size.addr = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %4 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size1 = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 1
  store i64 %3, i64* %size1, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %7 = bitcast i8** %6 to i8*
  %8 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size2 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 1
  %9 = load i64, i64* %size2, align 8
  %mul = mul i64 8, %9
  %call = call i8* @xrealloc(i8* %7, i64 %mul)
  %10 = bitcast i8* %call to i8**
  %11 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content3 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  store i8** %10, i8*** %content3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @da_grow(%struct.darray* %arr) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %growth = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 3
  %1 = load i32, i32* %growth, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %increment = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 4
  %3 = load i64, i64* %increment, align 8
  %4 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 1
  %5 = load i64, i64* %size, align 8
  %add = add i64 %5, %3
  store i64 %add, i64* %size, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %increment3 = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 4
  %7 = load i64, i64* %increment3, align 8
  %8 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size4 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 1
  %9 = load i64, i64* %size4, align 8
  %mul = mul i64 %9, %7
  store i64 %mul, i64* %size4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1
  %10 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content, align 8
  %12 = bitcast i8** %11 to i8*
  %13 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size5 = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 1
  %14 = load i64, i64* %size5, align 8
  %mul6 = mul i64 8, %14
  %call = call i8* @xrealloc(i8* %12, i64 %mul6)
  %15 = bitcast i8* %call to i8**
  %16 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content7 = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 6
  store i8** %15, i8*** %content7, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.darray* @da_clone(%struct.darray* %array) #0 {
entry:
  %array.addr = alloca %struct.darray*, align 8
  %res = alloca %struct.darray*, align 8
  store %struct.darray* %array, %struct.darray** %array.addr, align 8
  %call = call i8* @xmalloc(i64 72)
  %0 = load %struct.darray*, %struct.darray** %array.addr, align 8
  %1 = bitcast %struct.darray* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %1, i64 72, i32 1, i1 false)
  %2 = bitcast i8* %call to %struct.darray*
  store %struct.darray* %2, %struct.darray** %res, align 8
  %3 = load %struct.darray*, %struct.darray** %array.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len, align 8
  %mul = mul i64 8, %4
  %call1 = call i8* @xmalloc(i64 %mul)
  %5 = load %struct.darray*, %struct.darray** %array.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %7 = bitcast i8** %6 to i8*
  %8 = load %struct.darray*, %struct.darray** %array.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len2, align 8
  %mul3 = mul i64 8, %9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call1, i8* %7, i64 %mul3, i32 1, i1 false)
  %10 = bitcast i8* %call1 to i8**
  %11 = load %struct.darray*, %struct.darray** %res, align 8
  %content4 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  store i8** %10, i8*** %content4, align 8
  %12 = load %struct.darray*, %struct.darray** %res, align 8
  ret %struct.darray* %12
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @da_is_sorted(%struct.darray* %arr) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp1 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 8
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp1, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 6
  %7 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %5
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i64, i64* %i, align 8
  %sub = sub i64 %9, 1
  %10 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content2 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %sub
  %12 = load i8*, i8** %arrayidx3, align 8
  %call = call i32 %4(i8* %8, i8* %12)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @da_equal(%struct.darray* %ar1, %struct.darray* %ar2) #0 {
entry:
  %retval = alloca i32, align 4
  %ar1.addr = alloca %struct.darray*, align 8
  %ar2.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %ar1, %struct.darray** %ar1.addr, align 8
  store %struct.darray* %ar2, %struct.darray** %ar2.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %2 = load %struct.darray*, %struct.darray** %ar2.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len1, align 8
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 5
  %6 = load i64, i64* %len2, align 8
  %cmp3 = icmp ult i64 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 6
  %9 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %7
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.darray*, %struct.darray** %ar2.addr, align 8
  %content4 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 6
  %13 = load i8**, i8*** %content4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %13, i64 %11
  %14 = load i8*, i8** %arrayidx5, align 8
  %cmp6 = icmp ne i8* %10, %14
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @da_cmp_equal(%struct.darray* %ar1, %struct.darray* %ar2) #0 {
entry:
  %retval = alloca i32, align 4
  %ar1.addr = alloca %struct.darray*, align 8
  %ar2.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %ar1, %struct.darray** %ar1.addr, align 8
  store %struct.darray* %ar2, %struct.darray** %ar2.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %2 = load %struct.darray*, %struct.darray** %ar2.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len1, align 8
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 5
  %6 = load i64, i64* %len2, align 8
  %cmp3 = icmp ult i64 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %cmp4 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 8
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp4, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.darray*, %struct.darray** %ar1.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %9
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.darray*, %struct.darray** %ar2.addr, align 8
  %content5 = getelementptr inbounds %struct.darray, %struct.darray* %14, i32 0, i32 6
  %15 = load i8**, i8*** %content5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %15, i64 %13
  %16 = load i8*, i8** %arrayidx6, align 8
  %call = call i32 %8(i8* %12, i8* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @da_where(%struct.darray* %arr, i8* %stuff) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca %struct.darray*, align 8
  %stuff.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i8* %stuff, i8** %stuff.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp1 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 8
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp1, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 6
  %7 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %5
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i8*, i8** %stuff.addr, align 8
  %call = call i32 %4(i8* %8, i8* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @da_includes(%struct.darray* %arr, i8* %stuff) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %stuff.addr = alloca i8*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i8* %stuff, i8** %stuff.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %1 = load i8*, i8** %stuff.addr, align 8
  %call = call i32 @da_where(%struct.darray* %0, i8* %1)
  %cmp = icmp ne i32 %call, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @da_append(%struct.darray* %arr, i8* %elem) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %elem.addr = alloca i8*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i8* %elem, i8** %elem.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 1
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  call void @da_grow(%struct.darray* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %elem.addr, align 8
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 5
  %7 = load i64, i64* %len1, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %len1, align 8
  %8 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 6
  %9 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %7
  store i8* %5, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_insert_at(%struct.darray* %arr, i8* %elem, i64 %where) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %elem.addr = alloca i8*, align 8
  %where.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i8* %elem, i8** %elem.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  %0 = load i64, i64* %where.addr, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @da_exit_error, align 4
  %4 = load i64, i64* %where.addr, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %name = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len1, align 8
  %sub = sub i64 %8, 1
  call void (i32, i32, i8*, ...) @error(i32 %3, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i64 %4, i8* %6, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 5
  %10 = load i64, i64* %len2, align 8
  %add = add i64 %10, 1
  %11 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 1
  %12 = load i64, i64* %size, align 8
  %cmp3 = icmp uge i64 %add, %12
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  call void @da_grow(%struct.darray* %13)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %14 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len6 = getelementptr inbounds %struct.darray, %struct.darray* %14, i32 0, i32 5
  %15 = load i64, i64* %len6, align 8
  store i64 %15, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %16 = load i64, i64* %where.addr, align 8
  %17 = load i64, i64* %i, align 8
  %cmp7 = icmp ult i64 %16, %17
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %sub8 = sub i64 %18, 1
  %19 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %sub8
  %21 = load i8*, i8** %arrayidx, align 8
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content9 = getelementptr inbounds %struct.darray, %struct.darray* %23, i32 0, i32 6
  %24 = load i8**, i8*** %content9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %24, i64 %22
  store i8* %21, i8** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, i64* %i, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i8*, i8** %elem.addr, align 8
  %27 = load i64, i64* %where.addr, align 8
  %28 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content11 = getelementptr inbounds %struct.darray, %struct.darray* %28, i32 0, i32 6
  %29 = load i8**, i8*** %content11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %29, i64 %27
  store i8* %26, i8** %arrayidx12, align 8
  %30 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len13 = getelementptr inbounds %struct.darray, %struct.darray* %30, i32 0, i32 5
  %31 = load i64, i64* %len13, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %len13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_remove_at(%struct.darray* %arr, i64 %where, void (i8*)* %free_func) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %where.addr = alloca i64, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %0 = load i64, i64* %where.addr, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @da_exit_error, align 4
  %4 = load i64, i64* %where.addr, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %name = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len1, align 8
  %sub = sub i64 %8, 1
  call void (i32, i32, i8*, ...) @error(i32 %3, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i64 %4, i8* %6, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %tobool = icmp ne void (i8*)* %9, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %10 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %11 = load i64, i64* %where.addr, align 8
  %12 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 6
  %13 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %11
  %14 = load i8*, i8** %arrayidx, align 8
  call void %10(i8* %14)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %15 = load i64, i64* %where.addr, align 8
  %add = add i64 %15, 1
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len4 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 5
  %18 = load i64, i64* %len4, align 8
  %cmp5 = icmp ult i64 %16, %18
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content6 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 6
  %21 = load i8**, i8*** %content6, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %21, i64 %19
  %22 = load i8*, i8** %arrayidx7, align 8
  %23 = load i64, i64* %i, align 8
  %sub8 = sub i64 %23, 1
  %24 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content9 = getelementptr inbounds %struct.darray, %struct.darray* %24, i32 0, i32 6
  %25 = load i8**, i8*** %content9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %25, i64 %sub8
  store i8* %22, i8** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i64, i64* %i, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len11 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 5
  %28 = load i64, i64* %len11, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %len11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_concat(%struct.darray* %arr, %struct.darray* %arr2) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %arr2.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store %struct.darray* %arr2, %struct.darray** %arr2.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len1, align 8
  %2 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len2, align 8
  %add = add i64 %1, %3
  store i64 %add, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 1
  %6 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %len, align 8
  %add3 = add i64 %7, 1
  %8 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size4 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 1
  store i64 %add3, i64* %size4, align 8
  %9 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 6
  %10 = load i8**, i8*** %content, align 8
  %11 = bitcast i8** %10 to i8*
  %12 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size5 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 1
  %13 = load i64, i64* %size5, align 8
  %mul = mul i64 8, %13
  %call = call i8* @xrealloc(i8* %11, i64 %mul)
  %14 = bitcast i8* %call to i8**
  %15 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content6 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 6
  store i8** %14, i8*** %content6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %len7 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 5
  %18 = load i64, i64* %len7, align 8
  %cmp8 = icmp ult i64 %16, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %content9 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 6
  %21 = load i8**, i8*** %content9, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %19
  %22 = load i8*, i8** %arrayidx, align 8
  %23 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len10 = getelementptr inbounds %struct.darray, %struct.darray* %23, i32 0, i32 5
  %24 = load i64, i64* %len10, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %len10, align 8
  %25 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content11 = getelementptr inbounds %struct.darray, %struct.darray* %25, i32 0, i32 6
  %26 = load i8**, i8*** %content11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %26, i64 %24
  store i8* %22, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %inc13 = add i64 %27, 1
  store i64 %inc13, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_prefix(%struct.darray* %arr, %struct.darray* %arr2) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %arr2.addr = alloca %struct.darray*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store %struct.darray* %arr2, %struct.darray** %arr2.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len1, align 8
  %2 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len2, align 8
  %add = add i64 %1, %3
  store i64 %add, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 1
  %6 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %len, align 8
  %add3 = add i64 %7, 1
  %8 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size4 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 1
  store i64 %add3, i64* %size4, align 8
  %9 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 6
  %10 = load i8**, i8*** %content, align 8
  %11 = bitcast i8** %10 to i8*
  %12 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %size5 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 1
  %13 = load i64, i64* %size5, align 8
  %mul = mul i64 8, %13
  %call = call i8* @xrealloc(i8* %11, i64 %mul)
  %14 = bitcast i8* %call to i8**
  %15 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content6 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 6
  store i8** %14, i8*** %content6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len7 = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 5
  %17 = load i64, i64* %len7, align 8
  %conv = trunc i64 %17 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %18, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content10 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 6
  %21 = load i8**, i8*** %content10, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8
  %23 = load i32, i32* %i, align 4
  %conv11 = sext i32 %23 to i64
  %24 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %len12 = getelementptr inbounds %struct.darray, %struct.darray* %24, i32 0, i32 5
  %25 = load i64, i64* %len12, align 8
  %add13 = add i64 %conv11, %25
  %26 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content14 = getelementptr inbounds %struct.darray, %struct.darray* %26, i32 0, i32 6
  %27 = load i8**, i8*** %content14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %27, i64 %add13
  store i8* %22, i8** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.28, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %len17 = getelementptr inbounds %struct.darray, %struct.darray* %30, i32 0, i32 5
  %31 = load i64, i64* %len17, align 8
  %conv18 = trunc i64 %31 to i32
  %cmp19 = icmp slt i32 %29, %conv18
  br i1 %cmp19, label %for.body.21, label %for.end.29

for.body.21:                                      ; preds = %for.cond.16
  %32 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %content23 = getelementptr inbounds %struct.darray, %struct.darray* %33, i32 0, i32 6
  %34 = load i8**, i8*** %content23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %34, i64 %idxprom22
  %35 = load i8*, i8** %arrayidx24, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %36 to i64
  %37 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content26 = getelementptr inbounds %struct.darray, %struct.darray* %37, i32 0, i32 6
  %38 = load i8**, i8*** %content26, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %38, i64 %idxprom25
  store i8* %35, i8** %arrayidx27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.21
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.16

for.end.29:                                       ; preds = %for.cond.16
  %40 = load %struct.darray*, %struct.darray** %arr2.addr, align 8
  %len30 = getelementptr inbounds %struct.darray, %struct.darray* %40, i32 0, i32 5
  %41 = load i64, i64* %len30, align 8
  %42 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len31 = getelementptr inbounds %struct.darray, %struct.darray* %42, i32 0, i32 5
  %43 = load i64, i64* %len31, align 8
  %add32 = add i64 %43, %41
  store i64 %add32, i64* %len31, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_qsort(%struct.darray* %arr) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %ir = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %jstack = alloca i32, align 4
  %istack = alloca i32*, align 8
  %a = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ule i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @xmalloc(i64 400)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %istack, align 8
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len1, align 8
  %sub = sub i64 %4, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %ir, align 4
  store i32 0, i32* %l, align 4
  store i32 0, i32* %jstack, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.227, %if.end
  %5 = load i32, i32* %ir, align 4
  %6 = load i32, i32* %l, align 4
  %sub2 = sub nsw i32 %5, %6
  %cmp3 = icmp slt i32 %sub2, 37
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.cond
  %7 = load i32, i32* %l, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.34, %if.then.5
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %ir, align 4
  %cmp7 = icmp sle i32 %8, %9
  br i1 %cmp7, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond.6
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  store i8* %13, i8** %a, align 8
  %14 = load i32, i32* %j, align 4
  %sub9 = sub nsw i32 %14, 1
  store i32 %sub9, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %l, align 4
  %cmp11 = icmp sge i32 %15, %16
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %17 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp14 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 8
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp14, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content16 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 6
  %21 = load i8**, i8*** %content16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %21, i64 %idxprom15
  %22 = load i8*, i8** %arrayidx17, align 8
  %23 = load i8*, i8** %a, align 8
  %call18 = call i32 %18(i8* %22, i8* %23)
  %cmp19 = icmp sle i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.13
  br label %for.end

if.end.22:                                        ; preds = %for.body.13
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content24 = getelementptr inbounds %struct.darray, %struct.darray* %25, i32 0, i32 6
  %26 = load i8**, i8*** %content24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %26, i64 %idxprom23
  %27 = load i8*, i8** %arrayidx25, align 8
  %28 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %28, 1
  %idxprom27 = sext i32 %add26 to i64
  %29 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content28 = getelementptr inbounds %struct.darray, %struct.darray* %29, i32 0, i32 6
  %30 = load i8**, i8*** %content28, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %30, i64 %idxprom27
  store i8* %27, i8** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %if.then.21, %for.cond.10
  %32 = load i8*, i8** %a, align 8
  %33 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %33, 1
  %idxprom31 = sext i32 %add30 to i64
  %34 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content32 = getelementptr inbounds %struct.darray, %struct.darray* %34, i32 0, i32 6
  %35 = load i8**, i8*** %content32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %35, i64 %idxprom31
  store i8* %32, i8** %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end.35:                                       ; preds = %for.cond.6
  %37 = load i32, i32* %jstack, align 4
  %cmp36 = icmp eq i32 %37, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.35
  br label %for.end.228

if.end.39:                                        ; preds = %for.end.35
  %38 = load i32, i32* %jstack, align 4
  %dec40 = add nsw i32 %38, -1
  store i32 %dec40, i32* %jstack, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32*, i32** %istack, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %39, i64 %idxprom41
  %40 = load i32, i32* %arrayidx42, align 4
  store i32 %40, i32* %ir, align 4
  %41 = load i32, i32* %jstack, align 4
  %dec43 = add nsw i32 %41, -1
  store i32 %dec43, i32* %jstack, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i32*, i32** %istack, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %42, i64 %idxprom44
  %43 = load i32, i32* %arrayidx45, align 4
  store i32 %43, i32* %l, align 4
  br label %if.end.227

if.else:                                          ; preds = %for.cond
  %44 = load i32, i32* %l, align 4
  %45 = load i32, i32* %ir, align 4
  %add46 = add nsw i32 %44, %45
  %div = sdiv i32 %add46, 2
  store i32 %div, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %46 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content48 = getelementptr inbounds %struct.darray, %struct.darray* %47, i32 0, i32 6
  %48 = load i8**, i8*** %content48, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %48, i64 %idxprom47
  %49 = load i8*, i8** %arrayidx49, align 8
  store i8* %49, i8** %tmp, align 8
  %50 = load i32, i32* %l, align 4
  %add50 = add nsw i32 %50, 1
  %idxprom51 = sext i32 %add50 to i64
  %51 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content52 = getelementptr inbounds %struct.darray, %struct.darray* %51, i32 0, i32 6
  %52 = load i8**, i8*** %content52, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %52, i64 %idxprom51
  %53 = load i8*, i8** %arrayidx53, align 8
  %54 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content55 = getelementptr inbounds %struct.darray, %struct.darray* %55, i32 0, i32 6
  %56 = load i8**, i8*** %content55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %56, i64 %idxprom54
  store i8* %53, i8** %arrayidx56, align 8
  %57 = load i8*, i8** %tmp, align 8
  %58 = load i32, i32* %l, align 4
  %add57 = add nsw i32 %58, 1
  %idxprom58 = sext i32 %add57 to i64
  %59 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content59 = getelementptr inbounds %struct.darray, %struct.darray* %59, i32 0, i32 6
  %60 = load i8**, i8*** %content59, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %60, i64 %idxprom58
  store i8* %57, i8** %arrayidx60, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %61 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp61 = getelementptr inbounds %struct.darray, %struct.darray* %61, i32 0, i32 8
  %62 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp61, align 8
  %63 = load i32, i32* %l, align 4
  %idxprom62 = sext i32 %63 to i64
  %64 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content63 = getelementptr inbounds %struct.darray, %struct.darray* %64, i32 0, i32 6
  %65 = load i8**, i8*** %content63, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %65, i64 %idxprom62
  %66 = load i8*, i8** %arrayidx64, align 8
  %67 = load i32, i32* %ir, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content66 = getelementptr inbounds %struct.darray, %struct.darray* %68, i32 0, i32 6
  %69 = load i8**, i8*** %content66, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %69, i64 %idxprom65
  %70 = load i8*, i8** %arrayidx67, align 8
  %call68 = call i32 %62(i8* %66, i8* %70)
  %cmp69 = icmp sgt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.86

if.then.71:                                       ; preds = %do.end
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %71 = load i32, i32* %l, align 4
  %idxprom73 = sext i32 %71 to i64
  %72 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content74 = getelementptr inbounds %struct.darray, %struct.darray* %72, i32 0, i32 6
  %73 = load i8**, i8*** %content74, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %73, i64 %idxprom73
  %74 = load i8*, i8** %arrayidx75, align 8
  store i8* %74, i8** %tmp, align 8
  %75 = load i32, i32* %ir, align 4
  %idxprom76 = sext i32 %75 to i64
  %76 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content77 = getelementptr inbounds %struct.darray, %struct.darray* %76, i32 0, i32 6
  %77 = load i8**, i8*** %content77, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %77, i64 %idxprom76
  %78 = load i8*, i8** %arrayidx78, align 8
  %79 = load i32, i32* %l, align 4
  %idxprom79 = sext i32 %79 to i64
  %80 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content80 = getelementptr inbounds %struct.darray, %struct.darray* %80, i32 0, i32 6
  %81 = load i8**, i8*** %content80, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %81, i64 %idxprom79
  store i8* %78, i8** %arrayidx81, align 8
  %82 = load i8*, i8** %tmp, align 8
  %83 = load i32, i32* %ir, align 4
  %idxprom82 = sext i32 %83 to i64
  %84 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content83 = getelementptr inbounds %struct.darray, %struct.darray* %84, i32 0, i32 6
  %85 = load i8**, i8*** %content83, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %85, i64 %idxprom82
  store i8* %82, i8** %arrayidx84, align 8
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.72
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.end
  %86 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp87 = getelementptr inbounds %struct.darray, %struct.darray* %86, i32 0, i32 8
  %87 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp87, align 8
  %88 = load i32, i32* %l, align 4
  %add88 = add nsw i32 %88, 1
  %idxprom89 = sext i32 %add88 to i64
  %89 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content90 = getelementptr inbounds %struct.darray, %struct.darray* %89, i32 0, i32 6
  %90 = load i8**, i8*** %content90, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %90, i64 %idxprom89
  %91 = load i8*, i8** %arrayidx91, align 8
  %92 = load i32, i32* %ir, align 4
  %idxprom92 = sext i32 %92 to i64
  %93 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content93 = getelementptr inbounds %struct.darray, %struct.darray* %93, i32 0, i32 6
  %94 = load i8**, i8*** %content93, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %94, i64 %idxprom92
  %95 = load i8*, i8** %arrayidx94, align 8
  %call95 = call i32 %87(i8* %91, i8* %95)
  %cmp96 = icmp sgt i32 %call95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.115

if.then.98:                                       ; preds = %if.end.86
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.98
  %96 = load i32, i32* %l, align 4
  %add100 = add nsw i32 %96, 1
  %idxprom101 = sext i32 %add100 to i64
  %97 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content102 = getelementptr inbounds %struct.darray, %struct.darray* %97, i32 0, i32 6
  %98 = load i8**, i8*** %content102, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %98, i64 %idxprom101
  %99 = load i8*, i8** %arrayidx103, align 8
  store i8* %99, i8** %tmp, align 8
  %100 = load i32, i32* %ir, align 4
  %idxprom104 = sext i32 %100 to i64
  %101 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content105 = getelementptr inbounds %struct.darray, %struct.darray* %101, i32 0, i32 6
  %102 = load i8**, i8*** %content105, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %102, i64 %idxprom104
  %103 = load i8*, i8** %arrayidx106, align 8
  %104 = load i32, i32* %l, align 4
  %add107 = add nsw i32 %104, 1
  %idxprom108 = sext i32 %add107 to i64
  %105 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content109 = getelementptr inbounds %struct.darray, %struct.darray* %105, i32 0, i32 6
  %106 = load i8**, i8*** %content109, align 8
  %arrayidx110 = getelementptr inbounds i8*, i8** %106, i64 %idxprom108
  store i8* %103, i8** %arrayidx110, align 8
  %107 = load i8*, i8** %tmp, align 8
  %108 = load i32, i32* %ir, align 4
  %idxprom111 = sext i32 %108 to i64
  %109 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content112 = getelementptr inbounds %struct.darray, %struct.darray* %109, i32 0, i32 6
  %110 = load i8**, i8*** %content112, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %110, i64 %idxprom111
  store i8* %107, i8** %arrayidx113, align 8
  br label %do.end.114

do.end.114:                                       ; preds = %do.body.99
  br label %if.end.115

if.end.115:                                       ; preds = %do.end.114, %if.end.86
  %111 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp116 = getelementptr inbounds %struct.darray, %struct.darray* %111, i32 0, i32 8
  %112 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp116, align 8
  %113 = load i32, i32* %l, align 4
  %idxprom117 = sext i32 %113 to i64
  %114 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content118 = getelementptr inbounds %struct.darray, %struct.darray* %114, i32 0, i32 6
  %115 = load i8**, i8*** %content118, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %115, i64 %idxprom117
  %116 = load i8*, i8** %arrayidx119, align 8
  %117 = load i32, i32* %l, align 4
  %add120 = add nsw i32 %117, 1
  %idxprom121 = sext i32 %add120 to i64
  %118 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content122 = getelementptr inbounds %struct.darray, %struct.darray* %118, i32 0, i32 6
  %119 = load i8**, i8*** %content122, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %119, i64 %idxprom121
  %120 = load i8*, i8** %arrayidx123, align 8
  %call124 = call i32 %112(i8* %116, i8* %120)
  %cmp125 = icmp sgt i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.144

if.then.127:                                      ; preds = %if.end.115
  br label %do.body.128

do.body.128:                                      ; preds = %if.then.127
  %121 = load i32, i32* %l, align 4
  %idxprom129 = sext i32 %121 to i64
  %122 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content130 = getelementptr inbounds %struct.darray, %struct.darray* %122, i32 0, i32 6
  %123 = load i8**, i8*** %content130, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %123, i64 %idxprom129
  %124 = load i8*, i8** %arrayidx131, align 8
  store i8* %124, i8** %tmp, align 8
  %125 = load i32, i32* %l, align 4
  %add132 = add nsw i32 %125, 1
  %idxprom133 = sext i32 %add132 to i64
  %126 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content134 = getelementptr inbounds %struct.darray, %struct.darray* %126, i32 0, i32 6
  %127 = load i8**, i8*** %content134, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %127, i64 %idxprom133
  %128 = load i8*, i8** %arrayidx135, align 8
  %129 = load i32, i32* %l, align 4
  %idxprom136 = sext i32 %129 to i64
  %130 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content137 = getelementptr inbounds %struct.darray, %struct.darray* %130, i32 0, i32 6
  %131 = load i8**, i8*** %content137, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %131, i64 %idxprom136
  store i8* %128, i8** %arrayidx138, align 8
  %132 = load i8*, i8** %tmp, align 8
  %133 = load i32, i32* %l, align 4
  %add139 = add nsw i32 %133, 1
  %idxprom140 = sext i32 %add139 to i64
  %134 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content141 = getelementptr inbounds %struct.darray, %struct.darray* %134, i32 0, i32 6
  %135 = load i8**, i8*** %content141, align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %135, i64 %idxprom140
  store i8* %132, i8** %arrayidx142, align 8
  br label %do.end.143

do.end.143:                                       ; preds = %do.body.128
  br label %if.end.144

if.end.144:                                       ; preds = %do.end.143, %if.end.115
  %136 = load i32, i32* %l, align 4
  %add145 = add nsw i32 %136, 1
  store i32 %add145, i32* %i, align 4
  %137 = load i32, i32* %ir, align 4
  store i32 %137, i32* %j, align 4
  %138 = load i32, i32* %l, align 4
  %add146 = add nsw i32 %138, 1
  %idxprom147 = sext i32 %add146 to i64
  %139 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content148 = getelementptr inbounds %struct.darray, %struct.darray* %139, i32 0, i32 6
  %140 = load i8**, i8*** %content148, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %140, i64 %idxprom147
  %141 = load i8*, i8** %arrayidx149, align 8
  store i8* %141, i8** %a, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %do.end.190, %if.end.144
  br label %do.body.151

do.body.151:                                      ; preds = %do.cond, %for.cond.150
  %142 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %142, 1
  store i32 %inc152, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.151
  %143 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp153 = getelementptr inbounds %struct.darray, %struct.darray* %143, i32 0, i32 8
  %144 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp153, align 8
  %145 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %145 to i64
  %146 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content155 = getelementptr inbounds %struct.darray, %struct.darray* %146, i32 0, i32 6
  %147 = load i8**, i8*** %content155, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %147, i64 %idxprom154
  %148 = load i8*, i8** %arrayidx156, align 8
  %149 = load i8*, i8** %a, align 8
  %call157 = call i32 %144(i8* %148, i8* %149)
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %do.body.151, label %do.end.160

do.end.160:                                       ; preds = %do.cond
  br label %do.body.161

do.body.161:                                      ; preds = %do.cond.163, %do.end.160
  %150 = load i32, i32* %j, align 4
  %dec162 = add nsw i32 %150, -1
  store i32 %dec162, i32* %j, align 4
  br label %do.cond.163

do.cond.163:                                      ; preds = %do.body.161
  %151 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp164 = getelementptr inbounds %struct.darray, %struct.darray* %151, i32 0, i32 8
  %152 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp164, align 8
  %153 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %153 to i64
  %154 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content166 = getelementptr inbounds %struct.darray, %struct.darray* %154, i32 0, i32 6
  %155 = load i8**, i8*** %content166, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %155, i64 %idxprom165
  %156 = load i8*, i8** %arrayidx167, align 8
  %157 = load i8*, i8** %a, align 8
  %call168 = call i32 %152(i8* %156, i8* %157)
  %cmp169 = icmp sgt i32 %call168, 0
  br i1 %cmp169, label %do.body.161, label %do.end.171

do.end.171:                                       ; preds = %do.cond.163
  %158 = load i32, i32* %j, align 4
  %159 = load i32, i32* %i, align 4
  %cmp172 = icmp slt i32 %158, %159
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %do.end.171
  br label %for.end.191

if.end.175:                                       ; preds = %do.end.171
  br label %do.body.176

do.body.176:                                      ; preds = %if.end.175
  %160 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %160 to i64
  %161 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content178 = getelementptr inbounds %struct.darray, %struct.darray* %161, i32 0, i32 6
  %162 = load i8**, i8*** %content178, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %162, i64 %idxprom177
  %163 = load i8*, i8** %arrayidx179, align 8
  store i8* %163, i8** %tmp, align 8
  %164 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %164 to i64
  %165 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content181 = getelementptr inbounds %struct.darray, %struct.darray* %165, i32 0, i32 6
  %166 = load i8**, i8*** %content181, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %166, i64 %idxprom180
  %167 = load i8*, i8** %arrayidx182, align 8
  %168 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %168 to i64
  %169 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content184 = getelementptr inbounds %struct.darray, %struct.darray* %169, i32 0, i32 6
  %170 = load i8**, i8*** %content184, align 8
  %arrayidx185 = getelementptr inbounds i8*, i8** %170, i64 %idxprom183
  store i8* %167, i8** %arrayidx185, align 8
  %171 = load i8*, i8** %tmp, align 8
  %172 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %172 to i64
  %173 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content187 = getelementptr inbounds %struct.darray, %struct.darray* %173, i32 0, i32 6
  %174 = load i8**, i8*** %content187, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %174, i64 %idxprom186
  store i8* %171, i8** %arrayidx188, align 8
  br label %do.end.190

do.end.190:                                       ; preds = %do.body.176
  br label %for.cond.150

for.end.191:                                      ; preds = %if.then.174
  %175 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %175 to i64
  %176 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content193 = getelementptr inbounds %struct.darray, %struct.darray* %176, i32 0, i32 6
  %177 = load i8**, i8*** %content193, align 8
  %arrayidx194 = getelementptr inbounds i8*, i8** %177, i64 %idxprom192
  %178 = load i8*, i8** %arrayidx194, align 8
  %179 = load i32, i32* %l, align 4
  %add195 = add nsw i32 %179, 1
  %idxprom196 = sext i32 %add195 to i64
  %180 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content197 = getelementptr inbounds %struct.darray, %struct.darray* %180, i32 0, i32 6
  %181 = load i8**, i8*** %content197, align 8
  %arrayidx198 = getelementptr inbounds i8*, i8** %181, i64 %idxprom196
  store i8* %178, i8** %arrayidx198, align 8
  %182 = load i8*, i8** %a, align 8
  %183 = load i32, i32* %j, align 4
  %idxprom199 = sext i32 %183 to i64
  %184 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content200 = getelementptr inbounds %struct.darray, %struct.darray* %184, i32 0, i32 6
  %185 = load i8**, i8*** %content200, align 8
  %arrayidx201 = getelementptr inbounds i8*, i8** %185, i64 %idxprom199
  store i8* %182, i8** %arrayidx201, align 8
  %186 = load i32, i32* %jstack, align 4
  %add202 = add nsw i32 %186, 2
  store i32 %add202, i32* %jstack, align 4
  %187 = load i32, i32* %jstack, align 4
  %cmp203 = icmp sgt i32 %187, 100
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %for.end.191
  %188 = load i32, i32* @da_exit_error, align 4
  call void (i32, i32, i8*, ...) @error(i32 %188, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 100)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %for.end.191
  %189 = load i32, i32* %ir, align 4
  %190 = load i32, i32* %i, align 4
  %sub207 = sub nsw i32 %189, %190
  %add208 = add nsw i32 %sub207, 1
  %191 = load i32, i32* %j, align 4
  %192 = load i32, i32* %l, align 4
  %sub209 = sub nsw i32 %191, %192
  %cmp210 = icmp sge i32 %add208, %sub209
  br i1 %cmp210, label %if.then.212, label %if.else.219

if.then.212:                                      ; preds = %if.end.206
  %193 = load i32, i32* %ir, align 4
  %194 = load i32, i32* %jstack, align 4
  %idxprom213 = sext i32 %194 to i64
  %195 = load i32*, i32** %istack, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %195, i64 %idxprom213
  store i32 %193, i32* %arrayidx214, align 4
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %jstack, align 4
  %sub215 = sub nsw i32 %197, 1
  %idxprom216 = sext i32 %sub215 to i64
  %198 = load i32*, i32** %istack, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %198, i64 %idxprom216
  store i32 %196, i32* %arrayidx217, align 4
  %199 = load i32, i32* %j, align 4
  %sub218 = sub nsw i32 %199, 1
  store i32 %sub218, i32* %ir, align 4
  br label %if.end.226

if.else.219:                                      ; preds = %if.end.206
  %200 = load i32, i32* %j, align 4
  %sub220 = sub nsw i32 %200, 1
  %201 = load i32, i32* %jstack, align 4
  %idxprom221 = sext i32 %201 to i64
  %202 = load i32*, i32** %istack, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %202, i64 %idxprom221
  store i32 %sub220, i32* %arrayidx222, align 4
  %203 = load i32, i32* %l, align 4
  %204 = load i32, i32* %jstack, align 4
  %sub223 = sub nsw i32 %204, 1
  %idxprom224 = sext i32 %sub223 to i64
  %205 = load i32*, i32** %istack, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %205, i64 %idxprom224
  store i32 %203, i32* %arrayidx225, align 4
  %206 = load i32, i32* %i, align 4
  store i32 %206, i32* %l, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.219, %if.then.212
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.39
  br label %for.cond

for.end.228:                                      ; preds = %if.then.38
  %207 = load i32*, i32** %istack, align 8
  %208 = bitcast i32* %207 to i8*
  call void @free(i8* %208) #5
  br label %return

return:                                           ; preds = %for.end.228, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @da_qsort_with_arg(%struct.darray* %arr, i32 (i8*, i8*, i8*)* %cmp, i8* %arg) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %cmp.addr = alloca i32 (i8*, i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %ir = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %jstack = alloca i32, align 4
  %istack = alloca i32*, align 8
  %a = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i32 (i8*, i8*, i8*)* %cmp, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %cmp1 = icmp ule i64 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @xmalloc(i64 400)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %istack, align 8
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len2, align 8
  %sub = sub i64 %4, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %ir, align 4
  store i32 0, i32* %l, align 4
  store i32 0, i32* %jstack, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.222, %if.end
  %5 = load i32, i32* %ir, align 4
  %6 = load i32, i32* %l, align 4
  %sub3 = sub nsw i32 %5, %6
  %cmp4 = icmp slt i32 %sub3, 37
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.cond
  %7 = load i32, i32* %l, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.34, %if.then.6
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %ir, align 4
  %cmp8 = icmp sle i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond.7
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  store i8* %13, i8** %a, align 8
  %14 = load i32, i32* %j, align 4
  %sub10 = sub nsw i32 %14, 1
  store i32 %sub10, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %l, align 4
  %cmp12 = icmp sge i32 %15, %16
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %17 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content16 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %20, i64 %idxprom15
  %21 = load i8*, i8** %arrayidx17, align 8
  %22 = load i8*, i8** %a, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call18 = call i32 %17(i8* %21, i8* %22, i8* %23)
  %cmp19 = icmp sle i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.14
  br label %for.end

if.end.22:                                        ; preds = %for.body.14
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content24 = getelementptr inbounds %struct.darray, %struct.darray* %25, i32 0, i32 6
  %26 = load i8**, i8*** %content24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %26, i64 %idxprom23
  %27 = load i8*, i8** %arrayidx25, align 8
  %28 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %28, 1
  %idxprom27 = sext i32 %add26 to i64
  %29 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content28 = getelementptr inbounds %struct.darray, %struct.darray* %29, i32 0, i32 6
  %30 = load i8**, i8*** %content28, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %30, i64 %idxprom27
  store i8* %27, i8** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then.21, %for.cond.11
  %32 = load i8*, i8** %a, align 8
  %33 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %33, 1
  %idxprom31 = sext i32 %add30 to i64
  %34 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content32 = getelementptr inbounds %struct.darray, %struct.darray* %34, i32 0, i32 6
  %35 = load i8**, i8*** %content32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %35, i64 %idxprom31
  store i8* %32, i8** %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end.35:                                       ; preds = %for.cond.7
  %37 = load i32, i32* %jstack, align 4
  %cmp36 = icmp eq i32 %37, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.35
  br label %for.end.223

if.end.39:                                        ; preds = %for.end.35
  %38 = load i32, i32* %jstack, align 4
  %dec40 = add nsw i32 %38, -1
  store i32 %dec40, i32* %jstack, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32*, i32** %istack, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %39, i64 %idxprom41
  %40 = load i32, i32* %arrayidx42, align 4
  store i32 %40, i32* %ir, align 4
  %41 = load i32, i32* %jstack, align 4
  %dec43 = add nsw i32 %41, -1
  store i32 %dec43, i32* %jstack, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i32*, i32** %istack, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %42, i64 %idxprom44
  %43 = load i32, i32* %arrayidx45, align 4
  store i32 %43, i32* %l, align 4
  br label %if.end.222

if.else:                                          ; preds = %for.cond
  %44 = load i32, i32* %l, align 4
  %45 = load i32, i32* %ir, align 4
  %add46 = add nsw i32 %44, %45
  %div = sdiv i32 %add46, 2
  store i32 %div, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %46 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content48 = getelementptr inbounds %struct.darray, %struct.darray* %47, i32 0, i32 6
  %48 = load i8**, i8*** %content48, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %48, i64 %idxprom47
  %49 = load i8*, i8** %arrayidx49, align 8
  store i8* %49, i8** %tmp, align 8
  %50 = load i32, i32* %l, align 4
  %add50 = add nsw i32 %50, 1
  %idxprom51 = sext i32 %add50 to i64
  %51 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content52 = getelementptr inbounds %struct.darray, %struct.darray* %51, i32 0, i32 6
  %52 = load i8**, i8*** %content52, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %52, i64 %idxprom51
  %53 = load i8*, i8** %arrayidx53, align 8
  %54 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content55 = getelementptr inbounds %struct.darray, %struct.darray* %55, i32 0, i32 6
  %56 = load i8**, i8*** %content55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %56, i64 %idxprom54
  store i8* %53, i8** %arrayidx56, align 8
  %57 = load i8*, i8** %tmp, align 8
  %58 = load i32, i32* %l, align 4
  %add57 = add nsw i32 %58, 1
  %idxprom58 = sext i32 %add57 to i64
  %59 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content59 = getelementptr inbounds %struct.darray, %struct.darray* %59, i32 0, i32 6
  %60 = load i8**, i8*** %content59, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %60, i64 %idxprom58
  store i8* %57, i8** %arrayidx60, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %61 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  %62 = load i32, i32* %l, align 4
  %idxprom61 = sext i32 %62 to i64
  %63 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content62 = getelementptr inbounds %struct.darray, %struct.darray* %63, i32 0, i32 6
  %64 = load i8**, i8*** %content62, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %64, i64 %idxprom61
  %65 = load i8*, i8** %arrayidx63, align 8
  %66 = load i32, i32* %ir, align 4
  %idxprom64 = sext i32 %66 to i64
  %67 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content65 = getelementptr inbounds %struct.darray, %struct.darray* %67, i32 0, i32 6
  %68 = load i8**, i8*** %content65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %68, i64 %idxprom64
  %69 = load i8*, i8** %arrayidx66, align 8
  %70 = load i8*, i8** %arg.addr, align 8
  %call67 = call i32 %61(i8* %65, i8* %69, i8* %70)
  %cmp68 = icmp sgt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.85

if.then.70:                                       ; preds = %do.end
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %71 = load i32, i32* %l, align 4
  %idxprom72 = sext i32 %71 to i64
  %72 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content73 = getelementptr inbounds %struct.darray, %struct.darray* %72, i32 0, i32 6
  %73 = load i8**, i8*** %content73, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %73, i64 %idxprom72
  %74 = load i8*, i8** %arrayidx74, align 8
  store i8* %74, i8** %tmp, align 8
  %75 = load i32, i32* %ir, align 4
  %idxprom75 = sext i32 %75 to i64
  %76 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content76 = getelementptr inbounds %struct.darray, %struct.darray* %76, i32 0, i32 6
  %77 = load i8**, i8*** %content76, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %77, i64 %idxprom75
  %78 = load i8*, i8** %arrayidx77, align 8
  %79 = load i32, i32* %l, align 4
  %idxprom78 = sext i32 %79 to i64
  %80 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content79 = getelementptr inbounds %struct.darray, %struct.darray* %80, i32 0, i32 6
  %81 = load i8**, i8*** %content79, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %81, i64 %idxprom78
  store i8* %78, i8** %arrayidx80, align 8
  %82 = load i8*, i8** %tmp, align 8
  %83 = load i32, i32* %ir, align 4
  %idxprom81 = sext i32 %83 to i64
  %84 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content82 = getelementptr inbounds %struct.darray, %struct.darray* %84, i32 0, i32 6
  %85 = load i8**, i8*** %content82, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %85, i64 %idxprom81
  store i8* %82, i8** %arrayidx83, align 8
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.71
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.end
  %86 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  %87 = load i32, i32* %l, align 4
  %add86 = add nsw i32 %87, 1
  %idxprom87 = sext i32 %add86 to i64
  %88 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content88 = getelementptr inbounds %struct.darray, %struct.darray* %88, i32 0, i32 6
  %89 = load i8**, i8*** %content88, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %89, i64 %idxprom87
  %90 = load i8*, i8** %arrayidx89, align 8
  %91 = load i32, i32* %ir, align 4
  %idxprom90 = sext i32 %91 to i64
  %92 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content91 = getelementptr inbounds %struct.darray, %struct.darray* %92, i32 0, i32 6
  %93 = load i8**, i8*** %content91, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %93, i64 %idxprom90
  %94 = load i8*, i8** %arrayidx92, align 8
  %95 = load i8*, i8** %arg.addr, align 8
  %call93 = call i32 %86(i8* %90, i8* %94, i8* %95)
  %cmp94 = icmp sgt i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.113

if.then.96:                                       ; preds = %if.end.85
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %96 = load i32, i32* %l, align 4
  %add98 = add nsw i32 %96, 1
  %idxprom99 = sext i32 %add98 to i64
  %97 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content100 = getelementptr inbounds %struct.darray, %struct.darray* %97, i32 0, i32 6
  %98 = load i8**, i8*** %content100, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %98, i64 %idxprom99
  %99 = load i8*, i8** %arrayidx101, align 8
  store i8* %99, i8** %tmp, align 8
  %100 = load i32, i32* %ir, align 4
  %idxprom102 = sext i32 %100 to i64
  %101 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content103 = getelementptr inbounds %struct.darray, %struct.darray* %101, i32 0, i32 6
  %102 = load i8**, i8*** %content103, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %102, i64 %idxprom102
  %103 = load i8*, i8** %arrayidx104, align 8
  %104 = load i32, i32* %l, align 4
  %add105 = add nsw i32 %104, 1
  %idxprom106 = sext i32 %add105 to i64
  %105 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content107 = getelementptr inbounds %struct.darray, %struct.darray* %105, i32 0, i32 6
  %106 = load i8**, i8*** %content107, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %106, i64 %idxprom106
  store i8* %103, i8** %arrayidx108, align 8
  %107 = load i8*, i8** %tmp, align 8
  %108 = load i32, i32* %ir, align 4
  %idxprom109 = sext i32 %108 to i64
  %109 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content110 = getelementptr inbounds %struct.darray, %struct.darray* %109, i32 0, i32 6
  %110 = load i8**, i8*** %content110, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %110, i64 %idxprom109
  store i8* %107, i8** %arrayidx111, align 8
  br label %do.end.112

do.end.112:                                       ; preds = %do.body.97
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.end.85
  %111 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  %112 = load i32, i32* %l, align 4
  %idxprom114 = sext i32 %112 to i64
  %113 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content115 = getelementptr inbounds %struct.darray, %struct.darray* %113, i32 0, i32 6
  %114 = load i8**, i8*** %content115, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %114, i64 %idxprom114
  %115 = load i8*, i8** %arrayidx116, align 8
  %116 = load i32, i32* %l, align 4
  %add117 = add nsw i32 %116, 1
  %idxprom118 = sext i32 %add117 to i64
  %117 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content119 = getelementptr inbounds %struct.darray, %struct.darray* %117, i32 0, i32 6
  %118 = load i8**, i8*** %content119, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %118, i64 %idxprom118
  %119 = load i8*, i8** %arrayidx120, align 8
  %120 = load i8*, i8** %arg.addr, align 8
  %call121 = call i32 %111(i8* %115, i8* %119, i8* %120)
  %cmp122 = icmp sgt i32 %call121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.141

if.then.124:                                      ; preds = %if.end.113
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %121 = load i32, i32* %l, align 4
  %idxprom126 = sext i32 %121 to i64
  %122 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content127 = getelementptr inbounds %struct.darray, %struct.darray* %122, i32 0, i32 6
  %123 = load i8**, i8*** %content127, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %123, i64 %idxprom126
  %124 = load i8*, i8** %arrayidx128, align 8
  store i8* %124, i8** %tmp, align 8
  %125 = load i32, i32* %l, align 4
  %add129 = add nsw i32 %125, 1
  %idxprom130 = sext i32 %add129 to i64
  %126 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content131 = getelementptr inbounds %struct.darray, %struct.darray* %126, i32 0, i32 6
  %127 = load i8**, i8*** %content131, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %127, i64 %idxprom130
  %128 = load i8*, i8** %arrayidx132, align 8
  %129 = load i32, i32* %l, align 4
  %idxprom133 = sext i32 %129 to i64
  %130 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content134 = getelementptr inbounds %struct.darray, %struct.darray* %130, i32 0, i32 6
  %131 = load i8**, i8*** %content134, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %131, i64 %idxprom133
  store i8* %128, i8** %arrayidx135, align 8
  %132 = load i8*, i8** %tmp, align 8
  %133 = load i32, i32* %l, align 4
  %add136 = add nsw i32 %133, 1
  %idxprom137 = sext i32 %add136 to i64
  %134 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content138 = getelementptr inbounds %struct.darray, %struct.darray* %134, i32 0, i32 6
  %135 = load i8**, i8*** %content138, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %135, i64 %idxprom137
  store i8* %132, i8** %arrayidx139, align 8
  br label %do.end.140

do.end.140:                                       ; preds = %do.body.125
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %if.end.113
  %136 = load i32, i32* %l, align 4
  %add142 = add nsw i32 %136, 1
  store i32 %add142, i32* %i, align 4
  %137 = load i32, i32* %ir, align 4
  store i32 %137, i32* %j, align 4
  %138 = load i32, i32* %l, align 4
  %add143 = add nsw i32 %138, 1
  %idxprom144 = sext i32 %add143 to i64
  %139 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content145 = getelementptr inbounds %struct.darray, %struct.darray* %139, i32 0, i32 6
  %140 = load i8**, i8*** %content145, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %140, i64 %idxprom144
  %141 = load i8*, i8** %arrayidx146, align 8
  store i8* %141, i8** %a, align 8
  br label %for.cond.147

for.cond.147:                                     ; preds = %do.end.185, %if.end.141
  br label %do.body.148

do.body.148:                                      ; preds = %do.cond, %for.cond.147
  %142 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %142, 1
  store i32 %inc149, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.148
  %143 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  %144 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %144 to i64
  %145 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content151 = getelementptr inbounds %struct.darray, %struct.darray* %145, i32 0, i32 6
  %146 = load i8**, i8*** %content151, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %146, i64 %idxprom150
  %147 = load i8*, i8** %arrayidx152, align 8
  %148 = load i8*, i8** %a, align 8
  %149 = load i8*, i8** %arg.addr, align 8
  %call153 = call i32 %143(i8* %147, i8* %148, i8* %149)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.body.148, label %do.end.156

do.end.156:                                       ; preds = %do.cond
  br label %do.body.157

do.body.157:                                      ; preds = %do.cond.159, %do.end.156
  %150 = load i32, i32* %j, align 4
  %dec158 = add nsw i32 %150, -1
  store i32 %dec158, i32* %j, align 4
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.body.157
  %151 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %cmp.addr, align 8
  %152 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %152 to i64
  %153 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content161 = getelementptr inbounds %struct.darray, %struct.darray* %153, i32 0, i32 6
  %154 = load i8**, i8*** %content161, align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %154, i64 %idxprom160
  %155 = load i8*, i8** %arrayidx162, align 8
  %156 = load i8*, i8** %a, align 8
  %157 = load i8*, i8** %arg.addr, align 8
  %call163 = call i32 %151(i8* %155, i8* %156, i8* %157)
  %cmp164 = icmp sgt i32 %call163, 0
  br i1 %cmp164, label %do.body.157, label %do.end.166

do.end.166:                                       ; preds = %do.cond.159
  %158 = load i32, i32* %j, align 4
  %159 = load i32, i32* %i, align 4
  %cmp167 = icmp slt i32 %158, %159
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %do.end.166
  br label %for.end.186

if.end.170:                                       ; preds = %do.end.166
  br label %do.body.171

do.body.171:                                      ; preds = %if.end.170
  %160 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %160 to i64
  %161 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content173 = getelementptr inbounds %struct.darray, %struct.darray* %161, i32 0, i32 6
  %162 = load i8**, i8*** %content173, align 8
  %arrayidx174 = getelementptr inbounds i8*, i8** %162, i64 %idxprom172
  %163 = load i8*, i8** %arrayidx174, align 8
  store i8* %163, i8** %tmp, align 8
  %164 = load i32, i32* %j, align 4
  %idxprom175 = sext i32 %164 to i64
  %165 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content176 = getelementptr inbounds %struct.darray, %struct.darray* %165, i32 0, i32 6
  %166 = load i8**, i8*** %content176, align 8
  %arrayidx177 = getelementptr inbounds i8*, i8** %166, i64 %idxprom175
  %167 = load i8*, i8** %arrayidx177, align 8
  %168 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %168 to i64
  %169 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content179 = getelementptr inbounds %struct.darray, %struct.darray* %169, i32 0, i32 6
  %170 = load i8**, i8*** %content179, align 8
  %arrayidx180 = getelementptr inbounds i8*, i8** %170, i64 %idxprom178
  store i8* %167, i8** %arrayidx180, align 8
  %171 = load i8*, i8** %tmp, align 8
  %172 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %172 to i64
  %173 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content182 = getelementptr inbounds %struct.darray, %struct.darray* %173, i32 0, i32 6
  %174 = load i8**, i8*** %content182, align 8
  %arrayidx183 = getelementptr inbounds i8*, i8** %174, i64 %idxprom181
  store i8* %171, i8** %arrayidx183, align 8
  br label %do.end.185

do.end.185:                                       ; preds = %do.body.171
  br label %for.cond.147

for.end.186:                                      ; preds = %if.then.169
  %175 = load i32, i32* %j, align 4
  %idxprom187 = sext i32 %175 to i64
  %176 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content188 = getelementptr inbounds %struct.darray, %struct.darray* %176, i32 0, i32 6
  %177 = load i8**, i8*** %content188, align 8
  %arrayidx189 = getelementptr inbounds i8*, i8** %177, i64 %idxprom187
  %178 = load i8*, i8** %arrayidx189, align 8
  %179 = load i32, i32* %l, align 4
  %add190 = add nsw i32 %179, 1
  %idxprom191 = sext i32 %add190 to i64
  %180 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content192 = getelementptr inbounds %struct.darray, %struct.darray* %180, i32 0, i32 6
  %181 = load i8**, i8*** %content192, align 8
  %arrayidx193 = getelementptr inbounds i8*, i8** %181, i64 %idxprom191
  store i8* %178, i8** %arrayidx193, align 8
  %182 = load i8*, i8** %a, align 8
  %183 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %183 to i64
  %184 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content195 = getelementptr inbounds %struct.darray, %struct.darray* %184, i32 0, i32 6
  %185 = load i8**, i8*** %content195, align 8
  %arrayidx196 = getelementptr inbounds i8*, i8** %185, i64 %idxprom194
  store i8* %182, i8** %arrayidx196, align 8
  %186 = load i32, i32* %jstack, align 4
  %add197 = add nsw i32 %186, 2
  store i32 %add197, i32* %jstack, align 4
  %187 = load i32, i32* %jstack, align 4
  %cmp198 = icmp sgt i32 %187, 100
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %for.end.186
  %188 = load i32, i32* @da_exit_error, align 4
  call void (i32, i32, i8*, ...) @error(i32 %188, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 100)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %for.end.186
  %189 = load i32, i32* %ir, align 4
  %190 = load i32, i32* %i, align 4
  %sub202 = sub nsw i32 %189, %190
  %add203 = add nsw i32 %sub202, 1
  %191 = load i32, i32* %j, align 4
  %192 = load i32, i32* %l, align 4
  %sub204 = sub nsw i32 %191, %192
  %cmp205 = icmp sge i32 %add203, %sub204
  br i1 %cmp205, label %if.then.207, label %if.else.214

if.then.207:                                      ; preds = %if.end.201
  %193 = load i32, i32* %ir, align 4
  %194 = load i32, i32* %jstack, align 4
  %idxprom208 = sext i32 %194 to i64
  %195 = load i32*, i32** %istack, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %195, i64 %idxprom208
  store i32 %193, i32* %arrayidx209, align 4
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %jstack, align 4
  %sub210 = sub nsw i32 %197, 1
  %idxprom211 = sext i32 %sub210 to i64
  %198 = load i32*, i32** %istack, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %198, i64 %idxprom211
  store i32 %196, i32* %arrayidx212, align 4
  %199 = load i32, i32* %j, align 4
  %sub213 = sub nsw i32 %199, 1
  store i32 %sub213, i32* %ir, align 4
  br label %if.end.221

if.else.214:                                      ; preds = %if.end.201
  %200 = load i32, i32* %j, align 4
  %sub215 = sub nsw i32 %200, 1
  %201 = load i32, i32* %jstack, align 4
  %idxprom216 = sext i32 %201 to i64
  %202 = load i32*, i32** %istack, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %202, i64 %idxprom216
  store i32 %sub215, i32* %arrayidx217, align 4
  %203 = load i32, i32* %l, align 4
  %204 = load i32, i32* %jstack, align 4
  %sub218 = sub nsw i32 %204, 1
  %idxprom219 = sext i32 %sub218 to i64
  %205 = load i32*, i32** %istack, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %205, i64 %idxprom219
  store i32 %203, i32* %arrayidx220, align 4
  %206 = load i32, i32* %i, align 4
  store i32 %206, i32* %l, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.214, %if.then.207
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.39
  br label %for.cond

for.end.223:                                      ; preds = %if.then.38
  %207 = load i32*, i32** %istack, align 8
  %208 = bitcast i32* %207 to i8*
  call void @free(i8* %208) #5
  br label %return

return:                                           ; preds = %for.end.223, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_unique(%struct.darray* %arr, void (i8*)* %free_func) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  %c = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  store i64 1, i64* %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %c, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %cmp1 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 8
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp1, align 8
  %5 = load i64, i64* %c, align 8
  %sub = sub i64 %5, 1
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 6
  %7 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %sub
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i64, i64* %c, align 8
  %10 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content2 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %9
  %12 = load i8*, i8** %arrayidx3, align 8
  %call = call i32 %4(i8* %8, i8* %12)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %14 = load i64, i64* %c, align 8
  %15 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @da_remove_at(%struct.darray* %13, i64 %14, void (i8*)* %15)
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load i64, i64* %c, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %c, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_merge(%struct.darray* %a1, %struct.darray* %a2, void (i8*)* %free_func, i32 %policy) #0 {
entry:
  %a1.addr = alloca %struct.darray*, align 8
  %a2.addr = alloca %struct.darray*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  %policy.addr = alloca i32, align 4
  %c1 = alloca i64, align 8
  %c2 = alloca i64, align 8
  store %struct.darray* %a1, %struct.darray** %a1.addr, align 8
  store %struct.darray* %a2, %struct.darray** %a2.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  store i32 %policy, i32* %policy.addr, align 4
  store i64 0, i64* %c2, align 8
  store i64 0, i64* %c1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.61, %entry
  %0 = load i64, i64* %c1, align 8
  %1 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ne i64 %0, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i64, i64* %c2, align 8
  %4 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 5
  %5 = load i64, i64* %len1, align 8
  %cmp2 = icmp ne i64 %3, %5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end.62

while.body:                                       ; preds = %lor.end
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.14, %while.body
  %7 = load i64, i64* %c1, align 8
  %8 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %len4 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len4, align 8
  %cmp5 = icmp ult i64 %7, %9
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.3
  %10 = load i64, i64* %c2, align 8
  %11 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %len6 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 5
  %12 = load i64, i64* %len6, align 8
  %cmp7 = icmp eq i64 %10, %12
  br i1 %cmp7, label %lor.end.13, label %lor.rhs.8

lor.rhs.8:                                        ; preds = %land.rhs
  %13 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %cmp9 = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 8
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp9, align 8
  %15 = load i64, i64* %c1, align 8
  %16 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 6
  %17 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %15
  %18 = load i8*, i8** %arrayidx, align 8
  %19 = load i64, i64* %c2, align 8
  %20 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %content10 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 6
  %21 = load i8**, i8*** %content10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %21, i64 %19
  %22 = load i8*, i8** %arrayidx11, align 8
  %call = call i32 %14(i8* %18, i8* %22)
  %cmp12 = icmp slt i32 %call, 0
  br label %lor.end.13

lor.end.13:                                       ; preds = %lor.rhs.8, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %cmp12, %lor.rhs.8 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.13, %while.cond.3
  %24 = phi i1 [ false, %while.cond.3 ], [ %23, %lor.end.13 ]
  br i1 %24, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %land.end
  %25 = load i64, i64* %c1, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %c1, align 8
  br label %while.cond.3

while.end:                                        ; preds = %land.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.39, %while.end
  %26 = load i64, i64* %c1, align 8
  %27 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %len16 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 5
  %28 = load i64, i64* %len16, align 8
  %cmp17 = icmp ult i64 %26, %28
  br i1 %cmp17, label %land.lhs.true, label %land.end.28

land.lhs.true:                                    ; preds = %while.cond.15
  %29 = load i64, i64* %c2, align 8
  %30 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %len18 = getelementptr inbounds %struct.darray, %struct.darray* %30, i32 0, i32 5
  %31 = load i64, i64* %len18, align 8
  %cmp19 = icmp ult i64 %29, %31
  br i1 %cmp19, label %land.rhs.20, label %land.end.28

land.rhs.20:                                      ; preds = %land.lhs.true
  %32 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %cmp21 = getelementptr inbounds %struct.darray, %struct.darray* %32, i32 0, i32 8
  %33 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp21, align 8
  %34 = load i64, i64* %c1, align 8
  %35 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %content22 = getelementptr inbounds %struct.darray, %struct.darray* %35, i32 0, i32 6
  %36 = load i8**, i8*** %content22, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %36, i64 %34
  %37 = load i8*, i8** %arrayidx23, align 8
  %38 = load i64, i64* %c2, align 8
  %39 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %content24 = getelementptr inbounds %struct.darray, %struct.darray* %39, i32 0, i32 6
  %40 = load i8**, i8*** %content24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %40, i64 %38
  %41 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 %33(i8* %37, i8* %41)
  %cmp27 = icmp eq i32 %call26, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.20, %land.lhs.true, %while.cond.15
  %42 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.15 ], [ %cmp27, %land.rhs.20 ]
  br i1 %42, label %while.body.29, label %while.end.40

while.body.29:                                    ; preds = %land.end.28
  %43 = load i32, i32* %policy.addr, align 4
  %cmp30 = icmp eq i32 %43, 0
  br i1 %cmp30, label %if.then, label %if.else.33

if.then:                                          ; preds = %while.body.29
  %44 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %tobool = icmp ne void (i8*)* %44, null
  br i1 %tobool, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then
  %45 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %46 = load i64, i64* %c2, align 8
  %47 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @da_remove_at(%struct.darray* %45, i64 %46, void (i8*)* %47)
  br label %if.end

if.else:                                          ; preds = %if.then
  %48 = load i64, i64* %c2, align 8
  %inc32 = add i64 %48, 1
  store i64 %inc32, i64* %c2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.31
  br label %if.end.39

if.else.33:                                       ; preds = %while.body.29
  %49 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %tobool34 = icmp ne void (i8*)* %49, null
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.33
  %50 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %51 = load i64, i64* %c1, align 8
  %52 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  call void @da_remove_at(%struct.darray* %50, i64 %51, void (i8*)* %52)
  br label %if.end.38

if.else.36:                                       ; preds = %if.else.33
  %53 = load i64, i64* %c1, align 8
  %inc37 = add i64 %53, 1
  store i64 %inc37, i64* %c1, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  br label %while.cond.15

while.end.40:                                     ; preds = %land.end.28
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.57, %while.end.40
  %54 = load i64, i64* %c2, align 8
  %55 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %len42 = getelementptr inbounds %struct.darray, %struct.darray* %55, i32 0, i32 5
  %56 = load i64, i64* %len42, align 8
  %cmp43 = icmp ult i64 %54, %56
  br i1 %cmp43, label %land.rhs.44, label %land.end.56

land.rhs.44:                                      ; preds = %while.cond.41
  %57 = load i64, i64* %c1, align 8
  %58 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %len45 = getelementptr inbounds %struct.darray, %struct.darray* %58, i32 0, i32 5
  %59 = load i64, i64* %len45, align 8
  %cmp46 = icmp eq i64 %57, %59
  br i1 %cmp46, label %lor.end.55, label %lor.rhs.47

lor.rhs.47:                                       ; preds = %land.rhs.44
  %60 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %cmp48 = getelementptr inbounds %struct.darray, %struct.darray* %60, i32 0, i32 8
  %61 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp48, align 8
  %62 = load i64, i64* %c1, align 8
  %63 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %content49 = getelementptr inbounds %struct.darray, %struct.darray* %63, i32 0, i32 6
  %64 = load i8**, i8*** %content49, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %64, i64 %62
  %65 = load i8*, i8** %arrayidx50, align 8
  %66 = load i64, i64* %c2, align 8
  %67 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %content51 = getelementptr inbounds %struct.darray, %struct.darray* %67, i32 0, i32 6
  %68 = load i8**, i8*** %content51, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %68, i64 %66
  %69 = load i8*, i8** %arrayidx52, align 8
  %call53 = call i32 %61(i8* %65, i8* %69)
  %cmp54 = icmp sge i32 %call53, 0
  br label %lor.end.55

lor.end.55:                                       ; preds = %lor.rhs.47, %land.rhs.44
  %70 = phi i1 [ true, %land.rhs.44 ], [ %cmp54, %lor.rhs.47 ]
  br label %land.end.56

land.end.56:                                      ; preds = %lor.end.55, %while.cond.41
  %71 = phi i1 [ false, %while.cond.41 ], [ %70, %lor.end.55 ]
  br i1 %71, label %while.body.57, label %while.end.61

while.body.57:                                    ; preds = %land.end.56
  %72 = load %struct.darray*, %struct.darray** %a1.addr, align 8
  %73 = load i64, i64* %c2, align 8
  %inc58 = add i64 %73, 1
  store i64 %inc58, i64* %c2, align 8
  %74 = load %struct.darray*, %struct.darray** %a2.addr, align 8
  %content59 = getelementptr inbounds %struct.darray, %struct.darray* %74, i32 0, i32 6
  %75 = load i8**, i8*** %content59, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %75, i64 %73
  %76 = load i8*, i8** %arrayidx60, align 8
  %77 = load i64, i64* %c1, align 8
  call void @da_insert_at(%struct.darray* %72, i8* %76, i64 %77)
  br label %while.cond.41

while.end.61:                                     ; preds = %land.end.56
  br label %while.cond

while.end.62:                                     ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_self_print(%struct.darray* %arr, %struct._IO_FILE* %stream) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %name = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %call, i8* %2)
  %3 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %self_print = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 7
  %4 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %self_print, align 8
  %tobool = icmp ne void (i8*, %struct._IO_FILE*)* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 5
  %7 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load i64, i64* %i, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i64 %9)
  %10 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %self_print3 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 7
  %11 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %self_print3, align 8
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 6
  %14 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %12
  %15 = load i8*, i8** %arrayidx, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void %11(i8* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_map(%struct.darray* %arr, void (i8*)* %fn) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %fn.addr = alloca void (i8*)*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store void (i8*)* %fn, void (i8*)** %fn.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*)*, void (i8*)** %fn.addr, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %4
  %7 = load i8*, i8** %arrayidx, align 8
  call void %3(i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @da_maparg(%struct.darray* %arr, void (i8*, i8*)* %func, i8* %arg) #0 {
entry:
  %arr.addr = alloca %struct.darray*, align 8
  %func.addr = alloca void (i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store void (i8*, i8*)* %func, void (i8*, i8*)** %func.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** %func.addr, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %4
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i8*, i8** %arg.addr, align 8
  call void %3(i8* %7, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @da_str_cmp(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #8
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define void @da_str_print(i8* %s1, %struct._IO_FILE* %stream) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %1)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @da_str_printnl(i8* %s1, %struct._IO_FILE* %stream) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %2)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
