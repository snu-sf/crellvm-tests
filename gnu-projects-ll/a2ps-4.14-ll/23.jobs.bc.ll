; ModuleID = './lib/jobs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type { i8, %struct._IO_FILE* }
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.quoting_options = type opaque
%struct.lister = type opaque
%struct.userdata = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"a2ps\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@msg_verbosity = external global i32, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"A2PS_VERBOSITY\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"$A2PS_VERBOSITY\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SIMPLE_BACKUP_SUFFIX\00", align 1
@simple_backup_suffix = external global i8*, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"$VERSION_CONTROL\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"VERSION_CONTROL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PS encodings\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"bw\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"a2ps output\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Main trunk\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"List of the jobs\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"user.home\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"unknown encoding `%s'\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"user.login\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"user.name\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"user.comments\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"user.host\00", align 1

; Function Attrs: nounwind uwtable
define void @a2ps_job_unlink_tmpfiles(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 66
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames, i32 0, i64 %1
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 66
  %arrayidx2 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames1, i32 0, i64 %4
  %6 = load i8*, i8** %arrayidx2, align 8
  %call = call i32 @unlink(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 68
  %9 = load %struct.darray*, %struct.darray** %jobs, align 8
  call void @da_map(%struct.darray* %9, void (i8*)* bitcast (void (%struct.file_job*)* @file_job_unlink_tmpfile to void (i8*)*))
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

declare void @da_map(%struct.darray*, void (i8*)*) #2

declare void @file_job_unlink_tmpfile(%struct.file_job*) #2

; Function Attrs: nounwind uwtable
define %struct.a2ps_job* @a2ps_job_new() #0 {
entry:
  %tim = alloca i64, align 8
  %tm = alloca %struct.tm*, align 8
  %res = alloca %struct.a2ps_job*, align 8
  %cp = alloca i8*, align 8
  %call = call i8* @xmalloc(i64 1640)
  %0 = bitcast i8* %call to %struct.a2ps_job*
  store %struct.a2ps_job* %0, %struct.a2ps_job** %res, align 8
  call void @set_quoting_style(%struct.quoting_options* null, i32 4)
  %call1 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %call2 = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %call3 = call i8* @bindtextdomain(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #3
  %call4 = call i8* @textdomain(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @lister_initialize(%struct.lister* null, %struct._IO_FILE* %1)
  %call5 = call i64 @lister_before_set(%struct.lister* null, i64 2)
  store i32 2, i32* @msg_verbosity, align 4
  %call6 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call6, i8** %cp, align 8
  %tobool = icmp ne i8* %call6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %cp, align 8
  %call8 = call i32 @msg_verbosity_argmatch(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* %4)
  store i32 %call8, i32* @msg_verbosity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %argv = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 0
  store i8** null, i8*** %argv, align 8
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %argc = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 1
  store i64 0, i64* %argc, align 8
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 2
  call void @a2ps_common_reset(%struct.a2ps_common_s* %common)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %file_command = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 3
  store i8* null, i8** %file_command, align 8
  %call9 = call %struct.hash_table_s* @new_medium_table()
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %media = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 4
  store %struct.hash_table_s* %call9, %struct.hash_table_s** %media, align 8
  %call10 = call %struct.pair_htable* @user_options_table_new()
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %user_options = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 5
  store %struct.pair_htable* %call10, %struct.pair_htable** %user_options, align 8
  %call11 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #3
  store i8* %call11, i8** %cp, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %11 = load i8*, i8** %cp, align 8
  store i8* %11, i8** @simple_backup_suffix, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %call15 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #3
  %call16 = call i32 @get_version(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %call15)
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %backup_type = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 7
  store i32 %call16, i32* %backup_type, align 4
  %call17 = call i64 @time(i64* null) #3
  store i64 %call17, i64* %tim, align 8
  %call18 = call %struct.tm* @localtime(i64* %tim) #3
  store %struct.tm* %call18, %struct.tm** %tm, align 8
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %run_tm = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 6
  %14 = bitcast %struct.tm* %run_tm to i8*
  %15 = load %struct.tm*, %struct.tm** %tm, align 8
  %16 = bitcast %struct.tm* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %16, i64 56, i32 8, i1 false)
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 8
  store i32 0, i32* %sheets, align 4
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 9
  store i32 0, i32* %pages, align 4
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %lines_folded = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 10
  store i32 0, i32* %lines_folded, align 4
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %total_files = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 11
  store i32 0, i32* %total_files, align 4
  %21 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %21, i32 0, i32 12
  store i32 0, i32* %orientation, align 4
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %22, i32 0, i32 13
  store i32 0, i32* %duplex, align 4
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 14
  store i32 1, i32* %columns, align 4
  %24 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %24, i32 0, i32 15
  store i32 1, i32* %rows, align 4
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %madir = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 16
  store i32 0, i32* %madir, align 4
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 17
  store i32 0, i32* %virtual, align 4
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %copies = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %27, i32 0, i32 18
  store i32 1, i32* %copies, align 4
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %margin = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 19
  store i32 0, i32* %margin, align 4
  %call19 = call %struct.pair_htable* @encodings_map_new()
  %29 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %encodings_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %29, i32 0, i32 20
  store %struct.pair_htable* %call19, %struct.pair_htable** %encodings_map, align 8
  %call20 = call %struct.output* @output_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %ps_encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 21
  store %struct.output* %call20, %struct.output** %ps_encodings, align 8
  %31 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %page_prefeed = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %31, i32 0, i32 22
  store i32 0, i32* %page_prefeed, align 4
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  call void @init_face_eo_font(%struct.a2ps_job* %32)
  %call21 = call i8* @xstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %stdin_filename = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %33, i32 0, i32 24
  store i8* %call21, i8** %stdin_filename, align 8
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 26
  store i32 1, i32* %output_format, align 4
  %35 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %common22 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %35, i32 0, i32 2
  %call23 = call %struct.a2ps_printers_s* @a2ps_printers_new(%struct.a2ps_common_s* %common22)
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 25
  store %struct.a2ps_printers_s* %call23, %struct.a2ps_printers_s** %printers, align 8
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %output_stream = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 27
  store %struct.stream* null, %struct.stream** %output_stream, align 8
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %folding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 28
  store i8 1, i8* %folding, align 1
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 29
  store i32 0, i32* %numbering, align 4
  %40 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %unprintable_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %40, i32 0, i32 30
  store i32 0, i32* %unprintable_format, align 4
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %interpret = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %41, i32 0, i32 31
  store i32 1, i32* %interpret, align 4
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %print_binaries = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 32
  store i32 0, i32* %print_binaries, align 4
  %43 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %file_align = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %43, i32 0, i32 33
  store i32 -2, i32* %file_align, align 4
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %border = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 34
  store i32 1, i32* %border, align 4
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %debug = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %45, i32 0, i32 35
  store i8 0, i8* %debug, align 1
  %call24 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %prolog = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %46, i32 0, i32 36
  store i8* %call24, i8** %prolog, align 8
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %medium_request = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 38
  store i8* null, i8** %medium_request, align 8
  %48 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %48, i32 0, i32 37
  store %struct.medium* null, %struct.medium** %medium, align 8
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %tabsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 39
  store i32 8, i32* %tabsize, align 4
  %50 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %lines_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %50, i32 0, i32 40
  store i32 0, i32* %lines_requested, align 4
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %columns_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 41
  store i32 0, i32* %columns_requested, align 4
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %fontsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 42
  store float 0.000000e+00, float* %fontsize, align 4
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %53, i32 0, i32 43
  store %struct.encoding* null, %struct.encoding** %encoding, align 8
  %54 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %requested_encoding_name = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %54, i32 0, i32 44
  store i8* null, i8** %requested_encoding_name, align 8
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 45
  store %struct.encoding* null, %struct.encoding** %requested_encoding, align 8
  %56 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %56, i32 0, i32 46
  store %struct.encoding* null, %struct.encoding** %saved_encoding, align 8
  %call25 = call %struct.hash_table_s* @encodings_table_new()
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 47
  store %struct.hash_table_s* %call25, %struct.hash_table_s** %encodings, align 8
  %call26 = call %struct.pair_htable* @fonts_map_new()
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %fonts_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %58, i32 0, i32 48
  store %struct.pair_htable* %call26, %struct.pair_htable** %fonts_map, align 8
  %call27 = call %struct.hash_table_s* @font_info_table_new()
  %59 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %font_infos = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %59, i32 0, i32 49
  store %struct.hash_table_s* %call27, %struct.hash_table_s** %font_infos, align 8
  %call28 = call i8* @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 50
  store i8* %call28, i8** %title, align 8
  %61 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %61, i32 0, i32 51
  store i8* null, i8** %header, align 8
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %62, i32 0, i32 52
  store i8* null, i8** %center_title, align 8
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 53
  store i8* null, i8** %left_title, align 8
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %64, i32 0, i32 54
  store i8* null, i8** %right_title, align 8
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %65, i32 0, i32 55
  store i8* null, i8** %left_footer, align 8
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %66, i32 0, i32 56
  store i8* null, i8** %footer, align 8
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 57
  store i8* null, i8** %right_footer, align 8
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %water = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %68, i32 0, i32 58
  store i8* null, i8** %water, align 8
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %tag1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 59
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tag1, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %70 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %tag2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %70, i32 0, i32 60
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %tag2, i32 0, i32 0
  store i8 0, i8* %arraydecay29, align 1
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %tag3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 61
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %tag3, i32 0, i32 0
  store i8 0, i8* %arraydecay30, align 1
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %tag4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %72, i32 0, i32 62
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %tag4, i32 0, i32 0
  store i8 0, i8* %arraydecay31, align 1
  %call32 = call %struct.pair_htable* @macro_meta_sequence_table_new()
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 63
  store %struct.pair_htable* %call32, %struct.pair_htable** %macro_meta_sequences, align 8
  %74 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  call void @a2ps_job_register_user(%struct.a2ps_job* %74)
  %call33 = call %struct.ps_status* @new_ps_status()
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 64
  store %struct.ps_status* %call33, %struct.ps_status** %status, align 8
  %call34 = call %struct.output* @output_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %76 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %76, i32 0, i32 65
  store %struct.output* %call34, %struct.output** %divertion, align 8
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  call void @tmpfiles_reset(%struct.a2ps_job* %77)
  %call35 = call %struct.page_range* @page_range_new()
  %78 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %78, i32 0, i32 67
  store %struct.page_range* %call35, %struct.page_range** %page_range, align 8
  %call36 = call %struct.darray* @da_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i64 10, i32 1, i64 10, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.file_job*, %struct._IO_FILE*)* @file_job_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  %79 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %79, i32 0, i32 68
  store %struct.darray* %call36, %struct.darray** %jobs, align 8
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %res, align 8
  ret %struct.a2ps_job* %80
}

declare i8* @xmalloc(i64) #2

declare void @set_quoting_style(%struct.quoting_options*, i32) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #1

declare void @lister_initialize(%struct.lister*, %struct._IO_FILE*) #2

declare i64 @lister_before_set(%struct.lister*, i64) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

declare i32 @msg_verbosity_argmatch(i8*, i8*) #2

declare void @a2ps_common_reset(%struct.a2ps_common_s*) #2

declare %struct.hash_table_s* @new_medium_table() #2

declare %struct.pair_htable* @user_options_table_new() #2

declare i32 @get_version(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct.pair_htable* @encodings_map_new() #2

declare %struct.output* @output_new(i8*) #2

declare void @init_face_eo_font(%struct.a2ps_job*) #2

declare i8* @xstrdup(i8*) #2

declare %struct.a2ps_printers_s* @a2ps_printers_new(%struct.a2ps_common_s*) #2

declare %struct.hash_table_s* @encodings_table_new() #2

declare %struct.pair_htable* @fonts_map_new() #2

declare %struct.hash_table_s* @font_info_table_new() #2

declare %struct.pair_htable* @macro_meta_sequence_table_new() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @a2ps_job_register_user(%struct.a2ps_job* %job) #4 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %u = alloca %struct.userdata, align 8
  %host = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  call void @userdata_get(%struct.userdata* %u)
  %login = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 0
  %0 = load i8*, i8** %login, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %login1 = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 0
  %2 = load i8*, i8** %login1, align 8
  %call = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %name4 = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 1
  %5 = load i8*, i8** %name4, align 8
  %call5 = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %comments = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 2
  %6 = load i8*, i8** %comments, align 8
  %tobool7 = icmp ne i8* %6, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %comments9 = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 2
  %8 = load i8*, i8** %comments9, align 8
  %call10 = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* %8)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %home = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 3
  %9 = load i8*, i8** %home, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %home14 = getelementptr inbounds %struct.userdata, %struct.userdata* %u, i32 0, i32 3
  %11 = load i8*, i8** %home14, align 8
  %call15 = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* %11)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  call void @userdata_free(%struct.userdata* %u)
  %call17 = call i8* @xgethostname()
  store i8* %call17, i8** %host, align 8
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %13 = load i8*, i8** %host, align 8
  %call18 = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %host, align 8
  call void @free(i8* %14) #3
  ret void
}

