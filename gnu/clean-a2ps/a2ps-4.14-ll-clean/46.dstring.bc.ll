; ModuleID = './lib/dstring.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstring = type { i64, i32, i64, i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@ds_exit_error = global i32 1, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid size for dynamic string: %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid increment for dynamic string: %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Dynamic string:\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09load: %d/%d (%2.1f%%)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"[const]\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"invalid growth type for dstring\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\09original size: %d, growth: %s %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dstring* @ds_new(i64 %size, i32 %growth, i64 %increment) #0 {
entry:
  %size.addr = alloca i64, align 8
  %growth.addr = alloca i32, align 4
  %increment.addr = alloca i64, align 8
  %res = alloca %struct.dstring*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %growth, i32* %growth.addr, align 4
  store i64 %increment, i64* %increment.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @ds_exit_error, align 4
  %2 = load i64, i64* %size.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i64 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %increment.addr, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %growth.addr, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* @ds_exit_error, align 4
  %6 = load i64, i64* %increment.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 %5, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i64 %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %call = call i8* @xmalloc(i64 48)
  %7 = bitcast i8* %call to %struct.dstring*
  store %struct.dstring* %7, %struct.dstring** %res, align 8
  %8 = load %struct.dstring*, %struct.dstring** %res, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 0
  store i64 0, i64* %len, align 8
  %9 = load i64, i64* %size.addr, align 8
  %10 = load %struct.dstring*, %struct.dstring** %res, align 8
  %size5 = getelementptr inbounds %struct.dstring, %struct.dstring* %10, i32 0, i32 3
  store i64 %9, i64* %size5, align 8
  %11 = load i64, i64* %size.addr, align 8
  %12 = load %struct.dstring*, %struct.dstring** %res, align 8
  %original_size = getelementptr inbounds %struct.dstring, %struct.dstring* %12, i32 0, i32 4
  store i64 %11, i64* %original_size, align 8
  %13 = load i32, i32* %growth.addr, align 4
  %14 = load %struct.dstring*, %struct.dstring** %res, align 8
  %growth6 = getelementptr inbounds %struct.dstring, %struct.dstring* %14, i32 0, i32 1
  store i32 %13, i32* %growth6, align 4
  %15 = load i64, i64* %increment.addr, align 8
  %16 = load %struct.dstring*, %struct.dstring** %res, align 8
  %increment7 = getelementptr inbounds %struct.dstring, %struct.dstring* %16, i32 0, i32 2
  store i64 %15, i64* %increment7, align 8
  %17 = load i64, i64* %size.addr, align 8
  %mul = mul i64 1, %17
  %call8 = call i8* @xmalloc(i64 %mul)
  %18 = load %struct.dstring*, %struct.dstring** %res, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %18, i32 0, i32 5
  store i8* %call8, i8** %content, align 8
  %19 = load %struct.dstring*, %struct.dstring** %res, align 8
  %content9 = getelementptr inbounds %struct.dstring, %struct.dstring* %19, i32 0, i32 5
  %20 = load i8*, i8** %content9, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %arrayidx, align 1
  %21 = load %struct.dstring*, %struct.dstring** %res, align 8
  ret %struct.dstring* %21
}

declare void @error(i32, i32, i8*, ...) #1

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @ds_erase(%struct.dstring* %string) #0 {
entry:
  %string.addr = alloca %struct.dstring*, align 8
  store %struct.dstring* %string, %struct.dstring** %string.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 5
  %1 = load i8*, i8** %content, align 8
  call void @free(i8* %1) #4
  %2 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %3 = bitcast %struct.dstring* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @ds_print_stats(%struct.dstring* %str, %struct._IO_FILE* %stream) #0 {
