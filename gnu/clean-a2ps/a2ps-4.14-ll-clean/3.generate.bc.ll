; ModuleID = './src/generate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.buffer_s = type { i8*, i64, i64, %struct._IO_FILE*, i8, i8*, i32, i8, i8*, i64, i64, i64, i64, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.style_sheet = type { i8*, i8*, i8*, [4 x i32], [4 x i32], i8*, %struct.darray*, i32, [256 x i8], [256 x i8], %struct.words*, %struct.words*, %struct.darray* }
%struct.words = type { %struct.darray*, %struct.darray*, [256 x %struct.rule**], [256 x %struct.rule**] }
%struct.rule = type { i8*, %struct.re_pattern_buffer*, %struct.darray* }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.delegation = type { i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@sample_tmpname = global i8* null, align 8
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"[Total: 1 page on 1 sheet] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[Total: %d pages on 1 sheet] %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[Total: %d pages on %d sheets] %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cfg.wrapped\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"[1 line wrapped]\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"[%d lines wrapped]\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"[No output produced]\0A\00", align 1
@job = external global %struct.a2ps_job*, align 8
@end_of_line = external global i32, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@delegate_p = external global i8, align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Getting ready to print file `%s', with command `%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s, delegated to %s\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"[%s (%s): failed.  Ignored]\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"[%s (unprintable): ignored]\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"[%s (binary): ignored]\0A\00", align 1
@highlight_level = external global i32, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"[%s (%s)]\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"a2_\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"`%s' is a directory\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"cannot open file `%s'\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"cannot get informations on file `%s'\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"UNPRINTABLE\00", align 1
@style_request = external global i8*, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"[%s (%s): 1 page on 1 sheet]\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"[%s (%s): %d pages on 1 sheet]\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"[%s (%s): %d pages on %d sheets]\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @msg_job_pages_printed(%struct.a2ps_job* %Job) #0 {
entry:
  %Job.addr = alloca %struct.a2ps_job*, align 8
  %sheets = alloca i32, align 4
  %ucp = alloca i8*, align 8
  store %struct.a2ps_job* %Job, %struct.a2ps_job** %Job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %sheets1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 8
  %1 = load i32, i32* %sheets1, align 4
  store i32 %1, i32* %sheets, align 4
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 13
  %3 = load i32, i32* %duplex, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %sheets, align 4
  %add = add nsw i32 %4, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %sheets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %call = call i8* @a2ps_destination_to_string(%struct.a2ps_job* %5)
  store i8* %call, i8** %ucp, align 8
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 9
  %7 = load i32, i32* %pages, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %8 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 3, %8
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %do.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #5
  %10 = load i8*, i8** %ucp, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* %call5, i8* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %sheets, align 4
  %cmp8 = icmp eq i32 %11, 1
  br i1 %cmp8, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.else
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %12 = load i32, i32* @msg_verbosity, align 4
  %and11 = and i32 3, %12
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.body.10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #5
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %pages15 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 9
  %15 = load i32, i32* %pages15, align 4
  %16 = load i8*, i8** %ucp, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* %call14, i32 %15, i8* %16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %do.body.10
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.29

if.else.19:                                       ; preds = %if.else
  br label %do.body.20

do.body.20:                                       ; preds = %if.else.19
  %17 = load i32, i32* @msg_verbosity, align 4
  %and21 = and i32 3, %17
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %do.body.20
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #5
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %pages25 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 9
  %20 = load i32, i32* %pages25, align 4
  %21 = load i32, i32* %sheets, align 4
  %22 = load i8*, i8** %ucp, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* %call24, i32 %20, i32 %21, i8* %22)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %do.body.20
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.end.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %do.end
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %call31 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %tobool32 = icmp ne i8* %call31, null
  br i1 %tobool32, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.30
  %24 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %lines_folded = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %24, i32 0, i32 10
  %25 = load i32, i32* %lines_folded, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.then.34, label %if.end.57

if.then.34:                                       ; preds = %land.lhs.true
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %lines_folded35 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 10
  %27 = load i32, i32* %lines_folded35, align 4
  %cmp36 = icmp eq i32 %27, 1
  br i1 %cmp36, label %if.then.37, label %if.else.46