declare %struct.ps_status* @new_ps_status() #2

; Function Attrs: nounwind uwtable
define internal void @tmpfiles_reset(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 66
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames, i32 0, i64 %1
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.page_range* @page_range_new() #2

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #2

declare void @file_job_self_print(%struct.file_job*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @a2ps_job_finalize(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  call void @a2ps_common_finalize(%struct.a2ps_common_s* %common, i8* %call)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 25
  %3 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  call void @a2ps_printers_finalize(%struct.a2ps_printers_s* %3)
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1 = call i32 @load_main_encodings_map(%struct.a2ps_job* %4)
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding_name = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 44
  %7 = load i8*, i8** %requested_encoding_name, align 8
  %call2 = call %struct.encoding* @get_encoding_by_alias(%struct.a2ps_job* %5, i8* %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 45
  store %struct.encoding* %call2, %struct.encoding** %requested_encoding, align 8
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 45
  %10 = load %struct.encoding*, %struct.encoding** %requested_encoding3, align 8
  %tobool = icmp ne %struct.encoding* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)) #3
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding_name5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 44
  %12 = load i8*, i8** %requested_encoding_name5, align 8
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding_name6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 44
  %14 = load i8*, i8** %requested_encoding_name6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %cond.true ], [ %14, %cond.false ]
  %call7 = call i8* @quotearg(i8* %cond)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call4, i8* %call7)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium_request = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 38
  %17 = load i8*, i8** %medium_request, align 8
  %call8 = call %struct.medium* @a2ps_get_medium(%struct.a2ps_job* %15, i8* %17)
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 37
  store %struct.medium* %call8, %struct.medium** %medium, align 8
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call9 = call i32 @load_main_fonts_map(%struct.a2ps_job* %19)
  ret void
}

