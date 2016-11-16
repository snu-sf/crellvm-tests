; ModuleID = './lib/fjobs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
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

@.str = private unnamed_addr constant [48 x i8] c"File `%s': Pages %d-%d (%d), Sheets %d-%d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09del-tmp: `%s', stdin-tmp: `%s', is_toc: %d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct.file_job* @_a2ps_file_job_new(i8* %name, i32 %num, %struct.tm* %run_tm) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %num.addr = alloca i32, align 4
  %run_tm.addr = alloca %struct.tm*, align 8
  %res = alloca %struct.file_job*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store %struct.tm* %run_tm, %struct.tm** %run_tm.addr, align 8
  %call = call i8* @xmalloc(i64 144)
  %0 = bitcast i8* %call to %struct.file_job*
  store %struct.file_job* %0, %struct.file_job** %res, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.file_job*, %struct.file_job** %res, align 8
  %name1 = getelementptr inbounds %struct.file_job, %struct.file_job* %2, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %3 = load %struct.file_job*, %struct.file_job** %res, align 8
  %delegation_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %3, i32 0, i32 1
  store i8* null, i8** %delegation_tmpname, align 8
  %4 = load %struct.file_job*, %struct.file_job** %res, align 8
  %stdin_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %4, i32 0, i32 2
  store i8* null, i8** %stdin_tmpname, align 8
  %5 = load %struct.file_job*, %struct.file_job** %res, align 8
  %type = getelementptr inbounds %struct.file_job, %struct.file_job* %5, i32 0, i32 3
  store i8* null, i8** %type, align 8
  %6 = load %struct.file_job*, %struct.file_job** %res, align 8
  %is_toc = getelementptr inbounds %struct.file_job, %struct.file_job* %6, i32 0, i32 4
  store i8 0, i8* %is_toc, align 1
  %7 = load %struct.file_job*, %struct.file_job** %res, align 8
  %mod_tm = getelementptr inbounds %struct.file_job, %struct.file_job* %7, i32 0, i32 5
  %8 = load %struct.tm*, %struct.tm** %run_tm.addr, align 8
  %9 = bitcast %struct.tm* %mod_tm to i8*
  %10 = bitcast %struct.tm* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 56, i32 8, i1 false)
  %11 = load %struct.file_job*, %struct.file_job** %res, align 8
  %printable = getelementptr inbounds %struct.file_job, %struct.file_job* %11, i32 0, i32 6
  store i8 1, i8* %printable, align 1
  %12 = load %struct.file_job*, %struct.file_job** %res, align 8
  %is_stdin = getelementptr inbounds %struct.file_job, %struct.file_job* %12, i32 0, i32 7
  store i8 0, i8* %is_stdin, align 1
  %13 = load %struct.file_job*, %struct.file_job** %res, align 8
  %first_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %13, i32 0, i32 8
  store i32 0, i32* %first_sheet, align 4
  %14 = load %struct.file_job*, %struct.file_job** %res, align 8
  %sheets = getelementptr inbounds %struct.file_job, %struct.file_job* %14, i32 0, i32 13
  store i32 0, i32* %sheets, align 4
  %15 = load %struct.file_job*, %struct.file_job** %res, align 8
  %last_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %15, i32 0, i32 9
  store i32 0, i32* %last_sheet, align 4
  %16 = load %struct.file_job*, %struct.file_job** %res, align 8
  %first_page = getelementptr inbounds %struct.file_job, %struct.file_job* %16, i32 0, i32 10
  store i32 0, i32* %first_page, align 4
  %17 = load %struct.file_job*, %struct.file_job** %res, align 8
  %pages = getelementptr inbounds %struct.file_job, %struct.file_job* %17, i32 0, i32 12
  store i32 0, i32* %pages, align 4
  %18 = load %struct.file_job*, %struct.file_job** %res, align 8
  %last_page = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 11
  store i32 0, i32* %last_page, align 4
  %19 = load %struct.file_job*, %struct.file_job** %res, align 8
  %top_line = getelementptr inbounds %struct.file_job, %struct.file_job* %19, i32 0, i32 15
  store i32 1, i32* %top_line, align 4
  %20 = load %struct.file_job*, %struct.file_job** %res, align 8
  %top_page = getelementptr inbounds %struct.file_job, %struct.file_job* %20, i32 0, i32 16
  store i32 0, i32* %top_page, align 4
  %21 = load %struct.file_job*, %struct.file_job** %res, align 8
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %21, i32 0, i32 17
  store i32 1, i32* %lines, align 4
  %22 = load i32, i32* %num.addr, align 4
  %23 = load %struct.file_job*, %struct.file_job** %res, align 8
  %num2 = getelementptr inbounds %struct.file_job, %struct.file_job* %23, i32 0, i32 14
  store i32 %22, i32* %num2, align 4
  %24 = load %struct.file_job*, %struct.file_job** %res, align 8
  ret %struct.file_job* %24
}

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @file_job_free(%struct.file_job* %file_job) #0 {
entry:
  %file_job.addr = alloca %struct.file_job*, align 8
  store %struct.file_job* %file_job, %struct.file_job** %file_job.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.file_job*, %struct.file_job** %file_job.addr, align 8
  %delegation_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %0, i32 0, i32 1
  %1 = load i8*, i8** %delegation_tmpname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.file_job*, %struct.file_job** %file_job.addr, align 8
  %delegation_tmpname1 = getelementptr inbounds %struct.file_job, %struct.file_job* %2, i32 0, i32 1
  %3 = load i8*, i8** %delegation_tmpname1, align 8
  call void @free(i8* %3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct.file_job*, %struct.file_job** %file_job.addr, align 8
  %stdin_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %4, i32 0, i32 2
  %5 = load i8*, i8** %stdin_tmpname, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body.2
  %6 = load %struct.file_job*, %struct.file_job** %file_job.addr, align 8
  %stdin_tmpname5 = getelementptr inbounds %struct.file_job, %struct.file_job* %6, i32 0, i32 2
  %7 = load i8*, i8** %stdin_tmpname5, align 8
  call void @free(i8* %7) #2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body.2
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %8 = load %struct.file_job*, %struct.file_job** %file_job.addr, align 8
  %9 = bitcast %struct.file_job* %8 to i8*
  call void @free(i8* %9) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @file_job_self_print(%struct.file_job* %file, %struct._IO_FILE* %stream) #0 {
entry:
  %file.addr = alloca %struct.file_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.file_job* %file, %struct.file_job** %file.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %first_page = getelementptr inbounds %struct.file_job, %struct.file_job* %3, i32 0, i32 10
  %4 = load i32, i32* %first_page, align 4
  %5 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %last_page = getelementptr inbounds %struct.file_job, %struct.file_job* %5, i32 0, i32 11
  %6 = load i32, i32* %last_page, align 4
  %7 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %pages = getelementptr inbounds %struct.file_job, %struct.file_job* %7, i32 0, i32 12
  %8 = load i32, i32* %pages, align 4
  %9 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %first_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %9, i32 0, i32 8
  %10 = load i32, i32* %first_sheet, align 4
  %11 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %last_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %11, i32 0, i32 9
  %12 = load i32, i32* %last_sheet, align 4
  %13 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %sheets = getelementptr inbounds %struct.file_job, %struct.file_job* %13, i32 0, i32 13
  %14 = load i32, i32* %sheets, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i8* %2, i32 %4, i32 %6, i32 %8, i32 %10, i32 %12, i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %16 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %delegation_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %16, i32 0, i32 1
  %17 = load i8*, i8** %delegation_tmpname, align 8
  %cmp = icmp eq i8* %17, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %delegation_tmpname1 = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 1
  %19 = load i8*, i8** %delegation_tmpname1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.true ], [ %19, %cond.false ]
  %20 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %stdin_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %20, i32 0, i32 2
  %21 = load i8*, i8** %stdin_tmpname, align 8
  %cmp2 = icmp eq i8* %21, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.6