if.then.37:                                       ; preds = %if.then.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %28 = load i32, i32* @msg_verbosity, align 4
  %and39 = and i32 3, %28
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %do.body.38
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #5
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* %call42)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %do.body.38
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.56

if.else.46:                                       ; preds = %if.then.34
  br label %do.body.47

do.body.47:                                       ; preds = %if.else.46
  %30 = load i32, i32* @msg_verbosity, align 4
  %and48 = and i32 3, %30
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %do.body.47
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %lines_folded52 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 10
  %33 = load i32, i32* %lines_folded52, align 4
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* %call51, i32 %33)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %do.body.47
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.end.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true, %if.end.30
  %34 = load i8*, i8** %ucp, align 8
  call void @free(i8* %34) #5
  ret void
}

declare i8* @a2ps_destination_to_string(%struct.a2ps_job*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @macro_meta_sequence_get(%struct.a2ps_job*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @msg_nothing_printed() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 3, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_toc(i8* %name, i8* %value, i32* %native_jobs) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %native_jobs.addr = alloca i32*, align 8
  %toc_buffer = alloca %struct.buffer_s, align 8
  %toc_content = alloca i8*, align 8
  %_tmp_ = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32* %native_jobs, i32** %native_jobs.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @xstrdup(i8* %1)
  call void @a2ps_open_input_session(%struct.a2ps_job* %0, i8* %call)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 68
  %3 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len, align 8
  %sub = sub i64 %4, 1
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 68
  %6 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 6
  %7 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %sub
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = bitcast i8* %8 to %struct.file_job*
  %is_toc = getelementptr inbounds %struct.file_job, %struct.file_job* %9, i32 0, i32 4
  store i8 1, i8* %is_toc, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 68
  %12 = load %struct.darray*, %struct.darray** %jobs2, align 8
  %len3 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 5
  %13 = load i64, i64* %len3, align 8
  %sub4 = sub i64 %13, 1
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 68
  %15 = load %struct.darray*, %struct.darray** %jobs5, align 8
  %content6 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 6
  %16 = load i8**, i8*** %content6, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %16, i64 %sub4
  %17 = load i8*, i8** %arrayidx7, align 8
  %18 = bitcast i8* %17 to %struct.file_job*
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load i8*, i8** %value.addr, align 8
  %call8 = call i8* @expand_user_string(%struct.a2ps_job* %10, %struct.file_job* %18, i8* %19, i8* %20)
  store i8* %call8, i8** %_tmp_, align 8
  %21 = load i8*, i8** %_tmp_, align 8
  %call9 = call i64 @strlen(i8* %21) #6
  %add = add i64 %call9, 1
  %mul = mul i64 1, %add
  %22 = alloca i8, i64 %mul
  store i8* %22, i8** %toc_content, align 8
  %23 = load i8*, i8** %toc_content, align 8
  %24 = load i8*, i8** %_tmp_, align 8
  %call10 = call i8* @strcpy(i8* %23, i8* %24) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %25 = load i8*, i8** %toc_content, align 8
  %26 = load i32, i32* @end_of_line, align 4
  call void @buffer_string_set(%struct.buffer_s* %toc_buffer, i8* %25, i32 %26)
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %call11 = call %struct.style_sheet* @get_style_sheet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  call void @ssh_print_postscript(%struct.a2ps_job* %27, %struct.buffer_s* %toc_buffer, %struct.style_sheet* %call11)
  %28 = load i32*, i32** %native_jobs.addr, align 8
  %29 = load i32, i32* %28, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %28, align 4
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_close_input_session(%struct.a2ps_job* %30)
  ret void
}

declare void @a2ps_open_input_session(%struct.a2ps_job*, i8*) #1

declare i8* @xstrdup(i8*) #1

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @buffer_string_set(%struct.buffer_s*, i8*, i32) #1

declare void @ssh_print_postscript(%struct.a2ps_job*, %struct.buffer_s*, %struct.style_sheet*) #1

declare %struct.style_sheet* @get_style_sheet(i8*) #1

declare void @a2ps_close_input_session(%struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define void @print(i8* %filename, i32* %native_jobs, i32* %delegated_jobs) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %native_jobs.addr = alloca i32*, align 8
  %delegated_jobs.addr = alloca i32*, align 8
  %buf = alloca [512 x i8], align 16
  %contract = alloca %struct.delegation*, align 8
  %sheet = alloca %struct.style_sheet*, align 8
  %input_buffer = alloca %struct.buffer_s*, align 8
  %style_kind = alloca i32, align 4
  %file_job = alloca %struct.file_job*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %native_jobs, i32** %native_jobs.addr, align 8
  store i32* %delegated_jobs, i32** %delegated_jobs.addr, align 8
  store %struct.delegation* null, %struct.delegation** %contract, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.buffer_s* @input_new(i8* %0)
  store %struct.buffer_s* %call, %struct.buffer_s** %input_buffer, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 68
  %2 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 1
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 68
  %5 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %sub
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.file_job*
  store %struct.file_job* %8, %struct.file_job** %file_job, align 8
  %9 = load i8, i8* @delegate_p, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type = getelementptr inbounds %struct.file_job, %struct.file_job* %10, i32 0, i32 3
  %11 = load i8*, i8** %type, align 8
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 26
  %13 = load i32, i32* %output_format, align 4
  %call2 = call i8* @output_format_to_key(i32 %13)
  %call3 = call %struct.delegation* @get_subcontract(i8* %11, i8* %call2)
  store %struct.delegation* %call3, %struct.delegation** %contract, align 8
  %tobool4 = icmp ne %struct.delegation* %call3, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 4, i32* %style_kind, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type5 = getelementptr inbounds %struct.file_job, %struct.file_job* %14, i32 0, i32 3
  %15 = load i8*, i8** %type5, align 8
  %call6 = call i32 @string_to_style_kind(i8* %15)
  store i32 %call6, i32* %style_kind, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %16
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %do.body
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 0
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type9 = getelementptr inbounds %struct.file_job, %struct.file_job* %20, i32 0, i32 3
  %21 = load i8*, i8** %type9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i8* %19, i8* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %22 = load i32, i32* %style_kind, align 4
  switch i32 %22, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.32
    i32 1, label %sw.bb.42
    i32 2, label %sw.bb.55
    i32 0, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %do.end
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @page_flush(%struct.a2ps_job* %23)
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #5
  %24 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type13 = getelementptr inbounds %struct.file_job, %struct.file_job* %24, i32 0, i32 3
  %25 = load i8*, i8** %type13, align 8
  %26 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %name14 = getelementptr inbounds %struct.delegation, %struct.delegation* %26, i32 0, i32 0
  %27 = load i8*, i8** %name14, align 8
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %call12, i8* %25, i8* %27) #5
  %28 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %29 = load %struct.buffer_s*, %struct.buffer_s** %input_buffer, align 8
  %30 = load %struct.delegation*, %struct.delegation** %contract, align 8
  %call16 = call i32 @subcontract(%struct.file_job* %28, %struct.buffer_s* %29, %struct.delegation* %30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %sw.bb
  %31 = load i32*, i32** %delegated_jobs.addr, align 8
  %32 = load i32, i32* %31, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %31, align 4
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void @msg_file_pages_printed(%struct.a2ps_job* %33, i8* %arraydecay19)
  br label %if.end.31

if.else.20:                                       ; preds = %sw.bb
  br label %do.body.21

do.body.21:                                       ; preds = %if.else.20
  %34 = load i32, i32* @msg_verbosity, align 4
  %and22 = and i32 2, %34
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %do.body.21
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #5
  %36 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name26 = getelementptr inbounds %struct.file_job, %struct.file_job* %36, i32 0, i32 0
  %37 = load i8*, i8** %name26, align 8
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* %call25, i8* %37, i8* %arraydecay27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %do.body.21
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %if.then.18
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end
  br label %do.body.33

do.body.33:                                       ; preds = %sw.bb.32
  %38 = load i32, i32* @msg_verbosity, align 4
  %and34 = and i32 2, %38
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %do.body.33
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #5
  %40 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name38 = getelementptr inbounds %struct.file_job, %struct.file_job* %40, i32 0, i32 0
  %41 = load i8*, i8** %name38, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* %call37, i8* %41)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %do.body.33
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %sw.epilog

sw.bb.42:                                         ; preds = %do.end
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %print_binaries = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 32
  %43 = load i32, i32* %print_binaries, align 4
  %tobool43 = icmp ne i32 %43, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb.42
  br label %plain_print

if.end.45:                                        ; preds = %sw.bb.42
  br label %do.body.46

do.body.46:                                       ; preds = %if.end.45
  %44 = load i32, i32* @msg_verbosity, align 4
  %and47 = and i32 2, %44
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %do.body.46
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)) #5
  %46 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name51 = getelementptr inbounds %struct.file_job, %struct.file_job* %46, i32 0, i32 0
  %47 = load i8*, i8** %name51, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* %call50, i8* %47)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %do.body.46
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %sw.epilog