declare void @a2ps_common_finalize(%struct.a2ps_common_s*, i8*) #2

declare i8* @macro_meta_sequence_get(%struct.a2ps_job*, i8*) #2

declare void @a2ps_printers_finalize(%struct.a2ps_printers_s*) #2

declare i32 @load_main_encodings_map(%struct.a2ps_job*) #2

declare %struct.encoding* @get_encoding_by_alias(%struct.a2ps_job*, i8*) #2

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

declare i8* @quotearg(i8*) #2

declare %struct.medium* @a2ps_get_medium(%struct.a2ps_job*, i8*) #2

declare i32 @load_main_fonts_map(%struct.a2ps_job*) #2

; Function Attrs: nounwind uwtable
define void @a2ps_job_free(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 68
  %2 = load %struct.darray*, %struct.darray** %jobs, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @da_self_print(%struct.darray* %2, %struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %media = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 4
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %media, align 8
  call void @free_medium_table(%struct.hash_table_s* %5)
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 2
  call void @a2ps_common_free(%struct.a2ps_common_s* %common)
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 20
  %8 = load %struct.pair_htable*, %struct.pair_htable** %encodings_map, align 8
  call void @encodings_map_free(%struct.pair_htable* %8)
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 23
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font, i32 0, i32 0
  call void @face_eo_font_free(i8** %arraydecay)
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 21
  %11 = load %struct.output*, %struct.output** %ps_encodings, align 8
  call void @output_free(%struct.output* %11)
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 25
  %13 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  call void @a2ps_printers_free(%struct.a2ps_printers_s* %13)
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %stdin_filename = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 24
  %15 = load i8*, i8** %stdin_filename, align 8
  %tobool1 = icmp ne i8* %15, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.body
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %stdin_filename3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 24
  %17 = load i8*, i8** %stdin_filename3, align 8
  call void @free(i8* %17) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 47
  %19 = load %struct.hash_table_s*, %struct.hash_table_s** %encodings, align 8
  call void @encodings_table_free(%struct.hash_table_s* %19)
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fonts_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 48
  %21 = load %struct.pair_htable*, %struct.pair_htable** %fonts_map, align 8
  call void @fonts_map_free(%struct.pair_htable* %21)
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %font_infos = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %22, i32 0, i32 49
  %23 = load %struct.hash_table_s*, %struct.hash_table_s** %font_infos, align 8
  call void @font_info_table_free(%struct.hash_table_s* %23)
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %24 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %24, i32 0, i32 50
  %25 = load i8*, i8** %title, align 8
  %tobool6 = icmp ne i8* %25, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.body.5
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %title8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 50
  %27 = load i8*, i8** %title8, align 8
  call void @free(i8* %27) #3
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.body.5
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 51
  %29 = load i8*, i8** %header, align 8
  %tobool12 = icmp ne i8* %29, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.body.11
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 51
  %31 = load i8*, i8** %header14, align 8
  call void @free(i8* %31) #3
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.body.11
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 52
  %33 = load i8*, i8** %center_title, align 8
  %tobool18 = icmp ne i8* %33, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.body.17
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title20 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 52
  %35 = load i8*, i8** %center_title20, align 8
  call void @free(i8* %35) #3
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %do.body.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 53
  %37 = load i8*, i8** %left_title, align 8
  %tobool24 = icmp ne i8* %37, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.body.23
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title26 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 53
  %39 = load i8*, i8** %left_title26, align 8
  call void @free(i8* %39) #3
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.body.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %40 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %40, i32 0, i32 54
  %41 = load i8*, i8** %right_title, align 8
  %tobool30 = icmp ne i8* %41, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %do.body.29
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title32 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 54
  %43 = load i8*, i8** %right_title32, align 8
  call void @free(i8* %43) #3
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %do.body.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 55
  %45 = load i8*, i8** %left_footer, align 8
  %tobool36 = icmp ne i8* %45, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %do.body.35
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer38 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %46, i32 0, i32 55
  %47 = load i8*, i8** %left_footer38, align 8
  call void @free(i8* %47) #3
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %do.body.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %48 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %48, i32 0, i32 56
  %49 = load i8*, i8** %footer, align 8
  %tobool42 = icmp ne i8* %49, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.body.41
  %50 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %50, i32 0, i32 56
  %51 = load i8*, i8** %footer44, align 8
  call void @free(i8* %51) #3
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.body.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 57
  %53 = load i8*, i8** %right_footer, align 8
  %tobool48 = icmp ne i8* %53, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %do.body.47
  %54 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer50 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %54, i32 0, i32 57
  %55 = load i8*, i8** %right_footer50, align 8
  call void @free(i8* %55) #3
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %do.body.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %56 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %56, i32 0, i32 58
  %57 = load i8*, i8** %water, align 8
  %tobool54 = icmp ne i8* %57, null
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %do.body.53
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water56 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %58, i32 0, i32 58
  %59 = load i8*, i8** %water56, align 8
  call void @free(i8* %59) #3
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %do.body.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %prolog = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 36
  %61 = load i8*, i8** %prolog, align 8
  call void @free(i8* %61) #3
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium_request = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %62, i32 0, i32 38
  %63 = load i8*, i8** %medium_request, align 8
  call void @free(i8* %63) #3
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %macro_meta_sequences = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %64, i32 0, i32 63
  %65 = load %struct.pair_htable*, %struct.pair_htable** %macro_meta_sequences, align 8
  call void @macro_meta_sequence_table_free(%struct.pair_htable* %65)
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %66, i32 0, i32 64
  %67 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  call void @ps_status_free(%struct.ps_status* %67)
  %68 = load i32, i32* @msg_verbosity, align 4
  %and59 = and i32 64, %68
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.end.58
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 65
  %70 = load %struct.output*, %struct.output** %divertion, align 8
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @output_self_print(%struct.output* %70, %struct._IO_FILE* %71)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %do.end.58
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion63 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %72, i32 0, i32 65
  %73 = load %struct.output*, %struct.output** %divertion63, align 8
  call void @output_free(%struct.output* %73)
  %74 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @a2ps_job_unlink_tmpfiles(%struct.a2ps_job* %74)
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @tmpfiles_free(%struct.a2ps_job* %75)
  %76 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %76, i32 0, i32 67
  %77 = load %struct.page_range*, %struct.page_range** %page_range, align 8
  call void @page_range_free(%struct.page_range* %77)
  %78 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs64 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %78, i32 0, i32 68
  %79 = load %struct.darray*, %struct.darray** %jobs64, align 8
  call void @da_free(%struct.darray* %79, void (i8*)* bitcast (void (%struct.file_job*)* @file_job_free to void (i8*)*))
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %81 = bitcast %struct.a2ps_job* %80 to i8*
  call void @free(i8* %81) #3
  ret void
}

declare void @da_self_print(%struct.darray*, %struct._IO_FILE*) #2

declare void @free_medium_table(%struct.hash_table_s*) #2

declare void @a2ps_common_free(%struct.a2ps_common_s*) #2

declare void @encodings_map_free(%struct.pair_htable*) #2

declare void @face_eo_font_free(i8**) #2

declare void @output_free(%struct.output*) #2

declare void @a2ps_printers_free(%struct.a2ps_printers_s*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @encodings_table_free(%struct.hash_table_s*) #2

declare void @fonts_map_free(%struct.pair_htable*) #2

declare void @font_info_table_free(%struct.hash_table_s*) #2

declare void @macro_meta_sequence_table_free(%struct.pair_htable*) #2

declare void @ps_status_free(%struct.ps_status*) #2

declare void @output_self_print(%struct.output*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @tmpfiles_free(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 66
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames, i32 0, i64 %1
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tmp_filenames1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 66
  %arrayidx2 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames1, i32 0, i64 %4
  %6 = load i8*, i8** %arrayidx2, align 8
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @page_range_free(%struct.page_range*) #2

declare void @da_free(%struct.darray*, void (i8*)*) #2

declare void @file_job_free(%struct.file_job*) #2

declare void @userdata_get(%struct.userdata*) #2

declare zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job*, i8*, i8*) #2

declare void @userdata_free(%struct.userdata*) #2

declare i8* @xgethostname() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