cond.false.4:                                     ; preds = %cond.end
  %22 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %stdin_tmpname5 = getelementptr inbounds %struct.file_job, %struct.file_job* %22, i32 0, i32 2
  %23 = load i8*, i8** %stdin_tmpname5, align 8
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.4, %cond.true.3
  %cond7 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.true.3 ], [ %23, %cond.false.4 ]
  %24 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %is_toc = getelementptr inbounds %struct.file_job, %struct.file_job* %24, i32 0, i32 4
  %25 = load i8, i8* %is_toc, align 1
  %tobool = trunc i8 %25 to i1
  %conv = zext i1 %tobool to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %cond, i8* %cond7, i32 %conv)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @file_job_synchronize_sheets(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file = alloca %struct.file_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 68
  %1 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 68
  %4 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 6
  %5 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %sub
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.file_job*
  store %struct.file_job* %7, %struct.file_job** %file, align 8
  %8 = load %struct.file_job*, %struct.file_job** %file, align 8
  %first_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %8, i32 0, i32 8
  %9 = load i32, i32* %first_sheet, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 8
  %11 = load i32, i32* %sheets, align 4
  %12 = load %struct.file_job*, %struct.file_job** %file, align 8
  %first_sheet2 = getelementptr inbounds %struct.file_job, %struct.file_job* %12, i32 0, i32 8
  store i32 %11, i32* %first_sheet2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 8
  %14 = load i32, i32* %sheets3, align 4
  %15 = load %struct.file_job*, %struct.file_job** %file, align 8
  %last_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %15, i32 0, i32 9
  store i32 %14, i32* %last_sheet, align 4
  %16 = load %struct.file_job*, %struct.file_job** %file, align 8
  %last_sheet4 = getelementptr inbounds %struct.file_job, %struct.file_job* %16, i32 0, i32 9
  %17 = load i32, i32* %last_sheet4, align 4
  %18 = load %struct.file_job*, %struct.file_job** %file, align 8
  %first_sheet5 = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 8
  %19 = load i32, i32* %first_sheet5, align 4
  %sub6 = sub nsw i32 %17, %19
  %add = add nsw i32 %sub6, 1
  %20 = load %struct.file_job*, %struct.file_job** %file, align 8
  %sheets7 = getelementptr inbounds %struct.file_job, %struct.file_job* %20, i32 0, i32 13
  store i32 %add, i32* %sheets7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @file_job_synchronize_pages(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file = alloca %struct.file_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 68
  %1 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 68
  %4 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 6
  %5 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %sub
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.file_job*
  store %struct.file_job* %7, %struct.file_job** %file, align 8
  %8 = load %struct.file_job*, %struct.file_job** %file, align 8
  %first_page = getelementptr inbounds %struct.file_job, %struct.file_job* %8, i32 0, i32 10
  %9 = load i32, i32* %first_page, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 9
  %11 = load i32, i32* %pages, align 4
  %12 = load %struct.file_job*, %struct.file_job** %file, align 8
  %first_page2 = getelementptr inbounds %struct.file_job, %struct.file_job* %12, i32 0, i32 10
  store i32 %11, i32* %first_page2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.file_job*, %struct.file_job** %file, align 8
  %top_page = getelementptr inbounds %struct.file_job, %struct.file_job* %13, i32 0, i32 16
  %14 = load i32, i32* %top_page, align 4
  %tobool3 = icmp ne i32 %14, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %15 = load %struct.file_job*, %struct.file_job** %file, align 8
  %top_page5 = getelementptr inbounds %struct.file_job, %struct.file_job* %15, i32 0, i32 16
  store i32 1, i32* %top_page5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 9
  %17 = load i32, i32* %pages7, align 4
  %18 = load %struct.file_job*, %struct.file_job** %file, align 8
  %last_page = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 11
  store i32 %17, i32* %last_page, align 4
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 68
  %20 = load %struct.darray*, %struct.darray** %jobs8, align 8
  %len9 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 5
  %21 = load i64, i64* %len9, align 8
  %sub10 = sub i64 %21, 1
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs11 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %22, i32 0, i32 68
  %23 = load %struct.darray*, %struct.darray** %jobs11, align 8
  %content12 = getelementptr inbounds %struct.darray, %struct.darray* %23, i32 0, i32 6
  %24 = load i8**, i8*** %content12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %24, i64 %sub10
  %25 = load i8*, i8** %arrayidx13, align 8
  %26 = bitcast i8* %25 to %struct.file_job*
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %26, i32 0, i32 17
  %27 = load i32, i32* %lines, align 4
  %28 = load %struct.file_job*, %struct.file_job** %file, align 8
  %top_line = getelementptr inbounds %struct.file_job, %struct.file_job* %28, i32 0, i32 15
  store i32 %27, i32* %top_line, align 4
  %29 = load %struct.file_job*, %struct.file_job** %file, align 8
  %last_page14 = getelementptr inbounds %struct.file_job, %struct.file_job* %29, i32 0, i32 11
  %30 = load i32, i32* %last_page14, align 4
  %31 = load %struct.file_job*, %struct.file_job** %file, align 8
  %first_page15 = getelementptr inbounds %struct.file_job, %struct.file_job* %31, i32 0, i32 10
  %32 = load i32, i32* %first_page15, align 4
  %sub16 = sub nsw i32 %30, %32
  %add = add nsw i32 %sub16, 1
  %33 = load %struct.file_job*, %struct.file_job** %file, align 8
  %pages17 = getelementptr inbounds %struct.file_job, %struct.file_job* %33, i32 0, i32 12
  store i32 %add, i32* %pages17, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @file_job_unlink_tmpfile(%struct.file_job* %file) #0 {
entry:
  %file.addr = alloca %struct.file_job*, align 8
  store %struct.file_job* %file, %struct.file_job** %file.addr, align 8
  %0 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %delegation_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %0, i32 0, i32 1
  %1 = load i8*, i8** %delegation_tmpname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %delegation_tmpname1 = getelementptr inbounds %struct.file_job, %struct.file_job* %2, i32 0, i32 1
  %3 = load i8*, i8** %delegation_tmpname1, align 8
  %call = call i32 @unlink(i8* %3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %stdin_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %4, i32 0, i32 2
  %5 = load i8*, i8** %stdin_tmpname, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.file_job*, %struct.file_job** %file.addr, align 8
  %stdin_tmpname4 = getelementptr inbounds %struct.file_job, %struct.file_job* %6, i32 0, i32 2
  %7 = load i8*, i8** %stdin_tmpname4, align 8
  %call5 = call i32 @unlink(i8* %7) #2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @file_name_cmp(%struct.file_job* %f1, %struct.file_job* %f2) #0 {
entry:
  %f1.addr = alloca %struct.file_job*, align 8
  %f2.addr = alloca %struct.file_job*, align 8
  store %struct.file_job* %f1, %struct.file_job** %f1.addr, align 8
  store %struct.file_job* %f2, %struct.file_job** %f2.addr, align 8
  %0 = load %struct.file_job*, %struct.file_job** %f1.addr, align 8
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.file_job*, %struct.file_job** %f2.addr, align 8
  %name1 = getelementptr inbounds %struct.file_job, %struct.file_job* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