sw.bb.55:                                         ; preds = %do.end
  %48 = load i32, i32* @highlight_level, align 4
  %cmp = icmp eq i32 %48, 0
  br i1 %cmp, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.bb.55
  br label %plain_print

if.end.57:                                        ; preds = %sw.bb.55
  %49 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type58 = getelementptr inbounds %struct.file_job, %struct.file_job* %49, i32 0, i32 3
  %50 = load i8*, i8** %type58, align 8
  %call59 = call %struct.style_sheet* @get_style_sheet(i8* %50)
  store %struct.style_sheet* %call59, %struct.style_sheet** %sheet, align 8
  %51 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %tobool60 = icmp ne %struct.style_sheet* %51, null
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.57
  br label %plain_print

if.end.62:                                        ; preds = %if.end.57
  %52 = load %struct.buffer_s*, %struct.buffer_s** %input_buffer, align 8
  %53 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %sensitiveness = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %53, i32 0, i32 7
  %54 = load i32, i32* %sensitiveness, align 4
  %cmp63 = icmp eq i32 %54, 1
  call void @buffer_set_lower_case(%struct.buffer_s* %52, i1 zeroext %cmp63)
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %56 = load %struct.buffer_s*, %struct.buffer_s** %input_buffer, align 8
  %57 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  call void @ssh_print_postscript(%struct.a2ps_job* %55, %struct.buffer_s* %56, %struct.style_sheet* %57)
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %59 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %name64 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %59, i32 0, i32 1
  %60 = load i8*, i8** %name64, align 8
  call void @msg_file_pages_printed(%struct.a2ps_job* %58, i8* %60)
  %61 = load i32*, i32** %native_jobs.addr, align 8
  %62 = load i32, i32* %61, align 4
  %inc65 = add nsw i32 %62, 1
  store i32 %inc65, i32* %61, align 4
  br label %sw.epilog

