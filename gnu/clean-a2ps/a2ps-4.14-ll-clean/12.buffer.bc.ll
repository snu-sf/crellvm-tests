; ModuleID = './src/buffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_s = type { i8*, i64, i64, %struct._IO_FILE*, i8, i8*, i32, i8, i8*, i64, i64, i64, i64, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\5Cr\5Cn\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\5Cn\5Cr\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"any type\00", align 1
@eol_args = internal constant [11 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* null], align 16
@eol_types = internal constant [10 x i32] [i32 0, i32 0, i32 1, i32 1, i32 3, i32 2, i32 2, i32 4, i32 4, i32 4], align 16
@argmatch_die = external global void ()*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"A string buffer.  Bufoffset %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"A stream buffer (%s).\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Len = %d, Lower case = %d, Line = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Content = `%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"4x4\00", align 1

; Function Attrs: nounwind uwtable
define i8* @eol_to_string(i32 %eol) #0 {
entry:
  %retval = alloca i8*, align 8
  %eol.addr = alloca i32, align 4
  store i32 %eol, i32* %eol.addr, align 4
  %0 = load i32, i32* %eol.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* %call, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #7
  unreachable

return:                                           ; preds = %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define i32 @option_string_to_eol(i8* %option, i8* %arg) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load void ()*, void ()** @argmatch_die, align 8
  %call = call i32 @__xargmatch_internal(i8* %0, i8* %1, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @eol_args, i32 0, i32 0), i8* bitcast ([10 x i32]* @eol_types to i8*), i64 4, i32 0, void ()* %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @eol_types, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #3

; Function Attrs: nounwind uwtable
define void @buffer_stream_set(%struct.buffer_s* %buffer, %struct._IO_FILE* %stream, i32 %eol) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %eol.addr = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 %eol, i32* %eol.addr, align 4
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load i32, i32* %eol.addr, align 4
  call void @buffer_internal_set(%struct.buffer_s* %0, %struct._IO_FILE* %1, i8* null, i64 0, i1 zeroext false, i32 %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @buffer_internal_set(%struct.buffer_s* %buffer, %struct._IO_FILE* %stream, i8* %buf, i64 %bufsize, i1 zeroext %pipe_p, i32 %eol) #4 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %pipe_p.addr = alloca i8, align 1
  %eol.addr = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  %frombool = zext i1 %pipe_p to i8
  store i8 %frombool, i8* %pipe_p.addr, align 1
  store i32 %eol, i32* %eol.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf1 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %1, i32 0, i32 0
  store i8* %0, i8** %buf1, align 8
  %2 = load i64, i64* %bufsize.addr, align 8
  %3 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize2 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %3, i32 0, i32 1
  store i64 %2, i64* %bufsize2, align 8
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 2
  store i64 0, i64* %bufoffset, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream3 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %6, i32 0, i32 3
  store %struct._IO_FILE* %5, %struct._IO_FILE** %stream3, align 8
  %7 = load i8, i8* %pipe_p.addr, align 1
  %tobool = trunc i8 %7 to i1
  %8 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %pipe_p4 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %8, i32 0, i32 4
  %frombool5 = zext i1 %tobool to i8
  store i8 %frombool5, i8* %pipe_p4, align 1
  %9 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %9, i32 0, i32 5
  store i8* null, i8** %content, align 8
  %10 = load i32, i32* %eol.addr, align 4
  %11 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %eol6 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %11, i32 0, i32 6
  store i32 %10, i32* %eol6, align 4
  %12 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %lower_case = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %12, i32 0, i32 7
  store i8 0, i8* %lower_case, align 1
  %13 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %13, i32 0, i32 8
  store i8* null, i8** %value, align 8
  %14 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %line = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %14, i32 0, i32 9
  store i64 0, i64* %line, align 8
  %15 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %allocsize = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %15, i32 0, i32 10
  store i64 0, i64* %allocsize, align 8
  %16 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %16, i32 0, i32 11
  store i64 0, i64* %len, align 8
  %17 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %17, i32 0, i32 12
  store i64 0, i64* %curr, align 8
  %18 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %18, i32 0, i32 13
  %call = call i32 @_obstack_begin(%struct.obstack* %obstack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  ret void
}

; Function Attrs: nounwind uwtable
define void @buffer_pipe_set(%struct.buffer_s* %buffer, %struct._IO_FILE* %stream, i32 %eol) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %eol.addr = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 %eol, i32* %eol.addr, align 4
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load i32, i32* %eol.addr, align 4
  call void @buffer_internal_set(%struct.buffer_s* %0, %struct._IO_FILE* %1, i8* null, i64 0, i1 zeroext true, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @buffer_string_set(%struct.buffer_s* %buffer, i8* %string, i32 %eol) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %string.addr = alloca i8*, align 8
  %eol.addr = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %eol, i32* %eol.addr, align 4
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  %3 = load i32, i32* %eol.addr, align 4
  call void @buffer_internal_set(%struct.buffer_s* %0, %struct._IO_FILE* null, i8* %1, i64 %call, i1 zeroext false, i32 %3)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define void @buffer_buffer_set(%struct.buffer_s* %buffer, i8* %buf, i64 %bufsize, i32 %eol) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %eol.addr = alloca i32, align 4
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i32 %eol, i32* %eol.addr, align 4
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %bufsize.addr, align 8
  %3 = load i32, i32* %eol.addr, align 4
  call void @buffer_internal_set(%struct.buffer_s* %0, %struct._IO_FILE* null, i8* %1, i64 %2, i1 zeroext false, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @buffer_self_print(%struct.buffer_s* %buffer, %struct._IO_FILE* %stream) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %3, i32 0, i32 2
  %4 = load i64, i64* %bufoffset, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i64 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream1 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream1, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %pipe_p = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %8, i32 0, i32 4
  %9 = load i8, i8* %pipe_p, align 1
  %tobool4 = trunc i8 %9 to i1
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* %cond)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %11, i32 0, i32 11
  %12 = load i64, i64* %len, align 8
  %13 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %lower_case = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %13, i32 0, i32 7
  %14 = load i8, i8* %lower_case, align 1
  %tobool7 = trunc i8 %14 to i1
  %conv = zext i1 %tobool7 to i32
  %15 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %line = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %15, i32 0, i32 9
  %16 = load i64, i64* %line, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i64 %12, i32 %conv, i64 %16)
  %17 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len9 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %17, i32 0, i32 11
  %18 = load i64, i64* %len9, align 8
  %tobool10 = icmp ne i64 %18, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %20 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %20, i32 0, i32 5
  %21 = load i8*, i8** %content, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %21)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.6
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @buffer_release(%struct.buffer_s* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %lower_case = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 7
  %1 = load i8, i8* %lower_case, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 8
  %3 = load i8*, i8** %value, align 8
  call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @buffer_set_lower_case(%struct.buffer_s* %buffer, i1 zeroext %sensitive) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %sensitive.addr = alloca i8, align 1
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  %frombool = zext i1 %sensitive to i8
  store i8 %frombool, i8* %sensitive.addr, align 1
  %0 = load i8, i8* %sensitive.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %lower_case = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %1, i32 0, i32 7
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* %lower_case, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @buffer_get(%struct.buffer_s* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %line_ended_p = alloca i8, align 1
  %__o = alloca %struct.obstack*, align 8
  %tmp = alloca i32, align 4
  %__o10 = alloca %struct.obstack*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp52 = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i8 0, i8* %line_ended_p, align 1
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 2
  %3 = load i64, i64* %bufoffset, align 8
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 1
  %5 = load i64, i64* %bufsize, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %call = call zeroext i1 @buffer_string_get_line(%struct.buffer_s* %6)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %line_ended_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %7, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.7

land.lhs.true.2:                                  ; preds = %if.end
  %9 = load i8, i8* %line_ended_p, align 1
  %tobool3 = trunc i8 %9 to i1
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true.2
  %10 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %call5 = call zeroext i1 @buffer_stream_get_line(%struct.buffer_s* %10)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, i8* %line_ended_p, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %land.lhs.true.2, %if.end
  %11 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %11, i32 0, i32 13
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 3
  %13 = load i8*, i8** %next_free, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 2
  %15 = load i8*, i8** %object_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %tmp
  %16 = load i32, i32* %tmp
  %conv8 = zext i32 %16 to i64
  %17 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %17, i32 0, i32 11
  store i64 %conv8, i64* %len, align 8
  %18 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack11 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %18, i32 0, i32 13
  store %struct.obstack* %obstack11, %struct.obstack** %__o10, align 8
  %19 = load %struct.obstack*, %struct.obstack** %__o10, align 8
  %next_free12 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free12, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load %struct.obstack*, %struct.obstack** %__o10, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 4
  %22 = load i8*, i8** %chunk_limit, align 8
  %cmp13 = icmp ugt i8* %add.ptr, %22
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.7
  %23 = load %struct.obstack*, %struct.obstack** %__o10, align 8
  call void @_obstack_newchunk(%struct.obstack* %23, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.7
  %24 = load %struct.obstack*, %struct.obstack** %__o10, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 3
  %25 = load i8*, i8** %next_free17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_free17, align 8
  store i8 0, i8* %25, align 1
  %26 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack19 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %26, i32 0, i32 13
  store %struct.obstack* %obstack19, %struct.obstack** %__o1, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base21 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 2
  %28 = load i8*, i8** %object_base21, align 8
  store i8* %28, i8** %value, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  %30 = load i8*, i8** %next_free22, align 8
  %31 = load i8*, i8** %value, align 8
  %cmp23 = icmp eq i8* %30, %31
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.16
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.16
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free27 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 3
  %34 = load i8*, i8** %next_free27, align 8
  %sub.ptr.lhs.cast28 = ptrtoint i8* %34 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast28, 0
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 6
  %36 = load i32, i32* %alignment_mask, align 4
  %conv30 = sext i32 %36 to i64
  %add = add nsw i64 %sub.ptr.sub29, %conv30
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask31 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 6
  %38 = load i32, i32* %alignment_mask31, align 4
  %neg = xor i32 %38, -1
  %conv32 = sext i32 %neg to i64
  %and = and i64 %add, %conv32
  %add.ptr33 = getelementptr inbounds i8, i8* null, i64 %and
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  store i8* %add.ptr33, i8** %next_free34, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free35, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 1
  %43 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %44 = bitcast %struct._obstack_chunk* %43 to i8*
  %sub.ptr.lhs.cast36 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %44 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit39 = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 4
  %46 = load i8*, i8** %chunk_limit39, align 8
  %47 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk40 = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 1
  %48 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk40, align 8
  %49 = bitcast %struct._obstack_chunk* %48 to i8*
  %sub.ptr.lhs.cast41 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast42 = ptrtoint i8* %49 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %cmp44 = icmp sgt i64 %sub.ptr.sub38, %sub.ptr.sub43
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.26
  %50 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit47 = getelementptr inbounds %struct.obstack, %struct.obstack* %50, i32 0, i32 4
  %51 = load i8*, i8** %chunk_limit47, align 8
  %52 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free48 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 3
  store i8* %51, i8** %next_free48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.26
  %53 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free50 = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 3
  %54 = load i8*, i8** %next_free50, align 8
  %55 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base51 = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 2
  store i8* %54, i8** %object_base51, align 8
  %56 = load i8*, i8** %value, align 8
  store i8* %56, i8** %tmp52
  %57 = load i8*, i8** %tmp52
  %58 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %58, i32 0, i32 5
  store i8* %57, i8** %content, align 8
  %59 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %line = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %59, i32 0, i32 9
  %60 = load i64, i64* %line, align 8
  %inc = add i64 %60, 1
  store i64 %inc, i64* %line, align 8
  %61 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len53 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %61, i32 0, i32 11
  %62 = load i64, i64* %len53, align 8
  %cmp54 = icmp uge i64 %62, 2
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.66

land.lhs.true.56:                                 ; preds = %if.end.49
  %63 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len57 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %63, i32 0, i32 11
  %64 = load i64, i64* %len57, align 8
  %sub = sub i64 %64, 2
  %65 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content58 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %65, i32 0, i32 5
  %66 = load i8*, i8** %content58, align 8
  %arrayidx = getelementptr inbounds i8, i8* %66, i64 %sub
  %67 = load i8, i8* %arrayidx, align 1
  %conv59 = zext i8 %67 to i32
  %cmp60 = icmp eq i32 %conv59, 12
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %land.lhs.true.56
  %68 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len63 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %68, i32 0, i32 11
  %69 = load i64, i64* %len63, align 8
  %dec = add i64 %69, -1
  store i64 %dec, i64* %len63, align 8
  %70 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content64 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %70, i32 0, i32 5
  %71 = load i8*, i8** %content64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %71, i64 %dec
  store i8 0, i8* %arrayidx65, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %land.lhs.true.56, %if.end.49
  %72 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %lower_case = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %72, i32 0, i32 7
  %73 = load i8, i8* %lower_case, align 1
  %tobool67 = trunc i8 %73 to i1
  br i1 %tobool67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.end.66
  %74 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %allocsize = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %74, i32 0, i32 10
  %75 = load i64, i64* %allocsize, align 8
  %76 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len70 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %76, i32 0, i32 11
  %77 = load i64, i64* %len70, align 8
  %cmp71 = icmp ule i64 %75, %77
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.then.68
  %78 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len74 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %78, i32 0, i32 11
  %79 = load i64, i64* %len74, align 8
  %add75 = add i64 %79, 1
  %80 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %allocsize76 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %80, i32 0, i32 10
  store i64 %add75, i64* %allocsize76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.then.68
  %81 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value78 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %81, i32 0, i32 8
  %82 = load i8*, i8** %value78, align 8
  %83 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %allocsize79 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %83, i32 0, i32 10
  %84 = load i64, i64* %allocsize79, align 8
  %mul = mul i64 1, %84
  %call80 = call i8* @xrealloc(i8* %82, i64 %mul)
  %85 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value81 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %85, i32 0, i32 8
  store i8* %call80, i8** %value81, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.77
  %86 = load i64, i64* %i, align 8
  %87 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len82 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %87, i32 0, i32 11
  %88 = load i64, i64* %len82, align 8
  %cmp83 = icmp ule i64 %86, %88
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i64, i64* %i, align 8
  %90 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content85 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %90, i32 0, i32 5
  %91 = load i8*, i8** %content85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %91, i64 %89
  %92 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %92 to i32
  %call88 = call i32 @tolower(i32 %conv87) #6
  %conv89 = trunc i32 %call88 to i8
  %93 = load i64, i64* %i, align 8
  %94 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value90 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %94, i32 0, i32 8
  %95 = load i8*, i8** %value90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %95, i64 %93
  store i8 %conv89, i8* %arrayidx91, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i64, i64* %i, align 8
  %inc92 = add i64 %96, 1
  store i64 %inc92, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.95

if.else:                                          ; preds = %if.end.66
  %97 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content93 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %97, i32 0, i32 5
  %98 = load i8*, i8** %content93, align 8
  %99 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %value94 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %99, i32 0, i32 8
  store i8* %98, i8** %value94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else, %for.end
  %100 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %100, i32 0, i32 12
  store i64 0, i64* %curr, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @buffer_string_get_line(%struct.buffer_s* %buffer) #4 {
entry:
  %retval = alloca i1, align 1
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__o104 = alloca %struct.obstack*, align 8
  %__o116 = alloca %struct.obstack*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.128, %entry
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 2
  %1 = load i64, i64* %bufoffset, align 8
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 1
  %3 = load i64, i64* %bufsize, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset1 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 2
  %5 = load i64, i64* %bufoffset1, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %bufoffset1, align 8
  %6 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %5
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %9 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset2 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %9, i32 0, i32 2
  %10 = load i64, i64* %bufoffset2, align 8
  %inc3 = add i64 %10, 1
  store i64 %inc3, i64* %bufoffset2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %cmp4 = icmp ne i32 %cond, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %11 = load i32, i32* %c, align 4
  switch i32 %11, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %while.body
  %12 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %eol = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %12, i32 0, i32 6
  %13 = load i32, i32* %eol, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb.6
    i32 2, label %sw.bb.6
    i32 4, label %sw.bb.7
    i32 1, label %sw.bb.26
    i32 3, label %sw.bb.27
  ]

sw.bb.6:                                          ; preds = %sw.bb, %sw.bb
  br label %string_plain_char

sw.bb.7:                                          ; preds = %sw.bb
  %14 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset8 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %14, i32 0, i32 2
  %15 = load i64, i64* %bufoffset8, align 8
  %16 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize9 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %16, i32 0, i32 1
  %17 = load i64, i64* %bufsize9, align 8
  %cmp10 = icmp ult i64 %15, %17
  br i1 %cmp10, label %cond.true.12, label %cond.false.18

cond.true.12:                                     ; preds = %sw.bb.7
  %18 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset13 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %18, i32 0, i32 2
  %19 = load i64, i64* %bufoffset13, align 8
  %inc14 = add i64 %19, 1
  store i64 %inc14, i64* %bufoffset13, align 8
  %20 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf15 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 %19
  %22 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %22 to i32
  br label %cond.end.21

cond.false.18:                                    ; preds = %sw.bb.7
  %23 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset19 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %23, i32 0, i32 2
  %24 = load i64, i64* %bufoffset19, align 8
  %inc20 = add i64 %24, 1
  store i64 %inc20, i64* %bufoffset19, align 8
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.18, %cond.true.12
  %cond22 = phi i32 [ %conv17, %cond.true.12 ], [ -1, %cond.false.18 ]
  store i32 %cond22, i32* %d, align 4
  %cmp23 = icmp ne i32 %cond22, 13
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.21
  %25 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset25 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %25, i32 0, i32 2
  %26 = load i64, i64* %bufoffset25, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %bufoffset25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.21
  br label %sw.epilog

sw.bb.26:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.27:                                         ; preds = %sw.bb
  %27 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset28 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %27, i32 0, i32 2
  %28 = load i64, i64* %bufoffset28, align 8
  %29 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize29 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %29, i32 0, i32 1
  %30 = load i64, i64* %bufsize29, align 8
  %cmp30 = icmp ult i64 %28, %30
  br i1 %cmp30, label %cond.true.32, label %cond.false.38

cond.true.32:                                     ; preds = %sw.bb.27
  %31 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset33 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %31, i32 0, i32 2
  %32 = load i64, i64* %bufoffset33, align 8
  %inc34 = add i64 %32, 1
  store i64 %inc34, i64* %bufoffset33, align 8
  %33 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf35 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %33, i32 0, i32 0
  %34 = load i8*, i8** %buf35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %34, i64 %32
  %35 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %35 to i32
  br label %cond.end.41

cond.false.38:                                    ; preds = %sw.bb.27
  %36 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset39 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %36, i32 0, i32 2
  %37 = load i64, i64* %bufoffset39, align 8
  %inc40 = add i64 %37, 1
  store i64 %inc40, i64* %bufoffset39, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.32
  %cond42 = phi i32 [ %conv37, %cond.true.32 ], [ -1, %cond.false.38 ]
  store i32 %cond42, i32* %d, align 4
  %cmp43 = icmp ne i32 %cond42, 13
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %cond.end.41
  %38 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset46 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %38, i32 0, i32 2
  %39 = load i64, i64* %bufoffset46, align 8
  %dec47 = add i64 %39, -1
  store i64 %dec47, i64* %bufoffset46, align 8
  br label %string_plain_char

if.end.48:                                        ; preds = %cond.end.41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.48, %sw.bb.26, %if.end
  %40 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %40, i32 0, i32 13
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  %42 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 4
  %44 = load i8*, i8** %chunk_limit, align 8
  %cmp49 = icmp ugt i8* %add.ptr, %44
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %sw.epilog
  %45 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %45, i32 1)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %sw.epilog
  %46 = load i32, i32* %c, align 4
  %conv53 = trunc i32 %46 to i8
  %47 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free54 = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 3
  %48 = load i8*, i8** %next_free54, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %next_free54, align 8
  store i8 %conv53, i8* %48, align 1
  store i1 true, i1* %retval
  br label %return

sw.bb.55:                                         ; preds = %while.body
  %49 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %eol56 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %49, i32 0, i32 6
  %50 = load i32, i32* %eol56, align 4
  switch i32 %50, label %sw.epilog.103 [
    i32 1, label %sw.bb.57
    i32 3, label %sw.bb.57
    i32 0, label %sw.bb.58
    i32 4, label %sw.bb.59
    i32 2, label %sw.bb.81
  ]

sw.bb.57:                                         ; preds = %sw.bb.55, %sw.bb.55
  br label %string_plain_char

sw.bb.58:                                         ; preds = %sw.bb.55
  store i32 10, i32* %c, align 4
  br label %sw.epilog.103

sw.bb.59:                                         ; preds = %sw.bb.55
  %51 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset60 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %51, i32 0, i32 2
  %52 = load i64, i64* %bufoffset60, align 8
  %53 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize61 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %53, i32 0, i32 1
  %54 = load i64, i64* %bufsize61, align 8
  %cmp62 = icmp ult i64 %52, %54
  br i1 %cmp62, label %cond.true.64, label %cond.false.70

cond.true.64:                                     ; preds = %sw.bb.59
  %55 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset65 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %55, i32 0, i32 2
  %56 = load i64, i64* %bufoffset65, align 8
  %inc66 = add i64 %56, 1
  store i64 %inc66, i64* %bufoffset65, align 8
  %57 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf67 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %57, i32 0, i32 0
  %58 = load i8*, i8** %buf67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %58, i64 %56
  %59 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %59 to i32
  br label %cond.end.73

cond.false.70:                                    ; preds = %sw.bb.59
  %60 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset71 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %60, i32 0, i32 2
  %61 = load i64, i64* %bufoffset71, align 8
  %inc72 = add i64 %61, 1
  store i64 %inc72, i64* %bufoffset71, align 8
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.70, %cond.true.64
  %cond74 = phi i32 [ %conv69, %cond.true.64 ], [ -1, %cond.false.70 ]
  store i32 %cond74, i32* %d, align 4
  %cmp75 = icmp ne i32 %cond74, 10
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %cond.end.73
  %62 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset78 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %62, i32 0, i32 2
  %63 = load i64, i64* %bufoffset78, align 8
  %dec79 = add i64 %63, -1
  store i64 %dec79, i64* %bufoffset78, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %cond.end.73
  store i32 10, i32* %c, align 4
  br label %sw.epilog.103

sw.bb.81:                                         ; preds = %sw.bb.55
  %64 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset82 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %64, i32 0, i32 2
  %65 = load i64, i64* %bufoffset82, align 8
  %66 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize83 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %66, i32 0, i32 1
  %67 = load i64, i64* %bufsize83, align 8
  %cmp84 = icmp ult i64 %65, %67
  br i1 %cmp84, label %cond.true.86, label %cond.false.92

cond.true.86:                                     ; preds = %sw.bb.81
  %68 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset87 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %68, i32 0, i32 2
  %69 = load i64, i64* %bufoffset87, align 8
  %inc88 = add i64 %69, 1
  store i64 %inc88, i64* %bufoffset87, align 8
  %70 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf89 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %70, i32 0, i32 0
  %71 = load i8*, i8** %buf89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %71, i64 %69
  %72 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %72 to i32
  br label %cond.end.95

cond.false.92:                                    ; preds = %sw.bb.81
  %73 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset93 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %73, i32 0, i32 2
  %74 = load i64, i64* %bufoffset93, align 8
  %inc94 = add i64 %74, 1
  store i64 %inc94, i64* %bufoffset93, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.92, %cond.true.86
  %cond96 = phi i32 [ %conv91, %cond.true.86 ], [ -1, %cond.false.92 ]
  store i32 %cond96, i32* %d, align 4
  %cmp97 = icmp ne i32 %cond96, 10
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %cond.end.95
  %75 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufoffset100 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %75, i32 0, i32 2
  %76 = load i64, i64* %bufoffset100, align 8
  %dec101 = add i64 %76, -1
  store i64 %dec101, i64* %bufoffset100, align 8
  br label %string_plain_char

if.end.102:                                       ; preds = %cond.end.95
  store i32 10, i32* %c, align 4
  br label %sw.epilog.103

sw.epilog.103:                                    ; preds = %sw.bb.55, %if.end.102, %if.end.80, %sw.bb.58
  %77 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack105 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %77, i32 0, i32 13
  store %struct.obstack* %obstack105, %struct.obstack** %__o104, align 8
  %78 = load %struct.obstack*, %struct.obstack** %__o104, align 8
  %next_free106 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 3
  %79 = load i8*, i8** %next_free106, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load %struct.obstack*, %struct.obstack** %__o104, align 8
  %chunk_limit108 = getelementptr inbounds %struct.obstack, %struct.obstack* %80, i32 0, i32 4
  %81 = load i8*, i8** %chunk_limit108, align 8
  %cmp109 = icmp ugt i8* %add.ptr107, %81
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %sw.epilog.103
  %82 = load %struct.obstack*, %struct.obstack** %__o104, align 8
  call void @_obstack_newchunk(%struct.obstack* %82, i32 1)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %sw.epilog.103
  %83 = load i32, i32* %c, align 4
  %conv113 = trunc i32 %83 to i8
  %84 = load %struct.obstack*, %struct.obstack** %__o104, align 8
  %next_free114 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 3
  %85 = load i8*, i8** %next_free114, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr115, i8** %next_free114, align 8
  store i8 %conv113, i8* %85, align 1
  store i1 true, i1* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  br label %string_plain_char

string_plain_char:                                ; preds = %sw.default, %if.then.99, %sw.bb.57, %if.then.45, %sw.bb.6
  %86 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack117 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %86, i32 0, i32 13
  store %struct.obstack* %obstack117, %struct.obstack** %__o116, align 8
  %87 = load %struct.obstack*, %struct.obstack** %__o116, align 8
  %next_free118 = getelementptr inbounds %struct.obstack, %struct.obstack* %87, i32 0, i32 3
  %88 = load i8*, i8** %next_free118, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load %struct.obstack*, %struct.obstack** %__o116, align 8
  %chunk_limit120 = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 4
  %90 = load i8*, i8** %chunk_limit120, align 8
  %cmp121 = icmp ugt i8* %add.ptr119, %90
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %string_plain_char
  %91 = load %struct.obstack*, %struct.obstack** %__o116, align 8
  call void @_obstack_newchunk(%struct.obstack* %91, i32 1)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %string_plain_char
  %92 = load i32, i32* %c, align 4
  %conv125 = trunc i32 %92 to i8
  %93 = load %struct.obstack*, %struct.obstack** %__o116, align 8
  %next_free126 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 3
  %94 = load i8*, i8** %next_free126, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr127, i8** %next_free126, align 8
  store i8 %conv125, i8* %94, align 1
  br label %sw.epilog.128

sw.epilog.128:                                    ; preds = %if.end.124
  br label %while.cond

while.end:                                        ; preds = %cond.end
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.112, %if.end.52
  %95 = load i1, i1* %retval
  ret i1 %95
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @buffer_stream_get_line(%struct.buffer_s* %buffer) #4 {
entry:
  %retval = alloca i1, align 1
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__o44 = alloca %struct.obstack*, align 8
  %__o56 = alloca %struct.obstack*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.68, %entry
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %eol = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %3, i32 0, i32 6
  %4 = load i32, i32* %eol, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 1, label %sw.bb.8
    i32 3, label %sw.bb.9
  ]

sw.bb.1:                                          ; preds = %sw.bb, %sw.bb
  br label %stream_plain_char

sw.bb.2:                                          ; preds = %sw.bb
  %5 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream3 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream3, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call4, i32* %d, align 4
  %cmp5 = icmp ne i32 %call4, 13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %7 = load i32, i32* %d, align 4
  %8 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream6 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %8, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream6, align 8
  %call7 = call i32 @ungetc(i32 %7, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.bb.8:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %sw.bb
  %10 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream10 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream10, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call11, i32* %d, align 4
  %cmp12 = icmp ne i32 %call11, 13
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %sw.bb.9
  %12 = load i32, i32* %d, align 4
  %13 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream14 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %13, i32 0, i32 3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream14, align 8
  %call15 = call i32 @ungetc(i32 %12, %struct._IO_FILE* %14)
  br label %stream_plain_char

if.end.16:                                        ; preds = %sw.bb.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.16, %sw.bb.8, %if.end
  %15 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %15, i32 0, i32 13
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 4
  %19 = load i8*, i8** %chunk_limit, align 8
  %cmp17 = icmp ugt i8* %add.ptr, %19
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.epilog
  %20 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %20, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %sw.epilog
  %21 = load i32, i32* %c, align 4
  %conv = trunc i32 %21 to i8
  %22 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free20, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %next_free20, align 8
  store i8 %conv, i8* %23, align 1
  store i1 true, i1* %retval
  br label %return

sw.bb.21:                                         ; preds = %while.body
  %24 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %eol22 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %24, i32 0, i32 6
  %25 = load i32, i32* %eol22, align 4
  switch i32 %25, label %sw.epilog.43 [
    i32 1, label %sw.bb.23
    i32 3, label %sw.bb.23
    i32 0, label %sw.bb.24
    i32 4, label %sw.bb.25
    i32 2, label %sw.bb.34
  ]

sw.bb.23:                                         ; preds = %sw.bb.21, %sw.bb.21
  br label %stream_plain_char

sw.bb.24:                                         ; preds = %sw.bb.21
  store i32 10, i32* %c, align 4
  br label %sw.epilog.43

sw.bb.25:                                         ; preds = %sw.bb.21
  %26 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream26 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %26, i32 0, i32 3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream26, align 8
  %call27 = call i32 @_IO_getc(%struct._IO_FILE* %27)
  store i32 %call27, i32* %d, align 4
  %cmp28 = icmp ne i32 %call27, 10
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %sw.bb.25
  %28 = load i32, i32* %d, align 4
  %29 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream31 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %29, i32 0, i32 3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %stream31, align 8
  %call32 = call i32 @ungetc(i32 %28, %struct._IO_FILE* %30)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %sw.bb.25
  store i32 10, i32* %c, align 4
  br label %sw.epilog.43

sw.bb.34:                                         ; preds = %sw.bb.21
  %31 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream35 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %31, i32 0, i32 3
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stream35, align 8
  %call36 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  store i32 %call36, i32* %d, align 4
  %cmp37 = icmp ne i32 %call36, 10
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %sw.bb.34
  %33 = load i32, i32* %d, align 4
  %34 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream40 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %34, i32 0, i32 3
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream40, align 8
  %call41 = call i32 @ungetc(i32 %33, %struct._IO_FILE* %35)
  br label %stream_plain_char

if.end.42:                                        ; preds = %sw.bb.34
  store i32 10, i32* %c, align 4
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %sw.bb.21, %if.end.42, %if.end.33, %sw.bb.24
  %36 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack45 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %36, i32 0, i32 13
  store %struct.obstack* %obstack45, %struct.obstack** %__o44, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o44, align 8
  %next_free46 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 3
  %38 = load i8*, i8** %next_free46, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load %struct.obstack*, %struct.obstack** %__o44, align 8
  %chunk_limit48 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 4
  %40 = load i8*, i8** %chunk_limit48, align 8
  %cmp49 = icmp ugt i8* %add.ptr47, %40
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %sw.epilog.43
  %41 = load %struct.obstack*, %struct.obstack** %__o44, align 8
  call void @_obstack_newchunk(%struct.obstack* %41, i32 1)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %sw.epilog.43
  %42 = load i32, i32* %c, align 4
  %conv53 = trunc i32 %42 to i8
  %43 = load %struct.obstack*, %struct.obstack** %__o44, align 8
  %next_free54 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr55, i8** %next_free54, align 8
  store i8 %conv53, i8* %44, align 1
  store i1 true, i1* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  br label %stream_plain_char

stream_plain_char:                                ; preds = %sw.default, %if.then.39, %sw.bb.23, %if.then.13, %sw.bb.1
  %45 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %obstack57 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %45, i32 0, i32 13
  store %struct.obstack* %obstack57, %struct.obstack** %__o56, align 8
  %46 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %next_free58 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 3
  %47 = load i8*, i8** %next_free58, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %chunk_limit60 = getelementptr inbounds %struct.obstack, %struct.obstack* %48, i32 0, i32 4
  %49 = load i8*, i8** %chunk_limit60, align 8
  %cmp61 = icmp ugt i8* %add.ptr59, %49
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %stream_plain_char
  %50 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  call void @_obstack_newchunk(%struct.obstack* %50, i32 1)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %stream_plain_char
  %51 = load i32, i32* %c, align 4
  %conv65 = trunc i32 %51 to i8
  %52 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %next_free66 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 3
  %53 = load i8*, i8** %next_free66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr67, i8** %next_free66, align 8
  store i8 %conv65, i8* %53, align 1
  br label %sw.epilog.68

sw.epilog.68:                                     ; preds = %if.end.64
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.52, %if.end.19
  %54 = load i1, i1* %retval
  ret i1 %54
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #3

declare i8* @xrealloc(i8*, i64) #3

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind uwtable
define void @buffer_sample_get(%struct.buffer_s* %buffer, i8* %filename) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %filename.addr = alloca i8*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %cur = alloca i64, align 8
  %c = alloca i32, align 4
  %sample_buffer = alloca i8*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @xwfopen(i8* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %out, align 8
  store i64 0, i64* %cur, align 8
  %call1 = call i8* @xmalloc(i64 512)
  store i8* %call1, i8** %sample_buffer, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %cur, align 8
  %cmp = icmp ult i64 %1, 512
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call2, i32* %c, align 4
  %cmp3 = icmp ne i32 %call2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %c, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i64, i64* %cur, align 8
  %7 = load i8*, i8** %sample_buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %6
  store i8 %conv, i8* %arrayidx, align 1
  %8 = load i32, i32* %c, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call4 = call i32 @_IO_putc(i32 %8, %struct._IO_FILE* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %cur, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %cur, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i8*, i8** %sample_buffer, align 8
  %12 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %12, i32 0, i32 0
  store i8* %11, i8** %buf, align 8
  %13 = load i64, i64* %cur, align 8
  %14 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %14, i32 0, i32 1
  store i64 %13, i64* %bufsize, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %15)
  ret void
}

declare %struct._IO_FILE* @xwfopen(i8*) #3

declare i8* @xmalloc(i64) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @buffer_save(%struct.buffer_s* %buffer, i8* %filename) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %filename.addr = alloca i8*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %cur = alloca i64, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @xwfopen(i8* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %out, align 8
  %1 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, i64* %cur, align 8
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %bufsize = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %4, i32 0, i32 1
  %5 = load i64, i64* %bufsize, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %cur, align 8
  %7 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %buf1 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call2 = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %cur, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %cur, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %12 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %12, i32 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %13, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream5 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %14, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream5, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @streams_copy(%struct._IO_FILE* %15, %struct._IO_FILE* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %17)
  ret void
}

declare void @streams_copy(%struct._IO_FILE*, %struct._IO_FILE*) #3

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