entry:
  %str.addr = alloca %struct.dstring*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store %struct.dstring* %str, %struct.dstring** %str.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* null, i8** %cp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #4
  %2 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %2, i32 0, i32 0
  %3 = load i64, i64* %len, align 8
  %4 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %size = getelementptr inbounds %struct.dstring, %struct.dstring* %4, i32 0, i32 3
  %5 = load i64, i64* %size, align 8
  %6 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %len3 = getelementptr inbounds %struct.dstring, %struct.dstring* %6, i32 0, i32 0
  %7 = load i64, i64* %len3, align 8
  %conv = uitofp i64 %7 to double
  %mul = fmul double 1.000000e+02, %conv
  %8 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %size4 = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 3
  %9 = load i64, i64* %size4, align 8
  %conv5 = uitofp i64 %9 to double
  %div = fdiv double %mul, %conv5
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %call2, i64 %3, i64 %5, double %div)
  %10 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %growth = getelementptr inbounds %struct.dstring, %struct.dstring* %10, i32 0, i32 1
  %11 = load i32, i32* %growth, align 4
  switch i32 %11, label %sw.default [
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
  %12 = load i32, i32* @ds_exit_error, align 4
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %sw.bb
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4
  %14 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %original_size = getelementptr inbounds %struct.dstring, %struct.dstring* %14, i32 0, i32 4
  %15 = load i64, i64* %original_size, align 8
  %16 = load i8*, i8** %cp, align 8
  %17 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %increment = getelementptr inbounds %struct.dstring, %struct.dstring* %17, i32 0, i32 2
  %18 = load i64, i64* %increment, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* %call9, i64 %15, i8* %16, i64 %18)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define void @ds_resize(%struct.dstring* %string, i64 %size) #0 {
entry:
  %string.addr = alloca %struct.dstring*, align 8
  %size.addr = alloca i64, align 8
  store %struct.dstring* %string, %struct.dstring** %string.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %4 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %size1 = getelementptr inbounds %struct.dstring, %struct.dstring* %4, i32 0, i32 3
  store i64 %3, i64* %size1, align 8
  %5 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %5, i32 0, i32 5
  %6 = load i8*, i8** %content, align 8
  %7 = load i64, i64* %size.addr, align 8
  %mul = mul i64 1, %7
  %call = call i8* @xrealloc(i8* %6, i64 %mul)
  %8 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %content2 = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 5
  store i8* %call, i8** %content2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @ds_grow(%struct.dstring* %string) #0 {
entry:
  %string.addr = alloca %struct.dstring*, align 8
  store %struct.dstring* %string, %struct.dstring** %string.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %growth = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 1
  %1 = load i32, i32* %growth, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %increment = getelementptr inbounds %struct.dstring, %struct.dstring* %2, i32 0, i32 2
  %3 = load i64, i64* %increment, align 8
  %4 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %size = getelementptr inbounds %struct.dstring, %struct.dstring* %4, i32 0, i32 3
  %5 = load i64, i64* %size, align 8
  %add = add i64 %5, %3
  store i64 %add, i64* %size, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %increment3 = getelementptr inbounds %struct.dstring, %struct.dstring* %6, i32 0, i32 2
  %7 = load i64, i64* %increment3, align 8
  %8 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %size4 = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 3
  %9 = load i64, i64* %size4, align 8
  %mul = mul i64 %9, %7
  store i64 %mul, i64* %size4, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1
  %10 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %10, i32 0, i32 5
  %11 = load i8*, i8** %content, align 8
  %12 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %size5 = getelementptr inbounds %struct.dstring, %struct.dstring* %12, i32 0, i32 3
  %13 = load i64, i64* %size5, align 8
  %mul6 = mul i64 1, %13
  %call = call i8* @xrealloc(i8* %11, i64 %mul6)
  %14 = load %struct.dstring*, %struct.dstring** %string.addr, align 8
  %content7 = getelementptr inbounds %struct.dstring, %struct.dstring* %14, i32 0, i32 5
  store i8* %call, i8** %content7, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ds_is_full(%struct.dstring* %str) #0 {