plain_print:                                      ; preds = %if.then.61, %if.then.56, %if.then.44
  br label %sw.bb.66

sw.bb.66:                                         ; preds = %do.end, %plain_print
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %64 = load %struct.buffer_s*, %struct.buffer_s** %input_buffer, align 8
  call void @plain_print_postscript(%struct.a2ps_job* %63, %struct.buffer_s* %64)
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #5
  call void @msg_file_pages_printed(%struct.a2ps_job* %65, i8* %call67)
  %66 = load i32*, i32** %native_jobs.addr, align 8
  %67 = load i32, i32* %66, align 4
  %inc68 = add nsw i32 %67, 1
  store i32 %inc68, i32* %66, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.66, %if.end.62, %do.end.54, %do.end.41, %if.end.31
  %68 = load %struct.buffer_s*, %struct.buffer_s** %input_buffer, align 8
  call void @input_end(%struct.buffer_s* %68)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.buffer_s* @input_new(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %res = alloca %struct.buffer_s*, align 8
  %file_job = alloca %struct.file_job*, align 8
  %statbuf = alloca %struct.stat, align 8
  %tm = alloca %struct.tm*, align 8
  %input_stream = alloca %struct._IO_FILE*, align 8
  %tim = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @xmalloc(i64 184)
  %0 = bitcast i8* %call to %struct.buffer_s*
  store %struct.buffer_s* %0, %struct.buffer_s** %res, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %2 = load i8*, i8** %name.addr, align 8
  call void @a2ps_open_input_session(%struct.a2ps_job* %1, i8* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 68
  %4 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 5
  %5 = load i64, i64* %len, align 8
  %sub = sub i64 %5, 1
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 68
  %7 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 6
  %8 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %sub
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = bitcast i8* %9 to %struct.file_job*
  store %struct.file_job* %10, %struct.file_job** %file_job, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv = zext i8 %13 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %14 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %15 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %is_stdin = getelementptr inbounds %struct.file_job, %struct.file_job* %15, i32 0, i32 7
  store i8 1, i8* %is_stdin, align 1
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %stdin_filename = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 24
  %17 = load i8*, i8** %stdin_filename, align 8
  %18 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name6 = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 0
  store i8* %17, i8** %name6, align 8
  %19 = load %struct.buffer_s*, %struct.buffer_s** %res, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %21 = load i32, i32* @end_of_line, align 4
  call void @buffer_stream_set(%struct.buffer_s* %19, %struct._IO_FILE* %20, i32 %21)
  br label %do.body

do.body:                                          ; preds = %if.then
  %22 = load i8*, i8** @sample_tmpname, align 8
  %tobool7 = icmp ne i8* %22, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %23 = load i8*, i8** @sample_tmpname, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call8 = call noalias i8* @tempnam(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ %call8, %cond.false ]
  store i8* %cond, i8** @sample_tmpname, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end
  %24 = load %struct.buffer_s*, %struct.buffer_s** %res, align 8
  %25 = load i8*, i8** @sample_tmpname, align 8
  call void @buffer_sample_get(%struct.buffer_s* %24, i8* %25)
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false.4
  %26 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %is_stdin9 = getelementptr inbounds %struct.file_job, %struct.file_job* %26, i32 0, i32 7
  store i8 0, i8* %is_stdin9, align 1
  %27 = load i8*, i8** %name.addr, align 8
  %call10 = call i32 @isdir(i8* %27)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #5
  %28 = load i8*, i8** %name.addr, align 8
  %call14 = call i8* @quotearg(i8* %28)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call13, i8* %call14)
  %29 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %printable = getelementptr inbounds %struct.file_job, %struct.file_job* %29, i32 0, i32 6
  store i8 0, i8* %printable, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  %30 = load i8*, i8** %name.addr, align 8
  %31 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name15 = getelementptr inbounds %struct.file_job, %struct.file_job* %31, i32 0, i32 0
  store i8* %30, i8** %name15, align 8
  %32 = load i8*, i8** %name.addr, align 8
  %call16 = call %struct._IO_FILE* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  store %struct._IO_FILE* %call16, %struct._IO_FILE** %input_stream, align 8
  %cmp17 = icmp eq %struct._IO_FILE* %call16, null
  br i1 %cmp17, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.end
  %call20 = call i32* @__errno_location() #7
  %33 = load i32, i32* %call20, align 4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0)) #5
  %34 = load i8*, i8** %name.addr, align 8
  %call22 = call i8* @quotearg(i8* %34)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %33, i8* %call21, i8* %call22)
  %35 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %printable23 = getelementptr inbounds %struct.file_job, %struct.file_job* %35, i32 0, i32 6
  store i8 0, i8* %printable23, align 1
  br label %if.end.36

