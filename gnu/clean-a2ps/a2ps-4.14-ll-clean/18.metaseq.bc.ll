; ModuleID = './lib/metaseq.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pair_htable = type opaque
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c":(){}\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Known Variables\00", align 1
@expand_user_string.first_time = internal global i32 1, align 4
@expand_user_string.user_string_stack = internal global %struct.obstack zeroinitializer, align 8
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Expanding of %s user string (`%s')\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Expansion of %s (`%s') is `%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Printed by %s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"user.name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"user.host\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Printed by %s from %s\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"cannot get current working directory\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%d:%02d:%02d\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: too long argument for %s escape\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%D{}\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%02d-%02d-%02d\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%b %d, %y\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%A %B %d, %Y\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"user.login\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%s: unknown `%s' escape `%c' (%d)\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Page %d\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Page %d/%c\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%d:%02d%s\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%d:%02d\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"a2ps\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"4.14\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"%02d/%02d/%02d\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"%s: missing `%c' for %s%c escape\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"$(\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"$()\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"${}\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"%s: invalid separator `%s%c' for `%s' escape\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"%s: invalid argument for %s%c escape\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"$[\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"$D{}\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"$l\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"$p\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"Page %d/%d\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"$s\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"#()\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"#{\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"#{}\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"#?\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"#!\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"#f\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"a2_\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"output command\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pair_htable* @macro_meta_sequence_table_new() #0 {
entry:
  %call = call %struct.pair_htable* @pair_table_new()
  ret %struct.pair_htable* %call
}

declare %struct.pair_htable* @pair_table_new() #1

; Function Attrs: nounwind uwtable
define void @macro_meta_sequence_table_free(%struct.pair_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  call void @pair_table_free(%struct.pair_htable* %0)
  ret void
}

declare void @pair_table_free(%struct.pair_htable*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
entry:
  %retval = alloca i1, align 1
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i8* @strpbrk(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 63
  %2 = load %struct.pair_htable*, %struct.pair_htable** %macro_meta_sequences, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %5 = load i8*, i8** %value.addr, align 8
  %call1 = call i64 @strspn(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call1
  call void @pair_add(%struct.pair_htable* %2, i8* %3, i8* %add.ptr)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval
  ret i1 %6
}

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #2

declare void @pair_add(%struct.pair_htable*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @macro_meta_sequence_delete(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 63
  %1 = load %struct.pair_htable*, %struct.pair_htable** %macro_meta_sequences, align 8
  %2 = load i8*, i8** %key.addr, align 8
  call void @pair_delete(%struct.pair_htable* %1, i8* %2)
  ret void
}

declare void @pair_delete(%struct.pair_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @macro_meta_sequence_get(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 63
  %1 = load %struct.pair_htable*, %struct.pair_htable** %macro_meta_sequences, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i8* @pair_get(%struct.pair_htable* %1, i8* %2)
  ret i8* %call
}

declare i8* @pair_get(%struct.pair_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define void @macro_meta_sequences_list_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 63
  %3 = load %struct.pair_htable*, %struct.pair_htable** %macro_meta_sequences, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @pair_table_list_short(%struct.pair_htable* %3, %struct._IO_FILE* %4)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @pair_table_list_short(%struct.pair_htable*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @macro_meta_sequences_list_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %0, i8 signext 61, i32 1, i8* %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 63
  %3 = load %struct.pair_htable*, %struct.pair_htable** %macro_meta_sequences, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @pair_table_list_long(%struct.pair_htable* %3, %struct._IO_FILE* %4)
  ret void
}

declare void @title(%struct._IO_FILE*, i8 signext, i32, i8*, ...) #1

declare void @pair_table_list_long(%struct.pair_htable*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @expand_user_string(%struct.a2ps_job* %job, %struct.file_job* %file, i8* %context_name, i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file.addr = alloca %struct.file_job*, align 8
  %context_name.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %__o38 = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.file_job* %file, %struct.file_job** %file.addr, align 8
  store i8* %context_name, i8** %context_name.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* @expand_user_string.first_time, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @expand_user_string.first_time, align 4
  %call = call i32 @_obstack_begin(%struct.obstack* @expand_user_string.user_string_stack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %2 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 1024, %2
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %context_name.addr, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* %4, i8* %5)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %7 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %8 = load i8*, i8** %context_name.addr, align 8
  %9 = load i8*, i8** %str.addr, align 8
  call void @grow_user_string_obstack(%struct.obstack* @expand_user_string.user_string_stack, %struct.a2ps_job* %6, %struct.file_job* %7, i8* %8, i8* %9)
  store %struct.obstack* @expand_user_string.user_string_stack, %struct.obstack** %__o, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 4
  %13 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %13
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %14, i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end
  %15 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %next_free10, align 8
  store i8 0, i8* %16, align 1
  store %struct.obstack* @expand_user_string.user_string_stack, %struct.obstack** %__o1, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 2
  %18 = load i8*, i8** %object_base, align 8
  store i8* %18, i8** %value, align 8
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free11 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free11, align 8
  %21 = load i8*, i8** %value, align 8
  %cmp12 = icmp eq i8* %20, %21
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free15 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 3
  %24 = load i8*, i8** %next_free15, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 6
  %26 = load i32, i32* %alignment_mask, align 4
  %conv = sext i32 %26 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 6
  %28 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %28, -1
  %conv17 = sext i32 %neg to i64
  %and18 = and i64 %add, %conv17
  %add.ptr19 = getelementptr inbounds i8, i8* null, i64 %and18
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  store i8* %add.ptr19, i8** %next_free20, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 3
  %31 = load i8*, i8** %next_free21, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 1
  %33 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %34 = bitcast %struct._obstack_chunk* %33 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit24, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 1
  %38 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %39 = bitcast %struct._obstack_chunk* %38 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %39 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.14
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 4
  %41 = load i8*, i8** %chunk_limit32, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  store i8* %41, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.14
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free35, align 8
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 2
  store i8* %44, i8** %object_base36, align 8
  %46 = load i8*, i8** %value, align 8
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  store i8* %47, i8** %res, align 8
  store %struct.obstack* @expand_user_string.user_string_stack, %struct.obstack** %__o38, align 8
  %48 = load i8*, i8** %res, align 8
  store i8* %48, i8** %__obj, align 8
  %49 = load i8*, i8** %__obj, align 8
  %50 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %chunk40 = getelementptr inbounds %struct.obstack, %struct.obstack* %50, i32 0, i32 1
  %51 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk40, align 8
  %52 = bitcast %struct._obstack_chunk* %51 to i8*
  %cmp41 = icmp ugt i8* %49, %52
  br i1 %cmp41, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.34
  %53 = load i8*, i8** %__obj, align 8
  %54 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %chunk_limit43 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 4
  %55 = load i8*, i8** %chunk_limit43, align 8
  %cmp44 = icmp ult i8* %53, %55
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %land.lhs.true
  %56 = load i8*, i8** %__obj, align 8
  %57 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %object_base47 = getelementptr inbounds %struct.obstack, %struct.obstack* %57, i32 0, i32 2
  store i8* %56, i8** %object_base47, align 8
  %58 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %next_free48 = getelementptr inbounds %struct.obstack, %struct.obstack* %58, i32 0, i32 3
  store i8* %56, i8** %next_free48, align 8
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true, %if.end.34
  %59 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %60 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %59, i8* %60)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.46
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  %61 = load i32, i32* @msg_verbosity, align 4
  %and51 = and i32 1024, %61
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %do.body.50
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = load i8*, i8** %context_name.addr, align 8
  %64 = load i8*, i8** %str.addr, align 8
  %65 = load i8*, i8** %res, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %63, i8* %64, i8* %65)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %do.body.50
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %66 = load i8*, i8** %res, align 8
  store i8* %66, i8** %retval
  br label %return

return:                                           ; preds = %do.end.56, %if.then.2
  %67 = load i8*, i8** %retval
  ret i8* %67
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @grow_user_string_obstack(%struct.obstack* %user_string_stack, %struct.a2ps_job* %job, %struct.file_job* %file, i8* %context_name, i8* %str) #0 {
entry:
  %user_string_stack.addr = alloca %struct.obstack*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file.addr = alloca %struct.file_job*, align 8
  %context_name.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %cp2 = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %padding = alloca i8, align 1
  %buf = alloca [512 x i8], align 16
  %buf2 = alloca [512 x i8], align 16
  %buf3 = alloca [256 x i8], align 16
  %width = alloca i64, align 8
  %justification = alloca i32, align 4
  %type = alloca i32, align 4
  %a = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__o77 = alloca %struct.obstack*, align 8
  %__o93 = alloca %struct.obstack*, align 8
  %a106 = alloca i32, align 4
  %__o112 = alloca %struct.obstack*, align 8
  %__o129 = alloca %struct.obstack*, align 8
  %__o147 = alloca %struct.obstack*, align 8
  %a160 = alloca i32, align 4
  %__o166 = alloca %struct.obstack*, align 8
  %__o184 = alloca %struct.obstack*, align 8
  %__o202 = alloca %struct.obstack*, align 8
  %a220 = alloca i32, align 4
  %__o226 = alloca %struct.obstack*, align 8
  %__o243 = alloca %struct.obstack*, align 8
  %__o261 = alloca %struct.obstack*, align 8
  %a275 = alloca i32, align 4
  %__o281 = alloca %struct.obstack*, align 8
  %__o298 = alloca %struct.obstack*, align 8
  %__o316 = alloca %struct.obstack*, align 8
  %len = alloca i64, align 8
  %nspace = alloca i64, align 8
  %__o346 = alloca %struct.obstack*, align 8
  %__o359 = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %__o382 = alloca %struct.obstack*, align 8
  %len410 = alloca i64, align 8
  %nspace413 = alloca i64, align 8
  %__o429 = alloca %struct.obstack*, align 8
  %__o443 = alloca %struct.obstack*, align 8
  %__len444 = alloca i32, align 4
  %__o468 = alloca %struct.obstack*, align 8
  %len497 = alloca i64, align 8
  %nspace499 = alloca i64, align 8
  %__o515 = alloca %struct.obstack*, align 8
  %__o529 = alloca %struct.obstack*, align 8
  %__len530 = alloca i32, align 4
  %__o553 = alloca %struct.obstack*, align 8
  %len579 = alloca i64, align 8
  %nspace582 = alloca i64, align 8
  %__o598 = alloca %struct.obstack*, align 8
  %__o612 = alloca %struct.obstack*, align 8
  %__len613 = alloca i32, align 4
  %__o637 = alloca %struct.obstack*, align 8
  %len660 = alloca i64, align 8
  %nspace662 = alloca i64, align 8
  %__o678 = alloca %struct.obstack*, align 8
  %__o692 = alloca %struct.obstack*, align 8
  %__len693 = alloca i32, align 4
  %__o716 = alloca %struct.obstack*, align 8
  %len783 = alloca i64, align 8
  %nspace786 = alloca i64, align 8
  %__o802 = alloca %struct.obstack*, align 8
  %__o816 = alloca %struct.obstack*, align 8
  %__len817 = alloca i32, align 4
  %__o841 = alloca %struct.obstack*, align 8
  %len862 = alloca i64, align 8
  %nspace865 = alloca i64, align 8
  %__o881 = alloca %struct.obstack*, align 8
  %__o895 = alloca %struct.obstack*, align 8
  %__len896 = alloca i32, align 4
  %__o920 = alloca %struct.obstack*, align 8
  %len941 = alloca i64, align 8
  %nspace944 = alloca i64, align 8
  %__o960 = alloca %struct.obstack*, align 8
  %__o974 = alloca %struct.obstack*, align 8
  %__len975 = alloca i32, align 4
  %__o999 = alloca %struct.obstack*, align 8
  %len1026 = alloca i64, align 8
  %nspace1029 = alloca i64, align 8
  %__o1045 = alloca %struct.obstack*, align 8
  %__o1059 = alloca %struct.obstack*, align 8
  %__len1060 = alloca i32, align 4
  %__o1084 = alloca %struct.obstack*, align 8
  %len1110 = alloca i64, align 8
  %nspace1112 = alloca i64, align 8
  %__o1128 = alloca %struct.obstack*, align 8
  %__o1142 = alloca %struct.obstack*, align 8
  %__len1143 = alloca i32, align 4
  %__o1166 = alloca %struct.obstack*, align 8
  %len1183 = alloca i64, align 8
  %nspace1186 = alloca i64, align 8
  %__o1202 = alloca %struct.obstack*, align 8
  %__o1216 = alloca %struct.obstack*, align 8
  %__len1217 = alloca i32, align 4
  %__o1241 = alloca %struct.obstack*, align 8
  %len1258 = alloca i64, align 8
  %nspace1261 = alloca i64, align 8
  %__o1277 = alloca %struct.obstack*, align 8
  %__o1291 = alloca %struct.obstack*, align 8
  %__len1292 = alloca i32, align 4
  %__o1316 = alloca %struct.obstack*, align 8
  %len1333 = alloca i64, align 8
  %nspace1336 = alloca i64, align 8
  %__o1352 = alloca %struct.obstack*, align 8
  %__o1366 = alloca %struct.obstack*, align 8
  %__len1367 = alloca i32, align 4
  %__o1391 = alloca %struct.obstack*, align 8
  %len1414 = alloca i64, align 8
  %nspace1417 = alloca i64, align 8
  %__o1433 = alloca %struct.obstack*, align 8
  %__o1447 = alloca %struct.obstack*, align 8
  %__len1448 = alloca i32, align 4
  %__o1472 = alloca %struct.obstack*, align 8
  %a1489 = alloca i32, align 4
  %__o1495 = alloca %struct.obstack*, align 8
  %__o1512 = alloca %struct.obstack*, align 8
  %__o1530 = alloca %struct.obstack*, align 8
  %len1555 = alloca i64, align 8
  %nspace1558 = alloca i64, align 8
  %__o1574 = alloca %struct.obstack*, align 8
  %__o1588 = alloca %struct.obstack*, align 8
  %__len1589 = alloca i32, align 4
  %__o1613 = alloca %struct.obstack*, align 8
  %len1634 = alloca i64, align 8
  %nspace1637 = alloca i64, align 8
  %__o1653 = alloca %struct.obstack*, align 8
  %__o1667 = alloca %struct.obstack*, align 8
  %__len1668 = alloca i32, align 4
  %__o1692 = alloca %struct.obstack*, align 8
  %len1715 = alloca i64, align 8
  %nspace1718 = alloca i64, align 8
  %__o1734 = alloca %struct.obstack*, align 8
  %__o1748 = alloca %struct.obstack*, align 8
  %__len1749 = alloca i32, align 4
  %__o1773 = alloca %struct.obstack*, align 8
  %a1790 = alloca i32, align 4
  %__o1796 = alloca %struct.obstack*, align 8
  %__o1813 = alloca %struct.obstack*, align 8
  %__o1831 = alloca %struct.obstack*, align 8
  %len1874 = alloca i64, align 8
  %nspace1877 = alloca i64, align 8
  %__o1893 = alloca %struct.obstack*, align 8
  %__o1907 = alloca %struct.obstack*, align 8
  %__len1908 = alloca i32, align 4
  %__o1932 = alloca %struct.obstack*, align 8
  %len1955 = alloca i64, align 8
  %nspace1958 = alloca i64, align 8
  %__o1974 = alloca %struct.obstack*, align 8
  %__o1988 = alloca %struct.obstack*, align 8
  %__len1989 = alloca i32, align 4
  %__o2013 = alloca %struct.obstack*, align 8
  %len2038 = alloca i64, align 8
  %nspace2041 = alloca i64, align 8
  %__o2057 = alloca %struct.obstack*, align 8
  %__o2071 = alloca %struct.obstack*, align 8
  %__len2072 = alloca i32, align 4
  %__o2096 = alloca %struct.obstack*, align 8
  %len2115 = alloca i64, align 8
  %nspace2118 = alloca i64, align 8
  %__o2134 = alloca %struct.obstack*, align 8
  %__o2148 = alloca %struct.obstack*, align 8
  %__len2149 = alloca i32, align 4
  %__o2173 = alloca %struct.obstack*, align 8
  %len2200 = alloca i64, align 8
  %nspace2203 = alloca i64, align 8
  %__o2219 = alloca %struct.obstack*, align 8
  %__o2233 = alloca %struct.obstack*, align 8
  %__len2234 = alloca i32, align 4
  %__o2258 = alloca %struct.obstack*, align 8
  %a2285 = alloca i32, align 4
  %__o2291 = alloca %struct.obstack*, align 8
  %__o2308 = alloca %struct.obstack*, align 8
  %__o2326 = alloca %struct.obstack*, align 8
  %len2347 = alloca i64, align 8
  %nspace2350 = alloca i64, align 8
  %__o2366 = alloca %struct.obstack*, align 8
  %__o2380 = alloca %struct.obstack*, align 8
  %__len2381 = alloca i32, align 4
  %__o2405 = alloca %struct.obstack*, align 8
  %len2462 = alloca i64, align 8
  %nspace2464 = alloca i64, align 8
  %__o2480 = alloca %struct.obstack*, align 8
  %__o2494 = alloca %struct.obstack*, align 8
  %__len2495 = alloca i32, align 4
  %__o2518 = alloca %struct.obstack*, align 8
  %len2583 = alloca i64, align 8
  %nspace2585 = alloca i64, align 8
  %__o2601 = alloca %struct.obstack*, align 8
  %__o2615 = alloca %struct.obstack*, align 8
  %__len2616 = alloca i32, align 4
  %__o2639 = alloca %struct.obstack*, align 8
  %len2666 = alloca i64, align 8
  %nspace2668 = alloca i64, align 8
  %__o2684 = alloca %struct.obstack*, align 8
  %__o2698 = alloca %struct.obstack*, align 8
  %__len2699 = alloca i32, align 4
  %__o2722 = alloca %struct.obstack*, align 8
  %len2739 = alloca i64, align 8
  %nspace2742 = alloca i64, align 8
  %__o2758 = alloca %struct.obstack*, align 8
  %__o2772 = alloca %struct.obstack*, align 8
  %__len2773 = alloca i32, align 4
  %__o2797 = alloca %struct.obstack*, align 8
  %len2822 = alloca i64, align 8
  %nspace2825 = alloca i64, align 8
  %__o2841 = alloca %struct.obstack*, align 8
  %__o2855 = alloca %struct.obstack*, align 8
  %__len2856 = alloca i32, align 4
  %__o2880 = alloca %struct.obstack*, align 8
  %value = alloca i64, align 8
  %len2948 = alloca i64, align 8
  %nspace2951 = alloca i64, align 8
  %__o2967 = alloca %struct.obstack*, align 8
  %__o2981 = alloca %struct.obstack*, align 8
  %__len2982 = alloca i32, align 4
  %__o3007 = alloca %struct.obstack*, align 8
  %len3027 = alloca i64, align 8
  %nspace3030 = alloca i64, align 8
  %__o3046 = alloca %struct.obstack*, align 8
  %__o3060 = alloca %struct.obstack*, align 8
  %__len3061 = alloca i32, align 4
  %__o3085 = alloca %struct.obstack*, align 8
  %len3110 = alloca i64, align 8
  %nspace3113 = alloca i64, align 8
  %__o3129 = alloca %struct.obstack*, align 8
  %__o3143 = alloca %struct.obstack*, align 8
  %__len3144 = alloca i32, align 4
  %__o3168 = alloca %struct.obstack*, align 8
  %len3197 = alloca i64, align 8
  %nspace3200 = alloca i64, align 8
  %__o3216 = alloca %struct.obstack*, align 8
  %__o3230 = alloca %struct.obstack*, align 8
  %__len3231 = alloca i32, align 4
  %__o3255 = alloca %struct.obstack*, align 8
  %a3272 = alloca i32, align 4
  %__o3278 = alloca %struct.obstack*, align 8
  %__o3295 = alloca %struct.obstack*, align 8
  %__o3313 = alloca %struct.obstack*, align 8
  %len3379 = alloca i64, align 8
  %nspace3382 = alloca i64, align 8
  %__o3398 = alloca %struct.obstack*, align 8
  %__o3412 = alloca %struct.obstack*, align 8
  %__len3413 = alloca i32, align 4
  %__o3437 = alloca %struct.obstack*, align 8
  %len3458 = alloca i64, align 8
  %nspace3461 = alloca i64, align 8
  %__o3477 = alloca %struct.obstack*, align 8
  %__o3491 = alloca %struct.obstack*, align 8
  %__len3492 = alloca i32, align 4
  %__o3516 = alloca %struct.obstack*, align 8
  %len3537 = alloca i64, align 8
  %nspace3540 = alloca i64, align 8
  %__o3556 = alloca %struct.obstack*, align 8
  %__o3570 = alloca %struct.obstack*, align 8
  %__len3571 = alloca i32, align 4
  %__o3595 = alloca %struct.obstack*, align 8
  %len3612 = alloca i64, align 8
  %nspace3615 = alloca i64, align 8
  %__o3631 = alloca %struct.obstack*, align 8
  %__o3645 = alloca %struct.obstack*, align 8
  %__len3646 = alloca i32, align 4
  %__o3670 = alloca %struct.obstack*, align 8
  %len3697 = alloca i64, align 8
  %nspace3700 = alloca i64, align 8
  %__o3716 = alloca %struct.obstack*, align 8
  %__o3730 = alloca %struct.obstack*, align 8
  %__len3731 = alloca i32, align 4
  %__o3755 = alloca %struct.obstack*, align 8
  %len3778 = alloca i64, align 8
  %nspace3781 = alloca i64, align 8
  %__o3797 = alloca %struct.obstack*, align 8
  %__o3811 = alloca %struct.obstack*, align 8
  %__len3812 = alloca i32, align 4
  %__o3836 = alloca %struct.obstack*, align 8
  %len3856 = alloca i64, align 8
  %nspace3859 = alloca i64, align 8
  %__o3875 = alloca %struct.obstack*, align 8
  %__o3889 = alloca %struct.obstack*, align 8
  %__len3890 = alloca i32, align 4
  %__o3914 = alloca %struct.obstack*, align 8
  %len3941 = alloca i64, align 8
  %nspace3944 = alloca i64, align 8
  %__o3960 = alloca %struct.obstack*, align 8
  %__o3974 = alloca %struct.obstack*, align 8
  %__len3975 = alloca i32, align 4
  %__o3999 = alloca %struct.obstack*, align 8
  %a4016 = alloca i32, align 4
  %__o4022 = alloca %struct.obstack*, align 8
  %__o4039 = alloca %struct.obstack*, align 8
  %__o4057 = alloca %struct.obstack*, align 8
  %len4100 = alloca i64, align 8
  %nspace4103 = alloca i64, align 8
  %__o4119 = alloca %struct.obstack*, align 8
  %__o4133 = alloca %struct.obstack*, align 8
  %__len4134 = alloca i32, align 4
  %__o4158 = alloca %struct.obstack*, align 8
  %len4175 = alloca i64, align 8
  %nspace4177 = alloca i64, align 8
  %__o4193 = alloca %struct.obstack*, align 8
  %__o4207 = alloca %struct.obstack*, align 8
  %__len4208 = alloca i32, align 4
  %__o4231 = alloca %struct.obstack*, align 8
  %len4258 = alloca i64, align 8
  %nspace4260 = alloca i64, align 8
  %__o4276 = alloca %struct.obstack*, align 8
  %__o4290 = alloca %struct.obstack*, align 8
  %__len4291 = alloca i32, align 4
  %__o4314 = alloca %struct.obstack*, align 8
  %len4337 = alloca i64, align 8
  %nspace4340 = alloca i64, align 8
  %__o4356 = alloca %struct.obstack*, align 8
  %__o4370 = alloca %struct.obstack*, align 8
  %__len4371 = alloca i32, align 4
  %__o4395 = alloca %struct.obstack*, align 8
  %len4426 = alloca i64, align 8
  %nspace4429 = alloca i64, align 8
  %__o4445 = alloca %struct.obstack*, align 8
  %__o4459 = alloca %struct.obstack*, align 8
  %__len4460 = alloca i32, align 4
  %__o4484 = alloca %struct.obstack*, align 8
  %len4503 = alloca i64, align 8
  %nspace4506 = alloca i64, align 8
  %__o4522 = alloca %struct.obstack*, align 8
  %__o4536 = alloca %struct.obstack*, align 8
  %__len4537 = alloca i32, align 4
  %__o4561 = alloca %struct.obstack*, align 8
  %len4581 = alloca i64, align 8
  %nspace4584 = alloca i64, align 8
  %__o4600 = alloca %struct.obstack*, align 8
  %__o4614 = alloca %struct.obstack*, align 8
  %__len4615 = alloca i32, align 4
  %__o4639 = alloca %struct.obstack*, align 8
  %len4667 = alloca i64, align 8
  %nspace4670 = alloca i64, align 8
  %__o4686 = alloca %struct.obstack*, align 8
  %__o4700 = alloca %struct.obstack*, align 8
  %__len4701 = alloca i32, align 4
  %__o4725 = alloca %struct.obstack*, align 8
  %a4742 = alloca i32, align 4
  %__o4748 = alloca %struct.obstack*, align 8
  %__o4765 = alloca %struct.obstack*, align 8
  %__o4783 = alloca %struct.obstack*, align 8
  %len4810 = alloca i64, align 8
  %nspace4813 = alloca i64, align 8
  %__o4829 = alloca %struct.obstack*, align 8
  %__o4843 = alloca %struct.obstack*, align 8
  %__len4844 = alloca i32, align 4
  %__o4868 = alloca %struct.obstack*, align 8
  %a4885 = alloca i32, align 4
  %__o4891 = alloca %struct.obstack*, align 8
  %__o4908 = alloca %struct.obstack*, align 8
  %__o4926 = alloca %struct.obstack*, align 8
  %len4952 = alloca i64, align 8
  %nspace4955 = alloca i64, align 8
  %__o4971 = alloca %struct.obstack*, align 8
  %__o4985 = alloca %struct.obstack*, align 8
  %__len4986 = alloca i32, align 4
  %__o5010 = alloca %struct.obstack*, align 8
  %len5047 = alloca i64, align 8
  %nspace5050 = alloca i64, align 8
  %__o5066 = alloca %struct.obstack*, align 8
  %__o5080 = alloca %struct.obstack*, align 8
  %__len5081 = alloca i32, align 4
  %__o5105 = alloca %struct.obstack*, align 8
  %len5128 = alloca i64, align 8
  %nspace5131 = alloca i64, align 8
  %__o5147 = alloca %struct.obstack*, align 8
  %__o5161 = alloca %struct.obstack*, align 8
  %__len5162 = alloca i32, align 4
  %__o5186 = alloca %struct.obstack*, align 8
  %len5206 = alloca i64, align 8
  %nspace5209 = alloca i64, align 8
  %__o5225 = alloca %struct.obstack*, align 8
  %__o5239 = alloca %struct.obstack*, align 8
  %__len5240 = alloca i32, align 4
  %__o5264 = alloca %struct.obstack*, align 8
  %len5292 = alloca i64, align 8
  %nspace5295 = alloca i64, align 8
  %__o5311 = alloca %struct.obstack*, align 8
  %__o5325 = alloca %struct.obstack*, align 8
  %__len5326 = alloca i32, align 4
  %__o5350 = alloca %struct.obstack*, align 8
  %a5367 = alloca i32, align 4
  %__o5373 = alloca %struct.obstack*, align 8
  %__o5390 = alloca %struct.obstack*, align 8
  %__o5408 = alloca %struct.obstack*, align 8
  %len5435 = alloca i64, align 8
  %nspace5438 = alloca i64, align 8
  %__o5454 = alloca %struct.obstack*, align 8
  %__o5468 = alloca %struct.obstack*, align 8
  %__len5469 = alloca i32, align 4
  %__o5493 = alloca %struct.obstack*, align 8
  %a5510 = alloca i32, align 4
  %__o5516 = alloca %struct.obstack*, align 8
  %__o5533 = alloca %struct.obstack*, align 8
  %__o5551 = alloca %struct.obstack*, align 8
  %len5578 = alloca i64, align 8
  %nspace5581 = alloca i64, align 8
  %__o5597 = alloca %struct.obstack*, align 8
  %__o5611 = alloca %struct.obstack*, align 8
  %__len5612 = alloca i32, align 4
  %__o5637 = alloca %struct.obstack*, align 8
  %len5655 = alloca i64, align 8
  %nspace5658 = alloca i64, align 8
  %__o5674 = alloca %struct.obstack*, align 8
  %__o5688 = alloca %struct.obstack*, align 8
  %__len5689 = alloca i32, align 4
  %__o5714 = alloca %struct.obstack*, align 8
  %len5732 = alloca i64, align 8
  %nspace5735 = alloca i64, align 8
  %__o5751 = alloca %struct.obstack*, align 8
  %__o5765 = alloca %struct.obstack*, align 8
  %__len5766 = alloca i32, align 4
  %__o5791 = alloca %struct.obstack*, align 8
  %len5809 = alloca i64, align 8
  %nspace5812 = alloca i64, align 8
  %__o5828 = alloca %struct.obstack*, align 8
  %__o5842 = alloca %struct.obstack*, align 8
  %__len5843 = alloca i32, align 4
  %__o5868 = alloca %struct.obstack*, align 8
  %len5907 = alloca i64, align 8
  %nspace5910 = alloca i64, align 8
  %__o5926 = alloca %struct.obstack*, align 8
  %__o5940 = alloca %struct.obstack*, align 8
  %__len5941 = alloca i32, align 4
  %__o5965 = alloca %struct.obstack*, align 8
  %len5989 = alloca i64, align 8
  %nspace5992 = alloca i64, align 8
  %__o6008 = alloca %struct.obstack*, align 8
  %__o6022 = alloca %struct.obstack*, align 8
  %__len6023 = alloca i32, align 4
  %__o6047 = alloca %struct.obstack*, align 8
  %len6074 = alloca i64, align 8
  %nspace6077 = alloca i64, align 8
  %__o6093 = alloca %struct.obstack*, align 8
  %__o6107 = alloca %struct.obstack*, align 8
  %__len6108 = alloca i32, align 4
  %__o6132 = alloca %struct.obstack*, align 8
  %a6159 = alloca i32, align 4
  %__o6165 = alloca %struct.obstack*, align 8
  %__o6182 = alloca %struct.obstack*, align 8
  %__o6200 = alloca %struct.obstack*, align 8
  %len6315 = alloca i64, align 8
  %nspace6318 = alloca i64, align 8
  %__o6334 = alloca %struct.obstack*, align 8
  %__o6348 = alloca %struct.obstack*, align 8
  %__len6349 = alloca i32, align 4
  %__o6373 = alloca %struct.obstack*, align 8
  %len6398 = alloca i64, align 8
  %nspace6401 = alloca i64, align 8
  %__o6417 = alloca %struct.obstack*, align 8
  %__o6431 = alloca %struct.obstack*, align 8
  %__len6432 = alloca i32, align 4
  %__o6456 = alloca %struct.obstack*, align 8
  %len6479 = alloca i64, align 8
  %nspace6480 = alloca i64, align 8
  %__o6496 = alloca %struct.obstack*, align 8
  %__o6510 = alloca %struct.obstack*, align 8
  %__len6511 = alloca i32, align 4
  %__o6534 = alloca %struct.obstack*, align 8
  %test = alloca i32, align 4
  %cond6550 = alloca i8, align 1
  %sep = alloca i8, align 1
  %if_true = alloca i8*, align 8
  %if_false = alloca i8*, align 8
  %next = alloca i8*, align 8
  %category = alloca i8, align 1
  %sep6678 = alloca i8, align 1
  %in = alloca i8*, align 8
  %between = alloca i8*, align 8
  %next6679 = alloca i8*, align 8
  %fnum = alloca i64, align 8
  %fmax = alloca i64, align 8
  %len6750 = alloca i64, align 8
  %nspace6754 = alloca i64, align 8
  %__o6770 = alloca %struct.obstack*, align 8
  %__o6784 = alloca %struct.obstack*, align 8
  %__len6785 = alloca i32, align 4
  %__o6810 = alloca %struct.obstack*, align 8
  %fnum6837 = alloca i64, align 8
  %fmax6838 = alloca i64, align 8
  %fnum6891 = alloca i64, align 8
  %fmax6892 = alloca i64, align 8
  %ordered = alloca %struct.darray*, align 8
  %fnum6946 = alloca i64, align 8
  %fmax6947 = alloca i64, align 8
  %selected = alloca %struct.darray*, align 8
  %k = alloca i32, align 4
  %len7050 = alloca i64, align 8
  %nspace7055 = alloca i64, align 8
  %__o7071 = alloca %struct.obstack*, align 8
  %__o7085 = alloca %struct.obstack*, align 8
  %__len7086 = alloca i32, align 4
  %__o7112 = alloca %struct.obstack*, align 8
  %len7131 = alloca i64, align 8
  %nspace7134 = alloca i64, align 8
  %__o7150 = alloca %struct.obstack*, align 8
  %__o7164 = alloca %struct.obstack*, align 8
  %__len7165 = alloca i32, align 4
  %__o7189 = alloca %struct.obstack*, align 8
  %len7206 = alloca i64, align 8
  %nspace7209 = alloca i64, align 8
  %__o7225 = alloca %struct.obstack*, align 8
  %__o7239 = alloca %struct.obstack*, align 8
  %__len7240 = alloca i32, align 4
  %__o7265 = alloca %struct.obstack*, align 8
  %len7289 = alloca i64, align 8
  %nspace7293 = alloca i64, align 8
  %__o7309 = alloca %struct.obstack*, align 8
  %__o7323 = alloca %struct.obstack*, align 8
  %__len7324 = alloca i32, align 4
  %__o7349 = alloca %struct.obstack*, align 8
  %len7370 = alloca i64, align 8
  %nspace7373 = alloca i64, align 8
  %__o7389 = alloca %struct.obstack*, align 8
  %__o7403 = alloca %struct.obstack*, align 8
  %__len7404 = alloca i32, align 4
  %__o7428 = alloca %struct.obstack*, align 8
  %len7450 = alloca i64, align 8
  %nspace7453 = alloca i64, align 8
  %__o7469 = alloca %struct.obstack*, align 8
  %__o7483 = alloca %struct.obstack*, align 8
  %__len7484 = alloca i32, align 4
  %__o7508 = alloca %struct.obstack*, align 8
  %len7528 = alloca i64, align 8
  %nspace7531 = alloca i64, align 8
  %__o7547 = alloca %struct.obstack*, align 8
  %__o7561 = alloca %struct.obstack*, align 8
  %__len7562 = alloca i32, align 4
  %__o7586 = alloca %struct.obstack*, align 8
  %a7611 = alloca i32, align 4
  %__o7617 = alloca %struct.obstack*, align 8
  %__o7635 = alloca %struct.obstack*, align 8
  %__o7653 = alloca %struct.obstack*, align 8
  store %struct.obstack* %user_string_stack, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.file_job* %file, %struct.file_job** %file.addr, align 8
  store i8* %context_name, i8** %context_name.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %i, align 8
  store i8 32, i8* %padding, align 1
  store i64 0, i64* %width, align 8
  store i32 1, i32* %justification, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7667, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end.7669

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  store i32 %conv3, i32* %type, align 4
  %6 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %6, 37
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %7, 36
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %8, 35
  br i1 %cmp9, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %9 = load i32, i32* %type, align 4
  %cmp12 = icmp eq i32 %9, 92
  br i1 %cmp12, label %if.then, label %if.else.7609

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false, %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  store i64 0, i64* %width, align 8
  store i32 1, i32* %justification, align 4
  store i8 32, i8* %padding, align 1
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 45
  br i1 %cmp16, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %if.then
  %14 = load i64, i64* %i, align 8
  %inc19 = add i64 %14, 1
  store i64 %inc19, i64* %i, align 8
  store i32 -1, i32* %justification, align 4
  %15 = load i64, i64* %i, align 8
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 %15
  %17 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %idxprom = sext i32 %conv21 to i64
  %call = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %call, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %19 to i32
  %and = and i32 %conv23, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.24

if.then.24:                                       ; preds = %if.then.18
  %20 = load i64, i64* %i, align 8
  %inc25 = add i64 %20, 1
  store i64 %inc25, i64* %i, align 8
  %21 = load i8*, i8** %str.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %20
  %22 = load i8, i8* %arrayidx26, align 1
  store i8 %22, i8* %padding, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %23 = load i64, i64* %i, align 8
  %24 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %cmp30 = icmp eq i32 %conv29, 43
  br i1 %cmp30, label %if.then.32, label %if.end.46

if.then.32:                                       ; preds = %if.end.27
  %26 = load i64, i64* %i, align 8
  %inc33 = add i64 %26, 1
  store i64 %inc33, i64* %i, align 8
  store i32 1, i32* %justification, align 4
  %27 = load i64, i64* %i, align 8
  %28 = load i8*, i8** %str.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i16** @__ctype_b_loc() #7
  %30 = load i16*, i16** %call37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %30, i64 %idxprom36
  %31 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %31 to i32
  %and40 = and i32 %conv39, 2048
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %if.then.32
  %32 = load i64, i64* %i, align 8
  %inc43 = add i64 %32, 1
  store i64 %inc43, i64* %i, align 8
  %33 = load i8*, i8** %str.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %33, i64 %32
  %34 = load i8, i8* %arrayidx44, align 1
  store i8 %34, i8* %padding, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.then.32
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.46
  %35 = load i64, i64* %i, align 8
  %36 = load i8*, i8** %str.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %36, i64 %35
  %37 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %37 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %call50 = call i16** @__ctype_b_loc() #7
  %38 = load i16*, i16** %call50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %38, i64 %idxprom49
  %39 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %39 to i32
  %and53 = and i32 %conv52, 2048
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i64, i64* %width, align 8
  %mul = mul i64 %40, 10
  %41 = load i64, i64* %i, align 8
  %inc55 = add i64 %41, 1
  store i64 %inc55, i64* %i, align 8
  %42 = load i8*, i8** %str.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %42, i64 %41
  %43 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %43 to i64
  %add = add i64 %mul, %conv57
  %sub = sub i64 %add, 48
  store i64 %sub, i64* %width, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* %type, align 4
  switch i32 %44, label %sw.epilog.7608 [
    i32 92, label %sw.bb
    i32 37, label %sw.bb.215
    i32 36, label %sw.bb.2280
    i32 35, label %sw.bb.6154
  ]

sw.bb:                                            ; preds = %while.end
  %45 = load i64, i64* %i, align 8
  %46 = load i8*, i8** %str.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %46, i64 %45
  %47 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %47 to i32
  switch i32 %conv59, label %sw.default [
    i32 102, label %sw.bb.60
    i32 110, label %sw.bb.104
  ]

sw.bb.60:                                         ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.bb.60
  %48 = load i64, i64* %width, align 8
  %tobool61 = icmp ne i64 %48, 0
  br i1 %tobool61, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %do.body
  %49 = load i32, i32* %justification, align 4
  %cmp62 = icmp slt i32 %49, 0
  br i1 %cmp62, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %land.lhs.true
  %50 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %50, %struct.obstack** %__o, align 8
  %51 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %51, i32 0, i32 3
  %52 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 4
  %54 = load i8*, i8** %chunk_limit, align 8
  %cmp65 = icmp ugt i8* %add.ptr, %54
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  %55 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %55, i32 1)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.64
  %56 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free69 = getelementptr inbounds %struct.obstack, %struct.obstack* %56, i32 0, i32 3
  %57 = load i8*, i8** %next_free69, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %next_free69, align 8
  store i8 12, i8* %57, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.68, %land.lhs.true, %do.body
  store i32 0, i32* %a, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end.70
  %58 = load i32, i32* %a, align 4
  %59 = load i64, i64* %width, align 8
  %conv72 = trunc i64 %59 to i32
  %sub73 = sub nsw i32 %conv72, 1
  %cmp74 = icmp slt i32 %58, %sub73
  br i1 %cmp74, label %for.body.76, label %for.end

for.body.76:                                      ; preds = %for.cond.71
  %60 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %60, %struct.obstack** %__o77, align 8
  %61 = load %struct.obstack*, %struct.obstack** %__o77, align 8
  %next_free78 = getelementptr inbounds %struct.obstack, %struct.obstack* %61, i32 0, i32 3
  %62 = load i8*, i8** %next_free78, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load %struct.obstack*, %struct.obstack** %__o77, align 8
  %chunk_limit80 = getelementptr inbounds %struct.obstack, %struct.obstack* %63, i32 0, i32 4
  %64 = load i8*, i8** %chunk_limit80, align 8
  %cmp81 = icmp ugt i8* %add.ptr79, %64
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.body.76
  %65 = load %struct.obstack*, %struct.obstack** %__o77, align 8
  call void @_obstack_newchunk(%struct.obstack* %65, i32 1)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %for.body.76
  %66 = load i8, i8* %padding, align 1
  %67 = load %struct.obstack*, %struct.obstack** %__o77, align 8
  %next_free85 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 3
  %68 = load i8*, i8** %next_free85, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr86, i8** %next_free85, align 8
  store i8 %66, i8* %68, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %69 = load i32, i32* %a, align 4
  %inc87 = add nsw i32 %69, 1
  store i32 %inc87, i32* %a, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  %70 = load i64, i64* %width, align 8
  %tobool88 = icmp ne i64 %70, 0
  br i1 %tobool88, label %lor.lhs.false.89, label %if.then.92

lor.lhs.false.89:                                 ; preds = %for.end
  %71 = load i32, i32* %justification, align 4
  %cmp90 = icmp sgt i32 %71, 0
  br i1 %cmp90, label %if.then.92, label %if.end.103

if.then.92:                                       ; preds = %lor.lhs.false.89, %for.end
  %72 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %72, %struct.obstack** %__o93, align 8
  %73 = load %struct.obstack*, %struct.obstack** %__o93, align 8
  %next_free94 = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 3
  %74 = load i8*, i8** %next_free94, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load %struct.obstack*, %struct.obstack** %__o93, align 8
  %chunk_limit96 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 4
  %76 = load i8*, i8** %chunk_limit96, align 8
  %cmp97 = icmp ugt i8* %add.ptr95, %76
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.92
  %77 = load %struct.obstack*, %struct.obstack** %__o93, align 8
  call void @_obstack_newchunk(%struct.obstack* %77, i32 1)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.then.92
  %78 = load %struct.obstack*, %struct.obstack** %__o93, align 8
  %next_free101 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 3
  %79 = load i8*, i8** %next_free101, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr102, i8** %next_free101, align 8
  store i8 12, i8* %79, align 1
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.100, %lor.lhs.false.89
  br label %do.end

do.end:                                           ; preds = %if.end.103
  br label %sw.epilog

sw.bb.104:                                        ; preds = %sw.bb
  br label %do.body.105

do.body.105:                                      ; preds = %sw.bb.104
  %80 = load i64, i64* %width, align 8
  %tobool107 = icmp ne i64 %80, 0
  br i1 %tobool107, label %land.lhs.true.108, label %if.end.122

land.lhs.true.108:                                ; preds = %do.body.105
  %81 = load i32, i32* %justification, align 4
  %cmp109 = icmp slt i32 %81, 0
  br i1 %cmp109, label %if.then.111, label %if.end.122

if.then.111:                                      ; preds = %land.lhs.true.108
  %82 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %82, %struct.obstack** %__o112, align 8
  %83 = load %struct.obstack*, %struct.obstack** %__o112, align 8
  %next_free113 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 3
  %84 = load i8*, i8** %next_free113, align 8
  %add.ptr114 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load %struct.obstack*, %struct.obstack** %__o112, align 8
  %chunk_limit115 = getelementptr inbounds %struct.obstack, %struct.obstack* %85, i32 0, i32 4
  %86 = load i8*, i8** %chunk_limit115, align 8
  %cmp116 = icmp ugt i8* %add.ptr114, %86
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.111
  %87 = load %struct.obstack*, %struct.obstack** %__o112, align 8
  call void @_obstack_newchunk(%struct.obstack* %87, i32 1)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.111
  %88 = load %struct.obstack*, %struct.obstack** %__o112, align 8
  %next_free120 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 3
  %89 = load i8*, i8** %next_free120, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr121, i8** %next_free120, align 8
  store i8 10, i8* %89, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.119, %land.lhs.true.108, %do.body.105
  store i32 0, i32* %a106, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.139, %if.end.122
  %90 = load i32, i32* %a106, align 4
  %91 = load i64, i64* %width, align 8
  %conv124 = trunc i64 %91 to i32
  %sub125 = sub nsw i32 %conv124, 1
  %cmp126 = icmp slt i32 %90, %sub125
  br i1 %cmp126, label %for.body.128, label %for.end.141

for.body.128:                                     ; preds = %for.cond.123
  %92 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %92, %struct.obstack** %__o129, align 8
  %93 = load %struct.obstack*, %struct.obstack** %__o129, align 8
  %next_free130 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 3
  %94 = load i8*, i8** %next_free130, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load %struct.obstack*, %struct.obstack** %__o129, align 8
  %chunk_limit132 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 4
  %96 = load i8*, i8** %chunk_limit132, align 8
  %cmp133 = icmp ugt i8* %add.ptr131, %96
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %for.body.128
  %97 = load %struct.obstack*, %struct.obstack** %__o129, align 8
  call void @_obstack_newchunk(%struct.obstack* %97, i32 1)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %for.body.128
  %98 = load i8, i8* %padding, align 1
  %99 = load %struct.obstack*, %struct.obstack** %__o129, align 8
  %next_free137 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 3
  %100 = load i8*, i8** %next_free137, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr138, i8** %next_free137, align 8
  store i8 %98, i8* %100, align 1
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.136
  %101 = load i32, i32* %a106, align 4
  %inc140 = add nsw i32 %101, 1
  store i32 %inc140, i32* %a106, align 4
  br label %for.cond.123

for.end.141:                                      ; preds = %for.cond.123
  %102 = load i64, i64* %width, align 8
  %tobool142 = icmp ne i64 %102, 0
  br i1 %tobool142, label %lor.lhs.false.143, label %if.then.146

lor.lhs.false.143:                                ; preds = %for.end.141
  %103 = load i32, i32* %justification, align 4
  %cmp144 = icmp sgt i32 %103, 0
  br i1 %cmp144, label %if.then.146, label %if.end.157

if.then.146:                                      ; preds = %lor.lhs.false.143, %for.end.141
  %104 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %104, %struct.obstack** %__o147, align 8
  %105 = load %struct.obstack*, %struct.obstack** %__o147, align 8
  %next_free148 = getelementptr inbounds %struct.obstack, %struct.obstack* %105, i32 0, i32 3
  %106 = load i8*, i8** %next_free148, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load %struct.obstack*, %struct.obstack** %__o147, align 8
  %chunk_limit150 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 4
  %108 = load i8*, i8** %chunk_limit150, align 8
  %cmp151 = icmp ugt i8* %add.ptr149, %108
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.146
  %109 = load %struct.obstack*, %struct.obstack** %__o147, align 8
  call void @_obstack_newchunk(%struct.obstack* %109, i32 1)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.then.146
  %110 = load %struct.obstack*, %struct.obstack** %__o147, align 8
  %next_free155 = getelementptr inbounds %struct.obstack, %struct.obstack* %110, i32 0, i32 3
  %111 = load i8*, i8** %next_free155, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr156, i8** %next_free155, align 8
  store i8 10, i8* %111, align 1
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.154, %lor.lhs.false.143
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  br label %do.body.159

do.body.159:                                      ; preds = %sw.default
  %112 = load i64, i64* %width, align 8
  %tobool161 = icmp ne i64 %112, 0
  br i1 %tobool161, label %land.lhs.true.162, label %if.end.177

land.lhs.true.162:                                ; preds = %do.body.159
  %113 = load i32, i32* %justification, align 4
  %cmp163 = icmp slt i32 %113, 0
  br i1 %cmp163, label %if.then.165, label %if.end.177

if.then.165:                                      ; preds = %land.lhs.true.162
  %114 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %114, %struct.obstack** %__o166, align 8
  %115 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %next_free167 = getelementptr inbounds %struct.obstack, %struct.obstack* %115, i32 0, i32 3
  %116 = load i8*, i8** %next_free167, align 8
  %add.ptr168 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %chunk_limit169 = getelementptr inbounds %struct.obstack, %struct.obstack* %117, i32 0, i32 4
  %118 = load i8*, i8** %chunk_limit169, align 8
  %cmp170 = icmp ugt i8* %add.ptr168, %118
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.165
  %119 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  call void @_obstack_newchunk(%struct.obstack* %119, i32 1)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.then.165
  %120 = load i64, i64* %i, align 8
  %121 = load i8*, i8** %str.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %121, i64 %120
  %122 = load i8, i8* %arrayidx174, align 1
  %123 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %next_free175 = getelementptr inbounds %struct.obstack, %struct.obstack* %123, i32 0, i32 3
  %124 = load i8*, i8** %next_free175, align 8
  %incdec.ptr176 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr176, i8** %next_free175, align 8
  store i8 %122, i8* %124, align 1
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.173, %land.lhs.true.162, %do.body.159
  store i32 0, i32* %a160, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.194, %if.end.177
  %125 = load i32, i32* %a160, align 4
  %126 = load i64, i64* %width, align 8
  %conv179 = trunc i64 %126 to i32
  %sub180 = sub nsw i32 %conv179, 1
  %cmp181 = icmp slt i32 %125, %sub180
  br i1 %cmp181, label %for.body.183, label %for.end.196

for.body.183:                                     ; preds = %for.cond.178
  %127 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %127, %struct.obstack** %__o184, align 8
  %128 = load %struct.obstack*, %struct.obstack** %__o184, align 8
  %next_free185 = getelementptr inbounds %struct.obstack, %struct.obstack* %128, i32 0, i32 3
  %129 = load i8*, i8** %next_free185, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %129, i64 1
  %130 = load %struct.obstack*, %struct.obstack** %__o184, align 8
  %chunk_limit187 = getelementptr inbounds %struct.obstack, %struct.obstack* %130, i32 0, i32 4
  %131 = load i8*, i8** %chunk_limit187, align 8
  %cmp188 = icmp ugt i8* %add.ptr186, %131
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %for.body.183
  %132 = load %struct.obstack*, %struct.obstack** %__o184, align 8
  call void @_obstack_newchunk(%struct.obstack* %132, i32 1)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %for.body.183
  %133 = load i8, i8* %padding, align 1
  %134 = load %struct.obstack*, %struct.obstack** %__o184, align 8
  %next_free192 = getelementptr inbounds %struct.obstack, %struct.obstack* %134, i32 0, i32 3
  %135 = load i8*, i8** %next_free192, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr193, i8** %next_free192, align 8
  store i8 %133, i8* %135, align 1
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.191
  %136 = load i32, i32* %a160, align 4
  %inc195 = add nsw i32 %136, 1
  store i32 %inc195, i32* %a160, align 4
  br label %for.cond.178

for.end.196:                                      ; preds = %for.cond.178
  %137 = load i64, i64* %width, align 8
  %tobool197 = icmp ne i64 %137, 0
  br i1 %tobool197, label %lor.lhs.false.198, label %if.then.201

lor.lhs.false.198:                                ; preds = %for.end.196
  %138 = load i32, i32* %justification, align 4
  %cmp199 = icmp sgt i32 %138, 0
  br i1 %cmp199, label %if.then.201, label %if.end.213

if.then.201:                                      ; preds = %lor.lhs.false.198, %for.end.196
  %139 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %139, %struct.obstack** %__o202, align 8
  %140 = load %struct.obstack*, %struct.obstack** %__o202, align 8
  %next_free203 = getelementptr inbounds %struct.obstack, %struct.obstack* %140, i32 0, i32 3
  %141 = load i8*, i8** %next_free203, align 8
  %add.ptr204 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load %struct.obstack*, %struct.obstack** %__o202, align 8
  %chunk_limit205 = getelementptr inbounds %struct.obstack, %struct.obstack* %142, i32 0, i32 4
  %143 = load i8*, i8** %chunk_limit205, align 8
  %cmp206 = icmp ugt i8* %add.ptr204, %143
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.then.201
  %144 = load %struct.obstack*, %struct.obstack** %__o202, align 8
  call void @_obstack_newchunk(%struct.obstack* %144, i32 1)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.208, %if.then.201
  %145 = load i64, i64* %i, align 8
  %146 = load i8*, i8** %str.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %146, i64 %145
  %147 = load i8, i8* %arrayidx210, align 1
  %148 = load %struct.obstack*, %struct.obstack** %__o202, align 8
  %next_free211 = getelementptr inbounds %struct.obstack, %struct.obstack* %148, i32 0, i32 3
  %149 = load i8*, i8** %next_free211, align 8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr212, i8** %next_free211, align 8
  store i8 %147, i8* %149, align 1
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.209, %lor.lhs.false.198
  br label %do.end.214

do.end.214:                                       ; preds = %if.end.213
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.214, %do.end.158, %do.end
  br label %sw.epilog.7608

sw.bb.215:                                        ; preds = %while.end
  %150 = load i64, i64* %i, align 8
  %151 = load i8*, i8** %str.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %151, i64 %150
  %152 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %152 to i32
  switch i32 %conv217, label %sw.default.2273 [
    i32 37, label %sw.bb.218
    i32 35, label %sw.bb.273
    i32 97, label %sw.bb.328
    i32 65, label %sw.bb.397
    i32 99, label %sw.bb.483
    i32 67, label %sw.bb.573
    i32 100, label %sw.bb.652
    i32 68, label %sw.bb.736
    i32 101, label %sw.bb.856
    i32 69, label %sw.bb.935
    i32 70, label %sw.bb.1014
    i32 109, label %sw.bb.1099
    i32 77, label %sw.bb.1181
    i32 110, label %sw.bb.1256
    i32 78, label %sw.bb.1331
    i32 112, label %sw.bb.1406
    i32 113, label %sw.bb.1549
    i32 81, label %sw.bb.1628
    i32 115, label %sw.bb.1707
    i32 116, label %sw.bb.1850
    i32 84, label %sw.bb.1947
    i32 42, label %sw.bb.2028
    i32 86, label %sw.bb.2111
    i32 87, label %sw.bb.2188
  ]

sw.bb.218:                                        ; preds = %sw.bb.215
  br label %do.body.219

do.body.219:                                      ; preds = %sw.bb.218
  %153 = load i64, i64* %width, align 8
  %tobool221 = icmp ne i64 %153, 0
  br i1 %tobool221, label %land.lhs.true.222, label %if.end.236

land.lhs.true.222:                                ; preds = %do.body.219
  %154 = load i32, i32* %justification, align 4
  %cmp223 = icmp slt i32 %154, 0
  br i1 %cmp223, label %if.then.225, label %if.end.236

if.then.225:                                      ; preds = %land.lhs.true.222
  %155 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %155, %struct.obstack** %__o226, align 8
  %156 = load %struct.obstack*, %struct.obstack** %__o226, align 8
  %next_free227 = getelementptr inbounds %struct.obstack, %struct.obstack* %156, i32 0, i32 3
  %157 = load i8*, i8** %next_free227, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load %struct.obstack*, %struct.obstack** %__o226, align 8
  %chunk_limit229 = getelementptr inbounds %struct.obstack, %struct.obstack* %158, i32 0, i32 4
  %159 = load i8*, i8** %chunk_limit229, align 8
  %cmp230 = icmp ugt i8* %add.ptr228, %159
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.then.225
  %160 = load %struct.obstack*, %struct.obstack** %__o226, align 8
  call void @_obstack_newchunk(%struct.obstack* %160, i32 1)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %if.then.225
  %161 = load %struct.obstack*, %struct.obstack** %__o226, align 8
  %next_free234 = getelementptr inbounds %struct.obstack, %struct.obstack* %161, i32 0, i32 3
  %162 = load i8*, i8** %next_free234, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr235, i8** %next_free234, align 8
  store i8 37, i8* %162, align 1
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.233, %land.lhs.true.222, %do.body.219
  store i32 0, i32* %a220, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.253, %if.end.236
  %163 = load i32, i32* %a220, align 4
  %164 = load i64, i64* %width, align 8
  %conv238 = trunc i64 %164 to i32
  %sub239 = sub nsw i32 %conv238, 1
  %cmp240 = icmp slt i32 %163, %sub239
  br i1 %cmp240, label %for.body.242, label %for.end.255

for.body.242:                                     ; preds = %for.cond.237
  %165 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %165, %struct.obstack** %__o243, align 8
  %166 = load %struct.obstack*, %struct.obstack** %__o243, align 8
  %next_free244 = getelementptr inbounds %struct.obstack, %struct.obstack* %166, i32 0, i32 3
  %167 = load i8*, i8** %next_free244, align 8
  %add.ptr245 = getelementptr inbounds i8, i8* %167, i64 1
  %168 = load %struct.obstack*, %struct.obstack** %__o243, align 8
  %chunk_limit246 = getelementptr inbounds %struct.obstack, %struct.obstack* %168, i32 0, i32 4
  %169 = load i8*, i8** %chunk_limit246, align 8
  %cmp247 = icmp ugt i8* %add.ptr245, %169
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %for.body.242
  %170 = load %struct.obstack*, %struct.obstack** %__o243, align 8
  call void @_obstack_newchunk(%struct.obstack* %170, i32 1)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %for.body.242
  %171 = load i8, i8* %padding, align 1
  %172 = load %struct.obstack*, %struct.obstack** %__o243, align 8
  %next_free251 = getelementptr inbounds %struct.obstack, %struct.obstack* %172, i32 0, i32 3
  %173 = load i8*, i8** %next_free251, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr252, i8** %next_free251, align 8
  store i8 %171, i8* %173, align 1
  br label %for.inc.253

for.inc.253:                                      ; preds = %if.end.250
  %174 = load i32, i32* %a220, align 4
  %inc254 = add nsw i32 %174, 1
  store i32 %inc254, i32* %a220, align 4
  br label %for.cond.237

for.end.255:                                      ; preds = %for.cond.237
  %175 = load i64, i64* %width, align 8
  %tobool256 = icmp ne i64 %175, 0
  br i1 %tobool256, label %lor.lhs.false.257, label %if.then.260

lor.lhs.false.257:                                ; preds = %for.end.255
  %176 = load i32, i32* %justification, align 4
  %cmp258 = icmp sgt i32 %176, 0
  br i1 %cmp258, label %if.then.260, label %if.end.271

if.then.260:                                      ; preds = %lor.lhs.false.257, %for.end.255
  %177 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %177, %struct.obstack** %__o261, align 8
  %178 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %next_free262 = getelementptr inbounds %struct.obstack, %struct.obstack* %178, i32 0, i32 3
  %179 = load i8*, i8** %next_free262, align 8
  %add.ptr263 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %chunk_limit264 = getelementptr inbounds %struct.obstack, %struct.obstack* %180, i32 0, i32 4
  %181 = load i8*, i8** %chunk_limit264, align 8
  %cmp265 = icmp ugt i8* %add.ptr263, %181
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.260
  %182 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  call void @_obstack_newchunk(%struct.obstack* %182, i32 1)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.then.260
  %183 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %next_free269 = getelementptr inbounds %struct.obstack, %struct.obstack* %183, i32 0, i32 3
  %184 = load i8*, i8** %next_free269, align 8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr270, i8** %next_free269, align 8
  store i8 37, i8* %184, align 1
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.268, %lor.lhs.false.257
  br label %do.end.272

do.end.272:                                       ; preds = %if.end.271
  br label %sw.epilog.2279

sw.bb.273:                                        ; preds = %sw.bb.215
  br label %do.body.274

do.body.274:                                      ; preds = %sw.bb.273
  %185 = load i64, i64* %width, align 8
  %tobool276 = icmp ne i64 %185, 0
  br i1 %tobool276, label %land.lhs.true.277, label %if.end.291

land.lhs.true.277:                                ; preds = %do.body.274
  %186 = load i32, i32* %justification, align 4
  %cmp278 = icmp slt i32 %186, 0
  br i1 %cmp278, label %if.then.280, label %if.end.291

if.then.280:                                      ; preds = %land.lhs.true.277
  %187 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %187, %struct.obstack** %__o281, align 8
  %188 = load %struct.obstack*, %struct.obstack** %__o281, align 8
  %next_free282 = getelementptr inbounds %struct.obstack, %struct.obstack* %188, i32 0, i32 3
  %189 = load i8*, i8** %next_free282, align 8
  %add.ptr283 = getelementptr inbounds i8, i8* %189, i64 1
  %190 = load %struct.obstack*, %struct.obstack** %__o281, align 8
  %chunk_limit284 = getelementptr inbounds %struct.obstack, %struct.obstack* %190, i32 0, i32 4
  %191 = load i8*, i8** %chunk_limit284, align 8
  %cmp285 = icmp ugt i8* %add.ptr283, %191
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %if.then.280
  %192 = load %struct.obstack*, %struct.obstack** %__o281, align 8
  call void @_obstack_newchunk(%struct.obstack* %192, i32 1)
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %if.then.280
  %193 = load %struct.obstack*, %struct.obstack** %__o281, align 8
  %next_free289 = getelementptr inbounds %struct.obstack, %struct.obstack* %193, i32 0, i32 3
  %194 = load i8*, i8** %next_free289, align 8
  %incdec.ptr290 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr290, i8** %next_free289, align 8
  store i8 3, i8* %194, align 1
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.288, %land.lhs.true.277, %do.body.274
  store i32 0, i32* %a275, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.308, %if.end.291
  %195 = load i32, i32* %a275, align 4
  %196 = load i64, i64* %width, align 8
  %conv293 = trunc i64 %196 to i32
  %sub294 = sub nsw i32 %conv293, 1
  %cmp295 = icmp slt i32 %195, %sub294
  br i1 %cmp295, label %for.body.297, label %for.end.310

for.body.297:                                     ; preds = %for.cond.292
  %197 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %197, %struct.obstack** %__o298, align 8
  %198 = load %struct.obstack*, %struct.obstack** %__o298, align 8
  %next_free299 = getelementptr inbounds %struct.obstack, %struct.obstack* %198, i32 0, i32 3
  %199 = load i8*, i8** %next_free299, align 8
  %add.ptr300 = getelementptr inbounds i8, i8* %199, i64 1
  %200 = load %struct.obstack*, %struct.obstack** %__o298, align 8
  %chunk_limit301 = getelementptr inbounds %struct.obstack, %struct.obstack* %200, i32 0, i32 4
  %201 = load i8*, i8** %chunk_limit301, align 8
  %cmp302 = icmp ugt i8* %add.ptr300, %201
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %for.body.297
  %202 = load %struct.obstack*, %struct.obstack** %__o298, align 8
  call void @_obstack_newchunk(%struct.obstack* %202, i32 1)
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %for.body.297
  %203 = load i8, i8* %padding, align 1
  %204 = load %struct.obstack*, %struct.obstack** %__o298, align 8
  %next_free306 = getelementptr inbounds %struct.obstack, %struct.obstack* %204, i32 0, i32 3
  %205 = load i8*, i8** %next_free306, align 8
  %incdec.ptr307 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr307, i8** %next_free306, align 8
  store i8 %203, i8* %205, align 1
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.305
  %206 = load i32, i32* %a275, align 4
  %inc309 = add nsw i32 %206, 1
  store i32 %inc309, i32* %a275, align 4
  br label %for.cond.292

for.end.310:                                      ; preds = %for.cond.292
  %207 = load i64, i64* %width, align 8
  %tobool311 = icmp ne i64 %207, 0
  br i1 %tobool311, label %lor.lhs.false.312, label %if.then.315

lor.lhs.false.312:                                ; preds = %for.end.310
  %208 = load i32, i32* %justification, align 4
  %cmp313 = icmp sgt i32 %208, 0
  br i1 %cmp313, label %if.then.315, label %if.end.326

if.then.315:                                      ; preds = %lor.lhs.false.312, %for.end.310
  %209 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %209, %struct.obstack** %__o316, align 8
  %210 = load %struct.obstack*, %struct.obstack** %__o316, align 8
  %next_free317 = getelementptr inbounds %struct.obstack, %struct.obstack* %210, i32 0, i32 3
  %211 = load i8*, i8** %next_free317, align 8
  %add.ptr318 = getelementptr inbounds i8, i8* %211, i64 1
  %212 = load %struct.obstack*, %struct.obstack** %__o316, align 8
  %chunk_limit319 = getelementptr inbounds %struct.obstack, %struct.obstack* %212, i32 0, i32 4
  %213 = load i8*, i8** %chunk_limit319, align 8
  %cmp320 = icmp ugt i8* %add.ptr318, %213
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.then.315
  %214 = load %struct.obstack*, %struct.obstack** %__o316, align 8
  call void @_obstack_newchunk(%struct.obstack* %214, i32 1)
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.then.315
  %215 = load %struct.obstack*, %struct.obstack** %__o316, align 8
  %next_free324 = getelementptr inbounds %struct.obstack, %struct.obstack* %215, i32 0, i32 3
  %216 = load i8*, i8** %next_free324, align 8
  %incdec.ptr325 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr325, i8** %next_free324, align 8
  store i8 3, i8* %216, align 1
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.323, %lor.lhs.false.312
  br label %do.end.327

do.end.327:                                       ; preds = %if.end.326
  br label %sw.epilog.2279

sw.bb.328:                                        ; preds = %sw.bb.215
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i32 0
  %call329 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #5
  %217 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call330 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %call331 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %call329, i8* %call330) #5
  br label %do.body.332

do.body.332:                                      ; preds = %sw.bb.328
  %arraydecay333 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i32 0
  %call334 = call i64 @strlen(i8* %arraydecay333) #6
  store i64 %call334, i64* %len, align 8
  %218 = load i64, i64* %len, align 8
  %219 = load i64, i64* %width, align 8
  %cmp335 = icmp ugt i64 %218, %219
  br i1 %cmp335, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.332
  br label %cond.end

cond.false:                                       ; preds = %do.body.332
  %220 = load i64, i64* %width, align 8
  %221 = load i64, i64* %len, align 8
  %sub337 = sub i64 %220, %221
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub337, %cond.false ]
  store i64 %cond, i64* %nspace, align 8
  %222 = load i64, i64* %width, align 8
  %tobool338 = icmp ne i64 %222, 0
  br i1 %tobool338, label %land.lhs.true.339, label %if.end.358

land.lhs.true.339:                                ; preds = %cond.end
  %223 = load i32, i32* %justification, align 4
  %cmp340 = icmp sgt i32 %223, 0
  br i1 %cmp340, label %if.then.342, label %if.end.358

if.then.342:                                      ; preds = %land.lhs.true.339
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.356, %if.then.342
  %224 = load i64, i64* %nspace, align 8
  %tobool344 = icmp ne i64 %224, 0
  br i1 %tobool344, label %for.body.345, label %for.end.357

for.body.345:                                     ; preds = %for.cond.343
  %225 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %225, %struct.obstack** %__o346, align 8
  %226 = load %struct.obstack*, %struct.obstack** %__o346, align 8
  %next_free347 = getelementptr inbounds %struct.obstack, %struct.obstack* %226, i32 0, i32 3
  %227 = load i8*, i8** %next_free347, align 8
  %add.ptr348 = getelementptr inbounds i8, i8* %227, i64 1
  %228 = load %struct.obstack*, %struct.obstack** %__o346, align 8
  %chunk_limit349 = getelementptr inbounds %struct.obstack, %struct.obstack* %228, i32 0, i32 4
  %229 = load i8*, i8** %chunk_limit349, align 8
  %cmp350 = icmp ugt i8* %add.ptr348, %229
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %for.body.345
  %230 = load %struct.obstack*, %struct.obstack** %__o346, align 8
  call void @_obstack_newchunk(%struct.obstack* %230, i32 1)
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %for.body.345
  %231 = load i8, i8* %padding, align 1
  %232 = load %struct.obstack*, %struct.obstack** %__o346, align 8
  %next_free354 = getelementptr inbounds %struct.obstack, %struct.obstack* %232, i32 0, i32 3
  %233 = load i8*, i8** %next_free354, align 8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr355, i8** %next_free354, align 8
  store i8 %231, i8* %233, align 1
  br label %for.inc.356

for.inc.356:                                      ; preds = %if.end.353
  %234 = load i64, i64* %nspace, align 8
  %dec = add i64 %234, -1
  store i64 %dec, i64* %nspace, align 8
  br label %for.cond.343

for.end.357:                                      ; preds = %for.cond.343
  br label %if.end.358

if.end.358:                                       ; preds = %for.end.357, %land.lhs.true.339, %cond.end
  %235 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %235, %struct.obstack** %__o359, align 8
  %236 = load i64, i64* %len, align 8
  %conv360 = trunc i64 %236 to i32
  store i32 %conv360, i32* %__len, align 4
  %237 = load %struct.obstack*, %struct.obstack** %__o359, align 8
  %next_free361 = getelementptr inbounds %struct.obstack, %struct.obstack* %237, i32 0, i32 3
  %238 = load i8*, i8** %next_free361, align 8
  %239 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %239 to i64
  %add.ptr362 = getelementptr inbounds i8, i8* %238, i64 %idx.ext
  %240 = load %struct.obstack*, %struct.obstack** %__o359, align 8
  %chunk_limit363 = getelementptr inbounds %struct.obstack, %struct.obstack* %240, i32 0, i32 4
  %241 = load i8*, i8** %chunk_limit363, align 8
  %cmp364 = icmp ugt i8* %add.ptr362, %241
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.end.358
  %242 = load %struct.obstack*, %struct.obstack** %__o359, align 8
  %243 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %242, i32 %243)
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.366, %if.end.358
  %244 = load %struct.obstack*, %struct.obstack** %__o359, align 8
  %next_free368 = getelementptr inbounds %struct.obstack, %struct.obstack* %244, i32 0, i32 3
  %245 = load i8*, i8** %next_free368, align 8
  %arraydecay369 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i32 0
  %246 = load i32, i32* %__len, align 4
  %conv370 = sext i32 %246 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %arraydecay369, i64 %conv370, i32 1, i1 false)
  %247 = load i32, i32* %__len, align 4
  %248 = load %struct.obstack*, %struct.obstack** %__o359, align 8
  %next_free371 = getelementptr inbounds %struct.obstack, %struct.obstack* %248, i32 0, i32 3
  %249 = load i8*, i8** %next_free371, align 8
  %idx.ext372 = sext i32 %247 to i64
  %add.ptr373 = getelementptr inbounds i8, i8* %249, i64 %idx.ext372
  store i8* %add.ptr373, i8** %next_free371, align 8
  %250 = load i64, i64* %width, align 8
  %tobool374 = icmp ne i64 %250, 0
  br i1 %tobool374, label %land.lhs.true.375, label %if.end.395

land.lhs.true.375:                                ; preds = %if.end.367
  %251 = load i32, i32* %justification, align 4
  %cmp376 = icmp slt i32 %251, 0
  br i1 %cmp376, label %if.then.378, label %if.end.395

if.then.378:                                      ; preds = %land.lhs.true.375
  br label %for.cond.379

for.cond.379:                                     ; preds = %for.inc.392, %if.then.378
  %252 = load i64, i64* %nspace, align 8
  %tobool380 = icmp ne i64 %252, 0
  br i1 %tobool380, label %for.body.381, label %for.end.394

for.body.381:                                     ; preds = %for.cond.379
  %253 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %253, %struct.obstack** %__o382, align 8
  %254 = load %struct.obstack*, %struct.obstack** %__o382, align 8
  %next_free383 = getelementptr inbounds %struct.obstack, %struct.obstack* %254, i32 0, i32 3
  %255 = load i8*, i8** %next_free383, align 8
  %add.ptr384 = getelementptr inbounds i8, i8* %255, i64 1
  %256 = load %struct.obstack*, %struct.obstack** %__o382, align 8
  %chunk_limit385 = getelementptr inbounds %struct.obstack, %struct.obstack* %256, i32 0, i32 4
  %257 = load i8*, i8** %chunk_limit385, align 8
  %cmp386 = icmp ugt i8* %add.ptr384, %257
  br i1 %cmp386, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %for.body.381
  %258 = load %struct.obstack*, %struct.obstack** %__o382, align 8
  call void @_obstack_newchunk(%struct.obstack* %258, i32 1)
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.388, %for.body.381
  %259 = load i8, i8* %padding, align 1
  %260 = load %struct.obstack*, %struct.obstack** %__o382, align 8
  %next_free390 = getelementptr inbounds %struct.obstack, %struct.obstack* %260, i32 0, i32 3
  %261 = load i8*, i8** %next_free390, align 8
  %incdec.ptr391 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr391, i8** %next_free390, align 8
  store i8 %259, i8* %261, align 1
  br label %for.inc.392

for.inc.392:                                      ; preds = %if.end.389
  %262 = load i64, i64* %nspace, align 8
  %dec393 = add i64 %262, -1
  store i64 %dec393, i64* %nspace, align 8
  br label %for.cond.379

for.end.394:                                      ; preds = %for.cond.379
  br label %if.end.395

if.end.395:                                       ; preds = %for.end.394, %land.lhs.true.375, %if.end.367
  br label %do.end.396

do.end.396:                                       ; preds = %if.end.395
  br label %sw.epilog.2279

sw.bb.397:                                        ; preds = %sw.bb.215
  %263 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call398 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call398, i8** %cp, align 8
  %264 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call399 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call399, i8** %cp2, align 8
  %265 = load i8*, i8** %cp2, align 8
  %tobool400 = icmp ne i8* %265, null
  br i1 %tobool400, label %if.then.401, label %if.else

if.then.401:                                      ; preds = %sw.bb.397
  %arraydecay402 = getelementptr inbounds [256 x i8], [256 x i8]* %buf3, i32 0, i32 0
  %call403 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #5
  %266 = load i8*, i8** %cp, align 8
  %267 = load i8*, i8** %cp2, align 8
  %call404 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay402, i8* %call403, i8* %266, i8* %267) #5
  br label %if.end.408

if.else:                                          ; preds = %sw.bb.397
  %arraydecay405 = getelementptr inbounds [256 x i8], [256 x i8]* %buf3, i32 0, i32 0
  %call406 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #5
  %268 = load i8*, i8** %cp, align 8
  %call407 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay405, i8* %call406, i8* %268) #5
  br label %if.end.408

if.end.408:                                       ; preds = %if.else, %if.then.401
  br label %do.body.409

do.body.409:                                      ; preds = %if.end.408
  %arraydecay411 = getelementptr inbounds [256 x i8], [256 x i8]* %buf3, i32 0, i32 0
  %call412 = call i64 @strlen(i8* %arraydecay411) #6
  store i64 %call412, i64* %len410, align 8
  %269 = load i64, i64* %len410, align 8
  %270 = load i64, i64* %width, align 8
  %cmp414 = icmp ugt i64 %269, %270
  br i1 %cmp414, label %cond.true.416, label %cond.false.417

cond.true.416:                                    ; preds = %do.body.409
  br label %cond.end.419

cond.false.417:                                   ; preds = %do.body.409
  %271 = load i64, i64* %width, align 8
  %272 = load i64, i64* %len410, align 8
  %sub418 = sub i64 %271, %272
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.417, %cond.true.416
  %cond420 = phi i64 [ 0, %cond.true.416 ], [ %sub418, %cond.false.417 ]
  store i64 %cond420, i64* %nspace413, align 8
  %273 = load i64, i64* %width, align 8
  %tobool421 = icmp ne i64 %273, 0
  br i1 %tobool421, label %land.lhs.true.422, label %if.end.442

land.lhs.true.422:                                ; preds = %cond.end.419
  %274 = load i32, i32* %justification, align 4
  %cmp423 = icmp sgt i32 %274, 0
  br i1 %cmp423, label %if.then.425, label %if.end.442

if.then.425:                                      ; preds = %land.lhs.true.422
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.439, %if.then.425
  %275 = load i64, i64* %nspace413, align 8
  %tobool427 = icmp ne i64 %275, 0
  br i1 %tobool427, label %for.body.428, label %for.end.441

for.body.428:                                     ; preds = %for.cond.426
  %276 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %276, %struct.obstack** %__o429, align 8
  %277 = load %struct.obstack*, %struct.obstack** %__o429, align 8
  %next_free430 = getelementptr inbounds %struct.obstack, %struct.obstack* %277, i32 0, i32 3
  %278 = load i8*, i8** %next_free430, align 8
  %add.ptr431 = getelementptr inbounds i8, i8* %278, i64 1
  %279 = load %struct.obstack*, %struct.obstack** %__o429, align 8
  %chunk_limit432 = getelementptr inbounds %struct.obstack, %struct.obstack* %279, i32 0, i32 4
  %280 = load i8*, i8** %chunk_limit432, align 8
  %cmp433 = icmp ugt i8* %add.ptr431, %280
  br i1 %cmp433, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %for.body.428
  %281 = load %struct.obstack*, %struct.obstack** %__o429, align 8
  call void @_obstack_newchunk(%struct.obstack* %281, i32 1)
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.435, %for.body.428
  %282 = load i8, i8* %padding, align 1
  %283 = load %struct.obstack*, %struct.obstack** %__o429, align 8
  %next_free437 = getelementptr inbounds %struct.obstack, %struct.obstack* %283, i32 0, i32 3
  %284 = load i8*, i8** %next_free437, align 8
  %incdec.ptr438 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %incdec.ptr438, i8** %next_free437, align 8
  store i8 %282, i8* %284, align 1
  br label %for.inc.439

for.inc.439:                                      ; preds = %if.end.436
  %285 = load i64, i64* %nspace413, align 8
  %dec440 = add i64 %285, -1
  store i64 %dec440, i64* %nspace413, align 8
  br label %for.cond.426

for.end.441:                                      ; preds = %for.cond.426
  br label %if.end.442

if.end.442:                                       ; preds = %for.end.441, %land.lhs.true.422, %cond.end.419
  %286 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %286, %struct.obstack** %__o443, align 8
  %287 = load i64, i64* %len410, align 8
  %conv445 = trunc i64 %287 to i32
  store i32 %conv445, i32* %__len444, align 4
  %288 = load %struct.obstack*, %struct.obstack** %__o443, align 8
  %next_free446 = getelementptr inbounds %struct.obstack, %struct.obstack* %288, i32 0, i32 3
  %289 = load i8*, i8** %next_free446, align 8
  %290 = load i32, i32* %__len444, align 4
  %idx.ext447 = sext i32 %290 to i64
  %add.ptr448 = getelementptr inbounds i8, i8* %289, i64 %idx.ext447
  %291 = load %struct.obstack*, %struct.obstack** %__o443, align 8
  %chunk_limit449 = getelementptr inbounds %struct.obstack, %struct.obstack* %291, i32 0, i32 4
  %292 = load i8*, i8** %chunk_limit449, align 8
  %cmp450 = icmp ugt i8* %add.ptr448, %292
  br i1 %cmp450, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %if.end.442
  %293 = load %struct.obstack*, %struct.obstack** %__o443, align 8
  %294 = load i32, i32* %__len444, align 4
  call void @_obstack_newchunk(%struct.obstack* %293, i32 %294)
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.452, %if.end.442
  %295 = load %struct.obstack*, %struct.obstack** %__o443, align 8
  %next_free454 = getelementptr inbounds %struct.obstack, %struct.obstack* %295, i32 0, i32 3
  %296 = load i8*, i8** %next_free454, align 8
  %arraydecay455 = getelementptr inbounds [256 x i8], [256 x i8]* %buf3, i32 0, i32 0
  %297 = load i32, i32* %__len444, align 4
  %conv456 = sext i32 %297 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %296, i8* %arraydecay455, i64 %conv456, i32 1, i1 false)
  %298 = load i32, i32* %__len444, align 4
  %299 = load %struct.obstack*, %struct.obstack** %__o443, align 8
  %next_free457 = getelementptr inbounds %struct.obstack, %struct.obstack* %299, i32 0, i32 3
  %300 = load i8*, i8** %next_free457, align 8
  %idx.ext458 = sext i32 %298 to i64
  %add.ptr459 = getelementptr inbounds i8, i8* %300, i64 %idx.ext458
  store i8* %add.ptr459, i8** %next_free457, align 8
  %301 = load i64, i64* %width, align 8
  %tobool460 = icmp ne i64 %301, 0
  br i1 %tobool460, label %land.lhs.true.461, label %if.end.481

land.lhs.true.461:                                ; preds = %if.end.453
  %302 = load i32, i32* %justification, align 4
  %cmp462 = icmp slt i32 %302, 0
  br i1 %cmp462, label %if.then.464, label %if.end.481

if.then.464:                                      ; preds = %land.lhs.true.461
  br label %for.cond.465

for.cond.465:                                     ; preds = %for.inc.478, %if.then.464
  %303 = load i64, i64* %nspace413, align 8
  %tobool466 = icmp ne i64 %303, 0
  br i1 %tobool466, label %for.body.467, label %for.end.480

for.body.467:                                     ; preds = %for.cond.465
  %304 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %304, %struct.obstack** %__o468, align 8
  %305 = load %struct.obstack*, %struct.obstack** %__o468, align 8
  %next_free469 = getelementptr inbounds %struct.obstack, %struct.obstack* %305, i32 0, i32 3
  %306 = load i8*, i8** %next_free469, align 8
  %add.ptr470 = getelementptr inbounds i8, i8* %306, i64 1
  %307 = load %struct.obstack*, %struct.obstack** %__o468, align 8
  %chunk_limit471 = getelementptr inbounds %struct.obstack, %struct.obstack* %307, i32 0, i32 4
  %308 = load i8*, i8** %chunk_limit471, align 8
  %cmp472 = icmp ugt i8* %add.ptr470, %308
  br i1 %cmp472, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %for.body.467
  %309 = load %struct.obstack*, %struct.obstack** %__o468, align 8
  call void @_obstack_newchunk(%struct.obstack* %309, i32 1)
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.474, %for.body.467
  %310 = load i8, i8* %padding, align 1
  %311 = load %struct.obstack*, %struct.obstack** %__o468, align 8
  %next_free476 = getelementptr inbounds %struct.obstack, %struct.obstack* %311, i32 0, i32 3
  %312 = load i8*, i8** %next_free476, align 8
  %incdec.ptr477 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %incdec.ptr477, i8** %next_free476, align 8
  store i8 %310, i8* %312, align 1
  br label %for.inc.478

for.inc.478:                                      ; preds = %if.end.475
  %313 = load i64, i64* %nspace413, align 8
  %dec479 = add i64 %313, -1
  store i64 %dec479, i64* %nspace413, align 8
  br label %for.cond.465

for.end.480:                                      ; preds = %for.cond.465
  br label %if.end.481

if.end.481:                                       ; preds = %for.end.480, %land.lhs.true.461, %if.end.453
  br label %do.end.482

do.end.482:                                       ; preds = %if.end.481
  br label %sw.epilog.2279

sw.bb.483:                                        ; preds = %sw.bb.215
  %call484 = call i8* @xgetcwd()
  store i8* %call484, i8** %cp, align 8
  %314 = load i8*, i8** %cp, align 8
  %tobool485 = icmp ne i8* %314, null
  br i1 %tobool485, label %if.end.489, label %if.then.486

if.then.486:                                      ; preds = %sw.bb.483
  %call487 = call i32* @__errno_location() #7
  %315 = load i32, i32* %call487, align 4
  %call488 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %315, i8* %call488)
  br label %if.end.489

if.end.489:                                       ; preds = %if.then.486, %sw.bb.483
  %316 = load i8*, i8** %cp, align 8
  %call490 = call i8* @strrchr(i8* %316, i32 47) #6
  store i8* %call490, i8** %cp2, align 8
  %317 = load i8*, i8** %cp2, align 8
  %tobool491 = icmp ne i8* %317, null
  br i1 %tobool491, label %if.then.492, label %if.else.494

if.then.492:                                      ; preds = %if.end.489
  %318 = load i8*, i8** %cp2, align 8
  %incdec.ptr493 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %incdec.ptr493, i8** %cp2, align 8
  br label %if.end.495

if.else.494:                                      ; preds = %if.end.489
  %319 = load i8*, i8** %cp, align 8
  store i8* %319, i8** %cp2, align 8
  br label %if.end.495

if.end.495:                                       ; preds = %if.else.494, %if.then.492
  br label %do.body.496

do.body.496:                                      ; preds = %if.end.495
  %320 = load i8*, i8** %cp2, align 8
  %call498 = call i64 @strlen(i8* %320) #6
  store i64 %call498, i64* %len497, align 8
  %321 = load i64, i64* %len497, align 8
  %322 = load i64, i64* %width, align 8
  %cmp500 = icmp ugt i64 %321, %322
  br i1 %cmp500, label %cond.true.502, label %cond.false.503

cond.true.502:                                    ; preds = %do.body.496
  br label %cond.end.505

cond.false.503:                                   ; preds = %do.body.496
  %323 = load i64, i64* %width, align 8
  %324 = load i64, i64* %len497, align 8
  %sub504 = sub i64 %323, %324
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.503, %cond.true.502
  %cond506 = phi i64 [ 0, %cond.true.502 ], [ %sub504, %cond.false.503 ]
  store i64 %cond506, i64* %nspace499, align 8
  %325 = load i64, i64* %width, align 8
  %tobool507 = icmp ne i64 %325, 0
  br i1 %tobool507, label %land.lhs.true.508, label %if.end.528

land.lhs.true.508:                                ; preds = %cond.end.505
  %326 = load i32, i32* %justification, align 4
  %cmp509 = icmp sgt i32 %326, 0
  br i1 %cmp509, label %if.then.511, label %if.end.528

if.then.511:                                      ; preds = %land.lhs.true.508
  br label %for.cond.512

for.cond.512:                                     ; preds = %for.inc.525, %if.then.511
  %327 = load i64, i64* %nspace499, align 8
  %tobool513 = icmp ne i64 %327, 0
  br i1 %tobool513, label %for.body.514, label %for.end.527

for.body.514:                                     ; preds = %for.cond.512
  %328 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %328, %struct.obstack** %__o515, align 8
  %329 = load %struct.obstack*, %struct.obstack** %__o515, align 8
  %next_free516 = getelementptr inbounds %struct.obstack, %struct.obstack* %329, i32 0, i32 3
  %330 = load i8*, i8** %next_free516, align 8
  %add.ptr517 = getelementptr inbounds i8, i8* %330, i64 1
  %331 = load %struct.obstack*, %struct.obstack** %__o515, align 8
  %chunk_limit518 = getelementptr inbounds %struct.obstack, %struct.obstack* %331, i32 0, i32 4
  %332 = load i8*, i8** %chunk_limit518, align 8
  %cmp519 = icmp ugt i8* %add.ptr517, %332
  br i1 %cmp519, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %for.body.514
  %333 = load %struct.obstack*, %struct.obstack** %__o515, align 8
  call void @_obstack_newchunk(%struct.obstack* %333, i32 1)
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.521, %for.body.514
  %334 = load i8, i8* %padding, align 1
  %335 = load %struct.obstack*, %struct.obstack** %__o515, align 8
  %next_free523 = getelementptr inbounds %struct.obstack, %struct.obstack* %335, i32 0, i32 3
  %336 = load i8*, i8** %next_free523, align 8
  %incdec.ptr524 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %incdec.ptr524, i8** %next_free523, align 8
  store i8 %334, i8* %336, align 1
  br label %for.inc.525

for.inc.525:                                      ; preds = %if.end.522
  %337 = load i64, i64* %nspace499, align 8
  %dec526 = add i64 %337, -1
  store i64 %dec526, i64* %nspace499, align 8
  br label %for.cond.512

for.end.527:                                      ; preds = %for.cond.512
  br label %if.end.528

if.end.528:                                       ; preds = %for.end.527, %land.lhs.true.508, %cond.end.505
  %338 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %338, %struct.obstack** %__o529, align 8
  %339 = load i64, i64* %len497, align 8
  %conv531 = trunc i64 %339 to i32
  store i32 %conv531, i32* %__len530, align 4
  %340 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %next_free532 = getelementptr inbounds %struct.obstack, %struct.obstack* %340, i32 0, i32 3
  %341 = load i8*, i8** %next_free532, align 8
  %342 = load i32, i32* %__len530, align 4
  %idx.ext533 = sext i32 %342 to i64
  %add.ptr534 = getelementptr inbounds i8, i8* %341, i64 %idx.ext533
  %343 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %chunk_limit535 = getelementptr inbounds %struct.obstack, %struct.obstack* %343, i32 0, i32 4
  %344 = load i8*, i8** %chunk_limit535, align 8
  %cmp536 = icmp ugt i8* %add.ptr534, %344
  br i1 %cmp536, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %if.end.528
  %345 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %346 = load i32, i32* %__len530, align 4
  call void @_obstack_newchunk(%struct.obstack* %345, i32 %346)
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.538, %if.end.528
  %347 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %next_free540 = getelementptr inbounds %struct.obstack, %struct.obstack* %347, i32 0, i32 3
  %348 = load i8*, i8** %next_free540, align 8
  %349 = load i8*, i8** %cp2, align 8
  %350 = load i32, i32* %__len530, align 4
  %conv541 = sext i32 %350 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %348, i8* %349, i64 %conv541, i32 1, i1 false)
  %351 = load i32, i32* %__len530, align 4
  %352 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %next_free542 = getelementptr inbounds %struct.obstack, %struct.obstack* %352, i32 0, i32 3
  %353 = load i8*, i8** %next_free542, align 8
  %idx.ext543 = sext i32 %351 to i64
  %add.ptr544 = getelementptr inbounds i8, i8* %353, i64 %idx.ext543
  store i8* %add.ptr544, i8** %next_free542, align 8
  %354 = load i64, i64* %width, align 8
  %tobool545 = icmp ne i64 %354, 0
  br i1 %tobool545, label %land.lhs.true.546, label %if.end.566

land.lhs.true.546:                                ; preds = %if.end.539
  %355 = load i32, i32* %justification, align 4
  %cmp547 = icmp slt i32 %355, 0
  br i1 %cmp547, label %if.then.549, label %if.end.566

if.then.549:                                      ; preds = %land.lhs.true.546
  br label %for.cond.550

for.cond.550:                                     ; preds = %for.inc.563, %if.then.549
  %356 = load i64, i64* %nspace499, align 8
  %tobool551 = icmp ne i64 %356, 0
  br i1 %tobool551, label %for.body.552, label %for.end.565

for.body.552:                                     ; preds = %for.cond.550
  %357 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %357, %struct.obstack** %__o553, align 8
  %358 = load %struct.obstack*, %struct.obstack** %__o553, align 8
  %next_free554 = getelementptr inbounds %struct.obstack, %struct.obstack* %358, i32 0, i32 3
  %359 = load i8*, i8** %next_free554, align 8
  %add.ptr555 = getelementptr inbounds i8, i8* %359, i64 1
  %360 = load %struct.obstack*, %struct.obstack** %__o553, align 8
  %chunk_limit556 = getelementptr inbounds %struct.obstack, %struct.obstack* %360, i32 0, i32 4
  %361 = load i8*, i8** %chunk_limit556, align 8
  %cmp557 = icmp ugt i8* %add.ptr555, %361
  br i1 %cmp557, label %if.then.559, label %if.end.560

if.then.559:                                      ; preds = %for.body.552
  %362 = load %struct.obstack*, %struct.obstack** %__o553, align 8
  call void @_obstack_newchunk(%struct.obstack* %362, i32 1)
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.559, %for.body.552
  %363 = load i8, i8* %padding, align 1
  %364 = load %struct.obstack*, %struct.obstack** %__o553, align 8
  %next_free561 = getelementptr inbounds %struct.obstack, %struct.obstack* %364, i32 0, i32 3
  %365 = load i8*, i8** %next_free561, align 8
  %incdec.ptr562 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %incdec.ptr562, i8** %next_free561, align 8
  store i8 %363, i8* %365, align 1
  br label %for.inc.563

for.inc.563:                                      ; preds = %if.end.560
  %366 = load i64, i64* %nspace499, align 8
  %dec564 = add i64 %366, -1
  store i64 %dec564, i64* %nspace499, align 8
  br label %for.cond.550

for.end.565:                                      ; preds = %for.cond.550
  br label %if.end.566

if.end.566:                                       ; preds = %for.end.565, %land.lhs.true.546, %if.end.539
  br label %do.end.567

do.end.567:                                       ; preds = %if.end.566
  br label %do.body.568

do.body.568:                                      ; preds = %do.end.567
  %367 = load i8*, i8** %cp, align 8
  %tobool569 = icmp ne i8* %367, null
  br i1 %tobool569, label %if.then.570, label %if.end.571

if.then.570:                                      ; preds = %do.body.568
  %368 = load i8*, i8** %cp, align 8
  call void @free(i8* %368) #5
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.570, %do.body.568
  br label %do.end.572

do.end.572:                                       ; preds = %if.end.571
  br label %sw.epilog.2279

sw.bb.573:                                        ; preds = %sw.bb.215
  %arraydecay574 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %369 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %369, i32 0, i32 6
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %run_tm, i32 0, i32 2
  %370 = load i32, i32* %tm_hour, align 4
  %371 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm575 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %371, i32 0, i32 6
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %run_tm575, i32 0, i32 1
  %372 = load i32, i32* %tm_min, align 4
  %373 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm576 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %373, i32 0, i32 6
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %run_tm576, i32 0, i32 0
  %374 = load i32, i32* %tm_sec, align 4
  %call577 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay574, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %370, i32 %372, i32 %374) #5
  br label %do.body.578

do.body.578:                                      ; preds = %sw.bb.573
  %arraydecay580 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call581 = call i64 @strlen(i8* %arraydecay580) #6
  store i64 %call581, i64* %len579, align 8
  %375 = load i64, i64* %len579, align 8
  %376 = load i64, i64* %width, align 8
  %cmp583 = icmp ugt i64 %375, %376
  br i1 %cmp583, label %cond.true.585, label %cond.false.586

cond.true.585:                                    ; preds = %do.body.578
  br label %cond.end.588

cond.false.586:                                   ; preds = %do.body.578
  %377 = load i64, i64* %width, align 8
  %378 = load i64, i64* %len579, align 8
  %sub587 = sub i64 %377, %378
  br label %cond.end.588

cond.end.588:                                     ; preds = %cond.false.586, %cond.true.585
  %cond589 = phi i64 [ 0, %cond.true.585 ], [ %sub587, %cond.false.586 ]
  store i64 %cond589, i64* %nspace582, align 8
  %379 = load i64, i64* %width, align 8
  %tobool590 = icmp ne i64 %379, 0
  br i1 %tobool590, label %land.lhs.true.591, label %if.end.611

land.lhs.true.591:                                ; preds = %cond.end.588
  %380 = load i32, i32* %justification, align 4
  %cmp592 = icmp sgt i32 %380, 0
  br i1 %cmp592, label %if.then.594, label %if.end.611

if.then.594:                                      ; preds = %land.lhs.true.591
  br label %for.cond.595

for.cond.595:                                     ; preds = %for.inc.608, %if.then.594
  %381 = load i64, i64* %nspace582, align 8
  %tobool596 = icmp ne i64 %381, 0
  br i1 %tobool596, label %for.body.597, label %for.end.610

for.body.597:                                     ; preds = %for.cond.595
  %382 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %382, %struct.obstack** %__o598, align 8
  %383 = load %struct.obstack*, %struct.obstack** %__o598, align 8
  %next_free599 = getelementptr inbounds %struct.obstack, %struct.obstack* %383, i32 0, i32 3
  %384 = load i8*, i8** %next_free599, align 8
  %add.ptr600 = getelementptr inbounds i8, i8* %384, i64 1
  %385 = load %struct.obstack*, %struct.obstack** %__o598, align 8
  %chunk_limit601 = getelementptr inbounds %struct.obstack, %struct.obstack* %385, i32 0, i32 4
  %386 = load i8*, i8** %chunk_limit601, align 8
  %cmp602 = icmp ugt i8* %add.ptr600, %386
  br i1 %cmp602, label %if.then.604, label %if.end.605

if.then.604:                                      ; preds = %for.body.597
  %387 = load %struct.obstack*, %struct.obstack** %__o598, align 8
  call void @_obstack_newchunk(%struct.obstack* %387, i32 1)
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.604, %for.body.597
  %388 = load i8, i8* %padding, align 1
  %389 = load %struct.obstack*, %struct.obstack** %__o598, align 8
  %next_free606 = getelementptr inbounds %struct.obstack, %struct.obstack* %389, i32 0, i32 3
  %390 = load i8*, i8** %next_free606, align 8
  %incdec.ptr607 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %incdec.ptr607, i8** %next_free606, align 8
  store i8 %388, i8* %390, align 1
  br label %for.inc.608

for.inc.608:                                      ; preds = %if.end.605
  %391 = load i64, i64* %nspace582, align 8
  %dec609 = add i64 %391, -1
  store i64 %dec609, i64* %nspace582, align 8
  br label %for.cond.595

for.end.610:                                      ; preds = %for.cond.595
  br label %if.end.611

if.end.611:                                       ; preds = %for.end.610, %land.lhs.true.591, %cond.end.588
  %392 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %392, %struct.obstack** %__o612, align 8
  %393 = load i64, i64* %len579, align 8
  %conv614 = trunc i64 %393 to i32
  store i32 %conv614, i32* %__len613, align 4
  %394 = load %struct.obstack*, %struct.obstack** %__o612, align 8
  %next_free615 = getelementptr inbounds %struct.obstack, %struct.obstack* %394, i32 0, i32 3
  %395 = load i8*, i8** %next_free615, align 8
  %396 = load i32, i32* %__len613, align 4
  %idx.ext616 = sext i32 %396 to i64
  %add.ptr617 = getelementptr inbounds i8, i8* %395, i64 %idx.ext616
  %397 = load %struct.obstack*, %struct.obstack** %__o612, align 8
  %chunk_limit618 = getelementptr inbounds %struct.obstack, %struct.obstack* %397, i32 0, i32 4
  %398 = load i8*, i8** %chunk_limit618, align 8
  %cmp619 = icmp ugt i8* %add.ptr617, %398
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %if.end.611
  %399 = load %struct.obstack*, %struct.obstack** %__o612, align 8
  %400 = load i32, i32* %__len613, align 4
  call void @_obstack_newchunk(%struct.obstack* %399, i32 %400)
  br label %if.end.622

if.end.622:                                       ; preds = %if.then.621, %if.end.611
  %401 = load %struct.obstack*, %struct.obstack** %__o612, align 8
  %next_free623 = getelementptr inbounds %struct.obstack, %struct.obstack* %401, i32 0, i32 3
  %402 = load i8*, i8** %next_free623, align 8
  %arraydecay624 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %403 = load i32, i32* %__len613, align 4
  %conv625 = sext i32 %403 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %402, i8* %arraydecay624, i64 %conv625, i32 1, i1 false)
  %404 = load i32, i32* %__len613, align 4
  %405 = load %struct.obstack*, %struct.obstack** %__o612, align 8
  %next_free626 = getelementptr inbounds %struct.obstack, %struct.obstack* %405, i32 0, i32 3
  %406 = load i8*, i8** %next_free626, align 8
  %idx.ext627 = sext i32 %404 to i64
  %add.ptr628 = getelementptr inbounds i8, i8* %406, i64 %idx.ext627
  store i8* %add.ptr628, i8** %next_free626, align 8
  %407 = load i64, i64* %width, align 8
  %tobool629 = icmp ne i64 %407, 0
  br i1 %tobool629, label %land.lhs.true.630, label %if.end.650

land.lhs.true.630:                                ; preds = %if.end.622
  %408 = load i32, i32* %justification, align 4
  %cmp631 = icmp slt i32 %408, 0
  br i1 %cmp631, label %if.then.633, label %if.end.650

if.then.633:                                      ; preds = %land.lhs.true.630
  br label %for.cond.634

for.cond.634:                                     ; preds = %for.inc.647, %if.then.633
  %409 = load i64, i64* %nspace582, align 8
  %tobool635 = icmp ne i64 %409, 0
  br i1 %tobool635, label %for.body.636, label %for.end.649

for.body.636:                                     ; preds = %for.cond.634
  %410 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %410, %struct.obstack** %__o637, align 8
  %411 = load %struct.obstack*, %struct.obstack** %__o637, align 8
  %next_free638 = getelementptr inbounds %struct.obstack, %struct.obstack* %411, i32 0, i32 3
  %412 = load i8*, i8** %next_free638, align 8
  %add.ptr639 = getelementptr inbounds i8, i8* %412, i64 1
  %413 = load %struct.obstack*, %struct.obstack** %__o637, align 8
  %chunk_limit640 = getelementptr inbounds %struct.obstack, %struct.obstack* %413, i32 0, i32 4
  %414 = load i8*, i8** %chunk_limit640, align 8
  %cmp641 = icmp ugt i8* %add.ptr639, %414
  br i1 %cmp641, label %if.then.643, label %if.end.644

if.then.643:                                      ; preds = %for.body.636
  %415 = load %struct.obstack*, %struct.obstack** %__o637, align 8
  call void @_obstack_newchunk(%struct.obstack* %415, i32 1)
  br label %if.end.644

if.end.644:                                       ; preds = %if.then.643, %for.body.636
  %416 = load i8, i8* %padding, align 1
  %417 = load %struct.obstack*, %struct.obstack** %__o637, align 8
  %next_free645 = getelementptr inbounds %struct.obstack, %struct.obstack* %417, i32 0, i32 3
  %418 = load i8*, i8** %next_free645, align 8
  %incdec.ptr646 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %incdec.ptr646, i8** %next_free645, align 8
  store i8 %416, i8* %418, align 1
  br label %for.inc.647

for.inc.647:                                      ; preds = %if.end.644
  %419 = load i64, i64* %nspace582, align 8
  %dec648 = add i64 %419, -1
  store i64 %dec648, i64* %nspace582, align 8
  br label %for.cond.634

for.end.649:                                      ; preds = %for.cond.634
  br label %if.end.650

if.end.650:                                       ; preds = %for.end.649, %land.lhs.true.630, %if.end.622
  br label %do.end.651

do.end.651:                                       ; preds = %if.end.650
  br label %sw.epilog.2279

sw.bb.652:                                        ; preds = %sw.bb.215
  %call653 = call i8* @xgetcwd()
  store i8* %call653, i8** %cp, align 8
  %420 = load i8*, i8** %cp, align 8
  %tobool654 = icmp ne i8* %420, null
  br i1 %tobool654, label %if.end.658, label %if.then.655

if.then.655:                                      ; preds = %sw.bb.652
  %call656 = call i32* @__errno_location() #7
  %421 = load i32, i32* %call656, align 4
  %call657 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %421, i8* %call657)
  br label %if.end.658

if.end.658:                                       ; preds = %if.then.655, %sw.bb.652
  br label %do.body.659

do.body.659:                                      ; preds = %if.end.658
  %422 = load i8*, i8** %cp, align 8
  %call661 = call i64 @strlen(i8* %422) #6
  store i64 %call661, i64* %len660, align 8
  %423 = load i64, i64* %len660, align 8
  %424 = load i64, i64* %width, align 8
  %cmp663 = icmp ugt i64 %423, %424
  br i1 %cmp663, label %cond.true.665, label %cond.false.666

cond.true.665:                                    ; preds = %do.body.659
  br label %cond.end.668

cond.false.666:                                   ; preds = %do.body.659
  %425 = load i64, i64* %width, align 8
  %426 = load i64, i64* %len660, align 8
  %sub667 = sub i64 %425, %426
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.666, %cond.true.665
  %cond669 = phi i64 [ 0, %cond.true.665 ], [ %sub667, %cond.false.666 ]
  store i64 %cond669, i64* %nspace662, align 8
  %427 = load i64, i64* %width, align 8
  %tobool670 = icmp ne i64 %427, 0
  br i1 %tobool670, label %land.lhs.true.671, label %if.end.691

land.lhs.true.671:                                ; preds = %cond.end.668
  %428 = load i32, i32* %justification, align 4
  %cmp672 = icmp sgt i32 %428, 0
  br i1 %cmp672, label %if.then.674, label %if.end.691

if.then.674:                                      ; preds = %land.lhs.true.671
  br label %for.cond.675

for.cond.675:                                     ; preds = %for.inc.688, %if.then.674
  %429 = load i64, i64* %nspace662, align 8
  %tobool676 = icmp ne i64 %429, 0
  br i1 %tobool676, label %for.body.677, label %for.end.690

for.body.677:                                     ; preds = %for.cond.675
  %430 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %430, %struct.obstack** %__o678, align 8
  %431 = load %struct.obstack*, %struct.obstack** %__o678, align 8
  %next_free679 = getelementptr inbounds %struct.obstack, %struct.obstack* %431, i32 0, i32 3
  %432 = load i8*, i8** %next_free679, align 8
  %add.ptr680 = getelementptr inbounds i8, i8* %432, i64 1
  %433 = load %struct.obstack*, %struct.obstack** %__o678, align 8
  %chunk_limit681 = getelementptr inbounds %struct.obstack, %struct.obstack* %433, i32 0, i32 4
  %434 = load i8*, i8** %chunk_limit681, align 8
  %cmp682 = icmp ugt i8* %add.ptr680, %434
  br i1 %cmp682, label %if.then.684, label %if.end.685

if.then.684:                                      ; preds = %for.body.677
  %435 = load %struct.obstack*, %struct.obstack** %__o678, align 8
  call void @_obstack_newchunk(%struct.obstack* %435, i32 1)
  br label %if.end.685

if.end.685:                                       ; preds = %if.then.684, %for.body.677
  %436 = load i8, i8* %padding, align 1
  %437 = load %struct.obstack*, %struct.obstack** %__o678, align 8
  %next_free686 = getelementptr inbounds %struct.obstack, %struct.obstack* %437, i32 0, i32 3
  %438 = load i8*, i8** %next_free686, align 8
  %incdec.ptr687 = getelementptr inbounds i8, i8* %438, i32 1
  store i8* %incdec.ptr687, i8** %next_free686, align 8
  store i8 %436, i8* %438, align 1
  br label %for.inc.688

for.inc.688:                                      ; preds = %if.end.685
  %439 = load i64, i64* %nspace662, align 8
  %dec689 = add i64 %439, -1
  store i64 %dec689, i64* %nspace662, align 8
  br label %for.cond.675

for.end.690:                                      ; preds = %for.cond.675
  br label %if.end.691

if.end.691:                                       ; preds = %for.end.690, %land.lhs.true.671, %cond.end.668
  %440 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %440, %struct.obstack** %__o692, align 8
  %441 = load i64, i64* %len660, align 8
  %conv694 = trunc i64 %441 to i32
  store i32 %conv694, i32* %__len693, align 4
  %442 = load %struct.obstack*, %struct.obstack** %__o692, align 8
  %next_free695 = getelementptr inbounds %struct.obstack, %struct.obstack* %442, i32 0, i32 3
  %443 = load i8*, i8** %next_free695, align 8
  %444 = load i32, i32* %__len693, align 4
  %idx.ext696 = sext i32 %444 to i64
  %add.ptr697 = getelementptr inbounds i8, i8* %443, i64 %idx.ext696
  %445 = load %struct.obstack*, %struct.obstack** %__o692, align 8
  %chunk_limit698 = getelementptr inbounds %struct.obstack, %struct.obstack* %445, i32 0, i32 4
  %446 = load i8*, i8** %chunk_limit698, align 8
  %cmp699 = icmp ugt i8* %add.ptr697, %446
  br i1 %cmp699, label %if.then.701, label %if.end.702

if.then.701:                                      ; preds = %if.end.691
  %447 = load %struct.obstack*, %struct.obstack** %__o692, align 8
  %448 = load i32, i32* %__len693, align 4
  call void @_obstack_newchunk(%struct.obstack* %447, i32 %448)
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.701, %if.end.691
  %449 = load %struct.obstack*, %struct.obstack** %__o692, align 8
  %next_free703 = getelementptr inbounds %struct.obstack, %struct.obstack* %449, i32 0, i32 3
  %450 = load i8*, i8** %next_free703, align 8
  %451 = load i8*, i8** %cp, align 8
  %452 = load i32, i32* %__len693, align 4
  %conv704 = sext i32 %452 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %450, i8* %451, i64 %conv704, i32 1, i1 false)
  %453 = load i32, i32* %__len693, align 4
  %454 = load %struct.obstack*, %struct.obstack** %__o692, align 8
  %next_free705 = getelementptr inbounds %struct.obstack, %struct.obstack* %454, i32 0, i32 3
  %455 = load i8*, i8** %next_free705, align 8
  %idx.ext706 = sext i32 %453 to i64
  %add.ptr707 = getelementptr inbounds i8, i8* %455, i64 %idx.ext706
  store i8* %add.ptr707, i8** %next_free705, align 8
  %456 = load i64, i64* %width, align 8
  %tobool708 = icmp ne i64 %456, 0
  br i1 %tobool708, label %land.lhs.true.709, label %if.end.729

land.lhs.true.709:                                ; preds = %if.end.702
  %457 = load i32, i32* %justification, align 4
  %cmp710 = icmp slt i32 %457, 0
  br i1 %cmp710, label %if.then.712, label %if.end.729

if.then.712:                                      ; preds = %land.lhs.true.709
  br label %for.cond.713

for.cond.713:                                     ; preds = %for.inc.726, %if.then.712
  %458 = load i64, i64* %nspace662, align 8
  %tobool714 = icmp ne i64 %458, 0
  br i1 %tobool714, label %for.body.715, label %for.end.728

for.body.715:                                     ; preds = %for.cond.713
  %459 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %459, %struct.obstack** %__o716, align 8
  %460 = load %struct.obstack*, %struct.obstack** %__o716, align 8
  %next_free717 = getelementptr inbounds %struct.obstack, %struct.obstack* %460, i32 0, i32 3
  %461 = load i8*, i8** %next_free717, align 8
  %add.ptr718 = getelementptr inbounds i8, i8* %461, i64 1
  %462 = load %struct.obstack*, %struct.obstack** %__o716, align 8
  %chunk_limit719 = getelementptr inbounds %struct.obstack, %struct.obstack* %462, i32 0, i32 4
  %463 = load i8*, i8** %chunk_limit719, align 8
  %cmp720 = icmp ugt i8* %add.ptr718, %463
  br i1 %cmp720, label %if.then.722, label %if.end.723

if.then.722:                                      ; preds = %for.body.715
  %464 = load %struct.obstack*, %struct.obstack** %__o716, align 8
  call void @_obstack_newchunk(%struct.obstack* %464, i32 1)
  br label %if.end.723

if.end.723:                                       ; preds = %if.then.722, %for.body.715
  %465 = load i8, i8* %padding, align 1
  %466 = load %struct.obstack*, %struct.obstack** %__o716, align 8
  %next_free724 = getelementptr inbounds %struct.obstack, %struct.obstack* %466, i32 0, i32 3
  %467 = load i8*, i8** %next_free724, align 8
  %incdec.ptr725 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %incdec.ptr725, i8** %next_free724, align 8
  store i8 %465, i8* %467, align 1
  br label %for.inc.726

for.inc.726:                                      ; preds = %if.end.723
  %468 = load i64, i64* %nspace662, align 8
  %dec727 = add i64 %468, -1
  store i64 %dec727, i64* %nspace662, align 8
  br label %for.cond.713

for.end.728:                                      ; preds = %for.cond.713
  br label %if.end.729

if.end.729:                                       ; preds = %for.end.728, %land.lhs.true.709, %if.end.702
  br label %do.end.730

do.end.730:                                       ; preds = %if.end.729
  br label %do.body.731

do.body.731:                                      ; preds = %do.end.730
  %469 = load i8*, i8** %cp, align 8
  %tobool732 = icmp ne i8* %469, null
  br i1 %tobool732, label %if.then.733, label %if.end.734

if.then.733:                                      ; preds = %do.body.731
  %470 = load i8*, i8** %cp, align 8
  call void @free(i8* %470) #5
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.733, %do.body.731
  br label %do.end.735

do.end.735:                                       ; preds = %if.end.734
  br label %sw.epilog.2279

sw.bb.736:                                        ; preds = %sw.bb.215
  %471 = load i64, i64* %i, align 8
  %add737 = add i64 %471, 1
  %472 = load i8*, i8** %str.addr, align 8
  %arrayidx738 = getelementptr inbounds i8, i8* %472, i64 %add737
  %473 = load i8, i8* %arrayidx738, align 1
  %conv739 = zext i8 %473 to i32
  %cmp740 = icmp eq i32 %conv739, 123
  br i1 %cmp740, label %if.then.742, label %if.else.774

if.then.742:                                      ; preds = %sw.bb.736
  store i64 0, i64* %j, align 8
  %474 = load i64, i64* %i, align 8
  %add743 = add i64 %474, 2
  store i64 %add743, i64* %i, align 8
  br label %for.cond.744

for.cond.744:                                     ; preds = %for.inc.758, %if.then.742
  %475 = load i64, i64* %j, align 8
  %cmp745 = icmp ult i64 %475, 512
  br i1 %cmp745, label %land.lhs.true.747, label %land.end

land.lhs.true.747:                                ; preds = %for.cond.744
  %476 = load i64, i64* %i, align 8
  %477 = load i8*, i8** %str.addr, align 8
  %arrayidx748 = getelementptr inbounds i8, i8* %477, i64 %476
  %478 = load i8, i8* %arrayidx748, align 1
  %conv749 = zext i8 %478 to i32
  %tobool750 = icmp ne i32 %conv749, 0
  br i1 %tobool750, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.747
  %479 = load i64, i64* %i, align 8
  %480 = load i8*, i8** %str.addr, align 8
  %arrayidx751 = getelementptr inbounds i8, i8* %480, i64 %479
  %481 = load i8, i8* %arrayidx751, align 1
  %conv752 = zext i8 %481 to i32
  %cmp753 = icmp ne i32 %conv752, 125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.747, %for.cond.744
  %482 = phi i1 [ false, %land.lhs.true.747 ], [ false, %for.cond.744 ], [ %cmp753, %land.rhs ]
  br i1 %482, label %for.body.755, label %for.end.761

for.body.755:                                     ; preds = %land.end
  %483 = load i64, i64* %i, align 8
  %484 = load i8*, i8** %str.addr, align 8
  %arrayidx756 = getelementptr inbounds i8, i8* %484, i64 %483
  %485 = load i8, i8* %arrayidx756, align 1
  %486 = load i64, i64* %j, align 8
  %arrayidx757 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i64 %486
  store i8 %485, i8* %arrayidx757, align 1
  br label %for.inc.758

for.inc.758:                                      ; preds = %for.body.755
  %487 = load i64, i64* %i, align 8
  %inc759 = add i64 %487, 1
  store i64 %inc759, i64* %i, align 8
  %488 = load i64, i64* %j, align 8
  %inc760 = add i64 %488, 1
  store i64 %inc760, i64* %j, align 8
  br label %for.cond.744

for.end.761:                                      ; preds = %land.end
  %489 = load i64, i64* %i, align 8
  %490 = load i8*, i8** %str.addr, align 8
  %arrayidx762 = getelementptr inbounds i8, i8* %490, i64 %489
  %491 = load i8, i8* %arrayidx762, align 1
  %conv763 = zext i8 %491 to i32
  %cmp764 = icmp ne i32 %conv763, 125
  br i1 %cmp764, label %if.then.766, label %if.end.768

if.then.766:                                      ; preds = %for.end.761
  %call767 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #5
  %492 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call767, i8* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.766, %for.end.761
  %493 = load i64, i64* %j, align 8
  %arrayidx769 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i64 %493
  store i8 0, i8* %arrayidx769, align 1
  %arraydecay770 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay771 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i32 0
  %494 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm772 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %494, i32 0, i32 6
  %call773 = call i64 @strftime(i8* %arraydecay770, i64 512, i8* %arraydecay771, %struct.tm* %run_tm772) #5
  br label %if.end.781

if.else.774:                                      ; preds = %sw.bb.736
  %arraydecay775 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %495 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm776 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %495, i32 0, i32 6
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %run_tm776, i32 0, i32 5
  %496 = load i32, i32* %tm_year, align 4
  %rem = srem i32 %496, 100
  %497 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm777 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %497, i32 0, i32 6
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %run_tm777, i32 0, i32 4
  %498 = load i32, i32* %tm_mon, align 4
  %add778 = add nsw i32 %498, 1
  %499 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm779 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %499, i32 0, i32 6
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %run_tm779, i32 0, i32 3
  %500 = load i32, i32* %tm_mday, align 4
  %call780 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay775, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %rem, i32 %add778, i32 %500) #5
  br label %if.end.781

if.end.781:                                       ; preds = %if.else.774, %if.end.768
  br label %do.body.782

do.body.782:                                      ; preds = %if.end.781
  %arraydecay784 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call785 = call i64 @strlen(i8* %arraydecay784) #6
  store i64 %call785, i64* %len783, align 8
  %501 = load i64, i64* %len783, align 8
  %502 = load i64, i64* %width, align 8
  %cmp787 = icmp ugt i64 %501, %502
  br i1 %cmp787, label %cond.true.789, label %cond.false.790

cond.true.789:                                    ; preds = %do.body.782
  br label %cond.end.792

cond.false.790:                                   ; preds = %do.body.782
  %503 = load i64, i64* %width, align 8
  %504 = load i64, i64* %len783, align 8
  %sub791 = sub i64 %503, %504
  br label %cond.end.792

cond.end.792:                                     ; preds = %cond.false.790, %cond.true.789
  %cond793 = phi i64 [ 0, %cond.true.789 ], [ %sub791, %cond.false.790 ]
  store i64 %cond793, i64* %nspace786, align 8
  %505 = load i64, i64* %width, align 8
  %tobool794 = icmp ne i64 %505, 0
  br i1 %tobool794, label %land.lhs.true.795, label %if.end.815

land.lhs.true.795:                                ; preds = %cond.end.792
  %506 = load i32, i32* %justification, align 4
  %cmp796 = icmp sgt i32 %506, 0
  br i1 %cmp796, label %if.then.798, label %if.end.815

if.then.798:                                      ; preds = %land.lhs.true.795
  br label %for.cond.799

for.cond.799:                                     ; preds = %for.inc.812, %if.then.798
  %507 = load i64, i64* %nspace786, align 8
  %tobool800 = icmp ne i64 %507, 0
  br i1 %tobool800, label %for.body.801, label %for.end.814

for.body.801:                                     ; preds = %for.cond.799
  %508 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %508, %struct.obstack** %__o802, align 8
  %509 = load %struct.obstack*, %struct.obstack** %__o802, align 8
  %next_free803 = getelementptr inbounds %struct.obstack, %struct.obstack* %509, i32 0, i32 3
  %510 = load i8*, i8** %next_free803, align 8
  %add.ptr804 = getelementptr inbounds i8, i8* %510, i64 1
  %511 = load %struct.obstack*, %struct.obstack** %__o802, align 8
  %chunk_limit805 = getelementptr inbounds %struct.obstack, %struct.obstack* %511, i32 0, i32 4
  %512 = load i8*, i8** %chunk_limit805, align 8
  %cmp806 = icmp ugt i8* %add.ptr804, %512
  br i1 %cmp806, label %if.then.808, label %if.end.809

if.then.808:                                      ; preds = %for.body.801
  %513 = load %struct.obstack*, %struct.obstack** %__o802, align 8
  call void @_obstack_newchunk(%struct.obstack* %513, i32 1)
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.808, %for.body.801
  %514 = load i8, i8* %padding, align 1
  %515 = load %struct.obstack*, %struct.obstack** %__o802, align 8
  %next_free810 = getelementptr inbounds %struct.obstack, %struct.obstack* %515, i32 0, i32 3
  %516 = load i8*, i8** %next_free810, align 8
  %incdec.ptr811 = getelementptr inbounds i8, i8* %516, i32 1
  store i8* %incdec.ptr811, i8** %next_free810, align 8
  store i8 %514, i8* %516, align 1
  br label %for.inc.812

for.inc.812:                                      ; preds = %if.end.809
  %517 = load i64, i64* %nspace786, align 8
  %dec813 = add i64 %517, -1
  store i64 %dec813, i64* %nspace786, align 8
  br label %for.cond.799

for.end.814:                                      ; preds = %for.cond.799
  br label %if.end.815

if.end.815:                                       ; preds = %for.end.814, %land.lhs.true.795, %cond.end.792
  %518 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %518, %struct.obstack** %__o816, align 8
  %519 = load i64, i64* %len783, align 8
  %conv818 = trunc i64 %519 to i32
  store i32 %conv818, i32* %__len817, align 4
  %520 = load %struct.obstack*, %struct.obstack** %__o816, align 8
  %next_free819 = getelementptr inbounds %struct.obstack, %struct.obstack* %520, i32 0, i32 3
  %521 = load i8*, i8** %next_free819, align 8
  %522 = load i32, i32* %__len817, align 4
  %idx.ext820 = sext i32 %522 to i64
  %add.ptr821 = getelementptr inbounds i8, i8* %521, i64 %idx.ext820
  %523 = load %struct.obstack*, %struct.obstack** %__o816, align 8
  %chunk_limit822 = getelementptr inbounds %struct.obstack, %struct.obstack* %523, i32 0, i32 4
  %524 = load i8*, i8** %chunk_limit822, align 8
  %cmp823 = icmp ugt i8* %add.ptr821, %524
  br i1 %cmp823, label %if.then.825, label %if.end.826

if.then.825:                                      ; preds = %if.end.815
  %525 = load %struct.obstack*, %struct.obstack** %__o816, align 8
  %526 = load i32, i32* %__len817, align 4
  call void @_obstack_newchunk(%struct.obstack* %525, i32 %526)
  br label %if.end.826

if.end.826:                                       ; preds = %if.then.825, %if.end.815
  %527 = load %struct.obstack*, %struct.obstack** %__o816, align 8
  %next_free827 = getelementptr inbounds %struct.obstack, %struct.obstack* %527, i32 0, i32 3
  %528 = load i8*, i8** %next_free827, align 8
  %arraydecay828 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %529 = load i32, i32* %__len817, align 4
  %conv829 = sext i32 %529 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %528, i8* %arraydecay828, i64 %conv829, i32 1, i1 false)
  %530 = load i32, i32* %__len817, align 4
  %531 = load %struct.obstack*, %struct.obstack** %__o816, align 8
  %next_free830 = getelementptr inbounds %struct.obstack, %struct.obstack* %531, i32 0, i32 3
  %532 = load i8*, i8** %next_free830, align 8
  %idx.ext831 = sext i32 %530 to i64
  %add.ptr832 = getelementptr inbounds i8, i8* %532, i64 %idx.ext831
  store i8* %add.ptr832, i8** %next_free830, align 8
  %533 = load i64, i64* %width, align 8
  %tobool833 = icmp ne i64 %533, 0
  br i1 %tobool833, label %land.lhs.true.834, label %if.end.854

land.lhs.true.834:                                ; preds = %if.end.826
  %534 = load i32, i32* %justification, align 4
  %cmp835 = icmp slt i32 %534, 0
  br i1 %cmp835, label %if.then.837, label %if.end.854

if.then.837:                                      ; preds = %land.lhs.true.834
  br label %for.cond.838

for.cond.838:                                     ; preds = %for.inc.851, %if.then.837
  %535 = load i64, i64* %nspace786, align 8
  %tobool839 = icmp ne i64 %535, 0
  br i1 %tobool839, label %for.body.840, label %for.end.853

for.body.840:                                     ; preds = %for.cond.838
  %536 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %536, %struct.obstack** %__o841, align 8
  %537 = load %struct.obstack*, %struct.obstack** %__o841, align 8
  %next_free842 = getelementptr inbounds %struct.obstack, %struct.obstack* %537, i32 0, i32 3
  %538 = load i8*, i8** %next_free842, align 8
  %add.ptr843 = getelementptr inbounds i8, i8* %538, i64 1
  %539 = load %struct.obstack*, %struct.obstack** %__o841, align 8
  %chunk_limit844 = getelementptr inbounds %struct.obstack, %struct.obstack* %539, i32 0, i32 4
  %540 = load i8*, i8** %chunk_limit844, align 8
  %cmp845 = icmp ugt i8* %add.ptr843, %540
  br i1 %cmp845, label %if.then.847, label %if.end.848

if.then.847:                                      ; preds = %for.body.840
  %541 = load %struct.obstack*, %struct.obstack** %__o841, align 8
  call void @_obstack_newchunk(%struct.obstack* %541, i32 1)
  br label %if.end.848

if.end.848:                                       ; preds = %if.then.847, %for.body.840
  %542 = load i8, i8* %padding, align 1
  %543 = load %struct.obstack*, %struct.obstack** %__o841, align 8
  %next_free849 = getelementptr inbounds %struct.obstack, %struct.obstack* %543, i32 0, i32 3
  %544 = load i8*, i8** %next_free849, align 8
  %incdec.ptr850 = getelementptr inbounds i8, i8* %544, i32 1
  store i8* %incdec.ptr850, i8** %next_free849, align 8
  store i8 %542, i8* %544, align 1
  br label %for.inc.851

for.inc.851:                                      ; preds = %if.end.848
  %545 = load i64, i64* %nspace786, align 8
  %dec852 = add i64 %545, -1
  store i64 %dec852, i64* %nspace786, align 8
  br label %for.cond.838

for.end.853:                                      ; preds = %for.cond.838
  br label %if.end.854

if.end.854:                                       ; preds = %for.end.853, %land.lhs.true.834, %if.end.826
  br label %do.end.855

do.end.855:                                       ; preds = %if.end.854
  br label %sw.epilog.2279

sw.bb.856:                                        ; preds = %sw.bb.215
  %arraydecay857 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call858 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #5
  %546 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm859 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %546, i32 0, i32 6
  %call860 = call i64 @strftime(i8* %arraydecay857, i64 512, i8* %call858, %struct.tm* %run_tm859) #5
  br label %do.body.861

do.body.861:                                      ; preds = %sw.bb.856
  %arraydecay863 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call864 = call i64 @strlen(i8* %arraydecay863) #6
  store i64 %call864, i64* %len862, align 8
  %547 = load i64, i64* %len862, align 8
  %548 = load i64, i64* %width, align 8
  %cmp866 = icmp ugt i64 %547, %548
  br i1 %cmp866, label %cond.true.868, label %cond.false.869

cond.true.868:                                    ; preds = %do.body.861
  br label %cond.end.871

cond.false.869:                                   ; preds = %do.body.861
  %549 = load i64, i64* %width, align 8
  %550 = load i64, i64* %len862, align 8
  %sub870 = sub i64 %549, %550
  br label %cond.end.871

cond.end.871:                                     ; preds = %cond.false.869, %cond.true.868
  %cond872 = phi i64 [ 0, %cond.true.868 ], [ %sub870, %cond.false.869 ]
  store i64 %cond872, i64* %nspace865, align 8
  %551 = load i64, i64* %width, align 8
  %tobool873 = icmp ne i64 %551, 0
  br i1 %tobool873, label %land.lhs.true.874, label %if.end.894

land.lhs.true.874:                                ; preds = %cond.end.871
  %552 = load i32, i32* %justification, align 4
  %cmp875 = icmp sgt i32 %552, 0
  br i1 %cmp875, label %if.then.877, label %if.end.894

if.then.877:                                      ; preds = %land.lhs.true.874
  br label %for.cond.878

for.cond.878:                                     ; preds = %for.inc.891, %if.then.877
  %553 = load i64, i64* %nspace865, align 8
  %tobool879 = icmp ne i64 %553, 0
  br i1 %tobool879, label %for.body.880, label %for.end.893

for.body.880:                                     ; preds = %for.cond.878
  %554 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %554, %struct.obstack** %__o881, align 8
  %555 = load %struct.obstack*, %struct.obstack** %__o881, align 8
  %next_free882 = getelementptr inbounds %struct.obstack, %struct.obstack* %555, i32 0, i32 3
  %556 = load i8*, i8** %next_free882, align 8
  %add.ptr883 = getelementptr inbounds i8, i8* %556, i64 1
  %557 = load %struct.obstack*, %struct.obstack** %__o881, align 8
  %chunk_limit884 = getelementptr inbounds %struct.obstack, %struct.obstack* %557, i32 0, i32 4
  %558 = load i8*, i8** %chunk_limit884, align 8
  %cmp885 = icmp ugt i8* %add.ptr883, %558
  br i1 %cmp885, label %if.then.887, label %if.end.888

if.then.887:                                      ; preds = %for.body.880
  %559 = load %struct.obstack*, %struct.obstack** %__o881, align 8
  call void @_obstack_newchunk(%struct.obstack* %559, i32 1)
  br label %if.end.888

if.end.888:                                       ; preds = %if.then.887, %for.body.880
  %560 = load i8, i8* %padding, align 1
  %561 = load %struct.obstack*, %struct.obstack** %__o881, align 8
  %next_free889 = getelementptr inbounds %struct.obstack, %struct.obstack* %561, i32 0, i32 3
  %562 = load i8*, i8** %next_free889, align 8
  %incdec.ptr890 = getelementptr inbounds i8, i8* %562, i32 1
  store i8* %incdec.ptr890, i8** %next_free889, align 8
  store i8 %560, i8* %562, align 1
  br label %for.inc.891

for.inc.891:                                      ; preds = %if.end.888
  %563 = load i64, i64* %nspace865, align 8
  %dec892 = add i64 %563, -1
  store i64 %dec892, i64* %nspace865, align 8
  br label %for.cond.878

for.end.893:                                      ; preds = %for.cond.878
  br label %if.end.894

if.end.894:                                       ; preds = %for.end.893, %land.lhs.true.874, %cond.end.871
  %564 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %564, %struct.obstack** %__o895, align 8
  %565 = load i64, i64* %len862, align 8
  %conv897 = trunc i64 %565 to i32
  store i32 %conv897, i32* %__len896, align 4
  %566 = load %struct.obstack*, %struct.obstack** %__o895, align 8
  %next_free898 = getelementptr inbounds %struct.obstack, %struct.obstack* %566, i32 0, i32 3
  %567 = load i8*, i8** %next_free898, align 8
  %568 = load i32, i32* %__len896, align 4
  %idx.ext899 = sext i32 %568 to i64
  %add.ptr900 = getelementptr inbounds i8, i8* %567, i64 %idx.ext899
  %569 = load %struct.obstack*, %struct.obstack** %__o895, align 8
  %chunk_limit901 = getelementptr inbounds %struct.obstack, %struct.obstack* %569, i32 0, i32 4
  %570 = load i8*, i8** %chunk_limit901, align 8
  %cmp902 = icmp ugt i8* %add.ptr900, %570
  br i1 %cmp902, label %if.then.904, label %if.end.905

if.then.904:                                      ; preds = %if.end.894
  %571 = load %struct.obstack*, %struct.obstack** %__o895, align 8
  %572 = load i32, i32* %__len896, align 4
  call void @_obstack_newchunk(%struct.obstack* %571, i32 %572)
  br label %if.end.905

if.end.905:                                       ; preds = %if.then.904, %if.end.894
  %573 = load %struct.obstack*, %struct.obstack** %__o895, align 8
  %next_free906 = getelementptr inbounds %struct.obstack, %struct.obstack* %573, i32 0, i32 3
  %574 = load i8*, i8** %next_free906, align 8
  %arraydecay907 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %575 = load i32, i32* %__len896, align 4
  %conv908 = sext i32 %575 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %574, i8* %arraydecay907, i64 %conv908, i32 1, i1 false)
  %576 = load i32, i32* %__len896, align 4
  %577 = load %struct.obstack*, %struct.obstack** %__o895, align 8
  %next_free909 = getelementptr inbounds %struct.obstack, %struct.obstack* %577, i32 0, i32 3
  %578 = load i8*, i8** %next_free909, align 8
  %idx.ext910 = sext i32 %576 to i64
  %add.ptr911 = getelementptr inbounds i8, i8* %578, i64 %idx.ext910
  store i8* %add.ptr911, i8** %next_free909, align 8
  %579 = load i64, i64* %width, align 8
  %tobool912 = icmp ne i64 %579, 0
  br i1 %tobool912, label %land.lhs.true.913, label %if.end.933

land.lhs.true.913:                                ; preds = %if.end.905
  %580 = load i32, i32* %justification, align 4
  %cmp914 = icmp slt i32 %580, 0
  br i1 %cmp914, label %if.then.916, label %if.end.933

if.then.916:                                      ; preds = %land.lhs.true.913
  br label %for.cond.917

for.cond.917:                                     ; preds = %for.inc.930, %if.then.916
  %581 = load i64, i64* %nspace865, align 8
  %tobool918 = icmp ne i64 %581, 0
  br i1 %tobool918, label %for.body.919, label %for.end.932

for.body.919:                                     ; preds = %for.cond.917
  %582 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %582, %struct.obstack** %__o920, align 8
  %583 = load %struct.obstack*, %struct.obstack** %__o920, align 8
  %next_free921 = getelementptr inbounds %struct.obstack, %struct.obstack* %583, i32 0, i32 3
  %584 = load i8*, i8** %next_free921, align 8
  %add.ptr922 = getelementptr inbounds i8, i8* %584, i64 1
  %585 = load %struct.obstack*, %struct.obstack** %__o920, align 8
  %chunk_limit923 = getelementptr inbounds %struct.obstack, %struct.obstack* %585, i32 0, i32 4
  %586 = load i8*, i8** %chunk_limit923, align 8
  %cmp924 = icmp ugt i8* %add.ptr922, %586
  br i1 %cmp924, label %if.then.926, label %if.end.927

if.then.926:                                      ; preds = %for.body.919
  %587 = load %struct.obstack*, %struct.obstack** %__o920, align 8
  call void @_obstack_newchunk(%struct.obstack* %587, i32 1)
  br label %if.end.927

if.end.927:                                       ; preds = %if.then.926, %for.body.919
  %588 = load i8, i8* %padding, align 1
  %589 = load %struct.obstack*, %struct.obstack** %__o920, align 8
  %next_free928 = getelementptr inbounds %struct.obstack, %struct.obstack* %589, i32 0, i32 3
  %590 = load i8*, i8** %next_free928, align 8
  %incdec.ptr929 = getelementptr inbounds i8, i8* %590, i32 1
  store i8* %incdec.ptr929, i8** %next_free928, align 8
  store i8 %588, i8* %590, align 1
  br label %for.inc.930

for.inc.930:                                      ; preds = %if.end.927
  %591 = load i64, i64* %nspace865, align 8
  %dec931 = add i64 %591, -1
  store i64 %dec931, i64* %nspace865, align 8
  br label %for.cond.917

for.end.932:                                      ; preds = %for.cond.917
  br label %if.end.933

if.end.933:                                       ; preds = %for.end.932, %land.lhs.true.913, %if.end.905
  br label %do.end.934

do.end.934:                                       ; preds = %if.end.933
  br label %sw.epilog.2279

sw.bb.935:                                        ; preds = %sw.bb.215
  %arraydecay936 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call937 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #5
  %592 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm938 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %592, i32 0, i32 6
  %call939 = call i64 @strftime(i8* %arraydecay936, i64 512, i8* %call937, %struct.tm* %run_tm938) #5
  br label %do.body.940

do.body.940:                                      ; preds = %sw.bb.935
  %arraydecay942 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call943 = call i64 @strlen(i8* %arraydecay942) #6
  store i64 %call943, i64* %len941, align 8
  %593 = load i64, i64* %len941, align 8
  %594 = load i64, i64* %width, align 8
  %cmp945 = icmp ugt i64 %593, %594
  br i1 %cmp945, label %cond.true.947, label %cond.false.948

cond.true.947:                                    ; preds = %do.body.940
  br label %cond.end.950

cond.false.948:                                   ; preds = %do.body.940
  %595 = load i64, i64* %width, align 8
  %596 = load i64, i64* %len941, align 8
  %sub949 = sub i64 %595, %596
  br label %cond.end.950

cond.end.950:                                     ; preds = %cond.false.948, %cond.true.947
  %cond951 = phi i64 [ 0, %cond.true.947 ], [ %sub949, %cond.false.948 ]
  store i64 %cond951, i64* %nspace944, align 8
  %597 = load i64, i64* %width, align 8
  %tobool952 = icmp ne i64 %597, 0
  br i1 %tobool952, label %land.lhs.true.953, label %if.end.973

land.lhs.true.953:                                ; preds = %cond.end.950
  %598 = load i32, i32* %justification, align 4
  %cmp954 = icmp sgt i32 %598, 0
  br i1 %cmp954, label %if.then.956, label %if.end.973

if.then.956:                                      ; preds = %land.lhs.true.953
  br label %for.cond.957

for.cond.957:                                     ; preds = %for.inc.970, %if.then.956
  %599 = load i64, i64* %nspace944, align 8
  %tobool958 = icmp ne i64 %599, 0
  br i1 %tobool958, label %for.body.959, label %for.end.972

for.body.959:                                     ; preds = %for.cond.957
  %600 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %600, %struct.obstack** %__o960, align 8
  %601 = load %struct.obstack*, %struct.obstack** %__o960, align 8
  %next_free961 = getelementptr inbounds %struct.obstack, %struct.obstack* %601, i32 0, i32 3
  %602 = load i8*, i8** %next_free961, align 8
  %add.ptr962 = getelementptr inbounds i8, i8* %602, i64 1
  %603 = load %struct.obstack*, %struct.obstack** %__o960, align 8
  %chunk_limit963 = getelementptr inbounds %struct.obstack, %struct.obstack* %603, i32 0, i32 4
  %604 = load i8*, i8** %chunk_limit963, align 8
  %cmp964 = icmp ugt i8* %add.ptr962, %604
  br i1 %cmp964, label %if.then.966, label %if.end.967

if.then.966:                                      ; preds = %for.body.959
  %605 = load %struct.obstack*, %struct.obstack** %__o960, align 8
  call void @_obstack_newchunk(%struct.obstack* %605, i32 1)
  br label %if.end.967

if.end.967:                                       ; preds = %if.then.966, %for.body.959
  %606 = load i8, i8* %padding, align 1
  %607 = load %struct.obstack*, %struct.obstack** %__o960, align 8
  %next_free968 = getelementptr inbounds %struct.obstack, %struct.obstack* %607, i32 0, i32 3
  %608 = load i8*, i8** %next_free968, align 8
  %incdec.ptr969 = getelementptr inbounds i8, i8* %608, i32 1
  store i8* %incdec.ptr969, i8** %next_free968, align 8
  store i8 %606, i8* %608, align 1
  br label %for.inc.970

for.inc.970:                                      ; preds = %if.end.967
  %609 = load i64, i64* %nspace944, align 8
  %dec971 = add i64 %609, -1
  store i64 %dec971, i64* %nspace944, align 8
  br label %for.cond.957

for.end.972:                                      ; preds = %for.cond.957
  br label %if.end.973

if.end.973:                                       ; preds = %for.end.972, %land.lhs.true.953, %cond.end.950
  %610 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %610, %struct.obstack** %__o974, align 8
  %611 = load i64, i64* %len941, align 8
  %conv976 = trunc i64 %611 to i32
  store i32 %conv976, i32* %__len975, align 4
  %612 = load %struct.obstack*, %struct.obstack** %__o974, align 8
  %next_free977 = getelementptr inbounds %struct.obstack, %struct.obstack* %612, i32 0, i32 3
  %613 = load i8*, i8** %next_free977, align 8
  %614 = load i32, i32* %__len975, align 4
  %idx.ext978 = sext i32 %614 to i64
  %add.ptr979 = getelementptr inbounds i8, i8* %613, i64 %idx.ext978
  %615 = load %struct.obstack*, %struct.obstack** %__o974, align 8
  %chunk_limit980 = getelementptr inbounds %struct.obstack, %struct.obstack* %615, i32 0, i32 4
  %616 = load i8*, i8** %chunk_limit980, align 8
  %cmp981 = icmp ugt i8* %add.ptr979, %616
  br i1 %cmp981, label %if.then.983, label %if.end.984

if.then.983:                                      ; preds = %if.end.973
  %617 = load %struct.obstack*, %struct.obstack** %__o974, align 8
  %618 = load i32, i32* %__len975, align 4
  call void @_obstack_newchunk(%struct.obstack* %617, i32 %618)
  br label %if.end.984

if.end.984:                                       ; preds = %if.then.983, %if.end.973
  %619 = load %struct.obstack*, %struct.obstack** %__o974, align 8
  %next_free985 = getelementptr inbounds %struct.obstack, %struct.obstack* %619, i32 0, i32 3
  %620 = load i8*, i8** %next_free985, align 8
  %arraydecay986 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %621 = load i32, i32* %__len975, align 4
  %conv987 = sext i32 %621 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %620, i8* %arraydecay986, i64 %conv987, i32 1, i1 false)
  %622 = load i32, i32* %__len975, align 4
  %623 = load %struct.obstack*, %struct.obstack** %__o974, align 8
  %next_free988 = getelementptr inbounds %struct.obstack, %struct.obstack* %623, i32 0, i32 3
  %624 = load i8*, i8** %next_free988, align 8
  %idx.ext989 = sext i32 %622 to i64
  %add.ptr990 = getelementptr inbounds i8, i8* %624, i64 %idx.ext989
  store i8* %add.ptr990, i8** %next_free988, align 8
  %625 = load i64, i64* %width, align 8
  %tobool991 = icmp ne i64 %625, 0
  br i1 %tobool991, label %land.lhs.true.992, label %if.end.1012

land.lhs.true.992:                                ; preds = %if.end.984
  %626 = load i32, i32* %justification, align 4
  %cmp993 = icmp slt i32 %626, 0
  br i1 %cmp993, label %if.then.995, label %if.end.1012

if.then.995:                                      ; preds = %land.lhs.true.992
  br label %for.cond.996

for.cond.996:                                     ; preds = %for.inc.1009, %if.then.995
  %627 = load i64, i64* %nspace944, align 8
  %tobool997 = icmp ne i64 %627, 0
  br i1 %tobool997, label %for.body.998, label %for.end.1011

for.body.998:                                     ; preds = %for.cond.996
  %628 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %628, %struct.obstack** %__o999, align 8
  %629 = load %struct.obstack*, %struct.obstack** %__o999, align 8
  %next_free1000 = getelementptr inbounds %struct.obstack, %struct.obstack* %629, i32 0, i32 3
  %630 = load i8*, i8** %next_free1000, align 8
  %add.ptr1001 = getelementptr inbounds i8, i8* %630, i64 1
  %631 = load %struct.obstack*, %struct.obstack** %__o999, align 8
  %chunk_limit1002 = getelementptr inbounds %struct.obstack, %struct.obstack* %631, i32 0, i32 4
  %632 = load i8*, i8** %chunk_limit1002, align 8
  %cmp1003 = icmp ugt i8* %add.ptr1001, %632
  br i1 %cmp1003, label %if.then.1005, label %if.end.1006

if.then.1005:                                     ; preds = %for.body.998
  %633 = load %struct.obstack*, %struct.obstack** %__o999, align 8
  call void @_obstack_newchunk(%struct.obstack* %633, i32 1)
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.then.1005, %for.body.998
  %634 = load i8, i8* %padding, align 1
  %635 = load %struct.obstack*, %struct.obstack** %__o999, align 8
  %next_free1007 = getelementptr inbounds %struct.obstack, %struct.obstack* %635, i32 0, i32 3
  %636 = load i8*, i8** %next_free1007, align 8
  %incdec.ptr1008 = getelementptr inbounds i8, i8* %636, i32 1
  store i8* %incdec.ptr1008, i8** %next_free1007, align 8
  store i8 %634, i8* %636, align 1
  br label %for.inc.1009

for.inc.1009:                                     ; preds = %if.end.1006
  %637 = load i64, i64* %nspace944, align 8
  %dec1010 = add i64 %637, -1
  store i64 %dec1010, i64* %nspace944, align 8
  br label %for.cond.996

for.end.1011:                                     ; preds = %for.cond.996
  br label %if.end.1012

if.end.1012:                                      ; preds = %for.end.1011, %land.lhs.true.992, %if.end.984
  br label %do.end.1013

do.end.1013:                                      ; preds = %if.end.1012
  br label %sw.epilog.2279

sw.bb.1014:                                       ; preds = %sw.bb.215
  %arraydecay1015 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %638 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1016 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %638, i32 0, i32 6
  %tm_mday1017 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1016, i32 0, i32 3
  %639 = load i32, i32* %tm_mday1017, align 4
  %640 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1018 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %640, i32 0, i32 6
  %tm_mon1019 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1018, i32 0, i32 4
  %641 = load i32, i32* %tm_mon1019, align 4
  %add1020 = add nsw i32 %641, 1
  %642 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1021 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %642, i32 0, i32 6
  %tm_year1022 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1021, i32 0, i32 5
  %643 = load i32, i32* %tm_year1022, align 4
  %add1023 = add nsw i32 %643, 1900
  %call1024 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1015, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %639, i32 %add1020, i32 %add1023) #5
  br label %do.body.1025

do.body.1025:                                     ; preds = %sw.bb.1014
  %arraydecay1027 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1028 = call i64 @strlen(i8* %arraydecay1027) #6
  store i64 %call1028, i64* %len1026, align 8
  %644 = load i64, i64* %len1026, align 8
  %645 = load i64, i64* %width, align 8
  %cmp1030 = icmp ugt i64 %644, %645
  br i1 %cmp1030, label %cond.true.1032, label %cond.false.1033

cond.true.1032:                                   ; preds = %do.body.1025
  br label %cond.end.1035

cond.false.1033:                                  ; preds = %do.body.1025
  %646 = load i64, i64* %width, align 8
  %647 = load i64, i64* %len1026, align 8
  %sub1034 = sub i64 %646, %647
  br label %cond.end.1035

cond.end.1035:                                    ; preds = %cond.false.1033, %cond.true.1032
  %cond1036 = phi i64 [ 0, %cond.true.1032 ], [ %sub1034, %cond.false.1033 ]
  store i64 %cond1036, i64* %nspace1029, align 8
  %648 = load i64, i64* %width, align 8
  %tobool1037 = icmp ne i64 %648, 0
  br i1 %tobool1037, label %land.lhs.true.1038, label %if.end.1058

land.lhs.true.1038:                               ; preds = %cond.end.1035
  %649 = load i32, i32* %justification, align 4
  %cmp1039 = icmp sgt i32 %649, 0
  br i1 %cmp1039, label %if.then.1041, label %if.end.1058

if.then.1041:                                     ; preds = %land.lhs.true.1038
  br label %for.cond.1042

for.cond.1042:                                    ; preds = %for.inc.1055, %if.then.1041
  %650 = load i64, i64* %nspace1029, align 8
  %tobool1043 = icmp ne i64 %650, 0
  br i1 %tobool1043, label %for.body.1044, label %for.end.1057

for.body.1044:                                    ; preds = %for.cond.1042
  %651 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %651, %struct.obstack** %__o1045, align 8
  %652 = load %struct.obstack*, %struct.obstack** %__o1045, align 8
  %next_free1046 = getelementptr inbounds %struct.obstack, %struct.obstack* %652, i32 0, i32 3
  %653 = load i8*, i8** %next_free1046, align 8
  %add.ptr1047 = getelementptr inbounds i8, i8* %653, i64 1
  %654 = load %struct.obstack*, %struct.obstack** %__o1045, align 8
  %chunk_limit1048 = getelementptr inbounds %struct.obstack, %struct.obstack* %654, i32 0, i32 4
  %655 = load i8*, i8** %chunk_limit1048, align 8
  %cmp1049 = icmp ugt i8* %add.ptr1047, %655
  br i1 %cmp1049, label %if.then.1051, label %if.end.1052

if.then.1051:                                     ; preds = %for.body.1044
  %656 = load %struct.obstack*, %struct.obstack** %__o1045, align 8
  call void @_obstack_newchunk(%struct.obstack* %656, i32 1)
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.then.1051, %for.body.1044
  %657 = load i8, i8* %padding, align 1
  %658 = load %struct.obstack*, %struct.obstack** %__o1045, align 8
  %next_free1053 = getelementptr inbounds %struct.obstack, %struct.obstack* %658, i32 0, i32 3
  %659 = load i8*, i8** %next_free1053, align 8
  %incdec.ptr1054 = getelementptr inbounds i8, i8* %659, i32 1
  store i8* %incdec.ptr1054, i8** %next_free1053, align 8
  store i8 %657, i8* %659, align 1
  br label %for.inc.1055

for.inc.1055:                                     ; preds = %if.end.1052
  %660 = load i64, i64* %nspace1029, align 8
  %dec1056 = add i64 %660, -1
  store i64 %dec1056, i64* %nspace1029, align 8
  br label %for.cond.1042

for.end.1057:                                     ; preds = %for.cond.1042
  br label %if.end.1058

if.end.1058:                                      ; preds = %for.end.1057, %land.lhs.true.1038, %cond.end.1035
  %661 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %661, %struct.obstack** %__o1059, align 8
  %662 = load i64, i64* %len1026, align 8
  %conv1061 = trunc i64 %662 to i32
  store i32 %conv1061, i32* %__len1060, align 4
  %663 = load %struct.obstack*, %struct.obstack** %__o1059, align 8
  %next_free1062 = getelementptr inbounds %struct.obstack, %struct.obstack* %663, i32 0, i32 3
  %664 = load i8*, i8** %next_free1062, align 8
  %665 = load i32, i32* %__len1060, align 4
  %idx.ext1063 = sext i32 %665 to i64
  %add.ptr1064 = getelementptr inbounds i8, i8* %664, i64 %idx.ext1063
  %666 = load %struct.obstack*, %struct.obstack** %__o1059, align 8
  %chunk_limit1065 = getelementptr inbounds %struct.obstack, %struct.obstack* %666, i32 0, i32 4
  %667 = load i8*, i8** %chunk_limit1065, align 8
  %cmp1066 = icmp ugt i8* %add.ptr1064, %667
  br i1 %cmp1066, label %if.then.1068, label %if.end.1069

if.then.1068:                                     ; preds = %if.end.1058
  %668 = load %struct.obstack*, %struct.obstack** %__o1059, align 8
  %669 = load i32, i32* %__len1060, align 4
  call void @_obstack_newchunk(%struct.obstack* %668, i32 %669)
  br label %if.end.1069

if.end.1069:                                      ; preds = %if.then.1068, %if.end.1058
  %670 = load %struct.obstack*, %struct.obstack** %__o1059, align 8
  %next_free1070 = getelementptr inbounds %struct.obstack, %struct.obstack* %670, i32 0, i32 3
  %671 = load i8*, i8** %next_free1070, align 8
  %arraydecay1071 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %672 = load i32, i32* %__len1060, align 4
  %conv1072 = sext i32 %672 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %671, i8* %arraydecay1071, i64 %conv1072, i32 1, i1 false)
  %673 = load i32, i32* %__len1060, align 4
  %674 = load %struct.obstack*, %struct.obstack** %__o1059, align 8
  %next_free1073 = getelementptr inbounds %struct.obstack, %struct.obstack* %674, i32 0, i32 3
  %675 = load i8*, i8** %next_free1073, align 8
  %idx.ext1074 = sext i32 %673 to i64
  %add.ptr1075 = getelementptr inbounds i8, i8* %675, i64 %idx.ext1074
  store i8* %add.ptr1075, i8** %next_free1073, align 8
  %676 = load i64, i64* %width, align 8
  %tobool1076 = icmp ne i64 %676, 0
  br i1 %tobool1076, label %land.lhs.true.1077, label %if.end.1097

land.lhs.true.1077:                               ; preds = %if.end.1069
  %677 = load i32, i32* %justification, align 4
  %cmp1078 = icmp slt i32 %677, 0
  br i1 %cmp1078, label %if.then.1080, label %if.end.1097

if.then.1080:                                     ; preds = %land.lhs.true.1077
  br label %for.cond.1081

for.cond.1081:                                    ; preds = %for.inc.1094, %if.then.1080
  %678 = load i64, i64* %nspace1029, align 8
  %tobool1082 = icmp ne i64 %678, 0
  br i1 %tobool1082, label %for.body.1083, label %for.end.1096

for.body.1083:                                    ; preds = %for.cond.1081
  %679 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %679, %struct.obstack** %__o1084, align 8
  %680 = load %struct.obstack*, %struct.obstack** %__o1084, align 8
  %next_free1085 = getelementptr inbounds %struct.obstack, %struct.obstack* %680, i32 0, i32 3
  %681 = load i8*, i8** %next_free1085, align 8
  %add.ptr1086 = getelementptr inbounds i8, i8* %681, i64 1
  %682 = load %struct.obstack*, %struct.obstack** %__o1084, align 8
  %chunk_limit1087 = getelementptr inbounds %struct.obstack, %struct.obstack* %682, i32 0, i32 4
  %683 = load i8*, i8** %chunk_limit1087, align 8
  %cmp1088 = icmp ugt i8* %add.ptr1086, %683
  br i1 %cmp1088, label %if.then.1090, label %if.end.1091

if.then.1090:                                     ; preds = %for.body.1083
  %684 = load %struct.obstack*, %struct.obstack** %__o1084, align 8
  call void @_obstack_newchunk(%struct.obstack* %684, i32 1)
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.then.1090, %for.body.1083
  %685 = load i8, i8* %padding, align 1
  %686 = load %struct.obstack*, %struct.obstack** %__o1084, align 8
  %next_free1092 = getelementptr inbounds %struct.obstack, %struct.obstack* %686, i32 0, i32 3
  %687 = load i8*, i8** %next_free1092, align 8
  %incdec.ptr1093 = getelementptr inbounds i8, i8* %687, i32 1
  store i8* %incdec.ptr1093, i8** %next_free1092, align 8
  store i8 %685, i8* %687, align 1
  br label %for.inc.1094

for.inc.1094:                                     ; preds = %if.end.1091
  %688 = load i64, i64* %nspace1029, align 8
  %dec1095 = add i64 %688, -1
  store i64 %dec1095, i64* %nspace1029, align 8
  br label %for.cond.1081

for.end.1096:                                     ; preds = %for.cond.1081
  br label %if.end.1097

if.end.1097:                                      ; preds = %for.end.1096, %land.lhs.true.1077, %if.end.1069
  br label %do.end.1098

do.end.1098:                                      ; preds = %if.end.1097
  br label %sw.epilog.2279

sw.bb.1099:                                       ; preds = %sw.bb.215
  %689 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1100 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %689, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call1100, i8** %cp, align 8
  %690 = load i8*, i8** %cp, align 8
  %call1101 = call i64 @strlen(i8* %690) #6
  %add1102 = add i64 %call1101, 1
  %mul1103 = mul i64 1, %add1102
  %691 = alloca i8, i64 %mul1103
  store i8* %691, i8** %cp2, align 8
  %692 = load i8*, i8** %cp2, align 8
  %693 = load i8*, i8** %cp, align 8
  %call1104 = call i8* @strcpy(i8* %692, i8* %693) #5
  %694 = load i8*, i8** %cp2, align 8
  %call1105 = call i8* @strchr(i8* %694, i32 46) #6
  store i8* %call1105, i8** %cp, align 8
  %695 = load i8*, i8** %cp, align 8
  %tobool1106 = icmp ne i8* %695, null
  br i1 %tobool1106, label %if.then.1107, label %if.end.1108

if.then.1107:                                     ; preds = %sw.bb.1099
  %696 = load i8*, i8** %cp, align 8
  store i8 0, i8* %696, align 1
  br label %if.end.1108

if.end.1108:                                      ; preds = %if.then.1107, %sw.bb.1099
  br label %do.body.1109

do.body.1109:                                     ; preds = %if.end.1108
  %697 = load i8*, i8** %cp2, align 8
  %call1111 = call i64 @strlen(i8* %697) #6
  store i64 %call1111, i64* %len1110, align 8
  %698 = load i64, i64* %len1110, align 8
  %699 = load i64, i64* %width, align 8
  %cmp1113 = icmp ugt i64 %698, %699
  br i1 %cmp1113, label %cond.true.1115, label %cond.false.1116

cond.true.1115:                                   ; preds = %do.body.1109
  br label %cond.end.1118

cond.false.1116:                                  ; preds = %do.body.1109
  %700 = load i64, i64* %width, align 8
  %701 = load i64, i64* %len1110, align 8
  %sub1117 = sub i64 %700, %701
  br label %cond.end.1118

cond.end.1118:                                    ; preds = %cond.false.1116, %cond.true.1115
  %cond1119 = phi i64 [ 0, %cond.true.1115 ], [ %sub1117, %cond.false.1116 ]
  store i64 %cond1119, i64* %nspace1112, align 8
  %702 = load i64, i64* %width, align 8
  %tobool1120 = icmp ne i64 %702, 0
  br i1 %tobool1120, label %land.lhs.true.1121, label %if.end.1141

land.lhs.true.1121:                               ; preds = %cond.end.1118
  %703 = load i32, i32* %justification, align 4
  %cmp1122 = icmp sgt i32 %703, 0
  br i1 %cmp1122, label %if.then.1124, label %if.end.1141

if.then.1124:                                     ; preds = %land.lhs.true.1121
  br label %for.cond.1125

for.cond.1125:                                    ; preds = %for.inc.1138, %if.then.1124
  %704 = load i64, i64* %nspace1112, align 8
  %tobool1126 = icmp ne i64 %704, 0
  br i1 %tobool1126, label %for.body.1127, label %for.end.1140

for.body.1127:                                    ; preds = %for.cond.1125
  %705 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %705, %struct.obstack** %__o1128, align 8
  %706 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free1129 = getelementptr inbounds %struct.obstack, %struct.obstack* %706, i32 0, i32 3
  %707 = load i8*, i8** %next_free1129, align 8
  %add.ptr1130 = getelementptr inbounds i8, i8* %707, i64 1
  %708 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %chunk_limit1131 = getelementptr inbounds %struct.obstack, %struct.obstack* %708, i32 0, i32 4
  %709 = load i8*, i8** %chunk_limit1131, align 8
  %cmp1132 = icmp ugt i8* %add.ptr1130, %709
  br i1 %cmp1132, label %if.then.1134, label %if.end.1135

if.then.1134:                                     ; preds = %for.body.1127
  %710 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  call void @_obstack_newchunk(%struct.obstack* %710, i32 1)
  br label %if.end.1135

if.end.1135:                                      ; preds = %if.then.1134, %for.body.1127
  %711 = load i8, i8* %padding, align 1
  %712 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free1136 = getelementptr inbounds %struct.obstack, %struct.obstack* %712, i32 0, i32 3
  %713 = load i8*, i8** %next_free1136, align 8
  %incdec.ptr1137 = getelementptr inbounds i8, i8* %713, i32 1
  store i8* %incdec.ptr1137, i8** %next_free1136, align 8
  store i8 %711, i8* %713, align 1
  br label %for.inc.1138

for.inc.1138:                                     ; preds = %if.end.1135
  %714 = load i64, i64* %nspace1112, align 8
  %dec1139 = add i64 %714, -1
  store i64 %dec1139, i64* %nspace1112, align 8
  br label %for.cond.1125

for.end.1140:                                     ; preds = %for.cond.1125
  br label %if.end.1141

if.end.1141:                                      ; preds = %for.end.1140, %land.lhs.true.1121, %cond.end.1118
  %715 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %715, %struct.obstack** %__o1142, align 8
  %716 = load i64, i64* %len1110, align 8
  %conv1144 = trunc i64 %716 to i32
  store i32 %conv1144, i32* %__len1143, align 4
  %717 = load %struct.obstack*, %struct.obstack** %__o1142, align 8
  %next_free1145 = getelementptr inbounds %struct.obstack, %struct.obstack* %717, i32 0, i32 3
  %718 = load i8*, i8** %next_free1145, align 8
  %719 = load i32, i32* %__len1143, align 4
  %idx.ext1146 = sext i32 %719 to i64
  %add.ptr1147 = getelementptr inbounds i8, i8* %718, i64 %idx.ext1146
  %720 = load %struct.obstack*, %struct.obstack** %__o1142, align 8
  %chunk_limit1148 = getelementptr inbounds %struct.obstack, %struct.obstack* %720, i32 0, i32 4
  %721 = load i8*, i8** %chunk_limit1148, align 8
  %cmp1149 = icmp ugt i8* %add.ptr1147, %721
  br i1 %cmp1149, label %if.then.1151, label %if.end.1152

if.then.1151:                                     ; preds = %if.end.1141
  %722 = load %struct.obstack*, %struct.obstack** %__o1142, align 8
  %723 = load i32, i32* %__len1143, align 4
  call void @_obstack_newchunk(%struct.obstack* %722, i32 %723)
  br label %if.end.1152

if.end.1152:                                      ; preds = %if.then.1151, %if.end.1141
  %724 = load %struct.obstack*, %struct.obstack** %__o1142, align 8
  %next_free1153 = getelementptr inbounds %struct.obstack, %struct.obstack* %724, i32 0, i32 3
  %725 = load i8*, i8** %next_free1153, align 8
  %726 = load i8*, i8** %cp2, align 8
  %727 = load i32, i32* %__len1143, align 4
  %conv1154 = sext i32 %727 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %725, i8* %726, i64 %conv1154, i32 1, i1 false)
  %728 = load i32, i32* %__len1143, align 4
  %729 = load %struct.obstack*, %struct.obstack** %__o1142, align 8
  %next_free1155 = getelementptr inbounds %struct.obstack, %struct.obstack* %729, i32 0, i32 3
  %730 = load i8*, i8** %next_free1155, align 8
  %idx.ext1156 = sext i32 %728 to i64
  %add.ptr1157 = getelementptr inbounds i8, i8* %730, i64 %idx.ext1156
  store i8* %add.ptr1157, i8** %next_free1155, align 8
  %731 = load i64, i64* %width, align 8
  %tobool1158 = icmp ne i64 %731, 0
  br i1 %tobool1158, label %land.lhs.true.1159, label %if.end.1179

land.lhs.true.1159:                               ; preds = %if.end.1152
  %732 = load i32, i32* %justification, align 4
  %cmp1160 = icmp slt i32 %732, 0
  br i1 %cmp1160, label %if.then.1162, label %if.end.1179

if.then.1162:                                     ; preds = %land.lhs.true.1159
  br label %for.cond.1163

for.cond.1163:                                    ; preds = %for.inc.1176, %if.then.1162
  %733 = load i64, i64* %nspace1112, align 8
  %tobool1164 = icmp ne i64 %733, 0
  br i1 %tobool1164, label %for.body.1165, label %for.end.1178

for.body.1165:                                    ; preds = %for.cond.1163
  %734 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %734, %struct.obstack** %__o1166, align 8
  %735 = load %struct.obstack*, %struct.obstack** %__o1166, align 8
  %next_free1167 = getelementptr inbounds %struct.obstack, %struct.obstack* %735, i32 0, i32 3
  %736 = load i8*, i8** %next_free1167, align 8
  %add.ptr1168 = getelementptr inbounds i8, i8* %736, i64 1
  %737 = load %struct.obstack*, %struct.obstack** %__o1166, align 8
  %chunk_limit1169 = getelementptr inbounds %struct.obstack, %struct.obstack* %737, i32 0, i32 4
  %738 = load i8*, i8** %chunk_limit1169, align 8
  %cmp1170 = icmp ugt i8* %add.ptr1168, %738
  br i1 %cmp1170, label %if.then.1172, label %if.end.1173

if.then.1172:                                     ; preds = %for.body.1165
  %739 = load %struct.obstack*, %struct.obstack** %__o1166, align 8
  call void @_obstack_newchunk(%struct.obstack* %739, i32 1)
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.then.1172, %for.body.1165
  %740 = load i8, i8* %padding, align 1
  %741 = load %struct.obstack*, %struct.obstack** %__o1166, align 8
  %next_free1174 = getelementptr inbounds %struct.obstack, %struct.obstack* %741, i32 0, i32 3
  %742 = load i8*, i8** %next_free1174, align 8
  %incdec.ptr1175 = getelementptr inbounds i8, i8* %742, i32 1
  store i8* %incdec.ptr1175, i8** %next_free1174, align 8
  store i8 %740, i8* %742, align 1
  br label %for.inc.1176

for.inc.1176:                                     ; preds = %if.end.1173
  %743 = load i64, i64* %nspace1112, align 8
  %dec1177 = add i64 %743, -1
  store i64 %dec1177, i64* %nspace1112, align 8
  br label %for.cond.1163

for.end.1178:                                     ; preds = %for.cond.1163
  br label %if.end.1179

if.end.1179:                                      ; preds = %for.end.1178, %land.lhs.true.1159, %if.end.1152
  br label %do.end.1180

do.end.1180:                                      ; preds = %if.end.1179
  br label %sw.epilog.2279

sw.bb.1181:                                       ; preds = %sw.bb.215
  br label %do.body.1182

do.body.1182:                                     ; preds = %sw.bb.1181
  %744 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1184 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %744, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %call1185 = call i64 @strlen(i8* %call1184) #6
  store i64 %call1185, i64* %len1183, align 8
  %745 = load i64, i64* %len1183, align 8
  %746 = load i64, i64* %width, align 8
  %cmp1187 = icmp ugt i64 %745, %746
  br i1 %cmp1187, label %cond.true.1189, label %cond.false.1190

cond.true.1189:                                   ; preds = %do.body.1182
  br label %cond.end.1192

cond.false.1190:                                  ; preds = %do.body.1182
  %747 = load i64, i64* %width, align 8
  %748 = load i64, i64* %len1183, align 8
  %sub1191 = sub i64 %747, %748
  br label %cond.end.1192

cond.end.1192:                                    ; preds = %cond.false.1190, %cond.true.1189
  %cond1193 = phi i64 [ 0, %cond.true.1189 ], [ %sub1191, %cond.false.1190 ]
  store i64 %cond1193, i64* %nspace1186, align 8
  %749 = load i64, i64* %width, align 8
  %tobool1194 = icmp ne i64 %749, 0
  br i1 %tobool1194, label %land.lhs.true.1195, label %if.end.1215

land.lhs.true.1195:                               ; preds = %cond.end.1192
  %750 = load i32, i32* %justification, align 4
  %cmp1196 = icmp sgt i32 %750, 0
  br i1 %cmp1196, label %if.then.1198, label %if.end.1215

if.then.1198:                                     ; preds = %land.lhs.true.1195
  br label %for.cond.1199

for.cond.1199:                                    ; preds = %for.inc.1212, %if.then.1198
  %751 = load i64, i64* %nspace1186, align 8
  %tobool1200 = icmp ne i64 %751, 0
  br i1 %tobool1200, label %for.body.1201, label %for.end.1214

for.body.1201:                                    ; preds = %for.cond.1199
  %752 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %752, %struct.obstack** %__o1202, align 8
  %753 = load %struct.obstack*, %struct.obstack** %__o1202, align 8
  %next_free1203 = getelementptr inbounds %struct.obstack, %struct.obstack* %753, i32 0, i32 3
  %754 = load i8*, i8** %next_free1203, align 8
  %add.ptr1204 = getelementptr inbounds i8, i8* %754, i64 1
  %755 = load %struct.obstack*, %struct.obstack** %__o1202, align 8
  %chunk_limit1205 = getelementptr inbounds %struct.obstack, %struct.obstack* %755, i32 0, i32 4
  %756 = load i8*, i8** %chunk_limit1205, align 8
  %cmp1206 = icmp ugt i8* %add.ptr1204, %756
  br i1 %cmp1206, label %if.then.1208, label %if.end.1209

if.then.1208:                                     ; preds = %for.body.1201
  %757 = load %struct.obstack*, %struct.obstack** %__o1202, align 8
  call void @_obstack_newchunk(%struct.obstack* %757, i32 1)
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.then.1208, %for.body.1201
  %758 = load i8, i8* %padding, align 1
  %759 = load %struct.obstack*, %struct.obstack** %__o1202, align 8
  %next_free1210 = getelementptr inbounds %struct.obstack, %struct.obstack* %759, i32 0, i32 3
  %760 = load i8*, i8** %next_free1210, align 8
  %incdec.ptr1211 = getelementptr inbounds i8, i8* %760, i32 1
  store i8* %incdec.ptr1211, i8** %next_free1210, align 8
  store i8 %758, i8* %760, align 1
  br label %for.inc.1212

for.inc.1212:                                     ; preds = %if.end.1209
  %761 = load i64, i64* %nspace1186, align 8
  %dec1213 = add i64 %761, -1
  store i64 %dec1213, i64* %nspace1186, align 8
  br label %for.cond.1199

for.end.1214:                                     ; preds = %for.cond.1199
  br label %if.end.1215

if.end.1215:                                      ; preds = %for.end.1214, %land.lhs.true.1195, %cond.end.1192
  %762 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %762, %struct.obstack** %__o1216, align 8
  %763 = load i64, i64* %len1183, align 8
  %conv1218 = trunc i64 %763 to i32
  store i32 %conv1218, i32* %__len1217, align 4
  %764 = load %struct.obstack*, %struct.obstack** %__o1216, align 8
  %next_free1219 = getelementptr inbounds %struct.obstack, %struct.obstack* %764, i32 0, i32 3
  %765 = load i8*, i8** %next_free1219, align 8
  %766 = load i32, i32* %__len1217, align 4
  %idx.ext1220 = sext i32 %766 to i64
  %add.ptr1221 = getelementptr inbounds i8, i8* %765, i64 %idx.ext1220
  %767 = load %struct.obstack*, %struct.obstack** %__o1216, align 8
  %chunk_limit1222 = getelementptr inbounds %struct.obstack, %struct.obstack* %767, i32 0, i32 4
  %768 = load i8*, i8** %chunk_limit1222, align 8
  %cmp1223 = icmp ugt i8* %add.ptr1221, %768
  br i1 %cmp1223, label %if.then.1225, label %if.end.1226

if.then.1225:                                     ; preds = %if.end.1215
  %769 = load %struct.obstack*, %struct.obstack** %__o1216, align 8
  %770 = load i32, i32* %__len1217, align 4
  call void @_obstack_newchunk(%struct.obstack* %769, i32 %770)
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.then.1225, %if.end.1215
  %771 = load %struct.obstack*, %struct.obstack** %__o1216, align 8
  %next_free1227 = getelementptr inbounds %struct.obstack, %struct.obstack* %771, i32 0, i32 3
  %772 = load i8*, i8** %next_free1227, align 8
  %773 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1228 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %773, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %774 = load i32, i32* %__len1217, align 4
  %conv1229 = sext i32 %774 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %772, i8* %call1228, i64 %conv1229, i32 1, i1 false)
  %775 = load i32, i32* %__len1217, align 4
  %776 = load %struct.obstack*, %struct.obstack** %__o1216, align 8
  %next_free1230 = getelementptr inbounds %struct.obstack, %struct.obstack* %776, i32 0, i32 3
  %777 = load i8*, i8** %next_free1230, align 8
  %idx.ext1231 = sext i32 %775 to i64
  %add.ptr1232 = getelementptr inbounds i8, i8* %777, i64 %idx.ext1231
  store i8* %add.ptr1232, i8** %next_free1230, align 8
  %778 = load i64, i64* %width, align 8
  %tobool1233 = icmp ne i64 %778, 0
  br i1 %tobool1233, label %land.lhs.true.1234, label %if.end.1254

land.lhs.true.1234:                               ; preds = %if.end.1226
  %779 = load i32, i32* %justification, align 4
  %cmp1235 = icmp slt i32 %779, 0
  br i1 %cmp1235, label %if.then.1237, label %if.end.1254

if.then.1237:                                     ; preds = %land.lhs.true.1234
  br label %for.cond.1238

for.cond.1238:                                    ; preds = %for.inc.1251, %if.then.1237
  %780 = load i64, i64* %nspace1186, align 8
  %tobool1239 = icmp ne i64 %780, 0
  br i1 %tobool1239, label %for.body.1240, label %for.end.1253

for.body.1240:                                    ; preds = %for.cond.1238
  %781 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %781, %struct.obstack** %__o1241, align 8
  %782 = load %struct.obstack*, %struct.obstack** %__o1241, align 8
  %next_free1242 = getelementptr inbounds %struct.obstack, %struct.obstack* %782, i32 0, i32 3
  %783 = load i8*, i8** %next_free1242, align 8
  %add.ptr1243 = getelementptr inbounds i8, i8* %783, i64 1
  %784 = load %struct.obstack*, %struct.obstack** %__o1241, align 8
  %chunk_limit1244 = getelementptr inbounds %struct.obstack, %struct.obstack* %784, i32 0, i32 4
  %785 = load i8*, i8** %chunk_limit1244, align 8
  %cmp1245 = icmp ugt i8* %add.ptr1243, %785
  br i1 %cmp1245, label %if.then.1247, label %if.end.1248

if.then.1247:                                     ; preds = %for.body.1240
  %786 = load %struct.obstack*, %struct.obstack** %__o1241, align 8
  call void @_obstack_newchunk(%struct.obstack* %786, i32 1)
  br label %if.end.1248

if.end.1248:                                      ; preds = %if.then.1247, %for.body.1240
  %787 = load i8, i8* %padding, align 1
  %788 = load %struct.obstack*, %struct.obstack** %__o1241, align 8
  %next_free1249 = getelementptr inbounds %struct.obstack, %struct.obstack* %788, i32 0, i32 3
  %789 = load i8*, i8** %next_free1249, align 8
  %incdec.ptr1250 = getelementptr inbounds i8, i8* %789, i32 1
  store i8* %incdec.ptr1250, i8** %next_free1249, align 8
  store i8 %787, i8* %789, align 1
  br label %for.inc.1251

for.inc.1251:                                     ; preds = %if.end.1248
  %790 = load i64, i64* %nspace1186, align 8
  %dec1252 = add i64 %790, -1
  store i64 %dec1252, i64* %nspace1186, align 8
  br label %for.cond.1238

for.end.1253:                                     ; preds = %for.cond.1238
  br label %if.end.1254

if.end.1254:                                      ; preds = %for.end.1253, %land.lhs.true.1234, %if.end.1226
  br label %do.end.1255

do.end.1255:                                      ; preds = %if.end.1254
  br label %sw.epilog.2279

sw.bb.1256:                                       ; preds = %sw.bb.215
  br label %do.body.1257

do.body.1257:                                     ; preds = %sw.bb.1256
  %791 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1259 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %791, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  %call1260 = call i64 @strlen(i8* %call1259) #6
  store i64 %call1260, i64* %len1258, align 8
  %792 = load i64, i64* %len1258, align 8
  %793 = load i64, i64* %width, align 8
  %cmp1262 = icmp ugt i64 %792, %793
  br i1 %cmp1262, label %cond.true.1264, label %cond.false.1265

cond.true.1264:                                   ; preds = %do.body.1257
  br label %cond.end.1267

cond.false.1265:                                  ; preds = %do.body.1257
  %794 = load i64, i64* %width, align 8
  %795 = load i64, i64* %len1258, align 8
  %sub1266 = sub i64 %794, %795
  br label %cond.end.1267

cond.end.1267:                                    ; preds = %cond.false.1265, %cond.true.1264
  %cond1268 = phi i64 [ 0, %cond.true.1264 ], [ %sub1266, %cond.false.1265 ]
  store i64 %cond1268, i64* %nspace1261, align 8
  %796 = load i64, i64* %width, align 8
  %tobool1269 = icmp ne i64 %796, 0
  br i1 %tobool1269, label %land.lhs.true.1270, label %if.end.1290

land.lhs.true.1270:                               ; preds = %cond.end.1267
  %797 = load i32, i32* %justification, align 4
  %cmp1271 = icmp sgt i32 %797, 0
  br i1 %cmp1271, label %if.then.1273, label %if.end.1290

if.then.1273:                                     ; preds = %land.lhs.true.1270
  br label %for.cond.1274

for.cond.1274:                                    ; preds = %for.inc.1287, %if.then.1273
  %798 = load i64, i64* %nspace1261, align 8
  %tobool1275 = icmp ne i64 %798, 0
  br i1 %tobool1275, label %for.body.1276, label %for.end.1289

for.body.1276:                                    ; preds = %for.cond.1274
  %799 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %799, %struct.obstack** %__o1277, align 8
  %800 = load %struct.obstack*, %struct.obstack** %__o1277, align 8
  %next_free1278 = getelementptr inbounds %struct.obstack, %struct.obstack* %800, i32 0, i32 3
  %801 = load i8*, i8** %next_free1278, align 8
  %add.ptr1279 = getelementptr inbounds i8, i8* %801, i64 1
  %802 = load %struct.obstack*, %struct.obstack** %__o1277, align 8
  %chunk_limit1280 = getelementptr inbounds %struct.obstack, %struct.obstack* %802, i32 0, i32 4
  %803 = load i8*, i8** %chunk_limit1280, align 8
  %cmp1281 = icmp ugt i8* %add.ptr1279, %803
  br i1 %cmp1281, label %if.then.1283, label %if.end.1284

if.then.1283:                                     ; preds = %for.body.1276
  %804 = load %struct.obstack*, %struct.obstack** %__o1277, align 8
  call void @_obstack_newchunk(%struct.obstack* %804, i32 1)
  br label %if.end.1284

if.end.1284:                                      ; preds = %if.then.1283, %for.body.1276
  %805 = load i8, i8* %padding, align 1
  %806 = load %struct.obstack*, %struct.obstack** %__o1277, align 8
  %next_free1285 = getelementptr inbounds %struct.obstack, %struct.obstack* %806, i32 0, i32 3
  %807 = load i8*, i8** %next_free1285, align 8
  %incdec.ptr1286 = getelementptr inbounds i8, i8* %807, i32 1
  store i8* %incdec.ptr1286, i8** %next_free1285, align 8
  store i8 %805, i8* %807, align 1
  br label %for.inc.1287

for.inc.1287:                                     ; preds = %if.end.1284
  %808 = load i64, i64* %nspace1261, align 8
  %dec1288 = add i64 %808, -1
  store i64 %dec1288, i64* %nspace1261, align 8
  br label %for.cond.1274

for.end.1289:                                     ; preds = %for.cond.1274
  br label %if.end.1290

if.end.1290:                                      ; preds = %for.end.1289, %land.lhs.true.1270, %cond.end.1267
  %809 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %809, %struct.obstack** %__o1291, align 8
  %810 = load i64, i64* %len1258, align 8
  %conv1293 = trunc i64 %810 to i32
  store i32 %conv1293, i32* %__len1292, align 4
  %811 = load %struct.obstack*, %struct.obstack** %__o1291, align 8
  %next_free1294 = getelementptr inbounds %struct.obstack, %struct.obstack* %811, i32 0, i32 3
  %812 = load i8*, i8** %next_free1294, align 8
  %813 = load i32, i32* %__len1292, align 4
  %idx.ext1295 = sext i32 %813 to i64
  %add.ptr1296 = getelementptr inbounds i8, i8* %812, i64 %idx.ext1295
  %814 = load %struct.obstack*, %struct.obstack** %__o1291, align 8
  %chunk_limit1297 = getelementptr inbounds %struct.obstack, %struct.obstack* %814, i32 0, i32 4
  %815 = load i8*, i8** %chunk_limit1297, align 8
  %cmp1298 = icmp ugt i8* %add.ptr1296, %815
  br i1 %cmp1298, label %if.then.1300, label %if.end.1301

if.then.1300:                                     ; preds = %if.end.1290
  %816 = load %struct.obstack*, %struct.obstack** %__o1291, align 8
  %817 = load i32, i32* %__len1292, align 4
  call void @_obstack_newchunk(%struct.obstack* %816, i32 %817)
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.then.1300, %if.end.1290
  %818 = load %struct.obstack*, %struct.obstack** %__o1291, align 8
  %next_free1302 = getelementptr inbounds %struct.obstack, %struct.obstack* %818, i32 0, i32 3
  %819 = load i8*, i8** %next_free1302, align 8
  %820 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1303 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %820, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  %821 = load i32, i32* %__len1292, align 4
  %conv1304 = sext i32 %821 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %819, i8* %call1303, i64 %conv1304, i32 1, i1 false)
  %822 = load i32, i32* %__len1292, align 4
  %823 = load %struct.obstack*, %struct.obstack** %__o1291, align 8
  %next_free1305 = getelementptr inbounds %struct.obstack, %struct.obstack* %823, i32 0, i32 3
  %824 = load i8*, i8** %next_free1305, align 8
  %idx.ext1306 = sext i32 %822 to i64
  %add.ptr1307 = getelementptr inbounds i8, i8* %824, i64 %idx.ext1306
  store i8* %add.ptr1307, i8** %next_free1305, align 8
  %825 = load i64, i64* %width, align 8
  %tobool1308 = icmp ne i64 %825, 0
  br i1 %tobool1308, label %land.lhs.true.1309, label %if.end.1329

land.lhs.true.1309:                               ; preds = %if.end.1301
  %826 = load i32, i32* %justification, align 4
  %cmp1310 = icmp slt i32 %826, 0
  br i1 %cmp1310, label %if.then.1312, label %if.end.1329

if.then.1312:                                     ; preds = %land.lhs.true.1309
  br label %for.cond.1313

for.cond.1313:                                    ; preds = %for.inc.1326, %if.then.1312
  %827 = load i64, i64* %nspace1261, align 8
  %tobool1314 = icmp ne i64 %827, 0
  br i1 %tobool1314, label %for.body.1315, label %for.end.1328

for.body.1315:                                    ; preds = %for.cond.1313
  %828 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %828, %struct.obstack** %__o1316, align 8
  %829 = load %struct.obstack*, %struct.obstack** %__o1316, align 8
  %next_free1317 = getelementptr inbounds %struct.obstack, %struct.obstack* %829, i32 0, i32 3
  %830 = load i8*, i8** %next_free1317, align 8
  %add.ptr1318 = getelementptr inbounds i8, i8* %830, i64 1
  %831 = load %struct.obstack*, %struct.obstack** %__o1316, align 8
  %chunk_limit1319 = getelementptr inbounds %struct.obstack, %struct.obstack* %831, i32 0, i32 4
  %832 = load i8*, i8** %chunk_limit1319, align 8
  %cmp1320 = icmp ugt i8* %add.ptr1318, %832
  br i1 %cmp1320, label %if.then.1322, label %if.end.1323

if.then.1322:                                     ; preds = %for.body.1315
  %833 = load %struct.obstack*, %struct.obstack** %__o1316, align 8
  call void @_obstack_newchunk(%struct.obstack* %833, i32 1)
  br label %if.end.1323

if.end.1323:                                      ; preds = %if.then.1322, %for.body.1315
  %834 = load i8, i8* %padding, align 1
  %835 = load %struct.obstack*, %struct.obstack** %__o1316, align 8
  %next_free1324 = getelementptr inbounds %struct.obstack, %struct.obstack* %835, i32 0, i32 3
  %836 = load i8*, i8** %next_free1324, align 8
  %incdec.ptr1325 = getelementptr inbounds i8, i8* %836, i32 1
  store i8* %incdec.ptr1325, i8** %next_free1324, align 8
  store i8 %834, i8* %836, align 1
  br label %for.inc.1326

for.inc.1326:                                     ; preds = %if.end.1323
  %837 = load i64, i64* %nspace1261, align 8
  %dec1327 = add i64 %837, -1
  store i64 %dec1327, i64* %nspace1261, align 8
  br label %for.cond.1313

for.end.1328:                                     ; preds = %for.cond.1313
  br label %if.end.1329

if.end.1329:                                      ; preds = %for.end.1328, %land.lhs.true.1309, %if.end.1301
  br label %do.end.1330

do.end.1330:                                      ; preds = %if.end.1329
  br label %sw.epilog.2279

sw.bb.1331:                                       ; preds = %sw.bb.215
  br label %do.body.1332

do.body.1332:                                     ; preds = %sw.bb.1331
  %838 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1334 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %838, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %call1335 = call i64 @strlen(i8* %call1334) #6
  store i64 %call1335, i64* %len1333, align 8
  %839 = load i64, i64* %len1333, align 8
  %840 = load i64, i64* %width, align 8
  %cmp1337 = icmp ugt i64 %839, %840
  br i1 %cmp1337, label %cond.true.1339, label %cond.false.1340

cond.true.1339:                                   ; preds = %do.body.1332
  br label %cond.end.1342

cond.false.1340:                                  ; preds = %do.body.1332
  %841 = load i64, i64* %width, align 8
  %842 = load i64, i64* %len1333, align 8
  %sub1341 = sub i64 %841, %842
  br label %cond.end.1342

cond.end.1342:                                    ; preds = %cond.false.1340, %cond.true.1339
  %cond1343 = phi i64 [ 0, %cond.true.1339 ], [ %sub1341, %cond.false.1340 ]
  store i64 %cond1343, i64* %nspace1336, align 8
  %843 = load i64, i64* %width, align 8
  %tobool1344 = icmp ne i64 %843, 0
  br i1 %tobool1344, label %land.lhs.true.1345, label %if.end.1365

land.lhs.true.1345:                               ; preds = %cond.end.1342
  %844 = load i32, i32* %justification, align 4
  %cmp1346 = icmp sgt i32 %844, 0
  br i1 %cmp1346, label %if.then.1348, label %if.end.1365

if.then.1348:                                     ; preds = %land.lhs.true.1345
  br label %for.cond.1349

for.cond.1349:                                    ; preds = %for.inc.1362, %if.then.1348
  %845 = load i64, i64* %nspace1336, align 8
  %tobool1350 = icmp ne i64 %845, 0
  br i1 %tobool1350, label %for.body.1351, label %for.end.1364

for.body.1351:                                    ; preds = %for.cond.1349
  %846 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %846, %struct.obstack** %__o1352, align 8
  %847 = load %struct.obstack*, %struct.obstack** %__o1352, align 8
  %next_free1353 = getelementptr inbounds %struct.obstack, %struct.obstack* %847, i32 0, i32 3
  %848 = load i8*, i8** %next_free1353, align 8
  %add.ptr1354 = getelementptr inbounds i8, i8* %848, i64 1
  %849 = load %struct.obstack*, %struct.obstack** %__o1352, align 8
  %chunk_limit1355 = getelementptr inbounds %struct.obstack, %struct.obstack* %849, i32 0, i32 4
  %850 = load i8*, i8** %chunk_limit1355, align 8
  %cmp1356 = icmp ugt i8* %add.ptr1354, %850
  br i1 %cmp1356, label %if.then.1358, label %if.end.1359

if.then.1358:                                     ; preds = %for.body.1351
  %851 = load %struct.obstack*, %struct.obstack** %__o1352, align 8
  call void @_obstack_newchunk(%struct.obstack* %851, i32 1)
  br label %if.end.1359

if.end.1359:                                      ; preds = %if.then.1358, %for.body.1351
  %852 = load i8, i8* %padding, align 1
  %853 = load %struct.obstack*, %struct.obstack** %__o1352, align 8
  %next_free1360 = getelementptr inbounds %struct.obstack, %struct.obstack* %853, i32 0, i32 3
  %854 = load i8*, i8** %next_free1360, align 8
  %incdec.ptr1361 = getelementptr inbounds i8, i8* %854, i32 1
  store i8* %incdec.ptr1361, i8** %next_free1360, align 8
  store i8 %852, i8* %854, align 1
  br label %for.inc.1362

for.inc.1362:                                     ; preds = %if.end.1359
  %855 = load i64, i64* %nspace1336, align 8
  %dec1363 = add i64 %855, -1
  store i64 %dec1363, i64* %nspace1336, align 8
  br label %for.cond.1349

for.end.1364:                                     ; preds = %for.cond.1349
  br label %if.end.1365

if.end.1365:                                      ; preds = %for.end.1364, %land.lhs.true.1345, %cond.end.1342
  %856 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %856, %struct.obstack** %__o1366, align 8
  %857 = load i64, i64* %len1333, align 8
  %conv1368 = trunc i64 %857 to i32
  store i32 %conv1368, i32* %__len1367, align 4
  %858 = load %struct.obstack*, %struct.obstack** %__o1366, align 8
  %next_free1369 = getelementptr inbounds %struct.obstack, %struct.obstack* %858, i32 0, i32 3
  %859 = load i8*, i8** %next_free1369, align 8
  %860 = load i32, i32* %__len1367, align 4
  %idx.ext1370 = sext i32 %860 to i64
  %add.ptr1371 = getelementptr inbounds i8, i8* %859, i64 %idx.ext1370
  %861 = load %struct.obstack*, %struct.obstack** %__o1366, align 8
  %chunk_limit1372 = getelementptr inbounds %struct.obstack, %struct.obstack* %861, i32 0, i32 4
  %862 = load i8*, i8** %chunk_limit1372, align 8
  %cmp1373 = icmp ugt i8* %add.ptr1371, %862
  br i1 %cmp1373, label %if.then.1375, label %if.end.1376

if.then.1375:                                     ; preds = %if.end.1365
  %863 = load %struct.obstack*, %struct.obstack** %__o1366, align 8
  %864 = load i32, i32* %__len1367, align 4
  call void @_obstack_newchunk(%struct.obstack* %863, i32 %864)
  br label %if.end.1376

if.end.1376:                                      ; preds = %if.then.1375, %if.end.1365
  %865 = load %struct.obstack*, %struct.obstack** %__o1366, align 8
  %next_free1377 = getelementptr inbounds %struct.obstack, %struct.obstack* %865, i32 0, i32 3
  %866 = load i8*, i8** %next_free1377, align 8
  %867 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1378 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %867, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %868 = load i32, i32* %__len1367, align 4
  %conv1379 = sext i32 %868 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %866, i8* %call1378, i64 %conv1379, i32 1, i1 false)
  %869 = load i32, i32* %__len1367, align 4
  %870 = load %struct.obstack*, %struct.obstack** %__o1366, align 8
  %next_free1380 = getelementptr inbounds %struct.obstack, %struct.obstack* %870, i32 0, i32 3
  %871 = load i8*, i8** %next_free1380, align 8
  %idx.ext1381 = sext i32 %869 to i64
  %add.ptr1382 = getelementptr inbounds i8, i8* %871, i64 %idx.ext1381
  store i8* %add.ptr1382, i8** %next_free1380, align 8
  %872 = load i64, i64* %width, align 8
  %tobool1383 = icmp ne i64 %872, 0
  br i1 %tobool1383, label %land.lhs.true.1384, label %if.end.1404

land.lhs.true.1384:                               ; preds = %if.end.1376
  %873 = load i32, i32* %justification, align 4
  %cmp1385 = icmp slt i32 %873, 0
  br i1 %cmp1385, label %if.then.1387, label %if.end.1404

if.then.1387:                                     ; preds = %land.lhs.true.1384
  br label %for.cond.1388

for.cond.1388:                                    ; preds = %for.inc.1401, %if.then.1387
  %874 = load i64, i64* %nspace1336, align 8
  %tobool1389 = icmp ne i64 %874, 0
  br i1 %tobool1389, label %for.body.1390, label %for.end.1403

for.body.1390:                                    ; preds = %for.cond.1388
  %875 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %875, %struct.obstack** %__o1391, align 8
  %876 = load %struct.obstack*, %struct.obstack** %__o1391, align 8
  %next_free1392 = getelementptr inbounds %struct.obstack, %struct.obstack* %876, i32 0, i32 3
  %877 = load i8*, i8** %next_free1392, align 8
  %add.ptr1393 = getelementptr inbounds i8, i8* %877, i64 1
  %878 = load %struct.obstack*, %struct.obstack** %__o1391, align 8
  %chunk_limit1394 = getelementptr inbounds %struct.obstack, %struct.obstack* %878, i32 0, i32 4
  %879 = load i8*, i8** %chunk_limit1394, align 8
  %cmp1395 = icmp ugt i8* %add.ptr1393, %879
  br i1 %cmp1395, label %if.then.1397, label %if.end.1398

if.then.1397:                                     ; preds = %for.body.1390
  %880 = load %struct.obstack*, %struct.obstack** %__o1391, align 8
  call void @_obstack_newchunk(%struct.obstack* %880, i32 1)
  br label %if.end.1398

if.end.1398:                                      ; preds = %if.then.1397, %for.body.1390
  %881 = load i8, i8* %padding, align 1
  %882 = load %struct.obstack*, %struct.obstack** %__o1391, align 8
  %next_free1399 = getelementptr inbounds %struct.obstack, %struct.obstack* %882, i32 0, i32 3
  %883 = load i8*, i8** %next_free1399, align 8
  %incdec.ptr1400 = getelementptr inbounds i8, i8* %883, i32 1
  store i8* %incdec.ptr1400, i8** %next_free1399, align 8
  store i8 %881, i8* %883, align 1
  br label %for.inc.1401

for.inc.1401:                                     ; preds = %if.end.1398
  %884 = load i64, i64* %nspace1336, align 8
  %dec1402 = add i64 %884, -1
  store i64 %dec1402, i64* %nspace1336, align 8
  br label %for.cond.1388

for.end.1403:                                     ; preds = %for.cond.1388
  br label %if.end.1404

if.end.1404:                                      ; preds = %for.end.1403, %land.lhs.true.1384, %if.end.1376
  br label %do.end.1405

do.end.1405:                                      ; preds = %if.end.1404
  br label %sw.epilog.2279

sw.bb.1406:                                       ; preds = %sw.bb.215
  %885 = load i64, i64* %i, align 8
  %inc1407 = add i64 %885, 1
  store i64 %inc1407, i64* %i, align 8
  %886 = load i8*, i8** %str.addr, align 8
  %arrayidx1408 = getelementptr inbounds i8, i8* %886, i64 %inc1407
  %887 = load i8, i8* %arrayidx1408, align 1
  %conv1409 = zext i8 %887 to i32
  switch i32 %conv1409, label %sw.default.1542 [
    i32 46, label %sw.bb.1410
    i32 35, label %sw.bb.1487
  ]

sw.bb.1410:                                       ; preds = %sw.bb.1406
  %arraydecay1411 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %888 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %888, i32 0, i32 9
  %889 = load i32, i32* %pages, align 4
  %call1412 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1411, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %889) #5
  br label %do.body.1413

do.body.1413:                                     ; preds = %sw.bb.1410
  %arraydecay1415 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1416 = call i64 @strlen(i8* %arraydecay1415) #6
  store i64 %call1416, i64* %len1414, align 8
  %890 = load i64, i64* %len1414, align 8
  %891 = load i64, i64* %width, align 8
  %cmp1418 = icmp ugt i64 %890, %891
  br i1 %cmp1418, label %cond.true.1420, label %cond.false.1421

cond.true.1420:                                   ; preds = %do.body.1413
  br label %cond.end.1423

cond.false.1421:                                  ; preds = %do.body.1413
  %892 = load i64, i64* %width, align 8
  %893 = load i64, i64* %len1414, align 8
  %sub1422 = sub i64 %892, %893
  br label %cond.end.1423

cond.end.1423:                                    ; preds = %cond.false.1421, %cond.true.1420
  %cond1424 = phi i64 [ 0, %cond.true.1420 ], [ %sub1422, %cond.false.1421 ]
  store i64 %cond1424, i64* %nspace1417, align 8
  %894 = load i64, i64* %width, align 8
  %tobool1425 = icmp ne i64 %894, 0
  br i1 %tobool1425, label %land.lhs.true.1426, label %if.end.1446

land.lhs.true.1426:                               ; preds = %cond.end.1423
  %895 = load i32, i32* %justification, align 4
  %cmp1427 = icmp sgt i32 %895, 0
  br i1 %cmp1427, label %if.then.1429, label %if.end.1446

if.then.1429:                                     ; preds = %land.lhs.true.1426
  br label %for.cond.1430

for.cond.1430:                                    ; preds = %for.inc.1443, %if.then.1429
  %896 = load i64, i64* %nspace1417, align 8
  %tobool1431 = icmp ne i64 %896, 0
  br i1 %tobool1431, label %for.body.1432, label %for.end.1445

for.body.1432:                                    ; preds = %for.cond.1430
  %897 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %897, %struct.obstack** %__o1433, align 8
  %898 = load %struct.obstack*, %struct.obstack** %__o1433, align 8
  %next_free1434 = getelementptr inbounds %struct.obstack, %struct.obstack* %898, i32 0, i32 3
  %899 = load i8*, i8** %next_free1434, align 8
  %add.ptr1435 = getelementptr inbounds i8, i8* %899, i64 1
  %900 = load %struct.obstack*, %struct.obstack** %__o1433, align 8
  %chunk_limit1436 = getelementptr inbounds %struct.obstack, %struct.obstack* %900, i32 0, i32 4
  %901 = load i8*, i8** %chunk_limit1436, align 8
  %cmp1437 = icmp ugt i8* %add.ptr1435, %901
  br i1 %cmp1437, label %if.then.1439, label %if.end.1440

if.then.1439:                                     ; preds = %for.body.1432
  %902 = load %struct.obstack*, %struct.obstack** %__o1433, align 8
  call void @_obstack_newchunk(%struct.obstack* %902, i32 1)
  br label %if.end.1440

if.end.1440:                                      ; preds = %if.then.1439, %for.body.1432
  %903 = load i8, i8* %padding, align 1
  %904 = load %struct.obstack*, %struct.obstack** %__o1433, align 8
  %next_free1441 = getelementptr inbounds %struct.obstack, %struct.obstack* %904, i32 0, i32 3
  %905 = load i8*, i8** %next_free1441, align 8
  %incdec.ptr1442 = getelementptr inbounds i8, i8* %905, i32 1
  store i8* %incdec.ptr1442, i8** %next_free1441, align 8
  store i8 %903, i8* %905, align 1
  br label %for.inc.1443

for.inc.1443:                                     ; preds = %if.end.1440
  %906 = load i64, i64* %nspace1417, align 8
  %dec1444 = add i64 %906, -1
  store i64 %dec1444, i64* %nspace1417, align 8
  br label %for.cond.1430

for.end.1445:                                     ; preds = %for.cond.1430
  br label %if.end.1446

if.end.1446:                                      ; preds = %for.end.1445, %land.lhs.true.1426, %cond.end.1423
  %907 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %907, %struct.obstack** %__o1447, align 8
  %908 = load i64, i64* %len1414, align 8
  %conv1449 = trunc i64 %908 to i32
  store i32 %conv1449, i32* %__len1448, align 4
  %909 = load %struct.obstack*, %struct.obstack** %__o1447, align 8
  %next_free1450 = getelementptr inbounds %struct.obstack, %struct.obstack* %909, i32 0, i32 3
  %910 = load i8*, i8** %next_free1450, align 8
  %911 = load i32, i32* %__len1448, align 4
  %idx.ext1451 = sext i32 %911 to i64
  %add.ptr1452 = getelementptr inbounds i8, i8* %910, i64 %idx.ext1451
  %912 = load %struct.obstack*, %struct.obstack** %__o1447, align 8
  %chunk_limit1453 = getelementptr inbounds %struct.obstack, %struct.obstack* %912, i32 0, i32 4
  %913 = load i8*, i8** %chunk_limit1453, align 8
  %cmp1454 = icmp ugt i8* %add.ptr1452, %913
  br i1 %cmp1454, label %if.then.1456, label %if.end.1457

if.then.1456:                                     ; preds = %if.end.1446
  %914 = load %struct.obstack*, %struct.obstack** %__o1447, align 8
  %915 = load i32, i32* %__len1448, align 4
  call void @_obstack_newchunk(%struct.obstack* %914, i32 %915)
  br label %if.end.1457

if.end.1457:                                      ; preds = %if.then.1456, %if.end.1446
  %916 = load %struct.obstack*, %struct.obstack** %__o1447, align 8
  %next_free1458 = getelementptr inbounds %struct.obstack, %struct.obstack* %916, i32 0, i32 3
  %917 = load i8*, i8** %next_free1458, align 8
  %arraydecay1459 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %918 = load i32, i32* %__len1448, align 4
  %conv1460 = sext i32 %918 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %917, i8* %arraydecay1459, i64 %conv1460, i32 1, i1 false)
  %919 = load i32, i32* %__len1448, align 4
  %920 = load %struct.obstack*, %struct.obstack** %__o1447, align 8
  %next_free1461 = getelementptr inbounds %struct.obstack, %struct.obstack* %920, i32 0, i32 3
  %921 = load i8*, i8** %next_free1461, align 8
  %idx.ext1462 = sext i32 %919 to i64
  %add.ptr1463 = getelementptr inbounds i8, i8* %921, i64 %idx.ext1462
  store i8* %add.ptr1463, i8** %next_free1461, align 8
  %922 = load i64, i64* %width, align 8
  %tobool1464 = icmp ne i64 %922, 0
  br i1 %tobool1464, label %land.lhs.true.1465, label %if.end.1485

land.lhs.true.1465:                               ; preds = %if.end.1457
  %923 = load i32, i32* %justification, align 4
  %cmp1466 = icmp slt i32 %923, 0
  br i1 %cmp1466, label %if.then.1468, label %if.end.1485

if.then.1468:                                     ; preds = %land.lhs.true.1465
  br label %for.cond.1469

for.cond.1469:                                    ; preds = %for.inc.1482, %if.then.1468
  %924 = load i64, i64* %nspace1417, align 8
  %tobool1470 = icmp ne i64 %924, 0
  br i1 %tobool1470, label %for.body.1471, label %for.end.1484

for.body.1471:                                    ; preds = %for.cond.1469
  %925 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %925, %struct.obstack** %__o1472, align 8
  %926 = load %struct.obstack*, %struct.obstack** %__o1472, align 8
  %next_free1473 = getelementptr inbounds %struct.obstack, %struct.obstack* %926, i32 0, i32 3
  %927 = load i8*, i8** %next_free1473, align 8
  %add.ptr1474 = getelementptr inbounds i8, i8* %927, i64 1
  %928 = load %struct.obstack*, %struct.obstack** %__o1472, align 8
  %chunk_limit1475 = getelementptr inbounds %struct.obstack, %struct.obstack* %928, i32 0, i32 4
  %929 = load i8*, i8** %chunk_limit1475, align 8
  %cmp1476 = icmp ugt i8* %add.ptr1474, %929
  br i1 %cmp1476, label %if.then.1478, label %if.end.1479

if.then.1478:                                     ; preds = %for.body.1471
  %930 = load %struct.obstack*, %struct.obstack** %__o1472, align 8
  call void @_obstack_newchunk(%struct.obstack* %930, i32 1)
  br label %if.end.1479

if.end.1479:                                      ; preds = %if.then.1478, %for.body.1471
  %931 = load i8, i8* %padding, align 1
  %932 = load %struct.obstack*, %struct.obstack** %__o1472, align 8
  %next_free1480 = getelementptr inbounds %struct.obstack, %struct.obstack* %932, i32 0, i32 3
  %933 = load i8*, i8** %next_free1480, align 8
  %incdec.ptr1481 = getelementptr inbounds i8, i8* %933, i32 1
  store i8* %incdec.ptr1481, i8** %next_free1480, align 8
  store i8 %931, i8* %933, align 1
  br label %for.inc.1482

for.inc.1482:                                     ; preds = %if.end.1479
  %934 = load i64, i64* %nspace1417, align 8
  %dec1483 = add i64 %934, -1
  store i64 %dec1483, i64* %nspace1417, align 8
  br label %for.cond.1469

for.end.1484:                                     ; preds = %for.cond.1469
  br label %if.end.1485

if.end.1485:                                      ; preds = %for.end.1484, %land.lhs.true.1465, %if.end.1457
  br label %do.end.1486

do.end.1486:                                      ; preds = %if.end.1485
  br label %sw.epilog.1548

sw.bb.1487:                                       ; preds = %sw.bb.1406
  br label %do.body.1488

do.body.1488:                                     ; preds = %sw.bb.1487
  %935 = load i64, i64* %width, align 8
  %tobool1490 = icmp ne i64 %935, 0
  br i1 %tobool1490, label %land.lhs.true.1491, label %if.end.1505

land.lhs.true.1491:                               ; preds = %do.body.1488
  %936 = load i32, i32* %justification, align 4
  %cmp1492 = icmp slt i32 %936, 0
  br i1 %cmp1492, label %if.then.1494, label %if.end.1505

if.then.1494:                                     ; preds = %land.lhs.true.1491
  %937 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %937, %struct.obstack** %__o1495, align 8
  %938 = load %struct.obstack*, %struct.obstack** %__o1495, align 8
  %next_free1496 = getelementptr inbounds %struct.obstack, %struct.obstack* %938, i32 0, i32 3
  %939 = load i8*, i8** %next_free1496, align 8
  %add.ptr1497 = getelementptr inbounds i8, i8* %939, i64 1
  %940 = load %struct.obstack*, %struct.obstack** %__o1495, align 8
  %chunk_limit1498 = getelementptr inbounds %struct.obstack, %struct.obstack* %940, i32 0, i32 4
  %941 = load i8*, i8** %chunk_limit1498, align 8
  %cmp1499 = icmp ugt i8* %add.ptr1497, %941
  br i1 %cmp1499, label %if.then.1501, label %if.end.1502

if.then.1501:                                     ; preds = %if.then.1494
  %942 = load %struct.obstack*, %struct.obstack** %__o1495, align 8
  call void @_obstack_newchunk(%struct.obstack* %942, i32 1)
  br label %if.end.1502

if.end.1502:                                      ; preds = %if.then.1501, %if.then.1494
  %943 = load %struct.obstack*, %struct.obstack** %__o1495, align 8
  %next_free1503 = getelementptr inbounds %struct.obstack, %struct.obstack* %943, i32 0, i32 3
  %944 = load i8*, i8** %next_free1503, align 8
  %incdec.ptr1504 = getelementptr inbounds i8, i8* %944, i32 1
  store i8* %incdec.ptr1504, i8** %next_free1503, align 8
  store i8 1, i8* %944, align 1
  br label %if.end.1505

if.end.1505:                                      ; preds = %if.end.1502, %land.lhs.true.1491, %do.body.1488
  store i32 0, i32* %a1489, align 4
  br label %for.cond.1506

for.cond.1506:                                    ; preds = %for.inc.1522, %if.end.1505
  %945 = load i32, i32* %a1489, align 4
  %946 = load i64, i64* %width, align 8
  %conv1507 = trunc i64 %946 to i32
  %sub1508 = sub nsw i32 %conv1507, 1
  %cmp1509 = icmp slt i32 %945, %sub1508
  br i1 %cmp1509, label %for.body.1511, label %for.end.1524

for.body.1511:                                    ; preds = %for.cond.1506
  %947 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %947, %struct.obstack** %__o1512, align 8
  %948 = load %struct.obstack*, %struct.obstack** %__o1512, align 8
  %next_free1513 = getelementptr inbounds %struct.obstack, %struct.obstack* %948, i32 0, i32 3
  %949 = load i8*, i8** %next_free1513, align 8
  %add.ptr1514 = getelementptr inbounds i8, i8* %949, i64 1
  %950 = load %struct.obstack*, %struct.obstack** %__o1512, align 8
  %chunk_limit1515 = getelementptr inbounds %struct.obstack, %struct.obstack* %950, i32 0, i32 4
  %951 = load i8*, i8** %chunk_limit1515, align 8
  %cmp1516 = icmp ugt i8* %add.ptr1514, %951
  br i1 %cmp1516, label %if.then.1518, label %if.end.1519

if.then.1518:                                     ; preds = %for.body.1511
  %952 = load %struct.obstack*, %struct.obstack** %__o1512, align 8
  call void @_obstack_newchunk(%struct.obstack* %952, i32 1)
  br label %if.end.1519

if.end.1519:                                      ; preds = %if.then.1518, %for.body.1511
  %953 = load i8, i8* %padding, align 1
  %954 = load %struct.obstack*, %struct.obstack** %__o1512, align 8
  %next_free1520 = getelementptr inbounds %struct.obstack, %struct.obstack* %954, i32 0, i32 3
  %955 = load i8*, i8** %next_free1520, align 8
  %incdec.ptr1521 = getelementptr inbounds i8, i8* %955, i32 1
  store i8* %incdec.ptr1521, i8** %next_free1520, align 8
  store i8 %953, i8* %955, align 1
  br label %for.inc.1522

for.inc.1522:                                     ; preds = %if.end.1519
  %956 = load i32, i32* %a1489, align 4
  %inc1523 = add nsw i32 %956, 1
  store i32 %inc1523, i32* %a1489, align 4
  br label %for.cond.1506

for.end.1524:                                     ; preds = %for.cond.1506
  %957 = load i64, i64* %width, align 8
  %tobool1525 = icmp ne i64 %957, 0
  br i1 %tobool1525, label %lor.lhs.false.1526, label %if.then.1529

lor.lhs.false.1526:                               ; preds = %for.end.1524
  %958 = load i32, i32* %justification, align 4
  %cmp1527 = icmp sgt i32 %958, 0
  br i1 %cmp1527, label %if.then.1529, label %if.end.1540

if.then.1529:                                     ; preds = %lor.lhs.false.1526, %for.end.1524
  %959 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %959, %struct.obstack** %__o1530, align 8
  %960 = load %struct.obstack*, %struct.obstack** %__o1530, align 8
  %next_free1531 = getelementptr inbounds %struct.obstack, %struct.obstack* %960, i32 0, i32 3
  %961 = load i8*, i8** %next_free1531, align 8
  %add.ptr1532 = getelementptr inbounds i8, i8* %961, i64 1
  %962 = load %struct.obstack*, %struct.obstack** %__o1530, align 8
  %chunk_limit1533 = getelementptr inbounds %struct.obstack, %struct.obstack* %962, i32 0, i32 4
  %963 = load i8*, i8** %chunk_limit1533, align 8
  %cmp1534 = icmp ugt i8* %add.ptr1532, %963
  br i1 %cmp1534, label %if.then.1536, label %if.end.1537

if.then.1536:                                     ; preds = %if.then.1529
  %964 = load %struct.obstack*, %struct.obstack** %__o1530, align 8
  call void @_obstack_newchunk(%struct.obstack* %964, i32 1)
  br label %if.end.1537

if.end.1537:                                      ; preds = %if.then.1536, %if.then.1529
  %965 = load %struct.obstack*, %struct.obstack** %__o1530, align 8
  %next_free1538 = getelementptr inbounds %struct.obstack, %struct.obstack* %965, i32 0, i32 3
  %966 = load i8*, i8** %next_free1538, align 8
  %incdec.ptr1539 = getelementptr inbounds i8, i8* %966, i32 1
  store i8* %incdec.ptr1539, i8** %next_free1538, align 8
  store i8 1, i8* %966, align 1
  br label %if.end.1540

if.end.1540:                                      ; preds = %if.end.1537, %lor.lhs.false.1526
  br label %do.end.1541

do.end.1541:                                      ; preds = %if.end.1540
  br label %sw.epilog.1548

sw.default.1542:                                  ; preds = %sw.bb.1406
  %call1543 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %967 = load i8*, i8** %context_name.addr, align 8
  %968 = load i64, i64* %i, align 8
  %969 = load i8*, i8** %str.addr, align 8
  %arrayidx1544 = getelementptr inbounds i8, i8* %969, i64 %968
  %970 = load i8, i8* %arrayidx1544, align 1
  %conv1545 = zext i8 %970 to i32
  %971 = load i64, i64* %i, align 8
  %972 = load i8*, i8** %str.addr, align 8
  %arrayidx1546 = getelementptr inbounds i8, i8* %972, i64 %971
  %973 = load i8, i8* %arrayidx1546, align 1
  %conv1547 = zext i8 %973 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call1543, i8* %967, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 %conv1545, i32 %conv1547)
  br label %sw.epilog.1548

sw.epilog.1548:                                   ; preds = %sw.default.1542, %do.end.1541, %do.end.1486
  br label %sw.epilog.2279

sw.bb.1549:                                       ; preds = %sw.bb.215
  %arraydecay1550 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1551 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #5
  %974 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages1552 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %974, i32 0, i32 9
  %975 = load i32, i32* %pages1552, align 4
  %call1553 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1550, i8* %call1551, i32 %975) #5
  br label %do.body.1554

do.body.1554:                                     ; preds = %sw.bb.1549
  %arraydecay1556 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1557 = call i64 @strlen(i8* %arraydecay1556) #6
  store i64 %call1557, i64* %len1555, align 8
  %976 = load i64, i64* %len1555, align 8
  %977 = load i64, i64* %width, align 8
  %cmp1559 = icmp ugt i64 %976, %977
  br i1 %cmp1559, label %cond.true.1561, label %cond.false.1562

cond.true.1561:                                   ; preds = %do.body.1554
  br label %cond.end.1564

cond.false.1562:                                  ; preds = %do.body.1554
  %978 = load i64, i64* %width, align 8
  %979 = load i64, i64* %len1555, align 8
  %sub1563 = sub i64 %978, %979
  br label %cond.end.1564

cond.end.1564:                                    ; preds = %cond.false.1562, %cond.true.1561
  %cond1565 = phi i64 [ 0, %cond.true.1561 ], [ %sub1563, %cond.false.1562 ]
  store i64 %cond1565, i64* %nspace1558, align 8
  %980 = load i64, i64* %width, align 8
  %tobool1566 = icmp ne i64 %980, 0
  br i1 %tobool1566, label %land.lhs.true.1567, label %if.end.1587

land.lhs.true.1567:                               ; preds = %cond.end.1564
  %981 = load i32, i32* %justification, align 4
  %cmp1568 = icmp sgt i32 %981, 0
  br i1 %cmp1568, label %if.then.1570, label %if.end.1587

if.then.1570:                                     ; preds = %land.lhs.true.1567
  br label %for.cond.1571

for.cond.1571:                                    ; preds = %for.inc.1584, %if.then.1570
  %982 = load i64, i64* %nspace1558, align 8
  %tobool1572 = icmp ne i64 %982, 0
  br i1 %tobool1572, label %for.body.1573, label %for.end.1586

for.body.1573:                                    ; preds = %for.cond.1571
  %983 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %983, %struct.obstack** %__o1574, align 8
  %984 = load %struct.obstack*, %struct.obstack** %__o1574, align 8
  %next_free1575 = getelementptr inbounds %struct.obstack, %struct.obstack* %984, i32 0, i32 3
  %985 = load i8*, i8** %next_free1575, align 8
  %add.ptr1576 = getelementptr inbounds i8, i8* %985, i64 1
  %986 = load %struct.obstack*, %struct.obstack** %__o1574, align 8
  %chunk_limit1577 = getelementptr inbounds %struct.obstack, %struct.obstack* %986, i32 0, i32 4
  %987 = load i8*, i8** %chunk_limit1577, align 8
  %cmp1578 = icmp ugt i8* %add.ptr1576, %987
  br i1 %cmp1578, label %if.then.1580, label %if.end.1581

if.then.1580:                                     ; preds = %for.body.1573
  %988 = load %struct.obstack*, %struct.obstack** %__o1574, align 8
  call void @_obstack_newchunk(%struct.obstack* %988, i32 1)
  br label %if.end.1581

if.end.1581:                                      ; preds = %if.then.1580, %for.body.1573
  %989 = load i8, i8* %padding, align 1
  %990 = load %struct.obstack*, %struct.obstack** %__o1574, align 8
  %next_free1582 = getelementptr inbounds %struct.obstack, %struct.obstack* %990, i32 0, i32 3
  %991 = load i8*, i8** %next_free1582, align 8
  %incdec.ptr1583 = getelementptr inbounds i8, i8* %991, i32 1
  store i8* %incdec.ptr1583, i8** %next_free1582, align 8
  store i8 %989, i8* %991, align 1
  br label %for.inc.1584

for.inc.1584:                                     ; preds = %if.end.1581
  %992 = load i64, i64* %nspace1558, align 8
  %dec1585 = add i64 %992, -1
  store i64 %dec1585, i64* %nspace1558, align 8
  br label %for.cond.1571

for.end.1586:                                     ; preds = %for.cond.1571
  br label %if.end.1587

if.end.1587:                                      ; preds = %for.end.1586, %land.lhs.true.1567, %cond.end.1564
  %993 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %993, %struct.obstack** %__o1588, align 8
  %994 = load i64, i64* %len1555, align 8
  %conv1590 = trunc i64 %994 to i32
  store i32 %conv1590, i32* %__len1589, align 4
  %995 = load %struct.obstack*, %struct.obstack** %__o1588, align 8
  %next_free1591 = getelementptr inbounds %struct.obstack, %struct.obstack* %995, i32 0, i32 3
  %996 = load i8*, i8** %next_free1591, align 8
  %997 = load i32, i32* %__len1589, align 4
  %idx.ext1592 = sext i32 %997 to i64
  %add.ptr1593 = getelementptr inbounds i8, i8* %996, i64 %idx.ext1592
  %998 = load %struct.obstack*, %struct.obstack** %__o1588, align 8
  %chunk_limit1594 = getelementptr inbounds %struct.obstack, %struct.obstack* %998, i32 0, i32 4
  %999 = load i8*, i8** %chunk_limit1594, align 8
  %cmp1595 = icmp ugt i8* %add.ptr1593, %999
  br i1 %cmp1595, label %if.then.1597, label %if.end.1598

if.then.1597:                                     ; preds = %if.end.1587
  %1000 = load %struct.obstack*, %struct.obstack** %__o1588, align 8
  %1001 = load i32, i32* %__len1589, align 4
  call void @_obstack_newchunk(%struct.obstack* %1000, i32 %1001)
  br label %if.end.1598

if.end.1598:                                      ; preds = %if.then.1597, %if.end.1587
  %1002 = load %struct.obstack*, %struct.obstack** %__o1588, align 8
  %next_free1599 = getelementptr inbounds %struct.obstack, %struct.obstack* %1002, i32 0, i32 3
  %1003 = load i8*, i8** %next_free1599, align 8
  %arraydecay1600 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1004 = load i32, i32* %__len1589, align 4
  %conv1601 = sext i32 %1004 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1003, i8* %arraydecay1600, i64 %conv1601, i32 1, i1 false)
  %1005 = load i32, i32* %__len1589, align 4
  %1006 = load %struct.obstack*, %struct.obstack** %__o1588, align 8
  %next_free1602 = getelementptr inbounds %struct.obstack, %struct.obstack* %1006, i32 0, i32 3
  %1007 = load i8*, i8** %next_free1602, align 8
  %idx.ext1603 = sext i32 %1005 to i64
  %add.ptr1604 = getelementptr inbounds i8, i8* %1007, i64 %idx.ext1603
  store i8* %add.ptr1604, i8** %next_free1602, align 8
  %1008 = load i64, i64* %width, align 8
  %tobool1605 = icmp ne i64 %1008, 0
  br i1 %tobool1605, label %land.lhs.true.1606, label %if.end.1626

land.lhs.true.1606:                               ; preds = %if.end.1598
  %1009 = load i32, i32* %justification, align 4
  %cmp1607 = icmp slt i32 %1009, 0
  br i1 %cmp1607, label %if.then.1609, label %if.end.1626

if.then.1609:                                     ; preds = %land.lhs.true.1606
  br label %for.cond.1610

for.cond.1610:                                    ; preds = %for.inc.1623, %if.then.1609
  %1010 = load i64, i64* %nspace1558, align 8
  %tobool1611 = icmp ne i64 %1010, 0
  br i1 %tobool1611, label %for.body.1612, label %for.end.1625

for.body.1612:                                    ; preds = %for.cond.1610
  %1011 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1011, %struct.obstack** %__o1613, align 8
  %1012 = load %struct.obstack*, %struct.obstack** %__o1613, align 8
  %next_free1614 = getelementptr inbounds %struct.obstack, %struct.obstack* %1012, i32 0, i32 3
  %1013 = load i8*, i8** %next_free1614, align 8
  %add.ptr1615 = getelementptr inbounds i8, i8* %1013, i64 1
  %1014 = load %struct.obstack*, %struct.obstack** %__o1613, align 8
  %chunk_limit1616 = getelementptr inbounds %struct.obstack, %struct.obstack* %1014, i32 0, i32 4
  %1015 = load i8*, i8** %chunk_limit1616, align 8
  %cmp1617 = icmp ugt i8* %add.ptr1615, %1015
  br i1 %cmp1617, label %if.then.1619, label %if.end.1620

if.then.1619:                                     ; preds = %for.body.1612
  %1016 = load %struct.obstack*, %struct.obstack** %__o1613, align 8
  call void @_obstack_newchunk(%struct.obstack* %1016, i32 1)
  br label %if.end.1620

if.end.1620:                                      ; preds = %if.then.1619, %for.body.1612
  %1017 = load i8, i8* %padding, align 1
  %1018 = load %struct.obstack*, %struct.obstack** %__o1613, align 8
  %next_free1621 = getelementptr inbounds %struct.obstack, %struct.obstack* %1018, i32 0, i32 3
  %1019 = load i8*, i8** %next_free1621, align 8
  %incdec.ptr1622 = getelementptr inbounds i8, i8* %1019, i32 1
  store i8* %incdec.ptr1622, i8** %next_free1621, align 8
  store i8 %1017, i8* %1019, align 1
  br label %for.inc.1623

for.inc.1623:                                     ; preds = %if.end.1620
  %1020 = load i64, i64* %nspace1558, align 8
  %dec1624 = add i64 %1020, -1
  store i64 %dec1624, i64* %nspace1558, align 8
  br label %for.cond.1610

for.end.1625:                                     ; preds = %for.cond.1610
  br label %if.end.1626

if.end.1626:                                      ; preds = %for.end.1625, %land.lhs.true.1606, %if.end.1598
  br label %do.end.1627

do.end.1627:                                      ; preds = %if.end.1626
  br label %sw.epilog.2279

sw.bb.1628:                                       ; preds = %sw.bb.215
  %arraydecay1629 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1630 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #5
  %1021 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages1631 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1021, i32 0, i32 9
  %1022 = load i32, i32* %pages1631, align 4
  %call1632 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1629, i8* %call1630, i32 %1022, i32 1) #5
  br label %do.body.1633

do.body.1633:                                     ; preds = %sw.bb.1628
  %arraydecay1635 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1636 = call i64 @strlen(i8* %arraydecay1635) #6
  store i64 %call1636, i64* %len1634, align 8
  %1023 = load i64, i64* %len1634, align 8
  %1024 = load i64, i64* %width, align 8
  %cmp1638 = icmp ugt i64 %1023, %1024
  br i1 %cmp1638, label %cond.true.1640, label %cond.false.1641

cond.true.1640:                                   ; preds = %do.body.1633
  br label %cond.end.1643

cond.false.1641:                                  ; preds = %do.body.1633
  %1025 = load i64, i64* %width, align 8
  %1026 = load i64, i64* %len1634, align 8
  %sub1642 = sub i64 %1025, %1026
  br label %cond.end.1643

cond.end.1643:                                    ; preds = %cond.false.1641, %cond.true.1640
  %cond1644 = phi i64 [ 0, %cond.true.1640 ], [ %sub1642, %cond.false.1641 ]
  store i64 %cond1644, i64* %nspace1637, align 8
  %1027 = load i64, i64* %width, align 8
  %tobool1645 = icmp ne i64 %1027, 0
  br i1 %tobool1645, label %land.lhs.true.1646, label %if.end.1666

land.lhs.true.1646:                               ; preds = %cond.end.1643
  %1028 = load i32, i32* %justification, align 4
  %cmp1647 = icmp sgt i32 %1028, 0
  br i1 %cmp1647, label %if.then.1649, label %if.end.1666

if.then.1649:                                     ; preds = %land.lhs.true.1646
  br label %for.cond.1650

for.cond.1650:                                    ; preds = %for.inc.1663, %if.then.1649
  %1029 = load i64, i64* %nspace1637, align 8
  %tobool1651 = icmp ne i64 %1029, 0
  br i1 %tobool1651, label %for.body.1652, label %for.end.1665

for.body.1652:                                    ; preds = %for.cond.1650
  %1030 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1030, %struct.obstack** %__o1653, align 8
  %1031 = load %struct.obstack*, %struct.obstack** %__o1653, align 8
  %next_free1654 = getelementptr inbounds %struct.obstack, %struct.obstack* %1031, i32 0, i32 3
  %1032 = load i8*, i8** %next_free1654, align 8
  %add.ptr1655 = getelementptr inbounds i8, i8* %1032, i64 1
  %1033 = load %struct.obstack*, %struct.obstack** %__o1653, align 8
  %chunk_limit1656 = getelementptr inbounds %struct.obstack, %struct.obstack* %1033, i32 0, i32 4
  %1034 = load i8*, i8** %chunk_limit1656, align 8
  %cmp1657 = icmp ugt i8* %add.ptr1655, %1034
  br i1 %cmp1657, label %if.then.1659, label %if.end.1660

if.then.1659:                                     ; preds = %for.body.1652
  %1035 = load %struct.obstack*, %struct.obstack** %__o1653, align 8
  call void @_obstack_newchunk(%struct.obstack* %1035, i32 1)
  br label %if.end.1660

if.end.1660:                                      ; preds = %if.then.1659, %for.body.1652
  %1036 = load i8, i8* %padding, align 1
  %1037 = load %struct.obstack*, %struct.obstack** %__o1653, align 8
  %next_free1661 = getelementptr inbounds %struct.obstack, %struct.obstack* %1037, i32 0, i32 3
  %1038 = load i8*, i8** %next_free1661, align 8
  %incdec.ptr1662 = getelementptr inbounds i8, i8* %1038, i32 1
  store i8* %incdec.ptr1662, i8** %next_free1661, align 8
  store i8 %1036, i8* %1038, align 1
  br label %for.inc.1663

for.inc.1663:                                     ; preds = %if.end.1660
  %1039 = load i64, i64* %nspace1637, align 8
  %dec1664 = add i64 %1039, -1
  store i64 %dec1664, i64* %nspace1637, align 8
  br label %for.cond.1650

for.end.1665:                                     ; preds = %for.cond.1650
  br label %if.end.1666

if.end.1666:                                      ; preds = %for.end.1665, %land.lhs.true.1646, %cond.end.1643
  %1040 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1040, %struct.obstack** %__o1667, align 8
  %1041 = load i64, i64* %len1634, align 8
  %conv1669 = trunc i64 %1041 to i32
  store i32 %conv1669, i32* %__len1668, align 4
  %1042 = load %struct.obstack*, %struct.obstack** %__o1667, align 8
  %next_free1670 = getelementptr inbounds %struct.obstack, %struct.obstack* %1042, i32 0, i32 3
  %1043 = load i8*, i8** %next_free1670, align 8
  %1044 = load i32, i32* %__len1668, align 4
  %idx.ext1671 = sext i32 %1044 to i64
  %add.ptr1672 = getelementptr inbounds i8, i8* %1043, i64 %idx.ext1671
  %1045 = load %struct.obstack*, %struct.obstack** %__o1667, align 8
  %chunk_limit1673 = getelementptr inbounds %struct.obstack, %struct.obstack* %1045, i32 0, i32 4
  %1046 = load i8*, i8** %chunk_limit1673, align 8
  %cmp1674 = icmp ugt i8* %add.ptr1672, %1046
  br i1 %cmp1674, label %if.then.1676, label %if.end.1677

if.then.1676:                                     ; preds = %if.end.1666
  %1047 = load %struct.obstack*, %struct.obstack** %__o1667, align 8
  %1048 = load i32, i32* %__len1668, align 4
  call void @_obstack_newchunk(%struct.obstack* %1047, i32 %1048)
  br label %if.end.1677

if.end.1677:                                      ; preds = %if.then.1676, %if.end.1666
  %1049 = load %struct.obstack*, %struct.obstack** %__o1667, align 8
  %next_free1678 = getelementptr inbounds %struct.obstack, %struct.obstack* %1049, i32 0, i32 3
  %1050 = load i8*, i8** %next_free1678, align 8
  %arraydecay1679 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1051 = load i32, i32* %__len1668, align 4
  %conv1680 = sext i32 %1051 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1050, i8* %arraydecay1679, i64 %conv1680, i32 1, i1 false)
  %1052 = load i32, i32* %__len1668, align 4
  %1053 = load %struct.obstack*, %struct.obstack** %__o1667, align 8
  %next_free1681 = getelementptr inbounds %struct.obstack, %struct.obstack* %1053, i32 0, i32 3
  %1054 = load i8*, i8** %next_free1681, align 8
  %idx.ext1682 = sext i32 %1052 to i64
  %add.ptr1683 = getelementptr inbounds i8, i8* %1054, i64 %idx.ext1682
  store i8* %add.ptr1683, i8** %next_free1681, align 8
  %1055 = load i64, i64* %width, align 8
  %tobool1684 = icmp ne i64 %1055, 0
  br i1 %tobool1684, label %land.lhs.true.1685, label %if.end.1705

land.lhs.true.1685:                               ; preds = %if.end.1677
  %1056 = load i32, i32* %justification, align 4
  %cmp1686 = icmp slt i32 %1056, 0
  br i1 %cmp1686, label %if.then.1688, label %if.end.1705

if.then.1688:                                     ; preds = %land.lhs.true.1685
  br label %for.cond.1689

for.cond.1689:                                    ; preds = %for.inc.1702, %if.then.1688
  %1057 = load i64, i64* %nspace1637, align 8
  %tobool1690 = icmp ne i64 %1057, 0
  br i1 %tobool1690, label %for.body.1691, label %for.end.1704

for.body.1691:                                    ; preds = %for.cond.1689
  %1058 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1058, %struct.obstack** %__o1692, align 8
  %1059 = load %struct.obstack*, %struct.obstack** %__o1692, align 8
  %next_free1693 = getelementptr inbounds %struct.obstack, %struct.obstack* %1059, i32 0, i32 3
  %1060 = load i8*, i8** %next_free1693, align 8
  %add.ptr1694 = getelementptr inbounds i8, i8* %1060, i64 1
  %1061 = load %struct.obstack*, %struct.obstack** %__o1692, align 8
  %chunk_limit1695 = getelementptr inbounds %struct.obstack, %struct.obstack* %1061, i32 0, i32 4
  %1062 = load i8*, i8** %chunk_limit1695, align 8
  %cmp1696 = icmp ugt i8* %add.ptr1694, %1062
  br i1 %cmp1696, label %if.then.1698, label %if.end.1699

if.then.1698:                                     ; preds = %for.body.1691
  %1063 = load %struct.obstack*, %struct.obstack** %__o1692, align 8
  call void @_obstack_newchunk(%struct.obstack* %1063, i32 1)
  br label %if.end.1699

if.end.1699:                                      ; preds = %if.then.1698, %for.body.1691
  %1064 = load i8, i8* %padding, align 1
  %1065 = load %struct.obstack*, %struct.obstack** %__o1692, align 8
  %next_free1700 = getelementptr inbounds %struct.obstack, %struct.obstack* %1065, i32 0, i32 3
  %1066 = load i8*, i8** %next_free1700, align 8
  %incdec.ptr1701 = getelementptr inbounds i8, i8* %1066, i32 1
  store i8* %incdec.ptr1701, i8** %next_free1700, align 8
  store i8 %1064, i8* %1066, align 1
  br label %for.inc.1702

for.inc.1702:                                     ; preds = %if.end.1699
  %1067 = load i64, i64* %nspace1637, align 8
  %dec1703 = add i64 %1067, -1
  store i64 %dec1703, i64* %nspace1637, align 8
  br label %for.cond.1689

for.end.1704:                                     ; preds = %for.cond.1689
  br label %if.end.1705

if.end.1705:                                      ; preds = %for.end.1704, %land.lhs.true.1685, %if.end.1677
  br label %do.end.1706

do.end.1706:                                      ; preds = %if.end.1705
  br label %sw.epilog.2279

sw.bb.1707:                                       ; preds = %sw.bb.215
  %1068 = load i64, i64* %i, align 8
  %inc1708 = add i64 %1068, 1
  store i64 %inc1708, i64* %i, align 8
  %1069 = load i8*, i8** %str.addr, align 8
  %arrayidx1709 = getelementptr inbounds i8, i8* %1069, i64 %inc1708
  %1070 = load i8, i8* %arrayidx1709, align 1
  %conv1710 = zext i8 %1070 to i32
  switch i32 %conv1710, label %sw.default.1843 [
    i32 46, label %sw.bb.1711
    i32 35, label %sw.bb.1788
  ]

sw.bb.1711:                                       ; preds = %sw.bb.1707
  %arraydecay1712 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1071 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1071, i32 0, i32 8
  %1072 = load i32, i32* %sheets, align 4
  %call1713 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1712, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %1072) #5
  br label %do.body.1714

do.body.1714:                                     ; preds = %sw.bb.1711
  %arraydecay1716 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1717 = call i64 @strlen(i8* %arraydecay1716) #6
  store i64 %call1717, i64* %len1715, align 8
  %1073 = load i64, i64* %len1715, align 8
  %1074 = load i64, i64* %width, align 8
  %cmp1719 = icmp ugt i64 %1073, %1074
  br i1 %cmp1719, label %cond.true.1721, label %cond.false.1722

cond.true.1721:                                   ; preds = %do.body.1714
  br label %cond.end.1724

cond.false.1722:                                  ; preds = %do.body.1714
  %1075 = load i64, i64* %width, align 8
  %1076 = load i64, i64* %len1715, align 8
  %sub1723 = sub i64 %1075, %1076
  br label %cond.end.1724

cond.end.1724:                                    ; preds = %cond.false.1722, %cond.true.1721
  %cond1725 = phi i64 [ 0, %cond.true.1721 ], [ %sub1723, %cond.false.1722 ]
  store i64 %cond1725, i64* %nspace1718, align 8
  %1077 = load i64, i64* %width, align 8
  %tobool1726 = icmp ne i64 %1077, 0
  br i1 %tobool1726, label %land.lhs.true.1727, label %if.end.1747

land.lhs.true.1727:                               ; preds = %cond.end.1724
  %1078 = load i32, i32* %justification, align 4
  %cmp1728 = icmp sgt i32 %1078, 0
  br i1 %cmp1728, label %if.then.1730, label %if.end.1747

if.then.1730:                                     ; preds = %land.lhs.true.1727
  br label %for.cond.1731

for.cond.1731:                                    ; preds = %for.inc.1744, %if.then.1730
  %1079 = load i64, i64* %nspace1718, align 8
  %tobool1732 = icmp ne i64 %1079, 0
  br i1 %tobool1732, label %for.body.1733, label %for.end.1746

for.body.1733:                                    ; preds = %for.cond.1731
  %1080 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1080, %struct.obstack** %__o1734, align 8
  %1081 = load %struct.obstack*, %struct.obstack** %__o1734, align 8
  %next_free1735 = getelementptr inbounds %struct.obstack, %struct.obstack* %1081, i32 0, i32 3
  %1082 = load i8*, i8** %next_free1735, align 8
  %add.ptr1736 = getelementptr inbounds i8, i8* %1082, i64 1
  %1083 = load %struct.obstack*, %struct.obstack** %__o1734, align 8
  %chunk_limit1737 = getelementptr inbounds %struct.obstack, %struct.obstack* %1083, i32 0, i32 4
  %1084 = load i8*, i8** %chunk_limit1737, align 8
  %cmp1738 = icmp ugt i8* %add.ptr1736, %1084
  br i1 %cmp1738, label %if.then.1740, label %if.end.1741

if.then.1740:                                     ; preds = %for.body.1733
  %1085 = load %struct.obstack*, %struct.obstack** %__o1734, align 8
  call void @_obstack_newchunk(%struct.obstack* %1085, i32 1)
  br label %if.end.1741

if.end.1741:                                      ; preds = %if.then.1740, %for.body.1733
  %1086 = load i8, i8* %padding, align 1
  %1087 = load %struct.obstack*, %struct.obstack** %__o1734, align 8
  %next_free1742 = getelementptr inbounds %struct.obstack, %struct.obstack* %1087, i32 0, i32 3
  %1088 = load i8*, i8** %next_free1742, align 8
  %incdec.ptr1743 = getelementptr inbounds i8, i8* %1088, i32 1
  store i8* %incdec.ptr1743, i8** %next_free1742, align 8
  store i8 %1086, i8* %1088, align 1
  br label %for.inc.1744

for.inc.1744:                                     ; preds = %if.end.1741
  %1089 = load i64, i64* %nspace1718, align 8
  %dec1745 = add i64 %1089, -1
  store i64 %dec1745, i64* %nspace1718, align 8
  br label %for.cond.1731

for.end.1746:                                     ; preds = %for.cond.1731
  br label %if.end.1747

if.end.1747:                                      ; preds = %for.end.1746, %land.lhs.true.1727, %cond.end.1724
  %1090 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1090, %struct.obstack** %__o1748, align 8
  %1091 = load i64, i64* %len1715, align 8
  %conv1750 = trunc i64 %1091 to i32
  store i32 %conv1750, i32* %__len1749, align 4
  %1092 = load %struct.obstack*, %struct.obstack** %__o1748, align 8
  %next_free1751 = getelementptr inbounds %struct.obstack, %struct.obstack* %1092, i32 0, i32 3
  %1093 = load i8*, i8** %next_free1751, align 8
  %1094 = load i32, i32* %__len1749, align 4
  %idx.ext1752 = sext i32 %1094 to i64
  %add.ptr1753 = getelementptr inbounds i8, i8* %1093, i64 %idx.ext1752
  %1095 = load %struct.obstack*, %struct.obstack** %__o1748, align 8
  %chunk_limit1754 = getelementptr inbounds %struct.obstack, %struct.obstack* %1095, i32 0, i32 4
  %1096 = load i8*, i8** %chunk_limit1754, align 8
  %cmp1755 = icmp ugt i8* %add.ptr1753, %1096
  br i1 %cmp1755, label %if.then.1757, label %if.end.1758

if.then.1757:                                     ; preds = %if.end.1747
  %1097 = load %struct.obstack*, %struct.obstack** %__o1748, align 8
  %1098 = load i32, i32* %__len1749, align 4
  call void @_obstack_newchunk(%struct.obstack* %1097, i32 %1098)
  br label %if.end.1758

if.end.1758:                                      ; preds = %if.then.1757, %if.end.1747
  %1099 = load %struct.obstack*, %struct.obstack** %__o1748, align 8
  %next_free1759 = getelementptr inbounds %struct.obstack, %struct.obstack* %1099, i32 0, i32 3
  %1100 = load i8*, i8** %next_free1759, align 8
  %arraydecay1760 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1101 = load i32, i32* %__len1749, align 4
  %conv1761 = sext i32 %1101 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1100, i8* %arraydecay1760, i64 %conv1761, i32 1, i1 false)
  %1102 = load i32, i32* %__len1749, align 4
  %1103 = load %struct.obstack*, %struct.obstack** %__o1748, align 8
  %next_free1762 = getelementptr inbounds %struct.obstack, %struct.obstack* %1103, i32 0, i32 3
  %1104 = load i8*, i8** %next_free1762, align 8
  %idx.ext1763 = sext i32 %1102 to i64
  %add.ptr1764 = getelementptr inbounds i8, i8* %1104, i64 %idx.ext1763
  store i8* %add.ptr1764, i8** %next_free1762, align 8
  %1105 = load i64, i64* %width, align 8
  %tobool1765 = icmp ne i64 %1105, 0
  br i1 %tobool1765, label %land.lhs.true.1766, label %if.end.1786

land.lhs.true.1766:                               ; preds = %if.end.1758
  %1106 = load i32, i32* %justification, align 4
  %cmp1767 = icmp slt i32 %1106, 0
  br i1 %cmp1767, label %if.then.1769, label %if.end.1786

if.then.1769:                                     ; preds = %land.lhs.true.1766
  br label %for.cond.1770

for.cond.1770:                                    ; preds = %for.inc.1783, %if.then.1769
  %1107 = load i64, i64* %nspace1718, align 8
  %tobool1771 = icmp ne i64 %1107, 0
  br i1 %tobool1771, label %for.body.1772, label %for.end.1785

for.body.1772:                                    ; preds = %for.cond.1770
  %1108 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1108, %struct.obstack** %__o1773, align 8
  %1109 = load %struct.obstack*, %struct.obstack** %__o1773, align 8
  %next_free1774 = getelementptr inbounds %struct.obstack, %struct.obstack* %1109, i32 0, i32 3
  %1110 = load i8*, i8** %next_free1774, align 8
  %add.ptr1775 = getelementptr inbounds i8, i8* %1110, i64 1
  %1111 = load %struct.obstack*, %struct.obstack** %__o1773, align 8
  %chunk_limit1776 = getelementptr inbounds %struct.obstack, %struct.obstack* %1111, i32 0, i32 4
  %1112 = load i8*, i8** %chunk_limit1776, align 8
  %cmp1777 = icmp ugt i8* %add.ptr1775, %1112
  br i1 %cmp1777, label %if.then.1779, label %if.end.1780

if.then.1779:                                     ; preds = %for.body.1772
  %1113 = load %struct.obstack*, %struct.obstack** %__o1773, align 8
  call void @_obstack_newchunk(%struct.obstack* %1113, i32 1)
  br label %if.end.1780

if.end.1780:                                      ; preds = %if.then.1779, %for.body.1772
  %1114 = load i8, i8* %padding, align 1
  %1115 = load %struct.obstack*, %struct.obstack** %__o1773, align 8
  %next_free1781 = getelementptr inbounds %struct.obstack, %struct.obstack* %1115, i32 0, i32 3
  %1116 = load i8*, i8** %next_free1781, align 8
  %incdec.ptr1782 = getelementptr inbounds i8, i8* %1116, i32 1
  store i8* %incdec.ptr1782, i8** %next_free1781, align 8
  store i8 %1114, i8* %1116, align 1
  br label %for.inc.1783

for.inc.1783:                                     ; preds = %if.end.1780
  %1117 = load i64, i64* %nspace1718, align 8
  %dec1784 = add i64 %1117, -1
  store i64 %dec1784, i64* %nspace1718, align 8
  br label %for.cond.1770

for.end.1785:                                     ; preds = %for.cond.1770
  br label %if.end.1786

if.end.1786:                                      ; preds = %for.end.1785, %land.lhs.true.1766, %if.end.1758
  br label %do.end.1787

do.end.1787:                                      ; preds = %if.end.1786
  br label %sw.epilog.1849

sw.bb.1788:                                       ; preds = %sw.bb.1707
  br label %do.body.1789

do.body.1789:                                     ; preds = %sw.bb.1788
  %1118 = load i64, i64* %width, align 8
  %tobool1791 = icmp ne i64 %1118, 0
  br i1 %tobool1791, label %land.lhs.true.1792, label %if.end.1806

land.lhs.true.1792:                               ; preds = %do.body.1789
  %1119 = load i32, i32* %justification, align 4
  %cmp1793 = icmp slt i32 %1119, 0
  br i1 %cmp1793, label %if.then.1795, label %if.end.1806

if.then.1795:                                     ; preds = %land.lhs.true.1792
  %1120 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1120, %struct.obstack** %__o1796, align 8
  %1121 = load %struct.obstack*, %struct.obstack** %__o1796, align 8
  %next_free1797 = getelementptr inbounds %struct.obstack, %struct.obstack* %1121, i32 0, i32 3
  %1122 = load i8*, i8** %next_free1797, align 8
  %add.ptr1798 = getelementptr inbounds i8, i8* %1122, i64 1
  %1123 = load %struct.obstack*, %struct.obstack** %__o1796, align 8
  %chunk_limit1799 = getelementptr inbounds %struct.obstack, %struct.obstack* %1123, i32 0, i32 4
  %1124 = load i8*, i8** %chunk_limit1799, align 8
  %cmp1800 = icmp ugt i8* %add.ptr1798, %1124
  br i1 %cmp1800, label %if.then.1802, label %if.end.1803

if.then.1802:                                     ; preds = %if.then.1795
  %1125 = load %struct.obstack*, %struct.obstack** %__o1796, align 8
  call void @_obstack_newchunk(%struct.obstack* %1125, i32 1)
  br label %if.end.1803

if.end.1803:                                      ; preds = %if.then.1802, %if.then.1795
  %1126 = load %struct.obstack*, %struct.obstack** %__o1796, align 8
  %next_free1804 = getelementptr inbounds %struct.obstack, %struct.obstack* %1126, i32 0, i32 3
  %1127 = load i8*, i8** %next_free1804, align 8
  %incdec.ptr1805 = getelementptr inbounds i8, i8* %1127, i32 1
  store i8* %incdec.ptr1805, i8** %next_free1804, align 8
  store i8 2, i8* %1127, align 1
  br label %if.end.1806

if.end.1806:                                      ; preds = %if.end.1803, %land.lhs.true.1792, %do.body.1789
  store i32 0, i32* %a1790, align 4
  br label %for.cond.1807

for.cond.1807:                                    ; preds = %for.inc.1823, %if.end.1806
  %1128 = load i32, i32* %a1790, align 4
  %1129 = load i64, i64* %width, align 8
  %conv1808 = trunc i64 %1129 to i32
  %sub1809 = sub nsw i32 %conv1808, 1
  %cmp1810 = icmp slt i32 %1128, %sub1809
  br i1 %cmp1810, label %for.body.1812, label %for.end.1825

for.body.1812:                                    ; preds = %for.cond.1807
  %1130 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1130, %struct.obstack** %__o1813, align 8
  %1131 = load %struct.obstack*, %struct.obstack** %__o1813, align 8
  %next_free1814 = getelementptr inbounds %struct.obstack, %struct.obstack* %1131, i32 0, i32 3
  %1132 = load i8*, i8** %next_free1814, align 8
  %add.ptr1815 = getelementptr inbounds i8, i8* %1132, i64 1
  %1133 = load %struct.obstack*, %struct.obstack** %__o1813, align 8
  %chunk_limit1816 = getelementptr inbounds %struct.obstack, %struct.obstack* %1133, i32 0, i32 4
  %1134 = load i8*, i8** %chunk_limit1816, align 8
  %cmp1817 = icmp ugt i8* %add.ptr1815, %1134
  br i1 %cmp1817, label %if.then.1819, label %if.end.1820

if.then.1819:                                     ; preds = %for.body.1812
  %1135 = load %struct.obstack*, %struct.obstack** %__o1813, align 8
  call void @_obstack_newchunk(%struct.obstack* %1135, i32 1)
  br label %if.end.1820

if.end.1820:                                      ; preds = %if.then.1819, %for.body.1812
  %1136 = load i8, i8* %padding, align 1
  %1137 = load %struct.obstack*, %struct.obstack** %__o1813, align 8
  %next_free1821 = getelementptr inbounds %struct.obstack, %struct.obstack* %1137, i32 0, i32 3
  %1138 = load i8*, i8** %next_free1821, align 8
  %incdec.ptr1822 = getelementptr inbounds i8, i8* %1138, i32 1
  store i8* %incdec.ptr1822, i8** %next_free1821, align 8
  store i8 %1136, i8* %1138, align 1
  br label %for.inc.1823

for.inc.1823:                                     ; preds = %if.end.1820
  %1139 = load i32, i32* %a1790, align 4
  %inc1824 = add nsw i32 %1139, 1
  store i32 %inc1824, i32* %a1790, align 4
  br label %for.cond.1807

for.end.1825:                                     ; preds = %for.cond.1807
  %1140 = load i64, i64* %width, align 8
  %tobool1826 = icmp ne i64 %1140, 0
  br i1 %tobool1826, label %lor.lhs.false.1827, label %if.then.1830

lor.lhs.false.1827:                               ; preds = %for.end.1825
  %1141 = load i32, i32* %justification, align 4
  %cmp1828 = icmp sgt i32 %1141, 0
  br i1 %cmp1828, label %if.then.1830, label %if.end.1841

if.then.1830:                                     ; preds = %lor.lhs.false.1827, %for.end.1825
  %1142 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1142, %struct.obstack** %__o1831, align 8
  %1143 = load %struct.obstack*, %struct.obstack** %__o1831, align 8
  %next_free1832 = getelementptr inbounds %struct.obstack, %struct.obstack* %1143, i32 0, i32 3
  %1144 = load i8*, i8** %next_free1832, align 8
  %add.ptr1833 = getelementptr inbounds i8, i8* %1144, i64 1
  %1145 = load %struct.obstack*, %struct.obstack** %__o1831, align 8
  %chunk_limit1834 = getelementptr inbounds %struct.obstack, %struct.obstack* %1145, i32 0, i32 4
  %1146 = load i8*, i8** %chunk_limit1834, align 8
  %cmp1835 = icmp ugt i8* %add.ptr1833, %1146
  br i1 %cmp1835, label %if.then.1837, label %if.end.1838

if.then.1837:                                     ; preds = %if.then.1830
  %1147 = load %struct.obstack*, %struct.obstack** %__o1831, align 8
  call void @_obstack_newchunk(%struct.obstack* %1147, i32 1)
  br label %if.end.1838

if.end.1838:                                      ; preds = %if.then.1837, %if.then.1830
  %1148 = load %struct.obstack*, %struct.obstack** %__o1831, align 8
  %next_free1839 = getelementptr inbounds %struct.obstack, %struct.obstack* %1148, i32 0, i32 3
  %1149 = load i8*, i8** %next_free1839, align 8
  %incdec.ptr1840 = getelementptr inbounds i8, i8* %1149, i32 1
  store i8* %incdec.ptr1840, i8** %next_free1839, align 8
  store i8 2, i8* %1149, align 1
  br label %if.end.1841

if.end.1841:                                      ; preds = %if.end.1838, %lor.lhs.false.1827
  br label %do.end.1842

do.end.1842:                                      ; preds = %if.end.1841
  br label %sw.epilog.1849

sw.default.1843:                                  ; preds = %sw.bb.1707
  %call1844 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %1150 = load i8*, i8** %context_name.addr, align 8
  %1151 = load i64, i64* %i, align 8
  %1152 = load i8*, i8** %str.addr, align 8
  %arrayidx1845 = getelementptr inbounds i8, i8* %1152, i64 %1151
  %1153 = load i8, i8* %arrayidx1845, align 1
  %conv1846 = zext i8 %1153 to i32
  %1154 = load i64, i64* %i, align 8
  %1155 = load i8*, i8** %str.addr, align 8
  %arrayidx1847 = getelementptr inbounds i8, i8* %1155, i64 %1154
  %1156 = load i8, i8* %arrayidx1847, align 1
  %conv1848 = zext i8 %1156 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call1844, i8* %1150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %conv1846, i32 %conv1848)
  br label %sw.epilog.1849

sw.epilog.1849:                                   ; preds = %sw.default.1843, %do.end.1842, %do.end.1787
  br label %sw.epilog.2279

sw.bb.1850:                                       ; preds = %sw.bb.215
  %arraydecay1851 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1157 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1852 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1157, i32 0, i32 6
  %tm_hour1853 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1852, i32 0, i32 2
  %1158 = load i32, i32* %tm_hour1853, align 4
  %cmp1854 = icmp sgt i32 %1158, 12
  br i1 %cmp1854, label %cond.true.1856, label %cond.false.1860

cond.true.1856:                                   ; preds = %sw.bb.1850
  %1159 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1857 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1159, i32 0, i32 6
  %tm_hour1858 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1857, i32 0, i32 2
  %1160 = load i32, i32* %tm_hour1858, align 4
  %sub1859 = sub nsw i32 %1160, 12
  br label %cond.end.1863

cond.false.1860:                                  ; preds = %sw.bb.1850
  %1161 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1861 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1161, i32 0, i32 6
  %tm_hour1862 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1861, i32 0, i32 2
  %1162 = load i32, i32* %tm_hour1862, align 4
  br label %cond.end.1863

cond.end.1863:                                    ; preds = %cond.false.1860, %cond.true.1856
  %cond1864 = phi i32 [ %sub1859, %cond.true.1856 ], [ %1162, %cond.false.1860 ]
  %1163 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1865 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1163, i32 0, i32 6
  %tm_min1866 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1865, i32 0, i32 1
  %1164 = load i32, i32* %tm_min1866, align 4
  %1165 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1867 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1165, i32 0, i32 6
  %tm_hour1868 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1867, i32 0, i32 2
  %1166 = load i32, i32* %tm_hour1868, align 4
  %cmp1869 = icmp sgt i32 %1166, 12
  %cond1871 = select i1 %cmp1869, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)
  %call1872 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1851, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 %cond1864, i32 %1164, i8* %cond1871) #5
  br label %do.body.1873

do.body.1873:                                     ; preds = %cond.end.1863
  %arraydecay1875 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1876 = call i64 @strlen(i8* %arraydecay1875) #6
  store i64 %call1876, i64* %len1874, align 8
  %1167 = load i64, i64* %len1874, align 8
  %1168 = load i64, i64* %width, align 8
  %cmp1878 = icmp ugt i64 %1167, %1168
  br i1 %cmp1878, label %cond.true.1880, label %cond.false.1881

cond.true.1880:                                   ; preds = %do.body.1873
  br label %cond.end.1883

cond.false.1881:                                  ; preds = %do.body.1873
  %1169 = load i64, i64* %width, align 8
  %1170 = load i64, i64* %len1874, align 8
  %sub1882 = sub i64 %1169, %1170
  br label %cond.end.1883

cond.end.1883:                                    ; preds = %cond.false.1881, %cond.true.1880
  %cond1884 = phi i64 [ 0, %cond.true.1880 ], [ %sub1882, %cond.false.1881 ]
  store i64 %cond1884, i64* %nspace1877, align 8
  %1171 = load i64, i64* %width, align 8
  %tobool1885 = icmp ne i64 %1171, 0
  br i1 %tobool1885, label %land.lhs.true.1886, label %if.end.1906

land.lhs.true.1886:                               ; preds = %cond.end.1883
  %1172 = load i32, i32* %justification, align 4
  %cmp1887 = icmp sgt i32 %1172, 0
  br i1 %cmp1887, label %if.then.1889, label %if.end.1906

if.then.1889:                                     ; preds = %land.lhs.true.1886
  br label %for.cond.1890

for.cond.1890:                                    ; preds = %for.inc.1903, %if.then.1889
  %1173 = load i64, i64* %nspace1877, align 8
  %tobool1891 = icmp ne i64 %1173, 0
  br i1 %tobool1891, label %for.body.1892, label %for.end.1905

for.body.1892:                                    ; preds = %for.cond.1890
  %1174 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1174, %struct.obstack** %__o1893, align 8
  %1175 = load %struct.obstack*, %struct.obstack** %__o1893, align 8
  %next_free1894 = getelementptr inbounds %struct.obstack, %struct.obstack* %1175, i32 0, i32 3
  %1176 = load i8*, i8** %next_free1894, align 8
  %add.ptr1895 = getelementptr inbounds i8, i8* %1176, i64 1
  %1177 = load %struct.obstack*, %struct.obstack** %__o1893, align 8
  %chunk_limit1896 = getelementptr inbounds %struct.obstack, %struct.obstack* %1177, i32 0, i32 4
  %1178 = load i8*, i8** %chunk_limit1896, align 8
  %cmp1897 = icmp ugt i8* %add.ptr1895, %1178
  br i1 %cmp1897, label %if.then.1899, label %if.end.1900

if.then.1899:                                     ; preds = %for.body.1892
  %1179 = load %struct.obstack*, %struct.obstack** %__o1893, align 8
  call void @_obstack_newchunk(%struct.obstack* %1179, i32 1)
  br label %if.end.1900

if.end.1900:                                      ; preds = %if.then.1899, %for.body.1892
  %1180 = load i8, i8* %padding, align 1
  %1181 = load %struct.obstack*, %struct.obstack** %__o1893, align 8
  %next_free1901 = getelementptr inbounds %struct.obstack, %struct.obstack* %1181, i32 0, i32 3
  %1182 = load i8*, i8** %next_free1901, align 8
  %incdec.ptr1902 = getelementptr inbounds i8, i8* %1182, i32 1
  store i8* %incdec.ptr1902, i8** %next_free1901, align 8
  store i8 %1180, i8* %1182, align 1
  br label %for.inc.1903

for.inc.1903:                                     ; preds = %if.end.1900
  %1183 = load i64, i64* %nspace1877, align 8
  %dec1904 = add i64 %1183, -1
  store i64 %dec1904, i64* %nspace1877, align 8
  br label %for.cond.1890

for.end.1905:                                     ; preds = %for.cond.1890
  br label %if.end.1906

if.end.1906:                                      ; preds = %for.end.1905, %land.lhs.true.1886, %cond.end.1883
  %1184 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1184, %struct.obstack** %__o1907, align 8
  %1185 = load i64, i64* %len1874, align 8
  %conv1909 = trunc i64 %1185 to i32
  store i32 %conv1909, i32* %__len1908, align 4
  %1186 = load %struct.obstack*, %struct.obstack** %__o1907, align 8
  %next_free1910 = getelementptr inbounds %struct.obstack, %struct.obstack* %1186, i32 0, i32 3
  %1187 = load i8*, i8** %next_free1910, align 8
  %1188 = load i32, i32* %__len1908, align 4
  %idx.ext1911 = sext i32 %1188 to i64
  %add.ptr1912 = getelementptr inbounds i8, i8* %1187, i64 %idx.ext1911
  %1189 = load %struct.obstack*, %struct.obstack** %__o1907, align 8
  %chunk_limit1913 = getelementptr inbounds %struct.obstack, %struct.obstack* %1189, i32 0, i32 4
  %1190 = load i8*, i8** %chunk_limit1913, align 8
  %cmp1914 = icmp ugt i8* %add.ptr1912, %1190
  br i1 %cmp1914, label %if.then.1916, label %if.end.1917

if.then.1916:                                     ; preds = %if.end.1906
  %1191 = load %struct.obstack*, %struct.obstack** %__o1907, align 8
  %1192 = load i32, i32* %__len1908, align 4
  call void @_obstack_newchunk(%struct.obstack* %1191, i32 %1192)
  br label %if.end.1917

if.end.1917:                                      ; preds = %if.then.1916, %if.end.1906
  %1193 = load %struct.obstack*, %struct.obstack** %__o1907, align 8
  %next_free1918 = getelementptr inbounds %struct.obstack, %struct.obstack* %1193, i32 0, i32 3
  %1194 = load i8*, i8** %next_free1918, align 8
  %arraydecay1919 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1195 = load i32, i32* %__len1908, align 4
  %conv1920 = sext i32 %1195 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1194, i8* %arraydecay1919, i64 %conv1920, i32 1, i1 false)
  %1196 = load i32, i32* %__len1908, align 4
  %1197 = load %struct.obstack*, %struct.obstack** %__o1907, align 8
  %next_free1921 = getelementptr inbounds %struct.obstack, %struct.obstack* %1197, i32 0, i32 3
  %1198 = load i8*, i8** %next_free1921, align 8
  %idx.ext1922 = sext i32 %1196 to i64
  %add.ptr1923 = getelementptr inbounds i8, i8* %1198, i64 %idx.ext1922
  store i8* %add.ptr1923, i8** %next_free1921, align 8
  %1199 = load i64, i64* %width, align 8
  %tobool1924 = icmp ne i64 %1199, 0
  br i1 %tobool1924, label %land.lhs.true.1925, label %if.end.1945

land.lhs.true.1925:                               ; preds = %if.end.1917
  %1200 = load i32, i32* %justification, align 4
  %cmp1926 = icmp slt i32 %1200, 0
  br i1 %cmp1926, label %if.then.1928, label %if.end.1945

if.then.1928:                                     ; preds = %land.lhs.true.1925
  br label %for.cond.1929

for.cond.1929:                                    ; preds = %for.inc.1942, %if.then.1928
  %1201 = load i64, i64* %nspace1877, align 8
  %tobool1930 = icmp ne i64 %1201, 0
  br i1 %tobool1930, label %for.body.1931, label %for.end.1944

for.body.1931:                                    ; preds = %for.cond.1929
  %1202 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1202, %struct.obstack** %__o1932, align 8
  %1203 = load %struct.obstack*, %struct.obstack** %__o1932, align 8
  %next_free1933 = getelementptr inbounds %struct.obstack, %struct.obstack* %1203, i32 0, i32 3
  %1204 = load i8*, i8** %next_free1933, align 8
  %add.ptr1934 = getelementptr inbounds i8, i8* %1204, i64 1
  %1205 = load %struct.obstack*, %struct.obstack** %__o1932, align 8
  %chunk_limit1935 = getelementptr inbounds %struct.obstack, %struct.obstack* %1205, i32 0, i32 4
  %1206 = load i8*, i8** %chunk_limit1935, align 8
  %cmp1936 = icmp ugt i8* %add.ptr1934, %1206
  br i1 %cmp1936, label %if.then.1938, label %if.end.1939

if.then.1938:                                     ; preds = %for.body.1931
  %1207 = load %struct.obstack*, %struct.obstack** %__o1932, align 8
  call void @_obstack_newchunk(%struct.obstack* %1207, i32 1)
  br label %if.end.1939

if.end.1939:                                      ; preds = %if.then.1938, %for.body.1931
  %1208 = load i8, i8* %padding, align 1
  %1209 = load %struct.obstack*, %struct.obstack** %__o1932, align 8
  %next_free1940 = getelementptr inbounds %struct.obstack, %struct.obstack* %1209, i32 0, i32 3
  %1210 = load i8*, i8** %next_free1940, align 8
  %incdec.ptr1941 = getelementptr inbounds i8, i8* %1210, i32 1
  store i8* %incdec.ptr1941, i8** %next_free1940, align 8
  store i8 %1208, i8* %1210, align 1
  br label %for.inc.1942

for.inc.1942:                                     ; preds = %if.end.1939
  %1211 = load i64, i64* %nspace1877, align 8
  %dec1943 = add i64 %1211, -1
  store i64 %dec1943, i64* %nspace1877, align 8
  br label %for.cond.1929

for.end.1944:                                     ; preds = %for.cond.1929
  br label %if.end.1945

if.end.1945:                                      ; preds = %for.end.1944, %land.lhs.true.1925, %if.end.1917
  br label %do.end.1946

do.end.1946:                                      ; preds = %if.end.1945
  br label %sw.epilog.2279

sw.bb.1947:                                       ; preds = %sw.bb.215
  %arraydecay1948 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1212 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1949 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1212, i32 0, i32 6
  %tm_hour1950 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1949, i32 0, i32 2
  %1213 = load i32, i32* %tm_hour1950, align 4
  %1214 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm1951 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1214, i32 0, i32 6
  %tm_min1952 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm1951, i32 0, i32 1
  %1215 = load i32, i32* %tm_min1952, align 4
  %call1953 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1948, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 %1213, i32 %1215) #5
  br label %do.body.1954

do.body.1954:                                     ; preds = %sw.bb.1947
  %arraydecay1956 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call1957 = call i64 @strlen(i8* %arraydecay1956) #6
  store i64 %call1957, i64* %len1955, align 8
  %1216 = load i64, i64* %len1955, align 8
  %1217 = load i64, i64* %width, align 8
  %cmp1959 = icmp ugt i64 %1216, %1217
  br i1 %cmp1959, label %cond.true.1961, label %cond.false.1962

cond.true.1961:                                   ; preds = %do.body.1954
  br label %cond.end.1964

cond.false.1962:                                  ; preds = %do.body.1954
  %1218 = load i64, i64* %width, align 8
  %1219 = load i64, i64* %len1955, align 8
  %sub1963 = sub i64 %1218, %1219
  br label %cond.end.1964

cond.end.1964:                                    ; preds = %cond.false.1962, %cond.true.1961
  %cond1965 = phi i64 [ 0, %cond.true.1961 ], [ %sub1963, %cond.false.1962 ]
  store i64 %cond1965, i64* %nspace1958, align 8
  %1220 = load i64, i64* %width, align 8
  %tobool1966 = icmp ne i64 %1220, 0
  br i1 %tobool1966, label %land.lhs.true.1967, label %if.end.1987

land.lhs.true.1967:                               ; preds = %cond.end.1964
  %1221 = load i32, i32* %justification, align 4
  %cmp1968 = icmp sgt i32 %1221, 0
  br i1 %cmp1968, label %if.then.1970, label %if.end.1987

if.then.1970:                                     ; preds = %land.lhs.true.1967
  br label %for.cond.1971

for.cond.1971:                                    ; preds = %for.inc.1984, %if.then.1970
  %1222 = load i64, i64* %nspace1958, align 8
  %tobool1972 = icmp ne i64 %1222, 0
  br i1 %tobool1972, label %for.body.1973, label %for.end.1986

for.body.1973:                                    ; preds = %for.cond.1971
  %1223 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1223, %struct.obstack** %__o1974, align 8
  %1224 = load %struct.obstack*, %struct.obstack** %__o1974, align 8
  %next_free1975 = getelementptr inbounds %struct.obstack, %struct.obstack* %1224, i32 0, i32 3
  %1225 = load i8*, i8** %next_free1975, align 8
  %add.ptr1976 = getelementptr inbounds i8, i8* %1225, i64 1
  %1226 = load %struct.obstack*, %struct.obstack** %__o1974, align 8
  %chunk_limit1977 = getelementptr inbounds %struct.obstack, %struct.obstack* %1226, i32 0, i32 4
  %1227 = load i8*, i8** %chunk_limit1977, align 8
  %cmp1978 = icmp ugt i8* %add.ptr1976, %1227
  br i1 %cmp1978, label %if.then.1980, label %if.end.1981

if.then.1980:                                     ; preds = %for.body.1973
  %1228 = load %struct.obstack*, %struct.obstack** %__o1974, align 8
  call void @_obstack_newchunk(%struct.obstack* %1228, i32 1)
  br label %if.end.1981

if.end.1981:                                      ; preds = %if.then.1980, %for.body.1973
  %1229 = load i8, i8* %padding, align 1
  %1230 = load %struct.obstack*, %struct.obstack** %__o1974, align 8
  %next_free1982 = getelementptr inbounds %struct.obstack, %struct.obstack* %1230, i32 0, i32 3
  %1231 = load i8*, i8** %next_free1982, align 8
  %incdec.ptr1983 = getelementptr inbounds i8, i8* %1231, i32 1
  store i8* %incdec.ptr1983, i8** %next_free1982, align 8
  store i8 %1229, i8* %1231, align 1
  br label %for.inc.1984

for.inc.1984:                                     ; preds = %if.end.1981
  %1232 = load i64, i64* %nspace1958, align 8
  %dec1985 = add i64 %1232, -1
  store i64 %dec1985, i64* %nspace1958, align 8
  br label %for.cond.1971

for.end.1986:                                     ; preds = %for.cond.1971
  br label %if.end.1987

if.end.1987:                                      ; preds = %for.end.1986, %land.lhs.true.1967, %cond.end.1964
  %1233 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1233, %struct.obstack** %__o1988, align 8
  %1234 = load i64, i64* %len1955, align 8
  %conv1990 = trunc i64 %1234 to i32
  store i32 %conv1990, i32* %__len1989, align 4
  %1235 = load %struct.obstack*, %struct.obstack** %__o1988, align 8
  %next_free1991 = getelementptr inbounds %struct.obstack, %struct.obstack* %1235, i32 0, i32 3
  %1236 = load i8*, i8** %next_free1991, align 8
  %1237 = load i32, i32* %__len1989, align 4
  %idx.ext1992 = sext i32 %1237 to i64
  %add.ptr1993 = getelementptr inbounds i8, i8* %1236, i64 %idx.ext1992
  %1238 = load %struct.obstack*, %struct.obstack** %__o1988, align 8
  %chunk_limit1994 = getelementptr inbounds %struct.obstack, %struct.obstack* %1238, i32 0, i32 4
  %1239 = load i8*, i8** %chunk_limit1994, align 8
  %cmp1995 = icmp ugt i8* %add.ptr1993, %1239
  br i1 %cmp1995, label %if.then.1997, label %if.end.1998

if.then.1997:                                     ; preds = %if.end.1987
  %1240 = load %struct.obstack*, %struct.obstack** %__o1988, align 8
  %1241 = load i32, i32* %__len1989, align 4
  call void @_obstack_newchunk(%struct.obstack* %1240, i32 %1241)
  br label %if.end.1998

if.end.1998:                                      ; preds = %if.then.1997, %if.end.1987
  %1242 = load %struct.obstack*, %struct.obstack** %__o1988, align 8
  %next_free1999 = getelementptr inbounds %struct.obstack, %struct.obstack* %1242, i32 0, i32 3
  %1243 = load i8*, i8** %next_free1999, align 8
  %arraydecay2000 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1244 = load i32, i32* %__len1989, align 4
  %conv2001 = sext i32 %1244 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1243, i8* %arraydecay2000, i64 %conv2001, i32 1, i1 false)
  %1245 = load i32, i32* %__len1989, align 4
  %1246 = load %struct.obstack*, %struct.obstack** %__o1988, align 8
  %next_free2002 = getelementptr inbounds %struct.obstack, %struct.obstack* %1246, i32 0, i32 3
  %1247 = load i8*, i8** %next_free2002, align 8
  %idx.ext2003 = sext i32 %1245 to i64
  %add.ptr2004 = getelementptr inbounds i8, i8* %1247, i64 %idx.ext2003
  store i8* %add.ptr2004, i8** %next_free2002, align 8
  %1248 = load i64, i64* %width, align 8
  %tobool2005 = icmp ne i64 %1248, 0
  br i1 %tobool2005, label %land.lhs.true.2006, label %if.end.2026

land.lhs.true.2006:                               ; preds = %if.end.1998
  %1249 = load i32, i32* %justification, align 4
  %cmp2007 = icmp slt i32 %1249, 0
  br i1 %cmp2007, label %if.then.2009, label %if.end.2026

if.then.2009:                                     ; preds = %land.lhs.true.2006
  br label %for.cond.2010

for.cond.2010:                                    ; preds = %for.inc.2023, %if.then.2009
  %1250 = load i64, i64* %nspace1958, align 8
  %tobool2011 = icmp ne i64 %1250, 0
  br i1 %tobool2011, label %for.body.2012, label %for.end.2025

for.body.2012:                                    ; preds = %for.cond.2010
  %1251 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1251, %struct.obstack** %__o2013, align 8
  %1252 = load %struct.obstack*, %struct.obstack** %__o2013, align 8
  %next_free2014 = getelementptr inbounds %struct.obstack, %struct.obstack* %1252, i32 0, i32 3
  %1253 = load i8*, i8** %next_free2014, align 8
  %add.ptr2015 = getelementptr inbounds i8, i8* %1253, i64 1
  %1254 = load %struct.obstack*, %struct.obstack** %__o2013, align 8
  %chunk_limit2016 = getelementptr inbounds %struct.obstack, %struct.obstack* %1254, i32 0, i32 4
  %1255 = load i8*, i8** %chunk_limit2016, align 8
  %cmp2017 = icmp ugt i8* %add.ptr2015, %1255
  br i1 %cmp2017, label %if.then.2019, label %if.end.2020

if.then.2019:                                     ; preds = %for.body.2012
  %1256 = load %struct.obstack*, %struct.obstack** %__o2013, align 8
  call void @_obstack_newchunk(%struct.obstack* %1256, i32 1)
  br label %if.end.2020

if.end.2020:                                      ; preds = %if.then.2019, %for.body.2012
  %1257 = load i8, i8* %padding, align 1
  %1258 = load %struct.obstack*, %struct.obstack** %__o2013, align 8
  %next_free2021 = getelementptr inbounds %struct.obstack, %struct.obstack* %1258, i32 0, i32 3
  %1259 = load i8*, i8** %next_free2021, align 8
  %incdec.ptr2022 = getelementptr inbounds i8, i8* %1259, i32 1
  store i8* %incdec.ptr2022, i8** %next_free2021, align 8
  store i8 %1257, i8* %1259, align 1
  br label %for.inc.2023

for.inc.2023:                                     ; preds = %if.end.2020
  %1260 = load i64, i64* %nspace1958, align 8
  %dec2024 = add i64 %1260, -1
  store i64 %dec2024, i64* %nspace1958, align 8
  br label %for.cond.2010

for.end.2025:                                     ; preds = %for.cond.2010
  br label %if.end.2026

if.end.2026:                                      ; preds = %for.end.2025, %land.lhs.true.2006, %if.end.1998
  br label %do.end.2027

do.end.2027:                                      ; preds = %if.end.2026
  br label %sw.epilog.2279

sw.bb.2028:                                       ; preds = %sw.bb.215
  %arraydecay2029 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1261 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm2030 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1261, i32 0, i32 6
  %tm_hour2031 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm2030, i32 0, i32 2
  %1262 = load i32, i32* %tm_hour2031, align 4
  %1263 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm2032 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1263, i32 0, i32 6
  %tm_min2033 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm2032, i32 0, i32 1
  %1264 = load i32, i32* %tm_min2033, align 4
  %1265 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm2034 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1265, i32 0, i32 6
  %tm_sec2035 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm2034, i32 0, i32 0
  %1266 = load i32, i32* %tm_sec2035, align 4
  %call2036 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2029, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %1262, i32 %1264, i32 %1266) #5
  br label %do.body.2037

do.body.2037:                                     ; preds = %sw.bb.2028
  %arraydecay2039 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2040 = call i64 @strlen(i8* %arraydecay2039) #6
  store i64 %call2040, i64* %len2038, align 8
  %1267 = load i64, i64* %len2038, align 8
  %1268 = load i64, i64* %width, align 8
  %cmp2042 = icmp ugt i64 %1267, %1268
  br i1 %cmp2042, label %cond.true.2044, label %cond.false.2045

cond.true.2044:                                   ; preds = %do.body.2037
  br label %cond.end.2047

cond.false.2045:                                  ; preds = %do.body.2037
  %1269 = load i64, i64* %width, align 8
  %1270 = load i64, i64* %len2038, align 8
  %sub2046 = sub i64 %1269, %1270
  br label %cond.end.2047

cond.end.2047:                                    ; preds = %cond.false.2045, %cond.true.2044
  %cond2048 = phi i64 [ 0, %cond.true.2044 ], [ %sub2046, %cond.false.2045 ]
  store i64 %cond2048, i64* %nspace2041, align 8
  %1271 = load i64, i64* %width, align 8
  %tobool2049 = icmp ne i64 %1271, 0
  br i1 %tobool2049, label %land.lhs.true.2050, label %if.end.2070

land.lhs.true.2050:                               ; preds = %cond.end.2047
  %1272 = load i32, i32* %justification, align 4
  %cmp2051 = icmp sgt i32 %1272, 0
  br i1 %cmp2051, label %if.then.2053, label %if.end.2070

if.then.2053:                                     ; preds = %land.lhs.true.2050
  br label %for.cond.2054

for.cond.2054:                                    ; preds = %for.inc.2067, %if.then.2053
  %1273 = load i64, i64* %nspace2041, align 8
  %tobool2055 = icmp ne i64 %1273, 0
  br i1 %tobool2055, label %for.body.2056, label %for.end.2069

for.body.2056:                                    ; preds = %for.cond.2054
  %1274 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1274, %struct.obstack** %__o2057, align 8
  %1275 = load %struct.obstack*, %struct.obstack** %__o2057, align 8
  %next_free2058 = getelementptr inbounds %struct.obstack, %struct.obstack* %1275, i32 0, i32 3
  %1276 = load i8*, i8** %next_free2058, align 8
  %add.ptr2059 = getelementptr inbounds i8, i8* %1276, i64 1
  %1277 = load %struct.obstack*, %struct.obstack** %__o2057, align 8
  %chunk_limit2060 = getelementptr inbounds %struct.obstack, %struct.obstack* %1277, i32 0, i32 4
  %1278 = load i8*, i8** %chunk_limit2060, align 8
  %cmp2061 = icmp ugt i8* %add.ptr2059, %1278
  br i1 %cmp2061, label %if.then.2063, label %if.end.2064

if.then.2063:                                     ; preds = %for.body.2056
  %1279 = load %struct.obstack*, %struct.obstack** %__o2057, align 8
  call void @_obstack_newchunk(%struct.obstack* %1279, i32 1)
  br label %if.end.2064

if.end.2064:                                      ; preds = %if.then.2063, %for.body.2056
  %1280 = load i8, i8* %padding, align 1
  %1281 = load %struct.obstack*, %struct.obstack** %__o2057, align 8
  %next_free2065 = getelementptr inbounds %struct.obstack, %struct.obstack* %1281, i32 0, i32 3
  %1282 = load i8*, i8** %next_free2065, align 8
  %incdec.ptr2066 = getelementptr inbounds i8, i8* %1282, i32 1
  store i8* %incdec.ptr2066, i8** %next_free2065, align 8
  store i8 %1280, i8* %1282, align 1
  br label %for.inc.2067

for.inc.2067:                                     ; preds = %if.end.2064
  %1283 = load i64, i64* %nspace2041, align 8
  %dec2068 = add i64 %1283, -1
  store i64 %dec2068, i64* %nspace2041, align 8
  br label %for.cond.2054

for.end.2069:                                     ; preds = %for.cond.2054
  br label %if.end.2070

if.end.2070:                                      ; preds = %for.end.2069, %land.lhs.true.2050, %cond.end.2047
  %1284 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1284, %struct.obstack** %__o2071, align 8
  %1285 = load i64, i64* %len2038, align 8
  %conv2073 = trunc i64 %1285 to i32
  store i32 %conv2073, i32* %__len2072, align 4
  %1286 = load %struct.obstack*, %struct.obstack** %__o2071, align 8
  %next_free2074 = getelementptr inbounds %struct.obstack, %struct.obstack* %1286, i32 0, i32 3
  %1287 = load i8*, i8** %next_free2074, align 8
  %1288 = load i32, i32* %__len2072, align 4
  %idx.ext2075 = sext i32 %1288 to i64
  %add.ptr2076 = getelementptr inbounds i8, i8* %1287, i64 %idx.ext2075
  %1289 = load %struct.obstack*, %struct.obstack** %__o2071, align 8
  %chunk_limit2077 = getelementptr inbounds %struct.obstack, %struct.obstack* %1289, i32 0, i32 4
  %1290 = load i8*, i8** %chunk_limit2077, align 8
  %cmp2078 = icmp ugt i8* %add.ptr2076, %1290
  br i1 %cmp2078, label %if.then.2080, label %if.end.2081

if.then.2080:                                     ; preds = %if.end.2070
  %1291 = load %struct.obstack*, %struct.obstack** %__o2071, align 8
  %1292 = load i32, i32* %__len2072, align 4
  call void @_obstack_newchunk(%struct.obstack* %1291, i32 %1292)
  br label %if.end.2081

if.end.2081:                                      ; preds = %if.then.2080, %if.end.2070
  %1293 = load %struct.obstack*, %struct.obstack** %__o2071, align 8
  %next_free2082 = getelementptr inbounds %struct.obstack, %struct.obstack* %1293, i32 0, i32 3
  %1294 = load i8*, i8** %next_free2082, align 8
  %arraydecay2083 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1295 = load i32, i32* %__len2072, align 4
  %conv2084 = sext i32 %1295 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1294, i8* %arraydecay2083, i64 %conv2084, i32 1, i1 false)
  %1296 = load i32, i32* %__len2072, align 4
  %1297 = load %struct.obstack*, %struct.obstack** %__o2071, align 8
  %next_free2085 = getelementptr inbounds %struct.obstack, %struct.obstack* %1297, i32 0, i32 3
  %1298 = load i8*, i8** %next_free2085, align 8
  %idx.ext2086 = sext i32 %1296 to i64
  %add.ptr2087 = getelementptr inbounds i8, i8* %1298, i64 %idx.ext2086
  store i8* %add.ptr2087, i8** %next_free2085, align 8
  %1299 = load i64, i64* %width, align 8
  %tobool2088 = icmp ne i64 %1299, 0
  br i1 %tobool2088, label %land.lhs.true.2089, label %if.end.2109

land.lhs.true.2089:                               ; preds = %if.end.2081
  %1300 = load i32, i32* %justification, align 4
  %cmp2090 = icmp slt i32 %1300, 0
  br i1 %cmp2090, label %if.then.2092, label %if.end.2109

if.then.2092:                                     ; preds = %land.lhs.true.2089
  br label %for.cond.2093

for.cond.2093:                                    ; preds = %for.inc.2106, %if.then.2092
  %1301 = load i64, i64* %nspace2041, align 8
  %tobool2094 = icmp ne i64 %1301, 0
  br i1 %tobool2094, label %for.body.2095, label %for.end.2108

for.body.2095:                                    ; preds = %for.cond.2093
  %1302 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1302, %struct.obstack** %__o2096, align 8
  %1303 = load %struct.obstack*, %struct.obstack** %__o2096, align 8
  %next_free2097 = getelementptr inbounds %struct.obstack, %struct.obstack* %1303, i32 0, i32 3
  %1304 = load i8*, i8** %next_free2097, align 8
  %add.ptr2098 = getelementptr inbounds i8, i8* %1304, i64 1
  %1305 = load %struct.obstack*, %struct.obstack** %__o2096, align 8
  %chunk_limit2099 = getelementptr inbounds %struct.obstack, %struct.obstack* %1305, i32 0, i32 4
  %1306 = load i8*, i8** %chunk_limit2099, align 8
  %cmp2100 = icmp ugt i8* %add.ptr2098, %1306
  br i1 %cmp2100, label %if.then.2102, label %if.end.2103

if.then.2102:                                     ; preds = %for.body.2095
  %1307 = load %struct.obstack*, %struct.obstack** %__o2096, align 8
  call void @_obstack_newchunk(%struct.obstack* %1307, i32 1)
  br label %if.end.2103

if.end.2103:                                      ; preds = %if.then.2102, %for.body.2095
  %1308 = load i8, i8* %padding, align 1
  %1309 = load %struct.obstack*, %struct.obstack** %__o2096, align 8
  %next_free2104 = getelementptr inbounds %struct.obstack, %struct.obstack* %1309, i32 0, i32 3
  %1310 = load i8*, i8** %next_free2104, align 8
  %incdec.ptr2105 = getelementptr inbounds i8, i8* %1310, i32 1
  store i8* %incdec.ptr2105, i8** %next_free2104, align 8
  store i8 %1308, i8* %1310, align 1
  br label %for.inc.2106

for.inc.2106:                                     ; preds = %if.end.2103
  %1311 = load i64, i64* %nspace2041, align 8
  %dec2107 = add i64 %1311, -1
  store i64 %dec2107, i64* %nspace2041, align 8
  br label %for.cond.2093

for.end.2108:                                     ; preds = %for.cond.2093
  br label %if.end.2109

if.end.2109:                                      ; preds = %for.end.2108, %land.lhs.true.2089, %if.end.2081
  br label %do.end.2110

do.end.2110:                                      ; preds = %if.end.2109
  br label %sw.epilog.2279

sw.bb.2111:                                       ; preds = %sw.bb.215
  %arraydecay2112 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2113 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #5
  br label %do.body.2114

do.body.2114:                                     ; preds = %sw.bb.2111
  %arraydecay2116 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2117 = call i64 @strlen(i8* %arraydecay2116) #6
  store i64 %call2117, i64* %len2115, align 8
  %1312 = load i64, i64* %len2115, align 8
  %1313 = load i64, i64* %width, align 8
  %cmp2119 = icmp ugt i64 %1312, %1313
  br i1 %cmp2119, label %cond.true.2121, label %cond.false.2122

cond.true.2121:                                   ; preds = %do.body.2114
  br label %cond.end.2124

cond.false.2122:                                  ; preds = %do.body.2114
  %1314 = load i64, i64* %width, align 8
  %1315 = load i64, i64* %len2115, align 8
  %sub2123 = sub i64 %1314, %1315
  br label %cond.end.2124

cond.end.2124:                                    ; preds = %cond.false.2122, %cond.true.2121
  %cond2125 = phi i64 [ 0, %cond.true.2121 ], [ %sub2123, %cond.false.2122 ]
  store i64 %cond2125, i64* %nspace2118, align 8
  %1316 = load i64, i64* %width, align 8
  %tobool2126 = icmp ne i64 %1316, 0
  br i1 %tobool2126, label %land.lhs.true.2127, label %if.end.2147

land.lhs.true.2127:                               ; preds = %cond.end.2124
  %1317 = load i32, i32* %justification, align 4
  %cmp2128 = icmp sgt i32 %1317, 0
  br i1 %cmp2128, label %if.then.2130, label %if.end.2147

if.then.2130:                                     ; preds = %land.lhs.true.2127
  br label %for.cond.2131

for.cond.2131:                                    ; preds = %for.inc.2144, %if.then.2130
  %1318 = load i64, i64* %nspace2118, align 8
  %tobool2132 = icmp ne i64 %1318, 0
  br i1 %tobool2132, label %for.body.2133, label %for.end.2146

for.body.2133:                                    ; preds = %for.cond.2131
  %1319 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1319, %struct.obstack** %__o2134, align 8
  %1320 = load %struct.obstack*, %struct.obstack** %__o2134, align 8
  %next_free2135 = getelementptr inbounds %struct.obstack, %struct.obstack* %1320, i32 0, i32 3
  %1321 = load i8*, i8** %next_free2135, align 8
  %add.ptr2136 = getelementptr inbounds i8, i8* %1321, i64 1
  %1322 = load %struct.obstack*, %struct.obstack** %__o2134, align 8
  %chunk_limit2137 = getelementptr inbounds %struct.obstack, %struct.obstack* %1322, i32 0, i32 4
  %1323 = load i8*, i8** %chunk_limit2137, align 8
  %cmp2138 = icmp ugt i8* %add.ptr2136, %1323
  br i1 %cmp2138, label %if.then.2140, label %if.end.2141

if.then.2140:                                     ; preds = %for.body.2133
  %1324 = load %struct.obstack*, %struct.obstack** %__o2134, align 8
  call void @_obstack_newchunk(%struct.obstack* %1324, i32 1)
  br label %if.end.2141

if.end.2141:                                      ; preds = %if.then.2140, %for.body.2133
  %1325 = load i8, i8* %padding, align 1
  %1326 = load %struct.obstack*, %struct.obstack** %__o2134, align 8
  %next_free2142 = getelementptr inbounds %struct.obstack, %struct.obstack* %1326, i32 0, i32 3
  %1327 = load i8*, i8** %next_free2142, align 8
  %incdec.ptr2143 = getelementptr inbounds i8, i8* %1327, i32 1
  store i8* %incdec.ptr2143, i8** %next_free2142, align 8
  store i8 %1325, i8* %1327, align 1
  br label %for.inc.2144

for.inc.2144:                                     ; preds = %if.end.2141
  %1328 = load i64, i64* %nspace2118, align 8
  %dec2145 = add i64 %1328, -1
  store i64 %dec2145, i64* %nspace2118, align 8
  br label %for.cond.2131

for.end.2146:                                     ; preds = %for.cond.2131
  br label %if.end.2147

if.end.2147:                                      ; preds = %for.end.2146, %land.lhs.true.2127, %cond.end.2124
  %1329 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1329, %struct.obstack** %__o2148, align 8
  %1330 = load i64, i64* %len2115, align 8
  %conv2150 = trunc i64 %1330 to i32
  store i32 %conv2150, i32* %__len2149, align 4
  %1331 = load %struct.obstack*, %struct.obstack** %__o2148, align 8
  %next_free2151 = getelementptr inbounds %struct.obstack, %struct.obstack* %1331, i32 0, i32 3
  %1332 = load i8*, i8** %next_free2151, align 8
  %1333 = load i32, i32* %__len2149, align 4
  %idx.ext2152 = sext i32 %1333 to i64
  %add.ptr2153 = getelementptr inbounds i8, i8* %1332, i64 %idx.ext2152
  %1334 = load %struct.obstack*, %struct.obstack** %__o2148, align 8
  %chunk_limit2154 = getelementptr inbounds %struct.obstack, %struct.obstack* %1334, i32 0, i32 4
  %1335 = load i8*, i8** %chunk_limit2154, align 8
  %cmp2155 = icmp ugt i8* %add.ptr2153, %1335
  br i1 %cmp2155, label %if.then.2157, label %if.end.2158

if.then.2157:                                     ; preds = %if.end.2147
  %1336 = load %struct.obstack*, %struct.obstack** %__o2148, align 8
  %1337 = load i32, i32* %__len2149, align 4
  call void @_obstack_newchunk(%struct.obstack* %1336, i32 %1337)
  br label %if.end.2158

if.end.2158:                                      ; preds = %if.then.2157, %if.end.2147
  %1338 = load %struct.obstack*, %struct.obstack** %__o2148, align 8
  %next_free2159 = getelementptr inbounds %struct.obstack, %struct.obstack* %1338, i32 0, i32 3
  %1339 = load i8*, i8** %next_free2159, align 8
  %arraydecay2160 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1340 = load i32, i32* %__len2149, align 4
  %conv2161 = sext i32 %1340 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1339, i8* %arraydecay2160, i64 %conv2161, i32 1, i1 false)
  %1341 = load i32, i32* %__len2149, align 4
  %1342 = load %struct.obstack*, %struct.obstack** %__o2148, align 8
  %next_free2162 = getelementptr inbounds %struct.obstack, %struct.obstack* %1342, i32 0, i32 3
  %1343 = load i8*, i8** %next_free2162, align 8
  %idx.ext2163 = sext i32 %1341 to i64
  %add.ptr2164 = getelementptr inbounds i8, i8* %1343, i64 %idx.ext2163
  store i8* %add.ptr2164, i8** %next_free2162, align 8
  %1344 = load i64, i64* %width, align 8
  %tobool2165 = icmp ne i64 %1344, 0
  br i1 %tobool2165, label %land.lhs.true.2166, label %if.end.2186

land.lhs.true.2166:                               ; preds = %if.end.2158
  %1345 = load i32, i32* %justification, align 4
  %cmp2167 = icmp slt i32 %1345, 0
  br i1 %cmp2167, label %if.then.2169, label %if.end.2186

if.then.2169:                                     ; preds = %land.lhs.true.2166
  br label %for.cond.2170

for.cond.2170:                                    ; preds = %for.inc.2183, %if.then.2169
  %1346 = load i64, i64* %nspace2118, align 8
  %tobool2171 = icmp ne i64 %1346, 0
  br i1 %tobool2171, label %for.body.2172, label %for.end.2185

for.body.2172:                                    ; preds = %for.cond.2170
  %1347 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1347, %struct.obstack** %__o2173, align 8
  %1348 = load %struct.obstack*, %struct.obstack** %__o2173, align 8
  %next_free2174 = getelementptr inbounds %struct.obstack, %struct.obstack* %1348, i32 0, i32 3
  %1349 = load i8*, i8** %next_free2174, align 8
  %add.ptr2175 = getelementptr inbounds i8, i8* %1349, i64 1
  %1350 = load %struct.obstack*, %struct.obstack** %__o2173, align 8
  %chunk_limit2176 = getelementptr inbounds %struct.obstack, %struct.obstack* %1350, i32 0, i32 4
  %1351 = load i8*, i8** %chunk_limit2176, align 8
  %cmp2177 = icmp ugt i8* %add.ptr2175, %1351
  br i1 %cmp2177, label %if.then.2179, label %if.end.2180

if.then.2179:                                     ; preds = %for.body.2172
  %1352 = load %struct.obstack*, %struct.obstack** %__o2173, align 8
  call void @_obstack_newchunk(%struct.obstack* %1352, i32 1)
  br label %if.end.2180

if.end.2180:                                      ; preds = %if.then.2179, %for.body.2172
  %1353 = load i8, i8* %padding, align 1
  %1354 = load %struct.obstack*, %struct.obstack** %__o2173, align 8
  %next_free2181 = getelementptr inbounds %struct.obstack, %struct.obstack* %1354, i32 0, i32 3
  %1355 = load i8*, i8** %next_free2181, align 8
  %incdec.ptr2182 = getelementptr inbounds i8, i8* %1355, i32 1
  store i8* %incdec.ptr2182, i8** %next_free2181, align 8
  store i8 %1353, i8* %1355, align 1
  br label %for.inc.2183

for.inc.2183:                                     ; preds = %if.end.2180
  %1356 = load i64, i64* %nspace2118, align 8
  %dec2184 = add i64 %1356, -1
  store i64 %dec2184, i64* %nspace2118, align 8
  br label %for.cond.2170

for.end.2185:                                     ; preds = %for.cond.2170
  br label %if.end.2186

if.end.2186:                                      ; preds = %for.end.2185, %land.lhs.true.2166, %if.end.2158
  br label %do.end.2187

do.end.2187:                                      ; preds = %if.end.2186
  br label %sw.epilog.2279

sw.bb.2188:                                       ; preds = %sw.bb.215
  %arraydecay2189 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1357 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm2190 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1357, i32 0, i32 6
  %tm_mon2191 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm2190, i32 0, i32 4
  %1358 = load i32, i32* %tm_mon2191, align 4
  %add2192 = add nsw i32 %1358, 1
  %1359 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm2193 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1359, i32 0, i32 6
  %tm_mday2194 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm2193, i32 0, i32 3
  %1360 = load i32, i32* %tm_mday2194, align 4
  %1361 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm2195 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1361, i32 0, i32 6
  %tm_year2196 = getelementptr inbounds %struct.tm, %struct.tm* %run_tm2195, i32 0, i32 5
  %1362 = load i32, i32* %tm_year2196, align 4
  %rem2197 = srem i32 %1362, 100
  %call2198 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 %add2192, i32 %1360, i32 %rem2197) #5
  br label %do.body.2199

do.body.2199:                                     ; preds = %sw.bb.2188
  %arraydecay2201 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2202 = call i64 @strlen(i8* %arraydecay2201) #6
  store i64 %call2202, i64* %len2200, align 8
  %1363 = load i64, i64* %len2200, align 8
  %1364 = load i64, i64* %width, align 8
  %cmp2204 = icmp ugt i64 %1363, %1364
  br i1 %cmp2204, label %cond.true.2206, label %cond.false.2207

cond.true.2206:                                   ; preds = %do.body.2199
  br label %cond.end.2209

cond.false.2207:                                  ; preds = %do.body.2199
  %1365 = load i64, i64* %width, align 8
  %1366 = load i64, i64* %len2200, align 8
  %sub2208 = sub i64 %1365, %1366
  br label %cond.end.2209

cond.end.2209:                                    ; preds = %cond.false.2207, %cond.true.2206
  %cond2210 = phi i64 [ 0, %cond.true.2206 ], [ %sub2208, %cond.false.2207 ]
  store i64 %cond2210, i64* %nspace2203, align 8
  %1367 = load i64, i64* %width, align 8
  %tobool2211 = icmp ne i64 %1367, 0
  br i1 %tobool2211, label %land.lhs.true.2212, label %if.end.2232

land.lhs.true.2212:                               ; preds = %cond.end.2209
  %1368 = load i32, i32* %justification, align 4
  %cmp2213 = icmp sgt i32 %1368, 0
  br i1 %cmp2213, label %if.then.2215, label %if.end.2232

if.then.2215:                                     ; preds = %land.lhs.true.2212
  br label %for.cond.2216

for.cond.2216:                                    ; preds = %for.inc.2229, %if.then.2215
  %1369 = load i64, i64* %nspace2203, align 8
  %tobool2217 = icmp ne i64 %1369, 0
  br i1 %tobool2217, label %for.body.2218, label %for.end.2231

for.body.2218:                                    ; preds = %for.cond.2216
  %1370 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1370, %struct.obstack** %__o2219, align 8
  %1371 = load %struct.obstack*, %struct.obstack** %__o2219, align 8
  %next_free2220 = getelementptr inbounds %struct.obstack, %struct.obstack* %1371, i32 0, i32 3
  %1372 = load i8*, i8** %next_free2220, align 8
  %add.ptr2221 = getelementptr inbounds i8, i8* %1372, i64 1
  %1373 = load %struct.obstack*, %struct.obstack** %__o2219, align 8
  %chunk_limit2222 = getelementptr inbounds %struct.obstack, %struct.obstack* %1373, i32 0, i32 4
  %1374 = load i8*, i8** %chunk_limit2222, align 8
  %cmp2223 = icmp ugt i8* %add.ptr2221, %1374
  br i1 %cmp2223, label %if.then.2225, label %if.end.2226

if.then.2225:                                     ; preds = %for.body.2218
  %1375 = load %struct.obstack*, %struct.obstack** %__o2219, align 8
  call void @_obstack_newchunk(%struct.obstack* %1375, i32 1)
  br label %if.end.2226

if.end.2226:                                      ; preds = %if.then.2225, %for.body.2218
  %1376 = load i8, i8* %padding, align 1
  %1377 = load %struct.obstack*, %struct.obstack** %__o2219, align 8
  %next_free2227 = getelementptr inbounds %struct.obstack, %struct.obstack* %1377, i32 0, i32 3
  %1378 = load i8*, i8** %next_free2227, align 8
  %incdec.ptr2228 = getelementptr inbounds i8, i8* %1378, i32 1
  store i8* %incdec.ptr2228, i8** %next_free2227, align 8
  store i8 %1376, i8* %1378, align 1
  br label %for.inc.2229

for.inc.2229:                                     ; preds = %if.end.2226
  %1379 = load i64, i64* %nspace2203, align 8
  %dec2230 = add i64 %1379, -1
  store i64 %dec2230, i64* %nspace2203, align 8
  br label %for.cond.2216

for.end.2231:                                     ; preds = %for.cond.2216
  br label %if.end.2232

if.end.2232:                                      ; preds = %for.end.2231, %land.lhs.true.2212, %cond.end.2209
  %1380 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1380, %struct.obstack** %__o2233, align 8
  %1381 = load i64, i64* %len2200, align 8
  %conv2235 = trunc i64 %1381 to i32
  store i32 %conv2235, i32* %__len2234, align 4
  %1382 = load %struct.obstack*, %struct.obstack** %__o2233, align 8
  %next_free2236 = getelementptr inbounds %struct.obstack, %struct.obstack* %1382, i32 0, i32 3
  %1383 = load i8*, i8** %next_free2236, align 8
  %1384 = load i32, i32* %__len2234, align 4
  %idx.ext2237 = sext i32 %1384 to i64
  %add.ptr2238 = getelementptr inbounds i8, i8* %1383, i64 %idx.ext2237
  %1385 = load %struct.obstack*, %struct.obstack** %__o2233, align 8
  %chunk_limit2239 = getelementptr inbounds %struct.obstack, %struct.obstack* %1385, i32 0, i32 4
  %1386 = load i8*, i8** %chunk_limit2239, align 8
  %cmp2240 = icmp ugt i8* %add.ptr2238, %1386
  br i1 %cmp2240, label %if.then.2242, label %if.end.2243

if.then.2242:                                     ; preds = %if.end.2232
  %1387 = load %struct.obstack*, %struct.obstack** %__o2233, align 8
  %1388 = load i32, i32* %__len2234, align 4
  call void @_obstack_newchunk(%struct.obstack* %1387, i32 %1388)
  br label %if.end.2243

if.end.2243:                                      ; preds = %if.then.2242, %if.end.2232
  %1389 = load %struct.obstack*, %struct.obstack** %__o2233, align 8
  %next_free2244 = getelementptr inbounds %struct.obstack, %struct.obstack* %1389, i32 0, i32 3
  %1390 = load i8*, i8** %next_free2244, align 8
  %arraydecay2245 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1391 = load i32, i32* %__len2234, align 4
  %conv2246 = sext i32 %1391 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1390, i8* %arraydecay2245, i64 %conv2246, i32 1, i1 false)
  %1392 = load i32, i32* %__len2234, align 4
  %1393 = load %struct.obstack*, %struct.obstack** %__o2233, align 8
  %next_free2247 = getelementptr inbounds %struct.obstack, %struct.obstack* %1393, i32 0, i32 3
  %1394 = load i8*, i8** %next_free2247, align 8
  %idx.ext2248 = sext i32 %1392 to i64
  %add.ptr2249 = getelementptr inbounds i8, i8* %1394, i64 %idx.ext2248
  store i8* %add.ptr2249, i8** %next_free2247, align 8
  %1395 = load i64, i64* %width, align 8
  %tobool2250 = icmp ne i64 %1395, 0
  br i1 %tobool2250, label %land.lhs.true.2251, label %if.end.2271

land.lhs.true.2251:                               ; preds = %if.end.2243
  %1396 = load i32, i32* %justification, align 4
  %cmp2252 = icmp slt i32 %1396, 0
  br i1 %cmp2252, label %if.then.2254, label %if.end.2271

if.then.2254:                                     ; preds = %land.lhs.true.2251
  br label %for.cond.2255

for.cond.2255:                                    ; preds = %for.inc.2268, %if.then.2254
  %1397 = load i64, i64* %nspace2203, align 8
  %tobool2256 = icmp ne i64 %1397, 0
  br i1 %tobool2256, label %for.body.2257, label %for.end.2270

for.body.2257:                                    ; preds = %for.cond.2255
  %1398 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1398, %struct.obstack** %__o2258, align 8
  %1399 = load %struct.obstack*, %struct.obstack** %__o2258, align 8
  %next_free2259 = getelementptr inbounds %struct.obstack, %struct.obstack* %1399, i32 0, i32 3
  %1400 = load i8*, i8** %next_free2259, align 8
  %add.ptr2260 = getelementptr inbounds i8, i8* %1400, i64 1
  %1401 = load %struct.obstack*, %struct.obstack** %__o2258, align 8
  %chunk_limit2261 = getelementptr inbounds %struct.obstack, %struct.obstack* %1401, i32 0, i32 4
  %1402 = load i8*, i8** %chunk_limit2261, align 8
  %cmp2262 = icmp ugt i8* %add.ptr2260, %1402
  br i1 %cmp2262, label %if.then.2264, label %if.end.2265

if.then.2264:                                     ; preds = %for.body.2257
  %1403 = load %struct.obstack*, %struct.obstack** %__o2258, align 8
  call void @_obstack_newchunk(%struct.obstack* %1403, i32 1)
  br label %if.end.2265

if.end.2265:                                      ; preds = %if.then.2264, %for.body.2257
  %1404 = load i8, i8* %padding, align 1
  %1405 = load %struct.obstack*, %struct.obstack** %__o2258, align 8
  %next_free2266 = getelementptr inbounds %struct.obstack, %struct.obstack* %1405, i32 0, i32 3
  %1406 = load i8*, i8** %next_free2266, align 8
  %incdec.ptr2267 = getelementptr inbounds i8, i8* %1406, i32 1
  store i8* %incdec.ptr2267, i8** %next_free2266, align 8
  store i8 %1404, i8* %1406, align 1
  br label %for.inc.2268

for.inc.2268:                                     ; preds = %if.end.2265
  %1407 = load i64, i64* %nspace2203, align 8
  %dec2269 = add i64 %1407, -1
  store i64 %dec2269, i64* %nspace2203, align 8
  br label %for.cond.2255

for.end.2270:                                     ; preds = %for.cond.2255
  br label %if.end.2271

if.end.2271:                                      ; preds = %for.end.2270, %land.lhs.true.2251, %if.end.2243
  br label %do.end.2272

do.end.2272:                                      ; preds = %if.end.2271
  br label %sw.epilog.2279

sw.default.2273:                                  ; preds = %sw.bb.215
  %call2274 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %1408 = load i8*, i8** %context_name.addr, align 8
  %1409 = load i64, i64* %i, align 8
  %1410 = load i8*, i8** %str.addr, align 8
  %arrayidx2275 = getelementptr inbounds i8, i8* %1410, i64 %1409
  %1411 = load i8, i8* %arrayidx2275, align 1
  %conv2276 = zext i8 %1411 to i32
  %1412 = load i64, i64* %i, align 8
  %1413 = load i8*, i8** %str.addr, align 8
  %arrayidx2277 = getelementptr inbounds i8, i8* %1413, i64 %1412
  %1414 = load i8, i8* %arrayidx2277, align 1
  %conv2278 = zext i8 %1414 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2274, i8* %1408, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i32 %conv2276, i32 %conv2278)
  br label %sw.epilog.2279

sw.epilog.2279:                                   ; preds = %sw.default.2273, %do.end.2272, %do.end.2187, %do.end.2110, %do.end.2027, %do.end.1946, %sw.epilog.1849, %do.end.1706, %do.end.1627, %sw.epilog.1548, %do.end.1405, %do.end.1330, %do.end.1255, %do.end.1180, %do.end.1098, %do.end.1013, %do.end.934, %do.end.855, %do.end.735, %do.end.651, %do.end.572, %do.end.482, %do.end.396, %do.end.327, %do.end.272
  br label %sw.epilog.7608

sw.bb.2280:                                       ; preds = %while.end
  %1415 = load i64, i64* %i, align 8
  %1416 = load i8*, i8** %str.addr, align 8
  %arrayidx2281 = getelementptr inbounds i8, i8* %1416, i64 %1415
  %1417 = load i8, i8* %arrayidx2281, align 1
  %conv2282 = zext i8 %1417 to i32
  switch i32 %conv2282, label %sw.default.6147 [
    i32 36, label %sw.bb.2283
    i32 42, label %sw.bb.2338
    i32 40, label %sw.bb.2420
    i32 123, label %sw.bb.2534
    i32 91, label %sw.bb.2901
    i32 35, label %sw.bb.3023
    i32 67, label %sw.bb.3100
    i32 100, label %sw.bb.3183
    i32 68, label %sw.bb.3326
    i32 101, label %sw.bb.3452
    i32 69, label %sw.bb.3531
    i32 102, label %sw.bb.3610
    i32 70, label %sw.bb.3685
    i32 108, label %sw.bb.3770
    i32 78, label %sw.bb.4077
    i32 110, label %sw.bb.4247
    i32 112, label %sw.bb.4329
    i32 113, label %sw.bb.4946
    i32 81, label %sw.bb.5025
    i32 115, label %sw.bb.5120
    i32 116, label %sw.bb.5571
    i32 84, label %sw.bb.5981
    i32 87, label %sw.bb.6062
  ]

sw.bb.2283:                                       ; preds = %sw.bb.2280
  br label %do.body.2284

do.body.2284:                                     ; preds = %sw.bb.2283
  %1418 = load i64, i64* %width, align 8
  %tobool2286 = icmp ne i64 %1418, 0
  br i1 %tobool2286, label %land.lhs.true.2287, label %if.end.2301

land.lhs.true.2287:                               ; preds = %do.body.2284
  %1419 = load i32, i32* %justification, align 4
  %cmp2288 = icmp slt i32 %1419, 0
  br i1 %cmp2288, label %if.then.2290, label %if.end.2301

if.then.2290:                                     ; preds = %land.lhs.true.2287
  %1420 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1420, %struct.obstack** %__o2291, align 8
  %1421 = load %struct.obstack*, %struct.obstack** %__o2291, align 8
  %next_free2292 = getelementptr inbounds %struct.obstack, %struct.obstack* %1421, i32 0, i32 3
  %1422 = load i8*, i8** %next_free2292, align 8
  %add.ptr2293 = getelementptr inbounds i8, i8* %1422, i64 1
  %1423 = load %struct.obstack*, %struct.obstack** %__o2291, align 8
  %chunk_limit2294 = getelementptr inbounds %struct.obstack, %struct.obstack* %1423, i32 0, i32 4
  %1424 = load i8*, i8** %chunk_limit2294, align 8
  %cmp2295 = icmp ugt i8* %add.ptr2293, %1424
  br i1 %cmp2295, label %if.then.2297, label %if.end.2298

if.then.2297:                                     ; preds = %if.then.2290
  %1425 = load %struct.obstack*, %struct.obstack** %__o2291, align 8
  call void @_obstack_newchunk(%struct.obstack* %1425, i32 1)
  br label %if.end.2298

if.end.2298:                                      ; preds = %if.then.2297, %if.then.2290
  %1426 = load %struct.obstack*, %struct.obstack** %__o2291, align 8
  %next_free2299 = getelementptr inbounds %struct.obstack, %struct.obstack* %1426, i32 0, i32 3
  %1427 = load i8*, i8** %next_free2299, align 8
  %incdec.ptr2300 = getelementptr inbounds i8, i8* %1427, i32 1
  store i8* %incdec.ptr2300, i8** %next_free2299, align 8
  store i8 36, i8* %1427, align 1
  br label %if.end.2301

if.end.2301:                                      ; preds = %if.end.2298, %land.lhs.true.2287, %do.body.2284
  store i32 0, i32* %a2285, align 4
  br label %for.cond.2302

for.cond.2302:                                    ; preds = %for.inc.2318, %if.end.2301
  %1428 = load i32, i32* %a2285, align 4
  %1429 = load i64, i64* %width, align 8
  %conv2303 = trunc i64 %1429 to i32
  %sub2304 = sub nsw i32 %conv2303, 1
  %cmp2305 = icmp slt i32 %1428, %sub2304
  br i1 %cmp2305, label %for.body.2307, label %for.end.2320

for.body.2307:                                    ; preds = %for.cond.2302
  %1430 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1430, %struct.obstack** %__o2308, align 8
  %1431 = load %struct.obstack*, %struct.obstack** %__o2308, align 8
  %next_free2309 = getelementptr inbounds %struct.obstack, %struct.obstack* %1431, i32 0, i32 3
  %1432 = load i8*, i8** %next_free2309, align 8
  %add.ptr2310 = getelementptr inbounds i8, i8* %1432, i64 1
  %1433 = load %struct.obstack*, %struct.obstack** %__o2308, align 8
  %chunk_limit2311 = getelementptr inbounds %struct.obstack, %struct.obstack* %1433, i32 0, i32 4
  %1434 = load i8*, i8** %chunk_limit2311, align 8
  %cmp2312 = icmp ugt i8* %add.ptr2310, %1434
  br i1 %cmp2312, label %if.then.2314, label %if.end.2315

if.then.2314:                                     ; preds = %for.body.2307
  %1435 = load %struct.obstack*, %struct.obstack** %__o2308, align 8
  call void @_obstack_newchunk(%struct.obstack* %1435, i32 1)
  br label %if.end.2315

if.end.2315:                                      ; preds = %if.then.2314, %for.body.2307
  %1436 = load i8, i8* %padding, align 1
  %1437 = load %struct.obstack*, %struct.obstack** %__o2308, align 8
  %next_free2316 = getelementptr inbounds %struct.obstack, %struct.obstack* %1437, i32 0, i32 3
  %1438 = load i8*, i8** %next_free2316, align 8
  %incdec.ptr2317 = getelementptr inbounds i8, i8* %1438, i32 1
  store i8* %incdec.ptr2317, i8** %next_free2316, align 8
  store i8 %1436, i8* %1438, align 1
  br label %for.inc.2318

for.inc.2318:                                     ; preds = %if.end.2315
  %1439 = load i32, i32* %a2285, align 4
  %inc2319 = add nsw i32 %1439, 1
  store i32 %inc2319, i32* %a2285, align 4
  br label %for.cond.2302

for.end.2320:                                     ; preds = %for.cond.2302
  %1440 = load i64, i64* %width, align 8
  %tobool2321 = icmp ne i64 %1440, 0
  br i1 %tobool2321, label %lor.lhs.false.2322, label %if.then.2325

lor.lhs.false.2322:                               ; preds = %for.end.2320
  %1441 = load i32, i32* %justification, align 4
  %cmp2323 = icmp sgt i32 %1441, 0
  br i1 %cmp2323, label %if.then.2325, label %if.end.2336

if.then.2325:                                     ; preds = %lor.lhs.false.2322, %for.end.2320
  %1442 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1442, %struct.obstack** %__o2326, align 8
  %1443 = load %struct.obstack*, %struct.obstack** %__o2326, align 8
  %next_free2327 = getelementptr inbounds %struct.obstack, %struct.obstack* %1443, i32 0, i32 3
  %1444 = load i8*, i8** %next_free2327, align 8
  %add.ptr2328 = getelementptr inbounds i8, i8* %1444, i64 1
  %1445 = load %struct.obstack*, %struct.obstack** %__o2326, align 8
  %chunk_limit2329 = getelementptr inbounds %struct.obstack, %struct.obstack* %1445, i32 0, i32 4
  %1446 = load i8*, i8** %chunk_limit2329, align 8
  %cmp2330 = icmp ugt i8* %add.ptr2328, %1446
  br i1 %cmp2330, label %if.then.2332, label %if.end.2333

if.then.2332:                                     ; preds = %if.then.2325
  %1447 = load %struct.obstack*, %struct.obstack** %__o2326, align 8
  call void @_obstack_newchunk(%struct.obstack* %1447, i32 1)
  br label %if.end.2333

if.end.2333:                                      ; preds = %if.then.2332, %if.then.2325
  %1448 = load %struct.obstack*, %struct.obstack** %__o2326, align 8
  %next_free2334 = getelementptr inbounds %struct.obstack, %struct.obstack* %1448, i32 0, i32 3
  %1449 = load i8*, i8** %next_free2334, align 8
  %incdec.ptr2335 = getelementptr inbounds i8, i8* %1449, i32 1
  store i8* %incdec.ptr2335, i8** %next_free2334, align 8
  store i8 36, i8* %1449, align 1
  br label %if.end.2336

if.end.2336:                                      ; preds = %if.end.2333, %lor.lhs.false.2322
  br label %do.end.2337

do.end.2337:                                      ; preds = %if.end.2336
  br label %sw.epilog.6153

sw.bb.2338:                                       ; preds = %sw.bb.2280
  %arraydecay2339 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1450 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm = getelementptr inbounds %struct.file_job, %struct.file_job* %1450, i32 0, i32 5
  %tm_hour2340 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm, i32 0, i32 2
  %1451 = load i32, i32* %tm_hour2340, align 4
  %1452 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm2341 = getelementptr inbounds %struct.file_job, %struct.file_job* %1452, i32 0, i32 5
  %tm_min2342 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm2341, i32 0, i32 1
  %1453 = load i32, i32* %tm_min2342, align 4
  %1454 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm2343 = getelementptr inbounds %struct.file_job, %struct.file_job* %1454, i32 0, i32 5
  %tm_sec2344 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm2343, i32 0, i32 0
  %1455 = load i32, i32* %tm_sec2344, align 4
  %call2345 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2339, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %1451, i32 %1453, i32 %1455) #5
  br label %do.body.2346

do.body.2346:                                     ; preds = %sw.bb.2338
  %arraydecay2348 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2349 = call i64 @strlen(i8* %arraydecay2348) #6
  store i64 %call2349, i64* %len2347, align 8
  %1456 = load i64, i64* %len2347, align 8
  %1457 = load i64, i64* %width, align 8
  %cmp2351 = icmp ugt i64 %1456, %1457
  br i1 %cmp2351, label %cond.true.2353, label %cond.false.2354

cond.true.2353:                                   ; preds = %do.body.2346
  br label %cond.end.2356

cond.false.2354:                                  ; preds = %do.body.2346
  %1458 = load i64, i64* %width, align 8
  %1459 = load i64, i64* %len2347, align 8
  %sub2355 = sub i64 %1458, %1459
  br label %cond.end.2356

cond.end.2356:                                    ; preds = %cond.false.2354, %cond.true.2353
  %cond2357 = phi i64 [ 0, %cond.true.2353 ], [ %sub2355, %cond.false.2354 ]
  store i64 %cond2357, i64* %nspace2350, align 8
  %1460 = load i64, i64* %width, align 8
  %tobool2358 = icmp ne i64 %1460, 0
  br i1 %tobool2358, label %land.lhs.true.2359, label %if.end.2379

land.lhs.true.2359:                               ; preds = %cond.end.2356
  %1461 = load i32, i32* %justification, align 4
  %cmp2360 = icmp sgt i32 %1461, 0
  br i1 %cmp2360, label %if.then.2362, label %if.end.2379

if.then.2362:                                     ; preds = %land.lhs.true.2359
  br label %for.cond.2363

for.cond.2363:                                    ; preds = %for.inc.2376, %if.then.2362
  %1462 = load i64, i64* %nspace2350, align 8
  %tobool2364 = icmp ne i64 %1462, 0
  br i1 %tobool2364, label %for.body.2365, label %for.end.2378

for.body.2365:                                    ; preds = %for.cond.2363
  %1463 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1463, %struct.obstack** %__o2366, align 8
  %1464 = load %struct.obstack*, %struct.obstack** %__o2366, align 8
  %next_free2367 = getelementptr inbounds %struct.obstack, %struct.obstack* %1464, i32 0, i32 3
  %1465 = load i8*, i8** %next_free2367, align 8
  %add.ptr2368 = getelementptr inbounds i8, i8* %1465, i64 1
  %1466 = load %struct.obstack*, %struct.obstack** %__o2366, align 8
  %chunk_limit2369 = getelementptr inbounds %struct.obstack, %struct.obstack* %1466, i32 0, i32 4
  %1467 = load i8*, i8** %chunk_limit2369, align 8
  %cmp2370 = icmp ugt i8* %add.ptr2368, %1467
  br i1 %cmp2370, label %if.then.2372, label %if.end.2373

if.then.2372:                                     ; preds = %for.body.2365
  %1468 = load %struct.obstack*, %struct.obstack** %__o2366, align 8
  call void @_obstack_newchunk(%struct.obstack* %1468, i32 1)
  br label %if.end.2373

if.end.2373:                                      ; preds = %if.then.2372, %for.body.2365
  %1469 = load i8, i8* %padding, align 1
  %1470 = load %struct.obstack*, %struct.obstack** %__o2366, align 8
  %next_free2374 = getelementptr inbounds %struct.obstack, %struct.obstack* %1470, i32 0, i32 3
  %1471 = load i8*, i8** %next_free2374, align 8
  %incdec.ptr2375 = getelementptr inbounds i8, i8* %1471, i32 1
  store i8* %incdec.ptr2375, i8** %next_free2374, align 8
  store i8 %1469, i8* %1471, align 1
  br label %for.inc.2376

for.inc.2376:                                     ; preds = %if.end.2373
  %1472 = load i64, i64* %nspace2350, align 8
  %dec2377 = add i64 %1472, -1
  store i64 %dec2377, i64* %nspace2350, align 8
  br label %for.cond.2363

for.end.2378:                                     ; preds = %for.cond.2363
  br label %if.end.2379

if.end.2379:                                      ; preds = %for.end.2378, %land.lhs.true.2359, %cond.end.2356
  %1473 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1473, %struct.obstack** %__o2380, align 8
  %1474 = load i64, i64* %len2347, align 8
  %conv2382 = trunc i64 %1474 to i32
  store i32 %conv2382, i32* %__len2381, align 4
  %1475 = load %struct.obstack*, %struct.obstack** %__o2380, align 8
  %next_free2383 = getelementptr inbounds %struct.obstack, %struct.obstack* %1475, i32 0, i32 3
  %1476 = load i8*, i8** %next_free2383, align 8
  %1477 = load i32, i32* %__len2381, align 4
  %idx.ext2384 = sext i32 %1477 to i64
  %add.ptr2385 = getelementptr inbounds i8, i8* %1476, i64 %idx.ext2384
  %1478 = load %struct.obstack*, %struct.obstack** %__o2380, align 8
  %chunk_limit2386 = getelementptr inbounds %struct.obstack, %struct.obstack* %1478, i32 0, i32 4
  %1479 = load i8*, i8** %chunk_limit2386, align 8
  %cmp2387 = icmp ugt i8* %add.ptr2385, %1479
  br i1 %cmp2387, label %if.then.2389, label %if.end.2390

if.then.2389:                                     ; preds = %if.end.2379
  %1480 = load %struct.obstack*, %struct.obstack** %__o2380, align 8
  %1481 = load i32, i32* %__len2381, align 4
  call void @_obstack_newchunk(%struct.obstack* %1480, i32 %1481)
  br label %if.end.2390

if.end.2390:                                      ; preds = %if.then.2389, %if.end.2379
  %1482 = load %struct.obstack*, %struct.obstack** %__o2380, align 8
  %next_free2391 = getelementptr inbounds %struct.obstack, %struct.obstack* %1482, i32 0, i32 3
  %1483 = load i8*, i8** %next_free2391, align 8
  %arraydecay2392 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1484 = load i32, i32* %__len2381, align 4
  %conv2393 = sext i32 %1484 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1483, i8* %arraydecay2392, i64 %conv2393, i32 1, i1 false)
  %1485 = load i32, i32* %__len2381, align 4
  %1486 = load %struct.obstack*, %struct.obstack** %__o2380, align 8
  %next_free2394 = getelementptr inbounds %struct.obstack, %struct.obstack* %1486, i32 0, i32 3
  %1487 = load i8*, i8** %next_free2394, align 8
  %idx.ext2395 = sext i32 %1485 to i64
  %add.ptr2396 = getelementptr inbounds i8, i8* %1487, i64 %idx.ext2395
  store i8* %add.ptr2396, i8** %next_free2394, align 8
  %1488 = load i64, i64* %width, align 8
  %tobool2397 = icmp ne i64 %1488, 0
  br i1 %tobool2397, label %land.lhs.true.2398, label %if.end.2418

land.lhs.true.2398:                               ; preds = %if.end.2390
  %1489 = load i32, i32* %justification, align 4
  %cmp2399 = icmp slt i32 %1489, 0
  br i1 %cmp2399, label %if.then.2401, label %if.end.2418

if.then.2401:                                     ; preds = %land.lhs.true.2398
  br label %for.cond.2402

for.cond.2402:                                    ; preds = %for.inc.2415, %if.then.2401
  %1490 = load i64, i64* %nspace2350, align 8
  %tobool2403 = icmp ne i64 %1490, 0
  br i1 %tobool2403, label %for.body.2404, label %for.end.2417

for.body.2404:                                    ; preds = %for.cond.2402
  %1491 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1491, %struct.obstack** %__o2405, align 8
  %1492 = load %struct.obstack*, %struct.obstack** %__o2405, align 8
  %next_free2406 = getelementptr inbounds %struct.obstack, %struct.obstack* %1492, i32 0, i32 3
  %1493 = load i8*, i8** %next_free2406, align 8
  %add.ptr2407 = getelementptr inbounds i8, i8* %1493, i64 1
  %1494 = load %struct.obstack*, %struct.obstack** %__o2405, align 8
  %chunk_limit2408 = getelementptr inbounds %struct.obstack, %struct.obstack* %1494, i32 0, i32 4
  %1495 = load i8*, i8** %chunk_limit2408, align 8
  %cmp2409 = icmp ugt i8* %add.ptr2407, %1495
  br i1 %cmp2409, label %if.then.2411, label %if.end.2412

if.then.2411:                                     ; preds = %for.body.2404
  %1496 = load %struct.obstack*, %struct.obstack** %__o2405, align 8
  call void @_obstack_newchunk(%struct.obstack* %1496, i32 1)
  br label %if.end.2412

if.end.2412:                                      ; preds = %if.then.2411, %for.body.2404
  %1497 = load i8, i8* %padding, align 1
  %1498 = load %struct.obstack*, %struct.obstack** %__o2405, align 8
  %next_free2413 = getelementptr inbounds %struct.obstack, %struct.obstack* %1498, i32 0, i32 3
  %1499 = load i8*, i8** %next_free2413, align 8
  %incdec.ptr2414 = getelementptr inbounds i8, i8* %1499, i32 1
  store i8* %incdec.ptr2414, i8** %next_free2413, align 8
  store i8 %1497, i8* %1499, align 1
  br label %for.inc.2415

for.inc.2415:                                     ; preds = %if.end.2412
  %1500 = load i64, i64* %nspace2350, align 8
  %dec2416 = add i64 %1500, -1
  store i64 %dec2416, i64* %nspace2350, align 8
  br label %for.cond.2402

for.end.2417:                                     ; preds = %for.cond.2402
  br label %if.end.2418

if.end.2418:                                      ; preds = %for.end.2417, %land.lhs.true.2398, %if.end.2390
  br label %do.end.2419

do.end.2419:                                      ; preds = %if.end.2418
  br label %sw.epilog.6153

sw.bb.2420:                                       ; preds = %sw.bb.2280
  store i64 0, i64* %j, align 8
  %1501 = load i64, i64* %i, align 8
  %inc2421 = add i64 %1501, 1
  store i64 %inc2421, i64* %i, align 8
  br label %for.cond.2422

for.cond.2422:                                    ; preds = %for.inc.2439, %sw.bb.2420
  %1502 = load i64, i64* %i, align 8
  %1503 = load i8*, i8** %str.addr, align 8
  %arrayidx2423 = getelementptr inbounds i8, i8* %1503, i64 %1502
  %1504 = load i8, i8* %arrayidx2423, align 1
  %conv2424 = zext i8 %1504 to i32
  %tobool2425 = icmp ne i32 %conv2424, 0
  br i1 %tobool2425, label %land.lhs.true.2426, label %land.end.2434

land.lhs.true.2426:                               ; preds = %for.cond.2422
  %1505 = load i64, i64* %i, align 8
  %1506 = load i8*, i8** %str.addr, align 8
  %arrayidx2427 = getelementptr inbounds i8, i8* %1506, i64 %1505
  %1507 = load i8, i8* %arrayidx2427, align 1
  %conv2428 = zext i8 %1507 to i32
  %cmp2429 = icmp ne i32 %conv2428, 41
  br i1 %cmp2429, label %land.rhs.2431, label %land.end.2434

land.rhs.2431:                                    ; preds = %land.lhs.true.2426
  %1508 = load i64, i64* %j, align 8
  %cmp2432 = icmp ult i64 %1508, 511
  br label %land.end.2434

land.end.2434:                                    ; preds = %land.rhs.2431, %land.lhs.true.2426, %for.cond.2422
  %1509 = phi i1 [ false, %land.lhs.true.2426 ], [ false, %for.cond.2422 ], [ %cmp2432, %land.rhs.2431 ]
  br i1 %1509, label %for.body.2435, label %for.end.2441

for.body.2435:                                    ; preds = %land.end.2434
  %1510 = load i64, i64* %i, align 8
  %1511 = load i8*, i8** %str.addr, align 8
  %arrayidx2436 = getelementptr inbounds i8, i8* %1511, i64 %1510
  %1512 = load i8, i8* %arrayidx2436, align 1
  %1513 = load i64, i64* %j, align 8
  %inc2437 = add i64 %1513, 1
  store i64 %inc2437, i64* %j, align 8
  %arrayidx2438 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %1513
  store i8 %1512, i8* %arrayidx2438, align 1
  br label %for.inc.2439

for.inc.2439:                                     ; preds = %for.body.2435
  %1514 = load i64, i64* %i, align 8
  %inc2440 = add i64 %1514, 1
  store i64 %inc2440, i64* %i, align 8
  br label %for.cond.2422

for.end.2441:                                     ; preds = %land.end.2434
  %1515 = load i64, i64* %i, align 8
  %1516 = load i8*, i8** %str.addr, align 8
  %arrayidx2442 = getelementptr inbounds i8, i8* %1516, i64 %1515
  %1517 = load i8, i8* %arrayidx2442, align 1
  %conv2443 = zext i8 %1517 to i32
  %cmp2444 = icmp eq i32 %conv2443, 0
  br i1 %cmp2444, label %if.then.2446, label %if.end.2448

if.then.2446:                                     ; preds = %for.end.2441
  %call2447 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %1518 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2447, i8* %1518, i32 41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 41)
  br label %if.end.2448

if.end.2448:                                      ; preds = %if.then.2446, %for.end.2441
  %1519 = load i64, i64* %i, align 8
  %1520 = load i8*, i8** %str.addr, align 8
  %arrayidx2449 = getelementptr inbounds i8, i8* %1520, i64 %1519
  %1521 = load i8, i8* %arrayidx2449, align 1
  %conv2450 = zext i8 %1521 to i32
  %cmp2451 = icmp ne i32 %conv2450, 41
  br i1 %cmp2451, label %if.then.2453, label %if.end.2455

if.then.2453:                                     ; preds = %if.end.2448
  %call2454 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #5
  %1522 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2454, i8* %1522, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.2455

if.end.2455:                                      ; preds = %if.then.2453, %if.end.2448
  %1523 = load i64, i64* %j, align 8
  %arrayidx2456 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %1523
  store i8 0, i8* %arrayidx2456, align 1
  %arraydecay2457 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2458 = call i8* @getenv(i8* %arraydecay2457) #5
  store i8* %call2458, i8** %cp, align 8
  %1524 = load i8*, i8** %cp, align 8
  %tobool2459 = icmp ne i8* %1524, null
  br i1 %tobool2459, label %if.then.2460, label %if.end.2533

if.then.2460:                                     ; preds = %if.end.2455
  br label %do.body.2461

do.body.2461:                                     ; preds = %if.then.2460
  %1525 = load i8*, i8** %cp, align 8
  %call2463 = call i64 @strlen(i8* %1525) #6
  store i64 %call2463, i64* %len2462, align 8
  %1526 = load i64, i64* %len2462, align 8
  %1527 = load i64, i64* %width, align 8
  %cmp2465 = icmp ugt i64 %1526, %1527
  br i1 %cmp2465, label %cond.true.2467, label %cond.false.2468

cond.true.2467:                                   ; preds = %do.body.2461
  br label %cond.end.2470

cond.false.2468:                                  ; preds = %do.body.2461
  %1528 = load i64, i64* %width, align 8
  %1529 = load i64, i64* %len2462, align 8
  %sub2469 = sub i64 %1528, %1529
  br label %cond.end.2470

cond.end.2470:                                    ; preds = %cond.false.2468, %cond.true.2467
  %cond2471 = phi i64 [ 0, %cond.true.2467 ], [ %sub2469, %cond.false.2468 ]
  store i64 %cond2471, i64* %nspace2464, align 8
  %1530 = load i64, i64* %width, align 8
  %tobool2472 = icmp ne i64 %1530, 0
  br i1 %tobool2472, label %land.lhs.true.2473, label %if.end.2493

land.lhs.true.2473:                               ; preds = %cond.end.2470
  %1531 = load i32, i32* %justification, align 4
  %cmp2474 = icmp sgt i32 %1531, 0
  br i1 %cmp2474, label %if.then.2476, label %if.end.2493

if.then.2476:                                     ; preds = %land.lhs.true.2473
  br label %for.cond.2477

for.cond.2477:                                    ; preds = %for.inc.2490, %if.then.2476
  %1532 = load i64, i64* %nspace2464, align 8
  %tobool2478 = icmp ne i64 %1532, 0
  br i1 %tobool2478, label %for.body.2479, label %for.end.2492

for.body.2479:                                    ; preds = %for.cond.2477
  %1533 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1533, %struct.obstack** %__o2480, align 8
  %1534 = load %struct.obstack*, %struct.obstack** %__o2480, align 8
  %next_free2481 = getelementptr inbounds %struct.obstack, %struct.obstack* %1534, i32 0, i32 3
  %1535 = load i8*, i8** %next_free2481, align 8
  %add.ptr2482 = getelementptr inbounds i8, i8* %1535, i64 1
  %1536 = load %struct.obstack*, %struct.obstack** %__o2480, align 8
  %chunk_limit2483 = getelementptr inbounds %struct.obstack, %struct.obstack* %1536, i32 0, i32 4
  %1537 = load i8*, i8** %chunk_limit2483, align 8
  %cmp2484 = icmp ugt i8* %add.ptr2482, %1537
  br i1 %cmp2484, label %if.then.2486, label %if.end.2487

if.then.2486:                                     ; preds = %for.body.2479
  %1538 = load %struct.obstack*, %struct.obstack** %__o2480, align 8
  call void @_obstack_newchunk(%struct.obstack* %1538, i32 1)
  br label %if.end.2487

if.end.2487:                                      ; preds = %if.then.2486, %for.body.2479
  %1539 = load i8, i8* %padding, align 1
  %1540 = load %struct.obstack*, %struct.obstack** %__o2480, align 8
  %next_free2488 = getelementptr inbounds %struct.obstack, %struct.obstack* %1540, i32 0, i32 3
  %1541 = load i8*, i8** %next_free2488, align 8
  %incdec.ptr2489 = getelementptr inbounds i8, i8* %1541, i32 1
  store i8* %incdec.ptr2489, i8** %next_free2488, align 8
  store i8 %1539, i8* %1541, align 1
  br label %for.inc.2490

for.inc.2490:                                     ; preds = %if.end.2487
  %1542 = load i64, i64* %nspace2464, align 8
  %dec2491 = add i64 %1542, -1
  store i64 %dec2491, i64* %nspace2464, align 8
  br label %for.cond.2477

for.end.2492:                                     ; preds = %for.cond.2477
  br label %if.end.2493

if.end.2493:                                      ; preds = %for.end.2492, %land.lhs.true.2473, %cond.end.2470
  %1543 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1543, %struct.obstack** %__o2494, align 8
  %1544 = load i64, i64* %len2462, align 8
  %conv2496 = trunc i64 %1544 to i32
  store i32 %conv2496, i32* %__len2495, align 4
  %1545 = load %struct.obstack*, %struct.obstack** %__o2494, align 8
  %next_free2497 = getelementptr inbounds %struct.obstack, %struct.obstack* %1545, i32 0, i32 3
  %1546 = load i8*, i8** %next_free2497, align 8
  %1547 = load i32, i32* %__len2495, align 4
  %idx.ext2498 = sext i32 %1547 to i64
  %add.ptr2499 = getelementptr inbounds i8, i8* %1546, i64 %idx.ext2498
  %1548 = load %struct.obstack*, %struct.obstack** %__o2494, align 8
  %chunk_limit2500 = getelementptr inbounds %struct.obstack, %struct.obstack* %1548, i32 0, i32 4
  %1549 = load i8*, i8** %chunk_limit2500, align 8
  %cmp2501 = icmp ugt i8* %add.ptr2499, %1549
  br i1 %cmp2501, label %if.then.2503, label %if.end.2504

if.then.2503:                                     ; preds = %if.end.2493
  %1550 = load %struct.obstack*, %struct.obstack** %__o2494, align 8
  %1551 = load i32, i32* %__len2495, align 4
  call void @_obstack_newchunk(%struct.obstack* %1550, i32 %1551)
  br label %if.end.2504

if.end.2504:                                      ; preds = %if.then.2503, %if.end.2493
  %1552 = load %struct.obstack*, %struct.obstack** %__o2494, align 8
  %next_free2505 = getelementptr inbounds %struct.obstack, %struct.obstack* %1552, i32 0, i32 3
  %1553 = load i8*, i8** %next_free2505, align 8
  %1554 = load i8*, i8** %cp, align 8
  %1555 = load i32, i32* %__len2495, align 4
  %conv2506 = sext i32 %1555 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1553, i8* %1554, i64 %conv2506, i32 1, i1 false)
  %1556 = load i32, i32* %__len2495, align 4
  %1557 = load %struct.obstack*, %struct.obstack** %__o2494, align 8
  %next_free2507 = getelementptr inbounds %struct.obstack, %struct.obstack* %1557, i32 0, i32 3
  %1558 = load i8*, i8** %next_free2507, align 8
  %idx.ext2508 = sext i32 %1556 to i64
  %add.ptr2509 = getelementptr inbounds i8, i8* %1558, i64 %idx.ext2508
  store i8* %add.ptr2509, i8** %next_free2507, align 8
  %1559 = load i64, i64* %width, align 8
  %tobool2510 = icmp ne i64 %1559, 0
  br i1 %tobool2510, label %land.lhs.true.2511, label %if.end.2531

land.lhs.true.2511:                               ; preds = %if.end.2504
  %1560 = load i32, i32* %justification, align 4
  %cmp2512 = icmp slt i32 %1560, 0
  br i1 %cmp2512, label %if.then.2514, label %if.end.2531

if.then.2514:                                     ; preds = %land.lhs.true.2511
  br label %for.cond.2515

for.cond.2515:                                    ; preds = %for.inc.2528, %if.then.2514
  %1561 = load i64, i64* %nspace2464, align 8
  %tobool2516 = icmp ne i64 %1561, 0
  br i1 %tobool2516, label %for.body.2517, label %for.end.2530

for.body.2517:                                    ; preds = %for.cond.2515
  %1562 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1562, %struct.obstack** %__o2518, align 8
  %1563 = load %struct.obstack*, %struct.obstack** %__o2518, align 8
  %next_free2519 = getelementptr inbounds %struct.obstack, %struct.obstack* %1563, i32 0, i32 3
  %1564 = load i8*, i8** %next_free2519, align 8
  %add.ptr2520 = getelementptr inbounds i8, i8* %1564, i64 1
  %1565 = load %struct.obstack*, %struct.obstack** %__o2518, align 8
  %chunk_limit2521 = getelementptr inbounds %struct.obstack, %struct.obstack* %1565, i32 0, i32 4
  %1566 = load i8*, i8** %chunk_limit2521, align 8
  %cmp2522 = icmp ugt i8* %add.ptr2520, %1566
  br i1 %cmp2522, label %if.then.2524, label %if.end.2525

if.then.2524:                                     ; preds = %for.body.2517
  %1567 = load %struct.obstack*, %struct.obstack** %__o2518, align 8
  call void @_obstack_newchunk(%struct.obstack* %1567, i32 1)
  br label %if.end.2525

if.end.2525:                                      ; preds = %if.then.2524, %for.body.2517
  %1568 = load i8, i8* %padding, align 1
  %1569 = load %struct.obstack*, %struct.obstack** %__o2518, align 8
  %next_free2526 = getelementptr inbounds %struct.obstack, %struct.obstack* %1569, i32 0, i32 3
  %1570 = load i8*, i8** %next_free2526, align 8
  %incdec.ptr2527 = getelementptr inbounds i8, i8* %1570, i32 1
  store i8* %incdec.ptr2527, i8** %next_free2526, align 8
  store i8 %1568, i8* %1570, align 1
  br label %for.inc.2528

for.inc.2528:                                     ; preds = %if.end.2525
  %1571 = load i64, i64* %nspace2464, align 8
  %dec2529 = add i64 %1571, -1
  store i64 %dec2529, i64* %nspace2464, align 8
  br label %for.cond.2515

for.end.2530:                                     ; preds = %for.cond.2515
  br label %if.end.2531

if.end.2531:                                      ; preds = %for.end.2530, %land.lhs.true.2511, %if.end.2504
  br label %do.end.2532

do.end.2532:                                      ; preds = %if.end.2531
  br label %if.end.2533

if.end.2533:                                      ; preds = %do.end.2532, %if.end.2455
  br label %sw.epilog.6153

sw.bb.2534:                                       ; preds = %sw.bb.2280
  store i8* null, i8** %cp2, align 8
  store i64 0, i64* %j, align 8
  %1572 = load i64, i64* %i, align 8
  %inc2535 = add i64 %1572, 1
  store i64 %inc2535, i64* %i, align 8
  br label %for.cond.2536

for.cond.2536:                                    ; preds = %for.inc.2560, %sw.bb.2534
  %1573 = load i64, i64* %i, align 8
  %1574 = load i8*, i8** %str.addr, align 8
  %arrayidx2537 = getelementptr inbounds i8, i8* %1574, i64 %1573
  %1575 = load i8, i8* %arrayidx2537, align 1
  %conv2538 = zext i8 %1575 to i32
  %cmp2539 = icmp ne i32 %conv2538, 125
  br i1 %cmp2539, label %land.rhs.2541, label %land.end.2544

land.rhs.2541:                                    ; preds = %for.cond.2536
  %1576 = load i64, i64* %j, align 8
  %cmp2542 = icmp ult i64 %1576, 511
  br label %land.end.2544

land.end.2544:                                    ; preds = %land.rhs.2541, %for.cond.2536
  %1577 = phi i1 [ false, %for.cond.2536 ], [ %cmp2542, %land.rhs.2541 ]
  br i1 %1577, label %for.body.2545, label %for.end.2562

for.body.2545:                                    ; preds = %land.end.2544
  %1578 = load i64, i64* %i, align 8
  %1579 = load i8*, i8** %str.addr, align 8
  %arrayidx2546 = getelementptr inbounds i8, i8* %1579, i64 %1578
  %1580 = load i8, i8* %arrayidx2546, align 1
  %conv2547 = zext i8 %1580 to i32
  switch i32 %conv2547, label %sw.default.2555 [
    i32 0, label %sw.bb.2548
    i32 58, label %sw.bb.2550
  ]

sw.bb.2548:                                       ; preds = %for.body.2545
  %call2549 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %1581 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2549, i8* %1581, i32 125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 125)
  br label %sw.epilog.2559

sw.bb.2550:                                       ; preds = %for.body.2545
  %1582 = load i64, i64* %j, align 8
  %inc2551 = add i64 %1582, 1
  store i64 %inc2551, i64* %j, align 8
  %arrayidx2552 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %1582
  store i8 0, i8* %arrayidx2552, align 1
  %arraydecay2553 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1583 = load i64, i64* %j, align 8
  %add.ptr2554 = getelementptr inbounds i8, i8* %arraydecay2553, i64 %1583
  store i8* %add.ptr2554, i8** %cp2, align 8
  br label %sw.epilog.2559

sw.default.2555:                                  ; preds = %for.body.2545
  %1584 = load i64, i64* %i, align 8
  %1585 = load i8*, i8** %str.addr, align 8
  %arrayidx2556 = getelementptr inbounds i8, i8* %1585, i64 %1584
  %1586 = load i8, i8* %arrayidx2556, align 1
  %1587 = load i64, i64* %j, align 8
  %inc2557 = add i64 %1587, 1
  store i64 %inc2557, i64* %j, align 8
  %arrayidx2558 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %1587
  store i8 %1586, i8* %arrayidx2558, align 1
  br label %sw.epilog.2559

sw.epilog.2559:                                   ; preds = %sw.default.2555, %sw.bb.2550, %sw.bb.2548
  br label %for.inc.2560

for.inc.2560:                                     ; preds = %sw.epilog.2559
  %1588 = load i64, i64* %i, align 8
  %inc2561 = add i64 %1588, 1
  store i64 %inc2561, i64* %i, align 8
  br label %for.cond.2536

for.end.2562:                                     ; preds = %land.end.2544
  %1589 = load i64, i64* %i, align 8
  %1590 = load i8*, i8** %str.addr, align 8
  %arrayidx2563 = getelementptr inbounds i8, i8* %1590, i64 %1589
  %1591 = load i8, i8* %arrayidx2563, align 1
  %conv2564 = zext i8 %1591 to i32
  %cmp2565 = icmp ne i32 %conv2564, 125
  br i1 %cmp2565, label %if.then.2567, label %if.end.2569

if.then.2567:                                     ; preds = %for.end.2562
  %call2568 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #5
  %1592 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2568, i8* %1592, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.2569

if.end.2569:                                      ; preds = %if.then.2567, %for.end.2562
  %1593 = load i64, i64* %j, align 8
  %arrayidx2570 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %1593
  store i8 0, i8* %arrayidx2570, align 1
  %arraydecay2571 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call2572 = call i8* @getenv(i8* %arraydecay2571) #5
  store i8* %call2572, i8** %cp, align 8
  %1594 = load i8*, i8** %cp2, align 8
  %cmp2573 = icmp eq i8* %1594, null
  br i1 %cmp2573, label %if.then.2579, label %lor.lhs.false.2575

lor.lhs.false.2575:                               ; preds = %if.end.2569
  %1595 = load i8*, i8** %cp2, align 8
  %1596 = load i8, i8* %1595, align 1
  %conv2576 = zext i8 %1596 to i32
  %cmp2577 = icmp eq i32 %conv2576, 0
  br i1 %cmp2577, label %if.then.2579, label %if.else.2655

if.then.2579:                                     ; preds = %lor.lhs.false.2575, %if.end.2569
  %1597 = load i8*, i8** %cp, align 8
  %tobool2580 = icmp ne i8* %1597, null
  br i1 %tobool2580, label %if.then.2581, label %if.end.2654

if.then.2581:                                     ; preds = %if.then.2579
  br label %do.body.2582

do.body.2582:                                     ; preds = %if.then.2581
  %1598 = load i8*, i8** %cp, align 8
  %call2584 = call i64 @strlen(i8* %1598) #6
  store i64 %call2584, i64* %len2583, align 8
  %1599 = load i64, i64* %len2583, align 8
  %1600 = load i64, i64* %width, align 8
  %cmp2586 = icmp ugt i64 %1599, %1600
  br i1 %cmp2586, label %cond.true.2588, label %cond.false.2589

cond.true.2588:                                   ; preds = %do.body.2582
  br label %cond.end.2591

cond.false.2589:                                  ; preds = %do.body.2582
  %1601 = load i64, i64* %width, align 8
  %1602 = load i64, i64* %len2583, align 8
  %sub2590 = sub i64 %1601, %1602
  br label %cond.end.2591

cond.end.2591:                                    ; preds = %cond.false.2589, %cond.true.2588
  %cond2592 = phi i64 [ 0, %cond.true.2588 ], [ %sub2590, %cond.false.2589 ]
  store i64 %cond2592, i64* %nspace2585, align 8
  %1603 = load i64, i64* %width, align 8
  %tobool2593 = icmp ne i64 %1603, 0
  br i1 %tobool2593, label %land.lhs.true.2594, label %if.end.2614

land.lhs.true.2594:                               ; preds = %cond.end.2591
  %1604 = load i32, i32* %justification, align 4
  %cmp2595 = icmp sgt i32 %1604, 0
  br i1 %cmp2595, label %if.then.2597, label %if.end.2614

if.then.2597:                                     ; preds = %land.lhs.true.2594
  br label %for.cond.2598

for.cond.2598:                                    ; preds = %for.inc.2611, %if.then.2597
  %1605 = load i64, i64* %nspace2585, align 8
  %tobool2599 = icmp ne i64 %1605, 0
  br i1 %tobool2599, label %for.body.2600, label %for.end.2613

for.body.2600:                                    ; preds = %for.cond.2598
  %1606 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1606, %struct.obstack** %__o2601, align 8
  %1607 = load %struct.obstack*, %struct.obstack** %__o2601, align 8
  %next_free2602 = getelementptr inbounds %struct.obstack, %struct.obstack* %1607, i32 0, i32 3
  %1608 = load i8*, i8** %next_free2602, align 8
  %add.ptr2603 = getelementptr inbounds i8, i8* %1608, i64 1
  %1609 = load %struct.obstack*, %struct.obstack** %__o2601, align 8
  %chunk_limit2604 = getelementptr inbounds %struct.obstack, %struct.obstack* %1609, i32 0, i32 4
  %1610 = load i8*, i8** %chunk_limit2604, align 8
  %cmp2605 = icmp ugt i8* %add.ptr2603, %1610
  br i1 %cmp2605, label %if.then.2607, label %if.end.2608

if.then.2607:                                     ; preds = %for.body.2600
  %1611 = load %struct.obstack*, %struct.obstack** %__o2601, align 8
  call void @_obstack_newchunk(%struct.obstack* %1611, i32 1)
  br label %if.end.2608

if.end.2608:                                      ; preds = %if.then.2607, %for.body.2600
  %1612 = load i8, i8* %padding, align 1
  %1613 = load %struct.obstack*, %struct.obstack** %__o2601, align 8
  %next_free2609 = getelementptr inbounds %struct.obstack, %struct.obstack* %1613, i32 0, i32 3
  %1614 = load i8*, i8** %next_free2609, align 8
  %incdec.ptr2610 = getelementptr inbounds i8, i8* %1614, i32 1
  store i8* %incdec.ptr2610, i8** %next_free2609, align 8
  store i8 %1612, i8* %1614, align 1
  br label %for.inc.2611

for.inc.2611:                                     ; preds = %if.end.2608
  %1615 = load i64, i64* %nspace2585, align 8
  %dec2612 = add i64 %1615, -1
  store i64 %dec2612, i64* %nspace2585, align 8
  br label %for.cond.2598

for.end.2613:                                     ; preds = %for.cond.2598
  br label %if.end.2614

if.end.2614:                                      ; preds = %for.end.2613, %land.lhs.true.2594, %cond.end.2591
  %1616 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1616, %struct.obstack** %__o2615, align 8
  %1617 = load i64, i64* %len2583, align 8
  %conv2617 = trunc i64 %1617 to i32
  store i32 %conv2617, i32* %__len2616, align 4
  %1618 = load %struct.obstack*, %struct.obstack** %__o2615, align 8
  %next_free2618 = getelementptr inbounds %struct.obstack, %struct.obstack* %1618, i32 0, i32 3
  %1619 = load i8*, i8** %next_free2618, align 8
  %1620 = load i32, i32* %__len2616, align 4
  %idx.ext2619 = sext i32 %1620 to i64
  %add.ptr2620 = getelementptr inbounds i8, i8* %1619, i64 %idx.ext2619
  %1621 = load %struct.obstack*, %struct.obstack** %__o2615, align 8
  %chunk_limit2621 = getelementptr inbounds %struct.obstack, %struct.obstack* %1621, i32 0, i32 4
  %1622 = load i8*, i8** %chunk_limit2621, align 8
  %cmp2622 = icmp ugt i8* %add.ptr2620, %1622
  br i1 %cmp2622, label %if.then.2624, label %if.end.2625

if.then.2624:                                     ; preds = %if.end.2614
  %1623 = load %struct.obstack*, %struct.obstack** %__o2615, align 8
  %1624 = load i32, i32* %__len2616, align 4
  call void @_obstack_newchunk(%struct.obstack* %1623, i32 %1624)
  br label %if.end.2625

if.end.2625:                                      ; preds = %if.then.2624, %if.end.2614
  %1625 = load %struct.obstack*, %struct.obstack** %__o2615, align 8
  %next_free2626 = getelementptr inbounds %struct.obstack, %struct.obstack* %1625, i32 0, i32 3
  %1626 = load i8*, i8** %next_free2626, align 8
  %1627 = load i8*, i8** %cp, align 8
  %1628 = load i32, i32* %__len2616, align 4
  %conv2627 = sext i32 %1628 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1626, i8* %1627, i64 %conv2627, i32 1, i1 false)
  %1629 = load i32, i32* %__len2616, align 4
  %1630 = load %struct.obstack*, %struct.obstack** %__o2615, align 8
  %next_free2628 = getelementptr inbounds %struct.obstack, %struct.obstack* %1630, i32 0, i32 3
  %1631 = load i8*, i8** %next_free2628, align 8
  %idx.ext2629 = sext i32 %1629 to i64
  %add.ptr2630 = getelementptr inbounds i8, i8* %1631, i64 %idx.ext2629
  store i8* %add.ptr2630, i8** %next_free2628, align 8
  %1632 = load i64, i64* %width, align 8
  %tobool2631 = icmp ne i64 %1632, 0
  br i1 %tobool2631, label %land.lhs.true.2632, label %if.end.2652

land.lhs.true.2632:                               ; preds = %if.end.2625
  %1633 = load i32, i32* %justification, align 4
  %cmp2633 = icmp slt i32 %1633, 0
  br i1 %cmp2633, label %if.then.2635, label %if.end.2652

if.then.2635:                                     ; preds = %land.lhs.true.2632
  br label %for.cond.2636

for.cond.2636:                                    ; preds = %for.inc.2649, %if.then.2635
  %1634 = load i64, i64* %nspace2585, align 8
  %tobool2637 = icmp ne i64 %1634, 0
  br i1 %tobool2637, label %for.body.2638, label %for.end.2651

for.body.2638:                                    ; preds = %for.cond.2636
  %1635 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1635, %struct.obstack** %__o2639, align 8
  %1636 = load %struct.obstack*, %struct.obstack** %__o2639, align 8
  %next_free2640 = getelementptr inbounds %struct.obstack, %struct.obstack* %1636, i32 0, i32 3
  %1637 = load i8*, i8** %next_free2640, align 8
  %add.ptr2641 = getelementptr inbounds i8, i8* %1637, i64 1
  %1638 = load %struct.obstack*, %struct.obstack** %__o2639, align 8
  %chunk_limit2642 = getelementptr inbounds %struct.obstack, %struct.obstack* %1638, i32 0, i32 4
  %1639 = load i8*, i8** %chunk_limit2642, align 8
  %cmp2643 = icmp ugt i8* %add.ptr2641, %1639
  br i1 %cmp2643, label %if.then.2645, label %if.end.2646

if.then.2645:                                     ; preds = %for.body.2638
  %1640 = load %struct.obstack*, %struct.obstack** %__o2639, align 8
  call void @_obstack_newchunk(%struct.obstack* %1640, i32 1)
  br label %if.end.2646

if.end.2646:                                      ; preds = %if.then.2645, %for.body.2638
  %1641 = load i8, i8* %padding, align 1
  %1642 = load %struct.obstack*, %struct.obstack** %__o2639, align 8
  %next_free2647 = getelementptr inbounds %struct.obstack, %struct.obstack* %1642, i32 0, i32 3
  %1643 = load i8*, i8** %next_free2647, align 8
  %incdec.ptr2648 = getelementptr inbounds i8, i8* %1643, i32 1
  store i8* %incdec.ptr2648, i8** %next_free2647, align 8
  store i8 %1641, i8* %1643, align 1
  br label %for.inc.2649

for.inc.2649:                                     ; preds = %if.end.2646
  %1644 = load i64, i64* %nspace2585, align 8
  %dec2650 = add i64 %1644, -1
  store i64 %dec2650, i64* %nspace2585, align 8
  br label %for.cond.2636

for.end.2651:                                     ; preds = %for.cond.2636
  br label %if.end.2652

if.end.2652:                                      ; preds = %for.end.2651, %land.lhs.true.2632, %if.end.2625
  br label %do.end.2653

do.end.2653:                                      ; preds = %if.end.2652
  br label %if.end.2654

if.end.2654:                                      ; preds = %do.end.2653, %if.then.2579
  br label %if.end.2900

if.else.2655:                                     ; preds = %lor.lhs.false.2575
  %1645 = load i8*, i8** %cp2, align 8
  %1646 = load i8, i8* %1645, align 1
  %conv2656 = zext i8 %1646 to i32
  switch i32 %conv2656, label %sw.default.2896 [
    i32 45, label %sw.bb.2657
    i32 43, label %sw.bb.2813
  ]

sw.bb.2657:                                       ; preds = %if.else.2655
  %1647 = load i8*, i8** %cp, align 8
  %cmp2658 = icmp eq i8* %1647, null
  br i1 %cmp2658, label %if.else.2737, label %lor.lhs.false.2660

lor.lhs.false.2660:                               ; preds = %sw.bb.2657
  %1648 = load i8*, i8** %cp, align 8
  %1649 = load i8, i8* %1648, align 1
  %conv2661 = zext i8 %1649 to i32
  %cmp2662 = icmp eq i32 %conv2661, 0
  br i1 %cmp2662, label %if.else.2737, label %if.then.2664

if.then.2664:                                     ; preds = %lor.lhs.false.2660
  br label %do.body.2665

do.body.2665:                                     ; preds = %if.then.2664
  %1650 = load i8*, i8** %cp, align 8
  %call2667 = call i64 @strlen(i8* %1650) #6
  store i64 %call2667, i64* %len2666, align 8
  %1651 = load i64, i64* %len2666, align 8
  %1652 = load i64, i64* %width, align 8
  %cmp2669 = icmp ugt i64 %1651, %1652
  br i1 %cmp2669, label %cond.true.2671, label %cond.false.2672

cond.true.2671:                                   ; preds = %do.body.2665
  br label %cond.end.2674

cond.false.2672:                                  ; preds = %do.body.2665
  %1653 = load i64, i64* %width, align 8
  %1654 = load i64, i64* %len2666, align 8
  %sub2673 = sub i64 %1653, %1654
  br label %cond.end.2674

cond.end.2674:                                    ; preds = %cond.false.2672, %cond.true.2671
  %cond2675 = phi i64 [ 0, %cond.true.2671 ], [ %sub2673, %cond.false.2672 ]
  store i64 %cond2675, i64* %nspace2668, align 8
  %1655 = load i64, i64* %width, align 8
  %tobool2676 = icmp ne i64 %1655, 0
  br i1 %tobool2676, label %land.lhs.true.2677, label %if.end.2697

land.lhs.true.2677:                               ; preds = %cond.end.2674
  %1656 = load i32, i32* %justification, align 4
  %cmp2678 = icmp sgt i32 %1656, 0
  br i1 %cmp2678, label %if.then.2680, label %if.end.2697

if.then.2680:                                     ; preds = %land.lhs.true.2677
  br label %for.cond.2681

for.cond.2681:                                    ; preds = %for.inc.2694, %if.then.2680
  %1657 = load i64, i64* %nspace2668, align 8
  %tobool2682 = icmp ne i64 %1657, 0
  br i1 %tobool2682, label %for.body.2683, label %for.end.2696

for.body.2683:                                    ; preds = %for.cond.2681
  %1658 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1658, %struct.obstack** %__o2684, align 8
  %1659 = load %struct.obstack*, %struct.obstack** %__o2684, align 8
  %next_free2685 = getelementptr inbounds %struct.obstack, %struct.obstack* %1659, i32 0, i32 3
  %1660 = load i8*, i8** %next_free2685, align 8
  %add.ptr2686 = getelementptr inbounds i8, i8* %1660, i64 1
  %1661 = load %struct.obstack*, %struct.obstack** %__o2684, align 8
  %chunk_limit2687 = getelementptr inbounds %struct.obstack, %struct.obstack* %1661, i32 0, i32 4
  %1662 = load i8*, i8** %chunk_limit2687, align 8
  %cmp2688 = icmp ugt i8* %add.ptr2686, %1662
  br i1 %cmp2688, label %if.then.2690, label %if.end.2691

if.then.2690:                                     ; preds = %for.body.2683
  %1663 = load %struct.obstack*, %struct.obstack** %__o2684, align 8
  call void @_obstack_newchunk(%struct.obstack* %1663, i32 1)
  br label %if.end.2691

if.end.2691:                                      ; preds = %if.then.2690, %for.body.2683
  %1664 = load i8, i8* %padding, align 1
  %1665 = load %struct.obstack*, %struct.obstack** %__o2684, align 8
  %next_free2692 = getelementptr inbounds %struct.obstack, %struct.obstack* %1665, i32 0, i32 3
  %1666 = load i8*, i8** %next_free2692, align 8
  %incdec.ptr2693 = getelementptr inbounds i8, i8* %1666, i32 1
  store i8* %incdec.ptr2693, i8** %next_free2692, align 8
  store i8 %1664, i8* %1666, align 1
  br label %for.inc.2694

for.inc.2694:                                     ; preds = %if.end.2691
  %1667 = load i64, i64* %nspace2668, align 8
  %dec2695 = add i64 %1667, -1
  store i64 %dec2695, i64* %nspace2668, align 8
  br label %for.cond.2681

for.end.2696:                                     ; preds = %for.cond.2681
  br label %if.end.2697

if.end.2697:                                      ; preds = %for.end.2696, %land.lhs.true.2677, %cond.end.2674
  %1668 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1668, %struct.obstack** %__o2698, align 8
  %1669 = load i64, i64* %len2666, align 8
  %conv2700 = trunc i64 %1669 to i32
  store i32 %conv2700, i32* %__len2699, align 4
  %1670 = load %struct.obstack*, %struct.obstack** %__o2698, align 8
  %next_free2701 = getelementptr inbounds %struct.obstack, %struct.obstack* %1670, i32 0, i32 3
  %1671 = load i8*, i8** %next_free2701, align 8
  %1672 = load i32, i32* %__len2699, align 4
  %idx.ext2702 = sext i32 %1672 to i64
  %add.ptr2703 = getelementptr inbounds i8, i8* %1671, i64 %idx.ext2702
  %1673 = load %struct.obstack*, %struct.obstack** %__o2698, align 8
  %chunk_limit2704 = getelementptr inbounds %struct.obstack, %struct.obstack* %1673, i32 0, i32 4
  %1674 = load i8*, i8** %chunk_limit2704, align 8
  %cmp2705 = icmp ugt i8* %add.ptr2703, %1674
  br i1 %cmp2705, label %if.then.2707, label %if.end.2708

if.then.2707:                                     ; preds = %if.end.2697
  %1675 = load %struct.obstack*, %struct.obstack** %__o2698, align 8
  %1676 = load i32, i32* %__len2699, align 4
  call void @_obstack_newchunk(%struct.obstack* %1675, i32 %1676)
  br label %if.end.2708

if.end.2708:                                      ; preds = %if.then.2707, %if.end.2697
  %1677 = load %struct.obstack*, %struct.obstack** %__o2698, align 8
  %next_free2709 = getelementptr inbounds %struct.obstack, %struct.obstack* %1677, i32 0, i32 3
  %1678 = load i8*, i8** %next_free2709, align 8
  %1679 = load i8*, i8** %cp, align 8
  %1680 = load i32, i32* %__len2699, align 4
  %conv2710 = sext i32 %1680 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1678, i8* %1679, i64 %conv2710, i32 1, i1 false)
  %1681 = load i32, i32* %__len2699, align 4
  %1682 = load %struct.obstack*, %struct.obstack** %__o2698, align 8
  %next_free2711 = getelementptr inbounds %struct.obstack, %struct.obstack* %1682, i32 0, i32 3
  %1683 = load i8*, i8** %next_free2711, align 8
  %idx.ext2712 = sext i32 %1681 to i64
  %add.ptr2713 = getelementptr inbounds i8, i8* %1683, i64 %idx.ext2712
  store i8* %add.ptr2713, i8** %next_free2711, align 8
  %1684 = load i64, i64* %width, align 8
  %tobool2714 = icmp ne i64 %1684, 0
  br i1 %tobool2714, label %land.lhs.true.2715, label %if.end.2735

land.lhs.true.2715:                               ; preds = %if.end.2708
  %1685 = load i32, i32* %justification, align 4
  %cmp2716 = icmp slt i32 %1685, 0
  br i1 %cmp2716, label %if.then.2718, label %if.end.2735

if.then.2718:                                     ; preds = %land.lhs.true.2715
  br label %for.cond.2719

for.cond.2719:                                    ; preds = %for.inc.2732, %if.then.2718
  %1686 = load i64, i64* %nspace2668, align 8
  %tobool2720 = icmp ne i64 %1686, 0
  br i1 %tobool2720, label %for.body.2721, label %for.end.2734

for.body.2721:                                    ; preds = %for.cond.2719
  %1687 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1687, %struct.obstack** %__o2722, align 8
  %1688 = load %struct.obstack*, %struct.obstack** %__o2722, align 8
  %next_free2723 = getelementptr inbounds %struct.obstack, %struct.obstack* %1688, i32 0, i32 3
  %1689 = load i8*, i8** %next_free2723, align 8
  %add.ptr2724 = getelementptr inbounds i8, i8* %1689, i64 1
  %1690 = load %struct.obstack*, %struct.obstack** %__o2722, align 8
  %chunk_limit2725 = getelementptr inbounds %struct.obstack, %struct.obstack* %1690, i32 0, i32 4
  %1691 = load i8*, i8** %chunk_limit2725, align 8
  %cmp2726 = icmp ugt i8* %add.ptr2724, %1691
  br i1 %cmp2726, label %if.then.2728, label %if.end.2729

if.then.2728:                                     ; preds = %for.body.2721
  %1692 = load %struct.obstack*, %struct.obstack** %__o2722, align 8
  call void @_obstack_newchunk(%struct.obstack* %1692, i32 1)
  br label %if.end.2729

if.end.2729:                                      ; preds = %if.then.2728, %for.body.2721
  %1693 = load i8, i8* %padding, align 1
  %1694 = load %struct.obstack*, %struct.obstack** %__o2722, align 8
  %next_free2730 = getelementptr inbounds %struct.obstack, %struct.obstack* %1694, i32 0, i32 3
  %1695 = load i8*, i8** %next_free2730, align 8
  %incdec.ptr2731 = getelementptr inbounds i8, i8* %1695, i32 1
  store i8* %incdec.ptr2731, i8** %next_free2730, align 8
  store i8 %1693, i8* %1695, align 1
  br label %for.inc.2732

for.inc.2732:                                     ; preds = %if.end.2729
  %1696 = load i64, i64* %nspace2668, align 8
  %dec2733 = add i64 %1696, -1
  store i64 %dec2733, i64* %nspace2668, align 8
  br label %for.cond.2719

for.end.2734:                                     ; preds = %for.cond.2719
  br label %if.end.2735

if.end.2735:                                      ; preds = %for.end.2734, %land.lhs.true.2715, %if.end.2708
  br label %do.end.2736

do.end.2736:                                      ; preds = %if.end.2735
  br label %if.end.2812

if.else.2737:                                     ; preds = %lor.lhs.false.2660, %sw.bb.2657
  br label %do.body.2738

do.body.2738:                                     ; preds = %if.else.2737
  %1697 = load i8*, i8** %cp2, align 8
  %add.ptr2740 = getelementptr inbounds i8, i8* %1697, i64 1
  %call2741 = call i64 @strlen(i8* %add.ptr2740) #6
  store i64 %call2741, i64* %len2739, align 8
  %1698 = load i64, i64* %len2739, align 8
  %1699 = load i64, i64* %width, align 8
  %cmp2743 = icmp ugt i64 %1698, %1699
  br i1 %cmp2743, label %cond.true.2745, label %cond.false.2746

cond.true.2745:                                   ; preds = %do.body.2738
  br label %cond.end.2748

cond.false.2746:                                  ; preds = %do.body.2738
  %1700 = load i64, i64* %width, align 8
  %1701 = load i64, i64* %len2739, align 8
  %sub2747 = sub i64 %1700, %1701
  br label %cond.end.2748

cond.end.2748:                                    ; preds = %cond.false.2746, %cond.true.2745
  %cond2749 = phi i64 [ 0, %cond.true.2745 ], [ %sub2747, %cond.false.2746 ]
  store i64 %cond2749, i64* %nspace2742, align 8
  %1702 = load i64, i64* %width, align 8
  %tobool2750 = icmp ne i64 %1702, 0
  br i1 %tobool2750, label %land.lhs.true.2751, label %if.end.2771

land.lhs.true.2751:                               ; preds = %cond.end.2748
  %1703 = load i32, i32* %justification, align 4
  %cmp2752 = icmp sgt i32 %1703, 0
  br i1 %cmp2752, label %if.then.2754, label %if.end.2771

if.then.2754:                                     ; preds = %land.lhs.true.2751
  br label %for.cond.2755

for.cond.2755:                                    ; preds = %for.inc.2768, %if.then.2754
  %1704 = load i64, i64* %nspace2742, align 8
  %tobool2756 = icmp ne i64 %1704, 0
  br i1 %tobool2756, label %for.body.2757, label %for.end.2770

for.body.2757:                                    ; preds = %for.cond.2755
  %1705 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1705, %struct.obstack** %__o2758, align 8
  %1706 = load %struct.obstack*, %struct.obstack** %__o2758, align 8
  %next_free2759 = getelementptr inbounds %struct.obstack, %struct.obstack* %1706, i32 0, i32 3
  %1707 = load i8*, i8** %next_free2759, align 8
  %add.ptr2760 = getelementptr inbounds i8, i8* %1707, i64 1
  %1708 = load %struct.obstack*, %struct.obstack** %__o2758, align 8
  %chunk_limit2761 = getelementptr inbounds %struct.obstack, %struct.obstack* %1708, i32 0, i32 4
  %1709 = load i8*, i8** %chunk_limit2761, align 8
  %cmp2762 = icmp ugt i8* %add.ptr2760, %1709
  br i1 %cmp2762, label %if.then.2764, label %if.end.2765

if.then.2764:                                     ; preds = %for.body.2757
  %1710 = load %struct.obstack*, %struct.obstack** %__o2758, align 8
  call void @_obstack_newchunk(%struct.obstack* %1710, i32 1)
  br label %if.end.2765

if.end.2765:                                      ; preds = %if.then.2764, %for.body.2757
  %1711 = load i8, i8* %padding, align 1
  %1712 = load %struct.obstack*, %struct.obstack** %__o2758, align 8
  %next_free2766 = getelementptr inbounds %struct.obstack, %struct.obstack* %1712, i32 0, i32 3
  %1713 = load i8*, i8** %next_free2766, align 8
  %incdec.ptr2767 = getelementptr inbounds i8, i8* %1713, i32 1
  store i8* %incdec.ptr2767, i8** %next_free2766, align 8
  store i8 %1711, i8* %1713, align 1
  br label %for.inc.2768

for.inc.2768:                                     ; preds = %if.end.2765
  %1714 = load i64, i64* %nspace2742, align 8
  %dec2769 = add i64 %1714, -1
  store i64 %dec2769, i64* %nspace2742, align 8
  br label %for.cond.2755

for.end.2770:                                     ; preds = %for.cond.2755
  br label %if.end.2771

if.end.2771:                                      ; preds = %for.end.2770, %land.lhs.true.2751, %cond.end.2748
  %1715 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1715, %struct.obstack** %__o2772, align 8
  %1716 = load i64, i64* %len2739, align 8
  %conv2774 = trunc i64 %1716 to i32
  store i32 %conv2774, i32* %__len2773, align 4
  %1717 = load %struct.obstack*, %struct.obstack** %__o2772, align 8
  %next_free2775 = getelementptr inbounds %struct.obstack, %struct.obstack* %1717, i32 0, i32 3
  %1718 = load i8*, i8** %next_free2775, align 8
  %1719 = load i32, i32* %__len2773, align 4
  %idx.ext2776 = sext i32 %1719 to i64
  %add.ptr2777 = getelementptr inbounds i8, i8* %1718, i64 %idx.ext2776
  %1720 = load %struct.obstack*, %struct.obstack** %__o2772, align 8
  %chunk_limit2778 = getelementptr inbounds %struct.obstack, %struct.obstack* %1720, i32 0, i32 4
  %1721 = load i8*, i8** %chunk_limit2778, align 8
  %cmp2779 = icmp ugt i8* %add.ptr2777, %1721
  br i1 %cmp2779, label %if.then.2781, label %if.end.2782

if.then.2781:                                     ; preds = %if.end.2771
  %1722 = load %struct.obstack*, %struct.obstack** %__o2772, align 8
  %1723 = load i32, i32* %__len2773, align 4
  call void @_obstack_newchunk(%struct.obstack* %1722, i32 %1723)
  br label %if.end.2782

if.end.2782:                                      ; preds = %if.then.2781, %if.end.2771
  %1724 = load %struct.obstack*, %struct.obstack** %__o2772, align 8
  %next_free2783 = getelementptr inbounds %struct.obstack, %struct.obstack* %1724, i32 0, i32 3
  %1725 = load i8*, i8** %next_free2783, align 8
  %1726 = load i8*, i8** %cp2, align 8
  %add.ptr2784 = getelementptr inbounds i8, i8* %1726, i64 1
  %1727 = load i32, i32* %__len2773, align 4
  %conv2785 = sext i32 %1727 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1725, i8* %add.ptr2784, i64 %conv2785, i32 1, i1 false)
  %1728 = load i32, i32* %__len2773, align 4
  %1729 = load %struct.obstack*, %struct.obstack** %__o2772, align 8
  %next_free2786 = getelementptr inbounds %struct.obstack, %struct.obstack* %1729, i32 0, i32 3
  %1730 = load i8*, i8** %next_free2786, align 8
  %idx.ext2787 = sext i32 %1728 to i64
  %add.ptr2788 = getelementptr inbounds i8, i8* %1730, i64 %idx.ext2787
  store i8* %add.ptr2788, i8** %next_free2786, align 8
  %1731 = load i64, i64* %width, align 8
  %tobool2789 = icmp ne i64 %1731, 0
  br i1 %tobool2789, label %land.lhs.true.2790, label %if.end.2810

land.lhs.true.2790:                               ; preds = %if.end.2782
  %1732 = load i32, i32* %justification, align 4
  %cmp2791 = icmp slt i32 %1732, 0
  br i1 %cmp2791, label %if.then.2793, label %if.end.2810

if.then.2793:                                     ; preds = %land.lhs.true.2790
  br label %for.cond.2794

for.cond.2794:                                    ; preds = %for.inc.2807, %if.then.2793
  %1733 = load i64, i64* %nspace2742, align 8
  %tobool2795 = icmp ne i64 %1733, 0
  br i1 %tobool2795, label %for.body.2796, label %for.end.2809

for.body.2796:                                    ; preds = %for.cond.2794
  %1734 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1734, %struct.obstack** %__o2797, align 8
  %1735 = load %struct.obstack*, %struct.obstack** %__o2797, align 8
  %next_free2798 = getelementptr inbounds %struct.obstack, %struct.obstack* %1735, i32 0, i32 3
  %1736 = load i8*, i8** %next_free2798, align 8
  %add.ptr2799 = getelementptr inbounds i8, i8* %1736, i64 1
  %1737 = load %struct.obstack*, %struct.obstack** %__o2797, align 8
  %chunk_limit2800 = getelementptr inbounds %struct.obstack, %struct.obstack* %1737, i32 0, i32 4
  %1738 = load i8*, i8** %chunk_limit2800, align 8
  %cmp2801 = icmp ugt i8* %add.ptr2799, %1738
  br i1 %cmp2801, label %if.then.2803, label %if.end.2804

if.then.2803:                                     ; preds = %for.body.2796
  %1739 = load %struct.obstack*, %struct.obstack** %__o2797, align 8
  call void @_obstack_newchunk(%struct.obstack* %1739, i32 1)
  br label %if.end.2804

if.end.2804:                                      ; preds = %if.then.2803, %for.body.2796
  %1740 = load i8, i8* %padding, align 1
  %1741 = load %struct.obstack*, %struct.obstack** %__o2797, align 8
  %next_free2805 = getelementptr inbounds %struct.obstack, %struct.obstack* %1741, i32 0, i32 3
  %1742 = load i8*, i8** %next_free2805, align 8
  %incdec.ptr2806 = getelementptr inbounds i8, i8* %1742, i32 1
  store i8* %incdec.ptr2806, i8** %next_free2805, align 8
  store i8 %1740, i8* %1742, align 1
  br label %for.inc.2807

for.inc.2807:                                     ; preds = %if.end.2804
  %1743 = load i64, i64* %nspace2742, align 8
  %dec2808 = add i64 %1743, -1
  store i64 %dec2808, i64* %nspace2742, align 8
  br label %for.cond.2794

for.end.2809:                                     ; preds = %for.cond.2794
  br label %if.end.2810

if.end.2810:                                      ; preds = %for.end.2809, %land.lhs.true.2790, %if.end.2782
  br label %do.end.2811

do.end.2811:                                      ; preds = %if.end.2810
  br label %if.end.2812

if.end.2812:                                      ; preds = %do.end.2811, %do.end.2736
  br label %sw.epilog.2899

sw.bb.2813:                                       ; preds = %if.else.2655
  %1744 = load i8*, i8** %cp, align 8
  %cmp2814 = icmp eq i8* %1744, null
  br i1 %cmp2814, label %if.end.2895, label %lor.lhs.false.2816

lor.lhs.false.2816:                               ; preds = %sw.bb.2813
  %1745 = load i8*, i8** %cp, align 8
  %1746 = load i8, i8* %1745, align 1
  %conv2817 = zext i8 %1746 to i32
  %cmp2818 = icmp eq i32 %conv2817, 0
  br i1 %cmp2818, label %if.end.2895, label %if.then.2820

if.then.2820:                                     ; preds = %lor.lhs.false.2816
  br label %do.body.2821

do.body.2821:                                     ; preds = %if.then.2820
  %1747 = load i8*, i8** %cp2, align 8
  %add.ptr2823 = getelementptr inbounds i8, i8* %1747, i64 1
  %call2824 = call i64 @strlen(i8* %add.ptr2823) #6
  store i64 %call2824, i64* %len2822, align 8
  %1748 = load i64, i64* %len2822, align 8
  %1749 = load i64, i64* %width, align 8
  %cmp2826 = icmp ugt i64 %1748, %1749
  br i1 %cmp2826, label %cond.true.2828, label %cond.false.2829

cond.true.2828:                                   ; preds = %do.body.2821
  br label %cond.end.2831

cond.false.2829:                                  ; preds = %do.body.2821
  %1750 = load i64, i64* %width, align 8
  %1751 = load i64, i64* %len2822, align 8
  %sub2830 = sub i64 %1750, %1751
  br label %cond.end.2831

cond.end.2831:                                    ; preds = %cond.false.2829, %cond.true.2828
  %cond2832 = phi i64 [ 0, %cond.true.2828 ], [ %sub2830, %cond.false.2829 ]
  store i64 %cond2832, i64* %nspace2825, align 8
  %1752 = load i64, i64* %width, align 8
  %tobool2833 = icmp ne i64 %1752, 0
  br i1 %tobool2833, label %land.lhs.true.2834, label %if.end.2854

land.lhs.true.2834:                               ; preds = %cond.end.2831
  %1753 = load i32, i32* %justification, align 4
  %cmp2835 = icmp sgt i32 %1753, 0
  br i1 %cmp2835, label %if.then.2837, label %if.end.2854

if.then.2837:                                     ; preds = %land.lhs.true.2834
  br label %for.cond.2838

for.cond.2838:                                    ; preds = %for.inc.2851, %if.then.2837
  %1754 = load i64, i64* %nspace2825, align 8
  %tobool2839 = icmp ne i64 %1754, 0
  br i1 %tobool2839, label %for.body.2840, label %for.end.2853

for.body.2840:                                    ; preds = %for.cond.2838
  %1755 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1755, %struct.obstack** %__o2841, align 8
  %1756 = load %struct.obstack*, %struct.obstack** %__o2841, align 8
  %next_free2842 = getelementptr inbounds %struct.obstack, %struct.obstack* %1756, i32 0, i32 3
  %1757 = load i8*, i8** %next_free2842, align 8
  %add.ptr2843 = getelementptr inbounds i8, i8* %1757, i64 1
  %1758 = load %struct.obstack*, %struct.obstack** %__o2841, align 8
  %chunk_limit2844 = getelementptr inbounds %struct.obstack, %struct.obstack* %1758, i32 0, i32 4
  %1759 = load i8*, i8** %chunk_limit2844, align 8
  %cmp2845 = icmp ugt i8* %add.ptr2843, %1759
  br i1 %cmp2845, label %if.then.2847, label %if.end.2848

if.then.2847:                                     ; preds = %for.body.2840
  %1760 = load %struct.obstack*, %struct.obstack** %__o2841, align 8
  call void @_obstack_newchunk(%struct.obstack* %1760, i32 1)
  br label %if.end.2848

if.end.2848:                                      ; preds = %if.then.2847, %for.body.2840
  %1761 = load i8, i8* %padding, align 1
  %1762 = load %struct.obstack*, %struct.obstack** %__o2841, align 8
  %next_free2849 = getelementptr inbounds %struct.obstack, %struct.obstack* %1762, i32 0, i32 3
  %1763 = load i8*, i8** %next_free2849, align 8
  %incdec.ptr2850 = getelementptr inbounds i8, i8* %1763, i32 1
  store i8* %incdec.ptr2850, i8** %next_free2849, align 8
  store i8 %1761, i8* %1763, align 1
  br label %for.inc.2851

for.inc.2851:                                     ; preds = %if.end.2848
  %1764 = load i64, i64* %nspace2825, align 8
  %dec2852 = add i64 %1764, -1
  store i64 %dec2852, i64* %nspace2825, align 8
  br label %for.cond.2838

for.end.2853:                                     ; preds = %for.cond.2838
  br label %if.end.2854

if.end.2854:                                      ; preds = %for.end.2853, %land.lhs.true.2834, %cond.end.2831
  %1765 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1765, %struct.obstack** %__o2855, align 8
  %1766 = load i64, i64* %len2822, align 8
  %conv2857 = trunc i64 %1766 to i32
  store i32 %conv2857, i32* %__len2856, align 4
  %1767 = load %struct.obstack*, %struct.obstack** %__o2855, align 8
  %next_free2858 = getelementptr inbounds %struct.obstack, %struct.obstack* %1767, i32 0, i32 3
  %1768 = load i8*, i8** %next_free2858, align 8
  %1769 = load i32, i32* %__len2856, align 4
  %idx.ext2859 = sext i32 %1769 to i64
  %add.ptr2860 = getelementptr inbounds i8, i8* %1768, i64 %idx.ext2859
  %1770 = load %struct.obstack*, %struct.obstack** %__o2855, align 8
  %chunk_limit2861 = getelementptr inbounds %struct.obstack, %struct.obstack* %1770, i32 0, i32 4
  %1771 = load i8*, i8** %chunk_limit2861, align 8
  %cmp2862 = icmp ugt i8* %add.ptr2860, %1771
  br i1 %cmp2862, label %if.then.2864, label %if.end.2865

if.then.2864:                                     ; preds = %if.end.2854
  %1772 = load %struct.obstack*, %struct.obstack** %__o2855, align 8
  %1773 = load i32, i32* %__len2856, align 4
  call void @_obstack_newchunk(%struct.obstack* %1772, i32 %1773)
  br label %if.end.2865

if.end.2865:                                      ; preds = %if.then.2864, %if.end.2854
  %1774 = load %struct.obstack*, %struct.obstack** %__o2855, align 8
  %next_free2866 = getelementptr inbounds %struct.obstack, %struct.obstack* %1774, i32 0, i32 3
  %1775 = load i8*, i8** %next_free2866, align 8
  %1776 = load i8*, i8** %cp2, align 8
  %add.ptr2867 = getelementptr inbounds i8, i8* %1776, i64 1
  %1777 = load i32, i32* %__len2856, align 4
  %conv2868 = sext i32 %1777 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1775, i8* %add.ptr2867, i64 %conv2868, i32 1, i1 false)
  %1778 = load i32, i32* %__len2856, align 4
  %1779 = load %struct.obstack*, %struct.obstack** %__o2855, align 8
  %next_free2869 = getelementptr inbounds %struct.obstack, %struct.obstack* %1779, i32 0, i32 3
  %1780 = load i8*, i8** %next_free2869, align 8
  %idx.ext2870 = sext i32 %1778 to i64
  %add.ptr2871 = getelementptr inbounds i8, i8* %1780, i64 %idx.ext2870
  store i8* %add.ptr2871, i8** %next_free2869, align 8
  %1781 = load i64, i64* %width, align 8
  %tobool2872 = icmp ne i64 %1781, 0
  br i1 %tobool2872, label %land.lhs.true.2873, label %if.end.2893

land.lhs.true.2873:                               ; preds = %if.end.2865
  %1782 = load i32, i32* %justification, align 4
  %cmp2874 = icmp slt i32 %1782, 0
  br i1 %cmp2874, label %if.then.2876, label %if.end.2893

if.then.2876:                                     ; preds = %land.lhs.true.2873
  br label %for.cond.2877

for.cond.2877:                                    ; preds = %for.inc.2890, %if.then.2876
  %1783 = load i64, i64* %nspace2825, align 8
  %tobool2878 = icmp ne i64 %1783, 0
  br i1 %tobool2878, label %for.body.2879, label %for.end.2892

for.body.2879:                                    ; preds = %for.cond.2877
  %1784 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1784, %struct.obstack** %__o2880, align 8
  %1785 = load %struct.obstack*, %struct.obstack** %__o2880, align 8
  %next_free2881 = getelementptr inbounds %struct.obstack, %struct.obstack* %1785, i32 0, i32 3
  %1786 = load i8*, i8** %next_free2881, align 8
  %add.ptr2882 = getelementptr inbounds i8, i8* %1786, i64 1
  %1787 = load %struct.obstack*, %struct.obstack** %__o2880, align 8
  %chunk_limit2883 = getelementptr inbounds %struct.obstack, %struct.obstack* %1787, i32 0, i32 4
  %1788 = load i8*, i8** %chunk_limit2883, align 8
  %cmp2884 = icmp ugt i8* %add.ptr2882, %1788
  br i1 %cmp2884, label %if.then.2886, label %if.end.2887

if.then.2886:                                     ; preds = %for.body.2879
  %1789 = load %struct.obstack*, %struct.obstack** %__o2880, align 8
  call void @_obstack_newchunk(%struct.obstack* %1789, i32 1)
  br label %if.end.2887

if.end.2887:                                      ; preds = %if.then.2886, %for.body.2879
  %1790 = load i8, i8* %padding, align 1
  %1791 = load %struct.obstack*, %struct.obstack** %__o2880, align 8
  %next_free2888 = getelementptr inbounds %struct.obstack, %struct.obstack* %1791, i32 0, i32 3
  %1792 = load i8*, i8** %next_free2888, align 8
  %incdec.ptr2889 = getelementptr inbounds i8, i8* %1792, i32 1
  store i8* %incdec.ptr2889, i8** %next_free2888, align 8
  store i8 %1790, i8* %1792, align 1
  br label %for.inc.2890

for.inc.2890:                                     ; preds = %if.end.2887
  %1793 = load i64, i64* %nspace2825, align 8
  %dec2891 = add i64 %1793, -1
  store i64 %dec2891, i64* %nspace2825, align 8
  br label %for.cond.2877

for.end.2892:                                     ; preds = %for.cond.2877
  br label %if.end.2893

if.end.2893:                                      ; preds = %for.end.2892, %land.lhs.true.2873, %if.end.2865
  br label %do.end.2894

do.end.2894:                                      ; preds = %if.end.2893
  br label %if.end.2895

if.end.2895:                                      ; preds = %do.end.2894, %lor.lhs.false.2816, %sw.bb.2813
  br label %sw.epilog.2899

sw.default.2896:                                  ; preds = %if.else.2655
  %call2897 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0)) #5
  %1794 = load i8*, i8** %context_name.addr, align 8
  %1795 = load i8*, i8** %cp2, align 8
  %1796 = load i8, i8* %1795, align 1
  %conv2898 = zext i8 %1796 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2897, i8* %1794, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 %conv2898, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog.2899

sw.epilog.2899:                                   ; preds = %sw.default.2896, %if.end.2895, %if.end.2812
  br label %if.end.2900

if.end.2900:                                      ; preds = %sw.epilog.2899, %if.end.2654
  br label %sw.epilog.6153

sw.bb.2901:                                       ; preds = %sw.bb.2280
  %1797 = load i64, i64* %i, align 8
  %1798 = load i8*, i8** %str.addr, align 8
  %arrayidx2902 = getelementptr inbounds i8, i8* %1798, i64 %1797
  %1799 = load i8, i8* %arrayidx2902, align 1
  %conv2903 = zext i8 %1799 to i32
  %idxprom2904 = sext i32 %conv2903 to i64
  %call2905 = call i16** @__ctype_b_loc() #7
  %1800 = load i16*, i16** %call2905, align 8
  %arrayidx2906 = getelementptr inbounds i16, i16* %1800, i64 %idxprom2904
  %1801 = load i16, i16* %arrayidx2906, align 2
  %conv2907 = zext i16 %1801 to i32
  %and2908 = and i32 %conv2907, 2048
  %tobool2909 = icmp ne i32 %and2908, 0
  br i1 %tobool2909, label %if.end.2912, label %if.then.2910

if.then.2910:                                     ; preds = %sw.bb.2901
  %call2911 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0)) #5
  %1802 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2911, i8* %1802, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 93)
  br label %if.end.2912

if.end.2912:                                      ; preds = %if.then.2910, %sw.bb.2901
  store i64 0, i64* %value, align 8
  br label %while.cond.2913

while.cond.2913:                                  ; preds = %while.body.2922, %if.end.2912
  %1803 = load i64, i64* %i, align 8
  %1804 = load i8*, i8** %str.addr, align 8
  %arrayidx2914 = getelementptr inbounds i8, i8* %1804, i64 %1803
  %1805 = load i8, i8* %arrayidx2914, align 1
  %conv2915 = zext i8 %1805 to i32
  %idxprom2916 = sext i32 %conv2915 to i64
  %call2917 = call i16** @__ctype_b_loc() #7
  %1806 = load i16*, i16** %call2917, align 8
  %arrayidx2918 = getelementptr inbounds i16, i16* %1806, i64 %idxprom2916
  %1807 = load i16, i16* %arrayidx2918, align 2
  %conv2919 = zext i16 %1807 to i32
  %and2920 = and i32 %conv2919, 2048
  %tobool2921 = icmp ne i32 %and2920, 0
  br i1 %tobool2921, label %while.body.2922, label %while.end.2929

while.body.2922:                                  ; preds = %while.cond.2913
  %1808 = load i64, i64* %value, align 8
  %mul2923 = mul i64 %1808, 10
  %1809 = load i64, i64* %i, align 8
  %inc2924 = add i64 %1809, 1
  store i64 %inc2924, i64* %i, align 8
  %1810 = load i8*, i8** %str.addr, align 8
  %arrayidx2925 = getelementptr inbounds i8, i8* %1810, i64 %1809
  %1811 = load i8, i8* %arrayidx2925, align 1
  %conv2926 = zext i8 %1811 to i64
  %add2927 = add i64 %mul2923, %conv2926
  %sub2928 = sub i64 %add2927, 48
  store i64 %sub2928, i64* %value, align 8
  br label %while.cond.2913

while.end.2929:                                   ; preds = %while.cond.2913
  %1812 = load i64, i64* %i, align 8
  %1813 = load i8*, i8** %str.addr, align 8
  %arrayidx2930 = getelementptr inbounds i8, i8* %1813, i64 %1812
  %1814 = load i8, i8* %arrayidx2930, align 1
  %conv2931 = zext i8 %1814 to i32
  %cmp2932 = icmp eq i32 %conv2931, 0
  br i1 %cmp2932, label %if.then.2934, label %if.end.2936

if.then.2934:                                     ; preds = %while.end.2929
  %call2935 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %1815 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2935, i8* %1815, i32 93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 93)
  br label %if.end.2936

if.end.2936:                                      ; preds = %if.then.2934, %while.end.2929
  %1816 = load i64, i64* %i, align 8
  %1817 = load i8*, i8** %str.addr, align 8
  %arrayidx2937 = getelementptr inbounds i8, i8* %1817, i64 %1816
  %1818 = load i8, i8* %arrayidx2937, align 1
  %conv2938 = zext i8 %1818 to i32
  %cmp2939 = icmp ne i32 %conv2938, 93
  br i1 %cmp2939, label %if.then.2941, label %if.end.2943

if.then.2941:                                     ; preds = %if.end.2936
  %call2942 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0)) #5
  %1819 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call2942, i8* %1819, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 93)
  br label %if.end.2943

if.end.2943:                                      ; preds = %if.then.2941, %if.end.2936
  %1820 = load i64, i64* %value, align 8
  %1821 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argc = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1821, i32 0, i32 1
  %1822 = load i64, i64* %argc, align 8
  %cmp2944 = icmp ult i64 %1820, %1822
  br i1 %cmp2944, label %if.then.2946, label %if.end.3022

if.then.2946:                                     ; preds = %if.end.2943
  br label %do.body.2947

do.body.2947:                                     ; preds = %if.then.2946
  %1823 = load i64, i64* %value, align 8
  %1824 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argv = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1824, i32 0, i32 0
  %1825 = load i8**, i8*** %argv, align 8
  %arrayidx2949 = getelementptr inbounds i8*, i8** %1825, i64 %1823
  %1826 = load i8*, i8** %arrayidx2949, align 8
  %call2950 = call i64 @strlen(i8* %1826) #6
  store i64 %call2950, i64* %len2948, align 8
  %1827 = load i64, i64* %len2948, align 8
  %1828 = load i64, i64* %width, align 8
  %cmp2952 = icmp ugt i64 %1827, %1828
  br i1 %cmp2952, label %cond.true.2954, label %cond.false.2955

cond.true.2954:                                   ; preds = %do.body.2947
  br label %cond.end.2957

cond.false.2955:                                  ; preds = %do.body.2947
  %1829 = load i64, i64* %width, align 8
  %1830 = load i64, i64* %len2948, align 8
  %sub2956 = sub i64 %1829, %1830
  br label %cond.end.2957

cond.end.2957:                                    ; preds = %cond.false.2955, %cond.true.2954
  %cond2958 = phi i64 [ 0, %cond.true.2954 ], [ %sub2956, %cond.false.2955 ]
  store i64 %cond2958, i64* %nspace2951, align 8
  %1831 = load i64, i64* %width, align 8
  %tobool2959 = icmp ne i64 %1831, 0
  br i1 %tobool2959, label %land.lhs.true.2960, label %if.end.2980

land.lhs.true.2960:                               ; preds = %cond.end.2957
  %1832 = load i32, i32* %justification, align 4
  %cmp2961 = icmp sgt i32 %1832, 0
  br i1 %cmp2961, label %if.then.2963, label %if.end.2980

if.then.2963:                                     ; preds = %land.lhs.true.2960
  br label %for.cond.2964

for.cond.2964:                                    ; preds = %for.inc.2977, %if.then.2963
  %1833 = load i64, i64* %nspace2951, align 8
  %tobool2965 = icmp ne i64 %1833, 0
  br i1 %tobool2965, label %for.body.2966, label %for.end.2979

for.body.2966:                                    ; preds = %for.cond.2964
  %1834 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1834, %struct.obstack** %__o2967, align 8
  %1835 = load %struct.obstack*, %struct.obstack** %__o2967, align 8
  %next_free2968 = getelementptr inbounds %struct.obstack, %struct.obstack* %1835, i32 0, i32 3
  %1836 = load i8*, i8** %next_free2968, align 8
  %add.ptr2969 = getelementptr inbounds i8, i8* %1836, i64 1
  %1837 = load %struct.obstack*, %struct.obstack** %__o2967, align 8
  %chunk_limit2970 = getelementptr inbounds %struct.obstack, %struct.obstack* %1837, i32 0, i32 4
  %1838 = load i8*, i8** %chunk_limit2970, align 8
  %cmp2971 = icmp ugt i8* %add.ptr2969, %1838
  br i1 %cmp2971, label %if.then.2973, label %if.end.2974

if.then.2973:                                     ; preds = %for.body.2966
  %1839 = load %struct.obstack*, %struct.obstack** %__o2967, align 8
  call void @_obstack_newchunk(%struct.obstack* %1839, i32 1)
  br label %if.end.2974

if.end.2974:                                      ; preds = %if.then.2973, %for.body.2966
  %1840 = load i8, i8* %padding, align 1
  %1841 = load %struct.obstack*, %struct.obstack** %__o2967, align 8
  %next_free2975 = getelementptr inbounds %struct.obstack, %struct.obstack* %1841, i32 0, i32 3
  %1842 = load i8*, i8** %next_free2975, align 8
  %incdec.ptr2976 = getelementptr inbounds i8, i8* %1842, i32 1
  store i8* %incdec.ptr2976, i8** %next_free2975, align 8
  store i8 %1840, i8* %1842, align 1
  br label %for.inc.2977

for.inc.2977:                                     ; preds = %if.end.2974
  %1843 = load i64, i64* %nspace2951, align 8
  %dec2978 = add i64 %1843, -1
  store i64 %dec2978, i64* %nspace2951, align 8
  br label %for.cond.2964

for.end.2979:                                     ; preds = %for.cond.2964
  br label %if.end.2980

if.end.2980:                                      ; preds = %for.end.2979, %land.lhs.true.2960, %cond.end.2957
  %1844 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1844, %struct.obstack** %__o2981, align 8
  %1845 = load i64, i64* %len2948, align 8
  %conv2983 = trunc i64 %1845 to i32
  store i32 %conv2983, i32* %__len2982, align 4
  %1846 = load %struct.obstack*, %struct.obstack** %__o2981, align 8
  %next_free2984 = getelementptr inbounds %struct.obstack, %struct.obstack* %1846, i32 0, i32 3
  %1847 = load i8*, i8** %next_free2984, align 8
  %1848 = load i32, i32* %__len2982, align 4
  %idx.ext2985 = sext i32 %1848 to i64
  %add.ptr2986 = getelementptr inbounds i8, i8* %1847, i64 %idx.ext2985
  %1849 = load %struct.obstack*, %struct.obstack** %__o2981, align 8
  %chunk_limit2987 = getelementptr inbounds %struct.obstack, %struct.obstack* %1849, i32 0, i32 4
  %1850 = load i8*, i8** %chunk_limit2987, align 8
  %cmp2988 = icmp ugt i8* %add.ptr2986, %1850
  br i1 %cmp2988, label %if.then.2990, label %if.end.2991

if.then.2990:                                     ; preds = %if.end.2980
  %1851 = load %struct.obstack*, %struct.obstack** %__o2981, align 8
  %1852 = load i32, i32* %__len2982, align 4
  call void @_obstack_newchunk(%struct.obstack* %1851, i32 %1852)
  br label %if.end.2991

if.end.2991:                                      ; preds = %if.then.2990, %if.end.2980
  %1853 = load %struct.obstack*, %struct.obstack** %__o2981, align 8
  %next_free2992 = getelementptr inbounds %struct.obstack, %struct.obstack* %1853, i32 0, i32 3
  %1854 = load i8*, i8** %next_free2992, align 8
  %1855 = load i64, i64* %value, align 8
  %1856 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argv2993 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1856, i32 0, i32 0
  %1857 = load i8**, i8*** %argv2993, align 8
  %arrayidx2994 = getelementptr inbounds i8*, i8** %1857, i64 %1855
  %1858 = load i8*, i8** %arrayidx2994, align 8
  %1859 = load i32, i32* %__len2982, align 4
  %conv2995 = sext i32 %1859 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1854, i8* %1858, i64 %conv2995, i32 1, i1 false)
  %1860 = load i32, i32* %__len2982, align 4
  %1861 = load %struct.obstack*, %struct.obstack** %__o2981, align 8
  %next_free2996 = getelementptr inbounds %struct.obstack, %struct.obstack* %1861, i32 0, i32 3
  %1862 = load i8*, i8** %next_free2996, align 8
  %idx.ext2997 = sext i32 %1860 to i64
  %add.ptr2998 = getelementptr inbounds i8, i8* %1862, i64 %idx.ext2997
  store i8* %add.ptr2998, i8** %next_free2996, align 8
  %1863 = load i64, i64* %width, align 8
  %tobool2999 = icmp ne i64 %1863, 0
  br i1 %tobool2999, label %land.lhs.true.3000, label %if.end.3020

land.lhs.true.3000:                               ; preds = %if.end.2991
  %1864 = load i32, i32* %justification, align 4
  %cmp3001 = icmp slt i32 %1864, 0
  br i1 %cmp3001, label %if.then.3003, label %if.end.3020

if.then.3003:                                     ; preds = %land.lhs.true.3000
  br label %for.cond.3004

for.cond.3004:                                    ; preds = %for.inc.3017, %if.then.3003
  %1865 = load i64, i64* %nspace2951, align 8
  %tobool3005 = icmp ne i64 %1865, 0
  br i1 %tobool3005, label %for.body.3006, label %for.end.3019

for.body.3006:                                    ; preds = %for.cond.3004
  %1866 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1866, %struct.obstack** %__o3007, align 8
  %1867 = load %struct.obstack*, %struct.obstack** %__o3007, align 8
  %next_free3008 = getelementptr inbounds %struct.obstack, %struct.obstack* %1867, i32 0, i32 3
  %1868 = load i8*, i8** %next_free3008, align 8
  %add.ptr3009 = getelementptr inbounds i8, i8* %1868, i64 1
  %1869 = load %struct.obstack*, %struct.obstack** %__o3007, align 8
  %chunk_limit3010 = getelementptr inbounds %struct.obstack, %struct.obstack* %1869, i32 0, i32 4
  %1870 = load i8*, i8** %chunk_limit3010, align 8
  %cmp3011 = icmp ugt i8* %add.ptr3009, %1870
  br i1 %cmp3011, label %if.then.3013, label %if.end.3014

if.then.3013:                                     ; preds = %for.body.3006
  %1871 = load %struct.obstack*, %struct.obstack** %__o3007, align 8
  call void @_obstack_newchunk(%struct.obstack* %1871, i32 1)
  br label %if.end.3014

if.end.3014:                                      ; preds = %if.then.3013, %for.body.3006
  %1872 = load i8, i8* %padding, align 1
  %1873 = load %struct.obstack*, %struct.obstack** %__o3007, align 8
  %next_free3015 = getelementptr inbounds %struct.obstack, %struct.obstack* %1873, i32 0, i32 3
  %1874 = load i8*, i8** %next_free3015, align 8
  %incdec.ptr3016 = getelementptr inbounds i8, i8* %1874, i32 1
  store i8* %incdec.ptr3016, i8** %next_free3015, align 8
  store i8 %1872, i8* %1874, align 1
  br label %for.inc.3017

for.inc.3017:                                     ; preds = %if.end.3014
  %1875 = load i64, i64* %nspace2951, align 8
  %dec3018 = add i64 %1875, -1
  store i64 %dec3018, i64* %nspace2951, align 8
  br label %for.cond.3004

for.end.3019:                                     ; preds = %for.cond.3004
  br label %if.end.3020

if.end.3020:                                      ; preds = %for.end.3019, %land.lhs.true.3000, %if.end.2991
  br label %do.end.3021

do.end.3021:                                      ; preds = %if.end.3020
  br label %if.end.3022

if.end.3022:                                      ; preds = %do.end.3021, %if.end.2943
  br label %sw.epilog.6153

sw.bb.3023:                                       ; preds = %sw.bb.2280
  %arraydecay3024 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1876 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %num = getelementptr inbounds %struct.file_job, %struct.file_job* %1876, i32 0, i32 14
  %1877 = load i32, i32* %num, align 4
  %call3025 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %1877) #5
  br label %do.body.3026

do.body.3026:                                     ; preds = %sw.bb.3023
  %arraydecay3028 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3029 = call i64 @strlen(i8* %arraydecay3028) #6
  store i64 %call3029, i64* %len3027, align 8
  %1878 = load i64, i64* %len3027, align 8
  %1879 = load i64, i64* %width, align 8
  %cmp3031 = icmp ugt i64 %1878, %1879
  br i1 %cmp3031, label %cond.true.3033, label %cond.false.3034

cond.true.3033:                                   ; preds = %do.body.3026
  br label %cond.end.3036

cond.false.3034:                                  ; preds = %do.body.3026
  %1880 = load i64, i64* %width, align 8
  %1881 = load i64, i64* %len3027, align 8
  %sub3035 = sub i64 %1880, %1881
  br label %cond.end.3036

cond.end.3036:                                    ; preds = %cond.false.3034, %cond.true.3033
  %cond3037 = phi i64 [ 0, %cond.true.3033 ], [ %sub3035, %cond.false.3034 ]
  store i64 %cond3037, i64* %nspace3030, align 8
  %1882 = load i64, i64* %width, align 8
  %tobool3038 = icmp ne i64 %1882, 0
  br i1 %tobool3038, label %land.lhs.true.3039, label %if.end.3059

land.lhs.true.3039:                               ; preds = %cond.end.3036
  %1883 = load i32, i32* %justification, align 4
  %cmp3040 = icmp sgt i32 %1883, 0
  br i1 %cmp3040, label %if.then.3042, label %if.end.3059

if.then.3042:                                     ; preds = %land.lhs.true.3039
  br label %for.cond.3043

for.cond.3043:                                    ; preds = %for.inc.3056, %if.then.3042
  %1884 = load i64, i64* %nspace3030, align 8
  %tobool3044 = icmp ne i64 %1884, 0
  br i1 %tobool3044, label %for.body.3045, label %for.end.3058

for.body.3045:                                    ; preds = %for.cond.3043
  %1885 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1885, %struct.obstack** %__o3046, align 8
  %1886 = load %struct.obstack*, %struct.obstack** %__o3046, align 8
  %next_free3047 = getelementptr inbounds %struct.obstack, %struct.obstack* %1886, i32 0, i32 3
  %1887 = load i8*, i8** %next_free3047, align 8
  %add.ptr3048 = getelementptr inbounds i8, i8* %1887, i64 1
  %1888 = load %struct.obstack*, %struct.obstack** %__o3046, align 8
  %chunk_limit3049 = getelementptr inbounds %struct.obstack, %struct.obstack* %1888, i32 0, i32 4
  %1889 = load i8*, i8** %chunk_limit3049, align 8
  %cmp3050 = icmp ugt i8* %add.ptr3048, %1889
  br i1 %cmp3050, label %if.then.3052, label %if.end.3053

if.then.3052:                                     ; preds = %for.body.3045
  %1890 = load %struct.obstack*, %struct.obstack** %__o3046, align 8
  call void @_obstack_newchunk(%struct.obstack* %1890, i32 1)
  br label %if.end.3053

if.end.3053:                                      ; preds = %if.then.3052, %for.body.3045
  %1891 = load i8, i8* %padding, align 1
  %1892 = load %struct.obstack*, %struct.obstack** %__o3046, align 8
  %next_free3054 = getelementptr inbounds %struct.obstack, %struct.obstack* %1892, i32 0, i32 3
  %1893 = load i8*, i8** %next_free3054, align 8
  %incdec.ptr3055 = getelementptr inbounds i8, i8* %1893, i32 1
  store i8* %incdec.ptr3055, i8** %next_free3054, align 8
  store i8 %1891, i8* %1893, align 1
  br label %for.inc.3056

for.inc.3056:                                     ; preds = %if.end.3053
  %1894 = load i64, i64* %nspace3030, align 8
  %dec3057 = add i64 %1894, -1
  store i64 %dec3057, i64* %nspace3030, align 8
  br label %for.cond.3043

for.end.3058:                                     ; preds = %for.cond.3043
  br label %if.end.3059

if.end.3059:                                      ; preds = %for.end.3058, %land.lhs.true.3039, %cond.end.3036
  %1895 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1895, %struct.obstack** %__o3060, align 8
  %1896 = load i64, i64* %len3027, align 8
  %conv3062 = trunc i64 %1896 to i32
  store i32 %conv3062, i32* %__len3061, align 4
  %1897 = load %struct.obstack*, %struct.obstack** %__o3060, align 8
  %next_free3063 = getelementptr inbounds %struct.obstack, %struct.obstack* %1897, i32 0, i32 3
  %1898 = load i8*, i8** %next_free3063, align 8
  %1899 = load i32, i32* %__len3061, align 4
  %idx.ext3064 = sext i32 %1899 to i64
  %add.ptr3065 = getelementptr inbounds i8, i8* %1898, i64 %idx.ext3064
  %1900 = load %struct.obstack*, %struct.obstack** %__o3060, align 8
  %chunk_limit3066 = getelementptr inbounds %struct.obstack, %struct.obstack* %1900, i32 0, i32 4
  %1901 = load i8*, i8** %chunk_limit3066, align 8
  %cmp3067 = icmp ugt i8* %add.ptr3065, %1901
  br i1 %cmp3067, label %if.then.3069, label %if.end.3070

if.then.3069:                                     ; preds = %if.end.3059
  %1902 = load %struct.obstack*, %struct.obstack** %__o3060, align 8
  %1903 = load i32, i32* %__len3061, align 4
  call void @_obstack_newchunk(%struct.obstack* %1902, i32 %1903)
  br label %if.end.3070

if.end.3070:                                      ; preds = %if.then.3069, %if.end.3059
  %1904 = load %struct.obstack*, %struct.obstack** %__o3060, align 8
  %next_free3071 = getelementptr inbounds %struct.obstack, %struct.obstack* %1904, i32 0, i32 3
  %1905 = load i8*, i8** %next_free3071, align 8
  %arraydecay3072 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1906 = load i32, i32* %__len3061, align 4
  %conv3073 = sext i32 %1906 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1905, i8* %arraydecay3072, i64 %conv3073, i32 1, i1 false)
  %1907 = load i32, i32* %__len3061, align 4
  %1908 = load %struct.obstack*, %struct.obstack** %__o3060, align 8
  %next_free3074 = getelementptr inbounds %struct.obstack, %struct.obstack* %1908, i32 0, i32 3
  %1909 = load i8*, i8** %next_free3074, align 8
  %idx.ext3075 = sext i32 %1907 to i64
  %add.ptr3076 = getelementptr inbounds i8, i8* %1909, i64 %idx.ext3075
  store i8* %add.ptr3076, i8** %next_free3074, align 8
  %1910 = load i64, i64* %width, align 8
  %tobool3077 = icmp ne i64 %1910, 0
  br i1 %tobool3077, label %land.lhs.true.3078, label %if.end.3098

land.lhs.true.3078:                               ; preds = %if.end.3070
  %1911 = load i32, i32* %justification, align 4
  %cmp3079 = icmp slt i32 %1911, 0
  br i1 %cmp3079, label %if.then.3081, label %if.end.3098

if.then.3081:                                     ; preds = %land.lhs.true.3078
  br label %for.cond.3082

for.cond.3082:                                    ; preds = %for.inc.3095, %if.then.3081
  %1912 = load i64, i64* %nspace3030, align 8
  %tobool3083 = icmp ne i64 %1912, 0
  br i1 %tobool3083, label %for.body.3084, label %for.end.3097

for.body.3084:                                    ; preds = %for.cond.3082
  %1913 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1913, %struct.obstack** %__o3085, align 8
  %1914 = load %struct.obstack*, %struct.obstack** %__o3085, align 8
  %next_free3086 = getelementptr inbounds %struct.obstack, %struct.obstack* %1914, i32 0, i32 3
  %1915 = load i8*, i8** %next_free3086, align 8
  %add.ptr3087 = getelementptr inbounds i8, i8* %1915, i64 1
  %1916 = load %struct.obstack*, %struct.obstack** %__o3085, align 8
  %chunk_limit3088 = getelementptr inbounds %struct.obstack, %struct.obstack* %1916, i32 0, i32 4
  %1917 = load i8*, i8** %chunk_limit3088, align 8
  %cmp3089 = icmp ugt i8* %add.ptr3087, %1917
  br i1 %cmp3089, label %if.then.3091, label %if.end.3092

if.then.3091:                                     ; preds = %for.body.3084
  %1918 = load %struct.obstack*, %struct.obstack** %__o3085, align 8
  call void @_obstack_newchunk(%struct.obstack* %1918, i32 1)
  br label %if.end.3092

if.end.3092:                                      ; preds = %if.then.3091, %for.body.3084
  %1919 = load i8, i8* %padding, align 1
  %1920 = load %struct.obstack*, %struct.obstack** %__o3085, align 8
  %next_free3093 = getelementptr inbounds %struct.obstack, %struct.obstack* %1920, i32 0, i32 3
  %1921 = load i8*, i8** %next_free3093, align 8
  %incdec.ptr3094 = getelementptr inbounds i8, i8* %1921, i32 1
  store i8* %incdec.ptr3094, i8** %next_free3093, align 8
  store i8 %1919, i8* %1921, align 1
  br label %for.inc.3095

for.inc.3095:                                     ; preds = %if.end.3092
  %1922 = load i64, i64* %nspace3030, align 8
  %dec3096 = add i64 %1922, -1
  store i64 %dec3096, i64* %nspace3030, align 8
  br label %for.cond.3082

for.end.3097:                                     ; preds = %for.cond.3082
  br label %if.end.3098

if.end.3098:                                      ; preds = %for.end.3097, %land.lhs.true.3078, %if.end.3070
  br label %do.end.3099

do.end.3099:                                      ; preds = %if.end.3098
  br label %sw.epilog.6153

sw.bb.3100:                                       ; preds = %sw.bb.2280
  %arraydecay3101 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1923 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3102 = getelementptr inbounds %struct.file_job, %struct.file_job* %1923, i32 0, i32 5
  %tm_hour3103 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3102, i32 0, i32 2
  %1924 = load i32, i32* %tm_hour3103, align 4
  %1925 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3104 = getelementptr inbounds %struct.file_job, %struct.file_job* %1925, i32 0, i32 5
  %tm_min3105 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3104, i32 0, i32 1
  %1926 = load i32, i32* %tm_min3105, align 4
  %1927 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3106 = getelementptr inbounds %struct.file_job, %struct.file_job* %1927, i32 0, i32 5
  %tm_sec3107 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3106, i32 0, i32 0
  %1928 = load i32, i32* %tm_sec3107, align 4
  %call3108 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %1924, i32 %1926, i32 %1928) #5
  br label %do.body.3109

do.body.3109:                                     ; preds = %sw.bb.3100
  %arraydecay3111 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3112 = call i64 @strlen(i8* %arraydecay3111) #6
  store i64 %call3112, i64* %len3110, align 8
  %1929 = load i64, i64* %len3110, align 8
  %1930 = load i64, i64* %width, align 8
  %cmp3114 = icmp ugt i64 %1929, %1930
  br i1 %cmp3114, label %cond.true.3116, label %cond.false.3117

cond.true.3116:                                   ; preds = %do.body.3109
  br label %cond.end.3119

cond.false.3117:                                  ; preds = %do.body.3109
  %1931 = load i64, i64* %width, align 8
  %1932 = load i64, i64* %len3110, align 8
  %sub3118 = sub i64 %1931, %1932
  br label %cond.end.3119

cond.end.3119:                                    ; preds = %cond.false.3117, %cond.true.3116
  %cond3120 = phi i64 [ 0, %cond.true.3116 ], [ %sub3118, %cond.false.3117 ]
  store i64 %cond3120, i64* %nspace3113, align 8
  %1933 = load i64, i64* %width, align 8
  %tobool3121 = icmp ne i64 %1933, 0
  br i1 %tobool3121, label %land.lhs.true.3122, label %if.end.3142

land.lhs.true.3122:                               ; preds = %cond.end.3119
  %1934 = load i32, i32* %justification, align 4
  %cmp3123 = icmp sgt i32 %1934, 0
  br i1 %cmp3123, label %if.then.3125, label %if.end.3142

if.then.3125:                                     ; preds = %land.lhs.true.3122
  br label %for.cond.3126

for.cond.3126:                                    ; preds = %for.inc.3139, %if.then.3125
  %1935 = load i64, i64* %nspace3113, align 8
  %tobool3127 = icmp ne i64 %1935, 0
  br i1 %tobool3127, label %for.body.3128, label %for.end.3141

for.body.3128:                                    ; preds = %for.cond.3126
  %1936 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1936, %struct.obstack** %__o3129, align 8
  %1937 = load %struct.obstack*, %struct.obstack** %__o3129, align 8
  %next_free3130 = getelementptr inbounds %struct.obstack, %struct.obstack* %1937, i32 0, i32 3
  %1938 = load i8*, i8** %next_free3130, align 8
  %add.ptr3131 = getelementptr inbounds i8, i8* %1938, i64 1
  %1939 = load %struct.obstack*, %struct.obstack** %__o3129, align 8
  %chunk_limit3132 = getelementptr inbounds %struct.obstack, %struct.obstack* %1939, i32 0, i32 4
  %1940 = load i8*, i8** %chunk_limit3132, align 8
  %cmp3133 = icmp ugt i8* %add.ptr3131, %1940
  br i1 %cmp3133, label %if.then.3135, label %if.end.3136

if.then.3135:                                     ; preds = %for.body.3128
  %1941 = load %struct.obstack*, %struct.obstack** %__o3129, align 8
  call void @_obstack_newchunk(%struct.obstack* %1941, i32 1)
  br label %if.end.3136

if.end.3136:                                      ; preds = %if.then.3135, %for.body.3128
  %1942 = load i8, i8* %padding, align 1
  %1943 = load %struct.obstack*, %struct.obstack** %__o3129, align 8
  %next_free3137 = getelementptr inbounds %struct.obstack, %struct.obstack* %1943, i32 0, i32 3
  %1944 = load i8*, i8** %next_free3137, align 8
  %incdec.ptr3138 = getelementptr inbounds i8, i8* %1944, i32 1
  store i8* %incdec.ptr3138, i8** %next_free3137, align 8
  store i8 %1942, i8* %1944, align 1
  br label %for.inc.3139

for.inc.3139:                                     ; preds = %if.end.3136
  %1945 = load i64, i64* %nspace3113, align 8
  %dec3140 = add i64 %1945, -1
  store i64 %dec3140, i64* %nspace3113, align 8
  br label %for.cond.3126

for.end.3141:                                     ; preds = %for.cond.3126
  br label %if.end.3142

if.end.3142:                                      ; preds = %for.end.3141, %land.lhs.true.3122, %cond.end.3119
  %1946 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1946, %struct.obstack** %__o3143, align 8
  %1947 = load i64, i64* %len3110, align 8
  %conv3145 = trunc i64 %1947 to i32
  store i32 %conv3145, i32* %__len3144, align 4
  %1948 = load %struct.obstack*, %struct.obstack** %__o3143, align 8
  %next_free3146 = getelementptr inbounds %struct.obstack, %struct.obstack* %1948, i32 0, i32 3
  %1949 = load i8*, i8** %next_free3146, align 8
  %1950 = load i32, i32* %__len3144, align 4
  %idx.ext3147 = sext i32 %1950 to i64
  %add.ptr3148 = getelementptr inbounds i8, i8* %1949, i64 %idx.ext3147
  %1951 = load %struct.obstack*, %struct.obstack** %__o3143, align 8
  %chunk_limit3149 = getelementptr inbounds %struct.obstack, %struct.obstack* %1951, i32 0, i32 4
  %1952 = load i8*, i8** %chunk_limit3149, align 8
  %cmp3150 = icmp ugt i8* %add.ptr3148, %1952
  br i1 %cmp3150, label %if.then.3152, label %if.end.3153

if.then.3152:                                     ; preds = %if.end.3142
  %1953 = load %struct.obstack*, %struct.obstack** %__o3143, align 8
  %1954 = load i32, i32* %__len3144, align 4
  call void @_obstack_newchunk(%struct.obstack* %1953, i32 %1954)
  br label %if.end.3153

if.end.3153:                                      ; preds = %if.then.3152, %if.end.3142
  %1955 = load %struct.obstack*, %struct.obstack** %__o3143, align 8
  %next_free3154 = getelementptr inbounds %struct.obstack, %struct.obstack* %1955, i32 0, i32 3
  %1956 = load i8*, i8** %next_free3154, align 8
  %arraydecay3155 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1957 = load i32, i32* %__len3144, align 4
  %conv3156 = sext i32 %1957 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1956, i8* %arraydecay3155, i64 %conv3156, i32 1, i1 false)
  %1958 = load i32, i32* %__len3144, align 4
  %1959 = load %struct.obstack*, %struct.obstack** %__o3143, align 8
  %next_free3157 = getelementptr inbounds %struct.obstack, %struct.obstack* %1959, i32 0, i32 3
  %1960 = load i8*, i8** %next_free3157, align 8
  %idx.ext3158 = sext i32 %1958 to i64
  %add.ptr3159 = getelementptr inbounds i8, i8* %1960, i64 %idx.ext3158
  store i8* %add.ptr3159, i8** %next_free3157, align 8
  %1961 = load i64, i64* %width, align 8
  %tobool3160 = icmp ne i64 %1961, 0
  br i1 %tobool3160, label %land.lhs.true.3161, label %if.end.3181

land.lhs.true.3161:                               ; preds = %if.end.3153
  %1962 = load i32, i32* %justification, align 4
  %cmp3162 = icmp slt i32 %1962, 0
  br i1 %cmp3162, label %if.then.3164, label %if.end.3181

if.then.3164:                                     ; preds = %land.lhs.true.3161
  br label %for.cond.3165

for.cond.3165:                                    ; preds = %for.inc.3178, %if.then.3164
  %1963 = load i64, i64* %nspace3113, align 8
  %tobool3166 = icmp ne i64 %1963, 0
  br i1 %tobool3166, label %for.body.3167, label %for.end.3180

for.body.3167:                                    ; preds = %for.cond.3165
  %1964 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1964, %struct.obstack** %__o3168, align 8
  %1965 = load %struct.obstack*, %struct.obstack** %__o3168, align 8
  %next_free3169 = getelementptr inbounds %struct.obstack, %struct.obstack* %1965, i32 0, i32 3
  %1966 = load i8*, i8** %next_free3169, align 8
  %add.ptr3170 = getelementptr inbounds i8, i8* %1966, i64 1
  %1967 = load %struct.obstack*, %struct.obstack** %__o3168, align 8
  %chunk_limit3171 = getelementptr inbounds %struct.obstack, %struct.obstack* %1967, i32 0, i32 4
  %1968 = load i8*, i8** %chunk_limit3171, align 8
  %cmp3172 = icmp ugt i8* %add.ptr3170, %1968
  br i1 %cmp3172, label %if.then.3174, label %if.end.3175

if.then.3174:                                     ; preds = %for.body.3167
  %1969 = load %struct.obstack*, %struct.obstack** %__o3168, align 8
  call void @_obstack_newchunk(%struct.obstack* %1969, i32 1)
  br label %if.end.3175

if.end.3175:                                      ; preds = %if.then.3174, %for.body.3167
  %1970 = load i8, i8* %padding, align 1
  %1971 = load %struct.obstack*, %struct.obstack** %__o3168, align 8
  %next_free3176 = getelementptr inbounds %struct.obstack, %struct.obstack* %1971, i32 0, i32 3
  %1972 = load i8*, i8** %next_free3176, align 8
  %incdec.ptr3177 = getelementptr inbounds i8, i8* %1972, i32 1
  store i8* %incdec.ptr3177, i8** %next_free3176, align 8
  store i8 %1970, i8* %1972, align 1
  br label %for.inc.3178

for.inc.3178:                                     ; preds = %if.end.3175
  %1973 = load i64, i64* %nspace3113, align 8
  %dec3179 = add i64 %1973, -1
  store i64 %dec3179, i64* %nspace3113, align 8
  br label %for.cond.3165

for.end.3180:                                     ; preds = %for.cond.3165
  br label %if.end.3181

if.end.3181:                                      ; preds = %for.end.3180, %land.lhs.true.3161, %if.end.3153
  br label %do.end.3182

do.end.3182:                                      ; preds = %if.end.3181
  br label %sw.epilog.6153

sw.bb.3183:                                       ; preds = %sw.bb.2280
  %1974 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %1974, i32 0, i32 0
  %1975 = load i8*, i8** %name, align 8
  %call3184 = call i8* @strrchr(i8* %1975, i32 47) #6
  store i8* %call3184, i8** %cp, align 8
  %1976 = load i8*, i8** %cp, align 8
  %tobool3185 = icmp ne i8* %1976, null
  br i1 %tobool3185, label %if.then.3186, label %if.else.3270

if.then.3186:                                     ; preds = %sw.bb.3183
  %arraydecay3187 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %1977 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name3188 = getelementptr inbounds %struct.file_job, %struct.file_job* %1977, i32 0, i32 0
  %1978 = load i8*, i8** %name3188, align 8
  %1979 = load i8*, i8** %cp, align 8
  %1980 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name3189 = getelementptr inbounds %struct.file_job, %struct.file_job* %1980, i32 0, i32 0
  %1981 = load i8*, i8** %name3189, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1979 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1981 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3190 = call i8* @strncpy(i8* %arraydecay3187, i8* %1978, i64 %sub.ptr.sub) #5
  %1982 = load i8*, i8** %cp, align 8
  %1983 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name3191 = getelementptr inbounds %struct.file_job, %struct.file_job* %1983, i32 0, i32 0
  %1984 = load i8*, i8** %name3191, align 8
  %sub.ptr.lhs.cast3192 = ptrtoint i8* %1982 to i64
  %sub.ptr.rhs.cast3193 = ptrtoint i8* %1984 to i64
  %sub.ptr.sub3194 = sub i64 %sub.ptr.lhs.cast3192, %sub.ptr.rhs.cast3193
  %arrayidx3195 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %sub.ptr.sub3194
  store i8 0, i8* %arrayidx3195, align 1
  br label %do.body.3196

do.body.3196:                                     ; preds = %if.then.3186
  %arraydecay3198 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3199 = call i64 @strlen(i8* %arraydecay3198) #6
  store i64 %call3199, i64* %len3197, align 8
  %1985 = load i64, i64* %len3197, align 8
  %1986 = load i64, i64* %width, align 8
  %cmp3201 = icmp ugt i64 %1985, %1986
  br i1 %cmp3201, label %cond.true.3203, label %cond.false.3204

cond.true.3203:                                   ; preds = %do.body.3196
  br label %cond.end.3206

cond.false.3204:                                  ; preds = %do.body.3196
  %1987 = load i64, i64* %width, align 8
  %1988 = load i64, i64* %len3197, align 8
  %sub3205 = sub i64 %1987, %1988
  br label %cond.end.3206

cond.end.3206:                                    ; preds = %cond.false.3204, %cond.true.3203
  %cond3207 = phi i64 [ 0, %cond.true.3203 ], [ %sub3205, %cond.false.3204 ]
  store i64 %cond3207, i64* %nspace3200, align 8
  %1989 = load i64, i64* %width, align 8
  %tobool3208 = icmp ne i64 %1989, 0
  br i1 %tobool3208, label %land.lhs.true.3209, label %if.end.3229

land.lhs.true.3209:                               ; preds = %cond.end.3206
  %1990 = load i32, i32* %justification, align 4
  %cmp3210 = icmp sgt i32 %1990, 0
  br i1 %cmp3210, label %if.then.3212, label %if.end.3229

if.then.3212:                                     ; preds = %land.lhs.true.3209
  br label %for.cond.3213

for.cond.3213:                                    ; preds = %for.inc.3226, %if.then.3212
  %1991 = load i64, i64* %nspace3200, align 8
  %tobool3214 = icmp ne i64 %1991, 0
  br i1 %tobool3214, label %for.body.3215, label %for.end.3228

for.body.3215:                                    ; preds = %for.cond.3213
  %1992 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %1992, %struct.obstack** %__o3216, align 8
  %1993 = load %struct.obstack*, %struct.obstack** %__o3216, align 8
  %next_free3217 = getelementptr inbounds %struct.obstack, %struct.obstack* %1993, i32 0, i32 3
  %1994 = load i8*, i8** %next_free3217, align 8
  %add.ptr3218 = getelementptr inbounds i8, i8* %1994, i64 1
  %1995 = load %struct.obstack*, %struct.obstack** %__o3216, align 8
  %chunk_limit3219 = getelementptr inbounds %struct.obstack, %struct.obstack* %1995, i32 0, i32 4
  %1996 = load i8*, i8** %chunk_limit3219, align 8
  %cmp3220 = icmp ugt i8* %add.ptr3218, %1996
  br i1 %cmp3220, label %if.then.3222, label %if.end.3223

if.then.3222:                                     ; preds = %for.body.3215
  %1997 = load %struct.obstack*, %struct.obstack** %__o3216, align 8
  call void @_obstack_newchunk(%struct.obstack* %1997, i32 1)
  br label %if.end.3223

if.end.3223:                                      ; preds = %if.then.3222, %for.body.3215
  %1998 = load i8, i8* %padding, align 1
  %1999 = load %struct.obstack*, %struct.obstack** %__o3216, align 8
  %next_free3224 = getelementptr inbounds %struct.obstack, %struct.obstack* %1999, i32 0, i32 3
  %2000 = load i8*, i8** %next_free3224, align 8
  %incdec.ptr3225 = getelementptr inbounds i8, i8* %2000, i32 1
  store i8* %incdec.ptr3225, i8** %next_free3224, align 8
  store i8 %1998, i8* %2000, align 1
  br label %for.inc.3226

for.inc.3226:                                     ; preds = %if.end.3223
  %2001 = load i64, i64* %nspace3200, align 8
  %dec3227 = add i64 %2001, -1
  store i64 %dec3227, i64* %nspace3200, align 8
  br label %for.cond.3213

for.end.3228:                                     ; preds = %for.cond.3213
  br label %if.end.3229

if.end.3229:                                      ; preds = %for.end.3228, %land.lhs.true.3209, %cond.end.3206
  %2002 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2002, %struct.obstack** %__o3230, align 8
  %2003 = load i64, i64* %len3197, align 8
  %conv3232 = trunc i64 %2003 to i32
  store i32 %conv3232, i32* %__len3231, align 4
  %2004 = load %struct.obstack*, %struct.obstack** %__o3230, align 8
  %next_free3233 = getelementptr inbounds %struct.obstack, %struct.obstack* %2004, i32 0, i32 3
  %2005 = load i8*, i8** %next_free3233, align 8
  %2006 = load i32, i32* %__len3231, align 4
  %idx.ext3234 = sext i32 %2006 to i64
  %add.ptr3235 = getelementptr inbounds i8, i8* %2005, i64 %idx.ext3234
  %2007 = load %struct.obstack*, %struct.obstack** %__o3230, align 8
  %chunk_limit3236 = getelementptr inbounds %struct.obstack, %struct.obstack* %2007, i32 0, i32 4
  %2008 = load i8*, i8** %chunk_limit3236, align 8
  %cmp3237 = icmp ugt i8* %add.ptr3235, %2008
  br i1 %cmp3237, label %if.then.3239, label %if.end.3240

if.then.3239:                                     ; preds = %if.end.3229
  %2009 = load %struct.obstack*, %struct.obstack** %__o3230, align 8
  %2010 = load i32, i32* %__len3231, align 4
  call void @_obstack_newchunk(%struct.obstack* %2009, i32 %2010)
  br label %if.end.3240

if.end.3240:                                      ; preds = %if.then.3239, %if.end.3229
  %2011 = load %struct.obstack*, %struct.obstack** %__o3230, align 8
  %next_free3241 = getelementptr inbounds %struct.obstack, %struct.obstack* %2011, i32 0, i32 3
  %2012 = load i8*, i8** %next_free3241, align 8
  %arraydecay3242 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2013 = load i32, i32* %__len3231, align 4
  %conv3243 = sext i32 %2013 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2012, i8* %arraydecay3242, i64 %conv3243, i32 1, i1 false)
  %2014 = load i32, i32* %__len3231, align 4
  %2015 = load %struct.obstack*, %struct.obstack** %__o3230, align 8
  %next_free3244 = getelementptr inbounds %struct.obstack, %struct.obstack* %2015, i32 0, i32 3
  %2016 = load i8*, i8** %next_free3244, align 8
  %idx.ext3245 = sext i32 %2014 to i64
  %add.ptr3246 = getelementptr inbounds i8, i8* %2016, i64 %idx.ext3245
  store i8* %add.ptr3246, i8** %next_free3244, align 8
  %2017 = load i64, i64* %width, align 8
  %tobool3247 = icmp ne i64 %2017, 0
  br i1 %tobool3247, label %land.lhs.true.3248, label %if.end.3268

land.lhs.true.3248:                               ; preds = %if.end.3240
  %2018 = load i32, i32* %justification, align 4
  %cmp3249 = icmp slt i32 %2018, 0
  br i1 %cmp3249, label %if.then.3251, label %if.end.3268

if.then.3251:                                     ; preds = %land.lhs.true.3248
  br label %for.cond.3252

for.cond.3252:                                    ; preds = %for.inc.3265, %if.then.3251
  %2019 = load i64, i64* %nspace3200, align 8
  %tobool3253 = icmp ne i64 %2019, 0
  br i1 %tobool3253, label %for.body.3254, label %for.end.3267

for.body.3254:                                    ; preds = %for.cond.3252
  %2020 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2020, %struct.obstack** %__o3255, align 8
  %2021 = load %struct.obstack*, %struct.obstack** %__o3255, align 8
  %next_free3256 = getelementptr inbounds %struct.obstack, %struct.obstack* %2021, i32 0, i32 3
  %2022 = load i8*, i8** %next_free3256, align 8
  %add.ptr3257 = getelementptr inbounds i8, i8* %2022, i64 1
  %2023 = load %struct.obstack*, %struct.obstack** %__o3255, align 8
  %chunk_limit3258 = getelementptr inbounds %struct.obstack, %struct.obstack* %2023, i32 0, i32 4
  %2024 = load i8*, i8** %chunk_limit3258, align 8
  %cmp3259 = icmp ugt i8* %add.ptr3257, %2024
  br i1 %cmp3259, label %if.then.3261, label %if.end.3262

if.then.3261:                                     ; preds = %for.body.3254
  %2025 = load %struct.obstack*, %struct.obstack** %__o3255, align 8
  call void @_obstack_newchunk(%struct.obstack* %2025, i32 1)
  br label %if.end.3262

if.end.3262:                                      ; preds = %if.then.3261, %for.body.3254
  %2026 = load i8, i8* %padding, align 1
  %2027 = load %struct.obstack*, %struct.obstack** %__o3255, align 8
  %next_free3263 = getelementptr inbounds %struct.obstack, %struct.obstack* %2027, i32 0, i32 3
  %2028 = load i8*, i8** %next_free3263, align 8
  %incdec.ptr3264 = getelementptr inbounds i8, i8* %2028, i32 1
  store i8* %incdec.ptr3264, i8** %next_free3263, align 8
  store i8 %2026, i8* %2028, align 1
  br label %for.inc.3265

for.inc.3265:                                     ; preds = %if.end.3262
  %2029 = load i64, i64* %nspace3200, align 8
  %dec3266 = add i64 %2029, -1
  store i64 %dec3266, i64* %nspace3200, align 8
  br label %for.cond.3252

for.end.3267:                                     ; preds = %for.cond.3252
  br label %if.end.3268

if.end.3268:                                      ; preds = %for.end.3267, %land.lhs.true.3248, %if.end.3240
  br label %do.end.3269

do.end.3269:                                      ; preds = %if.end.3268
  br label %if.end.3325

if.else.3270:                                     ; preds = %sw.bb.3183
  br label %do.body.3271

do.body.3271:                                     ; preds = %if.else.3270
  %2030 = load i64, i64* %width, align 8
  %tobool3273 = icmp ne i64 %2030, 0
  br i1 %tobool3273, label %land.lhs.true.3274, label %if.end.3288

land.lhs.true.3274:                               ; preds = %do.body.3271
  %2031 = load i32, i32* %justification, align 4
  %cmp3275 = icmp slt i32 %2031, 0
  br i1 %cmp3275, label %if.then.3277, label %if.end.3288

if.then.3277:                                     ; preds = %land.lhs.true.3274
  %2032 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2032, %struct.obstack** %__o3278, align 8
  %2033 = load %struct.obstack*, %struct.obstack** %__o3278, align 8
  %next_free3279 = getelementptr inbounds %struct.obstack, %struct.obstack* %2033, i32 0, i32 3
  %2034 = load i8*, i8** %next_free3279, align 8
  %add.ptr3280 = getelementptr inbounds i8, i8* %2034, i64 1
  %2035 = load %struct.obstack*, %struct.obstack** %__o3278, align 8
  %chunk_limit3281 = getelementptr inbounds %struct.obstack, %struct.obstack* %2035, i32 0, i32 4
  %2036 = load i8*, i8** %chunk_limit3281, align 8
  %cmp3282 = icmp ugt i8* %add.ptr3280, %2036
  br i1 %cmp3282, label %if.then.3284, label %if.end.3285

if.then.3284:                                     ; preds = %if.then.3277
  %2037 = load %struct.obstack*, %struct.obstack** %__o3278, align 8
  call void @_obstack_newchunk(%struct.obstack* %2037, i32 1)
  br label %if.end.3285

if.end.3285:                                      ; preds = %if.then.3284, %if.then.3277
  %2038 = load %struct.obstack*, %struct.obstack** %__o3278, align 8
  %next_free3286 = getelementptr inbounds %struct.obstack, %struct.obstack* %2038, i32 0, i32 3
  %2039 = load i8*, i8** %next_free3286, align 8
  %incdec.ptr3287 = getelementptr inbounds i8, i8* %2039, i32 1
  store i8* %incdec.ptr3287, i8** %next_free3286, align 8
  store i8 46, i8* %2039, align 1
  br label %if.end.3288

if.end.3288:                                      ; preds = %if.end.3285, %land.lhs.true.3274, %do.body.3271
  store i32 0, i32* %a3272, align 4
  br label %for.cond.3289

for.cond.3289:                                    ; preds = %for.inc.3305, %if.end.3288
  %2040 = load i32, i32* %a3272, align 4
  %2041 = load i64, i64* %width, align 8
  %conv3290 = trunc i64 %2041 to i32
  %sub3291 = sub nsw i32 %conv3290, 1
  %cmp3292 = icmp slt i32 %2040, %sub3291
  br i1 %cmp3292, label %for.body.3294, label %for.end.3307

for.body.3294:                                    ; preds = %for.cond.3289
  %2042 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2042, %struct.obstack** %__o3295, align 8
  %2043 = load %struct.obstack*, %struct.obstack** %__o3295, align 8
  %next_free3296 = getelementptr inbounds %struct.obstack, %struct.obstack* %2043, i32 0, i32 3
  %2044 = load i8*, i8** %next_free3296, align 8
  %add.ptr3297 = getelementptr inbounds i8, i8* %2044, i64 1
  %2045 = load %struct.obstack*, %struct.obstack** %__o3295, align 8
  %chunk_limit3298 = getelementptr inbounds %struct.obstack, %struct.obstack* %2045, i32 0, i32 4
  %2046 = load i8*, i8** %chunk_limit3298, align 8
  %cmp3299 = icmp ugt i8* %add.ptr3297, %2046
  br i1 %cmp3299, label %if.then.3301, label %if.end.3302

if.then.3301:                                     ; preds = %for.body.3294
  %2047 = load %struct.obstack*, %struct.obstack** %__o3295, align 8
  call void @_obstack_newchunk(%struct.obstack* %2047, i32 1)
  br label %if.end.3302

if.end.3302:                                      ; preds = %if.then.3301, %for.body.3294
  %2048 = load i8, i8* %padding, align 1
  %2049 = load %struct.obstack*, %struct.obstack** %__o3295, align 8
  %next_free3303 = getelementptr inbounds %struct.obstack, %struct.obstack* %2049, i32 0, i32 3
  %2050 = load i8*, i8** %next_free3303, align 8
  %incdec.ptr3304 = getelementptr inbounds i8, i8* %2050, i32 1
  store i8* %incdec.ptr3304, i8** %next_free3303, align 8
  store i8 %2048, i8* %2050, align 1
  br label %for.inc.3305

for.inc.3305:                                     ; preds = %if.end.3302
  %2051 = load i32, i32* %a3272, align 4
  %inc3306 = add nsw i32 %2051, 1
  store i32 %inc3306, i32* %a3272, align 4
  br label %for.cond.3289

for.end.3307:                                     ; preds = %for.cond.3289
  %2052 = load i64, i64* %width, align 8
  %tobool3308 = icmp ne i64 %2052, 0
  br i1 %tobool3308, label %lor.lhs.false.3309, label %if.then.3312

lor.lhs.false.3309:                               ; preds = %for.end.3307
  %2053 = load i32, i32* %justification, align 4
  %cmp3310 = icmp sgt i32 %2053, 0
  br i1 %cmp3310, label %if.then.3312, label %if.end.3323

if.then.3312:                                     ; preds = %lor.lhs.false.3309, %for.end.3307
  %2054 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2054, %struct.obstack** %__o3313, align 8
  %2055 = load %struct.obstack*, %struct.obstack** %__o3313, align 8
  %next_free3314 = getelementptr inbounds %struct.obstack, %struct.obstack* %2055, i32 0, i32 3
  %2056 = load i8*, i8** %next_free3314, align 8
  %add.ptr3315 = getelementptr inbounds i8, i8* %2056, i64 1
  %2057 = load %struct.obstack*, %struct.obstack** %__o3313, align 8
  %chunk_limit3316 = getelementptr inbounds %struct.obstack, %struct.obstack* %2057, i32 0, i32 4
  %2058 = load i8*, i8** %chunk_limit3316, align 8
  %cmp3317 = icmp ugt i8* %add.ptr3315, %2058
  br i1 %cmp3317, label %if.then.3319, label %if.end.3320

if.then.3319:                                     ; preds = %if.then.3312
  %2059 = load %struct.obstack*, %struct.obstack** %__o3313, align 8
  call void @_obstack_newchunk(%struct.obstack* %2059, i32 1)
  br label %if.end.3320

if.end.3320:                                      ; preds = %if.then.3319, %if.then.3312
  %2060 = load %struct.obstack*, %struct.obstack** %__o3313, align 8
  %next_free3321 = getelementptr inbounds %struct.obstack, %struct.obstack* %2060, i32 0, i32 3
  %2061 = load i8*, i8** %next_free3321, align 8
  %incdec.ptr3322 = getelementptr inbounds i8, i8* %2061, i32 1
  store i8* %incdec.ptr3322, i8** %next_free3321, align 8
  store i8 46, i8* %2061, align 1
  br label %if.end.3323

if.end.3323:                                      ; preds = %if.end.3320, %lor.lhs.false.3309
  br label %do.end.3324

do.end.3324:                                      ; preds = %if.end.3323
  br label %if.end.3325

if.end.3325:                                      ; preds = %do.end.3324, %do.end.3269
  br label %sw.epilog.6153

sw.bb.3326:                                       ; preds = %sw.bb.2280
  %2062 = load i64, i64* %i, align 8
  %add3327 = add i64 %2062, 1
  %2063 = load i8*, i8** %str.addr, align 8
  %arrayidx3328 = getelementptr inbounds i8, i8* %2063, i64 %add3327
  %2064 = load i8, i8* %arrayidx3328, align 1
  %conv3329 = zext i8 %2064 to i32
  %cmp3330 = icmp eq i32 %conv3329, 123
  br i1 %cmp3330, label %if.then.3332, label %if.else.3366

if.then.3332:                                     ; preds = %sw.bb.3326
  store i64 0, i64* %j, align 8
  %2065 = load i64, i64* %i, align 8
  %add3333 = add i64 %2065, 2
  store i64 %add3333, i64* %i, align 8
  br label %for.cond.3334

for.cond.3334:                                    ; preds = %for.inc.3350, %if.then.3332
  %2066 = load i64, i64* %j, align 8
  %cmp3335 = icmp ult i64 %2066, 512
  br i1 %cmp3335, label %land.lhs.true.3337, label %land.end.3346

land.lhs.true.3337:                               ; preds = %for.cond.3334
  %2067 = load i64, i64* %i, align 8
  %2068 = load i8*, i8** %str.addr, align 8
  %arrayidx3338 = getelementptr inbounds i8, i8* %2068, i64 %2067
  %2069 = load i8, i8* %arrayidx3338, align 1
  %conv3339 = zext i8 %2069 to i32
  %tobool3340 = icmp ne i32 %conv3339, 0
  br i1 %tobool3340, label %land.rhs.3341, label %land.end.3346

land.rhs.3341:                                    ; preds = %land.lhs.true.3337
  %2070 = load i64, i64* %i, align 8
  %2071 = load i8*, i8** %str.addr, align 8
  %arrayidx3342 = getelementptr inbounds i8, i8* %2071, i64 %2070
  %2072 = load i8, i8* %arrayidx3342, align 1
  %conv3343 = zext i8 %2072 to i32
  %cmp3344 = icmp ne i32 %conv3343, 125
  br label %land.end.3346

land.end.3346:                                    ; preds = %land.rhs.3341, %land.lhs.true.3337, %for.cond.3334
  %2073 = phi i1 [ false, %land.lhs.true.3337 ], [ false, %for.cond.3334 ], [ %cmp3344, %land.rhs.3341 ]
  br i1 %2073, label %for.body.3347, label %for.end.3353

for.body.3347:                                    ; preds = %land.end.3346
  %2074 = load i64, i64* %i, align 8
  %2075 = load i8*, i8** %str.addr, align 8
  %arrayidx3348 = getelementptr inbounds i8, i8* %2075, i64 %2074
  %2076 = load i8, i8* %arrayidx3348, align 1
  %2077 = load i64, i64* %j, align 8
  %arrayidx3349 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i64 %2077
  store i8 %2076, i8* %arrayidx3349, align 1
  br label %for.inc.3350

for.inc.3350:                                     ; preds = %for.body.3347
  %2078 = load i64, i64* %i, align 8
  %inc3351 = add i64 %2078, 1
  store i64 %inc3351, i64* %i, align 8
  %2079 = load i64, i64* %j, align 8
  %inc3352 = add i64 %2079, 1
  store i64 %inc3352, i64* %j, align 8
  br label %for.cond.3334

for.end.3353:                                     ; preds = %land.end.3346
  %2080 = load i64, i64* %i, align 8
  %2081 = load i8*, i8** %str.addr, align 8
  %arrayidx3354 = getelementptr inbounds i8, i8* %2081, i64 %2080
  %2082 = load i8, i8* %arrayidx3354, align 1
  %conv3355 = zext i8 %2082 to i32
  %cmp3356 = icmp ne i32 %conv3355, 125
  br i1 %cmp3356, label %if.then.3358, label %if.end.3360

if.then.3358:                                     ; preds = %for.end.3353
  %call3359 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #5
  %2083 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call3359, i8* %2083, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.3360

if.end.3360:                                      ; preds = %if.then.3358, %for.end.3353
  %2084 = load i64, i64* %j, align 8
  %arrayidx3361 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i64 %2084
  store i8 0, i8* %arrayidx3361, align 1
  %arraydecay3362 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay3363 = getelementptr inbounds [512 x i8], [512 x i8]* %buf2, i32 0, i32 0
  %2085 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3364 = getelementptr inbounds %struct.file_job, %struct.file_job* %2085, i32 0, i32 5
  %call3365 = call i64 @strftime(i8* %arraydecay3362, i64 512, i8* %arraydecay3363, %struct.tm* %mod_tm3364) #5
  br label %if.end.3377

if.else.3366:                                     ; preds = %sw.bb.3326
  %arraydecay3367 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2086 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3368 = getelementptr inbounds %struct.file_job, %struct.file_job* %2086, i32 0, i32 5
  %tm_year3369 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3368, i32 0, i32 5
  %2087 = load i32, i32* %tm_year3369, align 4
  %rem3370 = srem i32 %2087, 100
  %2088 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3371 = getelementptr inbounds %struct.file_job, %struct.file_job* %2088, i32 0, i32 5
  %tm_mon3372 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3371, i32 0, i32 4
  %2089 = load i32, i32* %tm_mon3372, align 4
  %add3373 = add nsw i32 %2089, 1
  %2090 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3374 = getelementptr inbounds %struct.file_job, %struct.file_job* %2090, i32 0, i32 5
  %tm_mday3375 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3374, i32 0, i32 3
  %2091 = load i32, i32* %tm_mday3375, align 4
  %call3376 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3367, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %rem3370, i32 %add3373, i32 %2091) #5
  br label %if.end.3377

if.end.3377:                                      ; preds = %if.else.3366, %if.end.3360
  br label %do.body.3378

do.body.3378:                                     ; preds = %if.end.3377
  %arraydecay3380 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3381 = call i64 @strlen(i8* %arraydecay3380) #6
  store i64 %call3381, i64* %len3379, align 8
  %2092 = load i64, i64* %len3379, align 8
  %2093 = load i64, i64* %width, align 8
  %cmp3383 = icmp ugt i64 %2092, %2093
  br i1 %cmp3383, label %cond.true.3385, label %cond.false.3386

cond.true.3385:                                   ; preds = %do.body.3378
  br label %cond.end.3388

cond.false.3386:                                  ; preds = %do.body.3378
  %2094 = load i64, i64* %width, align 8
  %2095 = load i64, i64* %len3379, align 8
  %sub3387 = sub i64 %2094, %2095
  br label %cond.end.3388

cond.end.3388:                                    ; preds = %cond.false.3386, %cond.true.3385
  %cond3389 = phi i64 [ 0, %cond.true.3385 ], [ %sub3387, %cond.false.3386 ]
  store i64 %cond3389, i64* %nspace3382, align 8
  %2096 = load i64, i64* %width, align 8
  %tobool3390 = icmp ne i64 %2096, 0
  br i1 %tobool3390, label %land.lhs.true.3391, label %if.end.3411

land.lhs.true.3391:                               ; preds = %cond.end.3388
  %2097 = load i32, i32* %justification, align 4
  %cmp3392 = icmp sgt i32 %2097, 0
  br i1 %cmp3392, label %if.then.3394, label %if.end.3411

if.then.3394:                                     ; preds = %land.lhs.true.3391
  br label %for.cond.3395

for.cond.3395:                                    ; preds = %for.inc.3408, %if.then.3394
  %2098 = load i64, i64* %nspace3382, align 8
  %tobool3396 = icmp ne i64 %2098, 0
  br i1 %tobool3396, label %for.body.3397, label %for.end.3410

for.body.3397:                                    ; preds = %for.cond.3395
  %2099 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2099, %struct.obstack** %__o3398, align 8
  %2100 = load %struct.obstack*, %struct.obstack** %__o3398, align 8
  %next_free3399 = getelementptr inbounds %struct.obstack, %struct.obstack* %2100, i32 0, i32 3
  %2101 = load i8*, i8** %next_free3399, align 8
  %add.ptr3400 = getelementptr inbounds i8, i8* %2101, i64 1
  %2102 = load %struct.obstack*, %struct.obstack** %__o3398, align 8
  %chunk_limit3401 = getelementptr inbounds %struct.obstack, %struct.obstack* %2102, i32 0, i32 4
  %2103 = load i8*, i8** %chunk_limit3401, align 8
  %cmp3402 = icmp ugt i8* %add.ptr3400, %2103
  br i1 %cmp3402, label %if.then.3404, label %if.end.3405

if.then.3404:                                     ; preds = %for.body.3397
  %2104 = load %struct.obstack*, %struct.obstack** %__o3398, align 8
  call void @_obstack_newchunk(%struct.obstack* %2104, i32 1)
  br label %if.end.3405

if.end.3405:                                      ; preds = %if.then.3404, %for.body.3397
  %2105 = load i8, i8* %padding, align 1
  %2106 = load %struct.obstack*, %struct.obstack** %__o3398, align 8
  %next_free3406 = getelementptr inbounds %struct.obstack, %struct.obstack* %2106, i32 0, i32 3
  %2107 = load i8*, i8** %next_free3406, align 8
  %incdec.ptr3407 = getelementptr inbounds i8, i8* %2107, i32 1
  store i8* %incdec.ptr3407, i8** %next_free3406, align 8
  store i8 %2105, i8* %2107, align 1
  br label %for.inc.3408

for.inc.3408:                                     ; preds = %if.end.3405
  %2108 = load i64, i64* %nspace3382, align 8
  %dec3409 = add i64 %2108, -1
  store i64 %dec3409, i64* %nspace3382, align 8
  br label %for.cond.3395

for.end.3410:                                     ; preds = %for.cond.3395
  br label %if.end.3411

if.end.3411:                                      ; preds = %for.end.3410, %land.lhs.true.3391, %cond.end.3388
  %2109 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2109, %struct.obstack** %__o3412, align 8
  %2110 = load i64, i64* %len3379, align 8
  %conv3414 = trunc i64 %2110 to i32
  store i32 %conv3414, i32* %__len3413, align 4
  %2111 = load %struct.obstack*, %struct.obstack** %__o3412, align 8
  %next_free3415 = getelementptr inbounds %struct.obstack, %struct.obstack* %2111, i32 0, i32 3
  %2112 = load i8*, i8** %next_free3415, align 8
  %2113 = load i32, i32* %__len3413, align 4
  %idx.ext3416 = sext i32 %2113 to i64
  %add.ptr3417 = getelementptr inbounds i8, i8* %2112, i64 %idx.ext3416
  %2114 = load %struct.obstack*, %struct.obstack** %__o3412, align 8
  %chunk_limit3418 = getelementptr inbounds %struct.obstack, %struct.obstack* %2114, i32 0, i32 4
  %2115 = load i8*, i8** %chunk_limit3418, align 8
  %cmp3419 = icmp ugt i8* %add.ptr3417, %2115
  br i1 %cmp3419, label %if.then.3421, label %if.end.3422

if.then.3421:                                     ; preds = %if.end.3411
  %2116 = load %struct.obstack*, %struct.obstack** %__o3412, align 8
  %2117 = load i32, i32* %__len3413, align 4
  call void @_obstack_newchunk(%struct.obstack* %2116, i32 %2117)
  br label %if.end.3422

if.end.3422:                                      ; preds = %if.then.3421, %if.end.3411
  %2118 = load %struct.obstack*, %struct.obstack** %__o3412, align 8
  %next_free3423 = getelementptr inbounds %struct.obstack, %struct.obstack* %2118, i32 0, i32 3
  %2119 = load i8*, i8** %next_free3423, align 8
  %arraydecay3424 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2120 = load i32, i32* %__len3413, align 4
  %conv3425 = sext i32 %2120 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2119, i8* %arraydecay3424, i64 %conv3425, i32 1, i1 false)
  %2121 = load i32, i32* %__len3413, align 4
  %2122 = load %struct.obstack*, %struct.obstack** %__o3412, align 8
  %next_free3426 = getelementptr inbounds %struct.obstack, %struct.obstack* %2122, i32 0, i32 3
  %2123 = load i8*, i8** %next_free3426, align 8
  %idx.ext3427 = sext i32 %2121 to i64
  %add.ptr3428 = getelementptr inbounds i8, i8* %2123, i64 %idx.ext3427
  store i8* %add.ptr3428, i8** %next_free3426, align 8
  %2124 = load i64, i64* %width, align 8
  %tobool3429 = icmp ne i64 %2124, 0
  br i1 %tobool3429, label %land.lhs.true.3430, label %if.end.3450

land.lhs.true.3430:                               ; preds = %if.end.3422
  %2125 = load i32, i32* %justification, align 4
  %cmp3431 = icmp slt i32 %2125, 0
  br i1 %cmp3431, label %if.then.3433, label %if.end.3450

if.then.3433:                                     ; preds = %land.lhs.true.3430
  br label %for.cond.3434

for.cond.3434:                                    ; preds = %for.inc.3447, %if.then.3433
  %2126 = load i64, i64* %nspace3382, align 8
  %tobool3435 = icmp ne i64 %2126, 0
  br i1 %tobool3435, label %for.body.3436, label %for.end.3449

for.body.3436:                                    ; preds = %for.cond.3434
  %2127 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2127, %struct.obstack** %__o3437, align 8
  %2128 = load %struct.obstack*, %struct.obstack** %__o3437, align 8
  %next_free3438 = getelementptr inbounds %struct.obstack, %struct.obstack* %2128, i32 0, i32 3
  %2129 = load i8*, i8** %next_free3438, align 8
  %add.ptr3439 = getelementptr inbounds i8, i8* %2129, i64 1
  %2130 = load %struct.obstack*, %struct.obstack** %__o3437, align 8
  %chunk_limit3440 = getelementptr inbounds %struct.obstack, %struct.obstack* %2130, i32 0, i32 4
  %2131 = load i8*, i8** %chunk_limit3440, align 8
  %cmp3441 = icmp ugt i8* %add.ptr3439, %2131
  br i1 %cmp3441, label %if.then.3443, label %if.end.3444

if.then.3443:                                     ; preds = %for.body.3436
  %2132 = load %struct.obstack*, %struct.obstack** %__o3437, align 8
  call void @_obstack_newchunk(%struct.obstack* %2132, i32 1)
  br label %if.end.3444

if.end.3444:                                      ; preds = %if.then.3443, %for.body.3436
  %2133 = load i8, i8* %padding, align 1
  %2134 = load %struct.obstack*, %struct.obstack** %__o3437, align 8
  %next_free3445 = getelementptr inbounds %struct.obstack, %struct.obstack* %2134, i32 0, i32 3
  %2135 = load i8*, i8** %next_free3445, align 8
  %incdec.ptr3446 = getelementptr inbounds i8, i8* %2135, i32 1
  store i8* %incdec.ptr3446, i8** %next_free3445, align 8
  store i8 %2133, i8* %2135, align 1
  br label %for.inc.3447

for.inc.3447:                                     ; preds = %if.end.3444
  %2136 = load i64, i64* %nspace3382, align 8
  %dec3448 = add i64 %2136, -1
  store i64 %dec3448, i64* %nspace3382, align 8
  br label %for.cond.3434

for.end.3449:                                     ; preds = %for.cond.3434
  br label %if.end.3450

if.end.3450:                                      ; preds = %for.end.3449, %land.lhs.true.3430, %if.end.3422
  br label %do.end.3451

do.end.3451:                                      ; preds = %if.end.3450
  br label %sw.epilog.6153

sw.bb.3452:                                       ; preds = %sw.bb.2280
  %arraydecay3453 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3454 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #5
  %2137 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3455 = getelementptr inbounds %struct.file_job, %struct.file_job* %2137, i32 0, i32 5
  %call3456 = call i64 @strftime(i8* %arraydecay3453, i64 512, i8* %call3454, %struct.tm* %mod_tm3455) #5
  br label %do.body.3457

do.body.3457:                                     ; preds = %sw.bb.3452
  %arraydecay3459 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3460 = call i64 @strlen(i8* %arraydecay3459) #6
  store i64 %call3460, i64* %len3458, align 8
  %2138 = load i64, i64* %len3458, align 8
  %2139 = load i64, i64* %width, align 8
  %cmp3462 = icmp ugt i64 %2138, %2139
  br i1 %cmp3462, label %cond.true.3464, label %cond.false.3465

cond.true.3464:                                   ; preds = %do.body.3457
  br label %cond.end.3467

cond.false.3465:                                  ; preds = %do.body.3457
  %2140 = load i64, i64* %width, align 8
  %2141 = load i64, i64* %len3458, align 8
  %sub3466 = sub i64 %2140, %2141
  br label %cond.end.3467

cond.end.3467:                                    ; preds = %cond.false.3465, %cond.true.3464
  %cond3468 = phi i64 [ 0, %cond.true.3464 ], [ %sub3466, %cond.false.3465 ]
  store i64 %cond3468, i64* %nspace3461, align 8
  %2142 = load i64, i64* %width, align 8
  %tobool3469 = icmp ne i64 %2142, 0
  br i1 %tobool3469, label %land.lhs.true.3470, label %if.end.3490

land.lhs.true.3470:                               ; preds = %cond.end.3467
  %2143 = load i32, i32* %justification, align 4
  %cmp3471 = icmp sgt i32 %2143, 0
  br i1 %cmp3471, label %if.then.3473, label %if.end.3490

if.then.3473:                                     ; preds = %land.lhs.true.3470
  br label %for.cond.3474

for.cond.3474:                                    ; preds = %for.inc.3487, %if.then.3473
  %2144 = load i64, i64* %nspace3461, align 8
  %tobool3475 = icmp ne i64 %2144, 0
  br i1 %tobool3475, label %for.body.3476, label %for.end.3489

for.body.3476:                                    ; preds = %for.cond.3474
  %2145 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2145, %struct.obstack** %__o3477, align 8
  %2146 = load %struct.obstack*, %struct.obstack** %__o3477, align 8
  %next_free3478 = getelementptr inbounds %struct.obstack, %struct.obstack* %2146, i32 0, i32 3
  %2147 = load i8*, i8** %next_free3478, align 8
  %add.ptr3479 = getelementptr inbounds i8, i8* %2147, i64 1
  %2148 = load %struct.obstack*, %struct.obstack** %__o3477, align 8
  %chunk_limit3480 = getelementptr inbounds %struct.obstack, %struct.obstack* %2148, i32 0, i32 4
  %2149 = load i8*, i8** %chunk_limit3480, align 8
  %cmp3481 = icmp ugt i8* %add.ptr3479, %2149
  br i1 %cmp3481, label %if.then.3483, label %if.end.3484

if.then.3483:                                     ; preds = %for.body.3476
  %2150 = load %struct.obstack*, %struct.obstack** %__o3477, align 8
  call void @_obstack_newchunk(%struct.obstack* %2150, i32 1)
  br label %if.end.3484

if.end.3484:                                      ; preds = %if.then.3483, %for.body.3476
  %2151 = load i8, i8* %padding, align 1
  %2152 = load %struct.obstack*, %struct.obstack** %__o3477, align 8
  %next_free3485 = getelementptr inbounds %struct.obstack, %struct.obstack* %2152, i32 0, i32 3
  %2153 = load i8*, i8** %next_free3485, align 8
  %incdec.ptr3486 = getelementptr inbounds i8, i8* %2153, i32 1
  store i8* %incdec.ptr3486, i8** %next_free3485, align 8
  store i8 %2151, i8* %2153, align 1
  br label %for.inc.3487

for.inc.3487:                                     ; preds = %if.end.3484
  %2154 = load i64, i64* %nspace3461, align 8
  %dec3488 = add i64 %2154, -1
  store i64 %dec3488, i64* %nspace3461, align 8
  br label %for.cond.3474

for.end.3489:                                     ; preds = %for.cond.3474
  br label %if.end.3490

if.end.3490:                                      ; preds = %for.end.3489, %land.lhs.true.3470, %cond.end.3467
  %2155 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2155, %struct.obstack** %__o3491, align 8
  %2156 = load i64, i64* %len3458, align 8
  %conv3493 = trunc i64 %2156 to i32
  store i32 %conv3493, i32* %__len3492, align 4
  %2157 = load %struct.obstack*, %struct.obstack** %__o3491, align 8
  %next_free3494 = getelementptr inbounds %struct.obstack, %struct.obstack* %2157, i32 0, i32 3
  %2158 = load i8*, i8** %next_free3494, align 8
  %2159 = load i32, i32* %__len3492, align 4
  %idx.ext3495 = sext i32 %2159 to i64
  %add.ptr3496 = getelementptr inbounds i8, i8* %2158, i64 %idx.ext3495
  %2160 = load %struct.obstack*, %struct.obstack** %__o3491, align 8
  %chunk_limit3497 = getelementptr inbounds %struct.obstack, %struct.obstack* %2160, i32 0, i32 4
  %2161 = load i8*, i8** %chunk_limit3497, align 8
  %cmp3498 = icmp ugt i8* %add.ptr3496, %2161
  br i1 %cmp3498, label %if.then.3500, label %if.end.3501

if.then.3500:                                     ; preds = %if.end.3490
  %2162 = load %struct.obstack*, %struct.obstack** %__o3491, align 8
  %2163 = load i32, i32* %__len3492, align 4
  call void @_obstack_newchunk(%struct.obstack* %2162, i32 %2163)
  br label %if.end.3501

if.end.3501:                                      ; preds = %if.then.3500, %if.end.3490
  %2164 = load %struct.obstack*, %struct.obstack** %__o3491, align 8
  %next_free3502 = getelementptr inbounds %struct.obstack, %struct.obstack* %2164, i32 0, i32 3
  %2165 = load i8*, i8** %next_free3502, align 8
  %arraydecay3503 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2166 = load i32, i32* %__len3492, align 4
  %conv3504 = sext i32 %2166 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2165, i8* %arraydecay3503, i64 %conv3504, i32 1, i1 false)
  %2167 = load i32, i32* %__len3492, align 4
  %2168 = load %struct.obstack*, %struct.obstack** %__o3491, align 8
  %next_free3505 = getelementptr inbounds %struct.obstack, %struct.obstack* %2168, i32 0, i32 3
  %2169 = load i8*, i8** %next_free3505, align 8
  %idx.ext3506 = sext i32 %2167 to i64
  %add.ptr3507 = getelementptr inbounds i8, i8* %2169, i64 %idx.ext3506
  store i8* %add.ptr3507, i8** %next_free3505, align 8
  %2170 = load i64, i64* %width, align 8
  %tobool3508 = icmp ne i64 %2170, 0
  br i1 %tobool3508, label %land.lhs.true.3509, label %if.end.3529

land.lhs.true.3509:                               ; preds = %if.end.3501
  %2171 = load i32, i32* %justification, align 4
  %cmp3510 = icmp slt i32 %2171, 0
  br i1 %cmp3510, label %if.then.3512, label %if.end.3529

if.then.3512:                                     ; preds = %land.lhs.true.3509
  br label %for.cond.3513

for.cond.3513:                                    ; preds = %for.inc.3526, %if.then.3512
  %2172 = load i64, i64* %nspace3461, align 8
  %tobool3514 = icmp ne i64 %2172, 0
  br i1 %tobool3514, label %for.body.3515, label %for.end.3528

for.body.3515:                                    ; preds = %for.cond.3513
  %2173 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2173, %struct.obstack** %__o3516, align 8
  %2174 = load %struct.obstack*, %struct.obstack** %__o3516, align 8
  %next_free3517 = getelementptr inbounds %struct.obstack, %struct.obstack* %2174, i32 0, i32 3
  %2175 = load i8*, i8** %next_free3517, align 8
  %add.ptr3518 = getelementptr inbounds i8, i8* %2175, i64 1
  %2176 = load %struct.obstack*, %struct.obstack** %__o3516, align 8
  %chunk_limit3519 = getelementptr inbounds %struct.obstack, %struct.obstack* %2176, i32 0, i32 4
  %2177 = load i8*, i8** %chunk_limit3519, align 8
  %cmp3520 = icmp ugt i8* %add.ptr3518, %2177
  br i1 %cmp3520, label %if.then.3522, label %if.end.3523

if.then.3522:                                     ; preds = %for.body.3515
  %2178 = load %struct.obstack*, %struct.obstack** %__o3516, align 8
  call void @_obstack_newchunk(%struct.obstack* %2178, i32 1)
  br label %if.end.3523

if.end.3523:                                      ; preds = %if.then.3522, %for.body.3515
  %2179 = load i8, i8* %padding, align 1
  %2180 = load %struct.obstack*, %struct.obstack** %__o3516, align 8
  %next_free3524 = getelementptr inbounds %struct.obstack, %struct.obstack* %2180, i32 0, i32 3
  %2181 = load i8*, i8** %next_free3524, align 8
  %incdec.ptr3525 = getelementptr inbounds i8, i8* %2181, i32 1
  store i8* %incdec.ptr3525, i8** %next_free3524, align 8
  store i8 %2179, i8* %2181, align 1
  br label %for.inc.3526

for.inc.3526:                                     ; preds = %if.end.3523
  %2182 = load i64, i64* %nspace3461, align 8
  %dec3527 = add i64 %2182, -1
  store i64 %dec3527, i64* %nspace3461, align 8
  br label %for.cond.3513

for.end.3528:                                     ; preds = %for.cond.3513
  br label %if.end.3529

if.end.3529:                                      ; preds = %for.end.3528, %land.lhs.true.3509, %if.end.3501
  br label %do.end.3530

do.end.3530:                                      ; preds = %if.end.3529
  br label %sw.epilog.6153

sw.bb.3531:                                       ; preds = %sw.bb.2280
  %arraydecay3532 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3533 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #5
  %2183 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3534 = getelementptr inbounds %struct.file_job, %struct.file_job* %2183, i32 0, i32 5
  %call3535 = call i64 @strftime(i8* %arraydecay3532, i64 512, i8* %call3533, %struct.tm* %mod_tm3534) #5
  br label %do.body.3536

do.body.3536:                                     ; preds = %sw.bb.3531
  %arraydecay3538 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3539 = call i64 @strlen(i8* %arraydecay3538) #6
  store i64 %call3539, i64* %len3537, align 8
  %2184 = load i64, i64* %len3537, align 8
  %2185 = load i64, i64* %width, align 8
  %cmp3541 = icmp ugt i64 %2184, %2185
  br i1 %cmp3541, label %cond.true.3543, label %cond.false.3544

cond.true.3543:                                   ; preds = %do.body.3536
  br label %cond.end.3546

cond.false.3544:                                  ; preds = %do.body.3536
  %2186 = load i64, i64* %width, align 8
  %2187 = load i64, i64* %len3537, align 8
  %sub3545 = sub i64 %2186, %2187
  br label %cond.end.3546

cond.end.3546:                                    ; preds = %cond.false.3544, %cond.true.3543
  %cond3547 = phi i64 [ 0, %cond.true.3543 ], [ %sub3545, %cond.false.3544 ]
  store i64 %cond3547, i64* %nspace3540, align 8
  %2188 = load i64, i64* %width, align 8
  %tobool3548 = icmp ne i64 %2188, 0
  br i1 %tobool3548, label %land.lhs.true.3549, label %if.end.3569

land.lhs.true.3549:                               ; preds = %cond.end.3546
  %2189 = load i32, i32* %justification, align 4
  %cmp3550 = icmp sgt i32 %2189, 0
  br i1 %cmp3550, label %if.then.3552, label %if.end.3569

if.then.3552:                                     ; preds = %land.lhs.true.3549
  br label %for.cond.3553

for.cond.3553:                                    ; preds = %for.inc.3566, %if.then.3552
  %2190 = load i64, i64* %nspace3540, align 8
  %tobool3554 = icmp ne i64 %2190, 0
  br i1 %tobool3554, label %for.body.3555, label %for.end.3568

for.body.3555:                                    ; preds = %for.cond.3553
  %2191 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2191, %struct.obstack** %__o3556, align 8
  %2192 = load %struct.obstack*, %struct.obstack** %__o3556, align 8
  %next_free3557 = getelementptr inbounds %struct.obstack, %struct.obstack* %2192, i32 0, i32 3
  %2193 = load i8*, i8** %next_free3557, align 8
  %add.ptr3558 = getelementptr inbounds i8, i8* %2193, i64 1
  %2194 = load %struct.obstack*, %struct.obstack** %__o3556, align 8
  %chunk_limit3559 = getelementptr inbounds %struct.obstack, %struct.obstack* %2194, i32 0, i32 4
  %2195 = load i8*, i8** %chunk_limit3559, align 8
  %cmp3560 = icmp ugt i8* %add.ptr3558, %2195
  br i1 %cmp3560, label %if.then.3562, label %if.end.3563

if.then.3562:                                     ; preds = %for.body.3555
  %2196 = load %struct.obstack*, %struct.obstack** %__o3556, align 8
  call void @_obstack_newchunk(%struct.obstack* %2196, i32 1)
  br label %if.end.3563

if.end.3563:                                      ; preds = %if.then.3562, %for.body.3555
  %2197 = load i8, i8* %padding, align 1
  %2198 = load %struct.obstack*, %struct.obstack** %__o3556, align 8
  %next_free3564 = getelementptr inbounds %struct.obstack, %struct.obstack* %2198, i32 0, i32 3
  %2199 = load i8*, i8** %next_free3564, align 8
  %incdec.ptr3565 = getelementptr inbounds i8, i8* %2199, i32 1
  store i8* %incdec.ptr3565, i8** %next_free3564, align 8
  store i8 %2197, i8* %2199, align 1
  br label %for.inc.3566

for.inc.3566:                                     ; preds = %if.end.3563
  %2200 = load i64, i64* %nspace3540, align 8
  %dec3567 = add i64 %2200, -1
  store i64 %dec3567, i64* %nspace3540, align 8
  br label %for.cond.3553

for.end.3568:                                     ; preds = %for.cond.3553
  br label %if.end.3569

if.end.3569:                                      ; preds = %for.end.3568, %land.lhs.true.3549, %cond.end.3546
  %2201 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2201, %struct.obstack** %__o3570, align 8
  %2202 = load i64, i64* %len3537, align 8
  %conv3572 = trunc i64 %2202 to i32
  store i32 %conv3572, i32* %__len3571, align 4
  %2203 = load %struct.obstack*, %struct.obstack** %__o3570, align 8
  %next_free3573 = getelementptr inbounds %struct.obstack, %struct.obstack* %2203, i32 0, i32 3
  %2204 = load i8*, i8** %next_free3573, align 8
  %2205 = load i32, i32* %__len3571, align 4
  %idx.ext3574 = sext i32 %2205 to i64
  %add.ptr3575 = getelementptr inbounds i8, i8* %2204, i64 %idx.ext3574
  %2206 = load %struct.obstack*, %struct.obstack** %__o3570, align 8
  %chunk_limit3576 = getelementptr inbounds %struct.obstack, %struct.obstack* %2206, i32 0, i32 4
  %2207 = load i8*, i8** %chunk_limit3576, align 8
  %cmp3577 = icmp ugt i8* %add.ptr3575, %2207
  br i1 %cmp3577, label %if.then.3579, label %if.end.3580

if.then.3579:                                     ; preds = %if.end.3569
  %2208 = load %struct.obstack*, %struct.obstack** %__o3570, align 8
  %2209 = load i32, i32* %__len3571, align 4
  call void @_obstack_newchunk(%struct.obstack* %2208, i32 %2209)
  br label %if.end.3580

if.end.3580:                                      ; preds = %if.then.3579, %if.end.3569
  %2210 = load %struct.obstack*, %struct.obstack** %__o3570, align 8
  %next_free3581 = getelementptr inbounds %struct.obstack, %struct.obstack* %2210, i32 0, i32 3
  %2211 = load i8*, i8** %next_free3581, align 8
  %arraydecay3582 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2212 = load i32, i32* %__len3571, align 4
  %conv3583 = sext i32 %2212 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2211, i8* %arraydecay3582, i64 %conv3583, i32 1, i1 false)
  %2213 = load i32, i32* %__len3571, align 4
  %2214 = load %struct.obstack*, %struct.obstack** %__o3570, align 8
  %next_free3584 = getelementptr inbounds %struct.obstack, %struct.obstack* %2214, i32 0, i32 3
  %2215 = load i8*, i8** %next_free3584, align 8
  %idx.ext3585 = sext i32 %2213 to i64
  %add.ptr3586 = getelementptr inbounds i8, i8* %2215, i64 %idx.ext3585
  store i8* %add.ptr3586, i8** %next_free3584, align 8
  %2216 = load i64, i64* %width, align 8
  %tobool3587 = icmp ne i64 %2216, 0
  br i1 %tobool3587, label %land.lhs.true.3588, label %if.end.3608

land.lhs.true.3588:                               ; preds = %if.end.3580
  %2217 = load i32, i32* %justification, align 4
  %cmp3589 = icmp slt i32 %2217, 0
  br i1 %cmp3589, label %if.then.3591, label %if.end.3608

if.then.3591:                                     ; preds = %land.lhs.true.3588
  br label %for.cond.3592

for.cond.3592:                                    ; preds = %for.inc.3605, %if.then.3591
  %2218 = load i64, i64* %nspace3540, align 8
  %tobool3593 = icmp ne i64 %2218, 0
  br i1 %tobool3593, label %for.body.3594, label %for.end.3607

for.body.3594:                                    ; preds = %for.cond.3592
  %2219 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2219, %struct.obstack** %__o3595, align 8
  %2220 = load %struct.obstack*, %struct.obstack** %__o3595, align 8
  %next_free3596 = getelementptr inbounds %struct.obstack, %struct.obstack* %2220, i32 0, i32 3
  %2221 = load i8*, i8** %next_free3596, align 8
  %add.ptr3597 = getelementptr inbounds i8, i8* %2221, i64 1
  %2222 = load %struct.obstack*, %struct.obstack** %__o3595, align 8
  %chunk_limit3598 = getelementptr inbounds %struct.obstack, %struct.obstack* %2222, i32 0, i32 4
  %2223 = load i8*, i8** %chunk_limit3598, align 8
  %cmp3599 = icmp ugt i8* %add.ptr3597, %2223
  br i1 %cmp3599, label %if.then.3601, label %if.end.3602

if.then.3601:                                     ; preds = %for.body.3594
  %2224 = load %struct.obstack*, %struct.obstack** %__o3595, align 8
  call void @_obstack_newchunk(%struct.obstack* %2224, i32 1)
  br label %if.end.3602

if.end.3602:                                      ; preds = %if.then.3601, %for.body.3594
  %2225 = load i8, i8* %padding, align 1
  %2226 = load %struct.obstack*, %struct.obstack** %__o3595, align 8
  %next_free3603 = getelementptr inbounds %struct.obstack, %struct.obstack* %2226, i32 0, i32 3
  %2227 = load i8*, i8** %next_free3603, align 8
  %incdec.ptr3604 = getelementptr inbounds i8, i8* %2227, i32 1
  store i8* %incdec.ptr3604, i8** %next_free3603, align 8
  store i8 %2225, i8* %2227, align 1
  br label %for.inc.3605

for.inc.3605:                                     ; preds = %if.end.3602
  %2228 = load i64, i64* %nspace3540, align 8
  %dec3606 = add i64 %2228, -1
  store i64 %dec3606, i64* %nspace3540, align 8
  br label %for.cond.3592

for.end.3607:                                     ; preds = %for.cond.3592
  br label %if.end.3608

if.end.3608:                                      ; preds = %for.end.3607, %land.lhs.true.3588, %if.end.3580
  br label %do.end.3609

do.end.3609:                                      ; preds = %if.end.3608
  br label %sw.epilog.6153

sw.bb.3610:                                       ; preds = %sw.bb.2280
  br label %do.body.3611

do.body.3611:                                     ; preds = %sw.bb.3610
  %2229 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name3613 = getelementptr inbounds %struct.file_job, %struct.file_job* %2229, i32 0, i32 0
  %2230 = load i8*, i8** %name3613, align 8
  %call3614 = call i64 @strlen(i8* %2230) #6
  store i64 %call3614, i64* %len3612, align 8
  %2231 = load i64, i64* %len3612, align 8
  %2232 = load i64, i64* %width, align 8
  %cmp3616 = icmp ugt i64 %2231, %2232
  br i1 %cmp3616, label %cond.true.3618, label %cond.false.3619

cond.true.3618:                                   ; preds = %do.body.3611
  br label %cond.end.3621

cond.false.3619:                                  ; preds = %do.body.3611
  %2233 = load i64, i64* %width, align 8
  %2234 = load i64, i64* %len3612, align 8
  %sub3620 = sub i64 %2233, %2234
  br label %cond.end.3621

cond.end.3621:                                    ; preds = %cond.false.3619, %cond.true.3618
  %cond3622 = phi i64 [ 0, %cond.true.3618 ], [ %sub3620, %cond.false.3619 ]
  store i64 %cond3622, i64* %nspace3615, align 8
  %2235 = load i64, i64* %width, align 8
  %tobool3623 = icmp ne i64 %2235, 0
  br i1 %tobool3623, label %land.lhs.true.3624, label %if.end.3644

land.lhs.true.3624:                               ; preds = %cond.end.3621
  %2236 = load i32, i32* %justification, align 4
  %cmp3625 = icmp sgt i32 %2236, 0
  br i1 %cmp3625, label %if.then.3627, label %if.end.3644

if.then.3627:                                     ; preds = %land.lhs.true.3624
  br label %for.cond.3628

for.cond.3628:                                    ; preds = %for.inc.3641, %if.then.3627
  %2237 = load i64, i64* %nspace3615, align 8
  %tobool3629 = icmp ne i64 %2237, 0
  br i1 %tobool3629, label %for.body.3630, label %for.end.3643

for.body.3630:                                    ; preds = %for.cond.3628
  %2238 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2238, %struct.obstack** %__o3631, align 8
  %2239 = load %struct.obstack*, %struct.obstack** %__o3631, align 8
  %next_free3632 = getelementptr inbounds %struct.obstack, %struct.obstack* %2239, i32 0, i32 3
  %2240 = load i8*, i8** %next_free3632, align 8
  %add.ptr3633 = getelementptr inbounds i8, i8* %2240, i64 1
  %2241 = load %struct.obstack*, %struct.obstack** %__o3631, align 8
  %chunk_limit3634 = getelementptr inbounds %struct.obstack, %struct.obstack* %2241, i32 0, i32 4
  %2242 = load i8*, i8** %chunk_limit3634, align 8
  %cmp3635 = icmp ugt i8* %add.ptr3633, %2242
  br i1 %cmp3635, label %if.then.3637, label %if.end.3638

if.then.3637:                                     ; preds = %for.body.3630
  %2243 = load %struct.obstack*, %struct.obstack** %__o3631, align 8
  call void @_obstack_newchunk(%struct.obstack* %2243, i32 1)
  br label %if.end.3638

if.end.3638:                                      ; preds = %if.then.3637, %for.body.3630
  %2244 = load i8, i8* %padding, align 1
  %2245 = load %struct.obstack*, %struct.obstack** %__o3631, align 8
  %next_free3639 = getelementptr inbounds %struct.obstack, %struct.obstack* %2245, i32 0, i32 3
  %2246 = load i8*, i8** %next_free3639, align 8
  %incdec.ptr3640 = getelementptr inbounds i8, i8* %2246, i32 1
  store i8* %incdec.ptr3640, i8** %next_free3639, align 8
  store i8 %2244, i8* %2246, align 1
  br label %for.inc.3641

for.inc.3641:                                     ; preds = %if.end.3638
  %2247 = load i64, i64* %nspace3615, align 8
  %dec3642 = add i64 %2247, -1
  store i64 %dec3642, i64* %nspace3615, align 8
  br label %for.cond.3628

for.end.3643:                                     ; preds = %for.cond.3628
  br label %if.end.3644

if.end.3644:                                      ; preds = %for.end.3643, %land.lhs.true.3624, %cond.end.3621
  %2248 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2248, %struct.obstack** %__o3645, align 8
  %2249 = load i64, i64* %len3612, align 8
  %conv3647 = trunc i64 %2249 to i32
  store i32 %conv3647, i32* %__len3646, align 4
  %2250 = load %struct.obstack*, %struct.obstack** %__o3645, align 8
  %next_free3648 = getelementptr inbounds %struct.obstack, %struct.obstack* %2250, i32 0, i32 3
  %2251 = load i8*, i8** %next_free3648, align 8
  %2252 = load i32, i32* %__len3646, align 4
  %idx.ext3649 = sext i32 %2252 to i64
  %add.ptr3650 = getelementptr inbounds i8, i8* %2251, i64 %idx.ext3649
  %2253 = load %struct.obstack*, %struct.obstack** %__o3645, align 8
  %chunk_limit3651 = getelementptr inbounds %struct.obstack, %struct.obstack* %2253, i32 0, i32 4
  %2254 = load i8*, i8** %chunk_limit3651, align 8
  %cmp3652 = icmp ugt i8* %add.ptr3650, %2254
  br i1 %cmp3652, label %if.then.3654, label %if.end.3655

if.then.3654:                                     ; preds = %if.end.3644
  %2255 = load %struct.obstack*, %struct.obstack** %__o3645, align 8
  %2256 = load i32, i32* %__len3646, align 4
  call void @_obstack_newchunk(%struct.obstack* %2255, i32 %2256)
  br label %if.end.3655

if.end.3655:                                      ; preds = %if.then.3654, %if.end.3644
  %2257 = load %struct.obstack*, %struct.obstack** %__o3645, align 8
  %next_free3656 = getelementptr inbounds %struct.obstack, %struct.obstack* %2257, i32 0, i32 3
  %2258 = load i8*, i8** %next_free3656, align 8
  %2259 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name3657 = getelementptr inbounds %struct.file_job, %struct.file_job* %2259, i32 0, i32 0
  %2260 = load i8*, i8** %name3657, align 8
  %2261 = load i32, i32* %__len3646, align 4
  %conv3658 = sext i32 %2261 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2258, i8* %2260, i64 %conv3658, i32 1, i1 false)
  %2262 = load i32, i32* %__len3646, align 4
  %2263 = load %struct.obstack*, %struct.obstack** %__o3645, align 8
  %next_free3659 = getelementptr inbounds %struct.obstack, %struct.obstack* %2263, i32 0, i32 3
  %2264 = load i8*, i8** %next_free3659, align 8
  %idx.ext3660 = sext i32 %2262 to i64
  %add.ptr3661 = getelementptr inbounds i8, i8* %2264, i64 %idx.ext3660
  store i8* %add.ptr3661, i8** %next_free3659, align 8
  %2265 = load i64, i64* %width, align 8
  %tobool3662 = icmp ne i64 %2265, 0
  br i1 %tobool3662, label %land.lhs.true.3663, label %if.end.3683

land.lhs.true.3663:                               ; preds = %if.end.3655
  %2266 = load i32, i32* %justification, align 4
  %cmp3664 = icmp slt i32 %2266, 0
  br i1 %cmp3664, label %if.then.3666, label %if.end.3683

if.then.3666:                                     ; preds = %land.lhs.true.3663
  br label %for.cond.3667

for.cond.3667:                                    ; preds = %for.inc.3680, %if.then.3666
  %2267 = load i64, i64* %nspace3615, align 8
  %tobool3668 = icmp ne i64 %2267, 0
  br i1 %tobool3668, label %for.body.3669, label %for.end.3682

for.body.3669:                                    ; preds = %for.cond.3667
  %2268 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2268, %struct.obstack** %__o3670, align 8
  %2269 = load %struct.obstack*, %struct.obstack** %__o3670, align 8
  %next_free3671 = getelementptr inbounds %struct.obstack, %struct.obstack* %2269, i32 0, i32 3
  %2270 = load i8*, i8** %next_free3671, align 8
  %add.ptr3672 = getelementptr inbounds i8, i8* %2270, i64 1
  %2271 = load %struct.obstack*, %struct.obstack** %__o3670, align 8
  %chunk_limit3673 = getelementptr inbounds %struct.obstack, %struct.obstack* %2271, i32 0, i32 4
  %2272 = load i8*, i8** %chunk_limit3673, align 8
  %cmp3674 = icmp ugt i8* %add.ptr3672, %2272
  br i1 %cmp3674, label %if.then.3676, label %if.end.3677

if.then.3676:                                     ; preds = %for.body.3669
  %2273 = load %struct.obstack*, %struct.obstack** %__o3670, align 8
  call void @_obstack_newchunk(%struct.obstack* %2273, i32 1)
  br label %if.end.3677

if.end.3677:                                      ; preds = %if.then.3676, %for.body.3669
  %2274 = load i8, i8* %padding, align 1
  %2275 = load %struct.obstack*, %struct.obstack** %__o3670, align 8
  %next_free3678 = getelementptr inbounds %struct.obstack, %struct.obstack* %2275, i32 0, i32 3
  %2276 = load i8*, i8** %next_free3678, align 8
  %incdec.ptr3679 = getelementptr inbounds i8, i8* %2276, i32 1
  store i8* %incdec.ptr3679, i8** %next_free3678, align 8
  store i8 %2274, i8* %2276, align 1
  br label %for.inc.3680

for.inc.3680:                                     ; preds = %if.end.3677
  %2277 = load i64, i64* %nspace3615, align 8
  %dec3681 = add i64 %2277, -1
  store i64 %dec3681, i64* %nspace3615, align 8
  br label %for.cond.3667

for.end.3682:                                     ; preds = %for.cond.3667
  br label %if.end.3683

if.end.3683:                                      ; preds = %for.end.3682, %land.lhs.true.3663, %if.end.3655
  br label %do.end.3684

do.end.3684:                                      ; preds = %if.end.3683
  br label %sw.epilog.6153

sw.bb.3685:                                       ; preds = %sw.bb.2280
  %arraydecay3686 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2278 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3687 = getelementptr inbounds %struct.file_job, %struct.file_job* %2278, i32 0, i32 5
  %tm_mday3688 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3687, i32 0, i32 3
  %2279 = load i32, i32* %tm_mday3688, align 4
  %2280 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3689 = getelementptr inbounds %struct.file_job, %struct.file_job* %2280, i32 0, i32 5
  %tm_mon3690 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3689, i32 0, i32 4
  %2281 = load i32, i32* %tm_mon3690, align 4
  %add3691 = add nsw i32 %2281, 1
  %2282 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm3692 = getelementptr inbounds %struct.file_job, %struct.file_job* %2282, i32 0, i32 5
  %tm_year3693 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm3692, i32 0, i32 5
  %2283 = load i32, i32* %tm_year3693, align 4
  %add3694 = add nsw i32 %2283, 1900
  %call3695 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3686, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %2279, i32 %add3691, i32 %add3694) #5
  br label %do.body.3696

do.body.3696:                                     ; preds = %sw.bb.3685
  %arraydecay3698 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3699 = call i64 @strlen(i8* %arraydecay3698) #6
  store i64 %call3699, i64* %len3697, align 8
  %2284 = load i64, i64* %len3697, align 8
  %2285 = load i64, i64* %width, align 8
  %cmp3701 = icmp ugt i64 %2284, %2285
  br i1 %cmp3701, label %cond.true.3703, label %cond.false.3704

cond.true.3703:                                   ; preds = %do.body.3696
  br label %cond.end.3706

cond.false.3704:                                  ; preds = %do.body.3696
  %2286 = load i64, i64* %width, align 8
  %2287 = load i64, i64* %len3697, align 8
  %sub3705 = sub i64 %2286, %2287
  br label %cond.end.3706

cond.end.3706:                                    ; preds = %cond.false.3704, %cond.true.3703
  %cond3707 = phi i64 [ 0, %cond.true.3703 ], [ %sub3705, %cond.false.3704 ]
  store i64 %cond3707, i64* %nspace3700, align 8
  %2288 = load i64, i64* %width, align 8
  %tobool3708 = icmp ne i64 %2288, 0
  br i1 %tobool3708, label %land.lhs.true.3709, label %if.end.3729

land.lhs.true.3709:                               ; preds = %cond.end.3706
  %2289 = load i32, i32* %justification, align 4
  %cmp3710 = icmp sgt i32 %2289, 0
  br i1 %cmp3710, label %if.then.3712, label %if.end.3729

if.then.3712:                                     ; preds = %land.lhs.true.3709
  br label %for.cond.3713

for.cond.3713:                                    ; preds = %for.inc.3726, %if.then.3712
  %2290 = load i64, i64* %nspace3700, align 8
  %tobool3714 = icmp ne i64 %2290, 0
  br i1 %tobool3714, label %for.body.3715, label %for.end.3728

for.body.3715:                                    ; preds = %for.cond.3713
  %2291 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2291, %struct.obstack** %__o3716, align 8
  %2292 = load %struct.obstack*, %struct.obstack** %__o3716, align 8
  %next_free3717 = getelementptr inbounds %struct.obstack, %struct.obstack* %2292, i32 0, i32 3
  %2293 = load i8*, i8** %next_free3717, align 8
  %add.ptr3718 = getelementptr inbounds i8, i8* %2293, i64 1
  %2294 = load %struct.obstack*, %struct.obstack** %__o3716, align 8
  %chunk_limit3719 = getelementptr inbounds %struct.obstack, %struct.obstack* %2294, i32 0, i32 4
  %2295 = load i8*, i8** %chunk_limit3719, align 8
  %cmp3720 = icmp ugt i8* %add.ptr3718, %2295
  br i1 %cmp3720, label %if.then.3722, label %if.end.3723

if.then.3722:                                     ; preds = %for.body.3715
  %2296 = load %struct.obstack*, %struct.obstack** %__o3716, align 8
  call void @_obstack_newchunk(%struct.obstack* %2296, i32 1)
  br label %if.end.3723

if.end.3723:                                      ; preds = %if.then.3722, %for.body.3715
  %2297 = load i8, i8* %padding, align 1
  %2298 = load %struct.obstack*, %struct.obstack** %__o3716, align 8
  %next_free3724 = getelementptr inbounds %struct.obstack, %struct.obstack* %2298, i32 0, i32 3
  %2299 = load i8*, i8** %next_free3724, align 8
  %incdec.ptr3725 = getelementptr inbounds i8, i8* %2299, i32 1
  store i8* %incdec.ptr3725, i8** %next_free3724, align 8
  store i8 %2297, i8* %2299, align 1
  br label %for.inc.3726

for.inc.3726:                                     ; preds = %if.end.3723
  %2300 = load i64, i64* %nspace3700, align 8
  %dec3727 = add i64 %2300, -1
  store i64 %dec3727, i64* %nspace3700, align 8
  br label %for.cond.3713

for.end.3728:                                     ; preds = %for.cond.3713
  br label %if.end.3729

if.end.3729:                                      ; preds = %for.end.3728, %land.lhs.true.3709, %cond.end.3706
  %2301 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2301, %struct.obstack** %__o3730, align 8
  %2302 = load i64, i64* %len3697, align 8
  %conv3732 = trunc i64 %2302 to i32
  store i32 %conv3732, i32* %__len3731, align 4
  %2303 = load %struct.obstack*, %struct.obstack** %__o3730, align 8
  %next_free3733 = getelementptr inbounds %struct.obstack, %struct.obstack* %2303, i32 0, i32 3
  %2304 = load i8*, i8** %next_free3733, align 8
  %2305 = load i32, i32* %__len3731, align 4
  %idx.ext3734 = sext i32 %2305 to i64
  %add.ptr3735 = getelementptr inbounds i8, i8* %2304, i64 %idx.ext3734
  %2306 = load %struct.obstack*, %struct.obstack** %__o3730, align 8
  %chunk_limit3736 = getelementptr inbounds %struct.obstack, %struct.obstack* %2306, i32 0, i32 4
  %2307 = load i8*, i8** %chunk_limit3736, align 8
  %cmp3737 = icmp ugt i8* %add.ptr3735, %2307
  br i1 %cmp3737, label %if.then.3739, label %if.end.3740

if.then.3739:                                     ; preds = %if.end.3729
  %2308 = load %struct.obstack*, %struct.obstack** %__o3730, align 8
  %2309 = load i32, i32* %__len3731, align 4
  call void @_obstack_newchunk(%struct.obstack* %2308, i32 %2309)
  br label %if.end.3740

if.end.3740:                                      ; preds = %if.then.3739, %if.end.3729
  %2310 = load %struct.obstack*, %struct.obstack** %__o3730, align 8
  %next_free3741 = getelementptr inbounds %struct.obstack, %struct.obstack* %2310, i32 0, i32 3
  %2311 = load i8*, i8** %next_free3741, align 8
  %arraydecay3742 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2312 = load i32, i32* %__len3731, align 4
  %conv3743 = sext i32 %2312 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2311, i8* %arraydecay3742, i64 %conv3743, i32 1, i1 false)
  %2313 = load i32, i32* %__len3731, align 4
  %2314 = load %struct.obstack*, %struct.obstack** %__o3730, align 8
  %next_free3744 = getelementptr inbounds %struct.obstack, %struct.obstack* %2314, i32 0, i32 3
  %2315 = load i8*, i8** %next_free3744, align 8
  %idx.ext3745 = sext i32 %2313 to i64
  %add.ptr3746 = getelementptr inbounds i8, i8* %2315, i64 %idx.ext3745
  store i8* %add.ptr3746, i8** %next_free3744, align 8
  %2316 = load i64, i64* %width, align 8
  %tobool3747 = icmp ne i64 %2316, 0
  br i1 %tobool3747, label %land.lhs.true.3748, label %if.end.3768

land.lhs.true.3748:                               ; preds = %if.end.3740
  %2317 = load i32, i32* %justification, align 4
  %cmp3749 = icmp slt i32 %2317, 0
  br i1 %cmp3749, label %if.then.3751, label %if.end.3768

if.then.3751:                                     ; preds = %land.lhs.true.3748
  br label %for.cond.3752

for.cond.3752:                                    ; preds = %for.inc.3765, %if.then.3751
  %2318 = load i64, i64* %nspace3700, align 8
  %tobool3753 = icmp ne i64 %2318, 0
  br i1 %tobool3753, label %for.body.3754, label %for.end.3767

for.body.3754:                                    ; preds = %for.cond.3752
  %2319 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2319, %struct.obstack** %__o3755, align 8
  %2320 = load %struct.obstack*, %struct.obstack** %__o3755, align 8
  %next_free3756 = getelementptr inbounds %struct.obstack, %struct.obstack* %2320, i32 0, i32 3
  %2321 = load i8*, i8** %next_free3756, align 8
  %add.ptr3757 = getelementptr inbounds i8, i8* %2321, i64 1
  %2322 = load %struct.obstack*, %struct.obstack** %__o3755, align 8
  %chunk_limit3758 = getelementptr inbounds %struct.obstack, %struct.obstack* %2322, i32 0, i32 4
  %2323 = load i8*, i8** %chunk_limit3758, align 8
  %cmp3759 = icmp ugt i8* %add.ptr3757, %2323
  br i1 %cmp3759, label %if.then.3761, label %if.end.3762

if.then.3761:                                     ; preds = %for.body.3754
  %2324 = load %struct.obstack*, %struct.obstack** %__o3755, align 8
  call void @_obstack_newchunk(%struct.obstack* %2324, i32 1)
  br label %if.end.3762

if.end.3762:                                      ; preds = %if.then.3761, %for.body.3754
  %2325 = load i8, i8* %padding, align 1
  %2326 = load %struct.obstack*, %struct.obstack** %__o3755, align 8
  %next_free3763 = getelementptr inbounds %struct.obstack, %struct.obstack* %2326, i32 0, i32 3
  %2327 = load i8*, i8** %next_free3763, align 8
  %incdec.ptr3764 = getelementptr inbounds i8, i8* %2327, i32 1
  store i8* %incdec.ptr3764, i8** %next_free3763, align 8
  store i8 %2325, i8* %2327, align 1
  br label %for.inc.3765

for.inc.3765:                                     ; preds = %if.end.3762
  %2328 = load i64, i64* %nspace3700, align 8
  %dec3766 = add i64 %2328, -1
  store i64 %dec3766, i64* %nspace3700, align 8
  br label %for.cond.3752

for.end.3767:                                     ; preds = %for.cond.3752
  br label %if.end.3768

if.end.3768:                                      ; preds = %for.end.3767, %land.lhs.true.3748, %if.end.3740
  br label %do.end.3769

do.end.3769:                                      ; preds = %if.end.3768
  br label %sw.epilog.6153

sw.bb.3770:                                       ; preds = %sw.bb.2280
  %2329 = load i64, i64* %i, align 8
  %inc3771 = add i64 %2329, 1
  store i64 %inc3771, i64* %i, align 8
  %2330 = load i8*, i8** %str.addr, align 8
  %arrayidx3772 = getelementptr inbounds i8, i8* %2330, i64 %inc3771
  %2331 = load i8, i8* %arrayidx3772, align 1
  %conv3773 = zext i8 %2331 to i32
  switch i32 %conv3773, label %sw.default.4070 [
    i32 94, label %sw.bb.3774
    i32 46, label %sw.bb.3851
    i32 35, label %sw.bb.3929
  ]

sw.bb.3774:                                       ; preds = %sw.bb.3770
  %arraydecay3775 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2332 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %top_line = getelementptr inbounds %struct.file_job, %struct.file_job* %2332, i32 0, i32 15
  %2333 = load i32, i32* %top_line, align 4
  %call3776 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3775, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2333) #5
  br label %do.body.3777

do.body.3777:                                     ; preds = %sw.bb.3774
  %arraydecay3779 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3780 = call i64 @strlen(i8* %arraydecay3779) #6
  store i64 %call3780, i64* %len3778, align 8
  %2334 = load i64, i64* %len3778, align 8
  %2335 = load i64, i64* %width, align 8
  %cmp3782 = icmp ugt i64 %2334, %2335
  br i1 %cmp3782, label %cond.true.3784, label %cond.false.3785

cond.true.3784:                                   ; preds = %do.body.3777
  br label %cond.end.3787

cond.false.3785:                                  ; preds = %do.body.3777
  %2336 = load i64, i64* %width, align 8
  %2337 = load i64, i64* %len3778, align 8
  %sub3786 = sub i64 %2336, %2337
  br label %cond.end.3787

cond.end.3787:                                    ; preds = %cond.false.3785, %cond.true.3784
  %cond3788 = phi i64 [ 0, %cond.true.3784 ], [ %sub3786, %cond.false.3785 ]
  store i64 %cond3788, i64* %nspace3781, align 8
  %2338 = load i64, i64* %width, align 8
  %tobool3789 = icmp ne i64 %2338, 0
  br i1 %tobool3789, label %land.lhs.true.3790, label %if.end.3810

land.lhs.true.3790:                               ; preds = %cond.end.3787
  %2339 = load i32, i32* %justification, align 4
  %cmp3791 = icmp sgt i32 %2339, 0
  br i1 %cmp3791, label %if.then.3793, label %if.end.3810

if.then.3793:                                     ; preds = %land.lhs.true.3790
  br label %for.cond.3794

for.cond.3794:                                    ; preds = %for.inc.3807, %if.then.3793
  %2340 = load i64, i64* %nspace3781, align 8
  %tobool3795 = icmp ne i64 %2340, 0
  br i1 %tobool3795, label %for.body.3796, label %for.end.3809

for.body.3796:                                    ; preds = %for.cond.3794
  %2341 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2341, %struct.obstack** %__o3797, align 8
  %2342 = load %struct.obstack*, %struct.obstack** %__o3797, align 8
  %next_free3798 = getelementptr inbounds %struct.obstack, %struct.obstack* %2342, i32 0, i32 3
  %2343 = load i8*, i8** %next_free3798, align 8
  %add.ptr3799 = getelementptr inbounds i8, i8* %2343, i64 1
  %2344 = load %struct.obstack*, %struct.obstack** %__o3797, align 8
  %chunk_limit3800 = getelementptr inbounds %struct.obstack, %struct.obstack* %2344, i32 0, i32 4
  %2345 = load i8*, i8** %chunk_limit3800, align 8
  %cmp3801 = icmp ugt i8* %add.ptr3799, %2345
  br i1 %cmp3801, label %if.then.3803, label %if.end.3804

if.then.3803:                                     ; preds = %for.body.3796
  %2346 = load %struct.obstack*, %struct.obstack** %__o3797, align 8
  call void @_obstack_newchunk(%struct.obstack* %2346, i32 1)
  br label %if.end.3804

if.end.3804:                                      ; preds = %if.then.3803, %for.body.3796
  %2347 = load i8, i8* %padding, align 1
  %2348 = load %struct.obstack*, %struct.obstack** %__o3797, align 8
  %next_free3805 = getelementptr inbounds %struct.obstack, %struct.obstack* %2348, i32 0, i32 3
  %2349 = load i8*, i8** %next_free3805, align 8
  %incdec.ptr3806 = getelementptr inbounds i8, i8* %2349, i32 1
  store i8* %incdec.ptr3806, i8** %next_free3805, align 8
  store i8 %2347, i8* %2349, align 1
  br label %for.inc.3807

for.inc.3807:                                     ; preds = %if.end.3804
  %2350 = load i64, i64* %nspace3781, align 8
  %dec3808 = add i64 %2350, -1
  store i64 %dec3808, i64* %nspace3781, align 8
  br label %for.cond.3794

for.end.3809:                                     ; preds = %for.cond.3794
  br label %if.end.3810

if.end.3810:                                      ; preds = %for.end.3809, %land.lhs.true.3790, %cond.end.3787
  %2351 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2351, %struct.obstack** %__o3811, align 8
  %2352 = load i64, i64* %len3778, align 8
  %conv3813 = trunc i64 %2352 to i32
  store i32 %conv3813, i32* %__len3812, align 4
  %2353 = load %struct.obstack*, %struct.obstack** %__o3811, align 8
  %next_free3814 = getelementptr inbounds %struct.obstack, %struct.obstack* %2353, i32 0, i32 3
  %2354 = load i8*, i8** %next_free3814, align 8
  %2355 = load i32, i32* %__len3812, align 4
  %idx.ext3815 = sext i32 %2355 to i64
  %add.ptr3816 = getelementptr inbounds i8, i8* %2354, i64 %idx.ext3815
  %2356 = load %struct.obstack*, %struct.obstack** %__o3811, align 8
  %chunk_limit3817 = getelementptr inbounds %struct.obstack, %struct.obstack* %2356, i32 0, i32 4
  %2357 = load i8*, i8** %chunk_limit3817, align 8
  %cmp3818 = icmp ugt i8* %add.ptr3816, %2357
  br i1 %cmp3818, label %if.then.3820, label %if.end.3821

if.then.3820:                                     ; preds = %if.end.3810
  %2358 = load %struct.obstack*, %struct.obstack** %__o3811, align 8
  %2359 = load i32, i32* %__len3812, align 4
  call void @_obstack_newchunk(%struct.obstack* %2358, i32 %2359)
  br label %if.end.3821

if.end.3821:                                      ; preds = %if.then.3820, %if.end.3810
  %2360 = load %struct.obstack*, %struct.obstack** %__o3811, align 8
  %next_free3822 = getelementptr inbounds %struct.obstack, %struct.obstack* %2360, i32 0, i32 3
  %2361 = load i8*, i8** %next_free3822, align 8
  %arraydecay3823 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2362 = load i32, i32* %__len3812, align 4
  %conv3824 = sext i32 %2362 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2361, i8* %arraydecay3823, i64 %conv3824, i32 1, i1 false)
  %2363 = load i32, i32* %__len3812, align 4
  %2364 = load %struct.obstack*, %struct.obstack** %__o3811, align 8
  %next_free3825 = getelementptr inbounds %struct.obstack, %struct.obstack* %2364, i32 0, i32 3
  %2365 = load i8*, i8** %next_free3825, align 8
  %idx.ext3826 = sext i32 %2363 to i64
  %add.ptr3827 = getelementptr inbounds i8, i8* %2365, i64 %idx.ext3826
  store i8* %add.ptr3827, i8** %next_free3825, align 8
  %2366 = load i64, i64* %width, align 8
  %tobool3828 = icmp ne i64 %2366, 0
  br i1 %tobool3828, label %land.lhs.true.3829, label %if.end.3849

land.lhs.true.3829:                               ; preds = %if.end.3821
  %2367 = load i32, i32* %justification, align 4
  %cmp3830 = icmp slt i32 %2367, 0
  br i1 %cmp3830, label %if.then.3832, label %if.end.3849

if.then.3832:                                     ; preds = %land.lhs.true.3829
  br label %for.cond.3833

for.cond.3833:                                    ; preds = %for.inc.3846, %if.then.3832
  %2368 = load i64, i64* %nspace3781, align 8
  %tobool3834 = icmp ne i64 %2368, 0
  br i1 %tobool3834, label %for.body.3835, label %for.end.3848

for.body.3835:                                    ; preds = %for.cond.3833
  %2369 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2369, %struct.obstack** %__o3836, align 8
  %2370 = load %struct.obstack*, %struct.obstack** %__o3836, align 8
  %next_free3837 = getelementptr inbounds %struct.obstack, %struct.obstack* %2370, i32 0, i32 3
  %2371 = load i8*, i8** %next_free3837, align 8
  %add.ptr3838 = getelementptr inbounds i8, i8* %2371, i64 1
  %2372 = load %struct.obstack*, %struct.obstack** %__o3836, align 8
  %chunk_limit3839 = getelementptr inbounds %struct.obstack, %struct.obstack* %2372, i32 0, i32 4
  %2373 = load i8*, i8** %chunk_limit3839, align 8
  %cmp3840 = icmp ugt i8* %add.ptr3838, %2373
  br i1 %cmp3840, label %if.then.3842, label %if.end.3843

if.then.3842:                                     ; preds = %for.body.3835
  %2374 = load %struct.obstack*, %struct.obstack** %__o3836, align 8
  call void @_obstack_newchunk(%struct.obstack* %2374, i32 1)
  br label %if.end.3843

if.end.3843:                                      ; preds = %if.then.3842, %for.body.3835
  %2375 = load i8, i8* %padding, align 1
  %2376 = load %struct.obstack*, %struct.obstack** %__o3836, align 8
  %next_free3844 = getelementptr inbounds %struct.obstack, %struct.obstack* %2376, i32 0, i32 3
  %2377 = load i8*, i8** %next_free3844, align 8
  %incdec.ptr3845 = getelementptr inbounds i8, i8* %2377, i32 1
  store i8* %incdec.ptr3845, i8** %next_free3844, align 8
  store i8 %2375, i8* %2377, align 1
  br label %for.inc.3846

for.inc.3846:                                     ; preds = %if.end.3843
  %2378 = load i64, i64* %nspace3781, align 8
  %dec3847 = add i64 %2378, -1
  store i64 %dec3847, i64* %nspace3781, align 8
  br label %for.cond.3833

for.end.3848:                                     ; preds = %for.cond.3833
  br label %if.end.3849

if.end.3849:                                      ; preds = %for.end.3848, %land.lhs.true.3829, %if.end.3821
  br label %do.end.3850

do.end.3850:                                      ; preds = %if.end.3849
  br label %sw.epilog.4076

sw.bb.3851:                                       ; preds = %sw.bb.3770
  %arraydecay3852 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2379 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %2379, i32 0, i32 17
  %2380 = load i32, i32* %lines, align 4
  %sub3853 = sub nsw i32 %2380, 1
  %call3854 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3852, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %sub3853) #5
  br label %do.body.3855

do.body.3855:                                     ; preds = %sw.bb.3851
  %arraydecay3857 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3858 = call i64 @strlen(i8* %arraydecay3857) #6
  store i64 %call3858, i64* %len3856, align 8
  %2381 = load i64, i64* %len3856, align 8
  %2382 = load i64, i64* %width, align 8
  %cmp3860 = icmp ugt i64 %2381, %2382
  br i1 %cmp3860, label %cond.true.3862, label %cond.false.3863

cond.true.3862:                                   ; preds = %do.body.3855
  br label %cond.end.3865

cond.false.3863:                                  ; preds = %do.body.3855
  %2383 = load i64, i64* %width, align 8
  %2384 = load i64, i64* %len3856, align 8
  %sub3864 = sub i64 %2383, %2384
  br label %cond.end.3865

cond.end.3865:                                    ; preds = %cond.false.3863, %cond.true.3862
  %cond3866 = phi i64 [ 0, %cond.true.3862 ], [ %sub3864, %cond.false.3863 ]
  store i64 %cond3866, i64* %nspace3859, align 8
  %2385 = load i64, i64* %width, align 8
  %tobool3867 = icmp ne i64 %2385, 0
  br i1 %tobool3867, label %land.lhs.true.3868, label %if.end.3888

land.lhs.true.3868:                               ; preds = %cond.end.3865
  %2386 = load i32, i32* %justification, align 4
  %cmp3869 = icmp sgt i32 %2386, 0
  br i1 %cmp3869, label %if.then.3871, label %if.end.3888

if.then.3871:                                     ; preds = %land.lhs.true.3868
  br label %for.cond.3872

for.cond.3872:                                    ; preds = %for.inc.3885, %if.then.3871
  %2387 = load i64, i64* %nspace3859, align 8
  %tobool3873 = icmp ne i64 %2387, 0
  br i1 %tobool3873, label %for.body.3874, label %for.end.3887

for.body.3874:                                    ; preds = %for.cond.3872
  %2388 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2388, %struct.obstack** %__o3875, align 8
  %2389 = load %struct.obstack*, %struct.obstack** %__o3875, align 8
  %next_free3876 = getelementptr inbounds %struct.obstack, %struct.obstack* %2389, i32 0, i32 3
  %2390 = load i8*, i8** %next_free3876, align 8
  %add.ptr3877 = getelementptr inbounds i8, i8* %2390, i64 1
  %2391 = load %struct.obstack*, %struct.obstack** %__o3875, align 8
  %chunk_limit3878 = getelementptr inbounds %struct.obstack, %struct.obstack* %2391, i32 0, i32 4
  %2392 = load i8*, i8** %chunk_limit3878, align 8
  %cmp3879 = icmp ugt i8* %add.ptr3877, %2392
  br i1 %cmp3879, label %if.then.3881, label %if.end.3882

if.then.3881:                                     ; preds = %for.body.3874
  %2393 = load %struct.obstack*, %struct.obstack** %__o3875, align 8
  call void @_obstack_newchunk(%struct.obstack* %2393, i32 1)
  br label %if.end.3882

if.end.3882:                                      ; preds = %if.then.3881, %for.body.3874
  %2394 = load i8, i8* %padding, align 1
  %2395 = load %struct.obstack*, %struct.obstack** %__o3875, align 8
  %next_free3883 = getelementptr inbounds %struct.obstack, %struct.obstack* %2395, i32 0, i32 3
  %2396 = load i8*, i8** %next_free3883, align 8
  %incdec.ptr3884 = getelementptr inbounds i8, i8* %2396, i32 1
  store i8* %incdec.ptr3884, i8** %next_free3883, align 8
  store i8 %2394, i8* %2396, align 1
  br label %for.inc.3885

for.inc.3885:                                     ; preds = %if.end.3882
  %2397 = load i64, i64* %nspace3859, align 8
  %dec3886 = add i64 %2397, -1
  store i64 %dec3886, i64* %nspace3859, align 8
  br label %for.cond.3872

for.end.3887:                                     ; preds = %for.cond.3872
  br label %if.end.3888

if.end.3888:                                      ; preds = %for.end.3887, %land.lhs.true.3868, %cond.end.3865
  %2398 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2398, %struct.obstack** %__o3889, align 8
  %2399 = load i64, i64* %len3856, align 8
  %conv3891 = trunc i64 %2399 to i32
  store i32 %conv3891, i32* %__len3890, align 4
  %2400 = load %struct.obstack*, %struct.obstack** %__o3889, align 8
  %next_free3892 = getelementptr inbounds %struct.obstack, %struct.obstack* %2400, i32 0, i32 3
  %2401 = load i8*, i8** %next_free3892, align 8
  %2402 = load i32, i32* %__len3890, align 4
  %idx.ext3893 = sext i32 %2402 to i64
  %add.ptr3894 = getelementptr inbounds i8, i8* %2401, i64 %idx.ext3893
  %2403 = load %struct.obstack*, %struct.obstack** %__o3889, align 8
  %chunk_limit3895 = getelementptr inbounds %struct.obstack, %struct.obstack* %2403, i32 0, i32 4
  %2404 = load i8*, i8** %chunk_limit3895, align 8
  %cmp3896 = icmp ugt i8* %add.ptr3894, %2404
  br i1 %cmp3896, label %if.then.3898, label %if.end.3899

if.then.3898:                                     ; preds = %if.end.3888
  %2405 = load %struct.obstack*, %struct.obstack** %__o3889, align 8
  %2406 = load i32, i32* %__len3890, align 4
  call void @_obstack_newchunk(%struct.obstack* %2405, i32 %2406)
  br label %if.end.3899

if.end.3899:                                      ; preds = %if.then.3898, %if.end.3888
  %2407 = load %struct.obstack*, %struct.obstack** %__o3889, align 8
  %next_free3900 = getelementptr inbounds %struct.obstack, %struct.obstack* %2407, i32 0, i32 3
  %2408 = load i8*, i8** %next_free3900, align 8
  %arraydecay3901 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2409 = load i32, i32* %__len3890, align 4
  %conv3902 = sext i32 %2409 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2408, i8* %arraydecay3901, i64 %conv3902, i32 1, i1 false)
  %2410 = load i32, i32* %__len3890, align 4
  %2411 = load %struct.obstack*, %struct.obstack** %__o3889, align 8
  %next_free3903 = getelementptr inbounds %struct.obstack, %struct.obstack* %2411, i32 0, i32 3
  %2412 = load i8*, i8** %next_free3903, align 8
  %idx.ext3904 = sext i32 %2410 to i64
  %add.ptr3905 = getelementptr inbounds i8, i8* %2412, i64 %idx.ext3904
  store i8* %add.ptr3905, i8** %next_free3903, align 8
  %2413 = load i64, i64* %width, align 8
  %tobool3906 = icmp ne i64 %2413, 0
  br i1 %tobool3906, label %land.lhs.true.3907, label %if.end.3927

land.lhs.true.3907:                               ; preds = %if.end.3899
  %2414 = load i32, i32* %justification, align 4
  %cmp3908 = icmp slt i32 %2414, 0
  br i1 %cmp3908, label %if.then.3910, label %if.end.3927

if.then.3910:                                     ; preds = %land.lhs.true.3907
  br label %for.cond.3911

for.cond.3911:                                    ; preds = %for.inc.3924, %if.then.3910
  %2415 = load i64, i64* %nspace3859, align 8
  %tobool3912 = icmp ne i64 %2415, 0
  br i1 %tobool3912, label %for.body.3913, label %for.end.3926

for.body.3913:                                    ; preds = %for.cond.3911
  %2416 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2416, %struct.obstack** %__o3914, align 8
  %2417 = load %struct.obstack*, %struct.obstack** %__o3914, align 8
  %next_free3915 = getelementptr inbounds %struct.obstack, %struct.obstack* %2417, i32 0, i32 3
  %2418 = load i8*, i8** %next_free3915, align 8
  %add.ptr3916 = getelementptr inbounds i8, i8* %2418, i64 1
  %2419 = load %struct.obstack*, %struct.obstack** %__o3914, align 8
  %chunk_limit3917 = getelementptr inbounds %struct.obstack, %struct.obstack* %2419, i32 0, i32 4
  %2420 = load i8*, i8** %chunk_limit3917, align 8
  %cmp3918 = icmp ugt i8* %add.ptr3916, %2420
  br i1 %cmp3918, label %if.then.3920, label %if.end.3921

if.then.3920:                                     ; preds = %for.body.3913
  %2421 = load %struct.obstack*, %struct.obstack** %__o3914, align 8
  call void @_obstack_newchunk(%struct.obstack* %2421, i32 1)
  br label %if.end.3921

if.end.3921:                                      ; preds = %if.then.3920, %for.body.3913
  %2422 = load i8, i8* %padding, align 1
  %2423 = load %struct.obstack*, %struct.obstack** %__o3914, align 8
  %next_free3922 = getelementptr inbounds %struct.obstack, %struct.obstack* %2423, i32 0, i32 3
  %2424 = load i8*, i8** %next_free3922, align 8
  %incdec.ptr3923 = getelementptr inbounds i8, i8* %2424, i32 1
  store i8* %incdec.ptr3923, i8** %next_free3922, align 8
  store i8 %2422, i8* %2424, align 1
  br label %for.inc.3924

for.inc.3924:                                     ; preds = %if.end.3921
  %2425 = load i64, i64* %nspace3859, align 8
  %dec3925 = add i64 %2425, -1
  store i64 %dec3925, i64* %nspace3859, align 8
  br label %for.cond.3911

for.end.3926:                                     ; preds = %for.cond.3911
  br label %if.end.3927

if.end.3927:                                      ; preds = %for.end.3926, %land.lhs.true.3907, %if.end.3899
  br label %do.end.3928

do.end.3928:                                      ; preds = %if.end.3927
  br label %sw.epilog.4076

sw.bb.3929:                                       ; preds = %sw.bb.3770
  %2426 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %2427 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2427, i32 0, i32 68
  %2428 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len3930 = getelementptr inbounds %struct.darray, %struct.darray* %2428, i32 0, i32 5
  %2429 = load i64, i64* %len3930, align 8
  %sub3931 = sub i64 %2429, 1
  %2430 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs3932 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2430, i32 0, i32 68
  %2431 = load %struct.darray*, %struct.darray** %jobs3932, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %2431, i32 0, i32 6
  %2432 = load i8**, i8*** %content, align 8
  %arrayidx3933 = getelementptr inbounds i8*, i8** %2432, i64 %sub3931
  %2433 = load i8*, i8** %arrayidx3933, align 8
  %2434 = bitcast i8* %2433 to %struct.file_job*
  %cmp3934 = icmp ne %struct.file_job* %2426, %2434
  br i1 %cmp3934, label %if.then.3936, label %if.else.4014

if.then.3936:                                     ; preds = %sw.bb.3929
  %arraydecay3937 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2435 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %lines3938 = getelementptr inbounds %struct.file_job, %struct.file_job* %2435, i32 0, i32 17
  %2436 = load i32, i32* %lines3938, align 4
  %call3939 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3937, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2436) #5
  br label %do.body.3940

do.body.3940:                                     ; preds = %if.then.3936
  %arraydecay3942 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3943 = call i64 @strlen(i8* %arraydecay3942) #6
  store i64 %call3943, i64* %len3941, align 8
  %2437 = load i64, i64* %len3941, align 8
  %2438 = load i64, i64* %width, align 8
  %cmp3945 = icmp ugt i64 %2437, %2438
  br i1 %cmp3945, label %cond.true.3947, label %cond.false.3948

cond.true.3947:                                   ; preds = %do.body.3940
  br label %cond.end.3950

cond.false.3948:                                  ; preds = %do.body.3940
  %2439 = load i64, i64* %width, align 8
  %2440 = load i64, i64* %len3941, align 8
  %sub3949 = sub i64 %2439, %2440
  br label %cond.end.3950

cond.end.3950:                                    ; preds = %cond.false.3948, %cond.true.3947
  %cond3951 = phi i64 [ 0, %cond.true.3947 ], [ %sub3949, %cond.false.3948 ]
  store i64 %cond3951, i64* %nspace3944, align 8
  %2441 = load i64, i64* %width, align 8
  %tobool3952 = icmp ne i64 %2441, 0
  br i1 %tobool3952, label %land.lhs.true.3953, label %if.end.3973

land.lhs.true.3953:                               ; preds = %cond.end.3950
  %2442 = load i32, i32* %justification, align 4
  %cmp3954 = icmp sgt i32 %2442, 0
  br i1 %cmp3954, label %if.then.3956, label %if.end.3973

if.then.3956:                                     ; preds = %land.lhs.true.3953
  br label %for.cond.3957

for.cond.3957:                                    ; preds = %for.inc.3970, %if.then.3956
  %2443 = load i64, i64* %nspace3944, align 8
  %tobool3958 = icmp ne i64 %2443, 0
  br i1 %tobool3958, label %for.body.3959, label %for.end.3972

for.body.3959:                                    ; preds = %for.cond.3957
  %2444 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2444, %struct.obstack** %__o3960, align 8
  %2445 = load %struct.obstack*, %struct.obstack** %__o3960, align 8
  %next_free3961 = getelementptr inbounds %struct.obstack, %struct.obstack* %2445, i32 0, i32 3
  %2446 = load i8*, i8** %next_free3961, align 8
  %add.ptr3962 = getelementptr inbounds i8, i8* %2446, i64 1
  %2447 = load %struct.obstack*, %struct.obstack** %__o3960, align 8
  %chunk_limit3963 = getelementptr inbounds %struct.obstack, %struct.obstack* %2447, i32 0, i32 4
  %2448 = load i8*, i8** %chunk_limit3963, align 8
  %cmp3964 = icmp ugt i8* %add.ptr3962, %2448
  br i1 %cmp3964, label %if.then.3966, label %if.end.3967

if.then.3966:                                     ; preds = %for.body.3959
  %2449 = load %struct.obstack*, %struct.obstack** %__o3960, align 8
  call void @_obstack_newchunk(%struct.obstack* %2449, i32 1)
  br label %if.end.3967

if.end.3967:                                      ; preds = %if.then.3966, %for.body.3959
  %2450 = load i8, i8* %padding, align 1
  %2451 = load %struct.obstack*, %struct.obstack** %__o3960, align 8
  %next_free3968 = getelementptr inbounds %struct.obstack, %struct.obstack* %2451, i32 0, i32 3
  %2452 = load i8*, i8** %next_free3968, align 8
  %incdec.ptr3969 = getelementptr inbounds i8, i8* %2452, i32 1
  store i8* %incdec.ptr3969, i8** %next_free3968, align 8
  store i8 %2450, i8* %2452, align 1
  br label %for.inc.3970

for.inc.3970:                                     ; preds = %if.end.3967
  %2453 = load i64, i64* %nspace3944, align 8
  %dec3971 = add i64 %2453, -1
  store i64 %dec3971, i64* %nspace3944, align 8
  br label %for.cond.3957

for.end.3972:                                     ; preds = %for.cond.3957
  br label %if.end.3973

if.end.3973:                                      ; preds = %for.end.3972, %land.lhs.true.3953, %cond.end.3950
  %2454 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2454, %struct.obstack** %__o3974, align 8
  %2455 = load i64, i64* %len3941, align 8
  %conv3976 = trunc i64 %2455 to i32
  store i32 %conv3976, i32* %__len3975, align 4
  %2456 = load %struct.obstack*, %struct.obstack** %__o3974, align 8
  %next_free3977 = getelementptr inbounds %struct.obstack, %struct.obstack* %2456, i32 0, i32 3
  %2457 = load i8*, i8** %next_free3977, align 8
  %2458 = load i32, i32* %__len3975, align 4
  %idx.ext3978 = sext i32 %2458 to i64
  %add.ptr3979 = getelementptr inbounds i8, i8* %2457, i64 %idx.ext3978
  %2459 = load %struct.obstack*, %struct.obstack** %__o3974, align 8
  %chunk_limit3980 = getelementptr inbounds %struct.obstack, %struct.obstack* %2459, i32 0, i32 4
  %2460 = load i8*, i8** %chunk_limit3980, align 8
  %cmp3981 = icmp ugt i8* %add.ptr3979, %2460
  br i1 %cmp3981, label %if.then.3983, label %if.end.3984

if.then.3983:                                     ; preds = %if.end.3973
  %2461 = load %struct.obstack*, %struct.obstack** %__o3974, align 8
  %2462 = load i32, i32* %__len3975, align 4
  call void @_obstack_newchunk(%struct.obstack* %2461, i32 %2462)
  br label %if.end.3984

if.end.3984:                                      ; preds = %if.then.3983, %if.end.3973
  %2463 = load %struct.obstack*, %struct.obstack** %__o3974, align 8
  %next_free3985 = getelementptr inbounds %struct.obstack, %struct.obstack* %2463, i32 0, i32 3
  %2464 = load i8*, i8** %next_free3985, align 8
  %arraydecay3986 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2465 = load i32, i32* %__len3975, align 4
  %conv3987 = sext i32 %2465 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2464, i8* %arraydecay3986, i64 %conv3987, i32 1, i1 false)
  %2466 = load i32, i32* %__len3975, align 4
  %2467 = load %struct.obstack*, %struct.obstack** %__o3974, align 8
  %next_free3988 = getelementptr inbounds %struct.obstack, %struct.obstack* %2467, i32 0, i32 3
  %2468 = load i8*, i8** %next_free3988, align 8
  %idx.ext3989 = sext i32 %2466 to i64
  %add.ptr3990 = getelementptr inbounds i8, i8* %2468, i64 %idx.ext3989
  store i8* %add.ptr3990, i8** %next_free3988, align 8
  %2469 = load i64, i64* %width, align 8
  %tobool3991 = icmp ne i64 %2469, 0
  br i1 %tobool3991, label %land.lhs.true.3992, label %if.end.4012

land.lhs.true.3992:                               ; preds = %if.end.3984
  %2470 = load i32, i32* %justification, align 4
  %cmp3993 = icmp slt i32 %2470, 0
  br i1 %cmp3993, label %if.then.3995, label %if.end.4012

if.then.3995:                                     ; preds = %land.lhs.true.3992
  br label %for.cond.3996

for.cond.3996:                                    ; preds = %for.inc.4009, %if.then.3995
  %2471 = load i64, i64* %nspace3944, align 8
  %tobool3997 = icmp ne i64 %2471, 0
  br i1 %tobool3997, label %for.body.3998, label %for.end.4011

for.body.3998:                                    ; preds = %for.cond.3996
  %2472 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2472, %struct.obstack** %__o3999, align 8
  %2473 = load %struct.obstack*, %struct.obstack** %__o3999, align 8
  %next_free4000 = getelementptr inbounds %struct.obstack, %struct.obstack* %2473, i32 0, i32 3
  %2474 = load i8*, i8** %next_free4000, align 8
  %add.ptr4001 = getelementptr inbounds i8, i8* %2474, i64 1
  %2475 = load %struct.obstack*, %struct.obstack** %__o3999, align 8
  %chunk_limit4002 = getelementptr inbounds %struct.obstack, %struct.obstack* %2475, i32 0, i32 4
  %2476 = load i8*, i8** %chunk_limit4002, align 8
  %cmp4003 = icmp ugt i8* %add.ptr4001, %2476
  br i1 %cmp4003, label %if.then.4005, label %if.end.4006

if.then.4005:                                     ; preds = %for.body.3998
  %2477 = load %struct.obstack*, %struct.obstack** %__o3999, align 8
  call void @_obstack_newchunk(%struct.obstack* %2477, i32 1)
  br label %if.end.4006

if.end.4006:                                      ; preds = %if.then.4005, %for.body.3998
  %2478 = load i8, i8* %padding, align 1
  %2479 = load %struct.obstack*, %struct.obstack** %__o3999, align 8
  %next_free4007 = getelementptr inbounds %struct.obstack, %struct.obstack* %2479, i32 0, i32 3
  %2480 = load i8*, i8** %next_free4007, align 8
  %incdec.ptr4008 = getelementptr inbounds i8, i8* %2480, i32 1
  store i8* %incdec.ptr4008, i8** %next_free4007, align 8
  store i8 %2478, i8* %2480, align 1
  br label %for.inc.4009

for.inc.4009:                                     ; preds = %if.end.4006
  %2481 = load i64, i64* %nspace3944, align 8
  %dec4010 = add i64 %2481, -1
  store i64 %dec4010, i64* %nspace3944, align 8
  br label %for.cond.3996

for.end.4011:                                     ; preds = %for.cond.3996
  br label %if.end.4012

if.end.4012:                                      ; preds = %for.end.4011, %land.lhs.true.3992, %if.end.3984
  br label %do.end.4013

do.end.4013:                                      ; preds = %if.end.4012
  br label %if.end.4069

if.else.4014:                                     ; preds = %sw.bb.3929
  br label %do.body.4015

do.body.4015:                                     ; preds = %if.else.4014
  %2482 = load i64, i64* %width, align 8
  %tobool4017 = icmp ne i64 %2482, 0
  br i1 %tobool4017, label %land.lhs.true.4018, label %if.end.4032

land.lhs.true.4018:                               ; preds = %do.body.4015
  %2483 = load i32, i32* %justification, align 4
  %cmp4019 = icmp slt i32 %2483, 0
  br i1 %cmp4019, label %if.then.4021, label %if.end.4032

if.then.4021:                                     ; preds = %land.lhs.true.4018
  %2484 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2484, %struct.obstack** %__o4022, align 8
  %2485 = load %struct.obstack*, %struct.obstack** %__o4022, align 8
  %next_free4023 = getelementptr inbounds %struct.obstack, %struct.obstack* %2485, i32 0, i32 3
  %2486 = load i8*, i8** %next_free4023, align 8
  %add.ptr4024 = getelementptr inbounds i8, i8* %2486, i64 1
  %2487 = load %struct.obstack*, %struct.obstack** %__o4022, align 8
  %chunk_limit4025 = getelementptr inbounds %struct.obstack, %struct.obstack* %2487, i32 0, i32 4
  %2488 = load i8*, i8** %chunk_limit4025, align 8
  %cmp4026 = icmp ugt i8* %add.ptr4024, %2488
  br i1 %cmp4026, label %if.then.4028, label %if.end.4029

if.then.4028:                                     ; preds = %if.then.4021
  %2489 = load %struct.obstack*, %struct.obstack** %__o4022, align 8
  call void @_obstack_newchunk(%struct.obstack* %2489, i32 1)
  br label %if.end.4029

if.end.4029:                                      ; preds = %if.then.4028, %if.then.4021
  %2490 = load %struct.obstack*, %struct.obstack** %__o4022, align 8
  %next_free4030 = getelementptr inbounds %struct.obstack, %struct.obstack* %2490, i32 0, i32 3
  %2491 = load i8*, i8** %next_free4030, align 8
  %incdec.ptr4031 = getelementptr inbounds i8, i8* %2491, i32 1
  store i8* %incdec.ptr4031, i8** %next_free4030, align 8
  store i8 6, i8* %2491, align 1
  br label %if.end.4032

if.end.4032:                                      ; preds = %if.end.4029, %land.lhs.true.4018, %do.body.4015
  store i32 0, i32* %a4016, align 4
  br label %for.cond.4033

for.cond.4033:                                    ; preds = %for.inc.4049, %if.end.4032
  %2492 = load i32, i32* %a4016, align 4
  %2493 = load i64, i64* %width, align 8
  %conv4034 = trunc i64 %2493 to i32
  %sub4035 = sub nsw i32 %conv4034, 1
  %cmp4036 = icmp slt i32 %2492, %sub4035
  br i1 %cmp4036, label %for.body.4038, label %for.end.4051

for.body.4038:                                    ; preds = %for.cond.4033
  %2494 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2494, %struct.obstack** %__o4039, align 8
  %2495 = load %struct.obstack*, %struct.obstack** %__o4039, align 8
  %next_free4040 = getelementptr inbounds %struct.obstack, %struct.obstack* %2495, i32 0, i32 3
  %2496 = load i8*, i8** %next_free4040, align 8
  %add.ptr4041 = getelementptr inbounds i8, i8* %2496, i64 1
  %2497 = load %struct.obstack*, %struct.obstack** %__o4039, align 8
  %chunk_limit4042 = getelementptr inbounds %struct.obstack, %struct.obstack* %2497, i32 0, i32 4
  %2498 = load i8*, i8** %chunk_limit4042, align 8
  %cmp4043 = icmp ugt i8* %add.ptr4041, %2498
  br i1 %cmp4043, label %if.then.4045, label %if.end.4046

if.then.4045:                                     ; preds = %for.body.4038
  %2499 = load %struct.obstack*, %struct.obstack** %__o4039, align 8
  call void @_obstack_newchunk(%struct.obstack* %2499, i32 1)
  br label %if.end.4046

if.end.4046:                                      ; preds = %if.then.4045, %for.body.4038
  %2500 = load i8, i8* %padding, align 1
  %2501 = load %struct.obstack*, %struct.obstack** %__o4039, align 8
  %next_free4047 = getelementptr inbounds %struct.obstack, %struct.obstack* %2501, i32 0, i32 3
  %2502 = load i8*, i8** %next_free4047, align 8
  %incdec.ptr4048 = getelementptr inbounds i8, i8* %2502, i32 1
  store i8* %incdec.ptr4048, i8** %next_free4047, align 8
  store i8 %2500, i8* %2502, align 1
  br label %for.inc.4049

for.inc.4049:                                     ; preds = %if.end.4046
  %2503 = load i32, i32* %a4016, align 4
  %inc4050 = add nsw i32 %2503, 1
  store i32 %inc4050, i32* %a4016, align 4
  br label %for.cond.4033

for.end.4051:                                     ; preds = %for.cond.4033
  %2504 = load i64, i64* %width, align 8
  %tobool4052 = icmp ne i64 %2504, 0
  br i1 %tobool4052, label %lor.lhs.false.4053, label %if.then.4056

lor.lhs.false.4053:                               ; preds = %for.end.4051
  %2505 = load i32, i32* %justification, align 4
  %cmp4054 = icmp sgt i32 %2505, 0
  br i1 %cmp4054, label %if.then.4056, label %if.end.4067

if.then.4056:                                     ; preds = %lor.lhs.false.4053, %for.end.4051
  %2506 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2506, %struct.obstack** %__o4057, align 8
  %2507 = load %struct.obstack*, %struct.obstack** %__o4057, align 8
  %next_free4058 = getelementptr inbounds %struct.obstack, %struct.obstack* %2507, i32 0, i32 3
  %2508 = load i8*, i8** %next_free4058, align 8
  %add.ptr4059 = getelementptr inbounds i8, i8* %2508, i64 1
  %2509 = load %struct.obstack*, %struct.obstack** %__o4057, align 8
  %chunk_limit4060 = getelementptr inbounds %struct.obstack, %struct.obstack* %2509, i32 0, i32 4
  %2510 = load i8*, i8** %chunk_limit4060, align 8
  %cmp4061 = icmp ugt i8* %add.ptr4059, %2510
  br i1 %cmp4061, label %if.then.4063, label %if.end.4064

if.then.4063:                                     ; preds = %if.then.4056
  %2511 = load %struct.obstack*, %struct.obstack** %__o4057, align 8
  call void @_obstack_newchunk(%struct.obstack* %2511, i32 1)
  br label %if.end.4064

if.end.4064:                                      ; preds = %if.then.4063, %if.then.4056
  %2512 = load %struct.obstack*, %struct.obstack** %__o4057, align 8
  %next_free4065 = getelementptr inbounds %struct.obstack, %struct.obstack* %2512, i32 0, i32 3
  %2513 = load i8*, i8** %next_free4065, align 8
  %incdec.ptr4066 = getelementptr inbounds i8, i8* %2513, i32 1
  store i8* %incdec.ptr4066, i8** %next_free4065, align 8
  store i8 6, i8* %2513, align 1
  br label %if.end.4067

if.end.4067:                                      ; preds = %if.end.4064, %lor.lhs.false.4053
  br label %do.end.4068

do.end.4068:                                      ; preds = %if.end.4067
  br label %if.end.4069

if.end.4069:                                      ; preds = %do.end.4068, %do.end.4013
  br label %sw.epilog.4076

sw.default.4070:                                  ; preds = %sw.bb.3770
  %call4071 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %2514 = load i8*, i8** %context_name.addr, align 8
  %2515 = load i64, i64* %i, align 8
  %2516 = load i8*, i8** %str.addr, align 8
  %arrayidx4072 = getelementptr inbounds i8, i8* %2516, i64 %2515
  %2517 = load i8, i8* %arrayidx4072, align 1
  %conv4073 = zext i8 %2517 to i32
  %2518 = load i64, i64* %i, align 8
  %2519 = load i8*, i8** %str.addr, align 8
  %arrayidx4074 = getelementptr inbounds i8, i8* %2519, i64 %2518
  %2520 = load i8, i8* %arrayidx4074, align 1
  %conv4075 = zext i8 %2520 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call4071, i8* %2514, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32 %conv4073, i32 %conv4075)
  br label %sw.epilog.4076

sw.epilog.4076:                                   ; preds = %sw.default.4070, %if.end.4069, %do.end.3928, %do.end.3850
  br label %sw.epilog.6153

sw.bb.4077:                                       ; preds = %sw.bb.2280
  %2521 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name4078 = getelementptr inbounds %struct.file_job, %struct.file_job* %2521, i32 0, i32 0
  %2522 = load i8*, i8** %name4078, align 8
  %call4079 = call i8* @strrchr(i8* %2522, i32 47) #6
  store i8* %call4079, i8** %cp, align 8
  %2523 = load i8*, i8** %cp, align 8
  %cmp4080 = icmp eq i8* %2523, null
  br i1 %cmp4080, label %if.then.4082, label %if.else.4084

if.then.4082:                                     ; preds = %sw.bb.4077
  %2524 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name4083 = getelementptr inbounds %struct.file_job, %struct.file_job* %2524, i32 0, i32 0
  %2525 = load i8*, i8** %name4083, align 8
  store i8* %2525, i8** %cp, align 8
  br label %if.end.4086

if.else.4084:                                     ; preds = %sw.bb.4077
  %2526 = load i8*, i8** %cp, align 8
  %incdec.ptr4085 = getelementptr inbounds i8, i8* %2526, i32 1
  store i8* %incdec.ptr4085, i8** %cp, align 8
  br label %if.end.4086

if.end.4086:                                      ; preds = %if.else.4084, %if.then.4082
  %2527 = load i8*, i8** %cp, align 8
  %call4087 = call i8* @strrchr(i8* %2527, i32 46) #6
  store i8* %call4087, i8** %cp2, align 8
  %2528 = load i8*, i8** %cp2, align 8
  %tobool4088 = icmp ne i8* %2528, null
  br i1 %tobool4088, label %if.then.4089, label %if.else.4173

if.then.4089:                                     ; preds = %if.end.4086
  %arraydecay4090 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2529 = load i8*, i8** %cp, align 8
  %2530 = load i8*, i8** %cp2, align 8
  %2531 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast4091 = ptrtoint i8* %2530 to i64
  %sub.ptr.rhs.cast4092 = ptrtoint i8* %2531 to i64
  %sub.ptr.sub4093 = sub i64 %sub.ptr.lhs.cast4091, %sub.ptr.rhs.cast4092
  %call4094 = call i8* @strncpy(i8* %arraydecay4090, i8* %2529, i64 %sub.ptr.sub4093) #5
  %2532 = load i8*, i8** %cp2, align 8
  %2533 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast4095 = ptrtoint i8* %2532 to i64
  %sub.ptr.rhs.cast4096 = ptrtoint i8* %2533 to i64
  %sub.ptr.sub4097 = sub i64 %sub.ptr.lhs.cast4095, %sub.ptr.rhs.cast4096
  %arrayidx4098 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %sub.ptr.sub4097
  store i8 0, i8* %arrayidx4098, align 1
  br label %do.body.4099

do.body.4099:                                     ; preds = %if.then.4089
  %arraydecay4101 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4102 = call i64 @strlen(i8* %arraydecay4101) #6
  store i64 %call4102, i64* %len4100, align 8
  %2534 = load i64, i64* %len4100, align 8
  %2535 = load i64, i64* %width, align 8
  %cmp4104 = icmp ugt i64 %2534, %2535
  br i1 %cmp4104, label %cond.true.4106, label %cond.false.4107

cond.true.4106:                                   ; preds = %do.body.4099
  br label %cond.end.4109

cond.false.4107:                                  ; preds = %do.body.4099
  %2536 = load i64, i64* %width, align 8
  %2537 = load i64, i64* %len4100, align 8
  %sub4108 = sub i64 %2536, %2537
  br label %cond.end.4109

cond.end.4109:                                    ; preds = %cond.false.4107, %cond.true.4106
  %cond4110 = phi i64 [ 0, %cond.true.4106 ], [ %sub4108, %cond.false.4107 ]
  store i64 %cond4110, i64* %nspace4103, align 8
  %2538 = load i64, i64* %width, align 8
  %tobool4111 = icmp ne i64 %2538, 0
  br i1 %tobool4111, label %land.lhs.true.4112, label %if.end.4132

land.lhs.true.4112:                               ; preds = %cond.end.4109
  %2539 = load i32, i32* %justification, align 4
  %cmp4113 = icmp sgt i32 %2539, 0
  br i1 %cmp4113, label %if.then.4115, label %if.end.4132

if.then.4115:                                     ; preds = %land.lhs.true.4112
  br label %for.cond.4116

for.cond.4116:                                    ; preds = %for.inc.4129, %if.then.4115
  %2540 = load i64, i64* %nspace4103, align 8
  %tobool4117 = icmp ne i64 %2540, 0
  br i1 %tobool4117, label %for.body.4118, label %for.end.4131

for.body.4118:                                    ; preds = %for.cond.4116
  %2541 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2541, %struct.obstack** %__o4119, align 8
  %2542 = load %struct.obstack*, %struct.obstack** %__o4119, align 8
  %next_free4120 = getelementptr inbounds %struct.obstack, %struct.obstack* %2542, i32 0, i32 3
  %2543 = load i8*, i8** %next_free4120, align 8
  %add.ptr4121 = getelementptr inbounds i8, i8* %2543, i64 1
  %2544 = load %struct.obstack*, %struct.obstack** %__o4119, align 8
  %chunk_limit4122 = getelementptr inbounds %struct.obstack, %struct.obstack* %2544, i32 0, i32 4
  %2545 = load i8*, i8** %chunk_limit4122, align 8
  %cmp4123 = icmp ugt i8* %add.ptr4121, %2545
  br i1 %cmp4123, label %if.then.4125, label %if.end.4126

if.then.4125:                                     ; preds = %for.body.4118
  %2546 = load %struct.obstack*, %struct.obstack** %__o4119, align 8
  call void @_obstack_newchunk(%struct.obstack* %2546, i32 1)
  br label %if.end.4126

if.end.4126:                                      ; preds = %if.then.4125, %for.body.4118
  %2547 = load i8, i8* %padding, align 1
  %2548 = load %struct.obstack*, %struct.obstack** %__o4119, align 8
  %next_free4127 = getelementptr inbounds %struct.obstack, %struct.obstack* %2548, i32 0, i32 3
  %2549 = load i8*, i8** %next_free4127, align 8
  %incdec.ptr4128 = getelementptr inbounds i8, i8* %2549, i32 1
  store i8* %incdec.ptr4128, i8** %next_free4127, align 8
  store i8 %2547, i8* %2549, align 1
  br label %for.inc.4129

for.inc.4129:                                     ; preds = %if.end.4126
  %2550 = load i64, i64* %nspace4103, align 8
  %dec4130 = add i64 %2550, -1
  store i64 %dec4130, i64* %nspace4103, align 8
  br label %for.cond.4116

for.end.4131:                                     ; preds = %for.cond.4116
  br label %if.end.4132

if.end.4132:                                      ; preds = %for.end.4131, %land.lhs.true.4112, %cond.end.4109
  %2551 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2551, %struct.obstack** %__o4133, align 8
  %2552 = load i64, i64* %len4100, align 8
  %conv4135 = trunc i64 %2552 to i32
  store i32 %conv4135, i32* %__len4134, align 4
  %2553 = load %struct.obstack*, %struct.obstack** %__o4133, align 8
  %next_free4136 = getelementptr inbounds %struct.obstack, %struct.obstack* %2553, i32 0, i32 3
  %2554 = load i8*, i8** %next_free4136, align 8
  %2555 = load i32, i32* %__len4134, align 4
  %idx.ext4137 = sext i32 %2555 to i64
  %add.ptr4138 = getelementptr inbounds i8, i8* %2554, i64 %idx.ext4137
  %2556 = load %struct.obstack*, %struct.obstack** %__o4133, align 8
  %chunk_limit4139 = getelementptr inbounds %struct.obstack, %struct.obstack* %2556, i32 0, i32 4
  %2557 = load i8*, i8** %chunk_limit4139, align 8
  %cmp4140 = icmp ugt i8* %add.ptr4138, %2557
  br i1 %cmp4140, label %if.then.4142, label %if.end.4143

if.then.4142:                                     ; preds = %if.end.4132
  %2558 = load %struct.obstack*, %struct.obstack** %__o4133, align 8
  %2559 = load i32, i32* %__len4134, align 4
  call void @_obstack_newchunk(%struct.obstack* %2558, i32 %2559)
  br label %if.end.4143

if.end.4143:                                      ; preds = %if.then.4142, %if.end.4132
  %2560 = load %struct.obstack*, %struct.obstack** %__o4133, align 8
  %next_free4144 = getelementptr inbounds %struct.obstack, %struct.obstack* %2560, i32 0, i32 3
  %2561 = load i8*, i8** %next_free4144, align 8
  %arraydecay4145 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2562 = load i32, i32* %__len4134, align 4
  %conv4146 = sext i32 %2562 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2561, i8* %arraydecay4145, i64 %conv4146, i32 1, i1 false)
  %2563 = load i32, i32* %__len4134, align 4
  %2564 = load %struct.obstack*, %struct.obstack** %__o4133, align 8
  %next_free4147 = getelementptr inbounds %struct.obstack, %struct.obstack* %2564, i32 0, i32 3
  %2565 = load i8*, i8** %next_free4147, align 8
  %idx.ext4148 = sext i32 %2563 to i64
  %add.ptr4149 = getelementptr inbounds i8, i8* %2565, i64 %idx.ext4148
  store i8* %add.ptr4149, i8** %next_free4147, align 8
  %2566 = load i64, i64* %width, align 8
  %tobool4150 = icmp ne i64 %2566, 0
  br i1 %tobool4150, label %land.lhs.true.4151, label %if.end.4171

land.lhs.true.4151:                               ; preds = %if.end.4143
  %2567 = load i32, i32* %justification, align 4
  %cmp4152 = icmp slt i32 %2567, 0
  br i1 %cmp4152, label %if.then.4154, label %if.end.4171

if.then.4154:                                     ; preds = %land.lhs.true.4151
  br label %for.cond.4155

for.cond.4155:                                    ; preds = %for.inc.4168, %if.then.4154
  %2568 = load i64, i64* %nspace4103, align 8
  %tobool4156 = icmp ne i64 %2568, 0
  br i1 %tobool4156, label %for.body.4157, label %for.end.4170

for.body.4157:                                    ; preds = %for.cond.4155
  %2569 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2569, %struct.obstack** %__o4158, align 8
  %2570 = load %struct.obstack*, %struct.obstack** %__o4158, align 8
  %next_free4159 = getelementptr inbounds %struct.obstack, %struct.obstack* %2570, i32 0, i32 3
  %2571 = load i8*, i8** %next_free4159, align 8
  %add.ptr4160 = getelementptr inbounds i8, i8* %2571, i64 1
  %2572 = load %struct.obstack*, %struct.obstack** %__o4158, align 8
  %chunk_limit4161 = getelementptr inbounds %struct.obstack, %struct.obstack* %2572, i32 0, i32 4
  %2573 = load i8*, i8** %chunk_limit4161, align 8
  %cmp4162 = icmp ugt i8* %add.ptr4160, %2573
  br i1 %cmp4162, label %if.then.4164, label %if.end.4165

if.then.4164:                                     ; preds = %for.body.4157
  %2574 = load %struct.obstack*, %struct.obstack** %__o4158, align 8
  call void @_obstack_newchunk(%struct.obstack* %2574, i32 1)
  br label %if.end.4165

if.end.4165:                                      ; preds = %if.then.4164, %for.body.4157
  %2575 = load i8, i8* %padding, align 1
  %2576 = load %struct.obstack*, %struct.obstack** %__o4158, align 8
  %next_free4166 = getelementptr inbounds %struct.obstack, %struct.obstack* %2576, i32 0, i32 3
  %2577 = load i8*, i8** %next_free4166, align 8
  %incdec.ptr4167 = getelementptr inbounds i8, i8* %2577, i32 1
  store i8* %incdec.ptr4167, i8** %next_free4166, align 8
  store i8 %2575, i8* %2577, align 1
  br label %for.inc.4168

for.inc.4168:                                     ; preds = %if.end.4165
  %2578 = load i64, i64* %nspace4103, align 8
  %dec4169 = add i64 %2578, -1
  store i64 %dec4169, i64* %nspace4103, align 8
  br label %for.cond.4155

for.end.4170:                                     ; preds = %for.cond.4155
  br label %if.end.4171

if.end.4171:                                      ; preds = %for.end.4170, %land.lhs.true.4151, %if.end.4143
  br label %do.end.4172

do.end.4172:                                      ; preds = %if.end.4171
  br label %if.end.4246

if.else.4173:                                     ; preds = %if.end.4086
  br label %do.body.4174

do.body.4174:                                     ; preds = %if.else.4173
  %2579 = load i8*, i8** %cp, align 8
  %call4176 = call i64 @strlen(i8* %2579) #6
  store i64 %call4176, i64* %len4175, align 8
  %2580 = load i64, i64* %len4175, align 8
  %2581 = load i64, i64* %width, align 8
  %cmp4178 = icmp ugt i64 %2580, %2581
  br i1 %cmp4178, label %cond.true.4180, label %cond.false.4181

cond.true.4180:                                   ; preds = %do.body.4174
  br label %cond.end.4183

cond.false.4181:                                  ; preds = %do.body.4174
  %2582 = load i64, i64* %width, align 8
  %2583 = load i64, i64* %len4175, align 8
  %sub4182 = sub i64 %2582, %2583
  br label %cond.end.4183

cond.end.4183:                                    ; preds = %cond.false.4181, %cond.true.4180
  %cond4184 = phi i64 [ 0, %cond.true.4180 ], [ %sub4182, %cond.false.4181 ]
  store i64 %cond4184, i64* %nspace4177, align 8
  %2584 = load i64, i64* %width, align 8
  %tobool4185 = icmp ne i64 %2584, 0
  br i1 %tobool4185, label %land.lhs.true.4186, label %if.end.4206

land.lhs.true.4186:                               ; preds = %cond.end.4183
  %2585 = load i32, i32* %justification, align 4
  %cmp4187 = icmp sgt i32 %2585, 0
  br i1 %cmp4187, label %if.then.4189, label %if.end.4206

if.then.4189:                                     ; preds = %land.lhs.true.4186
  br label %for.cond.4190

for.cond.4190:                                    ; preds = %for.inc.4203, %if.then.4189
  %2586 = load i64, i64* %nspace4177, align 8
  %tobool4191 = icmp ne i64 %2586, 0
  br i1 %tobool4191, label %for.body.4192, label %for.end.4205

for.body.4192:                                    ; preds = %for.cond.4190
  %2587 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2587, %struct.obstack** %__o4193, align 8
  %2588 = load %struct.obstack*, %struct.obstack** %__o4193, align 8
  %next_free4194 = getelementptr inbounds %struct.obstack, %struct.obstack* %2588, i32 0, i32 3
  %2589 = load i8*, i8** %next_free4194, align 8
  %add.ptr4195 = getelementptr inbounds i8, i8* %2589, i64 1
  %2590 = load %struct.obstack*, %struct.obstack** %__o4193, align 8
  %chunk_limit4196 = getelementptr inbounds %struct.obstack, %struct.obstack* %2590, i32 0, i32 4
  %2591 = load i8*, i8** %chunk_limit4196, align 8
  %cmp4197 = icmp ugt i8* %add.ptr4195, %2591
  br i1 %cmp4197, label %if.then.4199, label %if.end.4200

if.then.4199:                                     ; preds = %for.body.4192
  %2592 = load %struct.obstack*, %struct.obstack** %__o4193, align 8
  call void @_obstack_newchunk(%struct.obstack* %2592, i32 1)
  br label %if.end.4200

if.end.4200:                                      ; preds = %if.then.4199, %for.body.4192
  %2593 = load i8, i8* %padding, align 1
  %2594 = load %struct.obstack*, %struct.obstack** %__o4193, align 8
  %next_free4201 = getelementptr inbounds %struct.obstack, %struct.obstack* %2594, i32 0, i32 3
  %2595 = load i8*, i8** %next_free4201, align 8
  %incdec.ptr4202 = getelementptr inbounds i8, i8* %2595, i32 1
  store i8* %incdec.ptr4202, i8** %next_free4201, align 8
  store i8 %2593, i8* %2595, align 1
  br label %for.inc.4203

for.inc.4203:                                     ; preds = %if.end.4200
  %2596 = load i64, i64* %nspace4177, align 8
  %dec4204 = add i64 %2596, -1
  store i64 %dec4204, i64* %nspace4177, align 8
  br label %for.cond.4190

for.end.4205:                                     ; preds = %for.cond.4190
  br label %if.end.4206

if.end.4206:                                      ; preds = %for.end.4205, %land.lhs.true.4186, %cond.end.4183
  %2597 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2597, %struct.obstack** %__o4207, align 8
  %2598 = load i64, i64* %len4175, align 8
  %conv4209 = trunc i64 %2598 to i32
  store i32 %conv4209, i32* %__len4208, align 4
  %2599 = load %struct.obstack*, %struct.obstack** %__o4207, align 8
  %next_free4210 = getelementptr inbounds %struct.obstack, %struct.obstack* %2599, i32 0, i32 3
  %2600 = load i8*, i8** %next_free4210, align 8
  %2601 = load i32, i32* %__len4208, align 4
  %idx.ext4211 = sext i32 %2601 to i64
  %add.ptr4212 = getelementptr inbounds i8, i8* %2600, i64 %idx.ext4211
  %2602 = load %struct.obstack*, %struct.obstack** %__o4207, align 8
  %chunk_limit4213 = getelementptr inbounds %struct.obstack, %struct.obstack* %2602, i32 0, i32 4
  %2603 = load i8*, i8** %chunk_limit4213, align 8
  %cmp4214 = icmp ugt i8* %add.ptr4212, %2603
  br i1 %cmp4214, label %if.then.4216, label %if.end.4217

if.then.4216:                                     ; preds = %if.end.4206
  %2604 = load %struct.obstack*, %struct.obstack** %__o4207, align 8
  %2605 = load i32, i32* %__len4208, align 4
  call void @_obstack_newchunk(%struct.obstack* %2604, i32 %2605)
  br label %if.end.4217

if.end.4217:                                      ; preds = %if.then.4216, %if.end.4206
  %2606 = load %struct.obstack*, %struct.obstack** %__o4207, align 8
  %next_free4218 = getelementptr inbounds %struct.obstack, %struct.obstack* %2606, i32 0, i32 3
  %2607 = load i8*, i8** %next_free4218, align 8
  %2608 = load i8*, i8** %cp, align 8
  %2609 = load i32, i32* %__len4208, align 4
  %conv4219 = sext i32 %2609 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2607, i8* %2608, i64 %conv4219, i32 1, i1 false)
  %2610 = load i32, i32* %__len4208, align 4
  %2611 = load %struct.obstack*, %struct.obstack** %__o4207, align 8
  %next_free4220 = getelementptr inbounds %struct.obstack, %struct.obstack* %2611, i32 0, i32 3
  %2612 = load i8*, i8** %next_free4220, align 8
  %idx.ext4221 = sext i32 %2610 to i64
  %add.ptr4222 = getelementptr inbounds i8, i8* %2612, i64 %idx.ext4221
  store i8* %add.ptr4222, i8** %next_free4220, align 8
  %2613 = load i64, i64* %width, align 8
  %tobool4223 = icmp ne i64 %2613, 0
  br i1 %tobool4223, label %land.lhs.true.4224, label %if.end.4244

land.lhs.true.4224:                               ; preds = %if.end.4217
  %2614 = load i32, i32* %justification, align 4
  %cmp4225 = icmp slt i32 %2614, 0
  br i1 %cmp4225, label %if.then.4227, label %if.end.4244

if.then.4227:                                     ; preds = %land.lhs.true.4224
  br label %for.cond.4228

for.cond.4228:                                    ; preds = %for.inc.4241, %if.then.4227
  %2615 = load i64, i64* %nspace4177, align 8
  %tobool4229 = icmp ne i64 %2615, 0
  br i1 %tobool4229, label %for.body.4230, label %for.end.4243

for.body.4230:                                    ; preds = %for.cond.4228
  %2616 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2616, %struct.obstack** %__o4231, align 8
  %2617 = load %struct.obstack*, %struct.obstack** %__o4231, align 8
  %next_free4232 = getelementptr inbounds %struct.obstack, %struct.obstack* %2617, i32 0, i32 3
  %2618 = load i8*, i8** %next_free4232, align 8
  %add.ptr4233 = getelementptr inbounds i8, i8* %2618, i64 1
  %2619 = load %struct.obstack*, %struct.obstack** %__o4231, align 8
  %chunk_limit4234 = getelementptr inbounds %struct.obstack, %struct.obstack* %2619, i32 0, i32 4
  %2620 = load i8*, i8** %chunk_limit4234, align 8
  %cmp4235 = icmp ugt i8* %add.ptr4233, %2620
  br i1 %cmp4235, label %if.then.4237, label %if.end.4238

if.then.4237:                                     ; preds = %for.body.4230
  %2621 = load %struct.obstack*, %struct.obstack** %__o4231, align 8
  call void @_obstack_newchunk(%struct.obstack* %2621, i32 1)
  br label %if.end.4238

if.end.4238:                                      ; preds = %if.then.4237, %for.body.4230
  %2622 = load i8, i8* %padding, align 1
  %2623 = load %struct.obstack*, %struct.obstack** %__o4231, align 8
  %next_free4239 = getelementptr inbounds %struct.obstack, %struct.obstack* %2623, i32 0, i32 3
  %2624 = load i8*, i8** %next_free4239, align 8
  %incdec.ptr4240 = getelementptr inbounds i8, i8* %2624, i32 1
  store i8* %incdec.ptr4240, i8** %next_free4239, align 8
  store i8 %2622, i8* %2624, align 1
  br label %for.inc.4241

for.inc.4241:                                     ; preds = %if.end.4238
  %2625 = load i64, i64* %nspace4177, align 8
  %dec4242 = add i64 %2625, -1
  store i64 %dec4242, i64* %nspace4177, align 8
  br label %for.cond.4228

for.end.4243:                                     ; preds = %for.cond.4228
  br label %if.end.4244

if.end.4244:                                      ; preds = %for.end.4243, %land.lhs.true.4224, %if.end.4217
  br label %do.end.4245

do.end.4245:                                      ; preds = %if.end.4244
  br label %if.end.4246

if.end.4246:                                      ; preds = %do.end.4245, %do.end.4172
  br label %sw.epilog.6153

sw.bb.4247:                                       ; preds = %sw.bb.2280
  %2626 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name4248 = getelementptr inbounds %struct.file_job, %struct.file_job* %2626, i32 0, i32 0
  %2627 = load i8*, i8** %name4248, align 8
  %call4249 = call i8* @strrchr(i8* %2627, i32 47) #6
  store i8* %call4249, i8** %cp, align 8
  %2628 = load i8*, i8** %cp, align 8
  %cmp4250 = icmp eq i8* %2628, null
  br i1 %cmp4250, label %if.then.4252, label %if.else.4254

if.then.4252:                                     ; preds = %sw.bb.4247
  %2629 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name4253 = getelementptr inbounds %struct.file_job, %struct.file_job* %2629, i32 0, i32 0
  %2630 = load i8*, i8** %name4253, align 8
  store i8* %2630, i8** %cp, align 8
  br label %if.end.4256

if.else.4254:                                     ; preds = %sw.bb.4247
  %2631 = load i8*, i8** %cp, align 8
  %incdec.ptr4255 = getelementptr inbounds i8, i8* %2631, i32 1
  store i8* %incdec.ptr4255, i8** %cp, align 8
  br label %if.end.4256

if.end.4256:                                      ; preds = %if.else.4254, %if.then.4252
  br label %do.body.4257

do.body.4257:                                     ; preds = %if.end.4256
  %2632 = load i8*, i8** %cp, align 8
  %call4259 = call i64 @strlen(i8* %2632) #6
  store i64 %call4259, i64* %len4258, align 8
  %2633 = load i64, i64* %len4258, align 8
  %2634 = load i64, i64* %width, align 8
  %cmp4261 = icmp ugt i64 %2633, %2634
  br i1 %cmp4261, label %cond.true.4263, label %cond.false.4264

cond.true.4263:                                   ; preds = %do.body.4257
  br label %cond.end.4266

cond.false.4264:                                  ; preds = %do.body.4257
  %2635 = load i64, i64* %width, align 8
  %2636 = load i64, i64* %len4258, align 8
  %sub4265 = sub i64 %2635, %2636
  br label %cond.end.4266

cond.end.4266:                                    ; preds = %cond.false.4264, %cond.true.4263
  %cond4267 = phi i64 [ 0, %cond.true.4263 ], [ %sub4265, %cond.false.4264 ]
  store i64 %cond4267, i64* %nspace4260, align 8
  %2637 = load i64, i64* %width, align 8
  %tobool4268 = icmp ne i64 %2637, 0
  br i1 %tobool4268, label %land.lhs.true.4269, label %if.end.4289

land.lhs.true.4269:                               ; preds = %cond.end.4266
  %2638 = load i32, i32* %justification, align 4
  %cmp4270 = icmp sgt i32 %2638, 0
  br i1 %cmp4270, label %if.then.4272, label %if.end.4289

if.then.4272:                                     ; preds = %land.lhs.true.4269
  br label %for.cond.4273

for.cond.4273:                                    ; preds = %for.inc.4286, %if.then.4272
  %2639 = load i64, i64* %nspace4260, align 8
  %tobool4274 = icmp ne i64 %2639, 0
  br i1 %tobool4274, label %for.body.4275, label %for.end.4288

for.body.4275:                                    ; preds = %for.cond.4273
  %2640 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2640, %struct.obstack** %__o4276, align 8
  %2641 = load %struct.obstack*, %struct.obstack** %__o4276, align 8
  %next_free4277 = getelementptr inbounds %struct.obstack, %struct.obstack* %2641, i32 0, i32 3
  %2642 = load i8*, i8** %next_free4277, align 8
  %add.ptr4278 = getelementptr inbounds i8, i8* %2642, i64 1
  %2643 = load %struct.obstack*, %struct.obstack** %__o4276, align 8
  %chunk_limit4279 = getelementptr inbounds %struct.obstack, %struct.obstack* %2643, i32 0, i32 4
  %2644 = load i8*, i8** %chunk_limit4279, align 8
  %cmp4280 = icmp ugt i8* %add.ptr4278, %2644
  br i1 %cmp4280, label %if.then.4282, label %if.end.4283

if.then.4282:                                     ; preds = %for.body.4275
  %2645 = load %struct.obstack*, %struct.obstack** %__o4276, align 8
  call void @_obstack_newchunk(%struct.obstack* %2645, i32 1)
  br label %if.end.4283

if.end.4283:                                      ; preds = %if.then.4282, %for.body.4275
  %2646 = load i8, i8* %padding, align 1
  %2647 = load %struct.obstack*, %struct.obstack** %__o4276, align 8
  %next_free4284 = getelementptr inbounds %struct.obstack, %struct.obstack* %2647, i32 0, i32 3
  %2648 = load i8*, i8** %next_free4284, align 8
  %incdec.ptr4285 = getelementptr inbounds i8, i8* %2648, i32 1
  store i8* %incdec.ptr4285, i8** %next_free4284, align 8
  store i8 %2646, i8* %2648, align 1
  br label %for.inc.4286

for.inc.4286:                                     ; preds = %if.end.4283
  %2649 = load i64, i64* %nspace4260, align 8
  %dec4287 = add i64 %2649, -1
  store i64 %dec4287, i64* %nspace4260, align 8
  br label %for.cond.4273

for.end.4288:                                     ; preds = %for.cond.4273
  br label %if.end.4289

if.end.4289:                                      ; preds = %for.end.4288, %land.lhs.true.4269, %cond.end.4266
  %2650 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2650, %struct.obstack** %__o4290, align 8
  %2651 = load i64, i64* %len4258, align 8
  %conv4292 = trunc i64 %2651 to i32
  store i32 %conv4292, i32* %__len4291, align 4
  %2652 = load %struct.obstack*, %struct.obstack** %__o4290, align 8
  %next_free4293 = getelementptr inbounds %struct.obstack, %struct.obstack* %2652, i32 0, i32 3
  %2653 = load i8*, i8** %next_free4293, align 8
  %2654 = load i32, i32* %__len4291, align 4
  %idx.ext4294 = sext i32 %2654 to i64
  %add.ptr4295 = getelementptr inbounds i8, i8* %2653, i64 %idx.ext4294
  %2655 = load %struct.obstack*, %struct.obstack** %__o4290, align 8
  %chunk_limit4296 = getelementptr inbounds %struct.obstack, %struct.obstack* %2655, i32 0, i32 4
  %2656 = load i8*, i8** %chunk_limit4296, align 8
  %cmp4297 = icmp ugt i8* %add.ptr4295, %2656
  br i1 %cmp4297, label %if.then.4299, label %if.end.4300

if.then.4299:                                     ; preds = %if.end.4289
  %2657 = load %struct.obstack*, %struct.obstack** %__o4290, align 8
  %2658 = load i32, i32* %__len4291, align 4
  call void @_obstack_newchunk(%struct.obstack* %2657, i32 %2658)
  br label %if.end.4300

if.end.4300:                                      ; preds = %if.then.4299, %if.end.4289
  %2659 = load %struct.obstack*, %struct.obstack** %__o4290, align 8
  %next_free4301 = getelementptr inbounds %struct.obstack, %struct.obstack* %2659, i32 0, i32 3
  %2660 = load i8*, i8** %next_free4301, align 8
  %2661 = load i8*, i8** %cp, align 8
  %2662 = load i32, i32* %__len4291, align 4
  %conv4302 = sext i32 %2662 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2660, i8* %2661, i64 %conv4302, i32 1, i1 false)
  %2663 = load i32, i32* %__len4291, align 4
  %2664 = load %struct.obstack*, %struct.obstack** %__o4290, align 8
  %next_free4303 = getelementptr inbounds %struct.obstack, %struct.obstack* %2664, i32 0, i32 3
  %2665 = load i8*, i8** %next_free4303, align 8
  %idx.ext4304 = sext i32 %2663 to i64
  %add.ptr4305 = getelementptr inbounds i8, i8* %2665, i64 %idx.ext4304
  store i8* %add.ptr4305, i8** %next_free4303, align 8
  %2666 = load i64, i64* %width, align 8
  %tobool4306 = icmp ne i64 %2666, 0
  br i1 %tobool4306, label %land.lhs.true.4307, label %if.end.4327

land.lhs.true.4307:                               ; preds = %if.end.4300
  %2667 = load i32, i32* %justification, align 4
  %cmp4308 = icmp slt i32 %2667, 0
  br i1 %cmp4308, label %if.then.4310, label %if.end.4327

if.then.4310:                                     ; preds = %land.lhs.true.4307
  br label %for.cond.4311

for.cond.4311:                                    ; preds = %for.inc.4324, %if.then.4310
  %2668 = load i64, i64* %nspace4260, align 8
  %tobool4312 = icmp ne i64 %2668, 0
  br i1 %tobool4312, label %for.body.4313, label %for.end.4326

for.body.4313:                                    ; preds = %for.cond.4311
  %2669 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2669, %struct.obstack** %__o4314, align 8
  %2670 = load %struct.obstack*, %struct.obstack** %__o4314, align 8
  %next_free4315 = getelementptr inbounds %struct.obstack, %struct.obstack* %2670, i32 0, i32 3
  %2671 = load i8*, i8** %next_free4315, align 8
  %add.ptr4316 = getelementptr inbounds i8, i8* %2671, i64 1
  %2672 = load %struct.obstack*, %struct.obstack** %__o4314, align 8
  %chunk_limit4317 = getelementptr inbounds %struct.obstack, %struct.obstack* %2672, i32 0, i32 4
  %2673 = load i8*, i8** %chunk_limit4317, align 8
  %cmp4318 = icmp ugt i8* %add.ptr4316, %2673
  br i1 %cmp4318, label %if.then.4320, label %if.end.4321

if.then.4320:                                     ; preds = %for.body.4313
  %2674 = load %struct.obstack*, %struct.obstack** %__o4314, align 8
  call void @_obstack_newchunk(%struct.obstack* %2674, i32 1)
  br label %if.end.4321

if.end.4321:                                      ; preds = %if.then.4320, %for.body.4313
  %2675 = load i8, i8* %padding, align 1
  %2676 = load %struct.obstack*, %struct.obstack** %__o4314, align 8
  %next_free4322 = getelementptr inbounds %struct.obstack, %struct.obstack* %2676, i32 0, i32 3
  %2677 = load i8*, i8** %next_free4322, align 8
  %incdec.ptr4323 = getelementptr inbounds i8, i8* %2677, i32 1
  store i8* %incdec.ptr4323, i8** %next_free4322, align 8
  store i8 %2675, i8* %2677, align 1
  br label %for.inc.4324

for.inc.4324:                                     ; preds = %if.end.4321
  %2678 = load i64, i64* %nspace4260, align 8
  %dec4325 = add i64 %2678, -1
  store i64 %dec4325, i64* %nspace4260, align 8
  br label %for.cond.4311

for.end.4326:                                     ; preds = %for.cond.4311
  br label %if.end.4327

if.end.4327:                                      ; preds = %for.end.4326, %land.lhs.true.4307, %if.end.4300
  br label %do.end.4328

do.end.4328:                                      ; preds = %if.end.4327
  br label %sw.epilog.6153

sw.bb.4329:                                       ; preds = %sw.bb.2280
  %2679 = load i64, i64* %i, align 8
  %inc4330 = add i64 %2679, 1
  store i64 %inc4330, i64* %i, align 8
  %2680 = load i8*, i8** %str.addr, align 8
  %arrayidx4331 = getelementptr inbounds i8, i8* %2680, i64 %inc4330
  %2681 = load i8, i8* %arrayidx4331, align 1
  %conv4332 = zext i8 %2681 to i32
  switch i32 %conv4332, label %sw.default.4939 [
    i32 94, label %sw.bb.4333
    i32 45, label %sw.bb.4410
    i32 60, label %sw.bb.4499
    i32 46, label %sw.bb.4576
    i32 62, label %sw.bb.4654
    i32 35, label %sw.bb.4796
  ]

sw.bb.4333:                                       ; preds = %sw.bb.4329
  %arraydecay4334 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2682 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %top_page = getelementptr inbounds %struct.file_job, %struct.file_job* %2682, i32 0, i32 16
  %2683 = load i32, i32* %top_page, align 4
  %call4335 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4334, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2683) #5
  br label %do.body.4336

do.body.4336:                                     ; preds = %sw.bb.4333
  %arraydecay4338 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4339 = call i64 @strlen(i8* %arraydecay4338) #6
  store i64 %call4339, i64* %len4337, align 8
  %2684 = load i64, i64* %len4337, align 8
  %2685 = load i64, i64* %width, align 8
  %cmp4341 = icmp ugt i64 %2684, %2685
  br i1 %cmp4341, label %cond.true.4343, label %cond.false.4344

cond.true.4343:                                   ; preds = %do.body.4336
  br label %cond.end.4346

cond.false.4344:                                  ; preds = %do.body.4336
  %2686 = load i64, i64* %width, align 8
  %2687 = load i64, i64* %len4337, align 8
  %sub4345 = sub i64 %2686, %2687
  br label %cond.end.4346

cond.end.4346:                                    ; preds = %cond.false.4344, %cond.true.4343
  %cond4347 = phi i64 [ 0, %cond.true.4343 ], [ %sub4345, %cond.false.4344 ]
  store i64 %cond4347, i64* %nspace4340, align 8
  %2688 = load i64, i64* %width, align 8
  %tobool4348 = icmp ne i64 %2688, 0
  br i1 %tobool4348, label %land.lhs.true.4349, label %if.end.4369

land.lhs.true.4349:                               ; preds = %cond.end.4346
  %2689 = load i32, i32* %justification, align 4
  %cmp4350 = icmp sgt i32 %2689, 0
  br i1 %cmp4350, label %if.then.4352, label %if.end.4369

if.then.4352:                                     ; preds = %land.lhs.true.4349
  br label %for.cond.4353

for.cond.4353:                                    ; preds = %for.inc.4366, %if.then.4352
  %2690 = load i64, i64* %nspace4340, align 8
  %tobool4354 = icmp ne i64 %2690, 0
  br i1 %tobool4354, label %for.body.4355, label %for.end.4368

for.body.4355:                                    ; preds = %for.cond.4353
  %2691 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2691, %struct.obstack** %__o4356, align 8
  %2692 = load %struct.obstack*, %struct.obstack** %__o4356, align 8
  %next_free4357 = getelementptr inbounds %struct.obstack, %struct.obstack* %2692, i32 0, i32 3
  %2693 = load i8*, i8** %next_free4357, align 8
  %add.ptr4358 = getelementptr inbounds i8, i8* %2693, i64 1
  %2694 = load %struct.obstack*, %struct.obstack** %__o4356, align 8
  %chunk_limit4359 = getelementptr inbounds %struct.obstack, %struct.obstack* %2694, i32 0, i32 4
  %2695 = load i8*, i8** %chunk_limit4359, align 8
  %cmp4360 = icmp ugt i8* %add.ptr4358, %2695
  br i1 %cmp4360, label %if.then.4362, label %if.end.4363

if.then.4362:                                     ; preds = %for.body.4355
  %2696 = load %struct.obstack*, %struct.obstack** %__o4356, align 8
  call void @_obstack_newchunk(%struct.obstack* %2696, i32 1)
  br label %if.end.4363

if.end.4363:                                      ; preds = %if.then.4362, %for.body.4355
  %2697 = load i8, i8* %padding, align 1
  %2698 = load %struct.obstack*, %struct.obstack** %__o4356, align 8
  %next_free4364 = getelementptr inbounds %struct.obstack, %struct.obstack* %2698, i32 0, i32 3
  %2699 = load i8*, i8** %next_free4364, align 8
  %incdec.ptr4365 = getelementptr inbounds i8, i8* %2699, i32 1
  store i8* %incdec.ptr4365, i8** %next_free4364, align 8
  store i8 %2697, i8* %2699, align 1
  br label %for.inc.4366

for.inc.4366:                                     ; preds = %if.end.4363
  %2700 = load i64, i64* %nspace4340, align 8
  %dec4367 = add i64 %2700, -1
  store i64 %dec4367, i64* %nspace4340, align 8
  br label %for.cond.4353

for.end.4368:                                     ; preds = %for.cond.4353
  br label %if.end.4369

if.end.4369:                                      ; preds = %for.end.4368, %land.lhs.true.4349, %cond.end.4346
  %2701 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2701, %struct.obstack** %__o4370, align 8
  %2702 = load i64, i64* %len4337, align 8
  %conv4372 = trunc i64 %2702 to i32
  store i32 %conv4372, i32* %__len4371, align 4
  %2703 = load %struct.obstack*, %struct.obstack** %__o4370, align 8
  %next_free4373 = getelementptr inbounds %struct.obstack, %struct.obstack* %2703, i32 0, i32 3
  %2704 = load i8*, i8** %next_free4373, align 8
  %2705 = load i32, i32* %__len4371, align 4
  %idx.ext4374 = sext i32 %2705 to i64
  %add.ptr4375 = getelementptr inbounds i8, i8* %2704, i64 %idx.ext4374
  %2706 = load %struct.obstack*, %struct.obstack** %__o4370, align 8
  %chunk_limit4376 = getelementptr inbounds %struct.obstack, %struct.obstack* %2706, i32 0, i32 4
  %2707 = load i8*, i8** %chunk_limit4376, align 8
  %cmp4377 = icmp ugt i8* %add.ptr4375, %2707
  br i1 %cmp4377, label %if.then.4379, label %if.end.4380

if.then.4379:                                     ; preds = %if.end.4369
  %2708 = load %struct.obstack*, %struct.obstack** %__o4370, align 8
  %2709 = load i32, i32* %__len4371, align 4
  call void @_obstack_newchunk(%struct.obstack* %2708, i32 %2709)
  br label %if.end.4380

if.end.4380:                                      ; preds = %if.then.4379, %if.end.4369
  %2710 = load %struct.obstack*, %struct.obstack** %__o4370, align 8
  %next_free4381 = getelementptr inbounds %struct.obstack, %struct.obstack* %2710, i32 0, i32 3
  %2711 = load i8*, i8** %next_free4381, align 8
  %arraydecay4382 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2712 = load i32, i32* %__len4371, align 4
  %conv4383 = sext i32 %2712 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2711, i8* %arraydecay4382, i64 %conv4383, i32 1, i1 false)
  %2713 = load i32, i32* %__len4371, align 4
  %2714 = load %struct.obstack*, %struct.obstack** %__o4370, align 8
  %next_free4384 = getelementptr inbounds %struct.obstack, %struct.obstack* %2714, i32 0, i32 3
  %2715 = load i8*, i8** %next_free4384, align 8
  %idx.ext4385 = sext i32 %2713 to i64
  %add.ptr4386 = getelementptr inbounds i8, i8* %2715, i64 %idx.ext4385
  store i8* %add.ptr4386, i8** %next_free4384, align 8
  %2716 = load i64, i64* %width, align 8
  %tobool4387 = icmp ne i64 %2716, 0
  br i1 %tobool4387, label %land.lhs.true.4388, label %if.end.4408

land.lhs.true.4388:                               ; preds = %if.end.4380
  %2717 = load i32, i32* %justification, align 4
  %cmp4389 = icmp slt i32 %2717, 0
  br i1 %cmp4389, label %if.then.4391, label %if.end.4408

if.then.4391:                                     ; preds = %land.lhs.true.4388
  br label %for.cond.4392

for.cond.4392:                                    ; preds = %for.inc.4405, %if.then.4391
  %2718 = load i64, i64* %nspace4340, align 8
  %tobool4393 = icmp ne i64 %2718, 0
  br i1 %tobool4393, label %for.body.4394, label %for.end.4407

for.body.4394:                                    ; preds = %for.cond.4392
  %2719 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2719, %struct.obstack** %__o4395, align 8
  %2720 = load %struct.obstack*, %struct.obstack** %__o4395, align 8
  %next_free4396 = getelementptr inbounds %struct.obstack, %struct.obstack* %2720, i32 0, i32 3
  %2721 = load i8*, i8** %next_free4396, align 8
  %add.ptr4397 = getelementptr inbounds i8, i8* %2721, i64 1
  %2722 = load %struct.obstack*, %struct.obstack** %__o4395, align 8
  %chunk_limit4398 = getelementptr inbounds %struct.obstack, %struct.obstack* %2722, i32 0, i32 4
  %2723 = load i8*, i8** %chunk_limit4398, align 8
  %cmp4399 = icmp ugt i8* %add.ptr4397, %2723
  br i1 %cmp4399, label %if.then.4401, label %if.end.4402

if.then.4401:                                     ; preds = %for.body.4394
  %2724 = load %struct.obstack*, %struct.obstack** %__o4395, align 8
  call void @_obstack_newchunk(%struct.obstack* %2724, i32 1)
  br label %if.end.4402

if.end.4402:                                      ; preds = %if.then.4401, %for.body.4394
  %2725 = load i8, i8* %padding, align 1
  %2726 = load %struct.obstack*, %struct.obstack** %__o4395, align 8
  %next_free4403 = getelementptr inbounds %struct.obstack, %struct.obstack* %2726, i32 0, i32 3
  %2727 = load i8*, i8** %next_free4403, align 8
  %incdec.ptr4404 = getelementptr inbounds i8, i8* %2727, i32 1
  store i8* %incdec.ptr4404, i8** %next_free4403, align 8
  store i8 %2725, i8* %2727, align 1
  br label %for.inc.4405

for.inc.4405:                                     ; preds = %if.end.4402
  %2728 = load i64, i64* %nspace4340, align 8
  %dec4406 = add i64 %2728, -1
  store i64 %dec4406, i64* %nspace4340, align 8
  br label %for.cond.4392

for.end.4407:                                     ; preds = %for.cond.4392
  br label %if.end.4408

if.end.4408:                                      ; preds = %for.end.4407, %land.lhs.true.4388, %if.end.4380
  br label %do.end.4409

do.end.4409:                                      ; preds = %if.end.4408
  br label %sw.epilog.4945

sw.bb.4410:                                       ; preds = %sw.bb.4329
  %2729 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %top_page4411 = getelementptr inbounds %struct.file_job, %struct.file_job* %2729, i32 0, i32 16
  %2730 = load i32, i32* %top_page4411, align 4
  %2731 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages4412 = getelementptr inbounds %struct.file_job, %struct.file_job* %2731, i32 0, i32 12
  %2732 = load i32, i32* %pages4412, align 4
  %cmp4413 = icmp eq i32 %2730, %2732
  br i1 %cmp4413, label %if.then.4415, label %if.else.4419

if.then.4415:                                     ; preds = %sw.bb.4410
  %arraydecay4416 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2733 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %top_page4417 = getelementptr inbounds %struct.file_job, %struct.file_job* %2733, i32 0, i32 16
  %2734 = load i32, i32* %top_page4417, align 4
  %call4418 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2734) #5
  br label %if.end.4424

if.else.4419:                                     ; preds = %sw.bb.4410
  %arraydecay4420 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2735 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %top_page4421 = getelementptr inbounds %struct.file_job, %struct.file_job* %2735, i32 0, i32 16
  %2736 = load i32, i32* %top_page4421, align 4
  %2737 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages4422 = getelementptr inbounds %struct.file_job, %struct.file_job* %2737, i32 0, i32 12
  %2738 = load i32, i32* %pages4422, align 4
  %call4423 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4420, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %2736, i32 %2738) #5
  br label %if.end.4424

if.end.4424:                                      ; preds = %if.else.4419, %if.then.4415
  br label %do.body.4425

do.body.4425:                                     ; preds = %if.end.4424
  %arraydecay4427 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4428 = call i64 @strlen(i8* %arraydecay4427) #6
  store i64 %call4428, i64* %len4426, align 8
  %2739 = load i64, i64* %len4426, align 8
  %2740 = load i64, i64* %width, align 8
  %cmp4430 = icmp ugt i64 %2739, %2740
  br i1 %cmp4430, label %cond.true.4432, label %cond.false.4433

cond.true.4432:                                   ; preds = %do.body.4425
  br label %cond.end.4435

cond.false.4433:                                  ; preds = %do.body.4425
  %2741 = load i64, i64* %width, align 8
  %2742 = load i64, i64* %len4426, align 8
  %sub4434 = sub i64 %2741, %2742
  br label %cond.end.4435

cond.end.4435:                                    ; preds = %cond.false.4433, %cond.true.4432
  %cond4436 = phi i64 [ 0, %cond.true.4432 ], [ %sub4434, %cond.false.4433 ]
  store i64 %cond4436, i64* %nspace4429, align 8
  %2743 = load i64, i64* %width, align 8
  %tobool4437 = icmp ne i64 %2743, 0
  br i1 %tobool4437, label %land.lhs.true.4438, label %if.end.4458

land.lhs.true.4438:                               ; preds = %cond.end.4435
  %2744 = load i32, i32* %justification, align 4
  %cmp4439 = icmp sgt i32 %2744, 0
  br i1 %cmp4439, label %if.then.4441, label %if.end.4458

if.then.4441:                                     ; preds = %land.lhs.true.4438
  br label %for.cond.4442

for.cond.4442:                                    ; preds = %for.inc.4455, %if.then.4441
  %2745 = load i64, i64* %nspace4429, align 8
  %tobool4443 = icmp ne i64 %2745, 0
  br i1 %tobool4443, label %for.body.4444, label %for.end.4457

for.body.4444:                                    ; preds = %for.cond.4442
  %2746 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2746, %struct.obstack** %__o4445, align 8
  %2747 = load %struct.obstack*, %struct.obstack** %__o4445, align 8
  %next_free4446 = getelementptr inbounds %struct.obstack, %struct.obstack* %2747, i32 0, i32 3
  %2748 = load i8*, i8** %next_free4446, align 8
  %add.ptr4447 = getelementptr inbounds i8, i8* %2748, i64 1
  %2749 = load %struct.obstack*, %struct.obstack** %__o4445, align 8
  %chunk_limit4448 = getelementptr inbounds %struct.obstack, %struct.obstack* %2749, i32 0, i32 4
  %2750 = load i8*, i8** %chunk_limit4448, align 8
  %cmp4449 = icmp ugt i8* %add.ptr4447, %2750
  br i1 %cmp4449, label %if.then.4451, label %if.end.4452

if.then.4451:                                     ; preds = %for.body.4444
  %2751 = load %struct.obstack*, %struct.obstack** %__o4445, align 8
  call void @_obstack_newchunk(%struct.obstack* %2751, i32 1)
  br label %if.end.4452

if.end.4452:                                      ; preds = %if.then.4451, %for.body.4444
  %2752 = load i8, i8* %padding, align 1
  %2753 = load %struct.obstack*, %struct.obstack** %__o4445, align 8
  %next_free4453 = getelementptr inbounds %struct.obstack, %struct.obstack* %2753, i32 0, i32 3
  %2754 = load i8*, i8** %next_free4453, align 8
  %incdec.ptr4454 = getelementptr inbounds i8, i8* %2754, i32 1
  store i8* %incdec.ptr4454, i8** %next_free4453, align 8
  store i8 %2752, i8* %2754, align 1
  br label %for.inc.4455

for.inc.4455:                                     ; preds = %if.end.4452
  %2755 = load i64, i64* %nspace4429, align 8
  %dec4456 = add i64 %2755, -1
  store i64 %dec4456, i64* %nspace4429, align 8
  br label %for.cond.4442

for.end.4457:                                     ; preds = %for.cond.4442
  br label %if.end.4458

if.end.4458:                                      ; preds = %for.end.4457, %land.lhs.true.4438, %cond.end.4435
  %2756 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2756, %struct.obstack** %__o4459, align 8
  %2757 = load i64, i64* %len4426, align 8
  %conv4461 = trunc i64 %2757 to i32
  store i32 %conv4461, i32* %__len4460, align 4
  %2758 = load %struct.obstack*, %struct.obstack** %__o4459, align 8
  %next_free4462 = getelementptr inbounds %struct.obstack, %struct.obstack* %2758, i32 0, i32 3
  %2759 = load i8*, i8** %next_free4462, align 8
  %2760 = load i32, i32* %__len4460, align 4
  %idx.ext4463 = sext i32 %2760 to i64
  %add.ptr4464 = getelementptr inbounds i8, i8* %2759, i64 %idx.ext4463
  %2761 = load %struct.obstack*, %struct.obstack** %__o4459, align 8
  %chunk_limit4465 = getelementptr inbounds %struct.obstack, %struct.obstack* %2761, i32 0, i32 4
  %2762 = load i8*, i8** %chunk_limit4465, align 8
  %cmp4466 = icmp ugt i8* %add.ptr4464, %2762
  br i1 %cmp4466, label %if.then.4468, label %if.end.4469

if.then.4468:                                     ; preds = %if.end.4458
  %2763 = load %struct.obstack*, %struct.obstack** %__o4459, align 8
  %2764 = load i32, i32* %__len4460, align 4
  call void @_obstack_newchunk(%struct.obstack* %2763, i32 %2764)
  br label %if.end.4469

if.end.4469:                                      ; preds = %if.then.4468, %if.end.4458
  %2765 = load %struct.obstack*, %struct.obstack** %__o4459, align 8
  %next_free4470 = getelementptr inbounds %struct.obstack, %struct.obstack* %2765, i32 0, i32 3
  %2766 = load i8*, i8** %next_free4470, align 8
  %arraydecay4471 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2767 = load i32, i32* %__len4460, align 4
  %conv4472 = sext i32 %2767 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2766, i8* %arraydecay4471, i64 %conv4472, i32 1, i1 false)
  %2768 = load i32, i32* %__len4460, align 4
  %2769 = load %struct.obstack*, %struct.obstack** %__o4459, align 8
  %next_free4473 = getelementptr inbounds %struct.obstack, %struct.obstack* %2769, i32 0, i32 3
  %2770 = load i8*, i8** %next_free4473, align 8
  %idx.ext4474 = sext i32 %2768 to i64
  %add.ptr4475 = getelementptr inbounds i8, i8* %2770, i64 %idx.ext4474
  store i8* %add.ptr4475, i8** %next_free4473, align 8
  %2771 = load i64, i64* %width, align 8
  %tobool4476 = icmp ne i64 %2771, 0
  br i1 %tobool4476, label %land.lhs.true.4477, label %if.end.4497

land.lhs.true.4477:                               ; preds = %if.end.4469
  %2772 = load i32, i32* %justification, align 4
  %cmp4478 = icmp slt i32 %2772, 0
  br i1 %cmp4478, label %if.then.4480, label %if.end.4497

if.then.4480:                                     ; preds = %land.lhs.true.4477
  br label %for.cond.4481

for.cond.4481:                                    ; preds = %for.inc.4494, %if.then.4480
  %2773 = load i64, i64* %nspace4429, align 8
  %tobool4482 = icmp ne i64 %2773, 0
  br i1 %tobool4482, label %for.body.4483, label %for.end.4496

for.body.4483:                                    ; preds = %for.cond.4481
  %2774 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2774, %struct.obstack** %__o4484, align 8
  %2775 = load %struct.obstack*, %struct.obstack** %__o4484, align 8
  %next_free4485 = getelementptr inbounds %struct.obstack, %struct.obstack* %2775, i32 0, i32 3
  %2776 = load i8*, i8** %next_free4485, align 8
  %add.ptr4486 = getelementptr inbounds i8, i8* %2776, i64 1
  %2777 = load %struct.obstack*, %struct.obstack** %__o4484, align 8
  %chunk_limit4487 = getelementptr inbounds %struct.obstack, %struct.obstack* %2777, i32 0, i32 4
  %2778 = load i8*, i8** %chunk_limit4487, align 8
  %cmp4488 = icmp ugt i8* %add.ptr4486, %2778
  br i1 %cmp4488, label %if.then.4490, label %if.end.4491

if.then.4490:                                     ; preds = %for.body.4483
  %2779 = load %struct.obstack*, %struct.obstack** %__o4484, align 8
  call void @_obstack_newchunk(%struct.obstack* %2779, i32 1)
  br label %if.end.4491

if.end.4491:                                      ; preds = %if.then.4490, %for.body.4483
  %2780 = load i8, i8* %padding, align 1
  %2781 = load %struct.obstack*, %struct.obstack** %__o4484, align 8
  %next_free4492 = getelementptr inbounds %struct.obstack, %struct.obstack* %2781, i32 0, i32 3
  %2782 = load i8*, i8** %next_free4492, align 8
  %incdec.ptr4493 = getelementptr inbounds i8, i8* %2782, i32 1
  store i8* %incdec.ptr4493, i8** %next_free4492, align 8
  store i8 %2780, i8* %2782, align 1
  br label %for.inc.4494

for.inc.4494:                                     ; preds = %if.end.4491
  %2783 = load i64, i64* %nspace4429, align 8
  %dec4495 = add i64 %2783, -1
  store i64 %dec4495, i64* %nspace4429, align 8
  br label %for.cond.4481

for.end.4496:                                     ; preds = %for.cond.4481
  br label %if.end.4497

if.end.4497:                                      ; preds = %for.end.4496, %land.lhs.true.4477, %if.end.4469
  br label %do.end.4498

do.end.4498:                                      ; preds = %if.end.4497
  br label %sw.epilog.4945

sw.bb.4499:                                       ; preds = %sw.bb.4329
  %arraydecay4500 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2784 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %first_page = getelementptr inbounds %struct.file_job, %struct.file_job* %2784, i32 0, i32 10
  %2785 = load i32, i32* %first_page, align 4
  %call4501 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4500, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2785) #5
  br label %do.body.4502

do.body.4502:                                     ; preds = %sw.bb.4499
  %arraydecay4504 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4505 = call i64 @strlen(i8* %arraydecay4504) #6
  store i64 %call4505, i64* %len4503, align 8
  %2786 = load i64, i64* %len4503, align 8
  %2787 = load i64, i64* %width, align 8
  %cmp4507 = icmp ugt i64 %2786, %2787
  br i1 %cmp4507, label %cond.true.4509, label %cond.false.4510

cond.true.4509:                                   ; preds = %do.body.4502
  br label %cond.end.4512

cond.false.4510:                                  ; preds = %do.body.4502
  %2788 = load i64, i64* %width, align 8
  %2789 = load i64, i64* %len4503, align 8
  %sub4511 = sub i64 %2788, %2789
  br label %cond.end.4512

cond.end.4512:                                    ; preds = %cond.false.4510, %cond.true.4509
  %cond4513 = phi i64 [ 0, %cond.true.4509 ], [ %sub4511, %cond.false.4510 ]
  store i64 %cond4513, i64* %nspace4506, align 8
  %2790 = load i64, i64* %width, align 8
  %tobool4514 = icmp ne i64 %2790, 0
  br i1 %tobool4514, label %land.lhs.true.4515, label %if.end.4535

land.lhs.true.4515:                               ; preds = %cond.end.4512
  %2791 = load i32, i32* %justification, align 4
  %cmp4516 = icmp sgt i32 %2791, 0
  br i1 %cmp4516, label %if.then.4518, label %if.end.4535

if.then.4518:                                     ; preds = %land.lhs.true.4515
  br label %for.cond.4519

for.cond.4519:                                    ; preds = %for.inc.4532, %if.then.4518
  %2792 = load i64, i64* %nspace4506, align 8
  %tobool4520 = icmp ne i64 %2792, 0
  br i1 %tobool4520, label %for.body.4521, label %for.end.4534

for.body.4521:                                    ; preds = %for.cond.4519
  %2793 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2793, %struct.obstack** %__o4522, align 8
  %2794 = load %struct.obstack*, %struct.obstack** %__o4522, align 8
  %next_free4523 = getelementptr inbounds %struct.obstack, %struct.obstack* %2794, i32 0, i32 3
  %2795 = load i8*, i8** %next_free4523, align 8
  %add.ptr4524 = getelementptr inbounds i8, i8* %2795, i64 1
  %2796 = load %struct.obstack*, %struct.obstack** %__o4522, align 8
  %chunk_limit4525 = getelementptr inbounds %struct.obstack, %struct.obstack* %2796, i32 0, i32 4
  %2797 = load i8*, i8** %chunk_limit4525, align 8
  %cmp4526 = icmp ugt i8* %add.ptr4524, %2797
  br i1 %cmp4526, label %if.then.4528, label %if.end.4529

if.then.4528:                                     ; preds = %for.body.4521
  %2798 = load %struct.obstack*, %struct.obstack** %__o4522, align 8
  call void @_obstack_newchunk(%struct.obstack* %2798, i32 1)
  br label %if.end.4529

if.end.4529:                                      ; preds = %if.then.4528, %for.body.4521
  %2799 = load i8, i8* %padding, align 1
  %2800 = load %struct.obstack*, %struct.obstack** %__o4522, align 8
  %next_free4530 = getelementptr inbounds %struct.obstack, %struct.obstack* %2800, i32 0, i32 3
  %2801 = load i8*, i8** %next_free4530, align 8
  %incdec.ptr4531 = getelementptr inbounds i8, i8* %2801, i32 1
  store i8* %incdec.ptr4531, i8** %next_free4530, align 8
  store i8 %2799, i8* %2801, align 1
  br label %for.inc.4532

for.inc.4532:                                     ; preds = %if.end.4529
  %2802 = load i64, i64* %nspace4506, align 8
  %dec4533 = add i64 %2802, -1
  store i64 %dec4533, i64* %nspace4506, align 8
  br label %for.cond.4519

for.end.4534:                                     ; preds = %for.cond.4519
  br label %if.end.4535

if.end.4535:                                      ; preds = %for.end.4534, %land.lhs.true.4515, %cond.end.4512
  %2803 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2803, %struct.obstack** %__o4536, align 8
  %2804 = load i64, i64* %len4503, align 8
  %conv4538 = trunc i64 %2804 to i32
  store i32 %conv4538, i32* %__len4537, align 4
  %2805 = load %struct.obstack*, %struct.obstack** %__o4536, align 8
  %next_free4539 = getelementptr inbounds %struct.obstack, %struct.obstack* %2805, i32 0, i32 3
  %2806 = load i8*, i8** %next_free4539, align 8
  %2807 = load i32, i32* %__len4537, align 4
  %idx.ext4540 = sext i32 %2807 to i64
  %add.ptr4541 = getelementptr inbounds i8, i8* %2806, i64 %idx.ext4540
  %2808 = load %struct.obstack*, %struct.obstack** %__o4536, align 8
  %chunk_limit4542 = getelementptr inbounds %struct.obstack, %struct.obstack* %2808, i32 0, i32 4
  %2809 = load i8*, i8** %chunk_limit4542, align 8
  %cmp4543 = icmp ugt i8* %add.ptr4541, %2809
  br i1 %cmp4543, label %if.then.4545, label %if.end.4546

if.then.4545:                                     ; preds = %if.end.4535
  %2810 = load %struct.obstack*, %struct.obstack** %__o4536, align 8
  %2811 = load i32, i32* %__len4537, align 4
  call void @_obstack_newchunk(%struct.obstack* %2810, i32 %2811)
  br label %if.end.4546

if.end.4546:                                      ; preds = %if.then.4545, %if.end.4535
  %2812 = load %struct.obstack*, %struct.obstack** %__o4536, align 8
  %next_free4547 = getelementptr inbounds %struct.obstack, %struct.obstack* %2812, i32 0, i32 3
  %2813 = load i8*, i8** %next_free4547, align 8
  %arraydecay4548 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2814 = load i32, i32* %__len4537, align 4
  %conv4549 = sext i32 %2814 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2813, i8* %arraydecay4548, i64 %conv4549, i32 1, i1 false)
  %2815 = load i32, i32* %__len4537, align 4
  %2816 = load %struct.obstack*, %struct.obstack** %__o4536, align 8
  %next_free4550 = getelementptr inbounds %struct.obstack, %struct.obstack* %2816, i32 0, i32 3
  %2817 = load i8*, i8** %next_free4550, align 8
  %idx.ext4551 = sext i32 %2815 to i64
  %add.ptr4552 = getelementptr inbounds i8, i8* %2817, i64 %idx.ext4551
  store i8* %add.ptr4552, i8** %next_free4550, align 8
  %2818 = load i64, i64* %width, align 8
  %tobool4553 = icmp ne i64 %2818, 0
  br i1 %tobool4553, label %land.lhs.true.4554, label %if.end.4574

land.lhs.true.4554:                               ; preds = %if.end.4546
  %2819 = load i32, i32* %justification, align 4
  %cmp4555 = icmp slt i32 %2819, 0
  br i1 %cmp4555, label %if.then.4557, label %if.end.4574

if.then.4557:                                     ; preds = %land.lhs.true.4554
  br label %for.cond.4558

for.cond.4558:                                    ; preds = %for.inc.4571, %if.then.4557
  %2820 = load i64, i64* %nspace4506, align 8
  %tobool4559 = icmp ne i64 %2820, 0
  br i1 %tobool4559, label %for.body.4560, label %for.end.4573

for.body.4560:                                    ; preds = %for.cond.4558
  %2821 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2821, %struct.obstack** %__o4561, align 8
  %2822 = load %struct.obstack*, %struct.obstack** %__o4561, align 8
  %next_free4562 = getelementptr inbounds %struct.obstack, %struct.obstack* %2822, i32 0, i32 3
  %2823 = load i8*, i8** %next_free4562, align 8
  %add.ptr4563 = getelementptr inbounds i8, i8* %2823, i64 1
  %2824 = load %struct.obstack*, %struct.obstack** %__o4561, align 8
  %chunk_limit4564 = getelementptr inbounds %struct.obstack, %struct.obstack* %2824, i32 0, i32 4
  %2825 = load i8*, i8** %chunk_limit4564, align 8
  %cmp4565 = icmp ugt i8* %add.ptr4563, %2825
  br i1 %cmp4565, label %if.then.4567, label %if.end.4568

if.then.4567:                                     ; preds = %for.body.4560
  %2826 = load %struct.obstack*, %struct.obstack** %__o4561, align 8
  call void @_obstack_newchunk(%struct.obstack* %2826, i32 1)
  br label %if.end.4568

if.end.4568:                                      ; preds = %if.then.4567, %for.body.4560
  %2827 = load i8, i8* %padding, align 1
  %2828 = load %struct.obstack*, %struct.obstack** %__o4561, align 8
  %next_free4569 = getelementptr inbounds %struct.obstack, %struct.obstack* %2828, i32 0, i32 3
  %2829 = load i8*, i8** %next_free4569, align 8
  %incdec.ptr4570 = getelementptr inbounds i8, i8* %2829, i32 1
  store i8* %incdec.ptr4570, i8** %next_free4569, align 8
  store i8 %2827, i8* %2829, align 1
  br label %for.inc.4571

for.inc.4571:                                     ; preds = %if.end.4568
  %2830 = load i64, i64* %nspace4506, align 8
  %dec4572 = add i64 %2830, -1
  store i64 %dec4572, i64* %nspace4506, align 8
  br label %for.cond.4558

for.end.4573:                                     ; preds = %for.cond.4558
  br label %if.end.4574

if.end.4574:                                      ; preds = %for.end.4573, %land.lhs.true.4554, %if.end.4546
  br label %do.end.4575

do.end.4575:                                      ; preds = %if.end.4574
  br label %sw.epilog.4945

sw.bb.4576:                                       ; preds = %sw.bb.4329
  %arraydecay4577 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2831 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages4578 = getelementptr inbounds %struct.file_job, %struct.file_job* %2831, i32 0, i32 12
  %2832 = load i32, i32* %pages4578, align 4
  %call4579 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4577, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2832) #5
  br label %do.body.4580

do.body.4580:                                     ; preds = %sw.bb.4576
  %arraydecay4582 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4583 = call i64 @strlen(i8* %arraydecay4582) #6
  store i64 %call4583, i64* %len4581, align 8
  %2833 = load i64, i64* %len4581, align 8
  %2834 = load i64, i64* %width, align 8
  %cmp4585 = icmp ugt i64 %2833, %2834
  br i1 %cmp4585, label %cond.true.4587, label %cond.false.4588

cond.true.4587:                                   ; preds = %do.body.4580
  br label %cond.end.4590

cond.false.4588:                                  ; preds = %do.body.4580
  %2835 = load i64, i64* %width, align 8
  %2836 = load i64, i64* %len4581, align 8
  %sub4589 = sub i64 %2835, %2836
  br label %cond.end.4590

cond.end.4590:                                    ; preds = %cond.false.4588, %cond.true.4587
  %cond4591 = phi i64 [ 0, %cond.true.4587 ], [ %sub4589, %cond.false.4588 ]
  store i64 %cond4591, i64* %nspace4584, align 8
  %2837 = load i64, i64* %width, align 8
  %tobool4592 = icmp ne i64 %2837, 0
  br i1 %tobool4592, label %land.lhs.true.4593, label %if.end.4613

land.lhs.true.4593:                               ; preds = %cond.end.4590
  %2838 = load i32, i32* %justification, align 4
  %cmp4594 = icmp sgt i32 %2838, 0
  br i1 %cmp4594, label %if.then.4596, label %if.end.4613

if.then.4596:                                     ; preds = %land.lhs.true.4593
  br label %for.cond.4597

for.cond.4597:                                    ; preds = %for.inc.4610, %if.then.4596
  %2839 = load i64, i64* %nspace4584, align 8
  %tobool4598 = icmp ne i64 %2839, 0
  br i1 %tobool4598, label %for.body.4599, label %for.end.4612

for.body.4599:                                    ; preds = %for.cond.4597
  %2840 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2840, %struct.obstack** %__o4600, align 8
  %2841 = load %struct.obstack*, %struct.obstack** %__o4600, align 8
  %next_free4601 = getelementptr inbounds %struct.obstack, %struct.obstack* %2841, i32 0, i32 3
  %2842 = load i8*, i8** %next_free4601, align 8
  %add.ptr4602 = getelementptr inbounds i8, i8* %2842, i64 1
  %2843 = load %struct.obstack*, %struct.obstack** %__o4600, align 8
  %chunk_limit4603 = getelementptr inbounds %struct.obstack, %struct.obstack* %2843, i32 0, i32 4
  %2844 = load i8*, i8** %chunk_limit4603, align 8
  %cmp4604 = icmp ugt i8* %add.ptr4602, %2844
  br i1 %cmp4604, label %if.then.4606, label %if.end.4607

if.then.4606:                                     ; preds = %for.body.4599
  %2845 = load %struct.obstack*, %struct.obstack** %__o4600, align 8
  call void @_obstack_newchunk(%struct.obstack* %2845, i32 1)
  br label %if.end.4607

if.end.4607:                                      ; preds = %if.then.4606, %for.body.4599
  %2846 = load i8, i8* %padding, align 1
  %2847 = load %struct.obstack*, %struct.obstack** %__o4600, align 8
  %next_free4608 = getelementptr inbounds %struct.obstack, %struct.obstack* %2847, i32 0, i32 3
  %2848 = load i8*, i8** %next_free4608, align 8
  %incdec.ptr4609 = getelementptr inbounds i8, i8* %2848, i32 1
  store i8* %incdec.ptr4609, i8** %next_free4608, align 8
  store i8 %2846, i8* %2848, align 1
  br label %for.inc.4610

for.inc.4610:                                     ; preds = %if.end.4607
  %2849 = load i64, i64* %nspace4584, align 8
  %dec4611 = add i64 %2849, -1
  store i64 %dec4611, i64* %nspace4584, align 8
  br label %for.cond.4597

for.end.4612:                                     ; preds = %for.cond.4597
  br label %if.end.4613

if.end.4613:                                      ; preds = %for.end.4612, %land.lhs.true.4593, %cond.end.4590
  %2850 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2850, %struct.obstack** %__o4614, align 8
  %2851 = load i64, i64* %len4581, align 8
  %conv4616 = trunc i64 %2851 to i32
  store i32 %conv4616, i32* %__len4615, align 4
  %2852 = load %struct.obstack*, %struct.obstack** %__o4614, align 8
  %next_free4617 = getelementptr inbounds %struct.obstack, %struct.obstack* %2852, i32 0, i32 3
  %2853 = load i8*, i8** %next_free4617, align 8
  %2854 = load i32, i32* %__len4615, align 4
  %idx.ext4618 = sext i32 %2854 to i64
  %add.ptr4619 = getelementptr inbounds i8, i8* %2853, i64 %idx.ext4618
  %2855 = load %struct.obstack*, %struct.obstack** %__o4614, align 8
  %chunk_limit4620 = getelementptr inbounds %struct.obstack, %struct.obstack* %2855, i32 0, i32 4
  %2856 = load i8*, i8** %chunk_limit4620, align 8
  %cmp4621 = icmp ugt i8* %add.ptr4619, %2856
  br i1 %cmp4621, label %if.then.4623, label %if.end.4624

if.then.4623:                                     ; preds = %if.end.4613
  %2857 = load %struct.obstack*, %struct.obstack** %__o4614, align 8
  %2858 = load i32, i32* %__len4615, align 4
  call void @_obstack_newchunk(%struct.obstack* %2857, i32 %2858)
  br label %if.end.4624

if.end.4624:                                      ; preds = %if.then.4623, %if.end.4613
  %2859 = load %struct.obstack*, %struct.obstack** %__o4614, align 8
  %next_free4625 = getelementptr inbounds %struct.obstack, %struct.obstack* %2859, i32 0, i32 3
  %2860 = load i8*, i8** %next_free4625, align 8
  %arraydecay4626 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2861 = load i32, i32* %__len4615, align 4
  %conv4627 = sext i32 %2861 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2860, i8* %arraydecay4626, i64 %conv4627, i32 1, i1 false)
  %2862 = load i32, i32* %__len4615, align 4
  %2863 = load %struct.obstack*, %struct.obstack** %__o4614, align 8
  %next_free4628 = getelementptr inbounds %struct.obstack, %struct.obstack* %2863, i32 0, i32 3
  %2864 = load i8*, i8** %next_free4628, align 8
  %idx.ext4629 = sext i32 %2862 to i64
  %add.ptr4630 = getelementptr inbounds i8, i8* %2864, i64 %idx.ext4629
  store i8* %add.ptr4630, i8** %next_free4628, align 8
  %2865 = load i64, i64* %width, align 8
  %tobool4631 = icmp ne i64 %2865, 0
  br i1 %tobool4631, label %land.lhs.true.4632, label %if.end.4652

land.lhs.true.4632:                               ; preds = %if.end.4624
  %2866 = load i32, i32* %justification, align 4
  %cmp4633 = icmp slt i32 %2866, 0
  br i1 %cmp4633, label %if.then.4635, label %if.end.4652

if.then.4635:                                     ; preds = %land.lhs.true.4632
  br label %for.cond.4636

for.cond.4636:                                    ; preds = %for.inc.4649, %if.then.4635
  %2867 = load i64, i64* %nspace4584, align 8
  %tobool4637 = icmp ne i64 %2867, 0
  br i1 %tobool4637, label %for.body.4638, label %for.end.4651

for.body.4638:                                    ; preds = %for.cond.4636
  %2868 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2868, %struct.obstack** %__o4639, align 8
  %2869 = load %struct.obstack*, %struct.obstack** %__o4639, align 8
  %next_free4640 = getelementptr inbounds %struct.obstack, %struct.obstack* %2869, i32 0, i32 3
  %2870 = load i8*, i8** %next_free4640, align 8
  %add.ptr4641 = getelementptr inbounds i8, i8* %2870, i64 1
  %2871 = load %struct.obstack*, %struct.obstack** %__o4639, align 8
  %chunk_limit4642 = getelementptr inbounds %struct.obstack, %struct.obstack* %2871, i32 0, i32 4
  %2872 = load i8*, i8** %chunk_limit4642, align 8
  %cmp4643 = icmp ugt i8* %add.ptr4641, %2872
  br i1 %cmp4643, label %if.then.4645, label %if.end.4646

if.then.4645:                                     ; preds = %for.body.4638
  %2873 = load %struct.obstack*, %struct.obstack** %__o4639, align 8
  call void @_obstack_newchunk(%struct.obstack* %2873, i32 1)
  br label %if.end.4646

if.end.4646:                                      ; preds = %if.then.4645, %for.body.4638
  %2874 = load i8, i8* %padding, align 1
  %2875 = load %struct.obstack*, %struct.obstack** %__o4639, align 8
  %next_free4647 = getelementptr inbounds %struct.obstack, %struct.obstack* %2875, i32 0, i32 3
  %2876 = load i8*, i8** %next_free4647, align 8
  %incdec.ptr4648 = getelementptr inbounds i8, i8* %2876, i32 1
  store i8* %incdec.ptr4648, i8** %next_free4647, align 8
  store i8 %2874, i8* %2876, align 1
  br label %for.inc.4649

for.inc.4649:                                     ; preds = %if.end.4646
  %2877 = load i64, i64* %nspace4584, align 8
  %dec4650 = add i64 %2877, -1
  store i64 %dec4650, i64* %nspace4584, align 8
  br label %for.cond.4636

for.end.4651:                                     ; preds = %for.cond.4636
  br label %if.end.4652

if.end.4652:                                      ; preds = %for.end.4651, %land.lhs.true.4632, %if.end.4624
  br label %do.end.4653

do.end.4653:                                      ; preds = %if.end.4652
  br label %sw.epilog.4945

sw.bb.4654:                                       ; preds = %sw.bb.4329
  %2878 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %2879 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs4655 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2879, i32 0, i32 68
  %2880 = load %struct.darray*, %struct.darray** %jobs4655, align 8
  %len4656 = getelementptr inbounds %struct.darray, %struct.darray* %2880, i32 0, i32 5
  %2881 = load i64, i64* %len4656, align 8
  %sub4657 = sub i64 %2881, 1
  %2882 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs4658 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2882, i32 0, i32 68
  %2883 = load %struct.darray*, %struct.darray** %jobs4658, align 8
  %content4659 = getelementptr inbounds %struct.darray, %struct.darray* %2883, i32 0, i32 6
  %2884 = load i8**, i8*** %content4659, align 8
  %arrayidx4660 = getelementptr inbounds i8*, i8** %2884, i64 %sub4657
  %2885 = load i8*, i8** %arrayidx4660, align 8
  %2886 = bitcast i8* %2885 to %struct.file_job*
  %cmp4661 = icmp ne %struct.file_job* %2878, %2886
  br i1 %cmp4661, label %if.then.4663, label %if.else.4740

if.then.4663:                                     ; preds = %sw.bb.4654
  %arraydecay4664 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2887 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %last_page = getelementptr inbounds %struct.file_job, %struct.file_job* %2887, i32 0, i32 11
  %2888 = load i32, i32* %last_page, align 4
  %call4665 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4664, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2888) #5
  br label %do.body.4666

do.body.4666:                                     ; preds = %if.then.4663
  %arraydecay4668 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4669 = call i64 @strlen(i8* %arraydecay4668) #6
  store i64 %call4669, i64* %len4667, align 8
  %2889 = load i64, i64* %len4667, align 8
  %2890 = load i64, i64* %width, align 8
  %cmp4671 = icmp ugt i64 %2889, %2890
  br i1 %cmp4671, label %cond.true.4673, label %cond.false.4674

cond.true.4673:                                   ; preds = %do.body.4666
  br label %cond.end.4676

cond.false.4674:                                  ; preds = %do.body.4666
  %2891 = load i64, i64* %width, align 8
  %2892 = load i64, i64* %len4667, align 8
  %sub4675 = sub i64 %2891, %2892
  br label %cond.end.4676

cond.end.4676:                                    ; preds = %cond.false.4674, %cond.true.4673
  %cond4677 = phi i64 [ 0, %cond.true.4673 ], [ %sub4675, %cond.false.4674 ]
  store i64 %cond4677, i64* %nspace4670, align 8
  %2893 = load i64, i64* %width, align 8
  %tobool4678 = icmp ne i64 %2893, 0
  br i1 %tobool4678, label %land.lhs.true.4679, label %if.end.4699

land.lhs.true.4679:                               ; preds = %cond.end.4676
  %2894 = load i32, i32* %justification, align 4
  %cmp4680 = icmp sgt i32 %2894, 0
  br i1 %cmp4680, label %if.then.4682, label %if.end.4699

if.then.4682:                                     ; preds = %land.lhs.true.4679
  br label %for.cond.4683

for.cond.4683:                                    ; preds = %for.inc.4696, %if.then.4682
  %2895 = load i64, i64* %nspace4670, align 8
  %tobool4684 = icmp ne i64 %2895, 0
  br i1 %tobool4684, label %for.body.4685, label %for.end.4698

for.body.4685:                                    ; preds = %for.cond.4683
  %2896 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2896, %struct.obstack** %__o4686, align 8
  %2897 = load %struct.obstack*, %struct.obstack** %__o4686, align 8
  %next_free4687 = getelementptr inbounds %struct.obstack, %struct.obstack* %2897, i32 0, i32 3
  %2898 = load i8*, i8** %next_free4687, align 8
  %add.ptr4688 = getelementptr inbounds i8, i8* %2898, i64 1
  %2899 = load %struct.obstack*, %struct.obstack** %__o4686, align 8
  %chunk_limit4689 = getelementptr inbounds %struct.obstack, %struct.obstack* %2899, i32 0, i32 4
  %2900 = load i8*, i8** %chunk_limit4689, align 8
  %cmp4690 = icmp ugt i8* %add.ptr4688, %2900
  br i1 %cmp4690, label %if.then.4692, label %if.end.4693

if.then.4692:                                     ; preds = %for.body.4685
  %2901 = load %struct.obstack*, %struct.obstack** %__o4686, align 8
  call void @_obstack_newchunk(%struct.obstack* %2901, i32 1)
  br label %if.end.4693

if.end.4693:                                      ; preds = %if.then.4692, %for.body.4685
  %2902 = load i8, i8* %padding, align 1
  %2903 = load %struct.obstack*, %struct.obstack** %__o4686, align 8
  %next_free4694 = getelementptr inbounds %struct.obstack, %struct.obstack* %2903, i32 0, i32 3
  %2904 = load i8*, i8** %next_free4694, align 8
  %incdec.ptr4695 = getelementptr inbounds i8, i8* %2904, i32 1
  store i8* %incdec.ptr4695, i8** %next_free4694, align 8
  store i8 %2902, i8* %2904, align 1
  br label %for.inc.4696

for.inc.4696:                                     ; preds = %if.end.4693
  %2905 = load i64, i64* %nspace4670, align 8
  %dec4697 = add i64 %2905, -1
  store i64 %dec4697, i64* %nspace4670, align 8
  br label %for.cond.4683

for.end.4698:                                     ; preds = %for.cond.4683
  br label %if.end.4699

if.end.4699:                                      ; preds = %for.end.4698, %land.lhs.true.4679, %cond.end.4676
  %2906 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2906, %struct.obstack** %__o4700, align 8
  %2907 = load i64, i64* %len4667, align 8
  %conv4702 = trunc i64 %2907 to i32
  store i32 %conv4702, i32* %__len4701, align 4
  %2908 = load %struct.obstack*, %struct.obstack** %__o4700, align 8
  %next_free4703 = getelementptr inbounds %struct.obstack, %struct.obstack* %2908, i32 0, i32 3
  %2909 = load i8*, i8** %next_free4703, align 8
  %2910 = load i32, i32* %__len4701, align 4
  %idx.ext4704 = sext i32 %2910 to i64
  %add.ptr4705 = getelementptr inbounds i8, i8* %2909, i64 %idx.ext4704
  %2911 = load %struct.obstack*, %struct.obstack** %__o4700, align 8
  %chunk_limit4706 = getelementptr inbounds %struct.obstack, %struct.obstack* %2911, i32 0, i32 4
  %2912 = load i8*, i8** %chunk_limit4706, align 8
  %cmp4707 = icmp ugt i8* %add.ptr4705, %2912
  br i1 %cmp4707, label %if.then.4709, label %if.end.4710

if.then.4709:                                     ; preds = %if.end.4699
  %2913 = load %struct.obstack*, %struct.obstack** %__o4700, align 8
  %2914 = load i32, i32* %__len4701, align 4
  call void @_obstack_newchunk(%struct.obstack* %2913, i32 %2914)
  br label %if.end.4710

if.end.4710:                                      ; preds = %if.then.4709, %if.end.4699
  %2915 = load %struct.obstack*, %struct.obstack** %__o4700, align 8
  %next_free4711 = getelementptr inbounds %struct.obstack, %struct.obstack* %2915, i32 0, i32 3
  %2916 = load i8*, i8** %next_free4711, align 8
  %arraydecay4712 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2917 = load i32, i32* %__len4701, align 4
  %conv4713 = sext i32 %2917 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2916, i8* %arraydecay4712, i64 %conv4713, i32 1, i1 false)
  %2918 = load i32, i32* %__len4701, align 4
  %2919 = load %struct.obstack*, %struct.obstack** %__o4700, align 8
  %next_free4714 = getelementptr inbounds %struct.obstack, %struct.obstack* %2919, i32 0, i32 3
  %2920 = load i8*, i8** %next_free4714, align 8
  %idx.ext4715 = sext i32 %2918 to i64
  %add.ptr4716 = getelementptr inbounds i8, i8* %2920, i64 %idx.ext4715
  store i8* %add.ptr4716, i8** %next_free4714, align 8
  %2921 = load i64, i64* %width, align 8
  %tobool4717 = icmp ne i64 %2921, 0
  br i1 %tobool4717, label %land.lhs.true.4718, label %if.end.4738

land.lhs.true.4718:                               ; preds = %if.end.4710
  %2922 = load i32, i32* %justification, align 4
  %cmp4719 = icmp slt i32 %2922, 0
  br i1 %cmp4719, label %if.then.4721, label %if.end.4738

if.then.4721:                                     ; preds = %land.lhs.true.4718
  br label %for.cond.4722

for.cond.4722:                                    ; preds = %for.inc.4735, %if.then.4721
  %2923 = load i64, i64* %nspace4670, align 8
  %tobool4723 = icmp ne i64 %2923, 0
  br i1 %tobool4723, label %for.body.4724, label %for.end.4737

for.body.4724:                                    ; preds = %for.cond.4722
  %2924 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2924, %struct.obstack** %__o4725, align 8
  %2925 = load %struct.obstack*, %struct.obstack** %__o4725, align 8
  %next_free4726 = getelementptr inbounds %struct.obstack, %struct.obstack* %2925, i32 0, i32 3
  %2926 = load i8*, i8** %next_free4726, align 8
  %add.ptr4727 = getelementptr inbounds i8, i8* %2926, i64 1
  %2927 = load %struct.obstack*, %struct.obstack** %__o4725, align 8
  %chunk_limit4728 = getelementptr inbounds %struct.obstack, %struct.obstack* %2927, i32 0, i32 4
  %2928 = load i8*, i8** %chunk_limit4728, align 8
  %cmp4729 = icmp ugt i8* %add.ptr4727, %2928
  br i1 %cmp4729, label %if.then.4731, label %if.end.4732

if.then.4731:                                     ; preds = %for.body.4724
  %2929 = load %struct.obstack*, %struct.obstack** %__o4725, align 8
  call void @_obstack_newchunk(%struct.obstack* %2929, i32 1)
  br label %if.end.4732

if.end.4732:                                      ; preds = %if.then.4731, %for.body.4724
  %2930 = load i8, i8* %padding, align 1
  %2931 = load %struct.obstack*, %struct.obstack** %__o4725, align 8
  %next_free4733 = getelementptr inbounds %struct.obstack, %struct.obstack* %2931, i32 0, i32 3
  %2932 = load i8*, i8** %next_free4733, align 8
  %incdec.ptr4734 = getelementptr inbounds i8, i8* %2932, i32 1
  store i8* %incdec.ptr4734, i8** %next_free4733, align 8
  store i8 %2930, i8* %2932, align 1
  br label %for.inc.4735

for.inc.4735:                                     ; preds = %if.end.4732
  %2933 = load i64, i64* %nspace4670, align 8
  %dec4736 = add i64 %2933, -1
  store i64 %dec4736, i64* %nspace4670, align 8
  br label %for.cond.4722

for.end.4737:                                     ; preds = %for.cond.4722
  br label %if.end.4738

if.end.4738:                                      ; preds = %for.end.4737, %land.lhs.true.4718, %if.end.4710
  br label %do.end.4739

do.end.4739:                                      ; preds = %if.end.4738
  br label %if.end.4795

if.else.4740:                                     ; preds = %sw.bb.4654
  br label %do.body.4741

do.body.4741:                                     ; preds = %if.else.4740
  %2934 = load i64, i64* %width, align 8
  %tobool4743 = icmp ne i64 %2934, 0
  br i1 %tobool4743, label %land.lhs.true.4744, label %if.end.4758

land.lhs.true.4744:                               ; preds = %do.body.4741
  %2935 = load i32, i32* %justification, align 4
  %cmp4745 = icmp slt i32 %2935, 0
  br i1 %cmp4745, label %if.then.4747, label %if.end.4758

if.then.4747:                                     ; preds = %land.lhs.true.4744
  %2936 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2936, %struct.obstack** %__o4748, align 8
  %2937 = load %struct.obstack*, %struct.obstack** %__o4748, align 8
  %next_free4749 = getelementptr inbounds %struct.obstack, %struct.obstack* %2937, i32 0, i32 3
  %2938 = load i8*, i8** %next_free4749, align 8
  %add.ptr4750 = getelementptr inbounds i8, i8* %2938, i64 1
  %2939 = load %struct.obstack*, %struct.obstack** %__o4748, align 8
  %chunk_limit4751 = getelementptr inbounds %struct.obstack, %struct.obstack* %2939, i32 0, i32 4
  %2940 = load i8*, i8** %chunk_limit4751, align 8
  %cmp4752 = icmp ugt i8* %add.ptr4750, %2940
  br i1 %cmp4752, label %if.then.4754, label %if.end.4755

if.then.4754:                                     ; preds = %if.then.4747
  %2941 = load %struct.obstack*, %struct.obstack** %__o4748, align 8
  call void @_obstack_newchunk(%struct.obstack* %2941, i32 1)
  br label %if.end.4755

if.end.4755:                                      ; preds = %if.then.4754, %if.then.4747
  %2942 = load %struct.obstack*, %struct.obstack** %__o4748, align 8
  %next_free4756 = getelementptr inbounds %struct.obstack, %struct.obstack* %2942, i32 0, i32 3
  %2943 = load i8*, i8** %next_free4756, align 8
  %incdec.ptr4757 = getelementptr inbounds i8, i8* %2943, i32 1
  store i8* %incdec.ptr4757, i8** %next_free4756, align 8
  store i8 7, i8* %2943, align 1
  br label %if.end.4758

if.end.4758:                                      ; preds = %if.end.4755, %land.lhs.true.4744, %do.body.4741
  store i32 0, i32* %a4742, align 4
  br label %for.cond.4759

for.cond.4759:                                    ; preds = %for.inc.4775, %if.end.4758
  %2944 = load i32, i32* %a4742, align 4
  %2945 = load i64, i64* %width, align 8
  %conv4760 = trunc i64 %2945 to i32
  %sub4761 = sub nsw i32 %conv4760, 1
  %cmp4762 = icmp slt i32 %2944, %sub4761
  br i1 %cmp4762, label %for.body.4764, label %for.end.4777

for.body.4764:                                    ; preds = %for.cond.4759
  %2946 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2946, %struct.obstack** %__o4765, align 8
  %2947 = load %struct.obstack*, %struct.obstack** %__o4765, align 8
  %next_free4766 = getelementptr inbounds %struct.obstack, %struct.obstack* %2947, i32 0, i32 3
  %2948 = load i8*, i8** %next_free4766, align 8
  %add.ptr4767 = getelementptr inbounds i8, i8* %2948, i64 1
  %2949 = load %struct.obstack*, %struct.obstack** %__o4765, align 8
  %chunk_limit4768 = getelementptr inbounds %struct.obstack, %struct.obstack* %2949, i32 0, i32 4
  %2950 = load i8*, i8** %chunk_limit4768, align 8
  %cmp4769 = icmp ugt i8* %add.ptr4767, %2950
  br i1 %cmp4769, label %if.then.4771, label %if.end.4772

if.then.4771:                                     ; preds = %for.body.4764
  %2951 = load %struct.obstack*, %struct.obstack** %__o4765, align 8
  call void @_obstack_newchunk(%struct.obstack* %2951, i32 1)
  br label %if.end.4772

if.end.4772:                                      ; preds = %if.then.4771, %for.body.4764
  %2952 = load i8, i8* %padding, align 1
  %2953 = load %struct.obstack*, %struct.obstack** %__o4765, align 8
  %next_free4773 = getelementptr inbounds %struct.obstack, %struct.obstack* %2953, i32 0, i32 3
  %2954 = load i8*, i8** %next_free4773, align 8
  %incdec.ptr4774 = getelementptr inbounds i8, i8* %2954, i32 1
  store i8* %incdec.ptr4774, i8** %next_free4773, align 8
  store i8 %2952, i8* %2954, align 1
  br label %for.inc.4775

for.inc.4775:                                     ; preds = %if.end.4772
  %2955 = load i32, i32* %a4742, align 4
  %inc4776 = add nsw i32 %2955, 1
  store i32 %inc4776, i32* %a4742, align 4
  br label %for.cond.4759

for.end.4777:                                     ; preds = %for.cond.4759
  %2956 = load i64, i64* %width, align 8
  %tobool4778 = icmp ne i64 %2956, 0
  br i1 %tobool4778, label %lor.lhs.false.4779, label %if.then.4782

lor.lhs.false.4779:                               ; preds = %for.end.4777
  %2957 = load i32, i32* %justification, align 4
  %cmp4780 = icmp sgt i32 %2957, 0
  br i1 %cmp4780, label %if.then.4782, label %if.end.4793

if.then.4782:                                     ; preds = %lor.lhs.false.4779, %for.end.4777
  %2958 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2958, %struct.obstack** %__o4783, align 8
  %2959 = load %struct.obstack*, %struct.obstack** %__o4783, align 8
  %next_free4784 = getelementptr inbounds %struct.obstack, %struct.obstack* %2959, i32 0, i32 3
  %2960 = load i8*, i8** %next_free4784, align 8
  %add.ptr4785 = getelementptr inbounds i8, i8* %2960, i64 1
  %2961 = load %struct.obstack*, %struct.obstack** %__o4783, align 8
  %chunk_limit4786 = getelementptr inbounds %struct.obstack, %struct.obstack* %2961, i32 0, i32 4
  %2962 = load i8*, i8** %chunk_limit4786, align 8
  %cmp4787 = icmp ugt i8* %add.ptr4785, %2962
  br i1 %cmp4787, label %if.then.4789, label %if.end.4790

if.then.4789:                                     ; preds = %if.then.4782
  %2963 = load %struct.obstack*, %struct.obstack** %__o4783, align 8
  call void @_obstack_newchunk(%struct.obstack* %2963, i32 1)
  br label %if.end.4790

if.end.4790:                                      ; preds = %if.then.4789, %if.then.4782
  %2964 = load %struct.obstack*, %struct.obstack** %__o4783, align 8
  %next_free4791 = getelementptr inbounds %struct.obstack, %struct.obstack* %2964, i32 0, i32 3
  %2965 = load i8*, i8** %next_free4791, align 8
  %incdec.ptr4792 = getelementptr inbounds i8, i8* %2965, i32 1
  store i8* %incdec.ptr4792, i8** %next_free4791, align 8
  store i8 7, i8* %2965, align 1
  br label %if.end.4793

if.end.4793:                                      ; preds = %if.end.4790, %lor.lhs.false.4779
  br label %do.end.4794

do.end.4794:                                      ; preds = %if.end.4793
  br label %if.end.4795

if.end.4795:                                      ; preds = %do.end.4794, %do.end.4739
  br label %sw.epilog.4945

sw.bb.4796:                                       ; preds = %sw.bb.4329
  %2966 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %2967 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs4797 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2967, i32 0, i32 68
  %2968 = load %struct.darray*, %struct.darray** %jobs4797, align 8
  %len4798 = getelementptr inbounds %struct.darray, %struct.darray* %2968, i32 0, i32 5
  %2969 = load i64, i64* %len4798, align 8
  %sub4799 = sub i64 %2969, 1
  %2970 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs4800 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2970, i32 0, i32 68
  %2971 = load %struct.darray*, %struct.darray** %jobs4800, align 8
  %content4801 = getelementptr inbounds %struct.darray, %struct.darray* %2971, i32 0, i32 6
  %2972 = load i8**, i8*** %content4801, align 8
  %arrayidx4802 = getelementptr inbounds i8*, i8** %2972, i64 %sub4799
  %2973 = load i8*, i8** %arrayidx4802, align 8
  %2974 = bitcast i8* %2973 to %struct.file_job*
  %cmp4803 = icmp ne %struct.file_job* %2966, %2974
  br i1 %cmp4803, label %if.then.4805, label %if.else.4883

if.then.4805:                                     ; preds = %sw.bb.4796
  %arraydecay4806 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2975 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages4807 = getelementptr inbounds %struct.file_job, %struct.file_job* %2975, i32 0, i32 12
  %2976 = load i32, i32* %pages4807, align 4
  %call4808 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4806, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2976) #5
  br label %do.body.4809

do.body.4809:                                     ; preds = %if.then.4805
  %arraydecay4811 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4812 = call i64 @strlen(i8* %arraydecay4811) #6
  store i64 %call4812, i64* %len4810, align 8
  %2977 = load i64, i64* %len4810, align 8
  %2978 = load i64, i64* %width, align 8
  %cmp4814 = icmp ugt i64 %2977, %2978
  br i1 %cmp4814, label %cond.true.4816, label %cond.false.4817

cond.true.4816:                                   ; preds = %do.body.4809
  br label %cond.end.4819

cond.false.4817:                                  ; preds = %do.body.4809
  %2979 = load i64, i64* %width, align 8
  %2980 = load i64, i64* %len4810, align 8
  %sub4818 = sub i64 %2979, %2980
  br label %cond.end.4819

cond.end.4819:                                    ; preds = %cond.false.4817, %cond.true.4816
  %cond4820 = phi i64 [ 0, %cond.true.4816 ], [ %sub4818, %cond.false.4817 ]
  store i64 %cond4820, i64* %nspace4813, align 8
  %2981 = load i64, i64* %width, align 8
  %tobool4821 = icmp ne i64 %2981, 0
  br i1 %tobool4821, label %land.lhs.true.4822, label %if.end.4842

land.lhs.true.4822:                               ; preds = %cond.end.4819
  %2982 = load i32, i32* %justification, align 4
  %cmp4823 = icmp sgt i32 %2982, 0
  br i1 %cmp4823, label %if.then.4825, label %if.end.4842

if.then.4825:                                     ; preds = %land.lhs.true.4822
  br label %for.cond.4826

for.cond.4826:                                    ; preds = %for.inc.4839, %if.then.4825
  %2983 = load i64, i64* %nspace4813, align 8
  %tobool4827 = icmp ne i64 %2983, 0
  br i1 %tobool4827, label %for.body.4828, label %for.end.4841

for.body.4828:                                    ; preds = %for.cond.4826
  %2984 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2984, %struct.obstack** %__o4829, align 8
  %2985 = load %struct.obstack*, %struct.obstack** %__o4829, align 8
  %next_free4830 = getelementptr inbounds %struct.obstack, %struct.obstack* %2985, i32 0, i32 3
  %2986 = load i8*, i8** %next_free4830, align 8
  %add.ptr4831 = getelementptr inbounds i8, i8* %2986, i64 1
  %2987 = load %struct.obstack*, %struct.obstack** %__o4829, align 8
  %chunk_limit4832 = getelementptr inbounds %struct.obstack, %struct.obstack* %2987, i32 0, i32 4
  %2988 = load i8*, i8** %chunk_limit4832, align 8
  %cmp4833 = icmp ugt i8* %add.ptr4831, %2988
  br i1 %cmp4833, label %if.then.4835, label %if.end.4836

if.then.4835:                                     ; preds = %for.body.4828
  %2989 = load %struct.obstack*, %struct.obstack** %__o4829, align 8
  call void @_obstack_newchunk(%struct.obstack* %2989, i32 1)
  br label %if.end.4836

if.end.4836:                                      ; preds = %if.then.4835, %for.body.4828
  %2990 = load i8, i8* %padding, align 1
  %2991 = load %struct.obstack*, %struct.obstack** %__o4829, align 8
  %next_free4837 = getelementptr inbounds %struct.obstack, %struct.obstack* %2991, i32 0, i32 3
  %2992 = load i8*, i8** %next_free4837, align 8
  %incdec.ptr4838 = getelementptr inbounds i8, i8* %2992, i32 1
  store i8* %incdec.ptr4838, i8** %next_free4837, align 8
  store i8 %2990, i8* %2992, align 1
  br label %for.inc.4839

for.inc.4839:                                     ; preds = %if.end.4836
  %2993 = load i64, i64* %nspace4813, align 8
  %dec4840 = add i64 %2993, -1
  store i64 %dec4840, i64* %nspace4813, align 8
  br label %for.cond.4826

for.end.4841:                                     ; preds = %for.cond.4826
  br label %if.end.4842

if.end.4842:                                      ; preds = %for.end.4841, %land.lhs.true.4822, %cond.end.4819
  %2994 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %2994, %struct.obstack** %__o4843, align 8
  %2995 = load i64, i64* %len4810, align 8
  %conv4845 = trunc i64 %2995 to i32
  store i32 %conv4845, i32* %__len4844, align 4
  %2996 = load %struct.obstack*, %struct.obstack** %__o4843, align 8
  %next_free4846 = getelementptr inbounds %struct.obstack, %struct.obstack* %2996, i32 0, i32 3
  %2997 = load i8*, i8** %next_free4846, align 8
  %2998 = load i32, i32* %__len4844, align 4
  %idx.ext4847 = sext i32 %2998 to i64
  %add.ptr4848 = getelementptr inbounds i8, i8* %2997, i64 %idx.ext4847
  %2999 = load %struct.obstack*, %struct.obstack** %__o4843, align 8
  %chunk_limit4849 = getelementptr inbounds %struct.obstack, %struct.obstack* %2999, i32 0, i32 4
  %3000 = load i8*, i8** %chunk_limit4849, align 8
  %cmp4850 = icmp ugt i8* %add.ptr4848, %3000
  br i1 %cmp4850, label %if.then.4852, label %if.end.4853

if.then.4852:                                     ; preds = %if.end.4842
  %3001 = load %struct.obstack*, %struct.obstack** %__o4843, align 8
  %3002 = load i32, i32* %__len4844, align 4
  call void @_obstack_newchunk(%struct.obstack* %3001, i32 %3002)
  br label %if.end.4853

if.end.4853:                                      ; preds = %if.then.4852, %if.end.4842
  %3003 = load %struct.obstack*, %struct.obstack** %__o4843, align 8
  %next_free4854 = getelementptr inbounds %struct.obstack, %struct.obstack* %3003, i32 0, i32 3
  %3004 = load i8*, i8** %next_free4854, align 8
  %arraydecay4855 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3005 = load i32, i32* %__len4844, align 4
  %conv4856 = sext i32 %3005 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3004, i8* %arraydecay4855, i64 %conv4856, i32 1, i1 false)
  %3006 = load i32, i32* %__len4844, align 4
  %3007 = load %struct.obstack*, %struct.obstack** %__o4843, align 8
  %next_free4857 = getelementptr inbounds %struct.obstack, %struct.obstack* %3007, i32 0, i32 3
  %3008 = load i8*, i8** %next_free4857, align 8
  %idx.ext4858 = sext i32 %3006 to i64
  %add.ptr4859 = getelementptr inbounds i8, i8* %3008, i64 %idx.ext4858
  store i8* %add.ptr4859, i8** %next_free4857, align 8
  %3009 = load i64, i64* %width, align 8
  %tobool4860 = icmp ne i64 %3009, 0
  br i1 %tobool4860, label %land.lhs.true.4861, label %if.end.4881

land.lhs.true.4861:                               ; preds = %if.end.4853
  %3010 = load i32, i32* %justification, align 4
  %cmp4862 = icmp slt i32 %3010, 0
  br i1 %cmp4862, label %if.then.4864, label %if.end.4881

if.then.4864:                                     ; preds = %land.lhs.true.4861
  br label %for.cond.4865

for.cond.4865:                                    ; preds = %for.inc.4878, %if.then.4864
  %3011 = load i64, i64* %nspace4813, align 8
  %tobool4866 = icmp ne i64 %3011, 0
  br i1 %tobool4866, label %for.body.4867, label %for.end.4880

for.body.4867:                                    ; preds = %for.cond.4865
  %3012 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3012, %struct.obstack** %__o4868, align 8
  %3013 = load %struct.obstack*, %struct.obstack** %__o4868, align 8
  %next_free4869 = getelementptr inbounds %struct.obstack, %struct.obstack* %3013, i32 0, i32 3
  %3014 = load i8*, i8** %next_free4869, align 8
  %add.ptr4870 = getelementptr inbounds i8, i8* %3014, i64 1
  %3015 = load %struct.obstack*, %struct.obstack** %__o4868, align 8
  %chunk_limit4871 = getelementptr inbounds %struct.obstack, %struct.obstack* %3015, i32 0, i32 4
  %3016 = load i8*, i8** %chunk_limit4871, align 8
  %cmp4872 = icmp ugt i8* %add.ptr4870, %3016
  br i1 %cmp4872, label %if.then.4874, label %if.end.4875

if.then.4874:                                     ; preds = %for.body.4867
  %3017 = load %struct.obstack*, %struct.obstack** %__o4868, align 8
  call void @_obstack_newchunk(%struct.obstack* %3017, i32 1)
  br label %if.end.4875

if.end.4875:                                      ; preds = %if.then.4874, %for.body.4867
  %3018 = load i8, i8* %padding, align 1
  %3019 = load %struct.obstack*, %struct.obstack** %__o4868, align 8
  %next_free4876 = getelementptr inbounds %struct.obstack, %struct.obstack* %3019, i32 0, i32 3
  %3020 = load i8*, i8** %next_free4876, align 8
  %incdec.ptr4877 = getelementptr inbounds i8, i8* %3020, i32 1
  store i8* %incdec.ptr4877, i8** %next_free4876, align 8
  store i8 %3018, i8* %3020, align 1
  br label %for.inc.4878

for.inc.4878:                                     ; preds = %if.end.4875
  %3021 = load i64, i64* %nspace4813, align 8
  %dec4879 = add i64 %3021, -1
  store i64 %dec4879, i64* %nspace4813, align 8
  br label %for.cond.4865

for.end.4880:                                     ; preds = %for.cond.4865
  br label %if.end.4881

if.end.4881:                                      ; preds = %for.end.4880, %land.lhs.true.4861, %if.end.4853
  br label %do.end.4882

do.end.4882:                                      ; preds = %if.end.4881
  br label %if.end.4938

if.else.4883:                                     ; preds = %sw.bb.4796
  br label %do.body.4884

do.body.4884:                                     ; preds = %if.else.4883
  %3022 = load i64, i64* %width, align 8
  %tobool4886 = icmp ne i64 %3022, 0
  br i1 %tobool4886, label %land.lhs.true.4887, label %if.end.4901

land.lhs.true.4887:                               ; preds = %do.body.4884
  %3023 = load i32, i32* %justification, align 4
  %cmp4888 = icmp slt i32 %3023, 0
  br i1 %cmp4888, label %if.then.4890, label %if.end.4901

if.then.4890:                                     ; preds = %land.lhs.true.4887
  %3024 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3024, %struct.obstack** %__o4891, align 8
  %3025 = load %struct.obstack*, %struct.obstack** %__o4891, align 8
  %next_free4892 = getelementptr inbounds %struct.obstack, %struct.obstack* %3025, i32 0, i32 3
  %3026 = load i8*, i8** %next_free4892, align 8
  %add.ptr4893 = getelementptr inbounds i8, i8* %3026, i64 1
  %3027 = load %struct.obstack*, %struct.obstack** %__o4891, align 8
  %chunk_limit4894 = getelementptr inbounds %struct.obstack, %struct.obstack* %3027, i32 0, i32 4
  %3028 = load i8*, i8** %chunk_limit4894, align 8
  %cmp4895 = icmp ugt i8* %add.ptr4893, %3028
  br i1 %cmp4895, label %if.then.4897, label %if.end.4898

if.then.4897:                                     ; preds = %if.then.4890
  %3029 = load %struct.obstack*, %struct.obstack** %__o4891, align 8
  call void @_obstack_newchunk(%struct.obstack* %3029, i32 1)
  br label %if.end.4898

if.end.4898:                                      ; preds = %if.then.4897, %if.then.4890
  %3030 = load %struct.obstack*, %struct.obstack** %__o4891, align 8
  %next_free4899 = getelementptr inbounds %struct.obstack, %struct.obstack* %3030, i32 0, i32 3
  %3031 = load i8*, i8** %next_free4899, align 8
  %incdec.ptr4900 = getelementptr inbounds i8, i8* %3031, i32 1
  store i8* %incdec.ptr4900, i8** %next_free4899, align 8
  store i8 4, i8* %3031, align 1
  br label %if.end.4901

if.end.4901:                                      ; preds = %if.end.4898, %land.lhs.true.4887, %do.body.4884
  store i32 0, i32* %a4885, align 4
  br label %for.cond.4902

for.cond.4902:                                    ; preds = %for.inc.4918, %if.end.4901
  %3032 = load i32, i32* %a4885, align 4
  %3033 = load i64, i64* %width, align 8
  %conv4903 = trunc i64 %3033 to i32
  %sub4904 = sub nsw i32 %conv4903, 1
  %cmp4905 = icmp slt i32 %3032, %sub4904
  br i1 %cmp4905, label %for.body.4907, label %for.end.4920

for.body.4907:                                    ; preds = %for.cond.4902
  %3034 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3034, %struct.obstack** %__o4908, align 8
  %3035 = load %struct.obstack*, %struct.obstack** %__o4908, align 8
  %next_free4909 = getelementptr inbounds %struct.obstack, %struct.obstack* %3035, i32 0, i32 3
  %3036 = load i8*, i8** %next_free4909, align 8
  %add.ptr4910 = getelementptr inbounds i8, i8* %3036, i64 1
  %3037 = load %struct.obstack*, %struct.obstack** %__o4908, align 8
  %chunk_limit4911 = getelementptr inbounds %struct.obstack, %struct.obstack* %3037, i32 0, i32 4
  %3038 = load i8*, i8** %chunk_limit4911, align 8
  %cmp4912 = icmp ugt i8* %add.ptr4910, %3038
  br i1 %cmp4912, label %if.then.4914, label %if.end.4915

if.then.4914:                                     ; preds = %for.body.4907
  %3039 = load %struct.obstack*, %struct.obstack** %__o4908, align 8
  call void @_obstack_newchunk(%struct.obstack* %3039, i32 1)
  br label %if.end.4915

if.end.4915:                                      ; preds = %if.then.4914, %for.body.4907
  %3040 = load i8, i8* %padding, align 1
  %3041 = load %struct.obstack*, %struct.obstack** %__o4908, align 8
  %next_free4916 = getelementptr inbounds %struct.obstack, %struct.obstack* %3041, i32 0, i32 3
  %3042 = load i8*, i8** %next_free4916, align 8
  %incdec.ptr4917 = getelementptr inbounds i8, i8* %3042, i32 1
  store i8* %incdec.ptr4917, i8** %next_free4916, align 8
  store i8 %3040, i8* %3042, align 1
  br label %for.inc.4918

for.inc.4918:                                     ; preds = %if.end.4915
  %3043 = load i32, i32* %a4885, align 4
  %inc4919 = add nsw i32 %3043, 1
  store i32 %inc4919, i32* %a4885, align 4
  br label %for.cond.4902

for.end.4920:                                     ; preds = %for.cond.4902
  %3044 = load i64, i64* %width, align 8
  %tobool4921 = icmp ne i64 %3044, 0
  br i1 %tobool4921, label %lor.lhs.false.4922, label %if.then.4925

lor.lhs.false.4922:                               ; preds = %for.end.4920
  %3045 = load i32, i32* %justification, align 4
  %cmp4923 = icmp sgt i32 %3045, 0
  br i1 %cmp4923, label %if.then.4925, label %if.end.4936

if.then.4925:                                     ; preds = %lor.lhs.false.4922, %for.end.4920
  %3046 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3046, %struct.obstack** %__o4926, align 8
  %3047 = load %struct.obstack*, %struct.obstack** %__o4926, align 8
  %next_free4927 = getelementptr inbounds %struct.obstack, %struct.obstack* %3047, i32 0, i32 3
  %3048 = load i8*, i8** %next_free4927, align 8
  %add.ptr4928 = getelementptr inbounds i8, i8* %3048, i64 1
  %3049 = load %struct.obstack*, %struct.obstack** %__o4926, align 8
  %chunk_limit4929 = getelementptr inbounds %struct.obstack, %struct.obstack* %3049, i32 0, i32 4
  %3050 = load i8*, i8** %chunk_limit4929, align 8
  %cmp4930 = icmp ugt i8* %add.ptr4928, %3050
  br i1 %cmp4930, label %if.then.4932, label %if.end.4933

if.then.4932:                                     ; preds = %if.then.4925
  %3051 = load %struct.obstack*, %struct.obstack** %__o4926, align 8
  call void @_obstack_newchunk(%struct.obstack* %3051, i32 1)
  br label %if.end.4933

if.end.4933:                                      ; preds = %if.then.4932, %if.then.4925
  %3052 = load %struct.obstack*, %struct.obstack** %__o4926, align 8
  %next_free4934 = getelementptr inbounds %struct.obstack, %struct.obstack* %3052, i32 0, i32 3
  %3053 = load i8*, i8** %next_free4934, align 8
  %incdec.ptr4935 = getelementptr inbounds i8, i8* %3053, i32 1
  store i8* %incdec.ptr4935, i8** %next_free4934, align 8
  store i8 4, i8* %3053, align 1
  br label %if.end.4936

if.end.4936:                                      ; preds = %if.end.4933, %lor.lhs.false.4922
  br label %do.end.4937

do.end.4937:                                      ; preds = %if.end.4936
  br label %if.end.4938

if.end.4938:                                      ; preds = %do.end.4937, %do.end.4882
  br label %sw.epilog.4945

sw.default.4939:                                  ; preds = %sw.bb.4329
  %call4940 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %3054 = load i8*, i8** %context_name.addr, align 8
  %3055 = load i64, i64* %i, align 8
  %3056 = load i8*, i8** %str.addr, align 8
  %arrayidx4941 = getelementptr inbounds i8, i8* %3056, i64 %3055
  %3057 = load i8, i8* %arrayidx4941, align 1
  %conv4942 = zext i8 %3057 to i32
  %3058 = load i64, i64* %i, align 8
  %3059 = load i8*, i8** %str.addr, align 8
  %arrayidx4943 = getelementptr inbounds i8, i8* %3059, i64 %3058
  %3060 = load i8, i8* %arrayidx4943, align 1
  %conv4944 = zext i8 %3060 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call4940, i8* %3054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i32 %conv4942, i32 %conv4944)
  br label %sw.epilog.4945

sw.epilog.4945:                                   ; preds = %sw.default.4939, %if.end.4938, %if.end.4795, %do.end.4653, %do.end.4575, %do.end.4498, %do.end.4409
  br label %sw.epilog.6153

sw.bb.4946:                                       ; preds = %sw.bb.2280
  %arraydecay4947 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4948 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #5
  %3061 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages4949 = getelementptr inbounds %struct.file_job, %struct.file_job* %3061, i32 0, i32 12
  %3062 = load i32, i32* %pages4949, align 4
  %call4950 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4947, i8* %call4948, i32 %3062) #5
  br label %do.body.4951

do.body.4951:                                     ; preds = %sw.bb.4946
  %arraydecay4953 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call4954 = call i64 @strlen(i8* %arraydecay4953) #6
  store i64 %call4954, i64* %len4952, align 8
  %3063 = load i64, i64* %len4952, align 8
  %3064 = load i64, i64* %width, align 8
  %cmp4956 = icmp ugt i64 %3063, %3064
  br i1 %cmp4956, label %cond.true.4958, label %cond.false.4959

cond.true.4958:                                   ; preds = %do.body.4951
  br label %cond.end.4961

cond.false.4959:                                  ; preds = %do.body.4951
  %3065 = load i64, i64* %width, align 8
  %3066 = load i64, i64* %len4952, align 8
  %sub4960 = sub i64 %3065, %3066
  br label %cond.end.4961

cond.end.4961:                                    ; preds = %cond.false.4959, %cond.true.4958
  %cond4962 = phi i64 [ 0, %cond.true.4958 ], [ %sub4960, %cond.false.4959 ]
  store i64 %cond4962, i64* %nspace4955, align 8
  %3067 = load i64, i64* %width, align 8
  %tobool4963 = icmp ne i64 %3067, 0
  br i1 %tobool4963, label %land.lhs.true.4964, label %if.end.4984

land.lhs.true.4964:                               ; preds = %cond.end.4961
  %3068 = load i32, i32* %justification, align 4
  %cmp4965 = icmp sgt i32 %3068, 0
  br i1 %cmp4965, label %if.then.4967, label %if.end.4984

if.then.4967:                                     ; preds = %land.lhs.true.4964
  br label %for.cond.4968

for.cond.4968:                                    ; preds = %for.inc.4981, %if.then.4967
  %3069 = load i64, i64* %nspace4955, align 8
  %tobool4969 = icmp ne i64 %3069, 0
  br i1 %tobool4969, label %for.body.4970, label %for.end.4983

for.body.4970:                                    ; preds = %for.cond.4968
  %3070 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3070, %struct.obstack** %__o4971, align 8
  %3071 = load %struct.obstack*, %struct.obstack** %__o4971, align 8
  %next_free4972 = getelementptr inbounds %struct.obstack, %struct.obstack* %3071, i32 0, i32 3
  %3072 = load i8*, i8** %next_free4972, align 8
  %add.ptr4973 = getelementptr inbounds i8, i8* %3072, i64 1
  %3073 = load %struct.obstack*, %struct.obstack** %__o4971, align 8
  %chunk_limit4974 = getelementptr inbounds %struct.obstack, %struct.obstack* %3073, i32 0, i32 4
  %3074 = load i8*, i8** %chunk_limit4974, align 8
  %cmp4975 = icmp ugt i8* %add.ptr4973, %3074
  br i1 %cmp4975, label %if.then.4977, label %if.end.4978

if.then.4977:                                     ; preds = %for.body.4970
  %3075 = load %struct.obstack*, %struct.obstack** %__o4971, align 8
  call void @_obstack_newchunk(%struct.obstack* %3075, i32 1)
  br label %if.end.4978

if.end.4978:                                      ; preds = %if.then.4977, %for.body.4970
  %3076 = load i8, i8* %padding, align 1
  %3077 = load %struct.obstack*, %struct.obstack** %__o4971, align 8
  %next_free4979 = getelementptr inbounds %struct.obstack, %struct.obstack* %3077, i32 0, i32 3
  %3078 = load i8*, i8** %next_free4979, align 8
  %incdec.ptr4980 = getelementptr inbounds i8, i8* %3078, i32 1
  store i8* %incdec.ptr4980, i8** %next_free4979, align 8
  store i8 %3076, i8* %3078, align 1
  br label %for.inc.4981

for.inc.4981:                                     ; preds = %if.end.4978
  %3079 = load i64, i64* %nspace4955, align 8
  %dec4982 = add i64 %3079, -1
  store i64 %dec4982, i64* %nspace4955, align 8
  br label %for.cond.4968

for.end.4983:                                     ; preds = %for.cond.4968
  br label %if.end.4984

if.end.4984:                                      ; preds = %for.end.4983, %land.lhs.true.4964, %cond.end.4961
  %3080 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3080, %struct.obstack** %__o4985, align 8
  %3081 = load i64, i64* %len4952, align 8
  %conv4987 = trunc i64 %3081 to i32
  store i32 %conv4987, i32* %__len4986, align 4
  %3082 = load %struct.obstack*, %struct.obstack** %__o4985, align 8
  %next_free4988 = getelementptr inbounds %struct.obstack, %struct.obstack* %3082, i32 0, i32 3
  %3083 = load i8*, i8** %next_free4988, align 8
  %3084 = load i32, i32* %__len4986, align 4
  %idx.ext4989 = sext i32 %3084 to i64
  %add.ptr4990 = getelementptr inbounds i8, i8* %3083, i64 %idx.ext4989
  %3085 = load %struct.obstack*, %struct.obstack** %__o4985, align 8
  %chunk_limit4991 = getelementptr inbounds %struct.obstack, %struct.obstack* %3085, i32 0, i32 4
  %3086 = load i8*, i8** %chunk_limit4991, align 8
  %cmp4992 = icmp ugt i8* %add.ptr4990, %3086
  br i1 %cmp4992, label %if.then.4994, label %if.end.4995

if.then.4994:                                     ; preds = %if.end.4984
  %3087 = load %struct.obstack*, %struct.obstack** %__o4985, align 8
  %3088 = load i32, i32* %__len4986, align 4
  call void @_obstack_newchunk(%struct.obstack* %3087, i32 %3088)
  br label %if.end.4995

if.end.4995:                                      ; preds = %if.then.4994, %if.end.4984
  %3089 = load %struct.obstack*, %struct.obstack** %__o4985, align 8
  %next_free4996 = getelementptr inbounds %struct.obstack, %struct.obstack* %3089, i32 0, i32 3
  %3090 = load i8*, i8** %next_free4996, align 8
  %arraydecay4997 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3091 = load i32, i32* %__len4986, align 4
  %conv4998 = sext i32 %3091 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3090, i8* %arraydecay4997, i64 %conv4998, i32 1, i1 false)
  %3092 = load i32, i32* %__len4986, align 4
  %3093 = load %struct.obstack*, %struct.obstack** %__o4985, align 8
  %next_free4999 = getelementptr inbounds %struct.obstack, %struct.obstack* %3093, i32 0, i32 3
  %3094 = load i8*, i8** %next_free4999, align 8
  %idx.ext5000 = sext i32 %3092 to i64
  %add.ptr5001 = getelementptr inbounds i8, i8* %3094, i64 %idx.ext5000
  store i8* %add.ptr5001, i8** %next_free4999, align 8
  %3095 = load i64, i64* %width, align 8
  %tobool5002 = icmp ne i64 %3095, 0
  br i1 %tobool5002, label %land.lhs.true.5003, label %if.end.5023

land.lhs.true.5003:                               ; preds = %if.end.4995
  %3096 = load i32, i32* %justification, align 4
  %cmp5004 = icmp slt i32 %3096, 0
  br i1 %cmp5004, label %if.then.5006, label %if.end.5023

if.then.5006:                                     ; preds = %land.lhs.true.5003
  br label %for.cond.5007

for.cond.5007:                                    ; preds = %for.inc.5020, %if.then.5006
  %3097 = load i64, i64* %nspace4955, align 8
  %tobool5008 = icmp ne i64 %3097, 0
  br i1 %tobool5008, label %for.body.5009, label %for.end.5022

for.body.5009:                                    ; preds = %for.cond.5007
  %3098 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3098, %struct.obstack** %__o5010, align 8
  %3099 = load %struct.obstack*, %struct.obstack** %__o5010, align 8
  %next_free5011 = getelementptr inbounds %struct.obstack, %struct.obstack* %3099, i32 0, i32 3
  %3100 = load i8*, i8** %next_free5011, align 8
  %add.ptr5012 = getelementptr inbounds i8, i8* %3100, i64 1
  %3101 = load %struct.obstack*, %struct.obstack** %__o5010, align 8
  %chunk_limit5013 = getelementptr inbounds %struct.obstack, %struct.obstack* %3101, i32 0, i32 4
  %3102 = load i8*, i8** %chunk_limit5013, align 8
  %cmp5014 = icmp ugt i8* %add.ptr5012, %3102
  br i1 %cmp5014, label %if.then.5016, label %if.end.5017

if.then.5016:                                     ; preds = %for.body.5009
  %3103 = load %struct.obstack*, %struct.obstack** %__o5010, align 8
  call void @_obstack_newchunk(%struct.obstack* %3103, i32 1)
  br label %if.end.5017

if.end.5017:                                      ; preds = %if.then.5016, %for.body.5009
  %3104 = load i8, i8* %padding, align 1
  %3105 = load %struct.obstack*, %struct.obstack** %__o5010, align 8
  %next_free5018 = getelementptr inbounds %struct.obstack, %struct.obstack* %3105, i32 0, i32 3
  %3106 = load i8*, i8** %next_free5018, align 8
  %incdec.ptr5019 = getelementptr inbounds i8, i8* %3106, i32 1
  store i8* %incdec.ptr5019, i8** %next_free5018, align 8
  store i8 %3104, i8* %3106, align 1
  br label %for.inc.5020

for.inc.5020:                                     ; preds = %if.end.5017
  %3107 = load i64, i64* %nspace4955, align 8
  %dec5021 = add i64 %3107, -1
  store i64 %dec5021, i64* %nspace4955, align 8
  br label %for.cond.5007

for.end.5022:                                     ; preds = %for.cond.5007
  br label %if.end.5023

if.end.5023:                                      ; preds = %for.end.5022, %land.lhs.true.5003, %if.end.4995
  br label %do.end.5024

do.end.5024:                                      ; preds = %if.end.5023
  br label %sw.epilog.6153

sw.bb.5025:                                       ; preds = %sw.bb.2280
  %3108 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3109 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5026 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3109, i32 0, i32 68
  %3110 = load %struct.darray*, %struct.darray** %jobs5026, align 8
  %len5027 = getelementptr inbounds %struct.darray, %struct.darray* %3110, i32 0, i32 5
  %3111 = load i64, i64* %len5027, align 8
  %sub5028 = sub i64 %3111, 1
  %3112 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5029 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3112, i32 0, i32 68
  %3113 = load %struct.darray*, %struct.darray** %jobs5029, align 8
  %content5030 = getelementptr inbounds %struct.darray, %struct.darray* %3113, i32 0, i32 6
  %3114 = load i8**, i8*** %content5030, align 8
  %arrayidx5031 = getelementptr inbounds i8*, i8** %3114, i64 %sub5028
  %3115 = load i8*, i8** %arrayidx5031, align 8
  %3116 = bitcast i8* %3115 to %struct.file_job*
  %cmp5032 = icmp ne %struct.file_job* %3108, %3116
  br i1 %cmp5032, label %if.then.5034, label %if.else.5040

if.then.5034:                                     ; preds = %sw.bb.5025
  %arraydecay5035 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5036 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)) #5
  %3117 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages5037 = getelementptr inbounds %struct.file_job, %struct.file_job* %3117, i32 0, i32 12
  %3118 = load i32, i32* %pages5037, align 4
  %3119 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages5038 = getelementptr inbounds %struct.file_job, %struct.file_job* %3119, i32 0, i32 12
  %3120 = load i32, i32* %pages5038, align 4
  %call5039 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5035, i8* %call5036, i32 %3118, i32 %3120) #5
  br label %if.end.5045

if.else.5040:                                     ; preds = %sw.bb.5025
  %arraydecay5041 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5042 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #5
  %3121 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages5043 = getelementptr inbounds %struct.file_job, %struct.file_job* %3121, i32 0, i32 12
  %3122 = load i32, i32* %pages5043, align 4
  %call5044 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5041, i8* %call5042, i32 %3122, i32 4) #5
  br label %if.end.5045

if.end.5045:                                      ; preds = %if.else.5040, %if.then.5034
  br label %do.body.5046

do.body.5046:                                     ; preds = %if.end.5045
  %arraydecay5048 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5049 = call i64 @strlen(i8* %arraydecay5048) #6
  store i64 %call5049, i64* %len5047, align 8
  %3123 = load i64, i64* %len5047, align 8
  %3124 = load i64, i64* %width, align 8
  %cmp5051 = icmp ugt i64 %3123, %3124
  br i1 %cmp5051, label %cond.true.5053, label %cond.false.5054

cond.true.5053:                                   ; preds = %do.body.5046
  br label %cond.end.5056

cond.false.5054:                                  ; preds = %do.body.5046
  %3125 = load i64, i64* %width, align 8
  %3126 = load i64, i64* %len5047, align 8
  %sub5055 = sub i64 %3125, %3126
  br label %cond.end.5056

cond.end.5056:                                    ; preds = %cond.false.5054, %cond.true.5053
  %cond5057 = phi i64 [ 0, %cond.true.5053 ], [ %sub5055, %cond.false.5054 ]
  store i64 %cond5057, i64* %nspace5050, align 8
  %3127 = load i64, i64* %width, align 8
  %tobool5058 = icmp ne i64 %3127, 0
  br i1 %tobool5058, label %land.lhs.true.5059, label %if.end.5079

land.lhs.true.5059:                               ; preds = %cond.end.5056
  %3128 = load i32, i32* %justification, align 4
  %cmp5060 = icmp sgt i32 %3128, 0
  br i1 %cmp5060, label %if.then.5062, label %if.end.5079

if.then.5062:                                     ; preds = %land.lhs.true.5059
  br label %for.cond.5063

for.cond.5063:                                    ; preds = %for.inc.5076, %if.then.5062
  %3129 = load i64, i64* %nspace5050, align 8
  %tobool5064 = icmp ne i64 %3129, 0
  br i1 %tobool5064, label %for.body.5065, label %for.end.5078

for.body.5065:                                    ; preds = %for.cond.5063
  %3130 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3130, %struct.obstack** %__o5066, align 8
  %3131 = load %struct.obstack*, %struct.obstack** %__o5066, align 8
  %next_free5067 = getelementptr inbounds %struct.obstack, %struct.obstack* %3131, i32 0, i32 3
  %3132 = load i8*, i8** %next_free5067, align 8
  %add.ptr5068 = getelementptr inbounds i8, i8* %3132, i64 1
  %3133 = load %struct.obstack*, %struct.obstack** %__o5066, align 8
  %chunk_limit5069 = getelementptr inbounds %struct.obstack, %struct.obstack* %3133, i32 0, i32 4
  %3134 = load i8*, i8** %chunk_limit5069, align 8
  %cmp5070 = icmp ugt i8* %add.ptr5068, %3134
  br i1 %cmp5070, label %if.then.5072, label %if.end.5073

if.then.5072:                                     ; preds = %for.body.5065
  %3135 = load %struct.obstack*, %struct.obstack** %__o5066, align 8
  call void @_obstack_newchunk(%struct.obstack* %3135, i32 1)
  br label %if.end.5073

if.end.5073:                                      ; preds = %if.then.5072, %for.body.5065
  %3136 = load i8, i8* %padding, align 1
  %3137 = load %struct.obstack*, %struct.obstack** %__o5066, align 8
  %next_free5074 = getelementptr inbounds %struct.obstack, %struct.obstack* %3137, i32 0, i32 3
  %3138 = load i8*, i8** %next_free5074, align 8
  %incdec.ptr5075 = getelementptr inbounds i8, i8* %3138, i32 1
  store i8* %incdec.ptr5075, i8** %next_free5074, align 8
  store i8 %3136, i8* %3138, align 1
  br label %for.inc.5076

for.inc.5076:                                     ; preds = %if.end.5073
  %3139 = load i64, i64* %nspace5050, align 8
  %dec5077 = add i64 %3139, -1
  store i64 %dec5077, i64* %nspace5050, align 8
  br label %for.cond.5063

for.end.5078:                                     ; preds = %for.cond.5063
  br label %if.end.5079

if.end.5079:                                      ; preds = %for.end.5078, %land.lhs.true.5059, %cond.end.5056
  %3140 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3140, %struct.obstack** %__o5080, align 8
  %3141 = load i64, i64* %len5047, align 8
  %conv5082 = trunc i64 %3141 to i32
  store i32 %conv5082, i32* %__len5081, align 4
  %3142 = load %struct.obstack*, %struct.obstack** %__o5080, align 8
  %next_free5083 = getelementptr inbounds %struct.obstack, %struct.obstack* %3142, i32 0, i32 3
  %3143 = load i8*, i8** %next_free5083, align 8
  %3144 = load i32, i32* %__len5081, align 4
  %idx.ext5084 = sext i32 %3144 to i64
  %add.ptr5085 = getelementptr inbounds i8, i8* %3143, i64 %idx.ext5084
  %3145 = load %struct.obstack*, %struct.obstack** %__o5080, align 8
  %chunk_limit5086 = getelementptr inbounds %struct.obstack, %struct.obstack* %3145, i32 0, i32 4
  %3146 = load i8*, i8** %chunk_limit5086, align 8
  %cmp5087 = icmp ugt i8* %add.ptr5085, %3146
  br i1 %cmp5087, label %if.then.5089, label %if.end.5090

if.then.5089:                                     ; preds = %if.end.5079
  %3147 = load %struct.obstack*, %struct.obstack** %__o5080, align 8
  %3148 = load i32, i32* %__len5081, align 4
  call void @_obstack_newchunk(%struct.obstack* %3147, i32 %3148)
  br label %if.end.5090

if.end.5090:                                      ; preds = %if.then.5089, %if.end.5079
  %3149 = load %struct.obstack*, %struct.obstack** %__o5080, align 8
  %next_free5091 = getelementptr inbounds %struct.obstack, %struct.obstack* %3149, i32 0, i32 3
  %3150 = load i8*, i8** %next_free5091, align 8
  %arraydecay5092 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3151 = load i32, i32* %__len5081, align 4
  %conv5093 = sext i32 %3151 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3150, i8* %arraydecay5092, i64 %conv5093, i32 1, i1 false)
  %3152 = load i32, i32* %__len5081, align 4
  %3153 = load %struct.obstack*, %struct.obstack** %__o5080, align 8
  %next_free5094 = getelementptr inbounds %struct.obstack, %struct.obstack* %3153, i32 0, i32 3
  %3154 = load i8*, i8** %next_free5094, align 8
  %idx.ext5095 = sext i32 %3152 to i64
  %add.ptr5096 = getelementptr inbounds i8, i8* %3154, i64 %idx.ext5095
  store i8* %add.ptr5096, i8** %next_free5094, align 8
  %3155 = load i64, i64* %width, align 8
  %tobool5097 = icmp ne i64 %3155, 0
  br i1 %tobool5097, label %land.lhs.true.5098, label %if.end.5118

land.lhs.true.5098:                               ; preds = %if.end.5090
  %3156 = load i32, i32* %justification, align 4
  %cmp5099 = icmp slt i32 %3156, 0
  br i1 %cmp5099, label %if.then.5101, label %if.end.5118

if.then.5101:                                     ; preds = %land.lhs.true.5098
  br label %for.cond.5102

for.cond.5102:                                    ; preds = %for.inc.5115, %if.then.5101
  %3157 = load i64, i64* %nspace5050, align 8
  %tobool5103 = icmp ne i64 %3157, 0
  br i1 %tobool5103, label %for.body.5104, label %for.end.5117

for.body.5104:                                    ; preds = %for.cond.5102
  %3158 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3158, %struct.obstack** %__o5105, align 8
  %3159 = load %struct.obstack*, %struct.obstack** %__o5105, align 8
  %next_free5106 = getelementptr inbounds %struct.obstack, %struct.obstack* %3159, i32 0, i32 3
  %3160 = load i8*, i8** %next_free5106, align 8
  %add.ptr5107 = getelementptr inbounds i8, i8* %3160, i64 1
  %3161 = load %struct.obstack*, %struct.obstack** %__o5105, align 8
  %chunk_limit5108 = getelementptr inbounds %struct.obstack, %struct.obstack* %3161, i32 0, i32 4
  %3162 = load i8*, i8** %chunk_limit5108, align 8
  %cmp5109 = icmp ugt i8* %add.ptr5107, %3162
  br i1 %cmp5109, label %if.then.5111, label %if.end.5112

if.then.5111:                                     ; preds = %for.body.5104
  %3163 = load %struct.obstack*, %struct.obstack** %__o5105, align 8
  call void @_obstack_newchunk(%struct.obstack* %3163, i32 1)
  br label %if.end.5112

if.end.5112:                                      ; preds = %if.then.5111, %for.body.5104
  %3164 = load i8, i8* %padding, align 1
  %3165 = load %struct.obstack*, %struct.obstack** %__o5105, align 8
  %next_free5113 = getelementptr inbounds %struct.obstack, %struct.obstack* %3165, i32 0, i32 3
  %3166 = load i8*, i8** %next_free5113, align 8
  %incdec.ptr5114 = getelementptr inbounds i8, i8* %3166, i32 1
  store i8* %incdec.ptr5114, i8** %next_free5113, align 8
  store i8 %3164, i8* %3166, align 1
  br label %for.inc.5115

for.inc.5115:                                     ; preds = %if.end.5112
  %3167 = load i64, i64* %nspace5050, align 8
  %dec5116 = add i64 %3167, -1
  store i64 %dec5116, i64* %nspace5050, align 8
  br label %for.cond.5102

for.end.5117:                                     ; preds = %for.cond.5102
  br label %if.end.5118

if.end.5118:                                      ; preds = %for.end.5117, %land.lhs.true.5098, %if.end.5090
  br label %do.end.5119

do.end.5119:                                      ; preds = %if.end.5118
  br label %sw.epilog.6153

sw.bb.5120:                                       ; preds = %sw.bb.2280
  %3168 = load i64, i64* %i, align 8
  %inc5121 = add i64 %3168, 1
  store i64 %inc5121, i64* %i, align 8
  %3169 = load i8*, i8** %str.addr, align 8
  %arrayidx5122 = getelementptr inbounds i8, i8* %3169, i64 %inc5121
  %3170 = load i8, i8* %arrayidx5122, align 1
  %conv5123 = zext i8 %3170 to i32
  switch i32 %conv5123, label %sw.default.5564 [
    i32 60, label %sw.bb.5124
    i32 46, label %sw.bb.5201
    i32 62, label %sw.bb.5279
    i32 35, label %sw.bb.5421
  ]

sw.bb.5124:                                       ; preds = %sw.bb.5120
  %arraydecay5125 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3171 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %first_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %3171, i32 0, i32 8
  %3172 = load i32, i32* %first_sheet, align 4
  %call5126 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3172) #5
  br label %do.body.5127

do.body.5127:                                     ; preds = %sw.bb.5124
  %arraydecay5129 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5130 = call i64 @strlen(i8* %arraydecay5129) #6
  store i64 %call5130, i64* %len5128, align 8
  %3173 = load i64, i64* %len5128, align 8
  %3174 = load i64, i64* %width, align 8
  %cmp5132 = icmp ugt i64 %3173, %3174
  br i1 %cmp5132, label %cond.true.5134, label %cond.false.5135

cond.true.5134:                                   ; preds = %do.body.5127
  br label %cond.end.5137

cond.false.5135:                                  ; preds = %do.body.5127
  %3175 = load i64, i64* %width, align 8
  %3176 = load i64, i64* %len5128, align 8
  %sub5136 = sub i64 %3175, %3176
  br label %cond.end.5137

cond.end.5137:                                    ; preds = %cond.false.5135, %cond.true.5134
  %cond5138 = phi i64 [ 0, %cond.true.5134 ], [ %sub5136, %cond.false.5135 ]
  store i64 %cond5138, i64* %nspace5131, align 8
  %3177 = load i64, i64* %width, align 8
  %tobool5139 = icmp ne i64 %3177, 0
  br i1 %tobool5139, label %land.lhs.true.5140, label %if.end.5160

land.lhs.true.5140:                               ; preds = %cond.end.5137
  %3178 = load i32, i32* %justification, align 4
  %cmp5141 = icmp sgt i32 %3178, 0
  br i1 %cmp5141, label %if.then.5143, label %if.end.5160

if.then.5143:                                     ; preds = %land.lhs.true.5140
  br label %for.cond.5144

for.cond.5144:                                    ; preds = %for.inc.5157, %if.then.5143
  %3179 = load i64, i64* %nspace5131, align 8
  %tobool5145 = icmp ne i64 %3179, 0
  br i1 %tobool5145, label %for.body.5146, label %for.end.5159

for.body.5146:                                    ; preds = %for.cond.5144
  %3180 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3180, %struct.obstack** %__o5147, align 8
  %3181 = load %struct.obstack*, %struct.obstack** %__o5147, align 8
  %next_free5148 = getelementptr inbounds %struct.obstack, %struct.obstack* %3181, i32 0, i32 3
  %3182 = load i8*, i8** %next_free5148, align 8
  %add.ptr5149 = getelementptr inbounds i8, i8* %3182, i64 1
  %3183 = load %struct.obstack*, %struct.obstack** %__o5147, align 8
  %chunk_limit5150 = getelementptr inbounds %struct.obstack, %struct.obstack* %3183, i32 0, i32 4
  %3184 = load i8*, i8** %chunk_limit5150, align 8
  %cmp5151 = icmp ugt i8* %add.ptr5149, %3184
  br i1 %cmp5151, label %if.then.5153, label %if.end.5154

if.then.5153:                                     ; preds = %for.body.5146
  %3185 = load %struct.obstack*, %struct.obstack** %__o5147, align 8
  call void @_obstack_newchunk(%struct.obstack* %3185, i32 1)
  br label %if.end.5154

if.end.5154:                                      ; preds = %if.then.5153, %for.body.5146
  %3186 = load i8, i8* %padding, align 1
  %3187 = load %struct.obstack*, %struct.obstack** %__o5147, align 8
  %next_free5155 = getelementptr inbounds %struct.obstack, %struct.obstack* %3187, i32 0, i32 3
  %3188 = load i8*, i8** %next_free5155, align 8
  %incdec.ptr5156 = getelementptr inbounds i8, i8* %3188, i32 1
  store i8* %incdec.ptr5156, i8** %next_free5155, align 8
  store i8 %3186, i8* %3188, align 1
  br label %for.inc.5157

for.inc.5157:                                     ; preds = %if.end.5154
  %3189 = load i64, i64* %nspace5131, align 8
  %dec5158 = add i64 %3189, -1
  store i64 %dec5158, i64* %nspace5131, align 8
  br label %for.cond.5144

for.end.5159:                                     ; preds = %for.cond.5144
  br label %if.end.5160

if.end.5160:                                      ; preds = %for.end.5159, %land.lhs.true.5140, %cond.end.5137
  %3190 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3190, %struct.obstack** %__o5161, align 8
  %3191 = load i64, i64* %len5128, align 8
  %conv5163 = trunc i64 %3191 to i32
  store i32 %conv5163, i32* %__len5162, align 4
  %3192 = load %struct.obstack*, %struct.obstack** %__o5161, align 8
  %next_free5164 = getelementptr inbounds %struct.obstack, %struct.obstack* %3192, i32 0, i32 3
  %3193 = load i8*, i8** %next_free5164, align 8
  %3194 = load i32, i32* %__len5162, align 4
  %idx.ext5165 = sext i32 %3194 to i64
  %add.ptr5166 = getelementptr inbounds i8, i8* %3193, i64 %idx.ext5165
  %3195 = load %struct.obstack*, %struct.obstack** %__o5161, align 8
  %chunk_limit5167 = getelementptr inbounds %struct.obstack, %struct.obstack* %3195, i32 0, i32 4
  %3196 = load i8*, i8** %chunk_limit5167, align 8
  %cmp5168 = icmp ugt i8* %add.ptr5166, %3196
  br i1 %cmp5168, label %if.then.5170, label %if.end.5171

if.then.5170:                                     ; preds = %if.end.5160
  %3197 = load %struct.obstack*, %struct.obstack** %__o5161, align 8
  %3198 = load i32, i32* %__len5162, align 4
  call void @_obstack_newchunk(%struct.obstack* %3197, i32 %3198)
  br label %if.end.5171

if.end.5171:                                      ; preds = %if.then.5170, %if.end.5160
  %3199 = load %struct.obstack*, %struct.obstack** %__o5161, align 8
  %next_free5172 = getelementptr inbounds %struct.obstack, %struct.obstack* %3199, i32 0, i32 3
  %3200 = load i8*, i8** %next_free5172, align 8
  %arraydecay5173 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3201 = load i32, i32* %__len5162, align 4
  %conv5174 = sext i32 %3201 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3200, i8* %arraydecay5173, i64 %conv5174, i32 1, i1 false)
  %3202 = load i32, i32* %__len5162, align 4
  %3203 = load %struct.obstack*, %struct.obstack** %__o5161, align 8
  %next_free5175 = getelementptr inbounds %struct.obstack, %struct.obstack* %3203, i32 0, i32 3
  %3204 = load i8*, i8** %next_free5175, align 8
  %idx.ext5176 = sext i32 %3202 to i64
  %add.ptr5177 = getelementptr inbounds i8, i8* %3204, i64 %idx.ext5176
  store i8* %add.ptr5177, i8** %next_free5175, align 8
  %3205 = load i64, i64* %width, align 8
  %tobool5178 = icmp ne i64 %3205, 0
  br i1 %tobool5178, label %land.lhs.true.5179, label %if.end.5199

land.lhs.true.5179:                               ; preds = %if.end.5171
  %3206 = load i32, i32* %justification, align 4
  %cmp5180 = icmp slt i32 %3206, 0
  br i1 %cmp5180, label %if.then.5182, label %if.end.5199

if.then.5182:                                     ; preds = %land.lhs.true.5179
  br label %for.cond.5183

for.cond.5183:                                    ; preds = %for.inc.5196, %if.then.5182
  %3207 = load i64, i64* %nspace5131, align 8
  %tobool5184 = icmp ne i64 %3207, 0
  br i1 %tobool5184, label %for.body.5185, label %for.end.5198

for.body.5185:                                    ; preds = %for.cond.5183
  %3208 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3208, %struct.obstack** %__o5186, align 8
  %3209 = load %struct.obstack*, %struct.obstack** %__o5186, align 8
  %next_free5187 = getelementptr inbounds %struct.obstack, %struct.obstack* %3209, i32 0, i32 3
  %3210 = load i8*, i8** %next_free5187, align 8
  %add.ptr5188 = getelementptr inbounds i8, i8* %3210, i64 1
  %3211 = load %struct.obstack*, %struct.obstack** %__o5186, align 8
  %chunk_limit5189 = getelementptr inbounds %struct.obstack, %struct.obstack* %3211, i32 0, i32 4
  %3212 = load i8*, i8** %chunk_limit5189, align 8
  %cmp5190 = icmp ugt i8* %add.ptr5188, %3212
  br i1 %cmp5190, label %if.then.5192, label %if.end.5193

if.then.5192:                                     ; preds = %for.body.5185
  %3213 = load %struct.obstack*, %struct.obstack** %__o5186, align 8
  call void @_obstack_newchunk(%struct.obstack* %3213, i32 1)
  br label %if.end.5193

if.end.5193:                                      ; preds = %if.then.5192, %for.body.5185
  %3214 = load i8, i8* %padding, align 1
  %3215 = load %struct.obstack*, %struct.obstack** %__o5186, align 8
  %next_free5194 = getelementptr inbounds %struct.obstack, %struct.obstack* %3215, i32 0, i32 3
  %3216 = load i8*, i8** %next_free5194, align 8
  %incdec.ptr5195 = getelementptr inbounds i8, i8* %3216, i32 1
  store i8* %incdec.ptr5195, i8** %next_free5194, align 8
  store i8 %3214, i8* %3216, align 1
  br label %for.inc.5196

for.inc.5196:                                     ; preds = %if.end.5193
  %3217 = load i64, i64* %nspace5131, align 8
  %dec5197 = add i64 %3217, -1
  store i64 %dec5197, i64* %nspace5131, align 8
  br label %for.cond.5183

for.end.5198:                                     ; preds = %for.cond.5183
  br label %if.end.5199

if.end.5199:                                      ; preds = %for.end.5198, %land.lhs.true.5179, %if.end.5171
  br label %do.end.5200

do.end.5200:                                      ; preds = %if.end.5199
  br label %sw.epilog.5570

sw.bb.5201:                                       ; preds = %sw.bb.5120
  %arraydecay5202 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3218 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %sheets5203 = getelementptr inbounds %struct.file_job, %struct.file_job* %3218, i32 0, i32 13
  %3219 = load i32, i32* %sheets5203, align 4
  %call5204 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3219) #5
  br label %do.body.5205

do.body.5205:                                     ; preds = %sw.bb.5201
  %arraydecay5207 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5208 = call i64 @strlen(i8* %arraydecay5207) #6
  store i64 %call5208, i64* %len5206, align 8
  %3220 = load i64, i64* %len5206, align 8
  %3221 = load i64, i64* %width, align 8
  %cmp5210 = icmp ugt i64 %3220, %3221
  br i1 %cmp5210, label %cond.true.5212, label %cond.false.5213

cond.true.5212:                                   ; preds = %do.body.5205
  br label %cond.end.5215

cond.false.5213:                                  ; preds = %do.body.5205
  %3222 = load i64, i64* %width, align 8
  %3223 = load i64, i64* %len5206, align 8
  %sub5214 = sub i64 %3222, %3223
  br label %cond.end.5215

cond.end.5215:                                    ; preds = %cond.false.5213, %cond.true.5212
  %cond5216 = phi i64 [ 0, %cond.true.5212 ], [ %sub5214, %cond.false.5213 ]
  store i64 %cond5216, i64* %nspace5209, align 8
  %3224 = load i64, i64* %width, align 8
  %tobool5217 = icmp ne i64 %3224, 0
  br i1 %tobool5217, label %land.lhs.true.5218, label %if.end.5238

land.lhs.true.5218:                               ; preds = %cond.end.5215
  %3225 = load i32, i32* %justification, align 4
  %cmp5219 = icmp sgt i32 %3225, 0
  br i1 %cmp5219, label %if.then.5221, label %if.end.5238

if.then.5221:                                     ; preds = %land.lhs.true.5218
  br label %for.cond.5222

for.cond.5222:                                    ; preds = %for.inc.5235, %if.then.5221
  %3226 = load i64, i64* %nspace5209, align 8
  %tobool5223 = icmp ne i64 %3226, 0
  br i1 %tobool5223, label %for.body.5224, label %for.end.5237

for.body.5224:                                    ; preds = %for.cond.5222
  %3227 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3227, %struct.obstack** %__o5225, align 8
  %3228 = load %struct.obstack*, %struct.obstack** %__o5225, align 8
  %next_free5226 = getelementptr inbounds %struct.obstack, %struct.obstack* %3228, i32 0, i32 3
  %3229 = load i8*, i8** %next_free5226, align 8
  %add.ptr5227 = getelementptr inbounds i8, i8* %3229, i64 1
  %3230 = load %struct.obstack*, %struct.obstack** %__o5225, align 8
  %chunk_limit5228 = getelementptr inbounds %struct.obstack, %struct.obstack* %3230, i32 0, i32 4
  %3231 = load i8*, i8** %chunk_limit5228, align 8
  %cmp5229 = icmp ugt i8* %add.ptr5227, %3231
  br i1 %cmp5229, label %if.then.5231, label %if.end.5232

if.then.5231:                                     ; preds = %for.body.5224
  %3232 = load %struct.obstack*, %struct.obstack** %__o5225, align 8
  call void @_obstack_newchunk(%struct.obstack* %3232, i32 1)
  br label %if.end.5232

if.end.5232:                                      ; preds = %if.then.5231, %for.body.5224
  %3233 = load i8, i8* %padding, align 1
  %3234 = load %struct.obstack*, %struct.obstack** %__o5225, align 8
  %next_free5233 = getelementptr inbounds %struct.obstack, %struct.obstack* %3234, i32 0, i32 3
  %3235 = load i8*, i8** %next_free5233, align 8
  %incdec.ptr5234 = getelementptr inbounds i8, i8* %3235, i32 1
  store i8* %incdec.ptr5234, i8** %next_free5233, align 8
  store i8 %3233, i8* %3235, align 1
  br label %for.inc.5235

for.inc.5235:                                     ; preds = %if.end.5232
  %3236 = load i64, i64* %nspace5209, align 8
  %dec5236 = add i64 %3236, -1
  store i64 %dec5236, i64* %nspace5209, align 8
  br label %for.cond.5222

for.end.5237:                                     ; preds = %for.cond.5222
  br label %if.end.5238

if.end.5238:                                      ; preds = %for.end.5237, %land.lhs.true.5218, %cond.end.5215
  %3237 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3237, %struct.obstack** %__o5239, align 8
  %3238 = load i64, i64* %len5206, align 8
  %conv5241 = trunc i64 %3238 to i32
  store i32 %conv5241, i32* %__len5240, align 4
  %3239 = load %struct.obstack*, %struct.obstack** %__o5239, align 8
  %next_free5242 = getelementptr inbounds %struct.obstack, %struct.obstack* %3239, i32 0, i32 3
  %3240 = load i8*, i8** %next_free5242, align 8
  %3241 = load i32, i32* %__len5240, align 4
  %idx.ext5243 = sext i32 %3241 to i64
  %add.ptr5244 = getelementptr inbounds i8, i8* %3240, i64 %idx.ext5243
  %3242 = load %struct.obstack*, %struct.obstack** %__o5239, align 8
  %chunk_limit5245 = getelementptr inbounds %struct.obstack, %struct.obstack* %3242, i32 0, i32 4
  %3243 = load i8*, i8** %chunk_limit5245, align 8
  %cmp5246 = icmp ugt i8* %add.ptr5244, %3243
  br i1 %cmp5246, label %if.then.5248, label %if.end.5249

if.then.5248:                                     ; preds = %if.end.5238
  %3244 = load %struct.obstack*, %struct.obstack** %__o5239, align 8
  %3245 = load i32, i32* %__len5240, align 4
  call void @_obstack_newchunk(%struct.obstack* %3244, i32 %3245)
  br label %if.end.5249

if.end.5249:                                      ; preds = %if.then.5248, %if.end.5238
  %3246 = load %struct.obstack*, %struct.obstack** %__o5239, align 8
  %next_free5250 = getelementptr inbounds %struct.obstack, %struct.obstack* %3246, i32 0, i32 3
  %3247 = load i8*, i8** %next_free5250, align 8
  %arraydecay5251 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3248 = load i32, i32* %__len5240, align 4
  %conv5252 = sext i32 %3248 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3247, i8* %arraydecay5251, i64 %conv5252, i32 1, i1 false)
  %3249 = load i32, i32* %__len5240, align 4
  %3250 = load %struct.obstack*, %struct.obstack** %__o5239, align 8
  %next_free5253 = getelementptr inbounds %struct.obstack, %struct.obstack* %3250, i32 0, i32 3
  %3251 = load i8*, i8** %next_free5253, align 8
  %idx.ext5254 = sext i32 %3249 to i64
  %add.ptr5255 = getelementptr inbounds i8, i8* %3251, i64 %idx.ext5254
  store i8* %add.ptr5255, i8** %next_free5253, align 8
  %3252 = load i64, i64* %width, align 8
  %tobool5256 = icmp ne i64 %3252, 0
  br i1 %tobool5256, label %land.lhs.true.5257, label %if.end.5277

land.lhs.true.5257:                               ; preds = %if.end.5249
  %3253 = load i32, i32* %justification, align 4
  %cmp5258 = icmp slt i32 %3253, 0
  br i1 %cmp5258, label %if.then.5260, label %if.end.5277

if.then.5260:                                     ; preds = %land.lhs.true.5257
  br label %for.cond.5261

for.cond.5261:                                    ; preds = %for.inc.5274, %if.then.5260
  %3254 = load i64, i64* %nspace5209, align 8
  %tobool5262 = icmp ne i64 %3254, 0
  br i1 %tobool5262, label %for.body.5263, label %for.end.5276

for.body.5263:                                    ; preds = %for.cond.5261
  %3255 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3255, %struct.obstack** %__o5264, align 8
  %3256 = load %struct.obstack*, %struct.obstack** %__o5264, align 8
  %next_free5265 = getelementptr inbounds %struct.obstack, %struct.obstack* %3256, i32 0, i32 3
  %3257 = load i8*, i8** %next_free5265, align 8
  %add.ptr5266 = getelementptr inbounds i8, i8* %3257, i64 1
  %3258 = load %struct.obstack*, %struct.obstack** %__o5264, align 8
  %chunk_limit5267 = getelementptr inbounds %struct.obstack, %struct.obstack* %3258, i32 0, i32 4
  %3259 = load i8*, i8** %chunk_limit5267, align 8
  %cmp5268 = icmp ugt i8* %add.ptr5266, %3259
  br i1 %cmp5268, label %if.then.5270, label %if.end.5271

if.then.5270:                                     ; preds = %for.body.5263
  %3260 = load %struct.obstack*, %struct.obstack** %__o5264, align 8
  call void @_obstack_newchunk(%struct.obstack* %3260, i32 1)
  br label %if.end.5271

if.end.5271:                                      ; preds = %if.then.5270, %for.body.5263
  %3261 = load i8, i8* %padding, align 1
  %3262 = load %struct.obstack*, %struct.obstack** %__o5264, align 8
  %next_free5272 = getelementptr inbounds %struct.obstack, %struct.obstack* %3262, i32 0, i32 3
  %3263 = load i8*, i8** %next_free5272, align 8
  %incdec.ptr5273 = getelementptr inbounds i8, i8* %3263, i32 1
  store i8* %incdec.ptr5273, i8** %next_free5272, align 8
  store i8 %3261, i8* %3263, align 1
  br label %for.inc.5274

for.inc.5274:                                     ; preds = %if.end.5271
  %3264 = load i64, i64* %nspace5209, align 8
  %dec5275 = add i64 %3264, -1
  store i64 %dec5275, i64* %nspace5209, align 8
  br label %for.cond.5261

for.end.5276:                                     ; preds = %for.cond.5261
  br label %if.end.5277

if.end.5277:                                      ; preds = %for.end.5276, %land.lhs.true.5257, %if.end.5249
  br label %do.end.5278

do.end.5278:                                      ; preds = %if.end.5277
  br label %sw.epilog.5570

sw.bb.5279:                                       ; preds = %sw.bb.5120
  %3265 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3266 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5280 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3266, i32 0, i32 68
  %3267 = load %struct.darray*, %struct.darray** %jobs5280, align 8
  %len5281 = getelementptr inbounds %struct.darray, %struct.darray* %3267, i32 0, i32 5
  %3268 = load i64, i64* %len5281, align 8
  %sub5282 = sub i64 %3268, 1
  %3269 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5283 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3269, i32 0, i32 68
  %3270 = load %struct.darray*, %struct.darray** %jobs5283, align 8
  %content5284 = getelementptr inbounds %struct.darray, %struct.darray* %3270, i32 0, i32 6
  %3271 = load i8**, i8*** %content5284, align 8
  %arrayidx5285 = getelementptr inbounds i8*, i8** %3271, i64 %sub5282
  %3272 = load i8*, i8** %arrayidx5285, align 8
  %3273 = bitcast i8* %3272 to %struct.file_job*
  %cmp5286 = icmp ne %struct.file_job* %3265, %3273
  br i1 %cmp5286, label %if.then.5288, label %if.else.5365

if.then.5288:                                     ; preds = %sw.bb.5279
  %arraydecay5289 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3274 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %last_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %3274, i32 0, i32 9
  %3275 = load i32, i32* %last_sheet, align 4
  %call5290 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3275) #5
  br label %do.body.5291

do.body.5291:                                     ; preds = %if.then.5288
  %arraydecay5293 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5294 = call i64 @strlen(i8* %arraydecay5293) #6
  store i64 %call5294, i64* %len5292, align 8
  %3276 = load i64, i64* %len5292, align 8
  %3277 = load i64, i64* %width, align 8
  %cmp5296 = icmp ugt i64 %3276, %3277
  br i1 %cmp5296, label %cond.true.5298, label %cond.false.5299

cond.true.5298:                                   ; preds = %do.body.5291
  br label %cond.end.5301

cond.false.5299:                                  ; preds = %do.body.5291
  %3278 = load i64, i64* %width, align 8
  %3279 = load i64, i64* %len5292, align 8
  %sub5300 = sub i64 %3278, %3279
  br label %cond.end.5301

cond.end.5301:                                    ; preds = %cond.false.5299, %cond.true.5298
  %cond5302 = phi i64 [ 0, %cond.true.5298 ], [ %sub5300, %cond.false.5299 ]
  store i64 %cond5302, i64* %nspace5295, align 8
  %3280 = load i64, i64* %width, align 8
  %tobool5303 = icmp ne i64 %3280, 0
  br i1 %tobool5303, label %land.lhs.true.5304, label %if.end.5324

land.lhs.true.5304:                               ; preds = %cond.end.5301
  %3281 = load i32, i32* %justification, align 4
  %cmp5305 = icmp sgt i32 %3281, 0
  br i1 %cmp5305, label %if.then.5307, label %if.end.5324

if.then.5307:                                     ; preds = %land.lhs.true.5304
  br label %for.cond.5308

for.cond.5308:                                    ; preds = %for.inc.5321, %if.then.5307
  %3282 = load i64, i64* %nspace5295, align 8
  %tobool5309 = icmp ne i64 %3282, 0
  br i1 %tobool5309, label %for.body.5310, label %for.end.5323

for.body.5310:                                    ; preds = %for.cond.5308
  %3283 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3283, %struct.obstack** %__o5311, align 8
  %3284 = load %struct.obstack*, %struct.obstack** %__o5311, align 8
  %next_free5312 = getelementptr inbounds %struct.obstack, %struct.obstack* %3284, i32 0, i32 3
  %3285 = load i8*, i8** %next_free5312, align 8
  %add.ptr5313 = getelementptr inbounds i8, i8* %3285, i64 1
  %3286 = load %struct.obstack*, %struct.obstack** %__o5311, align 8
  %chunk_limit5314 = getelementptr inbounds %struct.obstack, %struct.obstack* %3286, i32 0, i32 4
  %3287 = load i8*, i8** %chunk_limit5314, align 8
  %cmp5315 = icmp ugt i8* %add.ptr5313, %3287
  br i1 %cmp5315, label %if.then.5317, label %if.end.5318

if.then.5317:                                     ; preds = %for.body.5310
  %3288 = load %struct.obstack*, %struct.obstack** %__o5311, align 8
  call void @_obstack_newchunk(%struct.obstack* %3288, i32 1)
  br label %if.end.5318

if.end.5318:                                      ; preds = %if.then.5317, %for.body.5310
  %3289 = load i8, i8* %padding, align 1
  %3290 = load %struct.obstack*, %struct.obstack** %__o5311, align 8
  %next_free5319 = getelementptr inbounds %struct.obstack, %struct.obstack* %3290, i32 0, i32 3
  %3291 = load i8*, i8** %next_free5319, align 8
  %incdec.ptr5320 = getelementptr inbounds i8, i8* %3291, i32 1
  store i8* %incdec.ptr5320, i8** %next_free5319, align 8
  store i8 %3289, i8* %3291, align 1
  br label %for.inc.5321

for.inc.5321:                                     ; preds = %if.end.5318
  %3292 = load i64, i64* %nspace5295, align 8
  %dec5322 = add i64 %3292, -1
  store i64 %dec5322, i64* %nspace5295, align 8
  br label %for.cond.5308

for.end.5323:                                     ; preds = %for.cond.5308
  br label %if.end.5324

if.end.5324:                                      ; preds = %for.end.5323, %land.lhs.true.5304, %cond.end.5301
  %3293 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3293, %struct.obstack** %__o5325, align 8
  %3294 = load i64, i64* %len5292, align 8
  %conv5327 = trunc i64 %3294 to i32
  store i32 %conv5327, i32* %__len5326, align 4
  %3295 = load %struct.obstack*, %struct.obstack** %__o5325, align 8
  %next_free5328 = getelementptr inbounds %struct.obstack, %struct.obstack* %3295, i32 0, i32 3
  %3296 = load i8*, i8** %next_free5328, align 8
  %3297 = load i32, i32* %__len5326, align 4
  %idx.ext5329 = sext i32 %3297 to i64
  %add.ptr5330 = getelementptr inbounds i8, i8* %3296, i64 %idx.ext5329
  %3298 = load %struct.obstack*, %struct.obstack** %__o5325, align 8
  %chunk_limit5331 = getelementptr inbounds %struct.obstack, %struct.obstack* %3298, i32 0, i32 4
  %3299 = load i8*, i8** %chunk_limit5331, align 8
  %cmp5332 = icmp ugt i8* %add.ptr5330, %3299
  br i1 %cmp5332, label %if.then.5334, label %if.end.5335

if.then.5334:                                     ; preds = %if.end.5324
  %3300 = load %struct.obstack*, %struct.obstack** %__o5325, align 8
  %3301 = load i32, i32* %__len5326, align 4
  call void @_obstack_newchunk(%struct.obstack* %3300, i32 %3301)
  br label %if.end.5335

if.end.5335:                                      ; preds = %if.then.5334, %if.end.5324
  %3302 = load %struct.obstack*, %struct.obstack** %__o5325, align 8
  %next_free5336 = getelementptr inbounds %struct.obstack, %struct.obstack* %3302, i32 0, i32 3
  %3303 = load i8*, i8** %next_free5336, align 8
  %arraydecay5337 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3304 = load i32, i32* %__len5326, align 4
  %conv5338 = sext i32 %3304 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3303, i8* %arraydecay5337, i64 %conv5338, i32 1, i1 false)
  %3305 = load i32, i32* %__len5326, align 4
  %3306 = load %struct.obstack*, %struct.obstack** %__o5325, align 8
  %next_free5339 = getelementptr inbounds %struct.obstack, %struct.obstack* %3306, i32 0, i32 3
  %3307 = load i8*, i8** %next_free5339, align 8
  %idx.ext5340 = sext i32 %3305 to i64
  %add.ptr5341 = getelementptr inbounds i8, i8* %3307, i64 %idx.ext5340
  store i8* %add.ptr5341, i8** %next_free5339, align 8
  %3308 = load i64, i64* %width, align 8
  %tobool5342 = icmp ne i64 %3308, 0
  br i1 %tobool5342, label %land.lhs.true.5343, label %if.end.5363

land.lhs.true.5343:                               ; preds = %if.end.5335
  %3309 = load i32, i32* %justification, align 4
  %cmp5344 = icmp slt i32 %3309, 0
  br i1 %cmp5344, label %if.then.5346, label %if.end.5363

if.then.5346:                                     ; preds = %land.lhs.true.5343
  br label %for.cond.5347

for.cond.5347:                                    ; preds = %for.inc.5360, %if.then.5346
  %3310 = load i64, i64* %nspace5295, align 8
  %tobool5348 = icmp ne i64 %3310, 0
  br i1 %tobool5348, label %for.body.5349, label %for.end.5362

for.body.5349:                                    ; preds = %for.cond.5347
  %3311 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3311, %struct.obstack** %__o5350, align 8
  %3312 = load %struct.obstack*, %struct.obstack** %__o5350, align 8
  %next_free5351 = getelementptr inbounds %struct.obstack, %struct.obstack* %3312, i32 0, i32 3
  %3313 = load i8*, i8** %next_free5351, align 8
  %add.ptr5352 = getelementptr inbounds i8, i8* %3313, i64 1
  %3314 = load %struct.obstack*, %struct.obstack** %__o5350, align 8
  %chunk_limit5353 = getelementptr inbounds %struct.obstack, %struct.obstack* %3314, i32 0, i32 4
  %3315 = load i8*, i8** %chunk_limit5353, align 8
  %cmp5354 = icmp ugt i8* %add.ptr5352, %3315
  br i1 %cmp5354, label %if.then.5356, label %if.end.5357

if.then.5356:                                     ; preds = %for.body.5349
  %3316 = load %struct.obstack*, %struct.obstack** %__o5350, align 8
  call void @_obstack_newchunk(%struct.obstack* %3316, i32 1)
  br label %if.end.5357

if.end.5357:                                      ; preds = %if.then.5356, %for.body.5349
  %3317 = load i8, i8* %padding, align 1
  %3318 = load %struct.obstack*, %struct.obstack** %__o5350, align 8
  %next_free5358 = getelementptr inbounds %struct.obstack, %struct.obstack* %3318, i32 0, i32 3
  %3319 = load i8*, i8** %next_free5358, align 8
  %incdec.ptr5359 = getelementptr inbounds i8, i8* %3319, i32 1
  store i8* %incdec.ptr5359, i8** %next_free5358, align 8
  store i8 %3317, i8* %3319, align 1
  br label %for.inc.5360

for.inc.5360:                                     ; preds = %if.end.5357
  %3320 = load i64, i64* %nspace5295, align 8
  %dec5361 = add i64 %3320, -1
  store i64 %dec5361, i64* %nspace5295, align 8
  br label %for.cond.5347

for.end.5362:                                     ; preds = %for.cond.5347
  br label %if.end.5363

if.end.5363:                                      ; preds = %for.end.5362, %land.lhs.true.5343, %if.end.5335
  br label %do.end.5364

do.end.5364:                                      ; preds = %if.end.5363
  br label %if.end.5420

if.else.5365:                                     ; preds = %sw.bb.5279
  br label %do.body.5366

do.body.5366:                                     ; preds = %if.else.5365
  %3321 = load i64, i64* %width, align 8
  %tobool5368 = icmp ne i64 %3321, 0
  br i1 %tobool5368, label %land.lhs.true.5369, label %if.end.5383

land.lhs.true.5369:                               ; preds = %do.body.5366
  %3322 = load i32, i32* %justification, align 4
  %cmp5370 = icmp slt i32 %3322, 0
  br i1 %cmp5370, label %if.then.5372, label %if.end.5383

if.then.5372:                                     ; preds = %land.lhs.true.5369
  %3323 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3323, %struct.obstack** %__o5373, align 8
  %3324 = load %struct.obstack*, %struct.obstack** %__o5373, align 8
  %next_free5374 = getelementptr inbounds %struct.obstack, %struct.obstack* %3324, i32 0, i32 3
  %3325 = load i8*, i8** %next_free5374, align 8
  %add.ptr5375 = getelementptr inbounds i8, i8* %3325, i64 1
  %3326 = load %struct.obstack*, %struct.obstack** %__o5373, align 8
  %chunk_limit5376 = getelementptr inbounds %struct.obstack, %struct.obstack* %3326, i32 0, i32 4
  %3327 = load i8*, i8** %chunk_limit5376, align 8
  %cmp5377 = icmp ugt i8* %add.ptr5375, %3327
  br i1 %cmp5377, label %if.then.5379, label %if.end.5380

if.then.5379:                                     ; preds = %if.then.5372
  %3328 = load %struct.obstack*, %struct.obstack** %__o5373, align 8
  call void @_obstack_newchunk(%struct.obstack* %3328, i32 1)
  br label %if.end.5380

if.end.5380:                                      ; preds = %if.then.5379, %if.then.5372
  %3329 = load %struct.obstack*, %struct.obstack** %__o5373, align 8
  %next_free5381 = getelementptr inbounds %struct.obstack, %struct.obstack* %3329, i32 0, i32 3
  %3330 = load i8*, i8** %next_free5381, align 8
  %incdec.ptr5382 = getelementptr inbounds i8, i8* %3330, i32 1
  store i8* %incdec.ptr5382, i8** %next_free5381, align 8
  store i8 8, i8* %3330, align 1
  br label %if.end.5383

if.end.5383:                                      ; preds = %if.end.5380, %land.lhs.true.5369, %do.body.5366
  store i32 0, i32* %a5367, align 4
  br label %for.cond.5384

for.cond.5384:                                    ; preds = %for.inc.5400, %if.end.5383
  %3331 = load i32, i32* %a5367, align 4
  %3332 = load i64, i64* %width, align 8
  %conv5385 = trunc i64 %3332 to i32
  %sub5386 = sub nsw i32 %conv5385, 1
  %cmp5387 = icmp slt i32 %3331, %sub5386
  br i1 %cmp5387, label %for.body.5389, label %for.end.5402

for.body.5389:                                    ; preds = %for.cond.5384
  %3333 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3333, %struct.obstack** %__o5390, align 8
  %3334 = load %struct.obstack*, %struct.obstack** %__o5390, align 8
  %next_free5391 = getelementptr inbounds %struct.obstack, %struct.obstack* %3334, i32 0, i32 3
  %3335 = load i8*, i8** %next_free5391, align 8
  %add.ptr5392 = getelementptr inbounds i8, i8* %3335, i64 1
  %3336 = load %struct.obstack*, %struct.obstack** %__o5390, align 8
  %chunk_limit5393 = getelementptr inbounds %struct.obstack, %struct.obstack* %3336, i32 0, i32 4
  %3337 = load i8*, i8** %chunk_limit5393, align 8
  %cmp5394 = icmp ugt i8* %add.ptr5392, %3337
  br i1 %cmp5394, label %if.then.5396, label %if.end.5397

if.then.5396:                                     ; preds = %for.body.5389
  %3338 = load %struct.obstack*, %struct.obstack** %__o5390, align 8
  call void @_obstack_newchunk(%struct.obstack* %3338, i32 1)
  br label %if.end.5397

if.end.5397:                                      ; preds = %if.then.5396, %for.body.5389
  %3339 = load i8, i8* %padding, align 1
  %3340 = load %struct.obstack*, %struct.obstack** %__o5390, align 8
  %next_free5398 = getelementptr inbounds %struct.obstack, %struct.obstack* %3340, i32 0, i32 3
  %3341 = load i8*, i8** %next_free5398, align 8
  %incdec.ptr5399 = getelementptr inbounds i8, i8* %3341, i32 1
  store i8* %incdec.ptr5399, i8** %next_free5398, align 8
  store i8 %3339, i8* %3341, align 1
  br label %for.inc.5400

for.inc.5400:                                     ; preds = %if.end.5397
  %3342 = load i32, i32* %a5367, align 4
  %inc5401 = add nsw i32 %3342, 1
  store i32 %inc5401, i32* %a5367, align 4
  br label %for.cond.5384

for.end.5402:                                     ; preds = %for.cond.5384
  %3343 = load i64, i64* %width, align 8
  %tobool5403 = icmp ne i64 %3343, 0
  br i1 %tobool5403, label %lor.lhs.false.5404, label %if.then.5407

lor.lhs.false.5404:                               ; preds = %for.end.5402
  %3344 = load i32, i32* %justification, align 4
  %cmp5405 = icmp sgt i32 %3344, 0
  br i1 %cmp5405, label %if.then.5407, label %if.end.5418

if.then.5407:                                     ; preds = %lor.lhs.false.5404, %for.end.5402
  %3345 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3345, %struct.obstack** %__o5408, align 8
  %3346 = load %struct.obstack*, %struct.obstack** %__o5408, align 8
  %next_free5409 = getelementptr inbounds %struct.obstack, %struct.obstack* %3346, i32 0, i32 3
  %3347 = load i8*, i8** %next_free5409, align 8
  %add.ptr5410 = getelementptr inbounds i8, i8* %3347, i64 1
  %3348 = load %struct.obstack*, %struct.obstack** %__o5408, align 8
  %chunk_limit5411 = getelementptr inbounds %struct.obstack, %struct.obstack* %3348, i32 0, i32 4
  %3349 = load i8*, i8** %chunk_limit5411, align 8
  %cmp5412 = icmp ugt i8* %add.ptr5410, %3349
  br i1 %cmp5412, label %if.then.5414, label %if.end.5415

if.then.5414:                                     ; preds = %if.then.5407
  %3350 = load %struct.obstack*, %struct.obstack** %__o5408, align 8
  call void @_obstack_newchunk(%struct.obstack* %3350, i32 1)
  br label %if.end.5415

if.end.5415:                                      ; preds = %if.then.5414, %if.then.5407
  %3351 = load %struct.obstack*, %struct.obstack** %__o5408, align 8
  %next_free5416 = getelementptr inbounds %struct.obstack, %struct.obstack* %3351, i32 0, i32 3
  %3352 = load i8*, i8** %next_free5416, align 8
  %incdec.ptr5417 = getelementptr inbounds i8, i8* %3352, i32 1
  store i8* %incdec.ptr5417, i8** %next_free5416, align 8
  store i8 8, i8* %3352, align 1
  br label %if.end.5418

if.end.5418:                                      ; preds = %if.end.5415, %lor.lhs.false.5404
  br label %do.end.5419

do.end.5419:                                      ; preds = %if.end.5418
  br label %if.end.5420

if.end.5420:                                      ; preds = %do.end.5419, %do.end.5364
  br label %sw.epilog.5570

sw.bb.5421:                                       ; preds = %sw.bb.5120
  %3353 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3354 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5422 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3354, i32 0, i32 68
  %3355 = load %struct.darray*, %struct.darray** %jobs5422, align 8
  %len5423 = getelementptr inbounds %struct.darray, %struct.darray* %3355, i32 0, i32 5
  %3356 = load i64, i64* %len5423, align 8
  %sub5424 = sub i64 %3356, 1
  %3357 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5425 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3357, i32 0, i32 68
  %3358 = load %struct.darray*, %struct.darray** %jobs5425, align 8
  %content5426 = getelementptr inbounds %struct.darray, %struct.darray* %3358, i32 0, i32 6
  %3359 = load i8**, i8*** %content5426, align 8
  %arrayidx5427 = getelementptr inbounds i8*, i8** %3359, i64 %sub5424
  %3360 = load i8*, i8** %arrayidx5427, align 8
  %3361 = bitcast i8* %3360 to %struct.file_job*
  %cmp5428 = icmp ne %struct.file_job* %3353, %3361
  br i1 %cmp5428, label %if.then.5430, label %if.else.5508

if.then.5430:                                     ; preds = %sw.bb.5421
  %arraydecay5431 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3362 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %sheets5432 = getelementptr inbounds %struct.file_job, %struct.file_job* %3362, i32 0, i32 13
  %3363 = load i32, i32* %sheets5432, align 4
  %call5433 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5431, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3363) #5
  br label %do.body.5434

do.body.5434:                                     ; preds = %if.then.5430
  %arraydecay5436 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5437 = call i64 @strlen(i8* %arraydecay5436) #6
  store i64 %call5437, i64* %len5435, align 8
  %3364 = load i64, i64* %len5435, align 8
  %3365 = load i64, i64* %width, align 8
  %cmp5439 = icmp ugt i64 %3364, %3365
  br i1 %cmp5439, label %cond.true.5441, label %cond.false.5442

cond.true.5441:                                   ; preds = %do.body.5434
  br label %cond.end.5444

cond.false.5442:                                  ; preds = %do.body.5434
  %3366 = load i64, i64* %width, align 8
  %3367 = load i64, i64* %len5435, align 8
  %sub5443 = sub i64 %3366, %3367
  br label %cond.end.5444

cond.end.5444:                                    ; preds = %cond.false.5442, %cond.true.5441
  %cond5445 = phi i64 [ 0, %cond.true.5441 ], [ %sub5443, %cond.false.5442 ]
  store i64 %cond5445, i64* %nspace5438, align 8
  %3368 = load i64, i64* %width, align 8
  %tobool5446 = icmp ne i64 %3368, 0
  br i1 %tobool5446, label %land.lhs.true.5447, label %if.end.5467

land.lhs.true.5447:                               ; preds = %cond.end.5444
  %3369 = load i32, i32* %justification, align 4
  %cmp5448 = icmp sgt i32 %3369, 0
  br i1 %cmp5448, label %if.then.5450, label %if.end.5467

if.then.5450:                                     ; preds = %land.lhs.true.5447
  br label %for.cond.5451

for.cond.5451:                                    ; preds = %for.inc.5464, %if.then.5450
  %3370 = load i64, i64* %nspace5438, align 8
  %tobool5452 = icmp ne i64 %3370, 0
  br i1 %tobool5452, label %for.body.5453, label %for.end.5466

for.body.5453:                                    ; preds = %for.cond.5451
  %3371 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3371, %struct.obstack** %__o5454, align 8
  %3372 = load %struct.obstack*, %struct.obstack** %__o5454, align 8
  %next_free5455 = getelementptr inbounds %struct.obstack, %struct.obstack* %3372, i32 0, i32 3
  %3373 = load i8*, i8** %next_free5455, align 8
  %add.ptr5456 = getelementptr inbounds i8, i8* %3373, i64 1
  %3374 = load %struct.obstack*, %struct.obstack** %__o5454, align 8
  %chunk_limit5457 = getelementptr inbounds %struct.obstack, %struct.obstack* %3374, i32 0, i32 4
  %3375 = load i8*, i8** %chunk_limit5457, align 8
  %cmp5458 = icmp ugt i8* %add.ptr5456, %3375
  br i1 %cmp5458, label %if.then.5460, label %if.end.5461

if.then.5460:                                     ; preds = %for.body.5453
  %3376 = load %struct.obstack*, %struct.obstack** %__o5454, align 8
  call void @_obstack_newchunk(%struct.obstack* %3376, i32 1)
  br label %if.end.5461

if.end.5461:                                      ; preds = %if.then.5460, %for.body.5453
  %3377 = load i8, i8* %padding, align 1
  %3378 = load %struct.obstack*, %struct.obstack** %__o5454, align 8
  %next_free5462 = getelementptr inbounds %struct.obstack, %struct.obstack* %3378, i32 0, i32 3
  %3379 = load i8*, i8** %next_free5462, align 8
  %incdec.ptr5463 = getelementptr inbounds i8, i8* %3379, i32 1
  store i8* %incdec.ptr5463, i8** %next_free5462, align 8
  store i8 %3377, i8* %3379, align 1
  br label %for.inc.5464

for.inc.5464:                                     ; preds = %if.end.5461
  %3380 = load i64, i64* %nspace5438, align 8
  %dec5465 = add i64 %3380, -1
  store i64 %dec5465, i64* %nspace5438, align 8
  br label %for.cond.5451

for.end.5466:                                     ; preds = %for.cond.5451
  br label %if.end.5467

if.end.5467:                                      ; preds = %for.end.5466, %land.lhs.true.5447, %cond.end.5444
  %3381 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3381, %struct.obstack** %__o5468, align 8
  %3382 = load i64, i64* %len5435, align 8
  %conv5470 = trunc i64 %3382 to i32
  store i32 %conv5470, i32* %__len5469, align 4
  %3383 = load %struct.obstack*, %struct.obstack** %__o5468, align 8
  %next_free5471 = getelementptr inbounds %struct.obstack, %struct.obstack* %3383, i32 0, i32 3
  %3384 = load i8*, i8** %next_free5471, align 8
  %3385 = load i32, i32* %__len5469, align 4
  %idx.ext5472 = sext i32 %3385 to i64
  %add.ptr5473 = getelementptr inbounds i8, i8* %3384, i64 %idx.ext5472
  %3386 = load %struct.obstack*, %struct.obstack** %__o5468, align 8
  %chunk_limit5474 = getelementptr inbounds %struct.obstack, %struct.obstack* %3386, i32 0, i32 4
  %3387 = load i8*, i8** %chunk_limit5474, align 8
  %cmp5475 = icmp ugt i8* %add.ptr5473, %3387
  br i1 %cmp5475, label %if.then.5477, label %if.end.5478

if.then.5477:                                     ; preds = %if.end.5467
  %3388 = load %struct.obstack*, %struct.obstack** %__o5468, align 8
  %3389 = load i32, i32* %__len5469, align 4
  call void @_obstack_newchunk(%struct.obstack* %3388, i32 %3389)
  br label %if.end.5478

if.end.5478:                                      ; preds = %if.then.5477, %if.end.5467
  %3390 = load %struct.obstack*, %struct.obstack** %__o5468, align 8
  %next_free5479 = getelementptr inbounds %struct.obstack, %struct.obstack* %3390, i32 0, i32 3
  %3391 = load i8*, i8** %next_free5479, align 8
  %arraydecay5480 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3392 = load i32, i32* %__len5469, align 4
  %conv5481 = sext i32 %3392 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3391, i8* %arraydecay5480, i64 %conv5481, i32 1, i1 false)
  %3393 = load i32, i32* %__len5469, align 4
  %3394 = load %struct.obstack*, %struct.obstack** %__o5468, align 8
  %next_free5482 = getelementptr inbounds %struct.obstack, %struct.obstack* %3394, i32 0, i32 3
  %3395 = load i8*, i8** %next_free5482, align 8
  %idx.ext5483 = sext i32 %3393 to i64
  %add.ptr5484 = getelementptr inbounds i8, i8* %3395, i64 %idx.ext5483
  store i8* %add.ptr5484, i8** %next_free5482, align 8
  %3396 = load i64, i64* %width, align 8
  %tobool5485 = icmp ne i64 %3396, 0
  br i1 %tobool5485, label %land.lhs.true.5486, label %if.end.5506

land.lhs.true.5486:                               ; preds = %if.end.5478
  %3397 = load i32, i32* %justification, align 4
  %cmp5487 = icmp slt i32 %3397, 0
  br i1 %cmp5487, label %if.then.5489, label %if.end.5506

if.then.5489:                                     ; preds = %land.lhs.true.5486
  br label %for.cond.5490

for.cond.5490:                                    ; preds = %for.inc.5503, %if.then.5489
  %3398 = load i64, i64* %nspace5438, align 8
  %tobool5491 = icmp ne i64 %3398, 0
  br i1 %tobool5491, label %for.body.5492, label %for.end.5505

for.body.5492:                                    ; preds = %for.cond.5490
  %3399 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3399, %struct.obstack** %__o5493, align 8
  %3400 = load %struct.obstack*, %struct.obstack** %__o5493, align 8
  %next_free5494 = getelementptr inbounds %struct.obstack, %struct.obstack* %3400, i32 0, i32 3
  %3401 = load i8*, i8** %next_free5494, align 8
  %add.ptr5495 = getelementptr inbounds i8, i8* %3401, i64 1
  %3402 = load %struct.obstack*, %struct.obstack** %__o5493, align 8
  %chunk_limit5496 = getelementptr inbounds %struct.obstack, %struct.obstack* %3402, i32 0, i32 4
  %3403 = load i8*, i8** %chunk_limit5496, align 8
  %cmp5497 = icmp ugt i8* %add.ptr5495, %3403
  br i1 %cmp5497, label %if.then.5499, label %if.end.5500

if.then.5499:                                     ; preds = %for.body.5492
  %3404 = load %struct.obstack*, %struct.obstack** %__o5493, align 8
  call void @_obstack_newchunk(%struct.obstack* %3404, i32 1)
  br label %if.end.5500

if.end.5500:                                      ; preds = %if.then.5499, %for.body.5492
  %3405 = load i8, i8* %padding, align 1
  %3406 = load %struct.obstack*, %struct.obstack** %__o5493, align 8
  %next_free5501 = getelementptr inbounds %struct.obstack, %struct.obstack* %3406, i32 0, i32 3
  %3407 = load i8*, i8** %next_free5501, align 8
  %incdec.ptr5502 = getelementptr inbounds i8, i8* %3407, i32 1
  store i8* %incdec.ptr5502, i8** %next_free5501, align 8
  store i8 %3405, i8* %3407, align 1
  br label %for.inc.5503

for.inc.5503:                                     ; preds = %if.end.5500
  %3408 = load i64, i64* %nspace5438, align 8
  %dec5504 = add i64 %3408, -1
  store i64 %dec5504, i64* %nspace5438, align 8
  br label %for.cond.5490

for.end.5505:                                     ; preds = %for.cond.5490
  br label %if.end.5506

if.end.5506:                                      ; preds = %for.end.5505, %land.lhs.true.5486, %if.end.5478
  br label %do.end.5507

do.end.5507:                                      ; preds = %if.end.5506
  br label %if.end.5563

if.else.5508:                                     ; preds = %sw.bb.5421
  br label %do.body.5509

do.body.5509:                                     ; preds = %if.else.5508
  %3409 = load i64, i64* %width, align 8
  %tobool5511 = icmp ne i64 %3409, 0
  br i1 %tobool5511, label %land.lhs.true.5512, label %if.end.5526

land.lhs.true.5512:                               ; preds = %do.body.5509
  %3410 = load i32, i32* %justification, align 4
  %cmp5513 = icmp slt i32 %3410, 0
  br i1 %cmp5513, label %if.then.5515, label %if.end.5526

if.then.5515:                                     ; preds = %land.lhs.true.5512
  %3411 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3411, %struct.obstack** %__o5516, align 8
  %3412 = load %struct.obstack*, %struct.obstack** %__o5516, align 8
  %next_free5517 = getelementptr inbounds %struct.obstack, %struct.obstack* %3412, i32 0, i32 3
  %3413 = load i8*, i8** %next_free5517, align 8
  %add.ptr5518 = getelementptr inbounds i8, i8* %3413, i64 1
  %3414 = load %struct.obstack*, %struct.obstack** %__o5516, align 8
  %chunk_limit5519 = getelementptr inbounds %struct.obstack, %struct.obstack* %3414, i32 0, i32 4
  %3415 = load i8*, i8** %chunk_limit5519, align 8
  %cmp5520 = icmp ugt i8* %add.ptr5518, %3415
  br i1 %cmp5520, label %if.then.5522, label %if.end.5523

if.then.5522:                                     ; preds = %if.then.5515
  %3416 = load %struct.obstack*, %struct.obstack** %__o5516, align 8
  call void @_obstack_newchunk(%struct.obstack* %3416, i32 1)
  br label %if.end.5523

if.end.5523:                                      ; preds = %if.then.5522, %if.then.5515
  %3417 = load %struct.obstack*, %struct.obstack** %__o5516, align 8
  %next_free5524 = getelementptr inbounds %struct.obstack, %struct.obstack* %3417, i32 0, i32 3
  %3418 = load i8*, i8** %next_free5524, align 8
  %incdec.ptr5525 = getelementptr inbounds i8, i8* %3418, i32 1
  store i8* %incdec.ptr5525, i8** %next_free5524, align 8
  store i8 5, i8* %3418, align 1
  br label %if.end.5526

if.end.5526:                                      ; preds = %if.end.5523, %land.lhs.true.5512, %do.body.5509
  store i32 0, i32* %a5510, align 4
  br label %for.cond.5527

for.cond.5527:                                    ; preds = %for.inc.5543, %if.end.5526
  %3419 = load i32, i32* %a5510, align 4
  %3420 = load i64, i64* %width, align 8
  %conv5528 = trunc i64 %3420 to i32
  %sub5529 = sub nsw i32 %conv5528, 1
  %cmp5530 = icmp slt i32 %3419, %sub5529
  br i1 %cmp5530, label %for.body.5532, label %for.end.5545

for.body.5532:                                    ; preds = %for.cond.5527
  %3421 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3421, %struct.obstack** %__o5533, align 8
  %3422 = load %struct.obstack*, %struct.obstack** %__o5533, align 8
  %next_free5534 = getelementptr inbounds %struct.obstack, %struct.obstack* %3422, i32 0, i32 3
  %3423 = load i8*, i8** %next_free5534, align 8
  %add.ptr5535 = getelementptr inbounds i8, i8* %3423, i64 1
  %3424 = load %struct.obstack*, %struct.obstack** %__o5533, align 8
  %chunk_limit5536 = getelementptr inbounds %struct.obstack, %struct.obstack* %3424, i32 0, i32 4
  %3425 = load i8*, i8** %chunk_limit5536, align 8
  %cmp5537 = icmp ugt i8* %add.ptr5535, %3425
  br i1 %cmp5537, label %if.then.5539, label %if.end.5540

if.then.5539:                                     ; preds = %for.body.5532
  %3426 = load %struct.obstack*, %struct.obstack** %__o5533, align 8
  call void @_obstack_newchunk(%struct.obstack* %3426, i32 1)
  br label %if.end.5540

if.end.5540:                                      ; preds = %if.then.5539, %for.body.5532
  %3427 = load i8, i8* %padding, align 1
  %3428 = load %struct.obstack*, %struct.obstack** %__o5533, align 8
  %next_free5541 = getelementptr inbounds %struct.obstack, %struct.obstack* %3428, i32 0, i32 3
  %3429 = load i8*, i8** %next_free5541, align 8
  %incdec.ptr5542 = getelementptr inbounds i8, i8* %3429, i32 1
  store i8* %incdec.ptr5542, i8** %next_free5541, align 8
  store i8 %3427, i8* %3429, align 1
  br label %for.inc.5543

for.inc.5543:                                     ; preds = %if.end.5540
  %3430 = load i32, i32* %a5510, align 4
  %inc5544 = add nsw i32 %3430, 1
  store i32 %inc5544, i32* %a5510, align 4
  br label %for.cond.5527

for.end.5545:                                     ; preds = %for.cond.5527
  %3431 = load i64, i64* %width, align 8
  %tobool5546 = icmp ne i64 %3431, 0
  br i1 %tobool5546, label %lor.lhs.false.5547, label %if.then.5550

lor.lhs.false.5547:                               ; preds = %for.end.5545
  %3432 = load i32, i32* %justification, align 4
  %cmp5548 = icmp sgt i32 %3432, 0
  br i1 %cmp5548, label %if.then.5550, label %if.end.5561

if.then.5550:                                     ; preds = %lor.lhs.false.5547, %for.end.5545
  %3433 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3433, %struct.obstack** %__o5551, align 8
  %3434 = load %struct.obstack*, %struct.obstack** %__o5551, align 8
  %next_free5552 = getelementptr inbounds %struct.obstack, %struct.obstack* %3434, i32 0, i32 3
  %3435 = load i8*, i8** %next_free5552, align 8
  %add.ptr5553 = getelementptr inbounds i8, i8* %3435, i64 1
  %3436 = load %struct.obstack*, %struct.obstack** %__o5551, align 8
  %chunk_limit5554 = getelementptr inbounds %struct.obstack, %struct.obstack* %3436, i32 0, i32 4
  %3437 = load i8*, i8** %chunk_limit5554, align 8
  %cmp5555 = icmp ugt i8* %add.ptr5553, %3437
  br i1 %cmp5555, label %if.then.5557, label %if.end.5558

if.then.5557:                                     ; preds = %if.then.5550
  %3438 = load %struct.obstack*, %struct.obstack** %__o5551, align 8
  call void @_obstack_newchunk(%struct.obstack* %3438, i32 1)
  br label %if.end.5558

if.end.5558:                                      ; preds = %if.then.5557, %if.then.5550
  %3439 = load %struct.obstack*, %struct.obstack** %__o5551, align 8
  %next_free5559 = getelementptr inbounds %struct.obstack, %struct.obstack* %3439, i32 0, i32 3
  %3440 = load i8*, i8** %next_free5559, align 8
  %incdec.ptr5560 = getelementptr inbounds i8, i8* %3440, i32 1
  store i8* %incdec.ptr5560, i8** %next_free5559, align 8
  store i8 5, i8* %3440, align 1
  br label %if.end.5561

if.end.5561:                                      ; preds = %if.end.5558, %lor.lhs.false.5547
  br label %do.end.5562

do.end.5562:                                      ; preds = %if.end.5561
  br label %if.end.5563

if.end.5563:                                      ; preds = %do.end.5562, %do.end.5507
  br label %sw.epilog.5570

sw.default.5564:                                  ; preds = %sw.bb.5120
  %call5565 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %3441 = load i8*, i8** %context_name.addr, align 8
  %3442 = load i64, i64* %i, align 8
  %3443 = load i8*, i8** %str.addr, align 8
  %arrayidx5566 = getelementptr inbounds i8, i8* %3443, i64 %3442
  %3444 = load i8, i8* %arrayidx5566, align 1
  %conv5567 = zext i8 %3444 to i32
  %3445 = load i64, i64* %i, align 8
  %3446 = load i8*, i8** %str.addr, align 8
  %arrayidx5568 = getelementptr inbounds i8, i8* %3446, i64 %3445
  %3447 = load i8, i8* %arrayidx5568, align 1
  %conv5569 = zext i8 %3447 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call5565, i8* %3441, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 %conv5567, i32 %conv5569)
  br label %sw.epilog.5570

sw.epilog.5570:                                   ; preds = %sw.default.5564, %if.end.5563, %if.end.5420, %do.end.5278, %do.end.5200
  br label %sw.epilog.6153

sw.bb.5571:                                       ; preds = %sw.bb.2280
  %3448 = load i64, i64* %i, align 8
  %add5572 = add i64 %3448, 1
  %3449 = load i8*, i8** %str.addr, align 8
  %arrayidx5573 = getelementptr inbounds i8, i8* %3449, i64 %add5572
  %3450 = load i8, i8* %arrayidx5573, align 1
  %conv5574 = zext i8 %3450 to i32
  switch i32 %conv5574, label %sw.default.5883 [
    i32 49, label %sw.bb.5575
    i32 50, label %sw.bb.5652
    i32 51, label %sw.bb.5729
    i32 52, label %sw.bb.5806
  ]

sw.bb.5575:                                       ; preds = %sw.bb.5571
  %3451 = load i64, i64* %i, align 8
  %inc5576 = add i64 %3451, 1
  store i64 %inc5576, i64* %i, align 8
  br label %do.body.5577

do.body.5577:                                     ; preds = %sw.bb.5575
  %3452 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3452, i32 0, i32 59
  %arraydecay5579 = getelementptr inbounds [256 x i8], [256 x i8]* %tag1, i32 0, i32 0
  %call5580 = call i64 @strlen(i8* %arraydecay5579) #6
  store i64 %call5580, i64* %len5578, align 8
  %3453 = load i64, i64* %len5578, align 8
  %3454 = load i64, i64* %width, align 8
  %cmp5582 = icmp ugt i64 %3453, %3454
  br i1 %cmp5582, label %cond.true.5584, label %cond.false.5585

cond.true.5584:                                   ; preds = %do.body.5577
  br label %cond.end.5587

cond.false.5585:                                  ; preds = %do.body.5577
  %3455 = load i64, i64* %width, align 8
  %3456 = load i64, i64* %len5578, align 8
  %sub5586 = sub i64 %3455, %3456
  br label %cond.end.5587

cond.end.5587:                                    ; preds = %cond.false.5585, %cond.true.5584
  %cond5588 = phi i64 [ 0, %cond.true.5584 ], [ %sub5586, %cond.false.5585 ]
  store i64 %cond5588, i64* %nspace5581, align 8
  %3457 = load i64, i64* %width, align 8
  %tobool5589 = icmp ne i64 %3457, 0
  br i1 %tobool5589, label %land.lhs.true.5590, label %if.end.5610

land.lhs.true.5590:                               ; preds = %cond.end.5587
  %3458 = load i32, i32* %justification, align 4
  %cmp5591 = icmp sgt i32 %3458, 0
  br i1 %cmp5591, label %if.then.5593, label %if.end.5610

if.then.5593:                                     ; preds = %land.lhs.true.5590
  br label %for.cond.5594

for.cond.5594:                                    ; preds = %for.inc.5607, %if.then.5593
  %3459 = load i64, i64* %nspace5581, align 8
  %tobool5595 = icmp ne i64 %3459, 0
  br i1 %tobool5595, label %for.body.5596, label %for.end.5609

for.body.5596:                                    ; preds = %for.cond.5594
  %3460 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3460, %struct.obstack** %__o5597, align 8
  %3461 = load %struct.obstack*, %struct.obstack** %__o5597, align 8
  %next_free5598 = getelementptr inbounds %struct.obstack, %struct.obstack* %3461, i32 0, i32 3
  %3462 = load i8*, i8** %next_free5598, align 8
  %add.ptr5599 = getelementptr inbounds i8, i8* %3462, i64 1
  %3463 = load %struct.obstack*, %struct.obstack** %__o5597, align 8
  %chunk_limit5600 = getelementptr inbounds %struct.obstack, %struct.obstack* %3463, i32 0, i32 4
  %3464 = load i8*, i8** %chunk_limit5600, align 8
  %cmp5601 = icmp ugt i8* %add.ptr5599, %3464
  br i1 %cmp5601, label %if.then.5603, label %if.end.5604

if.then.5603:                                     ; preds = %for.body.5596
  %3465 = load %struct.obstack*, %struct.obstack** %__o5597, align 8
  call void @_obstack_newchunk(%struct.obstack* %3465, i32 1)
  br label %if.end.5604

if.end.5604:                                      ; preds = %if.then.5603, %for.body.5596
  %3466 = load i8, i8* %padding, align 1
  %3467 = load %struct.obstack*, %struct.obstack** %__o5597, align 8
  %next_free5605 = getelementptr inbounds %struct.obstack, %struct.obstack* %3467, i32 0, i32 3
  %3468 = load i8*, i8** %next_free5605, align 8
  %incdec.ptr5606 = getelementptr inbounds i8, i8* %3468, i32 1
  store i8* %incdec.ptr5606, i8** %next_free5605, align 8
  store i8 %3466, i8* %3468, align 1
  br label %for.inc.5607

for.inc.5607:                                     ; preds = %if.end.5604
  %3469 = load i64, i64* %nspace5581, align 8
  %dec5608 = add i64 %3469, -1
  store i64 %dec5608, i64* %nspace5581, align 8
  br label %for.cond.5594

for.end.5609:                                     ; preds = %for.cond.5594
  br label %if.end.5610

if.end.5610:                                      ; preds = %for.end.5609, %land.lhs.true.5590, %cond.end.5587
  %3470 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3470, %struct.obstack** %__o5611, align 8
  %3471 = load i64, i64* %len5578, align 8
  %conv5613 = trunc i64 %3471 to i32
  store i32 %conv5613, i32* %__len5612, align 4
  %3472 = load %struct.obstack*, %struct.obstack** %__o5611, align 8
  %next_free5614 = getelementptr inbounds %struct.obstack, %struct.obstack* %3472, i32 0, i32 3
  %3473 = load i8*, i8** %next_free5614, align 8
  %3474 = load i32, i32* %__len5612, align 4
  %idx.ext5615 = sext i32 %3474 to i64
  %add.ptr5616 = getelementptr inbounds i8, i8* %3473, i64 %idx.ext5615
  %3475 = load %struct.obstack*, %struct.obstack** %__o5611, align 8
  %chunk_limit5617 = getelementptr inbounds %struct.obstack, %struct.obstack* %3475, i32 0, i32 4
  %3476 = load i8*, i8** %chunk_limit5617, align 8
  %cmp5618 = icmp ugt i8* %add.ptr5616, %3476
  br i1 %cmp5618, label %if.then.5620, label %if.end.5621

if.then.5620:                                     ; preds = %if.end.5610
  %3477 = load %struct.obstack*, %struct.obstack** %__o5611, align 8
  %3478 = load i32, i32* %__len5612, align 4
  call void @_obstack_newchunk(%struct.obstack* %3477, i32 %3478)
  br label %if.end.5621

if.end.5621:                                      ; preds = %if.then.5620, %if.end.5610
  %3479 = load %struct.obstack*, %struct.obstack** %__o5611, align 8
  %next_free5622 = getelementptr inbounds %struct.obstack, %struct.obstack* %3479, i32 0, i32 3
  %3480 = load i8*, i8** %next_free5622, align 8
  %3481 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag15623 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3481, i32 0, i32 59
  %arraydecay5624 = getelementptr inbounds [256 x i8], [256 x i8]* %tag15623, i32 0, i32 0
  %3482 = load i32, i32* %__len5612, align 4
  %conv5625 = sext i32 %3482 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3480, i8* %arraydecay5624, i64 %conv5625, i32 1, i1 false)
  %3483 = load i32, i32* %__len5612, align 4
  %3484 = load %struct.obstack*, %struct.obstack** %__o5611, align 8
  %next_free5626 = getelementptr inbounds %struct.obstack, %struct.obstack* %3484, i32 0, i32 3
  %3485 = load i8*, i8** %next_free5626, align 8
  %idx.ext5627 = sext i32 %3483 to i64
  %add.ptr5628 = getelementptr inbounds i8, i8* %3485, i64 %idx.ext5627
  store i8* %add.ptr5628, i8** %next_free5626, align 8
  %3486 = load i64, i64* %width, align 8
  %tobool5629 = icmp ne i64 %3486, 0
  br i1 %tobool5629, label %land.lhs.true.5630, label %if.end.5650

land.lhs.true.5630:                               ; preds = %if.end.5621
  %3487 = load i32, i32* %justification, align 4
  %cmp5631 = icmp slt i32 %3487, 0
  br i1 %cmp5631, label %if.then.5633, label %if.end.5650

if.then.5633:                                     ; preds = %land.lhs.true.5630
  br label %for.cond.5634

for.cond.5634:                                    ; preds = %for.inc.5647, %if.then.5633
  %3488 = load i64, i64* %nspace5581, align 8
  %tobool5635 = icmp ne i64 %3488, 0
  br i1 %tobool5635, label %for.body.5636, label %for.end.5649

for.body.5636:                                    ; preds = %for.cond.5634
  %3489 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3489, %struct.obstack** %__o5637, align 8
  %3490 = load %struct.obstack*, %struct.obstack** %__o5637, align 8
  %next_free5638 = getelementptr inbounds %struct.obstack, %struct.obstack* %3490, i32 0, i32 3
  %3491 = load i8*, i8** %next_free5638, align 8
  %add.ptr5639 = getelementptr inbounds i8, i8* %3491, i64 1
  %3492 = load %struct.obstack*, %struct.obstack** %__o5637, align 8
  %chunk_limit5640 = getelementptr inbounds %struct.obstack, %struct.obstack* %3492, i32 0, i32 4
  %3493 = load i8*, i8** %chunk_limit5640, align 8
  %cmp5641 = icmp ugt i8* %add.ptr5639, %3493
  br i1 %cmp5641, label %if.then.5643, label %if.end.5644

if.then.5643:                                     ; preds = %for.body.5636
  %3494 = load %struct.obstack*, %struct.obstack** %__o5637, align 8
  call void @_obstack_newchunk(%struct.obstack* %3494, i32 1)
  br label %if.end.5644

if.end.5644:                                      ; preds = %if.then.5643, %for.body.5636
  %3495 = load i8, i8* %padding, align 1
  %3496 = load %struct.obstack*, %struct.obstack** %__o5637, align 8
  %next_free5645 = getelementptr inbounds %struct.obstack, %struct.obstack* %3496, i32 0, i32 3
  %3497 = load i8*, i8** %next_free5645, align 8
  %incdec.ptr5646 = getelementptr inbounds i8, i8* %3497, i32 1
  store i8* %incdec.ptr5646, i8** %next_free5645, align 8
  store i8 %3495, i8* %3497, align 1
  br label %for.inc.5647

for.inc.5647:                                     ; preds = %if.end.5644
  %3498 = load i64, i64* %nspace5581, align 8
  %dec5648 = add i64 %3498, -1
  store i64 %dec5648, i64* %nspace5581, align 8
  br label %for.cond.5634

for.end.5649:                                     ; preds = %for.cond.5634
  br label %if.end.5650

if.end.5650:                                      ; preds = %for.end.5649, %land.lhs.true.5630, %if.end.5621
  br label %do.end.5651

do.end.5651:                                      ; preds = %if.end.5650
  br label %sw.epilog.5980

sw.bb.5652:                                       ; preds = %sw.bb.5571
  %3499 = load i64, i64* %i, align 8
  %inc5653 = add i64 %3499, 1
  store i64 %inc5653, i64* %i, align 8
  br label %do.body.5654

do.body.5654:                                     ; preds = %sw.bb.5652
  %3500 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3500, i32 0, i32 60
  %arraydecay5656 = getelementptr inbounds [256 x i8], [256 x i8]* %tag2, i32 0, i32 0
  %call5657 = call i64 @strlen(i8* %arraydecay5656) #6
  store i64 %call5657, i64* %len5655, align 8
  %3501 = load i64, i64* %len5655, align 8
  %3502 = load i64, i64* %width, align 8
  %cmp5659 = icmp ugt i64 %3501, %3502
  br i1 %cmp5659, label %cond.true.5661, label %cond.false.5662

cond.true.5661:                                   ; preds = %do.body.5654
  br label %cond.end.5664

cond.false.5662:                                  ; preds = %do.body.5654
  %3503 = load i64, i64* %width, align 8
  %3504 = load i64, i64* %len5655, align 8
  %sub5663 = sub i64 %3503, %3504
  br label %cond.end.5664

cond.end.5664:                                    ; preds = %cond.false.5662, %cond.true.5661
  %cond5665 = phi i64 [ 0, %cond.true.5661 ], [ %sub5663, %cond.false.5662 ]
  store i64 %cond5665, i64* %nspace5658, align 8
  %3505 = load i64, i64* %width, align 8
  %tobool5666 = icmp ne i64 %3505, 0
  br i1 %tobool5666, label %land.lhs.true.5667, label %if.end.5687

land.lhs.true.5667:                               ; preds = %cond.end.5664
  %3506 = load i32, i32* %justification, align 4
  %cmp5668 = icmp sgt i32 %3506, 0
  br i1 %cmp5668, label %if.then.5670, label %if.end.5687

if.then.5670:                                     ; preds = %land.lhs.true.5667
  br label %for.cond.5671

for.cond.5671:                                    ; preds = %for.inc.5684, %if.then.5670
  %3507 = load i64, i64* %nspace5658, align 8
  %tobool5672 = icmp ne i64 %3507, 0
  br i1 %tobool5672, label %for.body.5673, label %for.end.5686

for.body.5673:                                    ; preds = %for.cond.5671
  %3508 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3508, %struct.obstack** %__o5674, align 8
  %3509 = load %struct.obstack*, %struct.obstack** %__o5674, align 8
  %next_free5675 = getelementptr inbounds %struct.obstack, %struct.obstack* %3509, i32 0, i32 3
  %3510 = load i8*, i8** %next_free5675, align 8
  %add.ptr5676 = getelementptr inbounds i8, i8* %3510, i64 1
  %3511 = load %struct.obstack*, %struct.obstack** %__o5674, align 8
  %chunk_limit5677 = getelementptr inbounds %struct.obstack, %struct.obstack* %3511, i32 0, i32 4
  %3512 = load i8*, i8** %chunk_limit5677, align 8
  %cmp5678 = icmp ugt i8* %add.ptr5676, %3512
  br i1 %cmp5678, label %if.then.5680, label %if.end.5681

if.then.5680:                                     ; preds = %for.body.5673
  %3513 = load %struct.obstack*, %struct.obstack** %__o5674, align 8
  call void @_obstack_newchunk(%struct.obstack* %3513, i32 1)
  br label %if.end.5681

if.end.5681:                                      ; preds = %if.then.5680, %for.body.5673
  %3514 = load i8, i8* %padding, align 1
  %3515 = load %struct.obstack*, %struct.obstack** %__o5674, align 8
  %next_free5682 = getelementptr inbounds %struct.obstack, %struct.obstack* %3515, i32 0, i32 3
  %3516 = load i8*, i8** %next_free5682, align 8
  %incdec.ptr5683 = getelementptr inbounds i8, i8* %3516, i32 1
  store i8* %incdec.ptr5683, i8** %next_free5682, align 8
  store i8 %3514, i8* %3516, align 1
  br label %for.inc.5684

for.inc.5684:                                     ; preds = %if.end.5681
  %3517 = load i64, i64* %nspace5658, align 8
  %dec5685 = add i64 %3517, -1
  store i64 %dec5685, i64* %nspace5658, align 8
  br label %for.cond.5671

for.end.5686:                                     ; preds = %for.cond.5671
  br label %if.end.5687

if.end.5687:                                      ; preds = %for.end.5686, %land.lhs.true.5667, %cond.end.5664
  %3518 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3518, %struct.obstack** %__o5688, align 8
  %3519 = load i64, i64* %len5655, align 8
  %conv5690 = trunc i64 %3519 to i32
  store i32 %conv5690, i32* %__len5689, align 4
  %3520 = load %struct.obstack*, %struct.obstack** %__o5688, align 8
  %next_free5691 = getelementptr inbounds %struct.obstack, %struct.obstack* %3520, i32 0, i32 3
  %3521 = load i8*, i8** %next_free5691, align 8
  %3522 = load i32, i32* %__len5689, align 4
  %idx.ext5692 = sext i32 %3522 to i64
  %add.ptr5693 = getelementptr inbounds i8, i8* %3521, i64 %idx.ext5692
  %3523 = load %struct.obstack*, %struct.obstack** %__o5688, align 8
  %chunk_limit5694 = getelementptr inbounds %struct.obstack, %struct.obstack* %3523, i32 0, i32 4
  %3524 = load i8*, i8** %chunk_limit5694, align 8
  %cmp5695 = icmp ugt i8* %add.ptr5693, %3524
  br i1 %cmp5695, label %if.then.5697, label %if.end.5698

if.then.5697:                                     ; preds = %if.end.5687
  %3525 = load %struct.obstack*, %struct.obstack** %__o5688, align 8
  %3526 = load i32, i32* %__len5689, align 4
  call void @_obstack_newchunk(%struct.obstack* %3525, i32 %3526)
  br label %if.end.5698

if.end.5698:                                      ; preds = %if.then.5697, %if.end.5687
  %3527 = load %struct.obstack*, %struct.obstack** %__o5688, align 8
  %next_free5699 = getelementptr inbounds %struct.obstack, %struct.obstack* %3527, i32 0, i32 3
  %3528 = load i8*, i8** %next_free5699, align 8
  %3529 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag25700 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3529, i32 0, i32 60
  %arraydecay5701 = getelementptr inbounds [256 x i8], [256 x i8]* %tag25700, i32 0, i32 0
  %3530 = load i32, i32* %__len5689, align 4
  %conv5702 = sext i32 %3530 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3528, i8* %arraydecay5701, i64 %conv5702, i32 1, i1 false)
  %3531 = load i32, i32* %__len5689, align 4
  %3532 = load %struct.obstack*, %struct.obstack** %__o5688, align 8
  %next_free5703 = getelementptr inbounds %struct.obstack, %struct.obstack* %3532, i32 0, i32 3
  %3533 = load i8*, i8** %next_free5703, align 8
  %idx.ext5704 = sext i32 %3531 to i64
  %add.ptr5705 = getelementptr inbounds i8, i8* %3533, i64 %idx.ext5704
  store i8* %add.ptr5705, i8** %next_free5703, align 8
  %3534 = load i64, i64* %width, align 8
  %tobool5706 = icmp ne i64 %3534, 0
  br i1 %tobool5706, label %land.lhs.true.5707, label %if.end.5727

land.lhs.true.5707:                               ; preds = %if.end.5698
  %3535 = load i32, i32* %justification, align 4
  %cmp5708 = icmp slt i32 %3535, 0
  br i1 %cmp5708, label %if.then.5710, label %if.end.5727

if.then.5710:                                     ; preds = %land.lhs.true.5707
  br label %for.cond.5711

for.cond.5711:                                    ; preds = %for.inc.5724, %if.then.5710
  %3536 = load i64, i64* %nspace5658, align 8
  %tobool5712 = icmp ne i64 %3536, 0
  br i1 %tobool5712, label %for.body.5713, label %for.end.5726

for.body.5713:                                    ; preds = %for.cond.5711
  %3537 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3537, %struct.obstack** %__o5714, align 8
  %3538 = load %struct.obstack*, %struct.obstack** %__o5714, align 8
  %next_free5715 = getelementptr inbounds %struct.obstack, %struct.obstack* %3538, i32 0, i32 3
  %3539 = load i8*, i8** %next_free5715, align 8
  %add.ptr5716 = getelementptr inbounds i8, i8* %3539, i64 1
  %3540 = load %struct.obstack*, %struct.obstack** %__o5714, align 8
  %chunk_limit5717 = getelementptr inbounds %struct.obstack, %struct.obstack* %3540, i32 0, i32 4
  %3541 = load i8*, i8** %chunk_limit5717, align 8
  %cmp5718 = icmp ugt i8* %add.ptr5716, %3541
  br i1 %cmp5718, label %if.then.5720, label %if.end.5721

if.then.5720:                                     ; preds = %for.body.5713
  %3542 = load %struct.obstack*, %struct.obstack** %__o5714, align 8
  call void @_obstack_newchunk(%struct.obstack* %3542, i32 1)
  br label %if.end.5721

if.end.5721:                                      ; preds = %if.then.5720, %for.body.5713
  %3543 = load i8, i8* %padding, align 1
  %3544 = load %struct.obstack*, %struct.obstack** %__o5714, align 8
  %next_free5722 = getelementptr inbounds %struct.obstack, %struct.obstack* %3544, i32 0, i32 3
  %3545 = load i8*, i8** %next_free5722, align 8
  %incdec.ptr5723 = getelementptr inbounds i8, i8* %3545, i32 1
  store i8* %incdec.ptr5723, i8** %next_free5722, align 8
  store i8 %3543, i8* %3545, align 1
  br label %for.inc.5724

for.inc.5724:                                     ; preds = %if.end.5721
  %3546 = load i64, i64* %nspace5658, align 8
  %dec5725 = add i64 %3546, -1
  store i64 %dec5725, i64* %nspace5658, align 8
  br label %for.cond.5711

for.end.5726:                                     ; preds = %for.cond.5711
  br label %if.end.5727

if.end.5727:                                      ; preds = %for.end.5726, %land.lhs.true.5707, %if.end.5698
  br label %do.end.5728

do.end.5728:                                      ; preds = %if.end.5727
  br label %sw.epilog.5980

sw.bb.5729:                                       ; preds = %sw.bb.5571
  %3547 = load i64, i64* %i, align 8
  %inc5730 = add i64 %3547, 1
  store i64 %inc5730, i64* %i, align 8
  br label %do.body.5731

do.body.5731:                                     ; preds = %sw.bb.5729
  %3548 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3548, i32 0, i32 61
  %arraydecay5733 = getelementptr inbounds [256 x i8], [256 x i8]* %tag3, i32 0, i32 0
  %call5734 = call i64 @strlen(i8* %arraydecay5733) #6
  store i64 %call5734, i64* %len5732, align 8
  %3549 = load i64, i64* %len5732, align 8
  %3550 = load i64, i64* %width, align 8
  %cmp5736 = icmp ugt i64 %3549, %3550
  br i1 %cmp5736, label %cond.true.5738, label %cond.false.5739

cond.true.5738:                                   ; preds = %do.body.5731
  br label %cond.end.5741

cond.false.5739:                                  ; preds = %do.body.5731
  %3551 = load i64, i64* %width, align 8
  %3552 = load i64, i64* %len5732, align 8
  %sub5740 = sub i64 %3551, %3552
  br label %cond.end.5741

cond.end.5741:                                    ; preds = %cond.false.5739, %cond.true.5738
  %cond5742 = phi i64 [ 0, %cond.true.5738 ], [ %sub5740, %cond.false.5739 ]
  store i64 %cond5742, i64* %nspace5735, align 8
  %3553 = load i64, i64* %width, align 8
  %tobool5743 = icmp ne i64 %3553, 0
  br i1 %tobool5743, label %land.lhs.true.5744, label %if.end.5764

land.lhs.true.5744:                               ; preds = %cond.end.5741
  %3554 = load i32, i32* %justification, align 4
  %cmp5745 = icmp sgt i32 %3554, 0
  br i1 %cmp5745, label %if.then.5747, label %if.end.5764

if.then.5747:                                     ; preds = %land.lhs.true.5744
  br label %for.cond.5748

for.cond.5748:                                    ; preds = %for.inc.5761, %if.then.5747
  %3555 = load i64, i64* %nspace5735, align 8
  %tobool5749 = icmp ne i64 %3555, 0
  br i1 %tobool5749, label %for.body.5750, label %for.end.5763

for.body.5750:                                    ; preds = %for.cond.5748
  %3556 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3556, %struct.obstack** %__o5751, align 8
  %3557 = load %struct.obstack*, %struct.obstack** %__o5751, align 8
  %next_free5752 = getelementptr inbounds %struct.obstack, %struct.obstack* %3557, i32 0, i32 3
  %3558 = load i8*, i8** %next_free5752, align 8
  %add.ptr5753 = getelementptr inbounds i8, i8* %3558, i64 1
  %3559 = load %struct.obstack*, %struct.obstack** %__o5751, align 8
  %chunk_limit5754 = getelementptr inbounds %struct.obstack, %struct.obstack* %3559, i32 0, i32 4
  %3560 = load i8*, i8** %chunk_limit5754, align 8
  %cmp5755 = icmp ugt i8* %add.ptr5753, %3560
  br i1 %cmp5755, label %if.then.5757, label %if.end.5758

if.then.5757:                                     ; preds = %for.body.5750
  %3561 = load %struct.obstack*, %struct.obstack** %__o5751, align 8
  call void @_obstack_newchunk(%struct.obstack* %3561, i32 1)
  br label %if.end.5758

if.end.5758:                                      ; preds = %if.then.5757, %for.body.5750
  %3562 = load i8, i8* %padding, align 1
  %3563 = load %struct.obstack*, %struct.obstack** %__o5751, align 8
  %next_free5759 = getelementptr inbounds %struct.obstack, %struct.obstack* %3563, i32 0, i32 3
  %3564 = load i8*, i8** %next_free5759, align 8
  %incdec.ptr5760 = getelementptr inbounds i8, i8* %3564, i32 1
  store i8* %incdec.ptr5760, i8** %next_free5759, align 8
  store i8 %3562, i8* %3564, align 1
  br label %for.inc.5761

for.inc.5761:                                     ; preds = %if.end.5758
  %3565 = load i64, i64* %nspace5735, align 8
  %dec5762 = add i64 %3565, -1
  store i64 %dec5762, i64* %nspace5735, align 8
  br label %for.cond.5748

for.end.5763:                                     ; preds = %for.cond.5748
  br label %if.end.5764

if.end.5764:                                      ; preds = %for.end.5763, %land.lhs.true.5744, %cond.end.5741
  %3566 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3566, %struct.obstack** %__o5765, align 8
  %3567 = load i64, i64* %len5732, align 8
  %conv5767 = trunc i64 %3567 to i32
  store i32 %conv5767, i32* %__len5766, align 4
  %3568 = load %struct.obstack*, %struct.obstack** %__o5765, align 8
  %next_free5768 = getelementptr inbounds %struct.obstack, %struct.obstack* %3568, i32 0, i32 3
  %3569 = load i8*, i8** %next_free5768, align 8
  %3570 = load i32, i32* %__len5766, align 4
  %idx.ext5769 = sext i32 %3570 to i64
  %add.ptr5770 = getelementptr inbounds i8, i8* %3569, i64 %idx.ext5769
  %3571 = load %struct.obstack*, %struct.obstack** %__o5765, align 8
  %chunk_limit5771 = getelementptr inbounds %struct.obstack, %struct.obstack* %3571, i32 0, i32 4
  %3572 = load i8*, i8** %chunk_limit5771, align 8
  %cmp5772 = icmp ugt i8* %add.ptr5770, %3572
  br i1 %cmp5772, label %if.then.5774, label %if.end.5775

if.then.5774:                                     ; preds = %if.end.5764
  %3573 = load %struct.obstack*, %struct.obstack** %__o5765, align 8
  %3574 = load i32, i32* %__len5766, align 4
  call void @_obstack_newchunk(%struct.obstack* %3573, i32 %3574)
  br label %if.end.5775

if.end.5775:                                      ; preds = %if.then.5774, %if.end.5764
  %3575 = load %struct.obstack*, %struct.obstack** %__o5765, align 8
  %next_free5776 = getelementptr inbounds %struct.obstack, %struct.obstack* %3575, i32 0, i32 3
  %3576 = load i8*, i8** %next_free5776, align 8
  %3577 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag35777 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3577, i32 0, i32 61
  %arraydecay5778 = getelementptr inbounds [256 x i8], [256 x i8]* %tag35777, i32 0, i32 0
  %3578 = load i32, i32* %__len5766, align 4
  %conv5779 = sext i32 %3578 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3576, i8* %arraydecay5778, i64 %conv5779, i32 1, i1 false)
  %3579 = load i32, i32* %__len5766, align 4
  %3580 = load %struct.obstack*, %struct.obstack** %__o5765, align 8
  %next_free5780 = getelementptr inbounds %struct.obstack, %struct.obstack* %3580, i32 0, i32 3
  %3581 = load i8*, i8** %next_free5780, align 8
  %idx.ext5781 = sext i32 %3579 to i64
  %add.ptr5782 = getelementptr inbounds i8, i8* %3581, i64 %idx.ext5781
  store i8* %add.ptr5782, i8** %next_free5780, align 8
  %3582 = load i64, i64* %width, align 8
  %tobool5783 = icmp ne i64 %3582, 0
  br i1 %tobool5783, label %land.lhs.true.5784, label %if.end.5804

land.lhs.true.5784:                               ; preds = %if.end.5775
  %3583 = load i32, i32* %justification, align 4
  %cmp5785 = icmp slt i32 %3583, 0
  br i1 %cmp5785, label %if.then.5787, label %if.end.5804

if.then.5787:                                     ; preds = %land.lhs.true.5784
  br label %for.cond.5788

for.cond.5788:                                    ; preds = %for.inc.5801, %if.then.5787
  %3584 = load i64, i64* %nspace5735, align 8
  %tobool5789 = icmp ne i64 %3584, 0
  br i1 %tobool5789, label %for.body.5790, label %for.end.5803

for.body.5790:                                    ; preds = %for.cond.5788
  %3585 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3585, %struct.obstack** %__o5791, align 8
  %3586 = load %struct.obstack*, %struct.obstack** %__o5791, align 8
  %next_free5792 = getelementptr inbounds %struct.obstack, %struct.obstack* %3586, i32 0, i32 3
  %3587 = load i8*, i8** %next_free5792, align 8
  %add.ptr5793 = getelementptr inbounds i8, i8* %3587, i64 1
  %3588 = load %struct.obstack*, %struct.obstack** %__o5791, align 8
  %chunk_limit5794 = getelementptr inbounds %struct.obstack, %struct.obstack* %3588, i32 0, i32 4
  %3589 = load i8*, i8** %chunk_limit5794, align 8
  %cmp5795 = icmp ugt i8* %add.ptr5793, %3589
  br i1 %cmp5795, label %if.then.5797, label %if.end.5798

if.then.5797:                                     ; preds = %for.body.5790
  %3590 = load %struct.obstack*, %struct.obstack** %__o5791, align 8
  call void @_obstack_newchunk(%struct.obstack* %3590, i32 1)
  br label %if.end.5798

if.end.5798:                                      ; preds = %if.then.5797, %for.body.5790
  %3591 = load i8, i8* %padding, align 1
  %3592 = load %struct.obstack*, %struct.obstack** %__o5791, align 8
  %next_free5799 = getelementptr inbounds %struct.obstack, %struct.obstack* %3592, i32 0, i32 3
  %3593 = load i8*, i8** %next_free5799, align 8
  %incdec.ptr5800 = getelementptr inbounds i8, i8* %3593, i32 1
  store i8* %incdec.ptr5800, i8** %next_free5799, align 8
  store i8 %3591, i8* %3593, align 1
  br label %for.inc.5801

for.inc.5801:                                     ; preds = %if.end.5798
  %3594 = load i64, i64* %nspace5735, align 8
  %dec5802 = add i64 %3594, -1
  store i64 %dec5802, i64* %nspace5735, align 8
  br label %for.cond.5788

for.end.5803:                                     ; preds = %for.cond.5788
  br label %if.end.5804

if.end.5804:                                      ; preds = %for.end.5803, %land.lhs.true.5784, %if.end.5775
  br label %do.end.5805

do.end.5805:                                      ; preds = %if.end.5804
  br label %sw.epilog.5980

sw.bb.5806:                                       ; preds = %sw.bb.5571
  %3595 = load i64, i64* %i, align 8
  %inc5807 = add i64 %3595, 1
  store i64 %inc5807, i64* %i, align 8
  br label %do.body.5808

do.body.5808:                                     ; preds = %sw.bb.5806
  %3596 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3596, i32 0, i32 62
  %arraydecay5810 = getelementptr inbounds [256 x i8], [256 x i8]* %tag4, i32 0, i32 0
  %call5811 = call i64 @strlen(i8* %arraydecay5810) #6
  store i64 %call5811, i64* %len5809, align 8
  %3597 = load i64, i64* %len5809, align 8
  %3598 = load i64, i64* %width, align 8
  %cmp5813 = icmp ugt i64 %3597, %3598
  br i1 %cmp5813, label %cond.true.5815, label %cond.false.5816

cond.true.5815:                                   ; preds = %do.body.5808
  br label %cond.end.5818

cond.false.5816:                                  ; preds = %do.body.5808
  %3599 = load i64, i64* %width, align 8
  %3600 = load i64, i64* %len5809, align 8
  %sub5817 = sub i64 %3599, %3600
  br label %cond.end.5818

cond.end.5818:                                    ; preds = %cond.false.5816, %cond.true.5815
  %cond5819 = phi i64 [ 0, %cond.true.5815 ], [ %sub5817, %cond.false.5816 ]
  store i64 %cond5819, i64* %nspace5812, align 8
  %3601 = load i64, i64* %width, align 8
  %tobool5820 = icmp ne i64 %3601, 0
  br i1 %tobool5820, label %land.lhs.true.5821, label %if.end.5841

land.lhs.true.5821:                               ; preds = %cond.end.5818
  %3602 = load i32, i32* %justification, align 4
  %cmp5822 = icmp sgt i32 %3602, 0
  br i1 %cmp5822, label %if.then.5824, label %if.end.5841

if.then.5824:                                     ; preds = %land.lhs.true.5821
  br label %for.cond.5825

for.cond.5825:                                    ; preds = %for.inc.5838, %if.then.5824
  %3603 = load i64, i64* %nspace5812, align 8
  %tobool5826 = icmp ne i64 %3603, 0
  br i1 %tobool5826, label %for.body.5827, label %for.end.5840

for.body.5827:                                    ; preds = %for.cond.5825
  %3604 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3604, %struct.obstack** %__o5828, align 8
  %3605 = load %struct.obstack*, %struct.obstack** %__o5828, align 8
  %next_free5829 = getelementptr inbounds %struct.obstack, %struct.obstack* %3605, i32 0, i32 3
  %3606 = load i8*, i8** %next_free5829, align 8
  %add.ptr5830 = getelementptr inbounds i8, i8* %3606, i64 1
  %3607 = load %struct.obstack*, %struct.obstack** %__o5828, align 8
  %chunk_limit5831 = getelementptr inbounds %struct.obstack, %struct.obstack* %3607, i32 0, i32 4
  %3608 = load i8*, i8** %chunk_limit5831, align 8
  %cmp5832 = icmp ugt i8* %add.ptr5830, %3608
  br i1 %cmp5832, label %if.then.5834, label %if.end.5835

if.then.5834:                                     ; preds = %for.body.5827
  %3609 = load %struct.obstack*, %struct.obstack** %__o5828, align 8
  call void @_obstack_newchunk(%struct.obstack* %3609, i32 1)
  br label %if.end.5835

if.end.5835:                                      ; preds = %if.then.5834, %for.body.5827
  %3610 = load i8, i8* %padding, align 1
  %3611 = load %struct.obstack*, %struct.obstack** %__o5828, align 8
  %next_free5836 = getelementptr inbounds %struct.obstack, %struct.obstack* %3611, i32 0, i32 3
  %3612 = load i8*, i8** %next_free5836, align 8
  %incdec.ptr5837 = getelementptr inbounds i8, i8* %3612, i32 1
  store i8* %incdec.ptr5837, i8** %next_free5836, align 8
  store i8 %3610, i8* %3612, align 1
  br label %for.inc.5838

for.inc.5838:                                     ; preds = %if.end.5835
  %3613 = load i64, i64* %nspace5812, align 8
  %dec5839 = add i64 %3613, -1
  store i64 %dec5839, i64* %nspace5812, align 8
  br label %for.cond.5825

for.end.5840:                                     ; preds = %for.cond.5825
  br label %if.end.5841

if.end.5841:                                      ; preds = %for.end.5840, %land.lhs.true.5821, %cond.end.5818
  %3614 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3614, %struct.obstack** %__o5842, align 8
  %3615 = load i64, i64* %len5809, align 8
  %conv5844 = trunc i64 %3615 to i32
  store i32 %conv5844, i32* %__len5843, align 4
  %3616 = load %struct.obstack*, %struct.obstack** %__o5842, align 8
  %next_free5845 = getelementptr inbounds %struct.obstack, %struct.obstack* %3616, i32 0, i32 3
  %3617 = load i8*, i8** %next_free5845, align 8
  %3618 = load i32, i32* %__len5843, align 4
  %idx.ext5846 = sext i32 %3618 to i64
  %add.ptr5847 = getelementptr inbounds i8, i8* %3617, i64 %idx.ext5846
  %3619 = load %struct.obstack*, %struct.obstack** %__o5842, align 8
  %chunk_limit5848 = getelementptr inbounds %struct.obstack, %struct.obstack* %3619, i32 0, i32 4
  %3620 = load i8*, i8** %chunk_limit5848, align 8
  %cmp5849 = icmp ugt i8* %add.ptr5847, %3620
  br i1 %cmp5849, label %if.then.5851, label %if.end.5852

if.then.5851:                                     ; preds = %if.end.5841
  %3621 = load %struct.obstack*, %struct.obstack** %__o5842, align 8
  %3622 = load i32, i32* %__len5843, align 4
  call void @_obstack_newchunk(%struct.obstack* %3621, i32 %3622)
  br label %if.end.5852

if.end.5852:                                      ; preds = %if.then.5851, %if.end.5841
  %3623 = load %struct.obstack*, %struct.obstack** %__o5842, align 8
  %next_free5853 = getelementptr inbounds %struct.obstack, %struct.obstack* %3623, i32 0, i32 3
  %3624 = load i8*, i8** %next_free5853, align 8
  %3625 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag45854 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3625, i32 0, i32 62
  %arraydecay5855 = getelementptr inbounds [256 x i8], [256 x i8]* %tag45854, i32 0, i32 0
  %3626 = load i32, i32* %__len5843, align 4
  %conv5856 = sext i32 %3626 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3624, i8* %arraydecay5855, i64 %conv5856, i32 1, i1 false)
  %3627 = load i32, i32* %__len5843, align 4
  %3628 = load %struct.obstack*, %struct.obstack** %__o5842, align 8
  %next_free5857 = getelementptr inbounds %struct.obstack, %struct.obstack* %3628, i32 0, i32 3
  %3629 = load i8*, i8** %next_free5857, align 8
  %idx.ext5858 = sext i32 %3627 to i64
  %add.ptr5859 = getelementptr inbounds i8, i8* %3629, i64 %idx.ext5858
  store i8* %add.ptr5859, i8** %next_free5857, align 8
  %3630 = load i64, i64* %width, align 8
  %tobool5860 = icmp ne i64 %3630, 0
  br i1 %tobool5860, label %land.lhs.true.5861, label %if.end.5881

land.lhs.true.5861:                               ; preds = %if.end.5852
  %3631 = load i32, i32* %justification, align 4
  %cmp5862 = icmp slt i32 %3631, 0
  br i1 %cmp5862, label %if.then.5864, label %if.end.5881

if.then.5864:                                     ; preds = %land.lhs.true.5861
  br label %for.cond.5865

for.cond.5865:                                    ; preds = %for.inc.5878, %if.then.5864
  %3632 = load i64, i64* %nspace5812, align 8
  %tobool5866 = icmp ne i64 %3632, 0
  br i1 %tobool5866, label %for.body.5867, label %for.end.5880

for.body.5867:                                    ; preds = %for.cond.5865
  %3633 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3633, %struct.obstack** %__o5868, align 8
  %3634 = load %struct.obstack*, %struct.obstack** %__o5868, align 8
  %next_free5869 = getelementptr inbounds %struct.obstack, %struct.obstack* %3634, i32 0, i32 3
  %3635 = load i8*, i8** %next_free5869, align 8
  %add.ptr5870 = getelementptr inbounds i8, i8* %3635, i64 1
  %3636 = load %struct.obstack*, %struct.obstack** %__o5868, align 8
  %chunk_limit5871 = getelementptr inbounds %struct.obstack, %struct.obstack* %3636, i32 0, i32 4
  %3637 = load i8*, i8** %chunk_limit5871, align 8
  %cmp5872 = icmp ugt i8* %add.ptr5870, %3637
  br i1 %cmp5872, label %if.then.5874, label %if.end.5875

if.then.5874:                                     ; preds = %for.body.5867
  %3638 = load %struct.obstack*, %struct.obstack** %__o5868, align 8
  call void @_obstack_newchunk(%struct.obstack* %3638, i32 1)
  br label %if.end.5875

if.end.5875:                                      ; preds = %if.then.5874, %for.body.5867
  %3639 = load i8, i8* %padding, align 1
  %3640 = load %struct.obstack*, %struct.obstack** %__o5868, align 8
  %next_free5876 = getelementptr inbounds %struct.obstack, %struct.obstack* %3640, i32 0, i32 3
  %3641 = load i8*, i8** %next_free5876, align 8
  %incdec.ptr5877 = getelementptr inbounds i8, i8* %3641, i32 1
  store i8* %incdec.ptr5877, i8** %next_free5876, align 8
  store i8 %3639, i8* %3641, align 1
  br label %for.inc.5878

for.inc.5878:                                     ; preds = %if.end.5875
  %3642 = load i64, i64* %nspace5812, align 8
  %dec5879 = add i64 %3642, -1
  store i64 %dec5879, i64* %nspace5812, align 8
  br label %for.cond.5865

for.end.5880:                                     ; preds = %for.cond.5865
  br label %if.end.5881

if.end.5881:                                      ; preds = %for.end.5880, %land.lhs.true.5861, %if.end.5852
  br label %do.end.5882

do.end.5882:                                      ; preds = %if.end.5881
  br label %sw.epilog.5980

sw.default.5883:                                  ; preds = %sw.bb.5571
  %arraydecay5884 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3643 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5885 = getelementptr inbounds %struct.file_job, %struct.file_job* %3643, i32 0, i32 5
  %tm_hour5886 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5885, i32 0, i32 2
  %3644 = load i32, i32* %tm_hour5886, align 4
  %cmp5887 = icmp sgt i32 %3644, 12
  br i1 %cmp5887, label %cond.true.5889, label %cond.false.5893

cond.true.5889:                                   ; preds = %sw.default.5883
  %3645 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5890 = getelementptr inbounds %struct.file_job, %struct.file_job* %3645, i32 0, i32 5
  %tm_hour5891 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5890, i32 0, i32 2
  %3646 = load i32, i32* %tm_hour5891, align 4
  %sub5892 = sub nsw i32 %3646, 12
  br label %cond.end.5896

cond.false.5893:                                  ; preds = %sw.default.5883
  %3647 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5894 = getelementptr inbounds %struct.file_job, %struct.file_job* %3647, i32 0, i32 5
  %tm_hour5895 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5894, i32 0, i32 2
  %3648 = load i32, i32* %tm_hour5895, align 4
  br label %cond.end.5896

cond.end.5896:                                    ; preds = %cond.false.5893, %cond.true.5889
  %cond5897 = phi i32 [ %sub5892, %cond.true.5889 ], [ %3648, %cond.false.5893 ]
  %3649 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5898 = getelementptr inbounds %struct.file_job, %struct.file_job* %3649, i32 0, i32 5
  %tm_min5899 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5898, i32 0, i32 1
  %3650 = load i32, i32* %tm_min5899, align 4
  %3651 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5900 = getelementptr inbounds %struct.file_job, %struct.file_job* %3651, i32 0, i32 5
  %tm_hour5901 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5900, i32 0, i32 2
  %3652 = load i32, i32* %tm_hour5901, align 4
  %cmp5902 = icmp sgt i32 %3652, 12
  %cond5904 = select i1 %cmp5902, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)
  %call5905 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5884, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 %cond5897, i32 %3650, i8* %cond5904) #5
  br label %do.body.5906

do.body.5906:                                     ; preds = %cond.end.5896
  %arraydecay5908 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5909 = call i64 @strlen(i8* %arraydecay5908) #6
  store i64 %call5909, i64* %len5907, align 8
  %3653 = load i64, i64* %len5907, align 8
  %3654 = load i64, i64* %width, align 8
  %cmp5911 = icmp ugt i64 %3653, %3654
  br i1 %cmp5911, label %cond.true.5913, label %cond.false.5914

cond.true.5913:                                   ; preds = %do.body.5906
  br label %cond.end.5916

cond.false.5914:                                  ; preds = %do.body.5906
  %3655 = load i64, i64* %width, align 8
  %3656 = load i64, i64* %len5907, align 8
  %sub5915 = sub i64 %3655, %3656
  br label %cond.end.5916

cond.end.5916:                                    ; preds = %cond.false.5914, %cond.true.5913
  %cond5917 = phi i64 [ 0, %cond.true.5913 ], [ %sub5915, %cond.false.5914 ]
  store i64 %cond5917, i64* %nspace5910, align 8
  %3657 = load i64, i64* %width, align 8
  %tobool5918 = icmp ne i64 %3657, 0
  br i1 %tobool5918, label %land.lhs.true.5919, label %if.end.5939

land.lhs.true.5919:                               ; preds = %cond.end.5916
  %3658 = load i32, i32* %justification, align 4
  %cmp5920 = icmp sgt i32 %3658, 0
  br i1 %cmp5920, label %if.then.5922, label %if.end.5939

if.then.5922:                                     ; preds = %land.lhs.true.5919
  br label %for.cond.5923

for.cond.5923:                                    ; preds = %for.inc.5936, %if.then.5922
  %3659 = load i64, i64* %nspace5910, align 8
  %tobool5924 = icmp ne i64 %3659, 0
  br i1 %tobool5924, label %for.body.5925, label %for.end.5938

for.body.5925:                                    ; preds = %for.cond.5923
  %3660 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3660, %struct.obstack** %__o5926, align 8
  %3661 = load %struct.obstack*, %struct.obstack** %__o5926, align 8
  %next_free5927 = getelementptr inbounds %struct.obstack, %struct.obstack* %3661, i32 0, i32 3
  %3662 = load i8*, i8** %next_free5927, align 8
  %add.ptr5928 = getelementptr inbounds i8, i8* %3662, i64 1
  %3663 = load %struct.obstack*, %struct.obstack** %__o5926, align 8
  %chunk_limit5929 = getelementptr inbounds %struct.obstack, %struct.obstack* %3663, i32 0, i32 4
  %3664 = load i8*, i8** %chunk_limit5929, align 8
  %cmp5930 = icmp ugt i8* %add.ptr5928, %3664
  br i1 %cmp5930, label %if.then.5932, label %if.end.5933

if.then.5932:                                     ; preds = %for.body.5925
  %3665 = load %struct.obstack*, %struct.obstack** %__o5926, align 8
  call void @_obstack_newchunk(%struct.obstack* %3665, i32 1)
  br label %if.end.5933

if.end.5933:                                      ; preds = %if.then.5932, %for.body.5925
  %3666 = load i8, i8* %padding, align 1
  %3667 = load %struct.obstack*, %struct.obstack** %__o5926, align 8
  %next_free5934 = getelementptr inbounds %struct.obstack, %struct.obstack* %3667, i32 0, i32 3
  %3668 = load i8*, i8** %next_free5934, align 8
  %incdec.ptr5935 = getelementptr inbounds i8, i8* %3668, i32 1
  store i8* %incdec.ptr5935, i8** %next_free5934, align 8
  store i8 %3666, i8* %3668, align 1
  br label %for.inc.5936

for.inc.5936:                                     ; preds = %if.end.5933
  %3669 = load i64, i64* %nspace5910, align 8
  %dec5937 = add i64 %3669, -1
  store i64 %dec5937, i64* %nspace5910, align 8
  br label %for.cond.5923

for.end.5938:                                     ; preds = %for.cond.5923
  br label %if.end.5939

if.end.5939:                                      ; preds = %for.end.5938, %land.lhs.true.5919, %cond.end.5916
  %3670 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3670, %struct.obstack** %__o5940, align 8
  %3671 = load i64, i64* %len5907, align 8
  %conv5942 = trunc i64 %3671 to i32
  store i32 %conv5942, i32* %__len5941, align 4
  %3672 = load %struct.obstack*, %struct.obstack** %__o5940, align 8
  %next_free5943 = getelementptr inbounds %struct.obstack, %struct.obstack* %3672, i32 0, i32 3
  %3673 = load i8*, i8** %next_free5943, align 8
  %3674 = load i32, i32* %__len5941, align 4
  %idx.ext5944 = sext i32 %3674 to i64
  %add.ptr5945 = getelementptr inbounds i8, i8* %3673, i64 %idx.ext5944
  %3675 = load %struct.obstack*, %struct.obstack** %__o5940, align 8
  %chunk_limit5946 = getelementptr inbounds %struct.obstack, %struct.obstack* %3675, i32 0, i32 4
  %3676 = load i8*, i8** %chunk_limit5946, align 8
  %cmp5947 = icmp ugt i8* %add.ptr5945, %3676
  br i1 %cmp5947, label %if.then.5949, label %if.end.5950

if.then.5949:                                     ; preds = %if.end.5939
  %3677 = load %struct.obstack*, %struct.obstack** %__o5940, align 8
  %3678 = load i32, i32* %__len5941, align 4
  call void @_obstack_newchunk(%struct.obstack* %3677, i32 %3678)
  br label %if.end.5950

if.end.5950:                                      ; preds = %if.then.5949, %if.end.5939
  %3679 = load %struct.obstack*, %struct.obstack** %__o5940, align 8
  %next_free5951 = getelementptr inbounds %struct.obstack, %struct.obstack* %3679, i32 0, i32 3
  %3680 = load i8*, i8** %next_free5951, align 8
  %arraydecay5952 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3681 = load i32, i32* %__len5941, align 4
  %conv5953 = sext i32 %3681 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3680, i8* %arraydecay5952, i64 %conv5953, i32 1, i1 false)
  %3682 = load i32, i32* %__len5941, align 4
  %3683 = load %struct.obstack*, %struct.obstack** %__o5940, align 8
  %next_free5954 = getelementptr inbounds %struct.obstack, %struct.obstack* %3683, i32 0, i32 3
  %3684 = load i8*, i8** %next_free5954, align 8
  %idx.ext5955 = sext i32 %3682 to i64
  %add.ptr5956 = getelementptr inbounds i8, i8* %3684, i64 %idx.ext5955
  store i8* %add.ptr5956, i8** %next_free5954, align 8
  %3685 = load i64, i64* %width, align 8
  %tobool5957 = icmp ne i64 %3685, 0
  br i1 %tobool5957, label %land.lhs.true.5958, label %if.end.5978

land.lhs.true.5958:                               ; preds = %if.end.5950
  %3686 = load i32, i32* %justification, align 4
  %cmp5959 = icmp slt i32 %3686, 0
  br i1 %cmp5959, label %if.then.5961, label %if.end.5978

if.then.5961:                                     ; preds = %land.lhs.true.5958
  br label %for.cond.5962

for.cond.5962:                                    ; preds = %for.inc.5975, %if.then.5961
  %3687 = load i64, i64* %nspace5910, align 8
  %tobool5963 = icmp ne i64 %3687, 0
  br i1 %tobool5963, label %for.body.5964, label %for.end.5977

for.body.5964:                                    ; preds = %for.cond.5962
  %3688 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3688, %struct.obstack** %__o5965, align 8
  %3689 = load %struct.obstack*, %struct.obstack** %__o5965, align 8
  %next_free5966 = getelementptr inbounds %struct.obstack, %struct.obstack* %3689, i32 0, i32 3
  %3690 = load i8*, i8** %next_free5966, align 8
  %add.ptr5967 = getelementptr inbounds i8, i8* %3690, i64 1
  %3691 = load %struct.obstack*, %struct.obstack** %__o5965, align 8
  %chunk_limit5968 = getelementptr inbounds %struct.obstack, %struct.obstack* %3691, i32 0, i32 4
  %3692 = load i8*, i8** %chunk_limit5968, align 8
  %cmp5969 = icmp ugt i8* %add.ptr5967, %3692
  br i1 %cmp5969, label %if.then.5971, label %if.end.5972

if.then.5971:                                     ; preds = %for.body.5964
  %3693 = load %struct.obstack*, %struct.obstack** %__o5965, align 8
  call void @_obstack_newchunk(%struct.obstack* %3693, i32 1)
  br label %if.end.5972

if.end.5972:                                      ; preds = %if.then.5971, %for.body.5964
  %3694 = load i8, i8* %padding, align 1
  %3695 = load %struct.obstack*, %struct.obstack** %__o5965, align 8
  %next_free5973 = getelementptr inbounds %struct.obstack, %struct.obstack* %3695, i32 0, i32 3
  %3696 = load i8*, i8** %next_free5973, align 8
  %incdec.ptr5974 = getelementptr inbounds i8, i8* %3696, i32 1
  store i8* %incdec.ptr5974, i8** %next_free5973, align 8
  store i8 %3694, i8* %3696, align 1
  br label %for.inc.5975

for.inc.5975:                                     ; preds = %if.end.5972
  %3697 = load i64, i64* %nspace5910, align 8
  %dec5976 = add i64 %3697, -1
  store i64 %dec5976, i64* %nspace5910, align 8
  br label %for.cond.5962

for.end.5977:                                     ; preds = %for.cond.5962
  br label %if.end.5978

if.end.5978:                                      ; preds = %for.end.5977, %land.lhs.true.5958, %if.end.5950
  br label %do.end.5979

do.end.5979:                                      ; preds = %if.end.5978
  br label %sw.epilog.5980

sw.epilog.5980:                                   ; preds = %do.end.5979, %do.end.5882, %do.end.5805, %do.end.5728, %do.end.5651
  br label %sw.epilog.6153

sw.bb.5981:                                       ; preds = %sw.bb.2280
  %arraydecay5982 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3698 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5983 = getelementptr inbounds %struct.file_job, %struct.file_job* %3698, i32 0, i32 5
  %tm_hour5984 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5983, i32 0, i32 2
  %3699 = load i32, i32* %tm_hour5984, align 4
  %3700 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm5985 = getelementptr inbounds %struct.file_job, %struct.file_job* %3700, i32 0, i32 5
  %tm_min5986 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm5985, i32 0, i32 1
  %3701 = load i32, i32* %tm_min5986, align 4
  %call5987 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5982, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 %3699, i32 %3701) #5
  br label %do.body.5988

do.body.5988:                                     ; preds = %sw.bb.5981
  %arraydecay5990 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call5991 = call i64 @strlen(i8* %arraydecay5990) #6
  store i64 %call5991, i64* %len5989, align 8
  %3702 = load i64, i64* %len5989, align 8
  %3703 = load i64, i64* %width, align 8
  %cmp5993 = icmp ugt i64 %3702, %3703
  br i1 %cmp5993, label %cond.true.5995, label %cond.false.5996

cond.true.5995:                                   ; preds = %do.body.5988
  br label %cond.end.5998

cond.false.5996:                                  ; preds = %do.body.5988
  %3704 = load i64, i64* %width, align 8
  %3705 = load i64, i64* %len5989, align 8
  %sub5997 = sub i64 %3704, %3705
  br label %cond.end.5998

cond.end.5998:                                    ; preds = %cond.false.5996, %cond.true.5995
  %cond5999 = phi i64 [ 0, %cond.true.5995 ], [ %sub5997, %cond.false.5996 ]
  store i64 %cond5999, i64* %nspace5992, align 8
  %3706 = load i64, i64* %width, align 8
  %tobool6000 = icmp ne i64 %3706, 0
  br i1 %tobool6000, label %land.lhs.true.6001, label %if.end.6021

land.lhs.true.6001:                               ; preds = %cond.end.5998
  %3707 = load i32, i32* %justification, align 4
  %cmp6002 = icmp sgt i32 %3707, 0
  br i1 %cmp6002, label %if.then.6004, label %if.end.6021

if.then.6004:                                     ; preds = %land.lhs.true.6001
  br label %for.cond.6005

for.cond.6005:                                    ; preds = %for.inc.6018, %if.then.6004
  %3708 = load i64, i64* %nspace5992, align 8
  %tobool6006 = icmp ne i64 %3708, 0
  br i1 %tobool6006, label %for.body.6007, label %for.end.6020

for.body.6007:                                    ; preds = %for.cond.6005
  %3709 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3709, %struct.obstack** %__o6008, align 8
  %3710 = load %struct.obstack*, %struct.obstack** %__o6008, align 8
  %next_free6009 = getelementptr inbounds %struct.obstack, %struct.obstack* %3710, i32 0, i32 3
  %3711 = load i8*, i8** %next_free6009, align 8
  %add.ptr6010 = getelementptr inbounds i8, i8* %3711, i64 1
  %3712 = load %struct.obstack*, %struct.obstack** %__o6008, align 8
  %chunk_limit6011 = getelementptr inbounds %struct.obstack, %struct.obstack* %3712, i32 0, i32 4
  %3713 = load i8*, i8** %chunk_limit6011, align 8
  %cmp6012 = icmp ugt i8* %add.ptr6010, %3713
  br i1 %cmp6012, label %if.then.6014, label %if.end.6015

if.then.6014:                                     ; preds = %for.body.6007
  %3714 = load %struct.obstack*, %struct.obstack** %__o6008, align 8
  call void @_obstack_newchunk(%struct.obstack* %3714, i32 1)
  br label %if.end.6015

if.end.6015:                                      ; preds = %if.then.6014, %for.body.6007
  %3715 = load i8, i8* %padding, align 1
  %3716 = load %struct.obstack*, %struct.obstack** %__o6008, align 8
  %next_free6016 = getelementptr inbounds %struct.obstack, %struct.obstack* %3716, i32 0, i32 3
  %3717 = load i8*, i8** %next_free6016, align 8
  %incdec.ptr6017 = getelementptr inbounds i8, i8* %3717, i32 1
  store i8* %incdec.ptr6017, i8** %next_free6016, align 8
  store i8 %3715, i8* %3717, align 1
  br label %for.inc.6018

for.inc.6018:                                     ; preds = %if.end.6015
  %3718 = load i64, i64* %nspace5992, align 8
  %dec6019 = add i64 %3718, -1
  store i64 %dec6019, i64* %nspace5992, align 8
  br label %for.cond.6005

for.end.6020:                                     ; preds = %for.cond.6005
  br label %if.end.6021

if.end.6021:                                      ; preds = %for.end.6020, %land.lhs.true.6001, %cond.end.5998
  %3719 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3719, %struct.obstack** %__o6022, align 8
  %3720 = load i64, i64* %len5989, align 8
  %conv6024 = trunc i64 %3720 to i32
  store i32 %conv6024, i32* %__len6023, align 4
  %3721 = load %struct.obstack*, %struct.obstack** %__o6022, align 8
  %next_free6025 = getelementptr inbounds %struct.obstack, %struct.obstack* %3721, i32 0, i32 3
  %3722 = load i8*, i8** %next_free6025, align 8
  %3723 = load i32, i32* %__len6023, align 4
  %idx.ext6026 = sext i32 %3723 to i64
  %add.ptr6027 = getelementptr inbounds i8, i8* %3722, i64 %idx.ext6026
  %3724 = load %struct.obstack*, %struct.obstack** %__o6022, align 8
  %chunk_limit6028 = getelementptr inbounds %struct.obstack, %struct.obstack* %3724, i32 0, i32 4
  %3725 = load i8*, i8** %chunk_limit6028, align 8
  %cmp6029 = icmp ugt i8* %add.ptr6027, %3725
  br i1 %cmp6029, label %if.then.6031, label %if.end.6032

if.then.6031:                                     ; preds = %if.end.6021
  %3726 = load %struct.obstack*, %struct.obstack** %__o6022, align 8
  %3727 = load i32, i32* %__len6023, align 4
  call void @_obstack_newchunk(%struct.obstack* %3726, i32 %3727)
  br label %if.end.6032

if.end.6032:                                      ; preds = %if.then.6031, %if.end.6021
  %3728 = load %struct.obstack*, %struct.obstack** %__o6022, align 8
  %next_free6033 = getelementptr inbounds %struct.obstack, %struct.obstack* %3728, i32 0, i32 3
  %3729 = load i8*, i8** %next_free6033, align 8
  %arraydecay6034 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3730 = load i32, i32* %__len6023, align 4
  %conv6035 = sext i32 %3730 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3729, i8* %arraydecay6034, i64 %conv6035, i32 1, i1 false)
  %3731 = load i32, i32* %__len6023, align 4
  %3732 = load %struct.obstack*, %struct.obstack** %__o6022, align 8
  %next_free6036 = getelementptr inbounds %struct.obstack, %struct.obstack* %3732, i32 0, i32 3
  %3733 = load i8*, i8** %next_free6036, align 8
  %idx.ext6037 = sext i32 %3731 to i64
  %add.ptr6038 = getelementptr inbounds i8, i8* %3733, i64 %idx.ext6037
  store i8* %add.ptr6038, i8** %next_free6036, align 8
  %3734 = load i64, i64* %width, align 8
  %tobool6039 = icmp ne i64 %3734, 0
  br i1 %tobool6039, label %land.lhs.true.6040, label %if.end.6060

land.lhs.true.6040:                               ; preds = %if.end.6032
  %3735 = load i32, i32* %justification, align 4
  %cmp6041 = icmp slt i32 %3735, 0
  br i1 %cmp6041, label %if.then.6043, label %if.end.6060

if.then.6043:                                     ; preds = %land.lhs.true.6040
  br label %for.cond.6044

for.cond.6044:                                    ; preds = %for.inc.6057, %if.then.6043
  %3736 = load i64, i64* %nspace5992, align 8
  %tobool6045 = icmp ne i64 %3736, 0
  br i1 %tobool6045, label %for.body.6046, label %for.end.6059

for.body.6046:                                    ; preds = %for.cond.6044
  %3737 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3737, %struct.obstack** %__o6047, align 8
  %3738 = load %struct.obstack*, %struct.obstack** %__o6047, align 8
  %next_free6048 = getelementptr inbounds %struct.obstack, %struct.obstack* %3738, i32 0, i32 3
  %3739 = load i8*, i8** %next_free6048, align 8
  %add.ptr6049 = getelementptr inbounds i8, i8* %3739, i64 1
  %3740 = load %struct.obstack*, %struct.obstack** %__o6047, align 8
  %chunk_limit6050 = getelementptr inbounds %struct.obstack, %struct.obstack* %3740, i32 0, i32 4
  %3741 = load i8*, i8** %chunk_limit6050, align 8
  %cmp6051 = icmp ugt i8* %add.ptr6049, %3741
  br i1 %cmp6051, label %if.then.6053, label %if.end.6054

if.then.6053:                                     ; preds = %for.body.6046
  %3742 = load %struct.obstack*, %struct.obstack** %__o6047, align 8
  call void @_obstack_newchunk(%struct.obstack* %3742, i32 1)
  br label %if.end.6054

if.end.6054:                                      ; preds = %if.then.6053, %for.body.6046
  %3743 = load i8, i8* %padding, align 1
  %3744 = load %struct.obstack*, %struct.obstack** %__o6047, align 8
  %next_free6055 = getelementptr inbounds %struct.obstack, %struct.obstack* %3744, i32 0, i32 3
  %3745 = load i8*, i8** %next_free6055, align 8
  %incdec.ptr6056 = getelementptr inbounds i8, i8* %3745, i32 1
  store i8* %incdec.ptr6056, i8** %next_free6055, align 8
  store i8 %3743, i8* %3745, align 1
  br label %for.inc.6057

for.inc.6057:                                     ; preds = %if.end.6054
  %3746 = load i64, i64* %nspace5992, align 8
  %dec6058 = add i64 %3746, -1
  store i64 %dec6058, i64* %nspace5992, align 8
  br label %for.cond.6044

for.end.6059:                                     ; preds = %for.cond.6044
  br label %if.end.6060

if.end.6060:                                      ; preds = %for.end.6059, %land.lhs.true.6040, %if.end.6032
  br label %do.end.6061

do.end.6061:                                      ; preds = %if.end.6060
  br label %sw.epilog.6153

sw.bb.6062:                                       ; preds = %sw.bb.2280
  %arraydecay6063 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3747 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm6064 = getelementptr inbounds %struct.file_job, %struct.file_job* %3747, i32 0, i32 5
  %tm_mon6065 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm6064, i32 0, i32 4
  %3748 = load i32, i32* %tm_mon6065, align 4
  %add6066 = add nsw i32 %3748, 1
  %3749 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm6067 = getelementptr inbounds %struct.file_job, %struct.file_job* %3749, i32 0, i32 5
  %tm_mday6068 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm6067, i32 0, i32 3
  %3750 = load i32, i32* %tm_mday6068, align 4
  %3751 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %mod_tm6069 = getelementptr inbounds %struct.file_job, %struct.file_job* %3751, i32 0, i32 5
  %tm_year6070 = getelementptr inbounds %struct.tm, %struct.tm* %mod_tm6069, i32 0, i32 5
  %3752 = load i32, i32* %tm_year6070, align 4
  %rem6071 = srem i32 %3752, 100
  %call6072 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6063, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 %add6066, i32 %3750, i32 %rem6071) #5
  br label %do.body.6073

do.body.6073:                                     ; preds = %sw.bb.6062
  %arraydecay6075 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call6076 = call i64 @strlen(i8* %arraydecay6075) #6
  store i64 %call6076, i64* %len6074, align 8
  %3753 = load i64, i64* %len6074, align 8
  %3754 = load i64, i64* %width, align 8
  %cmp6078 = icmp ugt i64 %3753, %3754
  br i1 %cmp6078, label %cond.true.6080, label %cond.false.6081

cond.true.6080:                                   ; preds = %do.body.6073
  br label %cond.end.6083

cond.false.6081:                                  ; preds = %do.body.6073
  %3755 = load i64, i64* %width, align 8
  %3756 = load i64, i64* %len6074, align 8
  %sub6082 = sub i64 %3755, %3756
  br label %cond.end.6083

cond.end.6083:                                    ; preds = %cond.false.6081, %cond.true.6080
  %cond6084 = phi i64 [ 0, %cond.true.6080 ], [ %sub6082, %cond.false.6081 ]
  store i64 %cond6084, i64* %nspace6077, align 8
  %3757 = load i64, i64* %width, align 8
  %tobool6085 = icmp ne i64 %3757, 0
  br i1 %tobool6085, label %land.lhs.true.6086, label %if.end.6106

land.lhs.true.6086:                               ; preds = %cond.end.6083
  %3758 = load i32, i32* %justification, align 4
  %cmp6087 = icmp sgt i32 %3758, 0
  br i1 %cmp6087, label %if.then.6089, label %if.end.6106

if.then.6089:                                     ; preds = %land.lhs.true.6086
  br label %for.cond.6090

for.cond.6090:                                    ; preds = %for.inc.6103, %if.then.6089
  %3759 = load i64, i64* %nspace6077, align 8
  %tobool6091 = icmp ne i64 %3759, 0
  br i1 %tobool6091, label %for.body.6092, label %for.end.6105

for.body.6092:                                    ; preds = %for.cond.6090
  %3760 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3760, %struct.obstack** %__o6093, align 8
  %3761 = load %struct.obstack*, %struct.obstack** %__o6093, align 8
  %next_free6094 = getelementptr inbounds %struct.obstack, %struct.obstack* %3761, i32 0, i32 3
  %3762 = load i8*, i8** %next_free6094, align 8
  %add.ptr6095 = getelementptr inbounds i8, i8* %3762, i64 1
  %3763 = load %struct.obstack*, %struct.obstack** %__o6093, align 8
  %chunk_limit6096 = getelementptr inbounds %struct.obstack, %struct.obstack* %3763, i32 0, i32 4
  %3764 = load i8*, i8** %chunk_limit6096, align 8
  %cmp6097 = icmp ugt i8* %add.ptr6095, %3764
  br i1 %cmp6097, label %if.then.6099, label %if.end.6100

if.then.6099:                                     ; preds = %for.body.6092
  %3765 = load %struct.obstack*, %struct.obstack** %__o6093, align 8
  call void @_obstack_newchunk(%struct.obstack* %3765, i32 1)
  br label %if.end.6100

if.end.6100:                                      ; preds = %if.then.6099, %for.body.6092
  %3766 = load i8, i8* %padding, align 1
  %3767 = load %struct.obstack*, %struct.obstack** %__o6093, align 8
  %next_free6101 = getelementptr inbounds %struct.obstack, %struct.obstack* %3767, i32 0, i32 3
  %3768 = load i8*, i8** %next_free6101, align 8
  %incdec.ptr6102 = getelementptr inbounds i8, i8* %3768, i32 1
  store i8* %incdec.ptr6102, i8** %next_free6101, align 8
  store i8 %3766, i8* %3768, align 1
  br label %for.inc.6103

for.inc.6103:                                     ; preds = %if.end.6100
  %3769 = load i64, i64* %nspace6077, align 8
  %dec6104 = add i64 %3769, -1
  store i64 %dec6104, i64* %nspace6077, align 8
  br label %for.cond.6090

for.end.6105:                                     ; preds = %for.cond.6090
  br label %if.end.6106

if.end.6106:                                      ; preds = %for.end.6105, %land.lhs.true.6086, %cond.end.6083
  %3770 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3770, %struct.obstack** %__o6107, align 8
  %3771 = load i64, i64* %len6074, align 8
  %conv6109 = trunc i64 %3771 to i32
  store i32 %conv6109, i32* %__len6108, align 4
  %3772 = load %struct.obstack*, %struct.obstack** %__o6107, align 8
  %next_free6110 = getelementptr inbounds %struct.obstack, %struct.obstack* %3772, i32 0, i32 3
  %3773 = load i8*, i8** %next_free6110, align 8
  %3774 = load i32, i32* %__len6108, align 4
  %idx.ext6111 = sext i32 %3774 to i64
  %add.ptr6112 = getelementptr inbounds i8, i8* %3773, i64 %idx.ext6111
  %3775 = load %struct.obstack*, %struct.obstack** %__o6107, align 8
  %chunk_limit6113 = getelementptr inbounds %struct.obstack, %struct.obstack* %3775, i32 0, i32 4
  %3776 = load i8*, i8** %chunk_limit6113, align 8
  %cmp6114 = icmp ugt i8* %add.ptr6112, %3776
  br i1 %cmp6114, label %if.then.6116, label %if.end.6117

if.then.6116:                                     ; preds = %if.end.6106
  %3777 = load %struct.obstack*, %struct.obstack** %__o6107, align 8
  %3778 = load i32, i32* %__len6108, align 4
  call void @_obstack_newchunk(%struct.obstack* %3777, i32 %3778)
  br label %if.end.6117

if.end.6117:                                      ; preds = %if.then.6116, %if.end.6106
  %3779 = load %struct.obstack*, %struct.obstack** %__o6107, align 8
  %next_free6118 = getelementptr inbounds %struct.obstack, %struct.obstack* %3779, i32 0, i32 3
  %3780 = load i8*, i8** %next_free6118, align 8
  %arraydecay6119 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3781 = load i32, i32* %__len6108, align 4
  %conv6120 = sext i32 %3781 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3780, i8* %arraydecay6119, i64 %conv6120, i32 1, i1 false)
  %3782 = load i32, i32* %__len6108, align 4
  %3783 = load %struct.obstack*, %struct.obstack** %__o6107, align 8
  %next_free6121 = getelementptr inbounds %struct.obstack, %struct.obstack* %3783, i32 0, i32 3
  %3784 = load i8*, i8** %next_free6121, align 8
  %idx.ext6122 = sext i32 %3782 to i64
  %add.ptr6123 = getelementptr inbounds i8, i8* %3784, i64 %idx.ext6122
  store i8* %add.ptr6123, i8** %next_free6121, align 8
  %3785 = load i64, i64* %width, align 8
  %tobool6124 = icmp ne i64 %3785, 0
  br i1 %tobool6124, label %land.lhs.true.6125, label %if.end.6145

land.lhs.true.6125:                               ; preds = %if.end.6117
  %3786 = load i32, i32* %justification, align 4
  %cmp6126 = icmp slt i32 %3786, 0
  br i1 %cmp6126, label %if.then.6128, label %if.end.6145

if.then.6128:                                     ; preds = %land.lhs.true.6125
  br label %for.cond.6129

for.cond.6129:                                    ; preds = %for.inc.6142, %if.then.6128
  %3787 = load i64, i64* %nspace6077, align 8
  %tobool6130 = icmp ne i64 %3787, 0
  br i1 %tobool6130, label %for.body.6131, label %for.end.6144

for.body.6131:                                    ; preds = %for.cond.6129
  %3788 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3788, %struct.obstack** %__o6132, align 8
  %3789 = load %struct.obstack*, %struct.obstack** %__o6132, align 8
  %next_free6133 = getelementptr inbounds %struct.obstack, %struct.obstack* %3789, i32 0, i32 3
  %3790 = load i8*, i8** %next_free6133, align 8
  %add.ptr6134 = getelementptr inbounds i8, i8* %3790, i64 1
  %3791 = load %struct.obstack*, %struct.obstack** %__o6132, align 8
  %chunk_limit6135 = getelementptr inbounds %struct.obstack, %struct.obstack* %3791, i32 0, i32 4
  %3792 = load i8*, i8** %chunk_limit6135, align 8
  %cmp6136 = icmp ugt i8* %add.ptr6134, %3792
  br i1 %cmp6136, label %if.then.6138, label %if.end.6139

if.then.6138:                                     ; preds = %for.body.6131
  %3793 = load %struct.obstack*, %struct.obstack** %__o6132, align 8
  call void @_obstack_newchunk(%struct.obstack* %3793, i32 1)
  br label %if.end.6139

if.end.6139:                                      ; preds = %if.then.6138, %for.body.6131
  %3794 = load i8, i8* %padding, align 1
  %3795 = load %struct.obstack*, %struct.obstack** %__o6132, align 8
  %next_free6140 = getelementptr inbounds %struct.obstack, %struct.obstack* %3795, i32 0, i32 3
  %3796 = load i8*, i8** %next_free6140, align 8
  %incdec.ptr6141 = getelementptr inbounds i8, i8* %3796, i32 1
  store i8* %incdec.ptr6141, i8** %next_free6140, align 8
  store i8 %3794, i8* %3796, align 1
  br label %for.inc.6142

for.inc.6142:                                     ; preds = %if.end.6139
  %3797 = load i64, i64* %nspace6077, align 8
  %dec6143 = add i64 %3797, -1
  store i64 %dec6143, i64* %nspace6077, align 8
  br label %for.cond.6129

for.end.6144:                                     ; preds = %for.cond.6129
  br label %if.end.6145

if.end.6145:                                      ; preds = %for.end.6144, %land.lhs.true.6125, %if.end.6117
  br label %do.end.6146

do.end.6146:                                      ; preds = %if.end.6145
  br label %sw.epilog.6153

sw.default.6147:                                  ; preds = %sw.bb.2280
  %call6148 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %3798 = load i8*, i8** %context_name.addr, align 8
  %3799 = load i64, i64* %i, align 8
  %3800 = load i8*, i8** %str.addr, align 8
  %arrayidx6149 = getelementptr inbounds i8, i8* %3800, i64 %3799
  %3801 = load i8, i8* %arrayidx6149, align 1
  %conv6150 = zext i8 %3801 to i32
  %3802 = load i64, i64* %i, align 8
  %3803 = load i8*, i8** %str.addr, align 8
  %arrayidx6151 = getelementptr inbounds i8, i8* %3803, i64 %3802
  %3804 = load i8, i8* %arrayidx6151, align 1
  %conv6152 = zext i8 %3804 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6148, i8* %3798, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 %conv6150, i32 %conv6152)
  br label %sw.epilog.6153

sw.epilog.6153:                                   ; preds = %sw.default.6147, %do.end.6146, %do.end.6061, %sw.epilog.5980, %sw.epilog.5570, %do.end.5119, %do.end.5024, %sw.epilog.4945, %do.end.4328, %if.end.4246, %sw.epilog.4076, %do.end.3769, %do.end.3684, %do.end.3609, %do.end.3530, %do.end.3451, %if.end.3325, %do.end.3182, %do.end.3099, %if.end.3022, %if.end.2900, %if.end.2533, %do.end.2419, %do.end.2337
  br label %sw.epilog.7608

sw.bb.6154:                                       ; preds = %while.end
  %3805 = load i64, i64* %i, align 8
  %3806 = load i8*, i8** %str.addr, align 8
  %arrayidx6155 = getelementptr inbounds i8, i8* %3806, i64 %3805
  %3807 = load i8, i8* %arrayidx6155, align 1
  %conv6156 = zext i8 %3807 to i32
  switch i32 %conv6156, label %sw.default.7601 [
    i32 35, label %sw.bb.6157
    i32 40, label %sw.bb.6212
    i32 123, label %sw.bb.6254
    i32 46, label %sw.bb.6477
    i32 63, label %sw.bb.6549
    i32 33, label %sw.bb.6677
    i32 102, label %sw.bb.7016
    i32 104, label %sw.bb.7127
    i32 111, label %sw.bb.7204
    i32 79, label %sw.bb.7280
    i32 112, label %sw.bb.7365
    i32 118, label %sw.bb.7443
    i32 119, label %sw.bb.7523
  ]

sw.bb.6157:                                       ; preds = %sw.bb.6154
  br label %do.body.6158

do.body.6158:                                     ; preds = %sw.bb.6157
  %3808 = load i64, i64* %width, align 8
  %tobool6160 = icmp ne i64 %3808, 0
  br i1 %tobool6160, label %land.lhs.true.6161, label %if.end.6175

land.lhs.true.6161:                               ; preds = %do.body.6158
  %3809 = load i32, i32* %justification, align 4
  %cmp6162 = icmp slt i32 %3809, 0
  br i1 %cmp6162, label %if.then.6164, label %if.end.6175

if.then.6164:                                     ; preds = %land.lhs.true.6161
  %3810 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3810, %struct.obstack** %__o6165, align 8
  %3811 = load %struct.obstack*, %struct.obstack** %__o6165, align 8
  %next_free6166 = getelementptr inbounds %struct.obstack, %struct.obstack* %3811, i32 0, i32 3
  %3812 = load i8*, i8** %next_free6166, align 8
  %add.ptr6167 = getelementptr inbounds i8, i8* %3812, i64 1
  %3813 = load %struct.obstack*, %struct.obstack** %__o6165, align 8
  %chunk_limit6168 = getelementptr inbounds %struct.obstack, %struct.obstack* %3813, i32 0, i32 4
  %3814 = load i8*, i8** %chunk_limit6168, align 8
  %cmp6169 = icmp ugt i8* %add.ptr6167, %3814
  br i1 %cmp6169, label %if.then.6171, label %if.end.6172

if.then.6171:                                     ; preds = %if.then.6164
  %3815 = load %struct.obstack*, %struct.obstack** %__o6165, align 8
  call void @_obstack_newchunk(%struct.obstack* %3815, i32 1)
  br label %if.end.6172

if.end.6172:                                      ; preds = %if.then.6171, %if.then.6164
  %3816 = load %struct.obstack*, %struct.obstack** %__o6165, align 8
  %next_free6173 = getelementptr inbounds %struct.obstack, %struct.obstack* %3816, i32 0, i32 3
  %3817 = load i8*, i8** %next_free6173, align 8
  %incdec.ptr6174 = getelementptr inbounds i8, i8* %3817, i32 1
  store i8* %incdec.ptr6174, i8** %next_free6173, align 8
  store i8 35, i8* %3817, align 1
  br label %if.end.6175

if.end.6175:                                      ; preds = %if.end.6172, %land.lhs.true.6161, %do.body.6158
  store i32 0, i32* %a6159, align 4
  br label %for.cond.6176

for.cond.6176:                                    ; preds = %for.inc.6192, %if.end.6175
  %3818 = load i32, i32* %a6159, align 4
  %3819 = load i64, i64* %width, align 8
  %conv6177 = trunc i64 %3819 to i32
  %sub6178 = sub nsw i32 %conv6177, 1
  %cmp6179 = icmp slt i32 %3818, %sub6178
  br i1 %cmp6179, label %for.body.6181, label %for.end.6194

for.body.6181:                                    ; preds = %for.cond.6176
  %3820 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3820, %struct.obstack** %__o6182, align 8
  %3821 = load %struct.obstack*, %struct.obstack** %__o6182, align 8
  %next_free6183 = getelementptr inbounds %struct.obstack, %struct.obstack* %3821, i32 0, i32 3
  %3822 = load i8*, i8** %next_free6183, align 8
  %add.ptr6184 = getelementptr inbounds i8, i8* %3822, i64 1
  %3823 = load %struct.obstack*, %struct.obstack** %__o6182, align 8
  %chunk_limit6185 = getelementptr inbounds %struct.obstack, %struct.obstack* %3823, i32 0, i32 4
  %3824 = load i8*, i8** %chunk_limit6185, align 8
  %cmp6186 = icmp ugt i8* %add.ptr6184, %3824
  br i1 %cmp6186, label %if.then.6188, label %if.end.6189

if.then.6188:                                     ; preds = %for.body.6181
  %3825 = load %struct.obstack*, %struct.obstack** %__o6182, align 8
  call void @_obstack_newchunk(%struct.obstack* %3825, i32 1)
  br label %if.end.6189

if.end.6189:                                      ; preds = %if.then.6188, %for.body.6181
  %3826 = load i8, i8* %padding, align 1
  %3827 = load %struct.obstack*, %struct.obstack** %__o6182, align 8
  %next_free6190 = getelementptr inbounds %struct.obstack, %struct.obstack* %3827, i32 0, i32 3
  %3828 = load i8*, i8** %next_free6190, align 8
  %incdec.ptr6191 = getelementptr inbounds i8, i8* %3828, i32 1
  store i8* %incdec.ptr6191, i8** %next_free6190, align 8
  store i8 %3826, i8* %3828, align 1
  br label %for.inc.6192

for.inc.6192:                                     ; preds = %if.end.6189
  %3829 = load i32, i32* %a6159, align 4
  %inc6193 = add nsw i32 %3829, 1
  store i32 %inc6193, i32* %a6159, align 4
  br label %for.cond.6176

for.end.6194:                                     ; preds = %for.cond.6176
  %3830 = load i64, i64* %width, align 8
  %tobool6195 = icmp ne i64 %3830, 0
  br i1 %tobool6195, label %lor.lhs.false.6196, label %if.then.6199

lor.lhs.false.6196:                               ; preds = %for.end.6194
  %3831 = load i32, i32* %justification, align 4
  %cmp6197 = icmp sgt i32 %3831, 0
  br i1 %cmp6197, label %if.then.6199, label %if.end.6210

if.then.6199:                                     ; preds = %lor.lhs.false.6196, %for.end.6194
  %3832 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3832, %struct.obstack** %__o6200, align 8
  %3833 = load %struct.obstack*, %struct.obstack** %__o6200, align 8
  %next_free6201 = getelementptr inbounds %struct.obstack, %struct.obstack* %3833, i32 0, i32 3
  %3834 = load i8*, i8** %next_free6201, align 8
  %add.ptr6202 = getelementptr inbounds i8, i8* %3834, i64 1
  %3835 = load %struct.obstack*, %struct.obstack** %__o6200, align 8
  %chunk_limit6203 = getelementptr inbounds %struct.obstack, %struct.obstack* %3835, i32 0, i32 4
  %3836 = load i8*, i8** %chunk_limit6203, align 8
  %cmp6204 = icmp ugt i8* %add.ptr6202, %3836
  br i1 %cmp6204, label %if.then.6206, label %if.end.6207

if.then.6206:                                     ; preds = %if.then.6199
  %3837 = load %struct.obstack*, %struct.obstack** %__o6200, align 8
  call void @_obstack_newchunk(%struct.obstack* %3837, i32 1)
  br label %if.end.6207

if.end.6207:                                      ; preds = %if.then.6206, %if.then.6199
  %3838 = load %struct.obstack*, %struct.obstack** %__o6200, align 8
  %next_free6208 = getelementptr inbounds %struct.obstack, %struct.obstack* %3838, i32 0, i32 3
  %3839 = load i8*, i8** %next_free6208, align 8
  %incdec.ptr6209 = getelementptr inbounds i8, i8* %3839, i32 1
  store i8* %incdec.ptr6209, i8** %next_free6208, align 8
  store i8 35, i8* %3839, align 1
  br label %if.end.6210

if.end.6210:                                      ; preds = %if.end.6207, %lor.lhs.false.6196
  br label %do.end.6211

do.end.6211:                                      ; preds = %if.end.6210
  br label %sw.epilog.7607

sw.bb.6212:                                       ; preds = %sw.bb.6154
  store i64 0, i64* %j, align 8
  %3840 = load i64, i64* %i, align 8
  %inc6213 = add i64 %3840, 1
  store i64 %inc6213, i64* %i, align 8
  br label %for.cond.6214

for.cond.6214:                                    ; preds = %for.inc.6231, %sw.bb.6212
  %3841 = load i64, i64* %i, align 8
  %3842 = load i8*, i8** %str.addr, align 8
  %arrayidx6215 = getelementptr inbounds i8, i8* %3842, i64 %3841
  %3843 = load i8, i8* %arrayidx6215, align 1
  %conv6216 = zext i8 %3843 to i32
  %tobool6217 = icmp ne i32 %conv6216, 0
  br i1 %tobool6217, label %land.lhs.true.6218, label %land.end.6226

land.lhs.true.6218:                               ; preds = %for.cond.6214
  %3844 = load i64, i64* %i, align 8
  %3845 = load i8*, i8** %str.addr, align 8
  %arrayidx6219 = getelementptr inbounds i8, i8* %3845, i64 %3844
  %3846 = load i8, i8* %arrayidx6219, align 1
  %conv6220 = zext i8 %3846 to i32
  %cmp6221 = icmp ne i32 %conv6220, 41
  br i1 %cmp6221, label %land.rhs.6223, label %land.end.6226

land.rhs.6223:                                    ; preds = %land.lhs.true.6218
  %3847 = load i64, i64* %j, align 8
  %cmp6224 = icmp ult i64 %3847, 511
  br label %land.end.6226

land.end.6226:                                    ; preds = %land.rhs.6223, %land.lhs.true.6218, %for.cond.6214
  %3848 = phi i1 [ false, %land.lhs.true.6218 ], [ false, %for.cond.6214 ], [ %cmp6224, %land.rhs.6223 ]
  br i1 %3848, label %for.body.6227, label %for.end.6233

for.body.6227:                                    ; preds = %land.end.6226
  %3849 = load i64, i64* %i, align 8
  %3850 = load i8*, i8** %str.addr, align 8
  %arrayidx6228 = getelementptr inbounds i8, i8* %3850, i64 %3849
  %3851 = load i8, i8* %arrayidx6228, align 1
  %3852 = load i64, i64* %j, align 8
  %inc6229 = add i64 %3852, 1
  store i64 %inc6229, i64* %j, align 8
  %arrayidx6230 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %3852
  store i8 %3851, i8* %arrayidx6230, align 1
  br label %for.inc.6231

for.inc.6231:                                     ; preds = %for.body.6227
  %3853 = load i64, i64* %i, align 8
  %inc6232 = add i64 %3853, 1
  store i64 %inc6232, i64* %i, align 8
  br label %for.cond.6214

for.end.6233:                                     ; preds = %land.end.6226
  %3854 = load i64, i64* %i, align 8
  %3855 = load i8*, i8** %str.addr, align 8
  %arrayidx6234 = getelementptr inbounds i8, i8* %3855, i64 %3854
  %3856 = load i8, i8* %arrayidx6234, align 1
  %conv6235 = zext i8 %3856 to i32
  %cmp6236 = icmp eq i32 %conv6235, 0
  br i1 %cmp6236, label %if.then.6238, label %if.end.6240

if.then.6238:                                     ; preds = %for.end.6233
  %call6239 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %3857 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6239, i8* %3857, i32 41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i32 41)
  br label %if.end.6240

if.end.6240:                                      ; preds = %if.then.6238, %for.end.6233
  %3858 = load i64, i64* %i, align 8
  %3859 = load i8*, i8** %str.addr, align 8
  %arrayidx6241 = getelementptr inbounds i8, i8* %3859, i64 %3858
  %3860 = load i8, i8* %arrayidx6241, align 1
  %conv6242 = zext i8 %3860 to i32
  %cmp6243 = icmp ne i32 %conv6242, 41
  br i1 %cmp6243, label %if.then.6245, label %if.end.6247

if.then.6245:                                     ; preds = %if.end.6240
  %call6246 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #5
  %3861 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6246, i8* %3861, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.6247

if.end.6247:                                      ; preds = %if.then.6245, %if.end.6240
  %3862 = load i64, i64* %j, align 8
  %arrayidx6248 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %3862
  store i8 0, i8* %arrayidx6248, align 1
  %3863 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %arraydecay6249 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call6250 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %3863, i8* %arraydecay6249)
  store i8* %call6250, i8** %cp, align 8
  %3864 = load i8*, i8** %cp, align 8
  %tobool6251 = icmp ne i8* %3864, null
  br i1 %tobool6251, label %if.then.6252, label %if.end.6253

if.then.6252:                                     ; preds = %if.end.6247
  %3865 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %3866 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3867 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3868 = load i8*, i8** %context_name.addr, align 8
  %3869 = load i8*, i8** %cp, align 8
  call void @grow_user_string_obstack(%struct.obstack* %3865, %struct.a2ps_job* %3866, %struct.file_job* %3867, i8* %3868, i8* %3869)
  br label %if.end.6253

if.end.6253:                                      ; preds = %if.then.6252, %if.end.6247
  br label %sw.epilog.7607

sw.bb.6254:                                       ; preds = %sw.bb.6154
  store i8* null, i8** %cp2, align 8
  store i64 0, i64* %j, align 8
  %3870 = load i64, i64* %i, align 8
  %inc6255 = add i64 %3870, 1
  store i64 %inc6255, i64* %i, align 8
  br label %for.cond.6256

for.cond.6256:                                    ; preds = %for.inc.6280, %sw.bb.6254
  %3871 = load i64, i64* %i, align 8
  %3872 = load i8*, i8** %str.addr, align 8
  %arrayidx6257 = getelementptr inbounds i8, i8* %3872, i64 %3871
  %3873 = load i8, i8* %arrayidx6257, align 1
  %conv6258 = zext i8 %3873 to i32
  %cmp6259 = icmp ne i32 %conv6258, 125
  br i1 %cmp6259, label %land.rhs.6261, label %land.end.6264

land.rhs.6261:                                    ; preds = %for.cond.6256
  %3874 = load i64, i64* %j, align 8
  %cmp6262 = icmp ult i64 %3874, 511
  br label %land.end.6264

land.end.6264:                                    ; preds = %land.rhs.6261, %for.cond.6256
  %3875 = phi i1 [ false, %for.cond.6256 ], [ %cmp6262, %land.rhs.6261 ]
  br i1 %3875, label %for.body.6265, label %for.end.6282

for.body.6265:                                    ; preds = %land.end.6264
  %3876 = load i64, i64* %i, align 8
  %3877 = load i8*, i8** %str.addr, align 8
  %arrayidx6266 = getelementptr inbounds i8, i8* %3877, i64 %3876
  %3878 = load i8, i8* %arrayidx6266, align 1
  %conv6267 = zext i8 %3878 to i32
  switch i32 %conv6267, label %sw.default.6275 [
    i32 0, label %sw.bb.6268
    i32 58, label %sw.bb.6270
  ]

sw.bb.6268:                                       ; preds = %for.body.6265
  %call6269 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %3879 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6269, i8* %3879, i32 125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i32 125)
  br label %sw.epilog.6279

sw.bb.6270:                                       ; preds = %for.body.6265
  %3880 = load i64, i64* %j, align 8
  %inc6271 = add i64 %3880, 1
  store i64 %inc6271, i64* %j, align 8
  %arrayidx6272 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %3880
  store i8 0, i8* %arrayidx6272, align 1
  %arraydecay6273 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3881 = load i64, i64* %j, align 8
  %add.ptr6274 = getelementptr inbounds i8, i8* %arraydecay6273, i64 %3881
  store i8* %add.ptr6274, i8** %cp2, align 8
  br label %sw.epilog.6279

sw.default.6275:                                  ; preds = %for.body.6265
  %3882 = load i64, i64* %i, align 8
  %3883 = load i8*, i8** %str.addr, align 8
  %arrayidx6276 = getelementptr inbounds i8, i8* %3883, i64 %3882
  %3884 = load i8, i8* %arrayidx6276, align 1
  %3885 = load i64, i64* %j, align 8
  %inc6277 = add i64 %3885, 1
  store i64 %inc6277, i64* %j, align 8
  %arrayidx6278 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %3885
  store i8 %3884, i8* %arrayidx6278, align 1
  br label %sw.epilog.6279

sw.epilog.6279:                                   ; preds = %sw.default.6275, %sw.bb.6270, %sw.bb.6268
  br label %for.inc.6280

for.inc.6280:                                     ; preds = %sw.epilog.6279
  %3886 = load i64, i64* %i, align 8
  %inc6281 = add i64 %3886, 1
  store i64 %inc6281, i64* %i, align 8
  br label %for.cond.6256

for.end.6282:                                     ; preds = %land.end.6264
  %3887 = load i64, i64* %i, align 8
  %3888 = load i8*, i8** %str.addr, align 8
  %arrayidx6283 = getelementptr inbounds i8, i8* %3888, i64 %3887
  %3889 = load i8, i8* %arrayidx6283, align 1
  %conv6284 = zext i8 %3889 to i32
  %cmp6285 = icmp ne i32 %conv6284, 125
  br i1 %cmp6285, label %if.then.6287, label %if.end.6289

if.then.6287:                                     ; preds = %for.end.6282
  %call6288 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #5
  %3890 = load i8*, i8** %context_name.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6288, i8* %3890, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.6289

if.end.6289:                                      ; preds = %if.then.6287, %for.end.6282
  %3891 = load i64, i64* %j, align 8
  %arrayidx6290 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 %3891
  store i8 0, i8* %arrayidx6290, align 1
  %3892 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %arraydecay6291 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call6292 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %3892, i8* %arraydecay6291)
  store i8* %call6292, i8** %cp, align 8
  %3893 = load i8*, i8** %cp2, align 8
  %cmp6293 = icmp eq i8* %3893, null
  br i1 %cmp6293, label %if.then.6299, label %lor.lhs.false.6295

lor.lhs.false.6295:                               ; preds = %if.end.6289
  %3894 = load i8*, i8** %cp2, align 8
  %3895 = load i8, i8* %3894, align 1
  %conv6296 = zext i8 %3895 to i32
  %cmp6297 = icmp eq i32 %conv6296, 0
  br i1 %cmp6297, label %if.then.6299, label %if.else.6303

if.then.6299:                                     ; preds = %lor.lhs.false.6295, %if.end.6289
  %3896 = load i8*, i8** %cp, align 8
  %tobool6300 = icmp ne i8* %3896, null
  br i1 %tobool6300, label %if.then.6301, label %if.end.6302

if.then.6301:                                     ; preds = %if.then.6299
  %3897 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %3898 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3899 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3900 = load i8*, i8** %context_name.addr, align 8
  %3901 = load i8*, i8** %cp, align 8
  call void @grow_user_string_obstack(%struct.obstack* %3897, %struct.a2ps_job* %3898, %struct.file_job* %3899, i8* %3900, i8* %3901)
  br label %if.end.6302

if.end.6302:                                      ; preds = %if.then.6301, %if.then.6299
  br label %if.end.6476

if.else.6303:                                     ; preds = %lor.lhs.false.6295
  %3902 = load i8*, i8** %cp2, align 8
  %3903 = load i8, i8* %3902, align 1
  %conv6304 = zext i8 %3903 to i32
  switch i32 %conv6304, label %sw.default.6472 [
    i32 45, label %sw.bb.6305
    i32 43, label %sw.bb.6389
  ]

sw.bb.6305:                                       ; preds = %if.else.6303
  %3904 = load i8*, i8** %cp, align 8
  %cmp6306 = icmp eq i8* %3904, null
  br i1 %cmp6306, label %if.else.6313, label %lor.lhs.false.6308

lor.lhs.false.6308:                               ; preds = %sw.bb.6305
  %3905 = load i8*, i8** %cp, align 8
  %3906 = load i8, i8* %3905, align 1
  %conv6309 = zext i8 %3906 to i32
  %cmp6310 = icmp eq i32 %conv6309, 0
  br i1 %cmp6310, label %if.else.6313, label %if.then.6312

if.then.6312:                                     ; preds = %lor.lhs.false.6308
  %3907 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %3908 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3909 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %3910 = load i8*, i8** %context_name.addr, align 8
  %3911 = load i8*, i8** %cp, align 8
  call void @grow_user_string_obstack(%struct.obstack* %3907, %struct.a2ps_job* %3908, %struct.file_job* %3909, i8* %3910, i8* %3911)
  br label %if.end.6388

if.else.6313:                                     ; preds = %lor.lhs.false.6308, %sw.bb.6305
  br label %do.body.6314

do.body.6314:                                     ; preds = %if.else.6313
  %3912 = load i8*, i8** %cp2, align 8
  %add.ptr6316 = getelementptr inbounds i8, i8* %3912, i64 1
  %call6317 = call i64 @strlen(i8* %add.ptr6316) #6
  store i64 %call6317, i64* %len6315, align 8
  %3913 = load i64, i64* %len6315, align 8
  %3914 = load i64, i64* %width, align 8
  %cmp6319 = icmp ugt i64 %3913, %3914
  br i1 %cmp6319, label %cond.true.6321, label %cond.false.6322

cond.true.6321:                                   ; preds = %do.body.6314
  br label %cond.end.6324

cond.false.6322:                                  ; preds = %do.body.6314
  %3915 = load i64, i64* %width, align 8
  %3916 = load i64, i64* %len6315, align 8
  %sub6323 = sub i64 %3915, %3916
  br label %cond.end.6324

cond.end.6324:                                    ; preds = %cond.false.6322, %cond.true.6321
  %cond6325 = phi i64 [ 0, %cond.true.6321 ], [ %sub6323, %cond.false.6322 ]
  store i64 %cond6325, i64* %nspace6318, align 8
  %3917 = load i64, i64* %width, align 8
  %tobool6326 = icmp ne i64 %3917, 0
  br i1 %tobool6326, label %land.lhs.true.6327, label %if.end.6347

land.lhs.true.6327:                               ; preds = %cond.end.6324
  %3918 = load i32, i32* %justification, align 4
  %cmp6328 = icmp sgt i32 %3918, 0
  br i1 %cmp6328, label %if.then.6330, label %if.end.6347

if.then.6330:                                     ; preds = %land.lhs.true.6327
  br label %for.cond.6331

for.cond.6331:                                    ; preds = %for.inc.6344, %if.then.6330
  %3919 = load i64, i64* %nspace6318, align 8
  %tobool6332 = icmp ne i64 %3919, 0
  br i1 %tobool6332, label %for.body.6333, label %for.end.6346

for.body.6333:                                    ; preds = %for.cond.6331
  %3920 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3920, %struct.obstack** %__o6334, align 8
  %3921 = load %struct.obstack*, %struct.obstack** %__o6334, align 8
  %next_free6335 = getelementptr inbounds %struct.obstack, %struct.obstack* %3921, i32 0, i32 3
  %3922 = load i8*, i8** %next_free6335, align 8
  %add.ptr6336 = getelementptr inbounds i8, i8* %3922, i64 1
  %3923 = load %struct.obstack*, %struct.obstack** %__o6334, align 8
  %chunk_limit6337 = getelementptr inbounds %struct.obstack, %struct.obstack* %3923, i32 0, i32 4
  %3924 = load i8*, i8** %chunk_limit6337, align 8
  %cmp6338 = icmp ugt i8* %add.ptr6336, %3924
  br i1 %cmp6338, label %if.then.6340, label %if.end.6341

if.then.6340:                                     ; preds = %for.body.6333
  %3925 = load %struct.obstack*, %struct.obstack** %__o6334, align 8
  call void @_obstack_newchunk(%struct.obstack* %3925, i32 1)
  br label %if.end.6341

if.end.6341:                                      ; preds = %if.then.6340, %for.body.6333
  %3926 = load i8, i8* %padding, align 1
  %3927 = load %struct.obstack*, %struct.obstack** %__o6334, align 8
  %next_free6342 = getelementptr inbounds %struct.obstack, %struct.obstack* %3927, i32 0, i32 3
  %3928 = load i8*, i8** %next_free6342, align 8
  %incdec.ptr6343 = getelementptr inbounds i8, i8* %3928, i32 1
  store i8* %incdec.ptr6343, i8** %next_free6342, align 8
  store i8 %3926, i8* %3928, align 1
  br label %for.inc.6344

for.inc.6344:                                     ; preds = %if.end.6341
  %3929 = load i64, i64* %nspace6318, align 8
  %dec6345 = add i64 %3929, -1
  store i64 %dec6345, i64* %nspace6318, align 8
  br label %for.cond.6331

for.end.6346:                                     ; preds = %for.cond.6331
  br label %if.end.6347

if.end.6347:                                      ; preds = %for.end.6346, %land.lhs.true.6327, %cond.end.6324
  %3930 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3930, %struct.obstack** %__o6348, align 8
  %3931 = load i64, i64* %len6315, align 8
  %conv6350 = trunc i64 %3931 to i32
  store i32 %conv6350, i32* %__len6349, align 4
  %3932 = load %struct.obstack*, %struct.obstack** %__o6348, align 8
  %next_free6351 = getelementptr inbounds %struct.obstack, %struct.obstack* %3932, i32 0, i32 3
  %3933 = load i8*, i8** %next_free6351, align 8
  %3934 = load i32, i32* %__len6349, align 4
  %idx.ext6352 = sext i32 %3934 to i64
  %add.ptr6353 = getelementptr inbounds i8, i8* %3933, i64 %idx.ext6352
  %3935 = load %struct.obstack*, %struct.obstack** %__o6348, align 8
  %chunk_limit6354 = getelementptr inbounds %struct.obstack, %struct.obstack* %3935, i32 0, i32 4
  %3936 = load i8*, i8** %chunk_limit6354, align 8
  %cmp6355 = icmp ugt i8* %add.ptr6353, %3936
  br i1 %cmp6355, label %if.then.6357, label %if.end.6358

if.then.6357:                                     ; preds = %if.end.6347
  %3937 = load %struct.obstack*, %struct.obstack** %__o6348, align 8
  %3938 = load i32, i32* %__len6349, align 4
  call void @_obstack_newchunk(%struct.obstack* %3937, i32 %3938)
  br label %if.end.6358

if.end.6358:                                      ; preds = %if.then.6357, %if.end.6347
  %3939 = load %struct.obstack*, %struct.obstack** %__o6348, align 8
  %next_free6359 = getelementptr inbounds %struct.obstack, %struct.obstack* %3939, i32 0, i32 3
  %3940 = load i8*, i8** %next_free6359, align 8
  %3941 = load i8*, i8** %cp2, align 8
  %add.ptr6360 = getelementptr inbounds i8, i8* %3941, i64 1
  %3942 = load i32, i32* %__len6349, align 4
  %conv6361 = sext i32 %3942 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3940, i8* %add.ptr6360, i64 %conv6361, i32 1, i1 false)
  %3943 = load i32, i32* %__len6349, align 4
  %3944 = load %struct.obstack*, %struct.obstack** %__o6348, align 8
  %next_free6362 = getelementptr inbounds %struct.obstack, %struct.obstack* %3944, i32 0, i32 3
  %3945 = load i8*, i8** %next_free6362, align 8
  %idx.ext6363 = sext i32 %3943 to i64
  %add.ptr6364 = getelementptr inbounds i8, i8* %3945, i64 %idx.ext6363
  store i8* %add.ptr6364, i8** %next_free6362, align 8
  %3946 = load i64, i64* %width, align 8
  %tobool6365 = icmp ne i64 %3946, 0
  br i1 %tobool6365, label %land.lhs.true.6366, label %if.end.6386

land.lhs.true.6366:                               ; preds = %if.end.6358
  %3947 = load i32, i32* %justification, align 4
  %cmp6367 = icmp slt i32 %3947, 0
  br i1 %cmp6367, label %if.then.6369, label %if.end.6386

if.then.6369:                                     ; preds = %land.lhs.true.6366
  br label %for.cond.6370

for.cond.6370:                                    ; preds = %for.inc.6383, %if.then.6369
  %3948 = load i64, i64* %nspace6318, align 8
  %tobool6371 = icmp ne i64 %3948, 0
  br i1 %tobool6371, label %for.body.6372, label %for.end.6385

for.body.6372:                                    ; preds = %for.cond.6370
  %3949 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3949, %struct.obstack** %__o6373, align 8
  %3950 = load %struct.obstack*, %struct.obstack** %__o6373, align 8
  %next_free6374 = getelementptr inbounds %struct.obstack, %struct.obstack* %3950, i32 0, i32 3
  %3951 = load i8*, i8** %next_free6374, align 8
  %add.ptr6375 = getelementptr inbounds i8, i8* %3951, i64 1
  %3952 = load %struct.obstack*, %struct.obstack** %__o6373, align 8
  %chunk_limit6376 = getelementptr inbounds %struct.obstack, %struct.obstack* %3952, i32 0, i32 4
  %3953 = load i8*, i8** %chunk_limit6376, align 8
  %cmp6377 = icmp ugt i8* %add.ptr6375, %3953
  br i1 %cmp6377, label %if.then.6379, label %if.end.6380

if.then.6379:                                     ; preds = %for.body.6372
  %3954 = load %struct.obstack*, %struct.obstack** %__o6373, align 8
  call void @_obstack_newchunk(%struct.obstack* %3954, i32 1)
  br label %if.end.6380

if.end.6380:                                      ; preds = %if.then.6379, %for.body.6372
  %3955 = load i8, i8* %padding, align 1
  %3956 = load %struct.obstack*, %struct.obstack** %__o6373, align 8
  %next_free6381 = getelementptr inbounds %struct.obstack, %struct.obstack* %3956, i32 0, i32 3
  %3957 = load i8*, i8** %next_free6381, align 8
  %incdec.ptr6382 = getelementptr inbounds i8, i8* %3957, i32 1
  store i8* %incdec.ptr6382, i8** %next_free6381, align 8
  store i8 %3955, i8* %3957, align 1
  br label %for.inc.6383

for.inc.6383:                                     ; preds = %if.end.6380
  %3958 = load i64, i64* %nspace6318, align 8
  %dec6384 = add i64 %3958, -1
  store i64 %dec6384, i64* %nspace6318, align 8
  br label %for.cond.6370

for.end.6385:                                     ; preds = %for.cond.6370
  br label %if.end.6386

if.end.6386:                                      ; preds = %for.end.6385, %land.lhs.true.6366, %if.end.6358
  br label %do.end.6387

do.end.6387:                                      ; preds = %if.end.6386
  br label %if.end.6388

if.end.6388:                                      ; preds = %do.end.6387, %if.then.6312
  br label %sw.epilog.6475

sw.bb.6389:                                       ; preds = %if.else.6303
  %3959 = load i8*, i8** %cp, align 8
  %cmp6390 = icmp eq i8* %3959, null
  br i1 %cmp6390, label %if.end.6471, label %lor.lhs.false.6392

lor.lhs.false.6392:                               ; preds = %sw.bb.6389
  %3960 = load i8*, i8** %cp, align 8
  %3961 = load i8, i8* %3960, align 1
  %conv6393 = zext i8 %3961 to i32
  %cmp6394 = icmp eq i32 %conv6393, 0
  br i1 %cmp6394, label %if.end.6471, label %if.then.6396

if.then.6396:                                     ; preds = %lor.lhs.false.6392
  br label %do.body.6397

do.body.6397:                                     ; preds = %if.then.6396
  %3962 = load i8*, i8** %cp2, align 8
  %add.ptr6399 = getelementptr inbounds i8, i8* %3962, i64 1
  %call6400 = call i64 @strlen(i8* %add.ptr6399) #6
  store i64 %call6400, i64* %len6398, align 8
  %3963 = load i64, i64* %len6398, align 8
  %3964 = load i64, i64* %width, align 8
  %cmp6402 = icmp ugt i64 %3963, %3964
  br i1 %cmp6402, label %cond.true.6404, label %cond.false.6405

cond.true.6404:                                   ; preds = %do.body.6397
  br label %cond.end.6407

cond.false.6405:                                  ; preds = %do.body.6397
  %3965 = load i64, i64* %width, align 8
  %3966 = load i64, i64* %len6398, align 8
  %sub6406 = sub i64 %3965, %3966
  br label %cond.end.6407

cond.end.6407:                                    ; preds = %cond.false.6405, %cond.true.6404
  %cond6408 = phi i64 [ 0, %cond.true.6404 ], [ %sub6406, %cond.false.6405 ]
  store i64 %cond6408, i64* %nspace6401, align 8
  %3967 = load i64, i64* %width, align 8
  %tobool6409 = icmp ne i64 %3967, 0
  br i1 %tobool6409, label %land.lhs.true.6410, label %if.end.6430

land.lhs.true.6410:                               ; preds = %cond.end.6407
  %3968 = load i32, i32* %justification, align 4
  %cmp6411 = icmp sgt i32 %3968, 0
  br i1 %cmp6411, label %if.then.6413, label %if.end.6430

if.then.6413:                                     ; preds = %land.lhs.true.6410
  br label %for.cond.6414

for.cond.6414:                                    ; preds = %for.inc.6427, %if.then.6413
  %3969 = load i64, i64* %nspace6401, align 8
  %tobool6415 = icmp ne i64 %3969, 0
  br i1 %tobool6415, label %for.body.6416, label %for.end.6429

for.body.6416:                                    ; preds = %for.cond.6414
  %3970 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3970, %struct.obstack** %__o6417, align 8
  %3971 = load %struct.obstack*, %struct.obstack** %__o6417, align 8
  %next_free6418 = getelementptr inbounds %struct.obstack, %struct.obstack* %3971, i32 0, i32 3
  %3972 = load i8*, i8** %next_free6418, align 8
  %add.ptr6419 = getelementptr inbounds i8, i8* %3972, i64 1
  %3973 = load %struct.obstack*, %struct.obstack** %__o6417, align 8
  %chunk_limit6420 = getelementptr inbounds %struct.obstack, %struct.obstack* %3973, i32 0, i32 4
  %3974 = load i8*, i8** %chunk_limit6420, align 8
  %cmp6421 = icmp ugt i8* %add.ptr6419, %3974
  br i1 %cmp6421, label %if.then.6423, label %if.end.6424

if.then.6423:                                     ; preds = %for.body.6416
  %3975 = load %struct.obstack*, %struct.obstack** %__o6417, align 8
  call void @_obstack_newchunk(%struct.obstack* %3975, i32 1)
  br label %if.end.6424

if.end.6424:                                      ; preds = %if.then.6423, %for.body.6416
  %3976 = load i8, i8* %padding, align 1
  %3977 = load %struct.obstack*, %struct.obstack** %__o6417, align 8
  %next_free6425 = getelementptr inbounds %struct.obstack, %struct.obstack* %3977, i32 0, i32 3
  %3978 = load i8*, i8** %next_free6425, align 8
  %incdec.ptr6426 = getelementptr inbounds i8, i8* %3978, i32 1
  store i8* %incdec.ptr6426, i8** %next_free6425, align 8
  store i8 %3976, i8* %3978, align 1
  br label %for.inc.6427

for.inc.6427:                                     ; preds = %if.end.6424
  %3979 = load i64, i64* %nspace6401, align 8
  %dec6428 = add i64 %3979, -1
  store i64 %dec6428, i64* %nspace6401, align 8
  br label %for.cond.6414

for.end.6429:                                     ; preds = %for.cond.6414
  br label %if.end.6430

if.end.6430:                                      ; preds = %for.end.6429, %land.lhs.true.6410, %cond.end.6407
  %3980 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3980, %struct.obstack** %__o6431, align 8
  %3981 = load i64, i64* %len6398, align 8
  %conv6433 = trunc i64 %3981 to i32
  store i32 %conv6433, i32* %__len6432, align 4
  %3982 = load %struct.obstack*, %struct.obstack** %__o6431, align 8
  %next_free6434 = getelementptr inbounds %struct.obstack, %struct.obstack* %3982, i32 0, i32 3
  %3983 = load i8*, i8** %next_free6434, align 8
  %3984 = load i32, i32* %__len6432, align 4
  %idx.ext6435 = sext i32 %3984 to i64
  %add.ptr6436 = getelementptr inbounds i8, i8* %3983, i64 %idx.ext6435
  %3985 = load %struct.obstack*, %struct.obstack** %__o6431, align 8
  %chunk_limit6437 = getelementptr inbounds %struct.obstack, %struct.obstack* %3985, i32 0, i32 4
  %3986 = load i8*, i8** %chunk_limit6437, align 8
  %cmp6438 = icmp ugt i8* %add.ptr6436, %3986
  br i1 %cmp6438, label %if.then.6440, label %if.end.6441

if.then.6440:                                     ; preds = %if.end.6430
  %3987 = load %struct.obstack*, %struct.obstack** %__o6431, align 8
  %3988 = load i32, i32* %__len6432, align 4
  call void @_obstack_newchunk(%struct.obstack* %3987, i32 %3988)
  br label %if.end.6441

if.end.6441:                                      ; preds = %if.then.6440, %if.end.6430
  %3989 = load %struct.obstack*, %struct.obstack** %__o6431, align 8
  %next_free6442 = getelementptr inbounds %struct.obstack, %struct.obstack* %3989, i32 0, i32 3
  %3990 = load i8*, i8** %next_free6442, align 8
  %3991 = load i8*, i8** %cp2, align 8
  %add.ptr6443 = getelementptr inbounds i8, i8* %3991, i64 1
  %3992 = load i32, i32* %__len6432, align 4
  %conv6444 = sext i32 %3992 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3990, i8* %add.ptr6443, i64 %conv6444, i32 1, i1 false)
  %3993 = load i32, i32* %__len6432, align 4
  %3994 = load %struct.obstack*, %struct.obstack** %__o6431, align 8
  %next_free6445 = getelementptr inbounds %struct.obstack, %struct.obstack* %3994, i32 0, i32 3
  %3995 = load i8*, i8** %next_free6445, align 8
  %idx.ext6446 = sext i32 %3993 to i64
  %add.ptr6447 = getelementptr inbounds i8, i8* %3995, i64 %idx.ext6446
  store i8* %add.ptr6447, i8** %next_free6445, align 8
  %3996 = load i64, i64* %width, align 8
  %tobool6448 = icmp ne i64 %3996, 0
  br i1 %tobool6448, label %land.lhs.true.6449, label %if.end.6469

land.lhs.true.6449:                               ; preds = %if.end.6441
  %3997 = load i32, i32* %justification, align 4
  %cmp6450 = icmp slt i32 %3997, 0
  br i1 %cmp6450, label %if.then.6452, label %if.end.6469

if.then.6452:                                     ; preds = %land.lhs.true.6449
  br label %for.cond.6453

for.cond.6453:                                    ; preds = %for.inc.6466, %if.then.6452
  %3998 = load i64, i64* %nspace6401, align 8
  %tobool6454 = icmp ne i64 %3998, 0
  br i1 %tobool6454, label %for.body.6455, label %for.end.6468

for.body.6455:                                    ; preds = %for.cond.6453
  %3999 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %3999, %struct.obstack** %__o6456, align 8
  %4000 = load %struct.obstack*, %struct.obstack** %__o6456, align 8
  %next_free6457 = getelementptr inbounds %struct.obstack, %struct.obstack* %4000, i32 0, i32 3
  %4001 = load i8*, i8** %next_free6457, align 8
  %add.ptr6458 = getelementptr inbounds i8, i8* %4001, i64 1
  %4002 = load %struct.obstack*, %struct.obstack** %__o6456, align 8
  %chunk_limit6459 = getelementptr inbounds %struct.obstack, %struct.obstack* %4002, i32 0, i32 4
  %4003 = load i8*, i8** %chunk_limit6459, align 8
  %cmp6460 = icmp ugt i8* %add.ptr6458, %4003
  br i1 %cmp6460, label %if.then.6462, label %if.end.6463

if.then.6462:                                     ; preds = %for.body.6455
  %4004 = load %struct.obstack*, %struct.obstack** %__o6456, align 8
  call void @_obstack_newchunk(%struct.obstack* %4004, i32 1)
  br label %if.end.6463

if.end.6463:                                      ; preds = %if.then.6462, %for.body.6455
  %4005 = load i8, i8* %padding, align 1
  %4006 = load %struct.obstack*, %struct.obstack** %__o6456, align 8
  %next_free6464 = getelementptr inbounds %struct.obstack, %struct.obstack* %4006, i32 0, i32 3
  %4007 = load i8*, i8** %next_free6464, align 8
  %incdec.ptr6465 = getelementptr inbounds i8, i8* %4007, i32 1
  store i8* %incdec.ptr6465, i8** %next_free6464, align 8
  store i8 %4005, i8* %4007, align 1
  br label %for.inc.6466

for.inc.6466:                                     ; preds = %if.end.6463
  %4008 = load i64, i64* %nspace6401, align 8
  %dec6467 = add i64 %4008, -1
  store i64 %dec6467, i64* %nspace6401, align 8
  br label %for.cond.6453

for.end.6468:                                     ; preds = %for.cond.6453
  br label %if.end.6469

if.end.6469:                                      ; preds = %for.end.6468, %land.lhs.true.6449, %if.end.6441
  br label %do.end.6470

do.end.6470:                                      ; preds = %if.end.6469
  br label %if.end.6471

if.end.6471:                                      ; preds = %do.end.6470, %lor.lhs.false.6392, %sw.bb.6389
  br label %sw.epilog.6475

sw.default.6472:                                  ; preds = %if.else.6303
  %call6473 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0)) #5
  %4009 = load i8*, i8** %context_name.addr, align 8
  %4010 = load i8*, i8** %cp2, align 8
  %4011 = load i8, i8* %4010, align 1
  %conv6474 = zext i8 %4011 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6473, i8* %4009, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 %conv6474, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  br label %sw.epilog.6475

sw.epilog.6475:                                   ; preds = %sw.default.6472, %if.end.6471, %if.end.6388
  br label %if.end.6476

if.end.6476:                                      ; preds = %sw.epilog.6475, %if.end.6302
  br label %sw.epilog.7607

sw.bb.6477:                                       ; preds = %sw.bb.6154
  br label %do.body.6478

do.body.6478:                                     ; preds = %sw.bb.6477
  store i64 2, i64* %len6479, align 8
  %4012 = load i64, i64* %len6479, align 8
  %4013 = load i64, i64* %width, align 8
  %cmp6481 = icmp ugt i64 %4012, %4013
  br i1 %cmp6481, label %cond.true.6483, label %cond.false.6484

cond.true.6483:                                   ; preds = %do.body.6478
  br label %cond.end.6486

cond.false.6484:                                  ; preds = %do.body.6478
  %4014 = load i64, i64* %width, align 8
  %4015 = load i64, i64* %len6479, align 8
  %sub6485 = sub i64 %4014, %4015
  br label %cond.end.6486

cond.end.6486:                                    ; preds = %cond.false.6484, %cond.true.6483
  %cond6487 = phi i64 [ 0, %cond.true.6483 ], [ %sub6485, %cond.false.6484 ]
  store i64 %cond6487, i64* %nspace6480, align 8
  %4016 = load i64, i64* %width, align 8
  %tobool6488 = icmp ne i64 %4016, 0
  br i1 %tobool6488, label %land.lhs.true.6489, label %if.end.6509

land.lhs.true.6489:                               ; preds = %cond.end.6486
  %4017 = load i32, i32* %justification, align 4
  %cmp6490 = icmp sgt i32 %4017, 0
  br i1 %cmp6490, label %if.then.6492, label %if.end.6509

if.then.6492:                                     ; preds = %land.lhs.true.6489
  br label %for.cond.6493

for.cond.6493:                                    ; preds = %for.inc.6506, %if.then.6492
  %4018 = load i64, i64* %nspace6480, align 8
  %tobool6494 = icmp ne i64 %4018, 0
  br i1 %tobool6494, label %for.body.6495, label %for.end.6508

for.body.6495:                                    ; preds = %for.cond.6493
  %4019 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4019, %struct.obstack** %__o6496, align 8
  %4020 = load %struct.obstack*, %struct.obstack** %__o6496, align 8
  %next_free6497 = getelementptr inbounds %struct.obstack, %struct.obstack* %4020, i32 0, i32 3
  %4021 = load i8*, i8** %next_free6497, align 8
  %add.ptr6498 = getelementptr inbounds i8, i8* %4021, i64 1
  %4022 = load %struct.obstack*, %struct.obstack** %__o6496, align 8
  %chunk_limit6499 = getelementptr inbounds %struct.obstack, %struct.obstack* %4022, i32 0, i32 4
  %4023 = load i8*, i8** %chunk_limit6499, align 8
  %cmp6500 = icmp ugt i8* %add.ptr6498, %4023
  br i1 %cmp6500, label %if.then.6502, label %if.end.6503

if.then.6502:                                     ; preds = %for.body.6495
  %4024 = load %struct.obstack*, %struct.obstack** %__o6496, align 8
  call void @_obstack_newchunk(%struct.obstack* %4024, i32 1)
  br label %if.end.6503

if.end.6503:                                      ; preds = %if.then.6502, %for.body.6495
  %4025 = load i8, i8* %padding, align 1
  %4026 = load %struct.obstack*, %struct.obstack** %__o6496, align 8
  %next_free6504 = getelementptr inbounds %struct.obstack, %struct.obstack* %4026, i32 0, i32 3
  %4027 = load i8*, i8** %next_free6504, align 8
  %incdec.ptr6505 = getelementptr inbounds i8, i8* %4027, i32 1
  store i8* %incdec.ptr6505, i8** %next_free6504, align 8
  store i8 %4025, i8* %4027, align 1
  br label %for.inc.6506

for.inc.6506:                                     ; preds = %if.end.6503
  %4028 = load i64, i64* %nspace6480, align 8
  %dec6507 = add i64 %4028, -1
  store i64 %dec6507, i64* %nspace6480, align 8
  br label %for.cond.6493

for.end.6508:                                     ; preds = %for.cond.6493
  br label %if.end.6509

if.end.6509:                                      ; preds = %for.end.6508, %land.lhs.true.6489, %cond.end.6486
  %4029 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4029, %struct.obstack** %__o6510, align 8
  %4030 = load i64, i64* %len6479, align 8
  %conv6512 = trunc i64 %4030 to i32
  store i32 %conv6512, i32* %__len6511, align 4
  %4031 = load %struct.obstack*, %struct.obstack** %__o6510, align 8
  %next_free6513 = getelementptr inbounds %struct.obstack, %struct.obstack* %4031, i32 0, i32 3
  %4032 = load i8*, i8** %next_free6513, align 8
  %4033 = load i32, i32* %__len6511, align 4
  %idx.ext6514 = sext i32 %4033 to i64
  %add.ptr6515 = getelementptr inbounds i8, i8* %4032, i64 %idx.ext6514
  %4034 = load %struct.obstack*, %struct.obstack** %__o6510, align 8
  %chunk_limit6516 = getelementptr inbounds %struct.obstack, %struct.obstack* %4034, i32 0, i32 4
  %4035 = load i8*, i8** %chunk_limit6516, align 8
  %cmp6517 = icmp ugt i8* %add.ptr6515, %4035
  br i1 %cmp6517, label %if.then.6519, label %if.end.6520

if.then.6519:                                     ; preds = %if.end.6509
  %4036 = load %struct.obstack*, %struct.obstack** %__o6510, align 8
  %4037 = load i32, i32* %__len6511, align 4
  call void @_obstack_newchunk(%struct.obstack* %4036, i32 %4037)
  br label %if.end.6520

if.end.6520:                                      ; preds = %if.then.6519, %if.end.6509
  %4038 = load %struct.obstack*, %struct.obstack** %__o6510, align 8
  %next_free6521 = getelementptr inbounds %struct.obstack, %struct.obstack* %4038, i32 0, i32 3
  %4039 = load i8*, i8** %next_free6521, align 8
  %4040 = load i32, i32* %__len6511, align 4
  %conv6522 = sext i32 %4040 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4039, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i64 %conv6522, i32 1, i1 false)
  %4041 = load i32, i32* %__len6511, align 4
  %4042 = load %struct.obstack*, %struct.obstack** %__o6510, align 8
  %next_free6523 = getelementptr inbounds %struct.obstack, %struct.obstack* %4042, i32 0, i32 3
  %4043 = load i8*, i8** %next_free6523, align 8
  %idx.ext6524 = sext i32 %4041 to i64
  %add.ptr6525 = getelementptr inbounds i8, i8* %4043, i64 %idx.ext6524
  store i8* %add.ptr6525, i8** %next_free6523, align 8
  %4044 = load i64, i64* %width, align 8
  %tobool6526 = icmp ne i64 %4044, 0
  br i1 %tobool6526, label %land.lhs.true.6527, label %if.end.6547

land.lhs.true.6527:                               ; preds = %if.end.6520
  %4045 = load i32, i32* %justification, align 4
  %cmp6528 = icmp slt i32 %4045, 0
  br i1 %cmp6528, label %if.then.6530, label %if.end.6547

if.then.6530:                                     ; preds = %land.lhs.true.6527
  br label %for.cond.6531

for.cond.6531:                                    ; preds = %for.inc.6544, %if.then.6530
  %4046 = load i64, i64* %nspace6480, align 8
  %tobool6532 = icmp ne i64 %4046, 0
  br i1 %tobool6532, label %for.body.6533, label %for.end.6546

for.body.6533:                                    ; preds = %for.cond.6531
  %4047 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4047, %struct.obstack** %__o6534, align 8
  %4048 = load %struct.obstack*, %struct.obstack** %__o6534, align 8
  %next_free6535 = getelementptr inbounds %struct.obstack, %struct.obstack* %4048, i32 0, i32 3
  %4049 = load i8*, i8** %next_free6535, align 8
  %add.ptr6536 = getelementptr inbounds i8, i8* %4049, i64 1
  %4050 = load %struct.obstack*, %struct.obstack** %__o6534, align 8
  %chunk_limit6537 = getelementptr inbounds %struct.obstack, %struct.obstack* %4050, i32 0, i32 4
  %4051 = load i8*, i8** %chunk_limit6537, align 8
  %cmp6538 = icmp ugt i8* %add.ptr6536, %4051
  br i1 %cmp6538, label %if.then.6540, label %if.end.6541

if.then.6540:                                     ; preds = %for.body.6533
  %4052 = load %struct.obstack*, %struct.obstack** %__o6534, align 8
  call void @_obstack_newchunk(%struct.obstack* %4052, i32 1)
  br label %if.end.6541

if.end.6541:                                      ; preds = %if.then.6540, %for.body.6533
  %4053 = load i8, i8* %padding, align 1
  %4054 = load %struct.obstack*, %struct.obstack** %__o6534, align 8
  %next_free6542 = getelementptr inbounds %struct.obstack, %struct.obstack* %4054, i32 0, i32 3
  %4055 = load i8*, i8** %next_free6542, align 8
  %incdec.ptr6543 = getelementptr inbounds i8, i8* %4055, i32 1
  store i8* %incdec.ptr6543, i8** %next_free6542, align 8
  store i8 %4053, i8* %4055, align 1
  br label %for.inc.6544

for.inc.6544:                                     ; preds = %if.end.6541
  %4056 = load i64, i64* %nspace6480, align 8
  %dec6545 = add i64 %4056, -1
  store i64 %dec6545, i64* %nspace6480, align 8
  br label %for.cond.6531

for.end.6546:                                     ; preds = %for.cond.6531
  br label %if.end.6547

if.end.6547:                                      ; preds = %for.end.6546, %land.lhs.true.6527, %if.end.6520
  br label %do.end.6548

do.end.6548:                                      ; preds = %if.end.6547
  br label %sw.epilog.7607

sw.bb.6549:                                       ; preds = %sw.bb.6154
  store i32 0, i32* %test, align 4
  %4057 = load i64, i64* %i, align 8
  %inc6551 = add i64 %4057, 1
  store i64 %inc6551, i64* %i, align 8
  %4058 = load i8*, i8** %str.addr, align 8
  %arrayidx6552 = getelementptr inbounds i8, i8* %4058, i64 %inc6551
  %4059 = load i8, i8* %arrayidx6552, align 1
  store i8 %4059, i8* %cond6550, align 1
  %4060 = load i64, i64* %i, align 8
  %inc6553 = add i64 %4060, 1
  store i64 %inc6553, i64* %i, align 8
  %4061 = load i8*, i8** %str.addr, align 8
  %arrayidx6554 = getelementptr inbounds i8, i8* %4061, i64 %inc6553
  %4062 = load i8, i8* %arrayidx6554, align 1
  store i8 %4062, i8* %sep, align 1
  %4063 = load i8*, i8** %str.addr, align 8
  %4064 = load i64, i64* %i, align 8
  %inc6555 = add i64 %4064, 1
  store i64 %inc6555, i64* %i, align 8
  %add.ptr6556 = getelementptr inbounds i8, i8* %4063, i64 %inc6555
  %call6557 = call i8* @xstrdup(i8* %add.ptr6556)
  store i8* %call6557, i8** %next, align 8
  br label %do.body.6558

do.body.6558:                                     ; preds = %sw.bb.6549
  %4065 = load i8*, i8** %next, align 8
  store i8* %4065, i8** %if_true, align 8
  %4066 = load i8*, i8** %next, align 8
  %4067 = load i8, i8* %sep, align 1
  %conv6559 = zext i8 %4067 to i32
  %call6560 = call i8* @strchr(i8* %4066, i32 %conv6559) #6
  store i8* %call6560, i8** %next, align 8
  %4068 = load i8*, i8** %next, align 8
  %tobool6561 = icmp ne i8* %4068, null
  br i1 %tobool6561, label %if.end.6566, label %if.then.6562

if.then.6562:                                     ; preds = %do.body.6558
  %call6563 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %4069 = load i8*, i8** %context_name.addr, align 8
  %4070 = load i8, i8* %sep, align 1
  %conv6564 = zext i8 %4070 to i32
  %4071 = load i8, i8* %cond6550, align 1
  %conv6565 = zext i8 %4071 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6563, i8* %4069, i32 %conv6564, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 %conv6565)
  br label %if.end.6566

if.end.6566:                                      ; preds = %if.then.6562, %do.body.6558
  %4072 = load i8*, i8** %next, align 8
  %incdec.ptr6567 = getelementptr inbounds i8, i8* %4072, i32 1
  store i8* %incdec.ptr6567, i8** %next, align 8
  store i8 0, i8* %4072, align 1
  br label %do.end.6568

do.end.6568:                                      ; preds = %if.end.6566
  br label %do.body.6569

do.body.6569:                                     ; preds = %do.end.6568
  %4073 = load i8*, i8** %next, align 8
  store i8* %4073, i8** %if_false, align 8
  %4074 = load i8*, i8** %next, align 8
  %4075 = load i8, i8* %sep, align 1
  %conv6570 = zext i8 %4075 to i32
  %call6571 = call i8* @strchr(i8* %4074, i32 %conv6570) #6
  store i8* %call6571, i8** %next, align 8
  %4076 = load i8*, i8** %next, align 8
  %tobool6572 = icmp ne i8* %4076, null
  br i1 %tobool6572, label %if.end.6577, label %if.then.6573

if.then.6573:                                     ; preds = %do.body.6569
  %call6574 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %4077 = load i8*, i8** %context_name.addr, align 8
  %4078 = load i8, i8* %sep, align 1
  %conv6575 = zext i8 %4078 to i32
  %4079 = load i8, i8* %cond6550, align 1
  %conv6576 = zext i8 %4079 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6574, i8* %4077, i32 %conv6575, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 %conv6576)
  br label %if.end.6577

if.end.6577:                                      ; preds = %if.then.6573, %do.body.6569
  %4080 = load i8*, i8** %next, align 8
  %incdec.ptr6578 = getelementptr inbounds i8, i8* %4080, i32 1
  store i8* %incdec.ptr6578, i8** %next, align 8
  store i8 0, i8* %4080, align 1
  br label %do.end.6579

do.end.6579:                                      ; preds = %if.end.6577
  %4081 = load i8*, i8** %next, align 8
  %4082 = load i8*, i8** %if_true, align 8
  %sub.ptr.lhs.cast6580 = ptrtoint i8* %4081 to i64
  %sub.ptr.rhs.cast6581 = ptrtoint i8* %4082 to i64
  %sub.ptr.sub6582 = sub i64 %sub.ptr.lhs.cast6580, %sub.ptr.rhs.cast6581
  %sub6583 = sub nsw i64 %sub.ptr.sub6582, 1
  %4083 = load i64, i64* %i, align 8
  %add6584 = add i64 %4083, %sub6583
  store i64 %add6584, i64* %i, align 8
  %4084 = load i8, i8* %cond6550, align 1
  %conv6585 = zext i8 %4084 to i32
  switch i32 %conv6585, label %sw.default.6668 [
    i32 49, label %sw.bb.6586
    i32 50, label %sw.bb.6596
    i32 51, label %sw.bb.6610
    i32 52, label %sw.bb.6624
    i32 100, label %sw.bb.6638
    i32 106, label %sw.bb.6646
    i32 108, label %sw.bb.6647
    i32 111, label %sw.bb.6650
    i32 112, label %sw.bb.6654
    i32 113, label %sw.bb.6657
    i32 114, label %sw.bb.6660
    i32 86, label %sw.bb.6663
    i32 118, label %sw.bb.6665
  ]

sw.bb.6586:                                       ; preds = %do.end.6579
  %4085 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag16587 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4085, i32 0, i32 59
  %arraydecay6588 = getelementptr inbounds [256 x i8], [256 x i8]* %tag16587, i32 0, i32 0
  %cmp6589 = icmp eq i8* %arraydecay6588, null
  br i1 %cmp6589, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.6586
  %4086 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag16591 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4086, i32 0, i32 59
  %arraydecay6592 = getelementptr inbounds [256 x i8], [256 x i8]* %tag16591, i32 0, i32 0
  %4087 = load i8, i8* %arraydecay6592, align 1
  %conv6593 = zext i8 %4087 to i32
  %cmp6594 = icmp eq i32 %conv6593, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.6586
  %4088 = phi i1 [ true, %sw.bb.6586 ], [ %cmp6594, %lor.rhs ]
  %lnot = xor i1 %4088, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6596:                                       ; preds = %do.end.6579
  %4089 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag26597 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4089, i32 0, i32 60
  %arraydecay6598 = getelementptr inbounds [256 x i8], [256 x i8]* %tag26597, i32 0, i32 0
  %cmp6599 = icmp eq i8* %arraydecay6598, null
  br i1 %cmp6599, label %lor.end.6607, label %lor.rhs.6601

lor.rhs.6601:                                     ; preds = %sw.bb.6596
  %4090 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag26602 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4090, i32 0, i32 60
  %arraydecay6603 = getelementptr inbounds [256 x i8], [256 x i8]* %tag26602, i32 0, i32 0
  %4091 = load i8, i8* %arraydecay6603, align 1
  %conv6604 = zext i8 %4091 to i32
  %cmp6605 = icmp eq i32 %conv6604, 0
  br label %lor.end.6607

lor.end.6607:                                     ; preds = %lor.rhs.6601, %sw.bb.6596
  %4092 = phi i1 [ true, %sw.bb.6596 ], [ %cmp6605, %lor.rhs.6601 ]
  %lnot6608 = xor i1 %4092, true
  %lnot.ext6609 = zext i1 %lnot6608 to i32
  store i32 %lnot.ext6609, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6610:                                       ; preds = %do.end.6579
  %4093 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag36611 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4093, i32 0, i32 61
  %arraydecay6612 = getelementptr inbounds [256 x i8], [256 x i8]* %tag36611, i32 0, i32 0
  %cmp6613 = icmp eq i8* %arraydecay6612, null
  br i1 %cmp6613, label %lor.end.6621, label %lor.rhs.6615

lor.rhs.6615:                                     ; preds = %sw.bb.6610
  %4094 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag36616 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4094, i32 0, i32 61
  %arraydecay6617 = getelementptr inbounds [256 x i8], [256 x i8]* %tag36616, i32 0, i32 0
  %4095 = load i8, i8* %arraydecay6617, align 1
  %conv6618 = zext i8 %4095 to i32
  %cmp6619 = icmp eq i32 %conv6618, 0
  br label %lor.end.6621

lor.end.6621:                                     ; preds = %lor.rhs.6615, %sw.bb.6610
  %4096 = phi i1 [ true, %sw.bb.6610 ], [ %cmp6619, %lor.rhs.6615 ]
  %lnot6622 = xor i1 %4096, true
  %lnot.ext6623 = zext i1 %lnot6622 to i32
  store i32 %lnot.ext6623, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6624:                                       ; preds = %do.end.6579
  %4097 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag46625 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4097, i32 0, i32 62
  %arraydecay6626 = getelementptr inbounds [256 x i8], [256 x i8]* %tag46625, i32 0, i32 0
  %cmp6627 = icmp eq i8* %arraydecay6626, null
  br i1 %cmp6627, label %lor.end.6635, label %lor.rhs.6629

lor.rhs.6629:                                     ; preds = %sw.bb.6624
  %4098 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag46630 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4098, i32 0, i32 62
  %arraydecay6631 = getelementptr inbounds [256 x i8], [256 x i8]* %tag46630, i32 0, i32 0
  %4099 = load i8, i8* %arraydecay6631, align 1
  %conv6632 = zext i8 %4099 to i32
  %cmp6633 = icmp eq i32 %conv6632, 0
  br label %lor.end.6635

lor.end.6635:                                     ; preds = %lor.rhs.6629, %sw.bb.6624
  %4100 = phi i1 [ true, %sw.bb.6624 ], [ %cmp6633, %lor.rhs.6629 ]
  %lnot6636 = xor i1 %4100, true
  %lnot.ext6637 = zext i1 %lnot6636 to i32
  store i32 %lnot.ext6637, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6638:                                       ; preds = %do.end.6579
  %4101 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4101, i32 0, i32 13
  %4102 = load i32, i32* %duplex, align 4
  %cmp6639 = icmp eq i32 %4102, 1
  br i1 %cmp6639, label %lor.end.6645, label %lor.rhs.6641

lor.rhs.6641:                                     ; preds = %sw.bb.6638
  %4103 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex6642 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4103, i32 0, i32 13
  %4104 = load i32, i32* %duplex6642, align 4
  %cmp6643 = icmp eq i32 %4104, 2
  br label %lor.end.6645

lor.end.6645:                                     ; preds = %lor.rhs.6641, %sw.bb.6638
  %4105 = phi i1 [ true, %sw.bb.6638 ], [ %cmp6643, %lor.rhs.6641 ]
  %lor.ext = zext i1 %4105 to i32
  store i32 %lor.ext, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6646:                                       ; preds = %do.end.6579
  %4106 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %border = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4106, i32 0, i32 34
  %4107 = load i32, i32* %border, align 4
  store i32 %4107, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6647:                                       ; preds = %do.end.6579
  %4108 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4108, i32 0, i32 12
  %4109 = load i32, i32* %orientation, align 4
  %cmp6648 = icmp eq i32 %4109, 1
  %conv6649 = zext i1 %cmp6648 to i32
  store i32 %conv6649, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6650:                                       ; preds = %do.end.6579
  %4110 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4110, i32 0, i32 15
  %4111 = load i32, i32* %rows, align 4
  %4112 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4112, i32 0, i32 14
  %4113 = load i32, i32* %columns, align 4
  %mul6651 = mul nsw i32 %4111, %4113
  %cmp6652 = icmp eq i32 %mul6651, 1
  %conv6653 = zext i1 %cmp6652 to i32
  store i32 %conv6653, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6654:                                       ; preds = %do.end.6579
  %4114 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4114, i32 0, i32 67
  %4115 = load %struct.page_range*, %struct.page_range** %page_range, align 8
  %4116 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages6655 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4116, i32 0, i32 9
  %4117 = load i32, i32* %pages6655, align 4
  %call6656 = call i32 @page_range_applies_above(%struct.page_range* %4115, i32 %4117)
  store i32 %call6656, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6657:                                       ; preds = %do.end.6579
  %4118 = load i32, i32* @msg_verbosity, align 4
  %cmp6658 = icmp eq i32 %4118, 0
  %conv6659 = zext i1 %cmp6658 to i32
  store i32 %conv6659, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6660:                                       ; preds = %do.end.6579
  %4119 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4119, i32 0, i32 16
  %4120 = load i32, i32* %madir, align 4
  %cmp6661 = icmp eq i32 %4120, 0
  %conv6662 = zext i1 %cmp6661 to i32
  store i32 %conv6662, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6663:                                       ; preds = %do.end.6579
  %4121 = load i32, i32* @msg_verbosity, align 4
  %and6664 = and i32 128, %4121
  store i32 %and6664, i32* %test, align 4
  br label %sw.epilog.6672

sw.bb.6665:                                       ; preds = %do.end.6579
  %4122 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets6666 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4122, i32 0, i32 8
  %4123 = load i32, i32* %sheets6666, align 4
  %and6667 = and i32 %4123, 1
  store i32 %and6667, i32* %test, align 4
  br label %sw.epilog.6672

sw.default.6668:                                  ; preds = %do.end.6579
  %call6669 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %4124 = load i8*, i8** %context_name.addr, align 8
  %4125 = load i8, i8* %cond6550, align 1
  %conv6670 = zext i8 %4125 to i32
  %4126 = load i8, i8* %cond6550, align 1
  %conv6671 = zext i8 %4126 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6669, i8* %4124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 %conv6670, i32 %conv6671)
  br label %sw.epilog.6672

sw.epilog.6672:                                   ; preds = %sw.default.6668, %sw.bb.6665, %sw.bb.6663, %sw.bb.6660, %sw.bb.6657, %sw.bb.6654, %sw.bb.6650, %sw.bb.6647, %sw.bb.6646, %lor.end.6645, %lor.end.6635, %lor.end.6621, %lor.end.6607, %lor.end
  %4127 = load i32, i32* %test, align 4
  %tobool6673 = icmp ne i32 %4127, 0
  br i1 %tobool6673, label %if.then.6674, label %if.else.6675

if.then.6674:                                     ; preds = %sw.epilog.6672
  %4128 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4129 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4130 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %4131 = load i8*, i8** %context_name.addr, align 8
  %4132 = load i8*, i8** %if_true, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4128, %struct.a2ps_job* %4129, %struct.file_job* %4130, i8* %4131, i8* %4132)
  br label %if.end.6676

if.else.6675:                                     ; preds = %sw.epilog.6672
  %4133 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4134 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4135 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %4136 = load i8*, i8** %context_name.addr, align 8
  %4137 = load i8*, i8** %if_false, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4133, %struct.a2ps_job* %4134, %struct.file_job* %4135, i8* %4136, i8* %4137)
  br label %if.end.6676

if.end.6676:                                      ; preds = %if.else.6675, %if.then.6674
  %4138 = load i8*, i8** %if_true, align 8
  call void @free(i8* %4138) #5
  br label %sw.epilog.7607

sw.bb.6677:                                       ; preds = %sw.bb.6154
  %4139 = load i64, i64* %i, align 8
  %inc6680 = add i64 %4139, 1
  store i64 %inc6680, i64* %i, align 8
  %4140 = load i8*, i8** %str.addr, align 8
  %arrayidx6681 = getelementptr inbounds i8, i8* %4140, i64 %inc6680
  %4141 = load i8, i8* %arrayidx6681, align 1
  store i8 %4141, i8* %category, align 1
  %4142 = load i64, i64* %i, align 8
  %inc6682 = add i64 %4142, 1
  store i64 %inc6682, i64* %i, align 8
  %4143 = load i8*, i8** %str.addr, align 8
  %arrayidx6683 = getelementptr inbounds i8, i8* %4143, i64 %inc6682
  %4144 = load i8, i8* %arrayidx6683, align 1
  store i8 %4144, i8* %sep6678, align 1
  %4145 = load i8*, i8** %str.addr, align 8
  %4146 = load i64, i64* %i, align 8
  %inc6684 = add i64 %4146, 1
  store i64 %inc6684, i64* %i, align 8
  %add.ptr6685 = getelementptr inbounds i8, i8* %4145, i64 %inc6684
  %call6686 = call i8* @xstrdup(i8* %add.ptr6685)
  store i8* %call6686, i8** %next6679, align 8
  br label %do.body.6687

do.body.6687:                                     ; preds = %sw.bb.6677
  %4147 = load i8*, i8** %next6679, align 8
  store i8* %4147, i8** %in, align 8
  %4148 = load i8*, i8** %next6679, align 8
  %4149 = load i8, i8* %sep6678, align 1
  %conv6688 = zext i8 %4149 to i32
  %call6689 = call i8* @strchr(i8* %4148, i32 %conv6688) #6
  store i8* %call6689, i8** %next6679, align 8
  %4150 = load i8*, i8** %next6679, align 8
  %tobool6690 = icmp ne i8* %4150, null
  br i1 %tobool6690, label %if.end.6695, label %if.then.6691

if.then.6691:                                     ; preds = %do.body.6687
  %call6692 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %4151 = load i8*, i8** %context_name.addr, align 8
  %4152 = load i8, i8* %sep6678, align 1
  %conv6693 = zext i8 %4152 to i32
  %4153 = load i8, i8* %category, align 1
  %conv6694 = zext i8 %4153 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6692, i8* %4151, i32 %conv6693, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 %conv6694)
  br label %if.end.6695

if.end.6695:                                      ; preds = %if.then.6691, %do.body.6687
  %4154 = load i8*, i8** %next6679, align 8
  %incdec.ptr6696 = getelementptr inbounds i8, i8* %4154, i32 1
  store i8* %incdec.ptr6696, i8** %next6679, align 8
  store i8 0, i8* %4154, align 1
  br label %do.end.6697

do.end.6697:                                      ; preds = %if.end.6695
  br label %do.body.6698

do.body.6698:                                     ; preds = %do.end.6697
  %4155 = load i8*, i8** %next6679, align 8
  store i8* %4155, i8** %between, align 8
  %4156 = load i8*, i8** %next6679, align 8
  %4157 = load i8, i8* %sep6678, align 1
  %conv6699 = zext i8 %4157 to i32
  %call6700 = call i8* @strchr(i8* %4156, i32 %conv6699) #6
  store i8* %call6700, i8** %next6679, align 8
  %4158 = load i8*, i8** %next6679, align 8
  %tobool6701 = icmp ne i8* %4158, null
  br i1 %tobool6701, label %if.end.6706, label %if.then.6702

if.then.6702:                                     ; preds = %do.body.6698
  %call6703 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #5
  %4159 = load i8*, i8** %context_name.addr, align 8
  %4160 = load i8, i8* %sep6678, align 1
  %conv6704 = zext i8 %4160 to i32
  %4161 = load i8, i8* %category, align 1
  %conv6705 = zext i8 %4161 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call6703, i8* %4159, i32 %conv6704, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 %conv6705)
  br label %if.end.6706

if.end.6706:                                      ; preds = %if.then.6702, %do.body.6698
  %4162 = load i8*, i8** %next6679, align 8
  %incdec.ptr6707 = getelementptr inbounds i8, i8* %4162, i32 1
  store i8* %incdec.ptr6707, i8** %next6679, align 8
  store i8 0, i8* %4162, align 1
  br label %do.end.6708

do.end.6708:                                      ; preds = %if.end.6706
  %4163 = load i8*, i8** %next6679, align 8
  %4164 = load i8*, i8** %in, align 8
  %sub.ptr.lhs.cast6709 = ptrtoint i8* %4163 to i64
  %sub.ptr.rhs.cast6710 = ptrtoint i8* %4164 to i64
  %sub.ptr.sub6711 = sub i64 %sub.ptr.lhs.cast6709, %sub.ptr.rhs.cast6710
  %sub6712 = sub nsw i64 %sub.ptr.sub6711, 1
  %4165 = load i64, i64* %i, align 8
  %add6713 = add i64 %4165, %sub6712
  store i64 %add6713, i64* %i, align 8
  %4166 = load i8, i8* %category, align 1
  %conv6714 = zext i8 %4166 to i32
  switch i32 %conv6714, label %sw.default.7011 [
    i32 36, label %sw.bb.6715
    i32 102, label %sw.bb.6836
    i32 70, label %sw.bb.6890
    i32 115, label %sw.bb.6945
  ]

sw.bb.6715:                                       ; preds = %do.end.6708
  %4167 = load i64, i64* %width, align 8
  %cmp6716 = icmp ugt i64 %4167, 0
  br i1 %cmp6716, label %land.lhs.true.6718, label %cond.false.6726

land.lhs.true.6718:                               ; preds = %sw.bb.6715
  %4168 = load i32, i32* %justification, align 4
  %cmp6719 = icmp sgt i32 %4168, 0
  br i1 %cmp6719, label %land.lhs.true.6721, label %cond.false.6726

land.lhs.true.6721:                               ; preds = %land.lhs.true.6718
  %4169 = load i64, i64* %width, align 8
  %4170 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argc6722 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4170, i32 0, i32 1
  %4171 = load i64, i64* %argc6722, align 8
  %cmp6723 = icmp ult i64 %4169, %4171
  br i1 %cmp6723, label %cond.true.6725, label %cond.false.6726

cond.true.6725:                                   ; preds = %land.lhs.true.6721
  %4172 = load i64, i64* %width, align 8
  br label %cond.end.6743

cond.false.6726:                                  ; preds = %land.lhs.true.6721, %land.lhs.true.6718, %sw.bb.6715
  %4173 = load i64, i64* %width, align 8
  %cmp6727 = icmp ugt i64 %4173, 0
  br i1 %cmp6727, label %land.lhs.true.6729, label %cond.false.6739

land.lhs.true.6729:                               ; preds = %cond.false.6726
  %4174 = load i32, i32* %justification, align 4
  %cmp6730 = icmp slt i32 %4174, 0
  br i1 %cmp6730, label %land.lhs.true.6732, label %cond.false.6739

land.lhs.true.6732:                               ; preds = %land.lhs.true.6729
  %4175 = load i64, i64* %width, align 8
  %4176 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argc6733 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4176, i32 0, i32 1
  %4177 = load i64, i64* %argc6733, align 8
  %cmp6734 = icmp ule i64 %4175, %4177
  br i1 %cmp6734, label %cond.true.6736, label %cond.false.6739

cond.true.6736:                                   ; preds = %land.lhs.true.6732
  %4178 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argc6737 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4178, i32 0, i32 1
  %4179 = load i64, i64* %argc6737, align 8
  %4180 = load i64, i64* %width, align 8
  %sub6738 = sub i64 %4179, %4180
  br label %cond.end.6741

cond.false.6739:                                  ; preds = %land.lhs.true.6732, %land.lhs.true.6729, %cond.false.6726
  %4181 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argc6740 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4181, i32 0, i32 1
  %4182 = load i64, i64* %argc6740, align 8
  br label %cond.end.6741

cond.end.6741:                                    ; preds = %cond.false.6739, %cond.true.6736
  %cond6742 = phi i64 [ %sub6738, %cond.true.6736 ], [ %4182, %cond.false.6739 ]
  br label %cond.end.6743

cond.end.6743:                                    ; preds = %cond.end.6741, %cond.true.6725
  %cond6744 = phi i64 [ %4172, %cond.true.6725 ], [ %cond6742, %cond.end.6741 ]
  store i64 %cond6744, i64* %fmax, align 8
  store i64 0, i64* %fnum, align 8
  br label %for.cond.6745

for.cond.6745:                                    ; preds = %for.inc.6833, %cond.end.6743
  %4183 = load i64, i64* %fnum, align 8
  %4184 = load i64, i64* %fmax, align 8
  %cmp6746 = icmp ult i64 %4183, %4184
  br i1 %cmp6746, label %for.body.6748, label %for.end.6835

for.body.6748:                                    ; preds = %for.cond.6745
  br label %do.body.6749

do.body.6749:                                     ; preds = %for.body.6748
  %4185 = load i64, i64* %fnum, align 8
  %4186 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argv6751 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4186, i32 0, i32 0
  %4187 = load i8**, i8*** %argv6751, align 8
  %arrayidx6752 = getelementptr inbounds i8*, i8** %4187, i64 %4185
  %4188 = load i8*, i8** %arrayidx6752, align 8
  %call6753 = call i64 @strlen(i8* %4188) #6
  store i64 %call6753, i64* %len6750, align 8
  %4189 = load i64, i64* %len6750, align 8
  %4190 = load i64, i64* %width, align 8
  %cmp6755 = icmp ugt i64 %4189, %4190
  br i1 %cmp6755, label %cond.true.6757, label %cond.false.6758

cond.true.6757:                                   ; preds = %do.body.6749
  br label %cond.end.6760

cond.false.6758:                                  ; preds = %do.body.6749
  %4191 = load i64, i64* %width, align 8
  %4192 = load i64, i64* %len6750, align 8
  %sub6759 = sub i64 %4191, %4192
  br label %cond.end.6760

cond.end.6760:                                    ; preds = %cond.false.6758, %cond.true.6757
  %cond6761 = phi i64 [ 0, %cond.true.6757 ], [ %sub6759, %cond.false.6758 ]
  store i64 %cond6761, i64* %nspace6754, align 8
  %4193 = load i64, i64* %width, align 8
  %tobool6762 = icmp ne i64 %4193, 0
  br i1 %tobool6762, label %land.lhs.true.6763, label %if.end.6783

land.lhs.true.6763:                               ; preds = %cond.end.6760
  %4194 = load i32, i32* %justification, align 4
  %cmp6764 = icmp sgt i32 %4194, 0
  br i1 %cmp6764, label %if.then.6766, label %if.end.6783

if.then.6766:                                     ; preds = %land.lhs.true.6763
  br label %for.cond.6767

for.cond.6767:                                    ; preds = %for.inc.6780, %if.then.6766
  %4195 = load i64, i64* %nspace6754, align 8
  %tobool6768 = icmp ne i64 %4195, 0
  br i1 %tobool6768, label %for.body.6769, label %for.end.6782

for.body.6769:                                    ; preds = %for.cond.6767
  %4196 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4196, %struct.obstack** %__o6770, align 8
  %4197 = load %struct.obstack*, %struct.obstack** %__o6770, align 8
  %next_free6771 = getelementptr inbounds %struct.obstack, %struct.obstack* %4197, i32 0, i32 3
  %4198 = load i8*, i8** %next_free6771, align 8
  %add.ptr6772 = getelementptr inbounds i8, i8* %4198, i64 1
  %4199 = load %struct.obstack*, %struct.obstack** %__o6770, align 8
  %chunk_limit6773 = getelementptr inbounds %struct.obstack, %struct.obstack* %4199, i32 0, i32 4
  %4200 = load i8*, i8** %chunk_limit6773, align 8
  %cmp6774 = icmp ugt i8* %add.ptr6772, %4200
  br i1 %cmp6774, label %if.then.6776, label %if.end.6777

if.then.6776:                                     ; preds = %for.body.6769
  %4201 = load %struct.obstack*, %struct.obstack** %__o6770, align 8
  call void @_obstack_newchunk(%struct.obstack* %4201, i32 1)
  br label %if.end.6777

if.end.6777:                                      ; preds = %if.then.6776, %for.body.6769
  %4202 = load i8, i8* %padding, align 1
  %4203 = load %struct.obstack*, %struct.obstack** %__o6770, align 8
  %next_free6778 = getelementptr inbounds %struct.obstack, %struct.obstack* %4203, i32 0, i32 3
  %4204 = load i8*, i8** %next_free6778, align 8
  %incdec.ptr6779 = getelementptr inbounds i8, i8* %4204, i32 1
  store i8* %incdec.ptr6779, i8** %next_free6778, align 8
  store i8 %4202, i8* %4204, align 1
  br label %for.inc.6780

for.inc.6780:                                     ; preds = %if.end.6777
  %4205 = load i64, i64* %nspace6754, align 8
  %dec6781 = add i64 %4205, -1
  store i64 %dec6781, i64* %nspace6754, align 8
  br label %for.cond.6767

for.end.6782:                                     ; preds = %for.cond.6767
  br label %if.end.6783

if.end.6783:                                      ; preds = %for.end.6782, %land.lhs.true.6763, %cond.end.6760
  %4206 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4206, %struct.obstack** %__o6784, align 8
  %4207 = load i64, i64* %len6750, align 8
  %conv6786 = trunc i64 %4207 to i32
  store i32 %conv6786, i32* %__len6785, align 4
  %4208 = load %struct.obstack*, %struct.obstack** %__o6784, align 8
  %next_free6787 = getelementptr inbounds %struct.obstack, %struct.obstack* %4208, i32 0, i32 3
  %4209 = load i8*, i8** %next_free6787, align 8
  %4210 = load i32, i32* %__len6785, align 4
  %idx.ext6788 = sext i32 %4210 to i64
  %add.ptr6789 = getelementptr inbounds i8, i8* %4209, i64 %idx.ext6788
  %4211 = load %struct.obstack*, %struct.obstack** %__o6784, align 8
  %chunk_limit6790 = getelementptr inbounds %struct.obstack, %struct.obstack* %4211, i32 0, i32 4
  %4212 = load i8*, i8** %chunk_limit6790, align 8
  %cmp6791 = icmp ugt i8* %add.ptr6789, %4212
  br i1 %cmp6791, label %if.then.6793, label %if.end.6794

if.then.6793:                                     ; preds = %if.end.6783
  %4213 = load %struct.obstack*, %struct.obstack** %__o6784, align 8
  %4214 = load i32, i32* %__len6785, align 4
  call void @_obstack_newchunk(%struct.obstack* %4213, i32 %4214)
  br label %if.end.6794

if.end.6794:                                      ; preds = %if.then.6793, %if.end.6783
  %4215 = load %struct.obstack*, %struct.obstack** %__o6784, align 8
  %next_free6795 = getelementptr inbounds %struct.obstack, %struct.obstack* %4215, i32 0, i32 3
  %4216 = load i8*, i8** %next_free6795, align 8
  %4217 = load i64, i64* %fnum, align 8
  %4218 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %argv6796 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4218, i32 0, i32 0
  %4219 = load i8**, i8*** %argv6796, align 8
  %arrayidx6797 = getelementptr inbounds i8*, i8** %4219, i64 %4217
  %4220 = load i8*, i8** %arrayidx6797, align 8
  %4221 = load i32, i32* %__len6785, align 4
  %conv6798 = sext i32 %4221 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4216, i8* %4220, i64 %conv6798, i32 1, i1 false)
  %4222 = load i32, i32* %__len6785, align 4
  %4223 = load %struct.obstack*, %struct.obstack** %__o6784, align 8
  %next_free6799 = getelementptr inbounds %struct.obstack, %struct.obstack* %4223, i32 0, i32 3
  %4224 = load i8*, i8** %next_free6799, align 8
  %idx.ext6800 = sext i32 %4222 to i64
  %add.ptr6801 = getelementptr inbounds i8, i8* %4224, i64 %idx.ext6800
  store i8* %add.ptr6801, i8** %next_free6799, align 8
  %4225 = load i64, i64* %width, align 8
  %tobool6802 = icmp ne i64 %4225, 0
  br i1 %tobool6802, label %land.lhs.true.6803, label %if.end.6823

land.lhs.true.6803:                               ; preds = %if.end.6794
  %4226 = load i32, i32* %justification, align 4
  %cmp6804 = icmp slt i32 %4226, 0
  br i1 %cmp6804, label %if.then.6806, label %if.end.6823

if.then.6806:                                     ; preds = %land.lhs.true.6803
  br label %for.cond.6807

for.cond.6807:                                    ; preds = %for.inc.6820, %if.then.6806
  %4227 = load i64, i64* %nspace6754, align 8
  %tobool6808 = icmp ne i64 %4227, 0
  br i1 %tobool6808, label %for.body.6809, label %for.end.6822

for.body.6809:                                    ; preds = %for.cond.6807
  %4228 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4228, %struct.obstack** %__o6810, align 8
  %4229 = load %struct.obstack*, %struct.obstack** %__o6810, align 8
  %next_free6811 = getelementptr inbounds %struct.obstack, %struct.obstack* %4229, i32 0, i32 3
  %4230 = load i8*, i8** %next_free6811, align 8
  %add.ptr6812 = getelementptr inbounds i8, i8* %4230, i64 1
  %4231 = load %struct.obstack*, %struct.obstack** %__o6810, align 8
  %chunk_limit6813 = getelementptr inbounds %struct.obstack, %struct.obstack* %4231, i32 0, i32 4
  %4232 = load i8*, i8** %chunk_limit6813, align 8
  %cmp6814 = icmp ugt i8* %add.ptr6812, %4232
  br i1 %cmp6814, label %if.then.6816, label %if.end.6817

if.then.6816:                                     ; preds = %for.body.6809
  %4233 = load %struct.obstack*, %struct.obstack** %__o6810, align 8
  call void @_obstack_newchunk(%struct.obstack* %4233, i32 1)
  br label %if.end.6817

if.end.6817:                                      ; preds = %if.then.6816, %for.body.6809
  %4234 = load i8, i8* %padding, align 1
  %4235 = load %struct.obstack*, %struct.obstack** %__o6810, align 8
  %next_free6818 = getelementptr inbounds %struct.obstack, %struct.obstack* %4235, i32 0, i32 3
  %4236 = load i8*, i8** %next_free6818, align 8
  %incdec.ptr6819 = getelementptr inbounds i8, i8* %4236, i32 1
  store i8* %incdec.ptr6819, i8** %next_free6818, align 8
  store i8 %4234, i8* %4236, align 1
  br label %for.inc.6820

for.inc.6820:                                     ; preds = %if.end.6817
  %4237 = load i64, i64* %nspace6754, align 8
  %dec6821 = add i64 %4237, -1
  store i64 %dec6821, i64* %nspace6754, align 8
  br label %for.cond.6807

for.end.6822:                                     ; preds = %for.cond.6807
  br label %if.end.6823

if.end.6823:                                      ; preds = %for.end.6822, %land.lhs.true.6803, %if.end.6794
  br label %do.end.6824

do.end.6824:                                      ; preds = %if.end.6823
  %4238 = load i64, i64* %fnum, align 8
  %4239 = load i64, i64* %fmax, align 8
  %sub6825 = sub i64 %4239, 1
  %cmp6826 = icmp ult i64 %4238, %sub6825
  br i1 %cmp6826, label %if.then.6828, label %if.end.6832

if.then.6828:                                     ; preds = %do.end.6824
  %4240 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4241 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4242 = load i64, i64* %fnum, align 8
  %4243 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6829 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4243, i32 0, i32 68
  %4244 = load %struct.darray*, %struct.darray** %jobs6829, align 8
  %content6830 = getelementptr inbounds %struct.darray, %struct.darray* %4244, i32 0, i32 6
  %4245 = load i8**, i8*** %content6830, align 8
  %arrayidx6831 = getelementptr inbounds i8*, i8** %4245, i64 %4242
  %4246 = load i8*, i8** %arrayidx6831, align 8
  %4247 = bitcast i8* %4246 to %struct.file_job*
  %4248 = load i8*, i8** %context_name.addr, align 8
  %4249 = load i8*, i8** %between, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4240, %struct.a2ps_job* %4241, %struct.file_job* %4247, i8* %4248, i8* %4249)
  br label %if.end.6832

if.end.6832:                                      ; preds = %if.then.6828, %do.end.6824
  br label %for.inc.6833

for.inc.6833:                                     ; preds = %if.end.6832
  %4250 = load i64, i64* %fnum, align 8
  %inc6834 = add i64 %4250, 1
  store i64 %inc6834, i64* %fnum, align 8
  br label %for.cond.6745

for.end.6835:                                     ; preds = %for.cond.6745
  br label %sw.epilog.7015

sw.bb.6836:                                       ; preds = %do.end.6708
  %4251 = load i64, i64* %width, align 8
  %cmp6839 = icmp ugt i64 %4251, 0
  br i1 %cmp6839, label %land.lhs.true.6841, label %cond.false.6850

land.lhs.true.6841:                               ; preds = %sw.bb.6836
  %4252 = load i32, i32* %justification, align 4
  %cmp6842 = icmp sgt i32 %4252, 0
  br i1 %cmp6842, label %land.lhs.true.6844, label %cond.false.6850

land.lhs.true.6844:                               ; preds = %land.lhs.true.6841
  %4253 = load i64, i64* %width, align 8
  %4254 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6845 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4254, i32 0, i32 68
  %4255 = load %struct.darray*, %struct.darray** %jobs6845, align 8
  %len6846 = getelementptr inbounds %struct.darray, %struct.darray* %4255, i32 0, i32 5
  %4256 = load i64, i64* %len6846, align 8
  %cmp6847 = icmp ult i64 %4253, %4256
  br i1 %cmp6847, label %cond.true.6849, label %cond.false.6850

cond.true.6849:                                   ; preds = %land.lhs.true.6844
  %4257 = load i64, i64* %width, align 8
  br label %cond.end.6870

cond.false.6850:                                  ; preds = %land.lhs.true.6844, %land.lhs.true.6841, %sw.bb.6836
  %4258 = load i64, i64* %width, align 8
  %cmp6851 = icmp ugt i64 %4258, 0
  br i1 %cmp6851, label %land.lhs.true.6853, label %cond.false.6865

land.lhs.true.6853:                               ; preds = %cond.false.6850
  %4259 = load i32, i32* %justification, align 4
  %cmp6854 = icmp slt i32 %4259, 0
  br i1 %cmp6854, label %land.lhs.true.6856, label %cond.false.6865

land.lhs.true.6856:                               ; preds = %land.lhs.true.6853
  %4260 = load i64, i64* %width, align 8
  %4261 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6857 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4261, i32 0, i32 68
  %4262 = load %struct.darray*, %struct.darray** %jobs6857, align 8
  %len6858 = getelementptr inbounds %struct.darray, %struct.darray* %4262, i32 0, i32 5
  %4263 = load i64, i64* %len6858, align 8
  %cmp6859 = icmp ule i64 %4260, %4263
  br i1 %cmp6859, label %cond.true.6861, label %cond.false.6865

cond.true.6861:                                   ; preds = %land.lhs.true.6856
  %4264 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6862 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4264, i32 0, i32 68
  %4265 = load %struct.darray*, %struct.darray** %jobs6862, align 8
  %len6863 = getelementptr inbounds %struct.darray, %struct.darray* %4265, i32 0, i32 5
  %4266 = load i64, i64* %len6863, align 8
  %4267 = load i64, i64* %width, align 8
  %sub6864 = sub i64 %4266, %4267
  br label %cond.end.6868

cond.false.6865:                                  ; preds = %land.lhs.true.6856, %land.lhs.true.6853, %cond.false.6850
  %4268 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6866 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4268, i32 0, i32 68
  %4269 = load %struct.darray*, %struct.darray** %jobs6866, align 8
  %len6867 = getelementptr inbounds %struct.darray, %struct.darray* %4269, i32 0, i32 5
  %4270 = load i64, i64* %len6867, align 8
  br label %cond.end.6868

cond.end.6868:                                    ; preds = %cond.false.6865, %cond.true.6861
  %cond6869 = phi i64 [ %sub6864, %cond.true.6861 ], [ %4270, %cond.false.6865 ]
  br label %cond.end.6870

cond.end.6870:                                    ; preds = %cond.end.6868, %cond.true.6849
  %cond6871 = phi i64 [ %4257, %cond.true.6849 ], [ %cond6869, %cond.end.6868 ]
  store i64 %cond6871, i64* %fmax6838, align 8
  store i64 0, i64* %fnum6837, align 8
  br label %for.cond.6872

for.cond.6872:                                    ; preds = %for.inc.6887, %cond.end.6870
  %4271 = load i64, i64* %fnum6837, align 8
  %4272 = load i64, i64* %fmax6838, align 8
  %cmp6873 = icmp ult i64 %4271, %4272
  br i1 %cmp6873, label %for.body.6875, label %for.end.6889

for.body.6875:                                    ; preds = %for.cond.6872
  %4273 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4274 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4275 = load i64, i64* %fnum6837, align 8
  %4276 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6876 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4276, i32 0, i32 68
  %4277 = load %struct.darray*, %struct.darray** %jobs6876, align 8
  %content6877 = getelementptr inbounds %struct.darray, %struct.darray* %4277, i32 0, i32 6
  %4278 = load i8**, i8*** %content6877, align 8
  %arrayidx6878 = getelementptr inbounds i8*, i8** %4278, i64 %4275
  %4279 = load i8*, i8** %arrayidx6878, align 8
  %4280 = bitcast i8* %4279 to %struct.file_job*
  %4281 = load i8*, i8** %context_name.addr, align 8
  %4282 = load i8*, i8** %in, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4273, %struct.a2ps_job* %4274, %struct.file_job* %4280, i8* %4281, i8* %4282)
  %4283 = load i64, i64* %fnum6837, align 8
  %4284 = load i64, i64* %fmax6838, align 8
  %sub6879 = sub i64 %4284, 1
  %cmp6880 = icmp ult i64 %4283, %sub6879
  br i1 %cmp6880, label %if.then.6882, label %if.end.6886

if.then.6882:                                     ; preds = %for.body.6875
  %4285 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4286 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4287 = load i64, i64* %fnum6837, align 8
  %4288 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6883 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4288, i32 0, i32 68
  %4289 = load %struct.darray*, %struct.darray** %jobs6883, align 8
  %content6884 = getelementptr inbounds %struct.darray, %struct.darray* %4289, i32 0, i32 6
  %4290 = load i8**, i8*** %content6884, align 8
  %arrayidx6885 = getelementptr inbounds i8*, i8** %4290, i64 %4287
  %4291 = load i8*, i8** %arrayidx6885, align 8
  %4292 = bitcast i8* %4291 to %struct.file_job*
  %4293 = load i8*, i8** %context_name.addr, align 8
  %4294 = load i8*, i8** %between, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4285, %struct.a2ps_job* %4286, %struct.file_job* %4292, i8* %4293, i8* %4294)
  br label %if.end.6886

if.end.6886:                                      ; preds = %if.then.6882, %for.body.6875
  br label %for.inc.6887

for.inc.6887:                                     ; preds = %if.end.6886
  %4295 = load i64, i64* %fnum6837, align 8
  %inc6888 = add i64 %4295, 1
  store i64 %inc6888, i64* %fnum6837, align 8
  br label %for.cond.6872

for.end.6889:                                     ; preds = %for.cond.6872
  br label %sw.epilog.7015

sw.bb.6890:                                       ; preds = %do.end.6708
  %4296 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6893 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4296, i32 0, i32 68
  %4297 = load %struct.darray*, %struct.darray** %jobs6893, align 8
  %call6894 = call %struct.darray* @da_clone(%struct.darray* %4297)
  store %struct.darray* %call6894, %struct.darray** %ordered, align 8
  %4298 = load %struct.darray*, %struct.darray** %ordered, align 8
  %cmp6895 = getelementptr inbounds %struct.darray, %struct.darray* %4298, i32 0, i32 8
  store i32 (i8*, i8*)* bitcast (i32 (%struct.file_job*, %struct.file_job*)* @file_name_cmp to i32 (i8*, i8*)*), i32 (i8*, i8*)** %cmp6895, align 8
  %4299 = load %struct.darray*, %struct.darray** %ordered, align 8
  call void @da_qsort(%struct.darray* %4299)
  %4300 = load i64, i64* %width, align 8
  %cmp6896 = icmp ugt i64 %4300, 0
  br i1 %cmp6896, label %land.lhs.true.6898, label %cond.false.6907

land.lhs.true.6898:                               ; preds = %sw.bb.6890
  %4301 = load i32, i32* %justification, align 4
  %cmp6899 = icmp sgt i32 %4301, 0
  br i1 %cmp6899, label %land.lhs.true.6901, label %cond.false.6907

land.lhs.true.6901:                               ; preds = %land.lhs.true.6898
  %4302 = load i64, i64* %width, align 8
  %4303 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6902 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4303, i32 0, i32 68
  %4304 = load %struct.darray*, %struct.darray** %jobs6902, align 8
  %len6903 = getelementptr inbounds %struct.darray, %struct.darray* %4304, i32 0, i32 5
  %4305 = load i64, i64* %len6903, align 8
  %cmp6904 = icmp ult i64 %4302, %4305
  br i1 %cmp6904, label %cond.true.6906, label %cond.false.6907

cond.true.6906:                                   ; preds = %land.lhs.true.6901
  %4306 = load i64, i64* %width, align 8
  br label %cond.end.6927

cond.false.6907:                                  ; preds = %land.lhs.true.6901, %land.lhs.true.6898, %sw.bb.6890
  %4307 = load i64, i64* %width, align 8
  %cmp6908 = icmp ugt i64 %4307, 0
  br i1 %cmp6908, label %land.lhs.true.6910, label %cond.false.6922

land.lhs.true.6910:                               ; preds = %cond.false.6907
  %4308 = load i32, i32* %justification, align 4
  %cmp6911 = icmp slt i32 %4308, 0
  br i1 %cmp6911, label %land.lhs.true.6913, label %cond.false.6922

land.lhs.true.6913:                               ; preds = %land.lhs.true.6910
  %4309 = load i64, i64* %width, align 8
  %4310 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6914 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4310, i32 0, i32 68
  %4311 = load %struct.darray*, %struct.darray** %jobs6914, align 8
  %len6915 = getelementptr inbounds %struct.darray, %struct.darray* %4311, i32 0, i32 5
  %4312 = load i64, i64* %len6915, align 8
  %cmp6916 = icmp ule i64 %4309, %4312
  br i1 %cmp6916, label %cond.true.6918, label %cond.false.6922

cond.true.6918:                                   ; preds = %land.lhs.true.6913
  %4313 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6919 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4313, i32 0, i32 68
  %4314 = load %struct.darray*, %struct.darray** %jobs6919, align 8
  %len6920 = getelementptr inbounds %struct.darray, %struct.darray* %4314, i32 0, i32 5
  %4315 = load i64, i64* %len6920, align 8
  %4316 = load i64, i64* %width, align 8
  %sub6921 = sub i64 %4315, %4316
  br label %cond.end.6925

cond.false.6922:                                  ; preds = %land.lhs.true.6913, %land.lhs.true.6910, %cond.false.6907
  %4317 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6923 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4317, i32 0, i32 68
  %4318 = load %struct.darray*, %struct.darray** %jobs6923, align 8
  %len6924 = getelementptr inbounds %struct.darray, %struct.darray* %4318, i32 0, i32 5
  %4319 = load i64, i64* %len6924, align 8
  br label %cond.end.6925

cond.end.6925:                                    ; preds = %cond.false.6922, %cond.true.6918
  %cond6926 = phi i64 [ %sub6921, %cond.true.6918 ], [ %4319, %cond.false.6922 ]
  br label %cond.end.6927

cond.end.6927:                                    ; preds = %cond.end.6925, %cond.true.6906
  %cond6928 = phi i64 [ %4306, %cond.true.6906 ], [ %cond6926, %cond.end.6925 ]
  store i64 %cond6928, i64* %fmax6892, align 8
  store i64 0, i64* %fnum6891, align 8
  br label %for.cond.6929

for.cond.6929:                                    ; preds = %for.inc.6942, %cond.end.6927
  %4320 = load i64, i64* %fnum6891, align 8
  %4321 = load i64, i64* %fmax6892, align 8
  %cmp6930 = icmp ult i64 %4320, %4321
  br i1 %cmp6930, label %for.body.6932, label %for.end.6944

for.body.6932:                                    ; preds = %for.cond.6929
  %4322 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4323 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4324 = load i64, i64* %fnum6891, align 8
  %4325 = load %struct.darray*, %struct.darray** %ordered, align 8
  %content6933 = getelementptr inbounds %struct.darray, %struct.darray* %4325, i32 0, i32 6
  %4326 = load i8**, i8*** %content6933, align 8
  %arrayidx6934 = getelementptr inbounds i8*, i8** %4326, i64 %4324
  %4327 = load i8*, i8** %arrayidx6934, align 8
  %4328 = bitcast i8* %4327 to %struct.file_job*
  %4329 = load i8*, i8** %context_name.addr, align 8
  %4330 = load i8*, i8** %in, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4322, %struct.a2ps_job* %4323, %struct.file_job* %4328, i8* %4329, i8* %4330)
  %4331 = load i64, i64* %fnum6891, align 8
  %4332 = load i64, i64* %fmax6892, align 8
  %sub6935 = sub i64 %4332, 1
  %cmp6936 = icmp ult i64 %4331, %sub6935
  br i1 %cmp6936, label %if.then.6938, label %if.end.6941

if.then.6938:                                     ; preds = %for.body.6932
  %4333 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4334 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4335 = load i64, i64* %fnum6891, align 8
  %4336 = load %struct.darray*, %struct.darray** %ordered, align 8
  %content6939 = getelementptr inbounds %struct.darray, %struct.darray* %4336, i32 0, i32 6
  %4337 = load i8**, i8*** %content6939, align 8
  %arrayidx6940 = getelementptr inbounds i8*, i8** %4337, i64 %4335
  %4338 = load i8*, i8** %arrayidx6940, align 8
  %4339 = bitcast i8* %4338 to %struct.file_job*
  %4340 = load i8*, i8** %context_name.addr, align 8
  %4341 = load i8*, i8** %between, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4333, %struct.a2ps_job* %4334, %struct.file_job* %4339, i8* %4340, i8* %4341)
  br label %if.end.6941

if.end.6941:                                      ; preds = %if.then.6938, %for.body.6932
  br label %for.inc.6942

for.inc.6942:                                     ; preds = %if.end.6941
  %4342 = load i64, i64* %fnum6891, align 8
  %inc6943 = add i64 %4342, 1
  store i64 %inc6943, i64* %fnum6891, align 8
  br label %for.cond.6929

for.end.6944:                                     ; preds = %for.cond.6929
  %4343 = load %struct.darray*, %struct.darray** %ordered, align 8
  call void @da_erase(%struct.darray* %4343)
  br label %sw.epilog.7015

sw.bb.6945:                                       ; preds = %do.end.6708
  %4344 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6948 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4344, i32 0, i32 68
  %4345 = load %struct.darray*, %struct.darray** %jobs6948, align 8
  %call6949 = call %struct.darray* @da_clone(%struct.darray* %4345)
  store %struct.darray* %call6949, %struct.darray** %selected, align 8
  store i64 0, i64* %fnum6946, align 8
  br label %while.cond.6950

while.cond.6950:                                  ; preds = %if.end.6964, %sw.bb.6945
  %4346 = load i64, i64* %fnum6946, align 8
  %4347 = load %struct.darray*, %struct.darray** %selected, align 8
  %len6951 = getelementptr inbounds %struct.darray, %struct.darray* %4347, i32 0, i32 5
  %4348 = load i64, i64* %len6951, align 8
  %cmp6952 = icmp ult i64 %4346, %4348
  br i1 %cmp6952, label %while.body.6954, label %while.end.6965

while.body.6954:                                  ; preds = %while.cond.6950
  %4349 = load i64, i64* %fnum6946, align 8
  %4350 = load %struct.darray*, %struct.darray** %selected, align 8
  %content6955 = getelementptr inbounds %struct.darray, %struct.darray* %4350, i32 0, i32 6
  %4351 = load i8**, i8*** %content6955, align 8
  %arrayidx6956 = getelementptr inbounds i8*, i8** %4351, i64 %4349
  %4352 = load i8*, i8** %arrayidx6956, align 8
  %4353 = bitcast i8* %4352 to %struct.file_job*
  %last_sheet6957 = getelementptr inbounds %struct.file_job, %struct.file_job* %4353, i32 0, i32 9
  %4354 = load i32, i32* %last_sheet6957, align 4
  %4355 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets6958 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4355, i32 0, i32 8
  %4356 = load i32, i32* %sheets6958, align 4
  %cmp6959 = icmp slt i32 %4354, %4356
  br i1 %cmp6959, label %if.then.6961, label %if.else.6962

if.then.6961:                                     ; preds = %while.body.6954
  %4357 = load %struct.darray*, %struct.darray** %selected, align 8
  %4358 = load i64, i64* %fnum6946, align 8
  call void @da_remove_at(%struct.darray* %4357, i64 %4358, void (i8*)* null)
  br label %if.end.6964

if.else.6962:                                     ; preds = %while.body.6954
  %4359 = load i64, i64* %fnum6946, align 8
  %inc6963 = add i64 %4359, 1
  store i64 %inc6963, i64* %fnum6946, align 8
  br label %if.end.6964

if.end.6964:                                      ; preds = %if.else.6962, %if.then.6961
  br label %while.cond.6950

while.end.6965:                                   ; preds = %while.cond.6950
  %4360 = load i64, i64* %width, align 8
  %cmp6966 = icmp ugt i64 %4360, 0
  br i1 %cmp6966, label %land.lhs.true.6968, label %cond.false.6976

land.lhs.true.6968:                               ; preds = %while.end.6965
  %4361 = load i32, i32* %justification, align 4
  %cmp6969 = icmp sgt i32 %4361, 0
  br i1 %cmp6969, label %land.lhs.true.6971, label %cond.false.6976

land.lhs.true.6971:                               ; preds = %land.lhs.true.6968
  %4362 = load i64, i64* %width, align 8
  %4363 = load %struct.darray*, %struct.darray** %selected, align 8
  %len6972 = getelementptr inbounds %struct.darray, %struct.darray* %4363, i32 0, i32 5
  %4364 = load i64, i64* %len6972, align 8
  %cmp6973 = icmp ult i64 %4362, %4364
  br i1 %cmp6973, label %cond.true.6975, label %cond.false.6976

cond.true.6975:                                   ; preds = %land.lhs.true.6971
  %4365 = load i64, i64* %width, align 8
  br label %cond.end.6993

cond.false.6976:                                  ; preds = %land.lhs.true.6971, %land.lhs.true.6968, %while.end.6965
  %4366 = load i64, i64* %width, align 8
  %cmp6977 = icmp ugt i64 %4366, 0
  br i1 %cmp6977, label %land.lhs.true.6979, label %cond.false.6989

land.lhs.true.6979:                               ; preds = %cond.false.6976
  %4367 = load i32, i32* %justification, align 4
  %cmp6980 = icmp slt i32 %4367, 0
  br i1 %cmp6980, label %land.lhs.true.6982, label %cond.false.6989

land.lhs.true.6982:                               ; preds = %land.lhs.true.6979
  %4368 = load i64, i64* %width, align 8
  %4369 = load %struct.darray*, %struct.darray** %selected, align 8
  %len6983 = getelementptr inbounds %struct.darray, %struct.darray* %4369, i32 0, i32 5
  %4370 = load i64, i64* %len6983, align 8
  %cmp6984 = icmp ule i64 %4368, %4370
  br i1 %cmp6984, label %cond.true.6986, label %cond.false.6989

cond.true.6986:                                   ; preds = %land.lhs.true.6982
  %4371 = load %struct.darray*, %struct.darray** %selected, align 8
  %len6987 = getelementptr inbounds %struct.darray, %struct.darray* %4371, i32 0, i32 5
  %4372 = load i64, i64* %len6987, align 8
  %4373 = load i64, i64* %width, align 8
  %sub6988 = sub i64 %4372, %4373
  br label %cond.end.6991

cond.false.6989:                                  ; preds = %land.lhs.true.6982, %land.lhs.true.6979, %cond.false.6976
  %4374 = load %struct.darray*, %struct.darray** %selected, align 8
  %len6990 = getelementptr inbounds %struct.darray, %struct.darray* %4374, i32 0, i32 5
  %4375 = load i64, i64* %len6990, align 8
  br label %cond.end.6991

cond.end.6991:                                    ; preds = %cond.false.6989, %cond.true.6986
  %cond6992 = phi i64 [ %sub6988, %cond.true.6986 ], [ %4375, %cond.false.6989 ]
  br label %cond.end.6993

cond.end.6993:                                    ; preds = %cond.end.6991, %cond.true.6975
  %cond6994 = phi i64 [ %4365, %cond.true.6975 ], [ %cond6992, %cond.end.6991 ]
  store i64 %cond6994, i64* %fmax6947, align 8
  store i64 0, i64* %fnum6946, align 8
  br label %for.cond.6995

for.cond.6995:                                    ; preds = %for.inc.7008, %cond.end.6993
  %4376 = load i64, i64* %fnum6946, align 8
  %4377 = load i64, i64* %fmax6947, align 8
  %cmp6996 = icmp ult i64 %4376, %4377
  br i1 %cmp6996, label %for.body.6998, label %for.end.7010

for.body.6998:                                    ; preds = %for.cond.6995
  %4378 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4379 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4380 = load i64, i64* %fnum6946, align 8
  %4381 = load %struct.darray*, %struct.darray** %selected, align 8
  %content6999 = getelementptr inbounds %struct.darray, %struct.darray* %4381, i32 0, i32 6
  %4382 = load i8**, i8*** %content6999, align 8
  %arrayidx7000 = getelementptr inbounds i8*, i8** %4382, i64 %4380
  %4383 = load i8*, i8** %arrayidx7000, align 8
  %4384 = bitcast i8* %4383 to %struct.file_job*
  %4385 = load i8*, i8** %context_name.addr, align 8
  %4386 = load i8*, i8** %in, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4378, %struct.a2ps_job* %4379, %struct.file_job* %4384, i8* %4385, i8* %4386)
  %4387 = load i64, i64* %fnum6946, align 8
  %4388 = load i64, i64* %fmax6947, align 8
  %sub7001 = sub i64 %4388, 1
  %cmp7002 = icmp ult i64 %4387, %sub7001
  br i1 %cmp7002, label %if.then.7004, label %if.end.7007

if.then.7004:                                     ; preds = %for.body.6998
  %4389 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4390 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4391 = load i64, i64* %fnum6946, align 8
  %4392 = load %struct.darray*, %struct.darray** %selected, align 8
  %content7005 = getelementptr inbounds %struct.darray, %struct.darray* %4392, i32 0, i32 6
  %4393 = load i8**, i8*** %content7005, align 8
  %arrayidx7006 = getelementptr inbounds i8*, i8** %4393, i64 %4391
  %4394 = load i8*, i8** %arrayidx7006, align 8
  %4395 = bitcast i8* %4394 to %struct.file_job*
  %4396 = load i8*, i8** %context_name.addr, align 8
  %4397 = load i8*, i8** %between, align 8
  call void @grow_user_string_obstack(%struct.obstack* %4389, %struct.a2ps_job* %4390, %struct.file_job* %4395, i8* %4396, i8* %4397)
  br label %if.end.7007

if.end.7007:                                      ; preds = %if.then.7004, %for.body.6998
  br label %for.inc.7008

for.inc.7008:                                     ; preds = %if.end.7007
  %4398 = load i64, i64* %fnum6946, align 8
  %inc7009 = add i64 %4398, 1
  store i64 %inc7009, i64* %fnum6946, align 8
  br label %for.cond.6995

for.end.7010:                                     ; preds = %for.cond.6995
  %4399 = load %struct.darray*, %struct.darray** %selected, align 8
  call void @da_erase(%struct.darray* %4399)
  br label %sw.epilog.7015

sw.default.7011:                                  ; preds = %do.end.6708
  %call7012 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %4400 = load i8*, i8** %context_name.addr, align 8
  %4401 = load i8, i8* %category, align 1
  %conv7013 = zext i8 %4401 to i32
  %4402 = load i8, i8* %category, align 1
  %conv7014 = zext i8 %4402 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call7012, i8* %4400, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 %conv7013, i32 %conv7014)
  br label %sw.epilog.7015

sw.epilog.7015:                                   ; preds = %sw.default.7011, %for.end.7010, %for.end.6944, %for.end.6889, %for.end.6835
  %4403 = load i8*, i8** %in, align 8
  call void @free(i8* %4403) #5
  br label %sw.epilog.7607

sw.bb.7016:                                       ; preds = %sw.bb.6154
  %4404 = load i64, i64* %i, align 8
  %inc7017 = add i64 %4404, 1
  store i64 %inc7017, i64* %i, align 8
  %4405 = load i8*, i8** %str.addr, align 8
  %arrayidx7018 = getelementptr inbounds i8, i8* %4405, i64 %inc7017
  %4406 = load i8, i8* %arrayidx7018, align 1
  %conv7019 = zext i8 %4406 to i32
  %sub7020 = sub nsw i32 %conv7019, 48
  store i32 %sub7020, i32* %k, align 4
  %4407 = load i32, i32* %k, align 4
  %cmp7021 = icmp slt i32 %4407, 0
  br i1 %cmp7021, label %if.then.7026, label %lor.lhs.false.7023

lor.lhs.false.7023:                               ; preds = %sw.bb.7016
  %4408 = load i32, i32* %k, align 4
  %cmp7024 = icmp slt i32 9, %4408
  br i1 %cmp7024, label %if.then.7026, label %if.end.7032

if.then.7026:                                     ; preds = %lor.lhs.false.7023, %sw.bb.7016
  %call7027 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %4409 = load i8*, i8** %context_name.addr, align 8
  %4410 = load i64, i64* %i, align 8
  %4411 = load i8*, i8** %str.addr, align 8
  %arrayidx7028 = getelementptr inbounds i8, i8* %4411, i64 %4410
  %4412 = load i8, i8* %arrayidx7028, align 1
  %conv7029 = zext i8 %4412 to i32
  %4413 = load i64, i64* %i, align 8
  %4414 = load i8*, i8** %str.addr, align 8
  %arrayidx7030 = getelementptr inbounds i8, i8* %4414, i64 %4413
  %4415 = load i8, i8* %arrayidx7030, align 1
  %conv7031 = zext i8 %4415 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call7027, i8* %4409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 %conv7029, i32 %conv7031)
  br label %if.end.7032

if.end.7032:                                      ; preds = %if.then.7026, %lor.lhs.false.7023
  br label %do.body.7033

do.body.7033:                                     ; preds = %if.end.7032
  %4416 = load i32, i32* %k, align 4
  %idxprom7034 = sext i32 %4416 to i64
  %4417 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4417, i32 0, i32 66
  %arrayidx7035 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames, i32 0, i64 %idxprom7034
  %4418 = load i8*, i8** %arrayidx7035, align 8
  %tobool7036 = icmp ne i8* %4418, null
  br i1 %tobool7036, label %cond.true.7037, label %cond.false.7041

cond.true.7037:                                   ; preds = %do.body.7033
  %4419 = load i32, i32* %k, align 4
  %idxprom7038 = sext i32 %4419 to i64
  %4420 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames7039 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4420, i32 0, i32 66
  %arrayidx7040 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames7039, i32 0, i64 %idxprom7038
  %4421 = load i8*, i8** %arrayidx7040, align 8
  br label %cond.end.7043

cond.false.7041:                                  ; preds = %do.body.7033
  %call7042 = call noalias i8* @tempnam(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #5
  br label %cond.end.7043

cond.end.7043:                                    ; preds = %cond.false.7041, %cond.true.7037
  %cond7044 = phi i8* [ %4421, %cond.true.7037 ], [ %call7042, %cond.false.7041 ]
  %4422 = load i32, i32* %k, align 4
  %idxprom7045 = sext i32 %4422 to i64
  %4423 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames7046 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4423, i32 0, i32 66
  %arrayidx7047 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames7046, i32 0, i64 %idxprom7045
  store i8* %cond7044, i8** %arrayidx7047, align 8
  br label %do.end.7048

do.end.7048:                                      ; preds = %cond.end.7043
  br label %do.body.7049

do.body.7049:                                     ; preds = %do.end.7048
  %4424 = load i32, i32* %k, align 4
  %idxprom7051 = sext i32 %4424 to i64
  %4425 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames7052 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4425, i32 0, i32 66
  %arrayidx7053 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames7052, i32 0, i64 %idxprom7051
  %4426 = load i8*, i8** %arrayidx7053, align 8
  %call7054 = call i64 @strlen(i8* %4426) #6
  store i64 %call7054, i64* %len7050, align 8
  %4427 = load i64, i64* %len7050, align 8
  %4428 = load i64, i64* %width, align 8
  %cmp7056 = icmp ugt i64 %4427, %4428
  br i1 %cmp7056, label %cond.true.7058, label %cond.false.7059

cond.true.7058:                                   ; preds = %do.body.7049
  br label %cond.end.7061

cond.false.7059:                                  ; preds = %do.body.7049
  %4429 = load i64, i64* %width, align 8
  %4430 = load i64, i64* %len7050, align 8
  %sub7060 = sub i64 %4429, %4430
  br label %cond.end.7061

cond.end.7061:                                    ; preds = %cond.false.7059, %cond.true.7058
  %cond7062 = phi i64 [ 0, %cond.true.7058 ], [ %sub7060, %cond.false.7059 ]
  store i64 %cond7062, i64* %nspace7055, align 8
  %4431 = load i64, i64* %width, align 8
  %tobool7063 = icmp ne i64 %4431, 0
  br i1 %tobool7063, label %land.lhs.true.7064, label %if.end.7084

land.lhs.true.7064:                               ; preds = %cond.end.7061
  %4432 = load i32, i32* %justification, align 4
  %cmp7065 = icmp sgt i32 %4432, 0
  br i1 %cmp7065, label %if.then.7067, label %if.end.7084

if.then.7067:                                     ; preds = %land.lhs.true.7064
  br label %for.cond.7068

for.cond.7068:                                    ; preds = %for.inc.7081, %if.then.7067
  %4433 = load i64, i64* %nspace7055, align 8
  %tobool7069 = icmp ne i64 %4433, 0
  br i1 %tobool7069, label %for.body.7070, label %for.end.7083

for.body.7070:                                    ; preds = %for.cond.7068
  %4434 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4434, %struct.obstack** %__o7071, align 8
  %4435 = load %struct.obstack*, %struct.obstack** %__o7071, align 8
  %next_free7072 = getelementptr inbounds %struct.obstack, %struct.obstack* %4435, i32 0, i32 3
  %4436 = load i8*, i8** %next_free7072, align 8
  %add.ptr7073 = getelementptr inbounds i8, i8* %4436, i64 1
  %4437 = load %struct.obstack*, %struct.obstack** %__o7071, align 8
  %chunk_limit7074 = getelementptr inbounds %struct.obstack, %struct.obstack* %4437, i32 0, i32 4
  %4438 = load i8*, i8** %chunk_limit7074, align 8
  %cmp7075 = icmp ugt i8* %add.ptr7073, %4438
  br i1 %cmp7075, label %if.then.7077, label %if.end.7078

if.then.7077:                                     ; preds = %for.body.7070
  %4439 = load %struct.obstack*, %struct.obstack** %__o7071, align 8
  call void @_obstack_newchunk(%struct.obstack* %4439, i32 1)
  br label %if.end.7078

if.end.7078:                                      ; preds = %if.then.7077, %for.body.7070
  %4440 = load i8, i8* %padding, align 1
  %4441 = load %struct.obstack*, %struct.obstack** %__o7071, align 8
  %next_free7079 = getelementptr inbounds %struct.obstack, %struct.obstack* %4441, i32 0, i32 3
  %4442 = load i8*, i8** %next_free7079, align 8
  %incdec.ptr7080 = getelementptr inbounds i8, i8* %4442, i32 1
  store i8* %incdec.ptr7080, i8** %next_free7079, align 8
  store i8 %4440, i8* %4442, align 1
  br label %for.inc.7081

for.inc.7081:                                     ; preds = %if.end.7078
  %4443 = load i64, i64* %nspace7055, align 8
  %dec7082 = add i64 %4443, -1
  store i64 %dec7082, i64* %nspace7055, align 8
  br label %for.cond.7068

for.end.7083:                                     ; preds = %for.cond.7068
  br label %if.end.7084

if.end.7084:                                      ; preds = %for.end.7083, %land.lhs.true.7064, %cond.end.7061
  %4444 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4444, %struct.obstack** %__o7085, align 8
  %4445 = load i64, i64* %len7050, align 8
  %conv7087 = trunc i64 %4445 to i32
  store i32 %conv7087, i32* %__len7086, align 4
  %4446 = load %struct.obstack*, %struct.obstack** %__o7085, align 8
  %next_free7088 = getelementptr inbounds %struct.obstack, %struct.obstack* %4446, i32 0, i32 3
  %4447 = load i8*, i8** %next_free7088, align 8
  %4448 = load i32, i32* %__len7086, align 4
  %idx.ext7089 = sext i32 %4448 to i64
  %add.ptr7090 = getelementptr inbounds i8, i8* %4447, i64 %idx.ext7089
  %4449 = load %struct.obstack*, %struct.obstack** %__o7085, align 8
  %chunk_limit7091 = getelementptr inbounds %struct.obstack, %struct.obstack* %4449, i32 0, i32 4
  %4450 = load i8*, i8** %chunk_limit7091, align 8
  %cmp7092 = icmp ugt i8* %add.ptr7090, %4450
  br i1 %cmp7092, label %if.then.7094, label %if.end.7095

if.then.7094:                                     ; preds = %if.end.7084
  %4451 = load %struct.obstack*, %struct.obstack** %__o7085, align 8
  %4452 = load i32, i32* %__len7086, align 4
  call void @_obstack_newchunk(%struct.obstack* %4451, i32 %4452)
  br label %if.end.7095

if.end.7095:                                      ; preds = %if.then.7094, %if.end.7084
  %4453 = load %struct.obstack*, %struct.obstack** %__o7085, align 8
  %next_free7096 = getelementptr inbounds %struct.obstack, %struct.obstack* %4453, i32 0, i32 3
  %4454 = load i8*, i8** %next_free7096, align 8
  %4455 = load i32, i32* %k, align 4
  %idxprom7097 = sext i32 %4455 to i64
  %4456 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames7098 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4456, i32 0, i32 66
  %arrayidx7099 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames7098, i32 0, i64 %idxprom7097
  %4457 = load i8*, i8** %arrayidx7099, align 8
  %4458 = load i32, i32* %__len7086, align 4
  %conv7100 = sext i32 %4458 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4454, i8* %4457, i64 %conv7100, i32 1, i1 false)
  %4459 = load i32, i32* %__len7086, align 4
  %4460 = load %struct.obstack*, %struct.obstack** %__o7085, align 8
  %next_free7101 = getelementptr inbounds %struct.obstack, %struct.obstack* %4460, i32 0, i32 3
  %4461 = load i8*, i8** %next_free7101, align 8
  %idx.ext7102 = sext i32 %4459 to i64
  %add.ptr7103 = getelementptr inbounds i8, i8* %4461, i64 %idx.ext7102
  store i8* %add.ptr7103, i8** %next_free7101, align 8
  %4462 = load i64, i64* %width, align 8
  %tobool7104 = icmp ne i64 %4462, 0
  br i1 %tobool7104, label %land.lhs.true.7105, label %if.end.7125

land.lhs.true.7105:                               ; preds = %if.end.7095
  %4463 = load i32, i32* %justification, align 4
  %cmp7106 = icmp slt i32 %4463, 0
  br i1 %cmp7106, label %if.then.7108, label %if.end.7125

if.then.7108:                                     ; preds = %land.lhs.true.7105
  br label %for.cond.7109

for.cond.7109:                                    ; preds = %for.inc.7122, %if.then.7108
  %4464 = load i64, i64* %nspace7055, align 8
  %tobool7110 = icmp ne i64 %4464, 0
  br i1 %tobool7110, label %for.body.7111, label %for.end.7124

for.body.7111:                                    ; preds = %for.cond.7109
  %4465 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4465, %struct.obstack** %__o7112, align 8
  %4466 = load %struct.obstack*, %struct.obstack** %__o7112, align 8
  %next_free7113 = getelementptr inbounds %struct.obstack, %struct.obstack* %4466, i32 0, i32 3
  %4467 = load i8*, i8** %next_free7113, align 8
  %add.ptr7114 = getelementptr inbounds i8, i8* %4467, i64 1
  %4468 = load %struct.obstack*, %struct.obstack** %__o7112, align 8
  %chunk_limit7115 = getelementptr inbounds %struct.obstack, %struct.obstack* %4468, i32 0, i32 4
  %4469 = load i8*, i8** %chunk_limit7115, align 8
  %cmp7116 = icmp ugt i8* %add.ptr7114, %4469
  br i1 %cmp7116, label %if.then.7118, label %if.end.7119

if.then.7118:                                     ; preds = %for.body.7111
  %4470 = load %struct.obstack*, %struct.obstack** %__o7112, align 8
  call void @_obstack_newchunk(%struct.obstack* %4470, i32 1)
  br label %if.end.7119

if.end.7119:                                      ; preds = %if.then.7118, %for.body.7111
  %4471 = load i8, i8* %padding, align 1
  %4472 = load %struct.obstack*, %struct.obstack** %__o7112, align 8
  %next_free7120 = getelementptr inbounds %struct.obstack, %struct.obstack* %4472, i32 0, i32 3
  %4473 = load i8*, i8** %next_free7120, align 8
  %incdec.ptr7121 = getelementptr inbounds i8, i8* %4473, i32 1
  store i8* %incdec.ptr7121, i8** %next_free7120, align 8
  store i8 %4471, i8* %4473, align 1
  br label %for.inc.7122

for.inc.7122:                                     ; preds = %if.end.7119
  %4474 = load i64, i64* %nspace7055, align 8
  %dec7123 = add i64 %4474, -1
  store i64 %dec7123, i64* %nspace7055, align 8
  br label %for.cond.7109

for.end.7124:                                     ; preds = %for.cond.7109
  br label %if.end.7125

if.end.7125:                                      ; preds = %for.end.7124, %land.lhs.true.7105, %if.end.7095
  br label %do.end.7126

do.end.7126:                                      ; preds = %if.end.7125
  br label %sw.epilog.7607

sw.bb.7127:                                       ; preds = %sw.bb.6154
  %arraydecay7128 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4475 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4475, i32 0, i32 37
  %4476 = load %struct.medium*, %struct.medium** %medium, align 8
  %h = getelementptr inbounds %struct.medium, %struct.medium* %4476, i32 0, i32 2
  %4477 = load i32, i32* %h, align 4
  %call7129 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %4477) #5
  br label %do.body.7130

do.body.7130:                                     ; preds = %sw.bb.7127
  %arraydecay7132 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call7133 = call i64 @strlen(i8* %arraydecay7132) #6
  store i64 %call7133, i64* %len7131, align 8
  %4478 = load i64, i64* %len7131, align 8
  %4479 = load i64, i64* %width, align 8
  %cmp7135 = icmp ugt i64 %4478, %4479
  br i1 %cmp7135, label %cond.true.7137, label %cond.false.7138

cond.true.7137:                                   ; preds = %do.body.7130
  br label %cond.end.7140

cond.false.7138:                                  ; preds = %do.body.7130
  %4480 = load i64, i64* %width, align 8
  %4481 = load i64, i64* %len7131, align 8
  %sub7139 = sub i64 %4480, %4481
  br label %cond.end.7140

cond.end.7140:                                    ; preds = %cond.false.7138, %cond.true.7137
  %cond7141 = phi i64 [ 0, %cond.true.7137 ], [ %sub7139, %cond.false.7138 ]
  store i64 %cond7141, i64* %nspace7134, align 8
  %4482 = load i64, i64* %width, align 8
  %tobool7142 = icmp ne i64 %4482, 0
  br i1 %tobool7142, label %land.lhs.true.7143, label %if.end.7163

land.lhs.true.7143:                               ; preds = %cond.end.7140
  %4483 = load i32, i32* %justification, align 4
  %cmp7144 = icmp sgt i32 %4483, 0
  br i1 %cmp7144, label %if.then.7146, label %if.end.7163

if.then.7146:                                     ; preds = %land.lhs.true.7143
  br label %for.cond.7147

for.cond.7147:                                    ; preds = %for.inc.7160, %if.then.7146
  %4484 = load i64, i64* %nspace7134, align 8
  %tobool7148 = icmp ne i64 %4484, 0
  br i1 %tobool7148, label %for.body.7149, label %for.end.7162

for.body.7149:                                    ; preds = %for.cond.7147
  %4485 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4485, %struct.obstack** %__o7150, align 8
  %4486 = load %struct.obstack*, %struct.obstack** %__o7150, align 8
  %next_free7151 = getelementptr inbounds %struct.obstack, %struct.obstack* %4486, i32 0, i32 3
  %4487 = load i8*, i8** %next_free7151, align 8
  %add.ptr7152 = getelementptr inbounds i8, i8* %4487, i64 1
  %4488 = load %struct.obstack*, %struct.obstack** %__o7150, align 8
  %chunk_limit7153 = getelementptr inbounds %struct.obstack, %struct.obstack* %4488, i32 0, i32 4
  %4489 = load i8*, i8** %chunk_limit7153, align 8
  %cmp7154 = icmp ugt i8* %add.ptr7152, %4489
  br i1 %cmp7154, label %if.then.7156, label %if.end.7157

if.then.7156:                                     ; preds = %for.body.7149
  %4490 = load %struct.obstack*, %struct.obstack** %__o7150, align 8
  call void @_obstack_newchunk(%struct.obstack* %4490, i32 1)
  br label %if.end.7157

if.end.7157:                                      ; preds = %if.then.7156, %for.body.7149
  %4491 = load i8, i8* %padding, align 1
  %4492 = load %struct.obstack*, %struct.obstack** %__o7150, align 8
  %next_free7158 = getelementptr inbounds %struct.obstack, %struct.obstack* %4492, i32 0, i32 3
  %4493 = load i8*, i8** %next_free7158, align 8
  %incdec.ptr7159 = getelementptr inbounds i8, i8* %4493, i32 1
  store i8* %incdec.ptr7159, i8** %next_free7158, align 8
  store i8 %4491, i8* %4493, align 1
  br label %for.inc.7160

for.inc.7160:                                     ; preds = %if.end.7157
  %4494 = load i64, i64* %nspace7134, align 8
  %dec7161 = add i64 %4494, -1
  store i64 %dec7161, i64* %nspace7134, align 8
  br label %for.cond.7147

for.end.7162:                                     ; preds = %for.cond.7147
  br label %if.end.7163

if.end.7163:                                      ; preds = %for.end.7162, %land.lhs.true.7143, %cond.end.7140
  %4495 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4495, %struct.obstack** %__o7164, align 8
  %4496 = load i64, i64* %len7131, align 8
  %conv7166 = trunc i64 %4496 to i32
  store i32 %conv7166, i32* %__len7165, align 4
  %4497 = load %struct.obstack*, %struct.obstack** %__o7164, align 8
  %next_free7167 = getelementptr inbounds %struct.obstack, %struct.obstack* %4497, i32 0, i32 3
  %4498 = load i8*, i8** %next_free7167, align 8
  %4499 = load i32, i32* %__len7165, align 4
  %idx.ext7168 = sext i32 %4499 to i64
  %add.ptr7169 = getelementptr inbounds i8, i8* %4498, i64 %idx.ext7168
  %4500 = load %struct.obstack*, %struct.obstack** %__o7164, align 8
  %chunk_limit7170 = getelementptr inbounds %struct.obstack, %struct.obstack* %4500, i32 0, i32 4
  %4501 = load i8*, i8** %chunk_limit7170, align 8
  %cmp7171 = icmp ugt i8* %add.ptr7169, %4501
  br i1 %cmp7171, label %if.then.7173, label %if.end.7174

if.then.7173:                                     ; preds = %if.end.7163
  %4502 = load %struct.obstack*, %struct.obstack** %__o7164, align 8
  %4503 = load i32, i32* %__len7165, align 4
  call void @_obstack_newchunk(%struct.obstack* %4502, i32 %4503)
  br label %if.end.7174

if.end.7174:                                      ; preds = %if.then.7173, %if.end.7163
  %4504 = load %struct.obstack*, %struct.obstack** %__o7164, align 8
  %next_free7175 = getelementptr inbounds %struct.obstack, %struct.obstack* %4504, i32 0, i32 3
  %4505 = load i8*, i8** %next_free7175, align 8
  %arraydecay7176 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4506 = load i32, i32* %__len7165, align 4
  %conv7177 = sext i32 %4506 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4505, i8* %arraydecay7176, i64 %conv7177, i32 1, i1 false)
  %4507 = load i32, i32* %__len7165, align 4
  %4508 = load %struct.obstack*, %struct.obstack** %__o7164, align 8
  %next_free7178 = getelementptr inbounds %struct.obstack, %struct.obstack* %4508, i32 0, i32 3
  %4509 = load i8*, i8** %next_free7178, align 8
  %idx.ext7179 = sext i32 %4507 to i64
  %add.ptr7180 = getelementptr inbounds i8, i8* %4509, i64 %idx.ext7179
  store i8* %add.ptr7180, i8** %next_free7178, align 8
  %4510 = load i64, i64* %width, align 8
  %tobool7181 = icmp ne i64 %4510, 0
  br i1 %tobool7181, label %land.lhs.true.7182, label %if.end.7202

land.lhs.true.7182:                               ; preds = %if.end.7174
  %4511 = load i32, i32* %justification, align 4
  %cmp7183 = icmp slt i32 %4511, 0
  br i1 %cmp7183, label %if.then.7185, label %if.end.7202

if.then.7185:                                     ; preds = %land.lhs.true.7182
  br label %for.cond.7186

for.cond.7186:                                    ; preds = %for.inc.7199, %if.then.7185
  %4512 = load i64, i64* %nspace7134, align 8
  %tobool7187 = icmp ne i64 %4512, 0
  br i1 %tobool7187, label %for.body.7188, label %for.end.7201

for.body.7188:                                    ; preds = %for.cond.7186
  %4513 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4513, %struct.obstack** %__o7189, align 8
  %4514 = load %struct.obstack*, %struct.obstack** %__o7189, align 8
  %next_free7190 = getelementptr inbounds %struct.obstack, %struct.obstack* %4514, i32 0, i32 3
  %4515 = load i8*, i8** %next_free7190, align 8
  %add.ptr7191 = getelementptr inbounds i8, i8* %4515, i64 1
  %4516 = load %struct.obstack*, %struct.obstack** %__o7189, align 8
  %chunk_limit7192 = getelementptr inbounds %struct.obstack, %struct.obstack* %4516, i32 0, i32 4
  %4517 = load i8*, i8** %chunk_limit7192, align 8
  %cmp7193 = icmp ugt i8* %add.ptr7191, %4517
  br i1 %cmp7193, label %if.then.7195, label %if.end.7196

if.then.7195:                                     ; preds = %for.body.7188
  %4518 = load %struct.obstack*, %struct.obstack** %__o7189, align 8
  call void @_obstack_newchunk(%struct.obstack* %4518, i32 1)
  br label %if.end.7196

if.end.7196:                                      ; preds = %if.then.7195, %for.body.7188
  %4519 = load i8, i8* %padding, align 1
  %4520 = load %struct.obstack*, %struct.obstack** %__o7189, align 8
  %next_free7197 = getelementptr inbounds %struct.obstack, %struct.obstack* %4520, i32 0, i32 3
  %4521 = load i8*, i8** %next_free7197, align 8
  %incdec.ptr7198 = getelementptr inbounds i8, i8* %4521, i32 1
  store i8* %incdec.ptr7198, i8** %next_free7197, align 8
  store i8 %4519, i8* %4521, align 1
  br label %for.inc.7199

for.inc.7199:                                     ; preds = %if.end.7196
  %4522 = load i64, i64* %nspace7134, align 8
  %dec7200 = add i64 %4522, -1
  store i64 %dec7200, i64* %nspace7134, align 8
  br label %for.cond.7186

for.end.7201:                                     ; preds = %for.cond.7186
  br label %if.end.7202

if.end.7202:                                      ; preds = %for.end.7201, %land.lhs.true.7182, %if.end.7174
  br label %do.end.7203

do.end.7203:                                      ; preds = %if.end.7202
  br label %sw.epilog.7607

sw.bb.7204:                                       ; preds = %sw.bb.6154
  br label %do.body.7205

do.body.7205:                                     ; preds = %sw.bb.7204
  %4523 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4523, i32 0, i32 25
  %4524 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %call7207 = call i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s* %4524)
  %call7208 = call i64 @strlen(i8* %call7207) #6
  store i64 %call7208, i64* %len7206, align 8
  %4525 = load i64, i64* %len7206, align 8
  %4526 = load i64, i64* %width, align 8
  %cmp7210 = icmp ugt i64 %4525, %4526
  br i1 %cmp7210, label %cond.true.7212, label %cond.false.7213

cond.true.7212:                                   ; preds = %do.body.7205
  br label %cond.end.7215

cond.false.7213:                                  ; preds = %do.body.7205
  %4527 = load i64, i64* %width, align 8
  %4528 = load i64, i64* %len7206, align 8
  %sub7214 = sub i64 %4527, %4528
  br label %cond.end.7215

cond.end.7215:                                    ; preds = %cond.false.7213, %cond.true.7212
  %cond7216 = phi i64 [ 0, %cond.true.7212 ], [ %sub7214, %cond.false.7213 ]
  store i64 %cond7216, i64* %nspace7209, align 8
  %4529 = load i64, i64* %width, align 8
  %tobool7217 = icmp ne i64 %4529, 0
  br i1 %tobool7217, label %land.lhs.true.7218, label %if.end.7238

land.lhs.true.7218:                               ; preds = %cond.end.7215
  %4530 = load i32, i32* %justification, align 4
  %cmp7219 = icmp sgt i32 %4530, 0
  br i1 %cmp7219, label %if.then.7221, label %if.end.7238

if.then.7221:                                     ; preds = %land.lhs.true.7218
  br label %for.cond.7222

for.cond.7222:                                    ; preds = %for.inc.7235, %if.then.7221
  %4531 = load i64, i64* %nspace7209, align 8
  %tobool7223 = icmp ne i64 %4531, 0
  br i1 %tobool7223, label %for.body.7224, label %for.end.7237

for.body.7224:                                    ; preds = %for.cond.7222
  %4532 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4532, %struct.obstack** %__o7225, align 8
  %4533 = load %struct.obstack*, %struct.obstack** %__o7225, align 8
  %next_free7226 = getelementptr inbounds %struct.obstack, %struct.obstack* %4533, i32 0, i32 3
  %4534 = load i8*, i8** %next_free7226, align 8
  %add.ptr7227 = getelementptr inbounds i8, i8* %4534, i64 1
  %4535 = load %struct.obstack*, %struct.obstack** %__o7225, align 8
  %chunk_limit7228 = getelementptr inbounds %struct.obstack, %struct.obstack* %4535, i32 0, i32 4
  %4536 = load i8*, i8** %chunk_limit7228, align 8
  %cmp7229 = icmp ugt i8* %add.ptr7227, %4536
  br i1 %cmp7229, label %if.then.7231, label %if.end.7232

if.then.7231:                                     ; preds = %for.body.7224
  %4537 = load %struct.obstack*, %struct.obstack** %__o7225, align 8
  call void @_obstack_newchunk(%struct.obstack* %4537, i32 1)
  br label %if.end.7232

if.end.7232:                                      ; preds = %if.then.7231, %for.body.7224
  %4538 = load i8, i8* %padding, align 1
  %4539 = load %struct.obstack*, %struct.obstack** %__o7225, align 8
  %next_free7233 = getelementptr inbounds %struct.obstack, %struct.obstack* %4539, i32 0, i32 3
  %4540 = load i8*, i8** %next_free7233, align 8
  %incdec.ptr7234 = getelementptr inbounds i8, i8* %4540, i32 1
  store i8* %incdec.ptr7234, i8** %next_free7233, align 8
  store i8 %4538, i8* %4540, align 1
  br label %for.inc.7235

for.inc.7235:                                     ; preds = %if.end.7232
  %4541 = load i64, i64* %nspace7209, align 8
  %dec7236 = add i64 %4541, -1
  store i64 %dec7236, i64* %nspace7209, align 8
  br label %for.cond.7222

for.end.7237:                                     ; preds = %for.cond.7222
  br label %if.end.7238

if.end.7238:                                      ; preds = %for.end.7237, %land.lhs.true.7218, %cond.end.7215
  %4542 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4542, %struct.obstack** %__o7239, align 8
  %4543 = load i64, i64* %len7206, align 8
  %conv7241 = trunc i64 %4543 to i32
  store i32 %conv7241, i32* %__len7240, align 4
  %4544 = load %struct.obstack*, %struct.obstack** %__o7239, align 8
  %next_free7242 = getelementptr inbounds %struct.obstack, %struct.obstack* %4544, i32 0, i32 3
  %4545 = load i8*, i8** %next_free7242, align 8
  %4546 = load i32, i32* %__len7240, align 4
  %idx.ext7243 = sext i32 %4546 to i64
  %add.ptr7244 = getelementptr inbounds i8, i8* %4545, i64 %idx.ext7243
  %4547 = load %struct.obstack*, %struct.obstack** %__o7239, align 8
  %chunk_limit7245 = getelementptr inbounds %struct.obstack, %struct.obstack* %4547, i32 0, i32 4
  %4548 = load i8*, i8** %chunk_limit7245, align 8
  %cmp7246 = icmp ugt i8* %add.ptr7244, %4548
  br i1 %cmp7246, label %if.then.7248, label %if.end.7249

if.then.7248:                                     ; preds = %if.end.7238
  %4549 = load %struct.obstack*, %struct.obstack** %__o7239, align 8
  %4550 = load i32, i32* %__len7240, align 4
  call void @_obstack_newchunk(%struct.obstack* %4549, i32 %4550)
  br label %if.end.7249

if.end.7249:                                      ; preds = %if.then.7248, %if.end.7238
  %4551 = load %struct.obstack*, %struct.obstack** %__o7239, align 8
  %next_free7250 = getelementptr inbounds %struct.obstack, %struct.obstack* %4551, i32 0, i32 3
  %4552 = load i8*, i8** %next_free7250, align 8
  %4553 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers7251 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4553, i32 0, i32 25
  %4554 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers7251, align 8
  %call7252 = call i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s* %4554)
  %4555 = load i32, i32* %__len7240, align 4
  %conv7253 = sext i32 %4555 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4552, i8* %call7252, i64 %conv7253, i32 1, i1 false)
  %4556 = load i32, i32* %__len7240, align 4
  %4557 = load %struct.obstack*, %struct.obstack** %__o7239, align 8
  %next_free7254 = getelementptr inbounds %struct.obstack, %struct.obstack* %4557, i32 0, i32 3
  %4558 = load i8*, i8** %next_free7254, align 8
  %idx.ext7255 = sext i32 %4556 to i64
  %add.ptr7256 = getelementptr inbounds i8, i8* %4558, i64 %idx.ext7255
  store i8* %add.ptr7256, i8** %next_free7254, align 8
  %4559 = load i64, i64* %width, align 8
  %tobool7257 = icmp ne i64 %4559, 0
  br i1 %tobool7257, label %land.lhs.true.7258, label %if.end.7278

land.lhs.true.7258:                               ; preds = %if.end.7249
  %4560 = load i32, i32* %justification, align 4
  %cmp7259 = icmp slt i32 %4560, 0
  br i1 %cmp7259, label %if.then.7261, label %if.end.7278

if.then.7261:                                     ; preds = %land.lhs.true.7258
  br label %for.cond.7262

for.cond.7262:                                    ; preds = %for.inc.7275, %if.then.7261
  %4561 = load i64, i64* %nspace7209, align 8
  %tobool7263 = icmp ne i64 %4561, 0
  br i1 %tobool7263, label %for.body.7264, label %for.end.7277

for.body.7264:                                    ; preds = %for.cond.7262
  %4562 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4562, %struct.obstack** %__o7265, align 8
  %4563 = load %struct.obstack*, %struct.obstack** %__o7265, align 8
  %next_free7266 = getelementptr inbounds %struct.obstack, %struct.obstack* %4563, i32 0, i32 3
  %4564 = load i8*, i8** %next_free7266, align 8
  %add.ptr7267 = getelementptr inbounds i8, i8* %4564, i64 1
  %4565 = load %struct.obstack*, %struct.obstack** %__o7265, align 8
  %chunk_limit7268 = getelementptr inbounds %struct.obstack, %struct.obstack* %4565, i32 0, i32 4
  %4566 = load i8*, i8** %chunk_limit7268, align 8
  %cmp7269 = icmp ugt i8* %add.ptr7267, %4566
  br i1 %cmp7269, label %if.then.7271, label %if.end.7272

if.then.7271:                                     ; preds = %for.body.7264
  %4567 = load %struct.obstack*, %struct.obstack** %__o7265, align 8
  call void @_obstack_newchunk(%struct.obstack* %4567, i32 1)
  br label %if.end.7272

if.end.7272:                                      ; preds = %if.then.7271, %for.body.7264
  %4568 = load i8, i8* %padding, align 1
  %4569 = load %struct.obstack*, %struct.obstack** %__o7265, align 8
  %next_free7273 = getelementptr inbounds %struct.obstack, %struct.obstack* %4569, i32 0, i32 3
  %4570 = load i8*, i8** %next_free7273, align 8
  %incdec.ptr7274 = getelementptr inbounds i8, i8* %4570, i32 1
  store i8* %incdec.ptr7274, i8** %next_free7273, align 8
  store i8 %4568, i8* %4570, align 1
  br label %for.inc.7275

for.inc.7275:                                     ; preds = %if.end.7272
  %4571 = load i64, i64* %nspace7209, align 8
  %dec7276 = add i64 %4571, -1
  store i64 %dec7276, i64* %nspace7209, align 8
  br label %for.cond.7262

for.end.7277:                                     ; preds = %for.cond.7262
  br label %if.end.7278

if.end.7278:                                      ; preds = %for.end.7277, %land.lhs.true.7258, %if.end.7249
  br label %do.end.7279

do.end.7279:                                      ; preds = %if.end.7278
  br label %sw.epilog.7607

sw.bb.7280:                                       ; preds = %sw.bb.6154
  %4572 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers7281 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4572, i32 0, i32 25
  %4573 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers7281, align 8
  %call7282 = call zeroext i1 @a2ps_printers_flag_output_is_printer_get(%struct.a2ps_printers_s* %4573)
  br i1 %call7282, label %if.then.7283, label %if.else.7287

if.then.7283:                                     ; preds = %sw.bb.7280
  %4574 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  %4575 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4576 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %call7284 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0)) #5
  %4577 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers7285 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4577, i32 0, i32 25
  %4578 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers7285, align 8
  %call7286 = call i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s* %4578)
  call void @grow_user_string_obstack(%struct.obstack* %4574, %struct.a2ps_job* %4575, %struct.file_job* %4576, i8* %call7284, i8* %call7286)
  br label %if.end.7364

if.else.7287:                                     ; preds = %sw.bb.7280
  br label %do.body.7288

do.body.7288:                                     ; preds = %if.else.7287
  %4579 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers7290 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4579, i32 0, i32 25
  %4580 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers7290, align 8
  %call7291 = call i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s* %4580)
  %call7292 = call i64 @strlen(i8* %call7291) #6
  store i64 %call7292, i64* %len7289, align 8
  %4581 = load i64, i64* %len7289, align 8
  %4582 = load i64, i64* %width, align 8
  %cmp7294 = icmp ugt i64 %4581, %4582
  br i1 %cmp7294, label %cond.true.7296, label %cond.false.7297

cond.true.7296:                                   ; preds = %do.body.7288
  br label %cond.end.7299

cond.false.7297:                                  ; preds = %do.body.7288
  %4583 = load i64, i64* %width, align 8
  %4584 = load i64, i64* %len7289, align 8
  %sub7298 = sub i64 %4583, %4584
  br label %cond.end.7299

cond.end.7299:                                    ; preds = %cond.false.7297, %cond.true.7296
  %cond7300 = phi i64 [ 0, %cond.true.7296 ], [ %sub7298, %cond.false.7297 ]
  store i64 %cond7300, i64* %nspace7293, align 8
  %4585 = load i64, i64* %width, align 8
  %tobool7301 = icmp ne i64 %4585, 0
  br i1 %tobool7301, label %land.lhs.true.7302, label %if.end.7322

land.lhs.true.7302:                               ; preds = %cond.end.7299
  %4586 = load i32, i32* %justification, align 4
  %cmp7303 = icmp sgt i32 %4586, 0
  br i1 %cmp7303, label %if.then.7305, label %if.end.7322

if.then.7305:                                     ; preds = %land.lhs.true.7302
  br label %for.cond.7306

for.cond.7306:                                    ; preds = %for.inc.7319, %if.then.7305
  %4587 = load i64, i64* %nspace7293, align 8
  %tobool7307 = icmp ne i64 %4587, 0
  br i1 %tobool7307, label %for.body.7308, label %for.end.7321

for.body.7308:                                    ; preds = %for.cond.7306
  %4588 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4588, %struct.obstack** %__o7309, align 8
  %4589 = load %struct.obstack*, %struct.obstack** %__o7309, align 8
  %next_free7310 = getelementptr inbounds %struct.obstack, %struct.obstack* %4589, i32 0, i32 3
  %4590 = load i8*, i8** %next_free7310, align 8
  %add.ptr7311 = getelementptr inbounds i8, i8* %4590, i64 1
  %4591 = load %struct.obstack*, %struct.obstack** %__o7309, align 8
  %chunk_limit7312 = getelementptr inbounds %struct.obstack, %struct.obstack* %4591, i32 0, i32 4
  %4592 = load i8*, i8** %chunk_limit7312, align 8
  %cmp7313 = icmp ugt i8* %add.ptr7311, %4592
  br i1 %cmp7313, label %if.then.7315, label %if.end.7316

if.then.7315:                                     ; preds = %for.body.7308
  %4593 = load %struct.obstack*, %struct.obstack** %__o7309, align 8
  call void @_obstack_newchunk(%struct.obstack* %4593, i32 1)
  br label %if.end.7316

if.end.7316:                                      ; preds = %if.then.7315, %for.body.7308
  %4594 = load i8, i8* %padding, align 1
  %4595 = load %struct.obstack*, %struct.obstack** %__o7309, align 8
  %next_free7317 = getelementptr inbounds %struct.obstack, %struct.obstack* %4595, i32 0, i32 3
  %4596 = load i8*, i8** %next_free7317, align 8
  %incdec.ptr7318 = getelementptr inbounds i8, i8* %4596, i32 1
  store i8* %incdec.ptr7318, i8** %next_free7317, align 8
  store i8 %4594, i8* %4596, align 1
  br label %for.inc.7319

for.inc.7319:                                     ; preds = %if.end.7316
  %4597 = load i64, i64* %nspace7293, align 8
  %dec7320 = add i64 %4597, -1
  store i64 %dec7320, i64* %nspace7293, align 8
  br label %for.cond.7306

for.end.7321:                                     ; preds = %for.cond.7306
  br label %if.end.7322

if.end.7322:                                      ; preds = %for.end.7321, %land.lhs.true.7302, %cond.end.7299
  %4598 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4598, %struct.obstack** %__o7323, align 8
  %4599 = load i64, i64* %len7289, align 8
  %conv7325 = trunc i64 %4599 to i32
  store i32 %conv7325, i32* %__len7324, align 4
  %4600 = load %struct.obstack*, %struct.obstack** %__o7323, align 8
  %next_free7326 = getelementptr inbounds %struct.obstack, %struct.obstack* %4600, i32 0, i32 3
  %4601 = load i8*, i8** %next_free7326, align 8
  %4602 = load i32, i32* %__len7324, align 4
  %idx.ext7327 = sext i32 %4602 to i64
  %add.ptr7328 = getelementptr inbounds i8, i8* %4601, i64 %idx.ext7327
  %4603 = load %struct.obstack*, %struct.obstack** %__o7323, align 8
  %chunk_limit7329 = getelementptr inbounds %struct.obstack, %struct.obstack* %4603, i32 0, i32 4
  %4604 = load i8*, i8** %chunk_limit7329, align 8
  %cmp7330 = icmp ugt i8* %add.ptr7328, %4604
  br i1 %cmp7330, label %if.then.7332, label %if.end.7333

if.then.7332:                                     ; preds = %if.end.7322
  %4605 = load %struct.obstack*, %struct.obstack** %__o7323, align 8
  %4606 = load i32, i32* %__len7324, align 4
  call void @_obstack_newchunk(%struct.obstack* %4605, i32 %4606)
  br label %if.end.7333

if.end.7333:                                      ; preds = %if.then.7332, %if.end.7322
  %4607 = load %struct.obstack*, %struct.obstack** %__o7323, align 8
  %next_free7334 = getelementptr inbounds %struct.obstack, %struct.obstack* %4607, i32 0, i32 3
  %4608 = load i8*, i8** %next_free7334, align 8
  %4609 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers7335 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4609, i32 0, i32 25
  %4610 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers7335, align 8
  %call7336 = call i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s* %4610)
  %4611 = load i32, i32* %__len7324, align 4
  %conv7337 = sext i32 %4611 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4608, i8* %call7336, i64 %conv7337, i32 1, i1 false)
  %4612 = load i32, i32* %__len7324, align 4
  %4613 = load %struct.obstack*, %struct.obstack** %__o7323, align 8
  %next_free7338 = getelementptr inbounds %struct.obstack, %struct.obstack* %4613, i32 0, i32 3
  %4614 = load i8*, i8** %next_free7338, align 8
  %idx.ext7339 = sext i32 %4612 to i64
  %add.ptr7340 = getelementptr inbounds i8, i8* %4614, i64 %idx.ext7339
  store i8* %add.ptr7340, i8** %next_free7338, align 8
  %4615 = load i64, i64* %width, align 8
  %tobool7341 = icmp ne i64 %4615, 0
  br i1 %tobool7341, label %land.lhs.true.7342, label %if.end.7362

land.lhs.true.7342:                               ; preds = %if.end.7333
  %4616 = load i32, i32* %justification, align 4
  %cmp7343 = icmp slt i32 %4616, 0
  br i1 %cmp7343, label %if.then.7345, label %if.end.7362

if.then.7345:                                     ; preds = %land.lhs.true.7342
  br label %for.cond.7346

for.cond.7346:                                    ; preds = %for.inc.7359, %if.then.7345
  %4617 = load i64, i64* %nspace7293, align 8
  %tobool7347 = icmp ne i64 %4617, 0
  br i1 %tobool7347, label %for.body.7348, label %for.end.7361

for.body.7348:                                    ; preds = %for.cond.7346
  %4618 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4618, %struct.obstack** %__o7349, align 8
  %4619 = load %struct.obstack*, %struct.obstack** %__o7349, align 8
  %next_free7350 = getelementptr inbounds %struct.obstack, %struct.obstack* %4619, i32 0, i32 3
  %4620 = load i8*, i8** %next_free7350, align 8
  %add.ptr7351 = getelementptr inbounds i8, i8* %4620, i64 1
  %4621 = load %struct.obstack*, %struct.obstack** %__o7349, align 8
  %chunk_limit7352 = getelementptr inbounds %struct.obstack, %struct.obstack* %4621, i32 0, i32 4
  %4622 = load i8*, i8** %chunk_limit7352, align 8
  %cmp7353 = icmp ugt i8* %add.ptr7351, %4622
  br i1 %cmp7353, label %if.then.7355, label %if.end.7356

if.then.7355:                                     ; preds = %for.body.7348
  %4623 = load %struct.obstack*, %struct.obstack** %__o7349, align 8
  call void @_obstack_newchunk(%struct.obstack* %4623, i32 1)
  br label %if.end.7356

if.end.7356:                                      ; preds = %if.then.7355, %for.body.7348
  %4624 = load i8, i8* %padding, align 1
  %4625 = load %struct.obstack*, %struct.obstack** %__o7349, align 8
  %next_free7357 = getelementptr inbounds %struct.obstack, %struct.obstack* %4625, i32 0, i32 3
  %4626 = load i8*, i8** %next_free7357, align 8
  %incdec.ptr7358 = getelementptr inbounds i8, i8* %4626, i32 1
  store i8* %incdec.ptr7358, i8** %next_free7357, align 8
  store i8 %4624, i8* %4626, align 1
  br label %for.inc.7359

for.inc.7359:                                     ; preds = %if.end.7356
  %4627 = load i64, i64* %nspace7293, align 8
  %dec7360 = add i64 %4627, -1
  store i64 %dec7360, i64* %nspace7293, align 8
  br label %for.cond.7346

for.end.7361:                                     ; preds = %for.cond.7346
  br label %if.end.7362

if.end.7362:                                      ; preds = %for.end.7361, %land.lhs.true.7342, %if.end.7333
  br label %do.end.7363

do.end.7363:                                      ; preds = %if.end.7362
  br label %if.end.7364

if.end.7364:                                      ; preds = %do.end.7363, %if.then.7283
  br label %sw.epilog.7607

sw.bb.7365:                                       ; preds = %sw.bb.6154
  %4628 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range7366 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4628, i32 0, i32 67
  %4629 = load %struct.page_range*, %struct.page_range** %page_range7366, align 8
  %arraydecay7367 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4630 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages7368 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4630, i32 0, i32 9
  %4631 = load i32, i32* %pages7368, align 4
  call void @page_range_to_buffer(%struct.page_range* %4629, i8* %arraydecay7367, i32 %4631)
  br label %do.body.7369

do.body.7369:                                     ; preds = %sw.bb.7365
  %arraydecay7371 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call7372 = call i64 @strlen(i8* %arraydecay7371) #6
  store i64 %call7372, i64* %len7370, align 8
  %4632 = load i64, i64* %len7370, align 8
  %4633 = load i64, i64* %width, align 8
  %cmp7374 = icmp ugt i64 %4632, %4633
  br i1 %cmp7374, label %cond.true.7376, label %cond.false.7377

cond.true.7376:                                   ; preds = %do.body.7369
  br label %cond.end.7379

cond.false.7377:                                  ; preds = %do.body.7369
  %4634 = load i64, i64* %width, align 8
  %4635 = load i64, i64* %len7370, align 8
  %sub7378 = sub i64 %4634, %4635
  br label %cond.end.7379

cond.end.7379:                                    ; preds = %cond.false.7377, %cond.true.7376
  %cond7380 = phi i64 [ 0, %cond.true.7376 ], [ %sub7378, %cond.false.7377 ]
  store i64 %cond7380, i64* %nspace7373, align 8
  %4636 = load i64, i64* %width, align 8
  %tobool7381 = icmp ne i64 %4636, 0
  br i1 %tobool7381, label %land.lhs.true.7382, label %if.end.7402

land.lhs.true.7382:                               ; preds = %cond.end.7379
  %4637 = load i32, i32* %justification, align 4
  %cmp7383 = icmp sgt i32 %4637, 0
  br i1 %cmp7383, label %if.then.7385, label %if.end.7402

if.then.7385:                                     ; preds = %land.lhs.true.7382
  br label %for.cond.7386

for.cond.7386:                                    ; preds = %for.inc.7399, %if.then.7385
  %4638 = load i64, i64* %nspace7373, align 8
  %tobool7387 = icmp ne i64 %4638, 0
  br i1 %tobool7387, label %for.body.7388, label %for.end.7401

for.body.7388:                                    ; preds = %for.cond.7386
  %4639 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4639, %struct.obstack** %__o7389, align 8
  %4640 = load %struct.obstack*, %struct.obstack** %__o7389, align 8
  %next_free7390 = getelementptr inbounds %struct.obstack, %struct.obstack* %4640, i32 0, i32 3
  %4641 = load i8*, i8** %next_free7390, align 8
  %add.ptr7391 = getelementptr inbounds i8, i8* %4641, i64 1
  %4642 = load %struct.obstack*, %struct.obstack** %__o7389, align 8
  %chunk_limit7392 = getelementptr inbounds %struct.obstack, %struct.obstack* %4642, i32 0, i32 4
  %4643 = load i8*, i8** %chunk_limit7392, align 8
  %cmp7393 = icmp ugt i8* %add.ptr7391, %4643
  br i1 %cmp7393, label %if.then.7395, label %if.end.7396

if.then.7395:                                     ; preds = %for.body.7388
  %4644 = load %struct.obstack*, %struct.obstack** %__o7389, align 8
  call void @_obstack_newchunk(%struct.obstack* %4644, i32 1)
  br label %if.end.7396

if.end.7396:                                      ; preds = %if.then.7395, %for.body.7388
  %4645 = load i8, i8* %padding, align 1
  %4646 = load %struct.obstack*, %struct.obstack** %__o7389, align 8
  %next_free7397 = getelementptr inbounds %struct.obstack, %struct.obstack* %4646, i32 0, i32 3
  %4647 = load i8*, i8** %next_free7397, align 8
  %incdec.ptr7398 = getelementptr inbounds i8, i8* %4647, i32 1
  store i8* %incdec.ptr7398, i8** %next_free7397, align 8
  store i8 %4645, i8* %4647, align 1
  br label %for.inc.7399

for.inc.7399:                                     ; preds = %if.end.7396
  %4648 = load i64, i64* %nspace7373, align 8
  %dec7400 = add i64 %4648, -1
  store i64 %dec7400, i64* %nspace7373, align 8
  br label %for.cond.7386

for.end.7401:                                     ; preds = %for.cond.7386
  br label %if.end.7402

if.end.7402:                                      ; preds = %for.end.7401, %land.lhs.true.7382, %cond.end.7379
  %4649 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4649, %struct.obstack** %__o7403, align 8
  %4650 = load i64, i64* %len7370, align 8
  %conv7405 = trunc i64 %4650 to i32
  store i32 %conv7405, i32* %__len7404, align 4
  %4651 = load %struct.obstack*, %struct.obstack** %__o7403, align 8
  %next_free7406 = getelementptr inbounds %struct.obstack, %struct.obstack* %4651, i32 0, i32 3
  %4652 = load i8*, i8** %next_free7406, align 8
  %4653 = load i32, i32* %__len7404, align 4
  %idx.ext7407 = sext i32 %4653 to i64
  %add.ptr7408 = getelementptr inbounds i8, i8* %4652, i64 %idx.ext7407
  %4654 = load %struct.obstack*, %struct.obstack** %__o7403, align 8
  %chunk_limit7409 = getelementptr inbounds %struct.obstack, %struct.obstack* %4654, i32 0, i32 4
  %4655 = load i8*, i8** %chunk_limit7409, align 8
  %cmp7410 = icmp ugt i8* %add.ptr7408, %4655
  br i1 %cmp7410, label %if.then.7412, label %if.end.7413

if.then.7412:                                     ; preds = %if.end.7402
  %4656 = load %struct.obstack*, %struct.obstack** %__o7403, align 8
  %4657 = load i32, i32* %__len7404, align 4
  call void @_obstack_newchunk(%struct.obstack* %4656, i32 %4657)
  br label %if.end.7413

if.end.7413:                                      ; preds = %if.then.7412, %if.end.7402
  %4658 = load %struct.obstack*, %struct.obstack** %__o7403, align 8
  %next_free7414 = getelementptr inbounds %struct.obstack, %struct.obstack* %4658, i32 0, i32 3
  %4659 = load i8*, i8** %next_free7414, align 8
  %arraydecay7415 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4660 = load i32, i32* %__len7404, align 4
  %conv7416 = sext i32 %4660 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4659, i8* %arraydecay7415, i64 %conv7416, i32 1, i1 false)
  %4661 = load i32, i32* %__len7404, align 4
  %4662 = load %struct.obstack*, %struct.obstack** %__o7403, align 8
  %next_free7417 = getelementptr inbounds %struct.obstack, %struct.obstack* %4662, i32 0, i32 3
  %4663 = load i8*, i8** %next_free7417, align 8
  %idx.ext7418 = sext i32 %4661 to i64
  %add.ptr7419 = getelementptr inbounds i8, i8* %4663, i64 %idx.ext7418
  store i8* %add.ptr7419, i8** %next_free7417, align 8
  %4664 = load i64, i64* %width, align 8
  %tobool7420 = icmp ne i64 %4664, 0
  br i1 %tobool7420, label %land.lhs.true.7421, label %if.end.7441

land.lhs.true.7421:                               ; preds = %if.end.7413
  %4665 = load i32, i32* %justification, align 4
  %cmp7422 = icmp slt i32 %4665, 0
  br i1 %cmp7422, label %if.then.7424, label %if.end.7441

if.then.7424:                                     ; preds = %land.lhs.true.7421
  br label %for.cond.7425

for.cond.7425:                                    ; preds = %for.inc.7438, %if.then.7424
  %4666 = load i64, i64* %nspace7373, align 8
  %tobool7426 = icmp ne i64 %4666, 0
  br i1 %tobool7426, label %for.body.7427, label %for.end.7440

for.body.7427:                                    ; preds = %for.cond.7425
  %4667 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4667, %struct.obstack** %__o7428, align 8
  %4668 = load %struct.obstack*, %struct.obstack** %__o7428, align 8
  %next_free7429 = getelementptr inbounds %struct.obstack, %struct.obstack* %4668, i32 0, i32 3
  %4669 = load i8*, i8** %next_free7429, align 8
  %add.ptr7430 = getelementptr inbounds i8, i8* %4669, i64 1
  %4670 = load %struct.obstack*, %struct.obstack** %__o7428, align 8
  %chunk_limit7431 = getelementptr inbounds %struct.obstack, %struct.obstack* %4670, i32 0, i32 4
  %4671 = load i8*, i8** %chunk_limit7431, align 8
  %cmp7432 = icmp ugt i8* %add.ptr7430, %4671
  br i1 %cmp7432, label %if.then.7434, label %if.end.7435

if.then.7434:                                     ; preds = %for.body.7427
  %4672 = load %struct.obstack*, %struct.obstack** %__o7428, align 8
  call void @_obstack_newchunk(%struct.obstack* %4672, i32 1)
  br label %if.end.7435

if.end.7435:                                      ; preds = %if.then.7434, %for.body.7427
  %4673 = load i8, i8* %padding, align 1
  %4674 = load %struct.obstack*, %struct.obstack** %__o7428, align 8
  %next_free7436 = getelementptr inbounds %struct.obstack, %struct.obstack* %4674, i32 0, i32 3
  %4675 = load i8*, i8** %next_free7436, align 8
  %incdec.ptr7437 = getelementptr inbounds i8, i8* %4675, i32 1
  store i8* %incdec.ptr7437, i8** %next_free7436, align 8
  store i8 %4673, i8* %4675, align 1
  br label %for.inc.7438

for.inc.7438:                                     ; preds = %if.end.7435
  %4676 = load i64, i64* %nspace7373, align 8
  %dec7439 = add i64 %4676, -1
  store i64 %dec7439, i64* %nspace7373, align 8
  br label %for.cond.7425

for.end.7440:                                     ; preds = %for.cond.7425
  br label %if.end.7441

if.end.7441:                                      ; preds = %for.end.7440, %land.lhs.true.7421, %if.end.7413
  br label %do.end.7442

do.end.7442:                                      ; preds = %if.end.7441
  br label %sw.epilog.7607

sw.bb.7443:                                       ; preds = %sw.bb.6154
  %arraydecay7444 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4677 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows7445 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4677, i32 0, i32 15
  %4678 = load i32, i32* %rows7445, align 4
  %4679 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns7446 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4679, i32 0, i32 14
  %4680 = load i32, i32* %columns7446, align 4
  %mul7447 = mul nsw i32 %4678, %4680
  %call7448 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7444, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %mul7447) #5
  br label %do.body.7449

do.body.7449:                                     ; preds = %sw.bb.7443
  %arraydecay7451 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call7452 = call i64 @strlen(i8* %arraydecay7451) #6
  store i64 %call7452, i64* %len7450, align 8
  %4681 = load i64, i64* %len7450, align 8
  %4682 = load i64, i64* %width, align 8
  %cmp7454 = icmp ugt i64 %4681, %4682
  br i1 %cmp7454, label %cond.true.7456, label %cond.false.7457

cond.true.7456:                                   ; preds = %do.body.7449
  br label %cond.end.7459

cond.false.7457:                                  ; preds = %do.body.7449
  %4683 = load i64, i64* %width, align 8
  %4684 = load i64, i64* %len7450, align 8
  %sub7458 = sub i64 %4683, %4684
  br label %cond.end.7459

cond.end.7459:                                    ; preds = %cond.false.7457, %cond.true.7456
  %cond7460 = phi i64 [ 0, %cond.true.7456 ], [ %sub7458, %cond.false.7457 ]
  store i64 %cond7460, i64* %nspace7453, align 8
  %4685 = load i64, i64* %width, align 8
  %tobool7461 = icmp ne i64 %4685, 0
  br i1 %tobool7461, label %land.lhs.true.7462, label %if.end.7482

land.lhs.true.7462:                               ; preds = %cond.end.7459
  %4686 = load i32, i32* %justification, align 4
  %cmp7463 = icmp sgt i32 %4686, 0
  br i1 %cmp7463, label %if.then.7465, label %if.end.7482

if.then.7465:                                     ; preds = %land.lhs.true.7462
  br label %for.cond.7466

for.cond.7466:                                    ; preds = %for.inc.7479, %if.then.7465
  %4687 = load i64, i64* %nspace7453, align 8
  %tobool7467 = icmp ne i64 %4687, 0
  br i1 %tobool7467, label %for.body.7468, label %for.end.7481

for.body.7468:                                    ; preds = %for.cond.7466
  %4688 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4688, %struct.obstack** %__o7469, align 8
  %4689 = load %struct.obstack*, %struct.obstack** %__o7469, align 8
  %next_free7470 = getelementptr inbounds %struct.obstack, %struct.obstack* %4689, i32 0, i32 3
  %4690 = load i8*, i8** %next_free7470, align 8
  %add.ptr7471 = getelementptr inbounds i8, i8* %4690, i64 1
  %4691 = load %struct.obstack*, %struct.obstack** %__o7469, align 8
  %chunk_limit7472 = getelementptr inbounds %struct.obstack, %struct.obstack* %4691, i32 0, i32 4
  %4692 = load i8*, i8** %chunk_limit7472, align 8
  %cmp7473 = icmp ugt i8* %add.ptr7471, %4692
  br i1 %cmp7473, label %if.then.7475, label %if.end.7476

if.then.7475:                                     ; preds = %for.body.7468
  %4693 = load %struct.obstack*, %struct.obstack** %__o7469, align 8
  call void @_obstack_newchunk(%struct.obstack* %4693, i32 1)
  br label %if.end.7476

if.end.7476:                                      ; preds = %if.then.7475, %for.body.7468
  %4694 = load i8, i8* %padding, align 1
  %4695 = load %struct.obstack*, %struct.obstack** %__o7469, align 8
  %next_free7477 = getelementptr inbounds %struct.obstack, %struct.obstack* %4695, i32 0, i32 3
  %4696 = load i8*, i8** %next_free7477, align 8
  %incdec.ptr7478 = getelementptr inbounds i8, i8* %4696, i32 1
  store i8* %incdec.ptr7478, i8** %next_free7477, align 8
  store i8 %4694, i8* %4696, align 1
  br label %for.inc.7479

for.inc.7479:                                     ; preds = %if.end.7476
  %4697 = load i64, i64* %nspace7453, align 8
  %dec7480 = add i64 %4697, -1
  store i64 %dec7480, i64* %nspace7453, align 8
  br label %for.cond.7466

for.end.7481:                                     ; preds = %for.cond.7466
  br label %if.end.7482

if.end.7482:                                      ; preds = %for.end.7481, %land.lhs.true.7462, %cond.end.7459
  %4698 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4698, %struct.obstack** %__o7483, align 8
  %4699 = load i64, i64* %len7450, align 8
  %conv7485 = trunc i64 %4699 to i32
  store i32 %conv7485, i32* %__len7484, align 4
  %4700 = load %struct.obstack*, %struct.obstack** %__o7483, align 8
  %next_free7486 = getelementptr inbounds %struct.obstack, %struct.obstack* %4700, i32 0, i32 3
  %4701 = load i8*, i8** %next_free7486, align 8
  %4702 = load i32, i32* %__len7484, align 4
  %idx.ext7487 = sext i32 %4702 to i64
  %add.ptr7488 = getelementptr inbounds i8, i8* %4701, i64 %idx.ext7487
  %4703 = load %struct.obstack*, %struct.obstack** %__o7483, align 8
  %chunk_limit7489 = getelementptr inbounds %struct.obstack, %struct.obstack* %4703, i32 0, i32 4
  %4704 = load i8*, i8** %chunk_limit7489, align 8
  %cmp7490 = icmp ugt i8* %add.ptr7488, %4704
  br i1 %cmp7490, label %if.then.7492, label %if.end.7493

if.then.7492:                                     ; preds = %if.end.7482
  %4705 = load %struct.obstack*, %struct.obstack** %__o7483, align 8
  %4706 = load i32, i32* %__len7484, align 4
  call void @_obstack_newchunk(%struct.obstack* %4705, i32 %4706)
  br label %if.end.7493

if.end.7493:                                      ; preds = %if.then.7492, %if.end.7482
  %4707 = load %struct.obstack*, %struct.obstack** %__o7483, align 8
  %next_free7494 = getelementptr inbounds %struct.obstack, %struct.obstack* %4707, i32 0, i32 3
  %4708 = load i8*, i8** %next_free7494, align 8
  %arraydecay7495 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4709 = load i32, i32* %__len7484, align 4
  %conv7496 = sext i32 %4709 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4708, i8* %arraydecay7495, i64 %conv7496, i32 1, i1 false)
  %4710 = load i32, i32* %__len7484, align 4
  %4711 = load %struct.obstack*, %struct.obstack** %__o7483, align 8
  %next_free7497 = getelementptr inbounds %struct.obstack, %struct.obstack* %4711, i32 0, i32 3
  %4712 = load i8*, i8** %next_free7497, align 8
  %idx.ext7498 = sext i32 %4710 to i64
  %add.ptr7499 = getelementptr inbounds i8, i8* %4712, i64 %idx.ext7498
  store i8* %add.ptr7499, i8** %next_free7497, align 8
  %4713 = load i64, i64* %width, align 8
  %tobool7500 = icmp ne i64 %4713, 0
  br i1 %tobool7500, label %land.lhs.true.7501, label %if.end.7521

land.lhs.true.7501:                               ; preds = %if.end.7493
  %4714 = load i32, i32* %justification, align 4
  %cmp7502 = icmp slt i32 %4714, 0
  br i1 %cmp7502, label %if.then.7504, label %if.end.7521

if.then.7504:                                     ; preds = %land.lhs.true.7501
  br label %for.cond.7505

for.cond.7505:                                    ; preds = %for.inc.7518, %if.then.7504
  %4715 = load i64, i64* %nspace7453, align 8
  %tobool7506 = icmp ne i64 %4715, 0
  br i1 %tobool7506, label %for.body.7507, label %for.end.7520

for.body.7507:                                    ; preds = %for.cond.7505
  %4716 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4716, %struct.obstack** %__o7508, align 8
  %4717 = load %struct.obstack*, %struct.obstack** %__o7508, align 8
  %next_free7509 = getelementptr inbounds %struct.obstack, %struct.obstack* %4717, i32 0, i32 3
  %4718 = load i8*, i8** %next_free7509, align 8
  %add.ptr7510 = getelementptr inbounds i8, i8* %4718, i64 1
  %4719 = load %struct.obstack*, %struct.obstack** %__o7508, align 8
  %chunk_limit7511 = getelementptr inbounds %struct.obstack, %struct.obstack* %4719, i32 0, i32 4
  %4720 = load i8*, i8** %chunk_limit7511, align 8
  %cmp7512 = icmp ugt i8* %add.ptr7510, %4720
  br i1 %cmp7512, label %if.then.7514, label %if.end.7515

if.then.7514:                                     ; preds = %for.body.7507
  %4721 = load %struct.obstack*, %struct.obstack** %__o7508, align 8
  call void @_obstack_newchunk(%struct.obstack* %4721, i32 1)
  br label %if.end.7515

if.end.7515:                                      ; preds = %if.then.7514, %for.body.7507
  %4722 = load i8, i8* %padding, align 1
  %4723 = load %struct.obstack*, %struct.obstack** %__o7508, align 8
  %next_free7516 = getelementptr inbounds %struct.obstack, %struct.obstack* %4723, i32 0, i32 3
  %4724 = load i8*, i8** %next_free7516, align 8
  %incdec.ptr7517 = getelementptr inbounds i8, i8* %4724, i32 1
  store i8* %incdec.ptr7517, i8** %next_free7516, align 8
  store i8 %4722, i8* %4724, align 1
  br label %for.inc.7518

for.inc.7518:                                     ; preds = %if.end.7515
  %4725 = load i64, i64* %nspace7453, align 8
  %dec7519 = add i64 %4725, -1
  store i64 %dec7519, i64* %nspace7453, align 8
  br label %for.cond.7505

for.end.7520:                                     ; preds = %for.cond.7505
  br label %if.end.7521

if.end.7521:                                      ; preds = %for.end.7520, %land.lhs.true.7501, %if.end.7493
  br label %do.end.7522

do.end.7522:                                      ; preds = %if.end.7521
  br label %sw.epilog.7607

sw.bb.7523:                                       ; preds = %sw.bb.6154
  %arraydecay7524 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4726 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium7525 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4726, i32 0, i32 37
  %4727 = load %struct.medium*, %struct.medium** %medium7525, align 8
  %w = getelementptr inbounds %struct.medium, %struct.medium* %4727, i32 0, i32 1
  %4728 = load i32, i32* %w, align 4
  %call7526 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay7524, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %4728) #5
  br label %do.body.7527

do.body.7527:                                     ; preds = %sw.bb.7523
  %arraydecay7529 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call7530 = call i64 @strlen(i8* %arraydecay7529) #6
  store i64 %call7530, i64* %len7528, align 8
  %4729 = load i64, i64* %len7528, align 8
  %4730 = load i64, i64* %width, align 8
  %cmp7532 = icmp ugt i64 %4729, %4730
  br i1 %cmp7532, label %cond.true.7534, label %cond.false.7535

cond.true.7534:                                   ; preds = %do.body.7527
  br label %cond.end.7537

cond.false.7535:                                  ; preds = %do.body.7527
  %4731 = load i64, i64* %width, align 8
  %4732 = load i64, i64* %len7528, align 8
  %sub7536 = sub i64 %4731, %4732
  br label %cond.end.7537

cond.end.7537:                                    ; preds = %cond.false.7535, %cond.true.7534
  %cond7538 = phi i64 [ 0, %cond.true.7534 ], [ %sub7536, %cond.false.7535 ]
  store i64 %cond7538, i64* %nspace7531, align 8
  %4733 = load i64, i64* %width, align 8
  %tobool7539 = icmp ne i64 %4733, 0
  br i1 %tobool7539, label %land.lhs.true.7540, label %if.end.7560

land.lhs.true.7540:                               ; preds = %cond.end.7537
  %4734 = load i32, i32* %justification, align 4
  %cmp7541 = icmp sgt i32 %4734, 0
  br i1 %cmp7541, label %if.then.7543, label %if.end.7560

if.then.7543:                                     ; preds = %land.lhs.true.7540
  br label %for.cond.7544

for.cond.7544:                                    ; preds = %for.inc.7557, %if.then.7543
  %4735 = load i64, i64* %nspace7531, align 8
  %tobool7545 = icmp ne i64 %4735, 0
  br i1 %tobool7545, label %for.body.7546, label %for.end.7559

for.body.7546:                                    ; preds = %for.cond.7544
  %4736 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4736, %struct.obstack** %__o7547, align 8
  %4737 = load %struct.obstack*, %struct.obstack** %__o7547, align 8
  %next_free7548 = getelementptr inbounds %struct.obstack, %struct.obstack* %4737, i32 0, i32 3
  %4738 = load i8*, i8** %next_free7548, align 8
  %add.ptr7549 = getelementptr inbounds i8, i8* %4738, i64 1
  %4739 = load %struct.obstack*, %struct.obstack** %__o7547, align 8
  %chunk_limit7550 = getelementptr inbounds %struct.obstack, %struct.obstack* %4739, i32 0, i32 4
  %4740 = load i8*, i8** %chunk_limit7550, align 8
  %cmp7551 = icmp ugt i8* %add.ptr7549, %4740
  br i1 %cmp7551, label %if.then.7553, label %if.end.7554

if.then.7553:                                     ; preds = %for.body.7546
  %4741 = load %struct.obstack*, %struct.obstack** %__o7547, align 8
  call void @_obstack_newchunk(%struct.obstack* %4741, i32 1)
  br label %if.end.7554

if.end.7554:                                      ; preds = %if.then.7553, %for.body.7546
  %4742 = load i8, i8* %padding, align 1
  %4743 = load %struct.obstack*, %struct.obstack** %__o7547, align 8
  %next_free7555 = getelementptr inbounds %struct.obstack, %struct.obstack* %4743, i32 0, i32 3
  %4744 = load i8*, i8** %next_free7555, align 8
  %incdec.ptr7556 = getelementptr inbounds i8, i8* %4744, i32 1
  store i8* %incdec.ptr7556, i8** %next_free7555, align 8
  store i8 %4742, i8* %4744, align 1
  br label %for.inc.7557

for.inc.7557:                                     ; preds = %if.end.7554
  %4745 = load i64, i64* %nspace7531, align 8
  %dec7558 = add i64 %4745, -1
  store i64 %dec7558, i64* %nspace7531, align 8
  br label %for.cond.7544

for.end.7559:                                     ; preds = %for.cond.7544
  br label %if.end.7560

if.end.7560:                                      ; preds = %for.end.7559, %land.lhs.true.7540, %cond.end.7537
  %4746 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4746, %struct.obstack** %__o7561, align 8
  %4747 = load i64, i64* %len7528, align 8
  %conv7563 = trunc i64 %4747 to i32
  store i32 %conv7563, i32* %__len7562, align 4
  %4748 = load %struct.obstack*, %struct.obstack** %__o7561, align 8
  %next_free7564 = getelementptr inbounds %struct.obstack, %struct.obstack* %4748, i32 0, i32 3
  %4749 = load i8*, i8** %next_free7564, align 8
  %4750 = load i32, i32* %__len7562, align 4
  %idx.ext7565 = sext i32 %4750 to i64
  %add.ptr7566 = getelementptr inbounds i8, i8* %4749, i64 %idx.ext7565
  %4751 = load %struct.obstack*, %struct.obstack** %__o7561, align 8
  %chunk_limit7567 = getelementptr inbounds %struct.obstack, %struct.obstack* %4751, i32 0, i32 4
  %4752 = load i8*, i8** %chunk_limit7567, align 8
  %cmp7568 = icmp ugt i8* %add.ptr7566, %4752
  br i1 %cmp7568, label %if.then.7570, label %if.end.7571

if.then.7570:                                     ; preds = %if.end.7560
  %4753 = load %struct.obstack*, %struct.obstack** %__o7561, align 8
  %4754 = load i32, i32* %__len7562, align 4
  call void @_obstack_newchunk(%struct.obstack* %4753, i32 %4754)
  br label %if.end.7571

if.end.7571:                                      ; preds = %if.then.7570, %if.end.7560
  %4755 = load %struct.obstack*, %struct.obstack** %__o7561, align 8
  %next_free7572 = getelementptr inbounds %struct.obstack, %struct.obstack* %4755, i32 0, i32 3
  %4756 = load i8*, i8** %next_free7572, align 8
  %arraydecay7573 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4757 = load i32, i32* %__len7562, align 4
  %conv7574 = sext i32 %4757 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4756, i8* %arraydecay7573, i64 %conv7574, i32 1, i1 false)
  %4758 = load i32, i32* %__len7562, align 4
  %4759 = load %struct.obstack*, %struct.obstack** %__o7561, align 8
  %next_free7575 = getelementptr inbounds %struct.obstack, %struct.obstack* %4759, i32 0, i32 3
  %4760 = load i8*, i8** %next_free7575, align 8
  %idx.ext7576 = sext i32 %4758 to i64
  %add.ptr7577 = getelementptr inbounds i8, i8* %4760, i64 %idx.ext7576
  store i8* %add.ptr7577, i8** %next_free7575, align 8
  %4761 = load i64, i64* %width, align 8
  %tobool7578 = icmp ne i64 %4761, 0
  br i1 %tobool7578, label %land.lhs.true.7579, label %if.end.7599

land.lhs.true.7579:                               ; preds = %if.end.7571
  %4762 = load i32, i32* %justification, align 4
  %cmp7580 = icmp slt i32 %4762, 0
  br i1 %cmp7580, label %if.then.7582, label %if.end.7599

if.then.7582:                                     ; preds = %land.lhs.true.7579
  br label %for.cond.7583

for.cond.7583:                                    ; preds = %for.inc.7596, %if.then.7582
  %4763 = load i64, i64* %nspace7531, align 8
  %tobool7584 = icmp ne i64 %4763, 0
  br i1 %tobool7584, label %for.body.7585, label %for.end.7598

for.body.7585:                                    ; preds = %for.cond.7583
  %4764 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4764, %struct.obstack** %__o7586, align 8
  %4765 = load %struct.obstack*, %struct.obstack** %__o7586, align 8
  %next_free7587 = getelementptr inbounds %struct.obstack, %struct.obstack* %4765, i32 0, i32 3
  %4766 = load i8*, i8** %next_free7587, align 8
  %add.ptr7588 = getelementptr inbounds i8, i8* %4766, i64 1
  %4767 = load %struct.obstack*, %struct.obstack** %__o7586, align 8
  %chunk_limit7589 = getelementptr inbounds %struct.obstack, %struct.obstack* %4767, i32 0, i32 4
  %4768 = load i8*, i8** %chunk_limit7589, align 8
  %cmp7590 = icmp ugt i8* %add.ptr7588, %4768
  br i1 %cmp7590, label %if.then.7592, label %if.end.7593

if.then.7592:                                     ; preds = %for.body.7585
  %4769 = load %struct.obstack*, %struct.obstack** %__o7586, align 8
  call void @_obstack_newchunk(%struct.obstack* %4769, i32 1)
  br label %if.end.7593

if.end.7593:                                      ; preds = %if.then.7592, %for.body.7585
  %4770 = load i8, i8* %padding, align 1
  %4771 = load %struct.obstack*, %struct.obstack** %__o7586, align 8
  %next_free7594 = getelementptr inbounds %struct.obstack, %struct.obstack* %4771, i32 0, i32 3
  %4772 = load i8*, i8** %next_free7594, align 8
  %incdec.ptr7595 = getelementptr inbounds i8, i8* %4772, i32 1
  store i8* %incdec.ptr7595, i8** %next_free7594, align 8
  store i8 %4770, i8* %4772, align 1
  br label %for.inc.7596

for.inc.7596:                                     ; preds = %if.end.7593
  %4773 = load i64, i64* %nspace7531, align 8
  %dec7597 = add i64 %4773, -1
  store i64 %dec7597, i64* %nspace7531, align 8
  br label %for.cond.7583

for.end.7598:                                     ; preds = %for.cond.7583
  br label %if.end.7599

if.end.7599:                                      ; preds = %for.end.7598, %land.lhs.true.7579, %if.end.7571
  br label %do.end.7600

do.end.7600:                                      ; preds = %if.end.7599
  br label %sw.epilog.7607

sw.default.7601:                                  ; preds = %sw.bb.6154
  %call7602 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #5
  %4774 = load i8*, i8** %context_name.addr, align 8
  %4775 = load i64, i64* %i, align 8
  %4776 = load i8*, i8** %str.addr, align 8
  %arrayidx7603 = getelementptr inbounds i8, i8* %4776, i64 %4775
  %4777 = load i8, i8* %arrayidx7603, align 1
  %conv7604 = zext i8 %4777 to i32
  %4778 = load i64, i64* %i, align 8
  %4779 = load i8*, i8** %str.addr, align 8
  %arrayidx7605 = getelementptr inbounds i8, i8* %4779, i64 %4778
  %4780 = load i8, i8* %arrayidx7605, align 1
  %conv7606 = zext i8 %4780 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call7602, i8* %4774, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i32 %conv7604, i32 %conv7606)
  br label %sw.epilog.7607

sw.epilog.7607:                                   ; preds = %sw.default.7601, %do.end.7600, %do.end.7522, %do.end.7442, %if.end.7364, %do.end.7279, %do.end.7203, %do.end.7126, %sw.epilog.7015, %if.end.6676, %do.end.6548, %if.end.6476, %if.end.6253, %do.end.6211
  br label %sw.epilog.7608

sw.epilog.7608:                                   ; preds = %while.end, %sw.epilog.7607, %sw.epilog.6153, %sw.epilog.2279, %sw.epilog
  store i64 0, i64* %width, align 8
  store i32 1, i32* %justification, align 4
  br label %if.end.7666

if.else.7609:                                     ; preds = %lor.lhs.false.11
  br label %do.body.7610

do.body.7610:                                     ; preds = %if.else.7609
  %4781 = load i64, i64* %width, align 8
  %tobool7612 = icmp ne i64 %4781, 0
  br i1 %tobool7612, label %land.lhs.true.7613, label %if.end.7628

land.lhs.true.7613:                               ; preds = %do.body.7610
  %4782 = load i32, i32* %justification, align 4
  %cmp7614 = icmp slt i32 %4782, 0
  br i1 %cmp7614, label %if.then.7616, label %if.end.7628

if.then.7616:                                     ; preds = %land.lhs.true.7613
  %4783 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4783, %struct.obstack** %__o7617, align 8
  %4784 = load %struct.obstack*, %struct.obstack** %__o7617, align 8
  %next_free7618 = getelementptr inbounds %struct.obstack, %struct.obstack* %4784, i32 0, i32 3
  %4785 = load i8*, i8** %next_free7618, align 8
  %add.ptr7619 = getelementptr inbounds i8, i8* %4785, i64 1
  %4786 = load %struct.obstack*, %struct.obstack** %__o7617, align 8
  %chunk_limit7620 = getelementptr inbounds %struct.obstack, %struct.obstack* %4786, i32 0, i32 4
  %4787 = load i8*, i8** %chunk_limit7620, align 8
  %cmp7621 = icmp ugt i8* %add.ptr7619, %4787
  br i1 %cmp7621, label %if.then.7623, label %if.end.7624

if.then.7623:                                     ; preds = %if.then.7616
  %4788 = load %struct.obstack*, %struct.obstack** %__o7617, align 8
  call void @_obstack_newchunk(%struct.obstack* %4788, i32 1)
  br label %if.end.7624

if.end.7624:                                      ; preds = %if.then.7623, %if.then.7616
  %4789 = load i64, i64* %i, align 8
  %4790 = load i8*, i8** %str.addr, align 8
  %arrayidx7625 = getelementptr inbounds i8, i8* %4790, i64 %4789
  %4791 = load i8, i8* %arrayidx7625, align 1
  %4792 = load %struct.obstack*, %struct.obstack** %__o7617, align 8
  %next_free7626 = getelementptr inbounds %struct.obstack, %struct.obstack* %4792, i32 0, i32 3
  %4793 = load i8*, i8** %next_free7626, align 8
  %incdec.ptr7627 = getelementptr inbounds i8, i8* %4793, i32 1
  store i8* %incdec.ptr7627, i8** %next_free7626, align 8
  store i8 %4791, i8* %4793, align 1
  br label %if.end.7628

if.end.7628:                                      ; preds = %if.end.7624, %land.lhs.true.7613, %do.body.7610
  store i32 0, i32* %a7611, align 4
  br label %for.cond.7629

for.cond.7629:                                    ; preds = %for.inc.7645, %if.end.7628
  %4794 = load i32, i32* %a7611, align 4
  %4795 = load i64, i64* %width, align 8
  %conv7630 = trunc i64 %4795 to i32
  %sub7631 = sub nsw i32 %conv7630, 1
  %cmp7632 = icmp slt i32 %4794, %sub7631
  br i1 %cmp7632, label %for.body.7634, label %for.end.7647

for.body.7634:                                    ; preds = %for.cond.7629
  %4796 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4796, %struct.obstack** %__o7635, align 8
  %4797 = load %struct.obstack*, %struct.obstack** %__o7635, align 8
  %next_free7636 = getelementptr inbounds %struct.obstack, %struct.obstack* %4797, i32 0, i32 3
  %4798 = load i8*, i8** %next_free7636, align 8
  %add.ptr7637 = getelementptr inbounds i8, i8* %4798, i64 1
  %4799 = load %struct.obstack*, %struct.obstack** %__o7635, align 8
  %chunk_limit7638 = getelementptr inbounds %struct.obstack, %struct.obstack* %4799, i32 0, i32 4
  %4800 = load i8*, i8** %chunk_limit7638, align 8
  %cmp7639 = icmp ugt i8* %add.ptr7637, %4800
  br i1 %cmp7639, label %if.then.7641, label %if.end.7642

if.then.7641:                                     ; preds = %for.body.7634
  %4801 = load %struct.obstack*, %struct.obstack** %__o7635, align 8
  call void @_obstack_newchunk(%struct.obstack* %4801, i32 1)
  br label %if.end.7642

if.end.7642:                                      ; preds = %if.then.7641, %for.body.7634
  %4802 = load i8, i8* %padding, align 1
  %4803 = load %struct.obstack*, %struct.obstack** %__o7635, align 8
  %next_free7643 = getelementptr inbounds %struct.obstack, %struct.obstack* %4803, i32 0, i32 3
  %4804 = load i8*, i8** %next_free7643, align 8
  %incdec.ptr7644 = getelementptr inbounds i8, i8* %4804, i32 1
  store i8* %incdec.ptr7644, i8** %next_free7643, align 8
  store i8 %4802, i8* %4804, align 1
  br label %for.inc.7645

for.inc.7645:                                     ; preds = %if.end.7642
  %4805 = load i32, i32* %a7611, align 4
  %inc7646 = add nsw i32 %4805, 1
  store i32 %inc7646, i32* %a7611, align 4
  br label %for.cond.7629

for.end.7647:                                     ; preds = %for.cond.7629
  %4806 = load i64, i64* %width, align 8
  %tobool7648 = icmp ne i64 %4806, 0
  br i1 %tobool7648, label %lor.lhs.false.7649, label %if.then.7652

lor.lhs.false.7649:                               ; preds = %for.end.7647
  %4807 = load i32, i32* %justification, align 4
  %cmp7650 = icmp sgt i32 %4807, 0
  br i1 %cmp7650, label %if.then.7652, label %if.end.7664

if.then.7652:                                     ; preds = %lor.lhs.false.7649, %for.end.7647
  %4808 = load %struct.obstack*, %struct.obstack** %user_string_stack.addr, align 8
  store %struct.obstack* %4808, %struct.obstack** %__o7653, align 8
  %4809 = load %struct.obstack*, %struct.obstack** %__o7653, align 8
  %next_free7654 = getelementptr inbounds %struct.obstack, %struct.obstack* %4809, i32 0, i32 3
  %4810 = load i8*, i8** %next_free7654, align 8
  %add.ptr7655 = getelementptr inbounds i8, i8* %4810, i64 1
  %4811 = load %struct.obstack*, %struct.obstack** %__o7653, align 8
  %chunk_limit7656 = getelementptr inbounds %struct.obstack, %struct.obstack* %4811, i32 0, i32 4
  %4812 = load i8*, i8** %chunk_limit7656, align 8
  %cmp7657 = icmp ugt i8* %add.ptr7655, %4812
  br i1 %cmp7657, label %if.then.7659, label %if.end.7660

if.then.7659:                                     ; preds = %if.then.7652
  %4813 = load %struct.obstack*, %struct.obstack** %__o7653, align 8
  call void @_obstack_newchunk(%struct.obstack* %4813, i32 1)
  br label %if.end.7660

if.end.7660:                                      ; preds = %if.then.7659, %if.then.7652
  %4814 = load i64, i64* %i, align 8
  %4815 = load i8*, i8** %str.addr, align 8
  %arrayidx7661 = getelementptr inbounds i8, i8* %4815, i64 %4814
  %4816 = load i8, i8* %arrayidx7661, align 1
  %4817 = load %struct.obstack*, %struct.obstack** %__o7653, align 8
  %next_free7662 = getelementptr inbounds %struct.obstack, %struct.obstack* %4817, i32 0, i32 3
  %4818 = load i8*, i8** %next_free7662, align 8
  %incdec.ptr7663 = getelementptr inbounds i8, i8* %4818, i32 1
  store i8* %incdec.ptr7663, i8** %next_free7662, align 8
  store i8 %4816, i8* %4818, align 1
  br label %if.end.7664

if.end.7664:                                      ; preds = %if.end.7660, %lor.lhs.false.7649
  br label %do.end.7665

do.end.7665:                                      ; preds = %if.end.7664
  br label %if.end.7666

if.end.7666:                                      ; preds = %do.end.7665, %sw.epilog.7608
  br label %for.inc.7667

for.inc.7667:                                     ; preds = %if.end.7666
  %4819 = load i64, i64* %i, align 8
  %inc7668 = add i64 %4819, 1
  store i64 %inc7668, i64* %i, align 8
  br label %for.cond

for.end.7669:                                     ; preds = %for.cond
  ret void
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @xgetcwd() #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i8* @xstrdup(i8*) #1

declare i32 @page_range_applies_above(%struct.page_range*, i32) #1

declare %struct.darray* @da_clone(%struct.darray*) #1

declare i32 @file_name_cmp(%struct.file_job*, %struct.file_job*) #1

declare void @da_qsort(%struct.darray*) #1

declare void @da_erase(%struct.darray*) #1

declare void @da_remove_at(%struct.darray*, i64, void (i8*)*) #1

; Function Attrs: nounwind
declare noalias i8* @tempnam(i8*, i8*) #3

declare i8* @a2ps_printers_flag_output_name_get(%struct.a2ps_printers_s*) #1

declare zeroext i1 @a2ps_printers_flag_output_is_printer_get(%struct.a2ps_printers_s*) #1

declare void @page_range_to_buffer(%struct.page_range*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