entry:
  %str.addr = alloca %struct.dstring*, align 8
  store %struct.dstring* %str, %struct.dstring** %str.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct.dstring*, %struct.dstring** %str.addr, align 8
  %size = getelementptr inbounds %struct.dstring, %struct.dstring* %2, i32 0, i32 3
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %add, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @ds_strcat(%struct.dstring* %s, i8* %t) #0 {
entry:
  %s.addr = alloca %struct.dstring*, align 8
  %t.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.dstring* %s, %struct.dstring** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len1 = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len1, align 8
  store i64 %1, i64* %len, align 8
  %2 = load i8*, i8** %t.addr, align 8
  %call = call i64 @strlen(i8* %2) #5
  %3 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len2 = getelementptr inbounds %struct.dstring, %struct.dstring* %3, i32 0, i32 0
  %4 = load i64, i64* %len2, align 8
  %add = add i64 %4, %call
  store i64 %add, i64* %len2, align 8
  %5 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %call3 = call i32 @ds_is_full(%struct.dstring* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  call void @ds_grow(%struct.dstring* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %7, i32 0, i32 5
  %8 = load i8*, i8** %content, align 8
  %9 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8*, i8** %t.addr, align 8
  %call4 = call i8* @strcpy(i8* %add.ptr, i8* %10) #4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ds_strncat(%struct.dstring* %s, i8* %t, i32 %n) #0 {
entry:
  %s.addr = alloca %struct.dstring*, align 8
  %t.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.dstring* %s, %struct.dstring** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len1 = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len1, align 8
  store i64 %1, i64* %len, align 8
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len2 = getelementptr inbounds %struct.dstring, %struct.dstring* %3, i32 0, i32 0
  %4 = load i64, i64* %len2, align 8
  %add = add i64 %4, %conv
  store i64 %add, i64* %len2, align 8
  %5 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %call = call i32 @ds_is_full(%struct.dstring* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  call void @ds_grow(%struct.dstring* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %7, i32 0, i32 5
  %8 = load i8*, i8** %content, align 8
  %9 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8*, i8** %t.addr, align 8
  %11 = load i32, i32* %n.addr, align 4
  %conv3 = sext i32 %11 to i64
  %call4 = call i8* @strncpy(i8* %add.ptr, i8* %10, i64 %conv3) #4
  %12 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len5 = getelementptr inbounds %struct.dstring, %struct.dstring* %12, i32 0, i32 0
  %13 = load i64, i64* %len5, align 8
  %14 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content6 = getelementptr inbounds %struct.dstring, %struct.dstring* %14, i32 0, i32 5
  %15 = load i8*, i8** %content6, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %13
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @ds_strccat(%struct.dstring* %s, i8 signext %c) #0 {
entry:
  %s.addr = alloca %struct.dstring*, align 8
  %c.addr = alloca i8, align 1
  store %struct.dstring* %s, %struct.dstring** %s.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 2
  %2 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %size = getelementptr inbounds %struct.dstring, %struct.dstring* %2, i32 0, i32 3
  %3 = load i64, i64* %size, align 8
  %cmp = icmp uge i64 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  call void @ds_grow(%struct.dstring* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %c.addr, align 1
  %6 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len1 = getelementptr inbounds %struct.dstring, %struct.dstring* %6, i32 0, i32 0
  %7 = load i64, i64* %len1, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %len1, align 8
  %8 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 5
  %9 = load i8*, i8** %content, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %7
  store i8 %5, i8* %arrayidx, align 1
  %10 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len2 = getelementptr inbounds %struct.dstring, %struct.dstring* %10, i32 0, i32 0
  %11 = load i64, i64* %len2, align 8
  %12 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content3 = getelementptr inbounds %struct.dstring, %struct.dstring* %12, i32 0, i32 5
  %13 = load i8*, i8** %content3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 %11
  store i8 0, i8* %arrayidx4, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ds_vsprintf(%struct.dstring* %ds, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i8*, i8** %format.addr, align 8
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i32 @vprintflen(i8* %0, %struct.__va_list_tag* %1)
  store i32 %call, i32* %len, align 4
  %2 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %3 = load i32, i32* %len, align 4
  %conv = sext i32 %3 to i64
  call void @ds_resize(%struct.dstring* %2, i64 %conv)
  %4 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %4, i32 0, i32 5
  %5 = load i8*, i8** %content, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %7 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call1 = call i32 @vsprintf(i8* %5, i8* %6, %struct.__va_list_tag* %7) #4
  %8 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content2 = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 5
  %9 = load i8*, i8** %content2, align 8
  %call3 = call i64 @strlen(i8* %9) #5
  %10 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len4 = getelementptr inbounds %struct.dstring, %struct.dstring* %10, i32 0, i32 0
  store i64 %call3, i64* %len4, align 8
  ret void
}

declare i32 @vprintflen(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind uwtable
define void @ds_sprintf(%struct.dstring* %ds, i8* %format, ...) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @ds_vsprintf(%struct.dstring* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define void @ds_cat_vsprintf(%struct.dstring* %ds, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len1 = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len1, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i32 @vprintflen(i8* %2, %struct.__va_list_tag* %3)
  %conv = sext i32 %call to i64
  %add = add i64 %1, %conv
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %len, align 4
  %4 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %5 = load i32, i32* %len, align 4
  %conv3 = sext i32 %5 to i64
  call void @ds_resize(%struct.dstring* %4, i64 %conv3)
  %6 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %6, i32 0, i32 5
  %7 = load i8*, i8** %content, align 8
  %8 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len4 = getelementptr inbounds %struct.dstring, %struct.dstring* %8, i32 0, i32 0
  %9 = load i64, i64* %len4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %9
  %10 = load i8*, i8** %format.addr, align 8
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call5 = call i32 @vsprintf(i8* %add.ptr, i8* %10, %struct.__va_list_tag* %11) #4
  %12 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content6 = getelementptr inbounds %struct.dstring, %struct.dstring* %12, i32 0, i32 5
  %13 = load i8*, i8** %content6, align 8
  %14 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len7 = getelementptr inbounds %struct.dstring, %struct.dstring* %14, i32 0, i32 0
  %15 = load i64, i64* %len7, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %13, i64 %15
  %call9 = call i64 @strlen(i8* %add.ptr8) #5
  %16 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len10 = getelementptr inbounds %struct.dstring, %struct.dstring* %16, i32 0, i32 0
  %17 = load i64, i64* %len10, align 8
  %add11 = add i64 %17, %call9
  store i64 %add11, i64* %len10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ds_cat_sprintf(%struct.dstring* %ds, i8* %format, ...) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @ds_cat_vsprintf(%struct.dstring* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ds_unsafe_vsprintf(%struct.dstring* %ds, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 5
  %1 = load i8*, i8** %content, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i32 @vsprintf(i8* %1, i8* %2, %struct.__va_list_tag* %3) #4
  %4 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content1 = getelementptr inbounds %struct.dstring, %struct.dstring* %4, i32 0, i32 5
  %5 = load i8*, i8** %content1, align 8
  %call2 = call i64 @strlen(i8* %5) #5
  %6 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %6, i32 0, i32 0
  store i64 %call2, i64* %len, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ds_unsafe_sprintf(%struct.dstring* %ds, i8* %format, ...) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @ds_unsafe_vsprintf(%struct.dstring* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ds_unsafe_cat_vsprintf(%struct.dstring* %ds, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %size = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 3
  %1 = load i64, i64* %size, align 8
  %2 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %2, i32 0, i32 0
  %3 = load i64, i64* %len, align 8
  %add = add i64 %3, 1024
  %cmp = icmp ult i64 %1, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  call void @ds_grow(%struct.dstring* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %5, i32 0, i32 5
  %6 = load i8*, i8** %content, align 8
  %7 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len1 = getelementptr inbounds %struct.dstring, %struct.dstring* %7, i32 0, i32 0
  %8 = load i64, i64* %len1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %8
  %9 = load i8*, i8** %format.addr, align 8
  %10 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i32 @vsprintf(i8* %add.ptr, i8* %9, %struct.__va_list_tag* %10) #4
  %11 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %content2 = getelementptr inbounds %struct.dstring, %struct.dstring* %11, i32 0, i32 5
  %12 = load i8*, i8** %content2, align 8
  %13 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len3 = getelementptr inbounds %struct.dstring, %struct.dstring* %13, i32 0, i32 0
  %14 = load i64, i64* %len3, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 %14
  %call5 = call i64 @strlen(i8* %add.ptr4) #5
  %15 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %len6 = getelementptr inbounds %struct.dstring, %struct.dstring* %15, i32 0, i32 0
  %16 = load i64, i64* %len6, align 8
  %add7 = add i64 %16, %call5
  store i64 %add7, i64* %len6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ds_unsafe_cat_sprintf(%struct.dstring* %ds, i8* %format, ...) #0 {
entry:
  %ds.addr = alloca %struct.dstring*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.dstring* %ds, %struct.dstring** %ds.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.dstring*, %struct.dstring** %ds.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @ds_unsafe_cat_vsprintf(%struct.dstring* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ds_getdelim(%struct.dstring* %s, i8 signext %eos, %struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca %struct.dstring*, align 8
  %eos.addr = alloca i8, align 1
  %f.addr = alloca %struct._IO_FILE*, align 8
  %insize = alloca i32, align 4
  %strsize = alloca i32, align 4
  %next_ch = alloca i32, align 4
  store %struct.dstring* %s, %struct.dstring** %s.addr, align 8
  store i8 %eos, i8* %eos.addr, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 0, i32* %insize, align 4
  %0 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len = getelementptr inbounds %struct.dstring, %struct.dstring* %0, i32 0, i32 0
  %1 = load i64, i64* %len, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %strsize, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %next_ch, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %next_ch, align 4
  %4 = load i8, i8* %eos.addr, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp ne i32 %3, %conv1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %next_ch, align 4
  %cmp3 = icmp ne i32 %5, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %insize, align 4
  %8 = load i32, i32* %strsize, align 4
  %sub = sub nsw i32 %8, 1
  %cmp5 = icmp sge i32 %7, %sub
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  call void @ds_grow(%struct.dstring* %9)
  %10 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %len7 = getelementptr inbounds %struct.dstring, %struct.dstring* %10, i32 0, i32 0
  %11 = load i64, i64* %len7, align 8
  %conv8 = trunc i64 %11 to i32
  store i32 %conv8, i32* %strsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i32, i32* %next_ch, align 4
  %conv9 = trunc i32 %12 to i8
  %13 = load i32, i32* %insize, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %insize, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content = getelementptr inbounds %struct.dstring, %struct.dstring* %14, i32 0, i32 5
  %15 = load i8*, i8** %content, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 %conv9, i8* %arrayidx, align 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %16)
  store i32 %call10, i32* %next_ch, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %insize, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %insize, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content13 = getelementptr inbounds %struct.dstring, %struct.dstring* %18, i32 0, i32 5
  %19 = load i8*, i8** %content13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  store i8 0, i8* %arrayidx14, align 1
  %20 = load i32, i32* %insize, align 4
  %cmp15 = icmp eq i32 %20, 1
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %21 = load i32, i32* %next_ch, align 4
  %cmp17 = icmp eq i32 %21, -1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %while.end
  %22 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %content20 = getelementptr inbounds %struct.dstring, %struct.dstring* %22, i32 0, i32 5
  %23 = load i8*, i8** %content20, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.19
  %24 = load i8*, i8** %retval
  ret i8* %24
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @ds_getline(%struct.dstring* %s, %struct._IO_FILE* %f) #0 {
entry:
  %s.addr = alloca %struct.dstring*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  store %struct.dstring* %s, %struct.dstring** %s.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct.dstring*, %struct.dstring** %s.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i8* @ds_getdelim(%struct.dstring* %0, i8 signext 10, %struct._IO_FILE* %1)
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