if.else.24:                                       ; preds = %if.end
  %36 = load i8*, i8** %name.addr, align 8
  %call25 = call i32 @stat(i8* %36, %struct.stat* %statbuf) #5
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %if.else.24
  %call29 = call i32* @__errno_location() #7
  %37 = load i32, i32* %call29, align 4
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #5
  %38 = load i8*, i8** %name.addr, align 8
  %call31 = call i8* @quotearg(i8* %38)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %37, i8* %call30, i8* %call31)
  %39 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %printable32 = getelementptr inbounds %struct.file_job, %struct.file_job* %39, i32 0, i32 6
  store i8 0, i8* %printable32, align 1
  br label %if.end.35

if.else.33:                                       ; preds = %if.else.24
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %40 = load i64, i64* %tv_sec, align 8
  store i64 %40, i64* %tim, align 8
  %call34 = call %struct.tm* @localtime(i64* %tim) #5
  store %struct.tm* %call34, %struct.tm** %tm, align 8
  %41 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %mod_tm = getelementptr inbounds %struct.file_job, %struct.file_job* %41, i32 0, i32 5
  %42 = bitcast %struct.tm* %mod_tm to i8*
  %43 = load %struct.tm*, %struct.tm** %tm, align 8
  %44 = bitcast %struct.tm* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %44, i64 56, i32 8, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.19
  %45 = load %struct.buffer_s*, %struct.buffer_s** %res, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %input_stream, align 8
  %47 = load i32, i32* @end_of_line, align 4
  call void @buffer_stream_set(%struct.buffer_s* %45, %struct._IO_FILE* %46, i32 %47)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.end
  %48 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %printable38 = getelementptr inbounds %struct.file_job, %struct.file_job* %48, i32 0, i32 6
  %49 = load i8, i8* %printable38, align 1
  %tobool39 = trunc i8 %49 to i1
  br i1 %tobool39, label %if.else.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %50 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type = getelementptr inbounds %struct.file_job, %struct.file_job* %50, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8** %type, align 8
  br label %if.end.61

if.else.41:                                       ; preds = %if.end.37
  %51 = load i8*, i8** @style_request, align 8
  %cmp42 = icmp eq i8* %51, null
  br i1 %cmp42, label %if.else.50, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.else.41
  %52 = load i8*, i8** @style_request, align 8
  %53 = load i8, i8* %52, align 1
  %conv45 = sext i8 %53 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %if.else.50, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false.44
  %54 = load i8*, i8** @style_request, align 8
  %55 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type49 = getelementptr inbounds %struct.file_job, %struct.file_job* %55, i32 0, i32 3
  store i8* %54, i8** %type49, align 8
  br label %if.end.60

if.else.50:                                       ; preds = %lor.lhs.false.44, %if.else.41
  %56 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name51 = getelementptr inbounds %struct.file_job, %struct.file_job* %56, i32 0, i32 0
  %57 = load i8*, i8** %name51, align 8
  %58 = load i8*, i8** @sample_tmpname, align 8
  %tobool52 = icmp ne i8* %58, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %if.else.50
  %59 = load i8*, i8** @sample_tmpname, align 8
  br label %cond.end.56

cond.false.54:                                    ; preds = %if.else.50
  %60 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name55 = getelementptr inbounds %struct.file_job, %struct.file_job* %60, i32 0, i32 0
  %61 = load i8*, i8** %name55, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.53
  %cond57 = phi i8* [ %59, %cond.true.53 ], [ %61, %cond.false.54 ]
  %call58 = call i8* @get_command(i8* %57, i8* %cond57)
  %62 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type59 = getelementptr inbounds %struct.file_job, %struct.file_job* %62, i32 0, i32 3
  store i8* %call58, i8** %type59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %cond.end.56, %if.then.48
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.40
  %63 = load i8*, i8** @sample_tmpname, align 8
  %tobool62 = icmp ne i8* %63, null
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %64 = load i8*, i8** @sample_tmpname, align 8
  %call64 = call i32 @unlink(i8* %64) #5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  %65 = load %struct.buffer_s*, %struct.buffer_s** %res, align 8
  ret %struct.buffer_s* %65
}

declare %struct.delegation* @get_subcontract(i8*, i8*) #1

declare i8* @output_format_to_key(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @string_to_style_kind(i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 3, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %string.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 0, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else.4
  %3 = load i8*, i8** %string.addr, align 8
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.8
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then.7, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @page_flush(%struct.a2ps_job*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @subcontract(%struct.file_job*, %struct.buffer_s*, %struct.delegation*) #1

; Function Attrs: nounwind uwtable
define internal void @msg_file_pages_printed(%struct.a2ps_job* %Job, i8* %stylename) #0 {
entry:
  %Job.addr = alloca %struct.a2ps_job*, align 8
  %stylename.addr = alloca i8*, align 8
  %sheets = alloca i32, align 4
  store %struct.a2ps_job* %Job, %struct.a2ps_job** %Job.addr, align 8
  store i8* %stylename, i8** %stylename.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 68
  %1 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 68
  %4 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 6
  %5 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %sub
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.file_job*
  %sheets2 = getelementptr inbounds %struct.file_job, %struct.file_job* %7, i32 0, i32 13
  %8 = load i32, i32* %sheets2, align 4
  store i32 %8, i32* %sheets, align 4
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 13
  %10 = load i32, i32* %duplex, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %sheets, align 4
  %add = add nsw i32 %11, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %sheets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 68
  %13 = load %struct.darray*, %struct.darray** %jobs3, align 8
  %len4 = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 5
  %14 = load i64, i64* %len4, align 8
  %sub5 = sub i64 %14, 1
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 68
  %16 = load %struct.darray*, %struct.darray** %jobs6, align 8
  %content7 = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 6
  %17 = load i8**, i8*** %content7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %17, i64 %sub5
  %18 = load i8*, i8** %arrayidx8, align 8
  %19 = bitcast i8* %18 to %struct.file_job*
  %pages = getelementptr inbounds %struct.file_job, %struct.file_job* %19, i32 0, i32 12
  %20 = load i32, i32* %pages, align 4
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %21 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 2, %21
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %do.body
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0)) #5
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 68
  %24 = load %struct.darray*, %struct.darray** %jobs12, align 8
  %len13 = getelementptr inbounds %struct.darray, %struct.darray* %24, i32 0, i32 5
  %25 = load i64, i64* %len13, align 8
  %sub14 = sub i64 %25, 1
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs15 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 68
  %27 = load %struct.darray*, %struct.darray** %jobs15, align 8
  %content16 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 6
  %28 = load i8**, i8*** %content16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %28, i64 %sub14
  %29 = load i8*, i8** %arrayidx17, align 8
  %30 = bitcast i8* %29 to %struct.file_job*
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %30, i32 0, i32 0
  %31 = load i8*, i8** %name, align 8
  %32 = load i8*, i8** %stylename.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* %call, i8* %31, i8* %32)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.11, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.68

if.else:                                          ; preds = %if.end
  %33 = load i32, i32* %sheets, align 4
  %cmp20 = icmp eq i32 %33, 1
  br i1 %cmp20, label %if.then.21, label %if.else.44

if.then.21:                                       ; preds = %if.else
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %34 = load i32, i32* @msg_verbosity, align 4
  %and23 = and i32 2, %34
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.42

if.then.25:                                       ; preds = %do.body.22
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0)) #5
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs27 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 68
  %37 = load %struct.darray*, %struct.darray** %jobs27, align 8
  %len28 = getelementptr inbounds %struct.darray, %struct.darray* %37, i32 0, i32 5
  %38 = load i64, i64* %len28, align 8
  %sub29 = sub i64 %38, 1
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs30 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 68
  %40 = load %struct.darray*, %struct.darray** %jobs30, align 8
  %content31 = getelementptr inbounds %struct.darray, %struct.darray* %40, i32 0, i32 6
  %41 = load i8**, i8*** %content31, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %41, i64 %sub29
  %42 = load i8*, i8** %arrayidx32, align 8
  %43 = bitcast i8* %42 to %struct.file_job*
  %name33 = getelementptr inbounds %struct.file_job, %struct.file_job* %43, i32 0, i32 0
  %44 = load i8*, i8** %name33, align 8
  %45 = load i8*, i8** %stylename.addr, align 8
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs34 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %46, i32 0, i32 68
  %47 = load %struct.darray*, %struct.darray** %jobs34, align 8
  %len35 = getelementptr inbounds %struct.darray, %struct.darray* %47, i32 0, i32 5
  %48 = load i64, i64* %len35, align 8
  %sub36 = sub i64 %48, 1
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs37 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 68
  %50 = load %struct.darray*, %struct.darray** %jobs37, align 8
  %content38 = getelementptr inbounds %struct.darray, %struct.darray* %50, i32 0, i32 6
  %51 = load i8**, i8*** %content38, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %51, i64 %sub36
  %52 = load i8*, i8** %arrayidx39, align 8
  %53 = bitcast i8* %52 to %struct.file_job*
  %pages40 = getelementptr inbounds %struct.file_job, %struct.file_job* %53, i32 0, i32 12
  %54 = load i32, i32* %pages40, align 4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* %call26, i8* %44, i8* %45, i32 %54)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.25, %do.body.22
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.67

if.else.44:                                       ; preds = %if.else
  br label %do.body.45

do.body.45:                                       ; preds = %if.else.44
  %55 = load i32, i32* @msg_verbosity, align 4
  %and46 = and i32 2, %55
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %do.body.45
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0)) #5
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs50 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 68
  %58 = load %struct.darray*, %struct.darray** %jobs50, align 8
  %len51 = getelementptr inbounds %struct.darray, %struct.darray* %58, i32 0, i32 5
  %59 = load i64, i64* %len51, align 8
  %sub52 = sub i64 %59, 1
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs53 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 68
  %61 = load %struct.darray*, %struct.darray** %jobs53, align 8
  %content54 = getelementptr inbounds %struct.darray, %struct.darray* %61, i32 0, i32 6
  %62 = load i8**, i8*** %content54, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %62, i64 %sub52
  %63 = load i8*, i8** %arrayidx55, align 8
  %64 = bitcast i8* %63 to %struct.file_job*
  %name56 = getelementptr inbounds %struct.file_job, %struct.file_job* %64, i32 0, i32 0
  %65 = load i8*, i8** %name56, align 8
  %66 = load i8*, i8** %stylename.addr, align 8
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 68
  %68 = load %struct.darray*, %struct.darray** %jobs57, align 8
  %len58 = getelementptr inbounds %struct.darray, %struct.darray* %68, i32 0, i32 5
  %69 = load i64, i64* %len58, align 8
  %sub59 = sub i64 %69, 1
  %70 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %jobs60 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %70, i32 0, i32 68
  %71 = load %struct.darray*, %struct.darray** %jobs60, align 8
  %content61 = getelementptr inbounds %struct.darray, %struct.darray* %71, i32 0, i32 6
  %72 = load i8**, i8*** %content61, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %72, i64 %sub59
  %73 = load i8*, i8** %arrayidx62, align 8
  %74 = bitcast i8* %73 to %struct.file_job*
  %pages63 = getelementptr inbounds %struct.file_job, %struct.file_job* %74, i32 0, i32 12
  %75 = load i32, i32* %pages63, align 4
  %76 = load i32, i32* %sheets, align 4
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* %call49, i8* %65, i8* %66, i32 %75, i32 %76)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.48, %do.body.45
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.end.43
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %do.end
  ret void
}

declare void @buffer_set_lower_case(%struct.buffer_s*, i1 zeroext) #1

declare void @plain_print_postscript(%struct.a2ps_job*, %struct.buffer_s*) #1

; Function Attrs: nounwind uwtable
define internal void @input_end(%struct.buffer_s* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer_s*, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream1 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream1, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp = icmp ne %struct._IO_FILE* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %stream2 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream2, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  call void @buffer_release(%struct.buffer_s* %7)
  %8 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %9 = bitcast %struct.buffer_s* %8 to i8*
  call void @free(i8* %9) #5
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_close_input_session(%struct.a2ps_job* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @guess(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %buffer = alloca %struct.buffer_s*, align 8
  %file_job = alloca %struct.file_job*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.buffer_s* @input_new(i8* %0)
  store %struct.buffer_s* %call, %struct.buffer_s** %buffer, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 68
  %2 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 1
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 68
  %5 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %sub
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.file_job*
  store %struct.file_job* %8, %struct.file_job** %file_job, align 8
  %9 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %type = getelementptr inbounds %struct.file_job, %struct.file_job* %11, i32 0, i32 3
  %12 = load i8*, i8** %type, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* %10, i8* %12)
  %13 = load %struct.buffer_s*, %struct.buffer_s** %buffer, align 8
  %stream = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %13, i32 0, i32 3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct.buffer_s*, %struct.buffer_s** %buffer, align 8
  %stream3 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %15, i32 0, i32 3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream3, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp = icmp ne %struct._IO_FILE* %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.buffer_s*, %struct.buffer_s** %buffer, align 8
  %stream4 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %18, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream4, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @buffer_stream_set(%struct.buffer_s*, %struct._IO_FILE*, i32) #1

; Function Attrs: nounwind
declare noalias i8* @tempnam(i8*, i8*) #2

declare void @buffer_sample_get(%struct.buffer_s*, i8*) #1

declare i32 @isdir(i8*) #1

declare void @error(i32, i32, i8*, ...) #1

declare i8* @quotearg(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @get_command(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare void @buffer_release(%struct.buffer_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
