; ModuleID = './MultiSource.Benchmarks.MallocBench/93.gs.zfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_entry_s = type { %struct.stream_s*, i32, %struct.ref_s }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }

@invalid_file_entry = global %struct.file_entry_s zeroinitializer, align 8
@std_file_streams = common global [5 x %struct.stream_s] zeroinitializer, align 16
@std_files = global [5 x %struct.file_entry_s] [%struct.file_entry_s { %struct.stream_s* getelementptr inbounds ([5 x %struct.stream_s], [5 x %struct.stream_s]* @std_file_streams, i32 0, i32 0), i32 0, %struct.ref_s zeroinitializer }, %struct.file_entry_s { %struct.stream_s* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.stream_s]* @std_file_streams to i8*), i64 120) to %struct.stream_s*), i32 0, %struct.ref_s zeroinitializer }, %struct.file_entry_s { %struct.stream_s* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.stream_s]* @std_file_streams to i8*), i64 240) to %struct.stream_s*), i32 0, %struct.ref_s zeroinitializer }, %struct.file_entry_s { %struct.stream_s* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.stream_s]* @std_file_streams to i8*), i64 360) to %struct.stream_s*), i32 -1, %struct.ref_s zeroinitializer }, %struct.file_entry_s { %struct.stream_s* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.stream_s]* @std_file_streams to i8*), i64 480) to %struct.stream_s*), i32 -1, %struct.ref_s zeroinitializer }], align 16
@.str = private unnamed_addr constant [7 x i8] c"%stdin\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%stdout\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%stderr\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%lineedit\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%statementedit\00", align 1
@std_file_names = global [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)], align 16
@std_file_attrs = global [5 x i32] [i32 514, i32 258, i32 258, i32 514, i32 514], align 16
@stdin = external global %struct._IO_FILE*, align 8
@stdin_buf = common global [1 x i8] zeroinitializer, align 1
@stdout = external global %struct._IO_FILE*, align 8
@stdout_buf = common global [128 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@stderr_buf = common global [128 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"zfile_init\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zfile.c\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"alloc failed in zfile_init!\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@zwritehexstring.hex_digits = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"deletefile\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"renamefile(from)\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"renamefile(to)\00", align 1
@zfile_op_init.my_defs = internal global [28 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.ref_s*)* @zbytesavailable }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zclosefile }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentfile }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zdeletefile }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zecho }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.ref_s*)* @zfile }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.ref_s*)* @zfilename }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.ref_s*)* @zfileposition }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.ref_s*)* @zfindlibfile }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.ref_s*)* @zflush }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.ref_s*)* @zflushfile }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.ref_s*)* @zprint }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.ref_s*)* @zread }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.ref_s*)* @zreadhexstring }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.ref_s*)* @zreadline }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.ref_s*)* @zreadstring }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.ref_s*)* @zrenamefile }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.ref_s*)* @zresetfile }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 (%struct.ref_s*)* @zrun }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetfileposition }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1decryptfile }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 (%struct.ref_s*)* @zunread }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 (%struct.ref_s*)* @zstatus }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 (%struct.ref_s*)* @zwrite }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i32 (%struct.ref_s*)* @zwritehexstring }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 (%struct.ref_s*)* @zwriteppmfile }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.ref_s*)* @zwritestring }, %struct.op_def zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [16 x i8] c"1bytesavailable\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"1closefile\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"0currentfile\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"1deletefile\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"1echo\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"2file\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"1filename\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"1fileposition\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"1findlibfile\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"0flush\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"1flushfile\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"1print\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"1read\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"2readhexstring\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"2readline\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"2readstring\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"2renamefile\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"1resetfile\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"1run\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"2setfileposition\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"2type1decryptfile\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"2unread\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"1status\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"2write\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"2writehexstring\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"2writeppmfile\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"2writestring\00", align 1
@gs_lib_paths = external global i8**, align 8
@gp_file_name_list_separator = external global i8, align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"file_open(file_entry)\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"file_open(buffer)\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"file_open(stream)\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"file_open(file_name)\00", align 1
@esp = external global %struct.ref_s*, align 8
@estack = external global [0 x %struct.ref_s], align 8
@.str.46 = private unnamed_addr constant [19 x i8] c"file_close(stream)\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"file_close(buffer)\00", align 1
@lineedit_buf = common global [160 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @zfile_init() #0 {
entry:
  %i = alloca i32, align 4
  %pfn = alloca %struct.ref_s*, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 0, i32 0), align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @sread_file(%struct.stream_s* %0, %struct._IO_FILE* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @stdin_buf, i32 0, i32 0), i32 1)
  %2 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 1, i32 0), align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @swrite_file(%struct.stream_s* %2, %struct._IO_FILE* %3, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @stdout_buf, i32 0, i32 0), i32 128)
  %4 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 2, i32 0), align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @swrite_file(%struct.stream_s* %4, %struct._IO_FILE* %5, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @stderr_buf, i32 0, i32 0), i32 128)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 %idxprom
  %file_name = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %arrayidx, i32 0, i32 2
  store %struct.ref_s* %file_name, %struct.ref_s** %pfn, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %pfn, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 0, i64* %intval, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %pfn, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  store i16 32, i16* %type_attrs, align 2
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8*], [5 x i8*]* @std_file_names, i32 0, i64 %idxprom1
  %11 = load i8*, i8** %arrayidx2, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %pfn, align 8
  %call = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* %11, %struct.ref_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.7, i32 0, i32 0), i32 149)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @sread_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #1

declare void @swrite_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #1

declare i32 @string_to_ref(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @gs_exit(...) #1

; Function Attrs: nounwind uwtable
define i32 @zfile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %file_access = alloca i8*, align 8
  %fname = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %1 = bitcast %struct.ref_s* %fname to i8*
  %2 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fname, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %5 to i32
  %and4 = and i32 %conv3, 252
  %cmp5 = icmp eq i32 %and4, 52
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv9 = zext i16 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i32 -9, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %9 = load i8*, i8** %bytes, align 8
  %10 = load i8, i8* %9, align 1
  %conv14 = zext i8 %10 to i32
  switch i32 %conv14, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end.13
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %file_access, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.13
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %file_access, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.13
  store i32 -9, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.15, %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %12 = load i8*, i8** %file_access, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %call = call i32 @open_std_file(%struct.ref_s* %add.ptr, i8* %12, %struct.ref_s* %add.ptr16)
  store i32 %call, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  switch i32 %14, label %sw.default.19 [
    i32 0, label %sw.bb.17
    i32 -22, label %sw.bb.20
  ]

sw.bb.17:                                         ; preds = %sw.epilog
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr18, %struct.ref_s** @osp, align 8
  br label %sw.default.19

sw.default.19:                                    ; preds = %sw.epilog, %sw.bb.17
  %16 = load i32, i32* %code, align 4
  store i32 %16, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %sw.epilog
  br label %sw.epilog.21

sw.epilog.21:                                     ; preds = %sw.bb.20
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fname, i32 0, i32 0
  %bytes23 = bitcast %union.v* %value22 to i8**
  %17 = load i8*, i8** %bytes23, align 8
  %size24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fname, i32 0, i32 2
  %18 = load i16, i16* %size24, align 2
  %conv25 = zext i16 %18 to i32
  %19 = load i8*, i8** %file_access, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %call27 = call i32 @file_open(i8* %17, i32 %conv25, i8* %19, %struct.ref_s* %add.ptr26)
  store i32 %call27, i32* %code, align 4
  %21 = load i32, i32* %code, align 4
  %cmp28 = icmp sge i32 %21, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %sw.epilog.21
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %add.ptr31, %struct.ref_s** @osp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %sw.epilog.21
  %23 = load i32, i32* %code, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %sw.default.19, %sw.default, %if.then.12, %if.then.7, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @open_std_file(%struct.ref_s* %pfname, i8* %file_access, %struct.ref_s* %pfile) #0 {
entry:
  %retval = alloca i32, align 4
  %pfname.addr = alloca %struct.ref_s*, align 8
  %file_access.addr = alloca i8*, align 8
  %pfile.addr = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %attrs = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  %count = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %pfname, %struct.ref_s** %pfname.addr, align 8
  store i8* %file_access, i8** %file_access.addr, align 8
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %2 = load i8*, i8** %bytes, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %pfname.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 2
  %4 = load i16, i16* %size, align 2
  %conv = zext i16 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @std_file_names, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8*], [5 x i8*]* @std_file_names, i32 0, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %8) #5
  %call3 = call i32 (i8*, i32, i8*, i64, ...) bitcast (i32 (...)* @bytes_compare to i32 (i8*, i32, i8*, i64, ...)*)(i8* %2, i32 %conv, i8* %6, i64 %call)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.25, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %file_access.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 114
  %cond = select i1 %cmp5, i32 514, i32 258
  store i32 %cond, i32* %attrs, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 %idxprom7
  store %struct.file_entry_s* %arrayidx8, %struct.file_entry_s** %fe, align 8
  %12 = load i32, i32* %attrs, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [5 x i32], [5 x i32]* @std_file_attrs, i32 0, i64 %idxprom9
  %14 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %12, %14
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %pfile15 = bitcast %union.v* %value14 to %struct.file_entry_s**
  store %struct.file_entry_s* %15, %struct.file_entry_s** %pfile15, align 8
  %17 = load i32, i32* %attrs, align 4
  %add = add nsw i32 12, %17
  %conv16 = trunc i32 %add to i16
  %18 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  store i16 %conv16, i16* %type_attrs, align 2
  %19 = load i32, i32* %i, align 4
  switch i32 %19, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %call17 = call i32 @zreadline_stdin(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @lineedit_buf, i32 0, i32 0), i32 160, i32* %count)
  store i32 %call17, i32* %code, align 4
  %20 = load i32, i32* %code, align 4
  %cmp18 = icmp slt i32 %20, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.21:                                        ; preds = %sw.bb
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [5 x %struct.stream_s], [5 x %struct.stream_s]* @std_file_streams, i32 0, i64 %idxprom22
  %23 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %23, i32 0, i32 0
  store %struct.stream_s* %arrayidx23, %struct.stream_s** %s, align 8
  %24 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s24 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %24, i32 0, i32 0
  %25 = load %struct.stream_s*, %struct.stream_s** %s24, align 8
  %26 = load i32, i32* %count, align 4
  call void @sread_string(%struct.stream_s* %25, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @lineedit_buf, i32 0, i32 0), i32 %26)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.epilog, %if.end.21, %if.then.20, %if.then.13
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @zclosefile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  %fp = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 @file_close(%struct.ref_s* %7, %struct.stream_s* %8)
  store i32 %call, i32* %code, align 4
  %cmp7 = icmp sge i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %if.end.6
  %call10 = call %struct.ref_s* @get_current_file()
  store %struct.ref_s* %call10, %struct.ref_s** %fp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %cmp11 = icmp ne %struct.ref_s* %9, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.9
  %10 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %pfile14 = bitcast %union.v* %value13 to %struct.file_entry_s**
  %11 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile14, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %pfile16 = bitcast %union.v* %value15 to %struct.file_entry_s**
  %13 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile16, align 8
  %cmp17 = icmp eq %struct.file_entry_s* %11, %13
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %land.lhs.true
  %14 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %refs = bitcast %union.v* %value20 to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  store i16 3, i16* %type_attrs21, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 2
  store i16 0, i16* %size, align 2
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %land.lhs.true, %if.then.9
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.6
  %18 = load i32, i32* %code, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.5, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @zread(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %10 to i32
  %neg = xor i32 %conv8, -1
  %and9 = and i32 %neg, 512
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 -7, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %cptr, align 8
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %endptr, align 8
  %cmp13 = icmp ult i8* %12, %14
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %cptr15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cptr15, align 8
  %17 = load i8, i8* %incdec.ptr, align 1
  %conv16 = zext i8 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %19 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 %19(%struct.stream_s* %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %ch, align 4
  %21 = load i32, i32* %ch, align 4
  %cmp17 = icmp eq i32 %21, -1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %cond.end
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %index = bitcast %union.v* %value20 to i16*
  store i16 0, i16* %index, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 4, i16* %type_attrs21, align 2
  br label %if.end.33

if.else:                                          ; preds = %cond.end
  %24 = load i32, i32* %ch, align 4
  %conv22 = sext i32 %24 to i64
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %intval = bitcast %union.v* %value23 to i64*
  store i64 %conv22, i64* %intval, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  store i16 20, i16* %type_attrs24, align 2
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp25 = icmp ugt %struct.ref_s* %add.ptr, %28
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.else
  %29 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  store %struct.ref_s* %add.ptr28, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.else
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %index31 = bitcast %union.v* %value30 to i16*
  store i16 1, i16* %index31, align 2
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  store i16 4, i16* %type_attrs32, align 2
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %if.then.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.27, %if.then.11, %if.then.5, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @zunread(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i64, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %and10 = and i32 %conv9, 252
  %cmp11 = icmp eq i32 %and10, 20
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.7
  store i32 -20, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval = bitcast %union.v* %value15 to i64*
  %12 = load i64, i64* %intval, align 8
  store i64 %12, i64* %ch, align 8
  %13 = load i64, i64* %ch, align 8
  %cmp16 = icmp ugt i64 %13, 255
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 -15, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %15 = load i64, i64* %ch, align 8
  %conv20 = trunc i64 %15 to i8
  %call = call i32 @sungetc(%struct.stream_s* %14, i8 zeroext %conv20)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 -12, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  store %struct.ref_s* %add.ptr25, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.18, %if.then.13, %if.then.6, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @sungetc(%struct.stream_s*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define i32 @zwrite(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ch = alloca i64, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %neg = xor i32 %conv9, -1
  %and10 = and i32 %neg, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 252
  %cmp17 = icmp eq i32 %and16, 20
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %intval = bitcast %union.v* %value21 to i64*
  %14 = load i64, i64* %intval, align 8
  store i64 %14, i64* %ch, align 8
  %15 = load i64, i64* %ch, align 8
  %cmp22 = icmp ugt i64 %15, 255
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 -15, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %cptr, align 8
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 1
  %19 = load i8*, i8** %endptr, align 8
  %cmp26 = icmp ult i8* %17, %19
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %20 = load i64, i64* %ch, align 8
  %conv28 = trunc i64 %20 to i8
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %cptr29, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %cptr29, align 8
  store i8 %conv28, i8* %incdec.ptr, align 1
  %conv30 = zext i8 %conv28 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 7
  %write = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 1
  %24 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %write, align 8
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %26 = load i64, i64* %ch, align 8
  %conv31 = trunc i64 %26 to i8
  %call = call i32 %24(%struct.stream_s* %25, i8 zeroext %conv31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv30, %cond.true ], [ %call, %cond.false ]
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -2
  store %struct.ref_s* %add.ptr32, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.24, %if.then.19, %if.then.12, %if.then.6, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @zreadhexstring(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %st = alloca %struct.stream_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %odd = alloca i32, align 4
  %code = alloca i32, align 4
  %nread = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  %pos = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  store i32 -1, i32* %odd, align 4
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 3, label %sw.bb
    i32 13, label %sw.bb.17
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %4 to i32
  %and3 = and i32 %conv2, 255
  %shr4 = ashr i32 %and3, 2
  %cmp = icmp ne i32 %shr4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %6 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %6, %struct.file_entry_s** %fe, align 8
  %7 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s6 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %7, i32 0, i32 0
  %8 = load %struct.stream_s*, %struct.stream_s** %s6, align 8
  store %struct.stream_s* %8, %struct.stream_s** %s, align 8
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp7 = icmp eq %struct.stream_s* %9, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 4
  %11 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %12 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %13 = load i16, i16* %type_attrs11, align 2
  %conv12 = zext i16 %13 to i32
  %neg = xor i32 %conv12, -1
  %and13 = and i32 %neg, 512
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  store i32 -7, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  store %struct.stream_s* %st, %struct.stream_s** %s, align 8
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %bytes = bitcast %union.v* %value18 to i8**
  %16 = load i8*, i8** %bytes, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 2
  %18 = load i16, i16* %size, align 2
  %conv19 = zext i16 %18 to i32
  call void @sread_string(%struct.stream_s* %14, i8* %16, i32 %conv19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.17, %if.end.16
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %20 = load i16, i16* %type_attrs20, align 2
  %conv21 = zext i16 %20 to i32
  %and22 = and i32 %conv21, 252
  %cmp23 = icmp eq i32 %and22, 52
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %sw.epilog
  store i32 -20, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.epilog
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %22 = load i16, i16* %type_attrs27, align 2
  %conv28 = zext i16 %22 to i32
  %neg29 = xor i32 %conv28, -1
  %and30 = and i32 %neg29, 256
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  store i32 -7, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.26
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %bytes35 = bitcast %union.v* %value34 to i8**
  %25 = load i8*, i8** %bytes35, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 2
  %27 = load i16, i16* %size36, align 2
  %conv37 = zext i16 %27 to i32
  %call = call i32 @sreadhex(%struct.stream_s* %23, i8* %25, i32 %conv37, i32* %nread, i32* %odd)
  store i32 %call, i32* %code, align 4
  %28 = load i32, i32* %code, align 4
  switch i32 %28, label %sw.default.45 [
    i32 1, label %sw.bb.38
    i32 0, label %sw.bb.44
  ]

sw.bb.38:                                         ; preds = %if.end.33
  %29 = load i32, i32* %nread, align 4
  %conv39 = trunc i32 %29 to i16
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 2
  store i16 %conv39, i16* %size40, align 2
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %32 = load i16, i16* %type_attrs41, align 2
  %conv42 = zext i16 %32 to i32
  %or = or i32 %conv42, 32768
  %conv43 = trunc i32 %or to i16
  store i16 %conv43, i16* %type_attrs41, align 2
  br label %sw.epilog.46

sw.bb.44:                                         ; preds = %if.end.33
  br label %sw.epilog.46

sw.default.45:                                    ; preds = %if.end.33
  store i32 -12, i32* %retval
  br label %return

sw.epilog.46:                                     ; preds = %sw.bb.44, %sw.bb.38
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp47 = icmp eq %struct.stream_s* %33, %st
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %sw.epilog.46
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 0
  %34 = load i8*, i8** %cptr, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %34, i64 1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 2
  %35 = load i8*, i8** %cbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 6
  %36 = load i64, i64* %position, align 8
  %add = add nsw i64 %sub.ptr.sub, %36
  %conv51 = trunc i64 %add to i32
  store i32 %conv51, i32* %pos, align 4
  %37 = load i32, i32* %pos, align 4
  %38 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 2
  %39 = load i16, i16* %size52, align 2
  %conv53 = zext i16 %39 to i32
  %sub = sub i32 %conv53, %37
  %conv54 = trunc i32 %sub to i16
  store i16 %conv54, i16* %size52, align 2
  %40 = load i32, i32* %pos, align 4
  %41 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %bytes56 = bitcast %union.v* %value55 to i8**
  %42 = load i8*, i8** %bytes56, align 8
  %idx.ext = zext i32 %40 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr57, i8** %bytes56, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %44 = load i16, i16* %type_attrs58, align 2
  %conv59 = zext i16 %44 to i32
  %or60 = or i32 %conv59, 32768
  %conv61 = trunc i32 %or60 to i16
  store i16 %conv61, i16* %type_attrs58, align 2
  %45 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 1
  store %struct.ref_s* %add.ptr62, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr62, %struct.ref_s** @osp, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp63 = icmp ugt %struct.ref_s* %add.ptr62, %46
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.49
  %47 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  store %struct.ref_s* %add.ptr66, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.then.49
  br label %if.end.68

if.else:                                          ; preds = %sw.epilog.46
  %48 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %50 = bitcast %struct.ref_s* %48 to i8*
  %51 = bitcast %struct.ref_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.end.67
  %52 = load i32, i32* %code, align 4
  %sub69 = sub nsw i32 1, %52
  %conv70 = trunc i32 %sub69 to i16
  %53 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %index = bitcast %union.v* %value71 to i16*
  store i16 %conv70, i16* %index, align 2
  %54 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  store i16 4, i16* %type_attrs72, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.65, %sw.default.45, %if.then.32, %if.then.25, %if.then.15, %if.then.9, %if.then, %sw.default
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare void @sread_string(%struct.stream_s*, i8*, i32) #1

declare i32 @sreadhex(%struct.stream_s*, i8*, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @zwritehexstring(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  %ch = alloca i8, align 1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %neg = xor i32 %conv9, -1
  %and10 = and i32 %neg, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 252
  %cmp17 = icmp eq i32 %and16, 52
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs21, align 2
  %conv22 = zext i16 %14 to i32
  %neg23 = xor i32 %conv22, -1
  %and24 = and i32 %neg23, 512
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 -7, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %bytes = bitcast %union.v* %value28 to i8**
  %16 = load i8*, i8** %bytes, align 8
  store i8* %16, i8** %p, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 2
  %18 = load i16, i16* %size, align 2
  %conv29 = zext i16 %18 to i32
  store i32 %conv29, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.63, %if.end.27
  %19 = load i32, i32* %len, align 4
  %dec = add i32 %19, -1
  store i32 %dec, i32* %len, align 4
  %tobool30 = icmp ne i32 %19, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %ch, align 1
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %cptr, align 8
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %endptr, align 8
  %cmp31 = icmp ult i8* %23, %25
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %26 = load i8, i8* %ch, align 1
  %conv33 = zext i8 %26 to i32
  %shr34 = ashr i32 %conv33, 4
  %idxprom = sext i32 %shr34 to i64
  %27 = load i8*, i8** @zwritehexstring.hex_digits, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx35, align 1
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 0
  %30 = load i8*, i8** %cptr36, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr37, i8** %cptr36, align 8
  store i8 %28, i8* %incdec.ptr37, align 1
  %conv38 = zext i8 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 7
  %write = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 1
  %32 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %write, align 8
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %34 = load i8, i8* %ch, align 1
  %conv39 = zext i8 %34 to i32
  %shr40 = ashr i32 %conv39, 4
  %idxprom41 = sext i32 %shr40 to i64
  %35 = load i8*, i8** @zwritehexstring.hex_digits, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %35, i64 %idxprom41
  %36 = load i8, i8* %arrayidx42, align 1
  %call = call i32 %32(%struct.stream_s* %33, i8 zeroext %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv38, %cond.true ], [ %call, %cond.false ]
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 0
  %38 = load i8*, i8** %cptr43, align 8
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %endptr44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 1
  %40 = load i8*, i8** %endptr44, align 8
  %cmp45 = icmp ult i8* %38, %40
  br i1 %cmp45, label %cond.true.47, label %cond.false.55

cond.true.47:                                     ; preds = %cond.end
  %41 = load i8, i8* %ch, align 1
  %conv48 = zext i8 %41 to i32
  %and49 = and i32 %conv48, 15
  %idxprom50 = sext i32 %and49 to i64
  %42 = load i8*, i8** @zwritehexstring.hex_digits, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %42, i64 %idxprom50
  %43 = load i8, i8* %arrayidx51, align 1
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 0
  %45 = load i8*, i8** %cptr52, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr53, i8** %cptr52, align 8
  store i8 %43, i8* %incdec.ptr53, align 1
  %conv54 = zext i8 %43 to i32
  br label %cond.end.63

cond.false.55:                                    ; preds = %cond.end
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 7
  %write57 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs56, i32 0, i32 1
  %47 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %write57, align 8
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %49 = load i8, i8* %ch, align 1
  %conv58 = zext i8 %49 to i32
  %and59 = and i32 %conv58, 15
  %idxprom60 = sext i32 %and59 to i64
  %50 = load i8*, i8** @zwritehexstring.hex_digits, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %50, i64 %idxprom60
  %51 = load i8, i8* %arrayidx61, align 1
  %call62 = call i32 %47(%struct.stream_s* %48, i8 zeroext %51)
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.55, %cond.true.47
  %cond64 = phi i32 [ %conv54, %cond.true.47 ], [ %call62, %cond.false.55 ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %add.ptr65, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.26, %if.then.19, %if.then.12, %if.then.6, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @zreadstring(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %len = alloca i32, align 4
  %rlen = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %neg = xor i32 %conv9, -1
  %and10 = and i32 %neg, 512
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 252
  %cmp17 = icmp eq i32 %and16, 52
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs21, align 2
  %conv22 = zext i16 %14 to i32
  %neg23 = xor i32 %conv22, -1
  %and24 = and i32 %neg23, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 -7, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 2
  %16 = load i16, i16* %size, align 2
  %conv28 = zext i16 %16 to i32
  store i32 %conv28, i32* %len, align 4
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %bytes = bitcast %union.v* %value29 to i8**
  %19 = load i8*, i8** %bytes, align 8
  %20 = load i32, i32* %len, align 4
  %call = call i32 @sgets(%struct.stream_s* %17, i8* %19, i32 %20)
  store i32 %call, i32* %rlen, align 4
  %21 = load i32, i32* %rlen, align 4
  %conv30 = trunc i32 %21 to i16
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 2
  store i16 %conv30, i16* %size31, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %24 = load i16, i16* %type_attrs32, align 2
  %conv33 = zext i16 %24 to i32
  %or = or i32 %conv33, 32768
  %conv34 = trunc i32 %or to i16
  store i16 %conv34, i16* %type_attrs32, align 2
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %27 = bitcast %struct.ref_s* %arrayidx35 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = load i32, i32* %rlen, align 4
  %30 = load i32, i32* %len, align 4
  %cmp36 = icmp eq i32 %29, %30
  %cond = select i1 %cmp36, i32 1, i32 0
  %conv38 = trunc i32 %cond to i16
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %index = bitcast %union.v* %value39 to i16*
  store i16 %conv38, i16* %index, align 2
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 4, i16* %type_attrs40, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.19, %if.then.12, %if.then.6, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @sgets(%struct.stream_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zwritestring(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %neg = xor i32 %conv9, -1
  %and10 = and i32 %neg, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 @write_string(%struct.ref_s* %11, %struct.stream_s* %12)
  store i32 %call, i32* %code, align 4
  %13 = load i32, i32* %code, align 4
  %cmp14 = icmp sge i32 %13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -2
  store %struct.ref_s* %add.ptr17, %struct.ref_s** @osp, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.12, %if.then.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @write_string(%struct.ref_s* %op, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %len = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %5 = load i16, i16* %size, align 2
  %conv7 = zext i16 %5 to i32
  store i32 %conv7, i32* %len, align 4
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %8 = load i8*, i8** %bytes, align 8
  %9 = load i32, i32* %len, align 4
  %call = call i32 @sputs(%struct.stream_s* %6, i8* %8, i32 %9)
  %10 = load i32, i32* %len, align 4
  %cmp8 = icmp ne i32 %call, %10
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 -12, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.5, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @zreadline(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %count = alloca i32, align 4
  %code = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %neg = xor i32 %conv9, -1
  %and10 = and i32 %neg, 512
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 252
  %cmp17 = icmp eq i32 %and16, 52
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs21, align 2
  %conv22 = zext i16 %14 to i32
  %neg23 = xor i32 %conv22, -1
  %and24 = and i32 %neg23, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 -7, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %bytes = bitcast %union.v* %value28 to i8**
  %16 = load i8*, i8** %bytes, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 2
  %18 = load i16, i16* %size, align 2
  %conv29 = zext i16 %18 to i32
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 @zreadline_from(i8* %16, i32 %conv29, i32* %count, %struct.stream_s* %19)
  store i32 %call, i32* %code, align 4
  %20 = load i32, i32* %code, align 4
  %cmp30 = icmp slt i32 %20, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.27
  %22 = load i32, i32* %count, align 4
  %conv34 = trunc i32 %22 to i16
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 2
  store i16 %conv34, i16* %size35, align 2
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %25 = load i16, i16* %type_attrs36, align 2
  %conv37 = zext i16 %25 to i32
  %or = or i32 %conv37, 32768
  %conv38 = trunc i32 %or to i16
  store i16 %conv38, i16* %type_attrs36, align 2
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %28 = bitcast %struct.ref_s* %arrayidx39 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load i32, i32* %code, align 4
  %conv40 = trunc i32 %30 to i16
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %index = bitcast %union.v* %value41 to i16*
  store i16 %conv40, i16* %index, align 2
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 4, i16* %type_attrs42, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.32, %if.then.26, %if.then.19, %if.then.12, %if.then.6, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @zreadline_from(i8* %ptr, i32 %size, i32* %pcount, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pcount.addr = alloca i32*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %count = alloca i32, align 4
  %ch = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32* %pcount, i32** %pcount.addr, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %count, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %endptr, align 8
  %cmp1 = icmp ult i8* %3, %5
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %cptr2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %cptr2, align 8
  %8 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %10 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %10(%struct.stream_s* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %ch, align 4
  switch i32 %cond, label %sw.epilog [
    i32 13, label %sw.bb
    i32 10, label %sw.bb.23
    i32 -1, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %cond.end
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %cptr3, align 8
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %endptr4, align 8
  %cmp5 = icmp ult i8* %13, %15
  br i1 %cmp5, label %cond.true.7, label %cond.false.11

cond.true.7:                                      ; preds = %sw.bb
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %cptr8, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr9, i8** %cptr8, align 8
  %18 = load i8, i8* %incdec.ptr9, align 1
  %conv10 = zext i8 %18 to i32
  br label %cond.end.15

cond.false.11:                                    ; preds = %sw.bb
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 7
  %read13 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs12, i32 0, i32 0
  %20 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read13, align 8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call14 = call i32 %20(%struct.stream_s* %21)
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.11, %cond.true.7
  %cond16 = phi i32 [ %conv10, %cond.true.7 ], [ %call14, %cond.false.11 ]
  store i32 %cond16, i32* %ch, align 4
  %22 = load i32, i32* %ch, align 4
  %cmp17 = icmp ne i32 %22, 10
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.15
  %23 = load i32, i32* %ch, align 4
  %cmp19 = icmp ne i32 %23, -1
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %cptr21, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr22, i8** %cptr21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end.15
  br label %sw.bb.23

sw.bb.23:                                         ; preds = %cond.end, %if.end
  %26 = load i32, i32* %count, align 4
  %27 = load i32*, i32** %pcount.addr, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %cond.end
  %28 = load i32, i32* %count, align 4
  %29 = load i32*, i32** %pcount.addr, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end
  %30 = load i32, i32* %ch, align 4
  %conv25 = trunc i32 %30 to i8
  %31 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr26, i8** %ptr.addr, align 8
  store i8 %conv25, i8* %31, align 1
  %32 = load i32, i32* %count, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.24, %sw.bb.23
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @zreadline_stdin(i8* %ptr, i32 %size, i32* %pcount) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pcount.addr = alloca i32*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32* %pcount, i32** %pcount.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i32*, i32** %pcount.addr, align 8
  %3 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 0, i32 0), align 8
  %call = call i32 @zreadline_from(i8* %0, i32 %1, i32* %2, %struct.stream_s* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @ztoken_file(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %token = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %10 to i32
  %neg = xor i32 %conv8, -1
  %and9 = and i32 %neg, 512
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 -7, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* %11, i32 0, %struct.ref_s* %token)
  store i32 %call, i32* %code, align 4
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end.12
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %13 = bitcast %struct.ref_s* %12 to i8*
  %14 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp13 = icmp ugt %struct.ref_s* %add.ptr, %16
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %sw.bb
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %sw.bb
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %index = bitcast %union.v* %value18 to i16*
  store i16 1, i16* %index, align 2
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 4, i16* %type_attrs19, align 2
  store i32 0, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %if.end.12
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %index22 = bitcast %union.v* %value21 to i16*
  store i16 0, i16* %index22, align 2
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  store i16 4, i16* %type_attrs23, align 2
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.12
  %22 = load i32, i32* %code, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.20, %if.end.17, %if.then.15, %if.then.11, %if.then.5, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @scan_token(...) #1

; Function Attrs: nounwind uwtable
define i32 @zbytesavailable(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %avail = alloca i64, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 7
  %available = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 2
  %10 = load i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64*)** %available, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 %10(%struct.stream_s* %11, i64* %avail)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -12, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %12 = load i64, i64* %avail, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %intval = bitcast %union.v* %value11 to i64*
  store i64 %12, i64* %intval, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 20, i16* %type_attrs12, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zflush(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 1, i32 0), align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 7
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  %1 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 1, i32 0), align 8
  %call = call i32 %1(%struct.stream_s* %2)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @zflushfile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 7
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  %8 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call = call i32 %8(%struct.stream_s* %9)
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 4
  %11 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.6
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i32 @fseek(%struct._IO_FILE* %13, i64 0, i32 2)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.6
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.5, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zresetfile(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define i32 @zstatus(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 12
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  %s = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %3, i32 0, i32 0
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp2 = icmp ne %struct.stream_s* %4, null
  %cond = select i1 %cmp2, i32 1, i32 0
  %conv4 = trunc i32 %cond to i16
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %index = bitcast %union.v* %value5 to i16*
  store i16 %conv4, i16* %index, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 4, i16* %type_attrs6, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zrun(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define i32 @zcurrentfile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %fp = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.ref_s* @get_current_file()
  store %struct.ref_s* %call, %struct.ref_s** %fp, align 8
  %cmp2 = icmp eq %struct.ref_s* %call, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  store %struct.file_entry_s* @invalid_file_entry, %struct.file_entry_s** %pfile, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  store i16 12, i16* %type_attrs, align 2
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %fp, align 8
  %7 = bitcast %struct.ref_s* %5 to i8*
  %8 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs5, align 2
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, -2
  %conv6 = trunc i32 %and to i16
  store i16 %conv6, i16* %type_attrs5, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @zprint(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.stream_s*, %struct.stream_s** getelementptr inbounds ([5 x %struct.file_entry_s], [5 x %struct.file_entry_s]* @std_files, i32 0, i64 1, i32 0), align 8
  %call = call i32 @write_string(%struct.ref_s* %0, %struct.stream_s* %1)
  store i32 %call, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %code, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @zecho(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @zsetfileposition(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %8 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, 252
  %cmp11 = icmp eq i32 %and10, 20
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.7
  store i32 -20, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 7
  %seek = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %10 = load i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*, i64)** %seek, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %intval = bitcast %union.v* %value15 to i64*
  %13 = load i64, i64* %intval, align 8
  %call = call i32 %10(%struct.stream_s* %11, i64 %13)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 -12, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -2
  store %struct.ref_s* %add.ptr20, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.13, %if.then.6, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zfileposition(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 6
  %8 = load i64, i64* %position, align 8
  %cmp7 = icmp sge i64 %8, 0
  br i1 %cmp7, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store i32 -12, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %cptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %cbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %position11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 6
  %14 = load i64, i64* %position11, align 8
  %add = add nsw i64 %sub.ptr.sub, %14
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %intval = bitcast %union.v* %value12 to i64*
  store i64 %add, i64* %intval, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 20, i16* %type_attrs13, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @zdeletefile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %str = alloca i8*, align 8
  %stat = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i8* @ref_to_string(%struct.ref_s* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -25, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load i8*, i8** %str, align 8
  %call11 = call i32 (i8*, ...) bitcast (i32 (...)* @unlink to i32 (i8*, ...)*)(i8* %6)
  store i32 %call11, i32* %stat, align 4
  %7 = load i8*, i8** %str, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv12 = zext i16 %9 to i32
  %add = add nsw i32 %conv12, 1
  call void @alloc_free(i8* %7, i32 %add, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %10 = load i32, i32* %stat, align 4
  %cmp13 = icmp ne i32 %10, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  store i32 -12, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.9, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i8* @ref_to_string(%struct.ref_s*, i8*) #1

declare i32 @unlink(...) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @zrenamefile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %str1 = alloca i8*, align 8
  %str2 = alloca i8*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i8* null, i8** %str1, align 8
  store i8* null, i8** %str2, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %5 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %5 to i32
  %and9 = and i32 %conv8, 252
  %cmp10 = icmp eq i32 %and9, 52
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  store i32 -20, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %type_attrs15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx14, i32 0, i32 1
  %7 = load i16, i16* %type_attrs15, align 2
  %conv16 = zext i16 %7 to i32
  %neg17 = xor i32 %conv16, -1
  %and18 = and i32 %neg17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.13
  store i32 -7, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.13
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %call = call i8* @ref_to_string(%struct.ref_s* %add.ptr, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call, i8** %str1, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call22 = call i8* @ref_to_string(%struct.ref_s* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call22, i8** %str2, align 8
  %10 = load i8*, i8** %str1, align 8
  %cmp23 = icmp ne i8* %10, null
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.21
  %11 = load i8*, i8** %str2, align 8
  %cmp25 = icmp ne i8* %11, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %12 = load i8*, i8** %str1, align 8
  %13 = load i8*, i8** %str2, align 8
  %call28 = call i32 @rename(i8* %12, i8* %13) #2
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.27
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -2
  store %struct.ref_s* %add.ptr32, %struct.ref_s** @osp, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.27, %land.lhs.true, %if.end.21
  %15 = load i8*, i8** %str1, align 8
  %cmp34 = icmp ne i8* %15, null
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.33
  %16 = load i8*, i8** %str1, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx37, i32 0, i32 2
  %18 = load i16, i16* %size, align 2
  %conv38 = zext i16 %18 to i32
  %add = add nsw i32 %conv38, 1
  call void @alloc_free(i8* %16, i32 %add, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.33
  %19 = load i8*, i8** %str2, align 8
  %cmp40 = icmp ne i8* %19, null
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.39
  %20 = load i8*, i8** %str2, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 2
  %22 = load i16, i16* %size43, align 2
  %conv44 = zext i16 %22 to i32
  %add45 = add nsw i32 %conv44, 1
  call void @alloc_free(i8* %20, i32 %add45, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.39
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.20, %if.then.12, %if.then.5, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @zfilename(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s2 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s2, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp3 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %pfile8 = bitcast %union.v* %value7 to %struct.file_entry_s**
  %9 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile8, align 8
  %file_name = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %9, i32 0, i32 2
  %10 = bitcast %struct.ref_s* %7 to i8*
  %11 = bitcast %struct.ref_s* %file_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @zfindlibfile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @open_std_file(%struct.ref_s* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* %3)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -22, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp2 = icmp ugt %struct.ref_s* %add.ptr, %6
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %sw.bb
  %7 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %add.ptr5, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 1, i16* %index, align 2
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  store i16 4, i16* %type_attrs7, align 2
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end.6
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %bytes = bitcast %union.v* %value9 to i8**
  %12 = load i8*, i8** %bytes, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 2
  %14 = load i16, i16* %size, align 2
  %conv10 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call11 = call i32 @lib_file_open(i8* %12, i32 %conv10, %struct.ref_s* %15)
  store i32 %call11, i32* %code, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 1
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr12, %struct.ref_s** @osp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp13 = icmp ugt %struct.ref_s* %add.ptr12, %17
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %sw.epilog
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %sw.epilog
  %19 = load i32, i32* %code, align 4
  %cmp18 = icmp sge i32 %19, 0
  %conv19 = zext i1 %cmp18 to i32
  %conv20 = trunc i32 %conv19 to i16
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %index22 = bitcast %union.v* %value21 to i16*
  store i16 %conv20, i16* %index22, align 2
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  store i16 4, i16* %type_attrs23, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %sw.default, %if.then.4, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @lib_file_open(i8* %fname, i32 %len, %struct.ref_s* %pfile) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pfile.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ppath = alloca i8**, align 8
  %cname = alloca [4096 x i8], align 16
  %path = alloca i8*, align 8
  %npath = alloca i8*, align 8
  %plen = alloca i32, align 4
  %cstr = alloca i8*, align 8
  %clen = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8
  %call = call i32 @file_open(i8* %0, i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* %2)
  store i32 %call, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %fname.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %call1 = call i32 @gp_file_name_is_absolute(i8* %5, i32 %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -22, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i8**, i8*** @gs_lib_paths, align 8
  store i8** %7, i8*** %ppath, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i8**, i8*** %ppath, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp4 = icmp ne i8* %9, null
  br i1 %cmp4, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %ppath, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %path, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %if.end.39, %for.body
  %12 = load i8*, i8** %path, align 8
  store i8* %12, i8** %npath, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond.5
  %13 = load i8*, i8** %npath, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp6 = icmp ne i32 %conv, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i8*, i8** %npath, align 8
  %16 = load i8, i8* %15, align 1
  %conv8 = sext i8 %16 to i32
  %17 = load i8, i8* @gp_file_name_list_separator, align 1
  %conv9 = sext i8 %17 to i32
  %cmp10 = icmp ne i32 %conv8, %conv9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i8*, i8** %npath, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %npath, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %npath, align 8
  %21 = load i8*, i8** %path, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv12, i32* %plen, align 4
  %22 = load i8*, i8** %path, align 8
  %23 = load i32, i32* %plen, align 4
  %24 = load i8*, i8** %fname.addr, align 8
  %25 = load i32, i32* %len.addr, align 4
  %call13 = call i8* @gp_file_name_concat_string(i8* %22, i32 %23, i8* %24, i32 %25)
  store i8* %call13, i8** %cstr, align 8
  %26 = load i32, i32* %plen, align 4
  %conv14 = zext i32 %26 to i64
  %27 = load i8*, i8** %cstr, align 8
  %call15 = call i64 @strlen(i8* %27) #5
  %add = add i64 %conv14, %call15
  %28 = load i32, i32* %len.addr, align 4
  %conv16 = zext i32 %28 to i64
  %add17 = add i64 %add, %conv16
  %conv18 = trunc i64 %add17 to i32
  store i32 %conv18, i32* %clen, align 4
  %29 = load i32, i32* %clen, align 4
  %cmp19 = icmp sle i32 %29, 4096
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %while.end
  %30 = bitcast [4096 x i8]* %cname to i8*
  %31 = load i8*, i8** %path, align 8
  %32 = load i32, i32* %plen, align 4
  %conv22 = zext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %conv22, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cname, i32 0, i32 0
  %33 = load i32, i32* %plen, align 4
  %idx.ext = zext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %34 = load i8*, i8** %cstr, align 8
  %call23 = call i8* @strcpy(i8* %add.ptr, i8* %34) #2
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cname, i32 0, i32 0
  %35 = load i32, i32* %clen, align 4
  %idx.ext25 = sext i32 %35 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %arraydecay24, i64 %idx.ext25
  %36 = load i32, i32* %len.addr, align 4
  %idx.ext27 = zext i32 %36 to i64
  %idx.neg = sub i64 0, %idx.ext27
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr26, i64 %idx.neg
  %37 = load i8*, i8** %fname.addr, align 8
  %38 = load i32, i32* %len.addr, align 4
  %conv29 = zext i32 %38 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr28, i8* %37, i64 %conv29, i32 1, i1 false)
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cname, i32 0, i32 0
  %39 = load i32, i32* %clen, align 4
  %40 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8
  %call31 = call i32 @file_open(i8* %arraydecay30, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* %40)
  store i32 %call31, i32* %code, align 4
  %41 = load i32, i32* %code, align 4
  %cmp32 = icmp sge i32 %41, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.21
  %42 = load i32, i32* %code, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.21
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %while.end
  %43 = load i8*, i8** %npath, align 8
  %44 = load i8, i8* %43, align 1
  %tobool37 = icmp ne i8 %44, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  br label %for.end

if.end.39:                                        ; preds = %if.end.36
  %45 = load i8*, i8** %npath, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %add.ptr40, i8** %path, align 8
  br label %for.cond.5

for.end:                                          ; preds = %if.then.38
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %46 = load i8**, i8*** %ppath, align 8
  %incdec.ptr41 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %incdec.ptr41, i8*** %ppath, align 8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %47 = load i32, i32* %code, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %for.end.42, %if.then.34, %if.then.2, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @zwriteppmfile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %3 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %3, %struct.file_entry_s** %fe, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s3 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 0
  %5 = load %struct.stream_s*, %struct.stream_s** %s3, align 8
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp4 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 4
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %10 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %10 to i32
  %neg = xor i32 %conv9, -1
  %and10 = and i32 %neg, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 252
  %cmp17 = icmp eq i32 %and16, 60
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 -20, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %pdevice = bitcast %union.v* %value21 to %struct.gx_device_s**
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %call = call i32 @gs_device_is_memory(%struct.gx_device_s* %14)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  store i32 -20, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 7
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  %16 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call25 = call i32 %16(%struct.stream_s* %17)
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %pdevice27 = bitcast %union.v* %value26 to %struct.gx_device_s**
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice27, align 8
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_memory_s*
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call28 = call i32 (%struct.gx_device_memory_s*, %struct._IO_FILE*, ...) bitcast (i32 (...)* @gs_writeppmfile to i32 (%struct.gx_device_memory_s*, %struct._IO_FILE*, ...)*)(%struct.gx_device_memory_s* %20, %struct._IO_FILE* %22)
  store i32 %call28, i32* %code, align 4
  %23 = load i32, i32* %code, align 4
  %cmp29 = icmp sge i32 %23, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.24
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  store %struct.ref_s* %add.ptr32, %struct.ref_s** @osp, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.24
  %25 = load i32, i32* %code, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.23, %if.then.19, %if.then.12, %if.then.6, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @gs_device_is_memory(%struct.gx_device_s*) #1

declare i32 @gs_writeppmfile(...) #1

; Function Attrs: nounwind uwtable
define i32 @ztype1decryptfile(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %state = alloca i16, align 2
  %dec_file = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %es = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %conv3 = trunc i64 %3 to i16
  store i16 %conv3, i16* %state, align 2
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %intval6 = bitcast %union.v* %value5 to i64*
  %5 = load i64, i64* %intval6, align 8
  %6 = load i16, i16* %state, align 2
  %conv7 = zext i16 %6 to i64
  %cmp8 = icmp ne i64 %5, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %8 = load i16, i16* %type_attrs12, align 2
  %conv13 = zext i16 %8 to i32
  %and14 = and i32 %conv13, 255
  %shr = ashr i32 %and14, 2
  %cmp15 = icmp ne i32 %shr, 3
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  store i32 -20, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.11
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %pfile = bitcast %union.v* %value19 to %struct.file_entry_s**
  %10 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %10, %struct.file_entry_s** %fe, align 8
  %11 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s20 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %11, i32 0, i32 0
  %12 = load %struct.stream_s*, %struct.stream_s** %s20, align 8
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp21 = icmp eq %struct.stream_s* %13, null
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 4
  %15 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.18
  store i32 -7, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false
  %call = call i32 @file_open(i8* null, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.ref_s* %dec_file)
  store i32 %call, i32* %code, align 4
  %16 = load i32, i32* %code, align 4
  %cmp25 = icmp slt i32 %16, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %17 = load i32, i32* %code, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dec_file, i32 0, i32 0
  %pfile30 = bitcast %union.v* %value29 to %struct.file_entry_s**
  %18 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile30, align 8
  %s31 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %18, i32 0, i32 0
  %19 = load %struct.stream_s*, %struct.stream_s** %s31, align 8
  store %struct.stream_s* %19, %struct.stream_s** %es, align 8
  %20 = load %struct.stream_s*, %struct.stream_s** %es, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %pfile33 = bitcast %union.v* %value32 to %struct.file_entry_s**
  %22 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile33, align 8
  %s34 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %22, i32 0, i32 0
  %23 = load %struct.stream_s*, %struct.stream_s** %s34, align 8
  %24 = load %struct.stream_s*, %struct.stream_s** %es, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 2
  %25 = load i8*, i8** %cbuf, align 8
  %26 = load %struct.stream_s*, %struct.stream_s** %es, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 3
  %27 = load i32, i32* %bsize, align 4
  %28 = load i16, i16* %state, align 2
  call void @sread_decrypt(%struct.stream_s* %20, %struct.stream_s* %23, i8* %25, i32 %27, i16 zeroext %28)
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %30 = bitcast %struct.ref_s* %arrayidx35 to i8*
  %31 = bitcast %struct.ref_s* %dec_file to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %if.then.23, %if.then.17, %if.then.10, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @sread_decrypt(%struct.stream_s*, %struct.stream_s*, i8*, i32, i16 zeroext) #1

; Function Attrs: nounwind uwtable
define void @zfile_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([28 x %struct.op_def], [28 x %struct.op_def]* @zfile_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

declare i32 @gp_file_name_is_absolute(i8*, i32) #1

declare i8* @gp_file_name_concat_string(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @file_open(i8* %fname, i32 %len, i8* %file_access, %struct.ref_s* %pfile) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %file_access.addr = alloca i8*, align 8
  %pfile.addr = alloca %struct.ref_s*, align 8
  %buffer = alloca i8*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  %code = alloca i32, align 4
  %file_name = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %file_access, i8** %file_access.addr, align 8
  store %struct.ref_s* %pfile, %struct.ref_s** %pfile.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp uge i32 %0, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @alloc(i32 1, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct.file_entry_s*
  store %struct.file_entry_s* %1, %struct.file_entry_s** %fe, align 8
  %2 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %cmp1 = icmp eq %struct.file_entry_s* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call i8* @alloc(i32 512, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0))
  store i8* %call4, i8** %buffer, align 8
  %3 = load i8*, i8** %buffer, align 8
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %5 = bitcast %struct.file_entry_s* %4 to i8*
  call void @alloc_free(i8* %5, i32 1, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  store i32 -25, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %call8 = call i8* @alloc(i32 1, i32 120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  %6 = bitcast i8* %call8 to %struct.stream_s*
  store %struct.stream_s* %6, %struct.stream_s** %s, align 8
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp9 = icmp eq %struct.stream_s* %7, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %8 = load i8*, i8** %buffer, align 8
  call void @alloc_free(i8* %8, i32 512, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0))
  %9 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %10 = bitcast %struct.file_entry_s* %9 to i8*
  call void @alloc_free(i8* %10, i32 1, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  store i32 -25, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %11 = load i8*, i8** %fname.addr, align 8
  %cmp12 = icmp ne i8* %11, null
  br i1 %cmp12, label %if.then.13, label %if.else.28

if.then.13:                                       ; preds = %if.end.11
  %12 = load i8*, i8** %buffer, align 8
  store i8* %12, i8** %file_name, align 8
  %13 = load i8*, i8** %file_name, align 8
  %14 = load i8*, i8** %fname.addr, align 8
  %15 = load i32, i32* %len.addr, align 4
  %conv = zext i32 %15 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %conv, i32 1, i1 false)
  %16 = load i32, i32* %len.addr, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i8*, i8** %file_name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %18 = load i8*, i8** %file_name, align 8
  %19 = load i8*, i8** %file_access.addr, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %18, i8* %19)
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %file, align 8
  store i32 -22, i32* %code, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp15 = icmp eq %struct._IO_FILE* %20, null
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %21 = load i8*, i8** %file_name, align 8
  %22 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %file_name17 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %22, i32 0, i32 2
  %call18 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* %21, %struct.ref_s* %file_name17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0))
  store i32 %call18, i32* %code, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.13
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %24 = bitcast %struct.stream_s* %23 to i8*
  call void @alloc_free(i8* %24, i32 1, i32 120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  %25 = load i8*, i8** %buffer, align 8
  call void @alloc_free(i8* %25, i32 512, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0))
  %26 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %27 = bitcast %struct.file_entry_s* %26 to i8*
  call void @alloc_free(i8* %27, i32 1, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  %28 = load i32, i32* %code, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %29 = load i8*, i8** %file_access.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv23 = sext i8 %30 to i32
  %cmp24 = icmp eq i32 %conv23, 114
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.22
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %33 = load i8*, i8** %buffer, align 8
  call void @sread_file(%struct.stream_s* %31, %struct._IO_FILE* %32, i8* %33, i32 512)
  br label %if.end.27

if.else:                                          ; preds = %if.end.22
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %36 = load i8*, i8** %buffer, align 8
  call void @swrite_file(%struct.stream_s* %34, %struct._IO_FILE* %35, i8* %36, i32 512)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.11
  %37 = load i8*, i8** %buffer, align 8
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 2
  store i8* %37, i8** %cbuf, align 8
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 3
  store i32 512, i32* %bsize, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %41 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s30 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %41, i32 0, i32 0
  store %struct.stream_s* %40, %struct.stream_s** %s30, align 8
  %42 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %can_close = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %42, i32 0, i32 1
  store i32 1, i32* %can_close, align 4
  %43 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %44 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %pfile31 = bitcast %union.v* %value to %struct.file_entry_s**
  store %struct.file_entry_s* %43, %struct.file_entry_s** %pfile31, align 8
  %45 = load i8*, i8** %file_access.addr, align 8
  %46 = load i8, i8* %45, align 1
  %conv32 = sext i8 %46 to i32
  %cmp33 = icmp eq i32 %conv32, 114
  %cond = select i1 %cmp33, i32 514, i32 258
  %add = add nsw i32 12, %cond
  %conv35 = trunc i32 %add to i16
  %47 = load %struct.ref_s*, %struct.ref_s** %pfile.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  store i16 %conv35, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.21, %if.then.10, %if.then.6, %if.then.2, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i8* @alloc(i32, i32, i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @file_check_read(%struct.ref_s* %op, %struct.stream_s** %ps) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %s = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %1 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %1, %struct.file_entry_s** %fe, align 8
  %2 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s1 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %2, i32 0, i32 0
  %3 = load %struct.stream_s*, %struct.stream_s** %s1, align 8
  store %struct.stream_s* %3, %struct.stream_s** %s, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cmp = icmp eq %struct.stream_s* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 4
  %6 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %8 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8
  store %struct.stream_s* %7, %struct.stream_s** %8, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define %struct.ref_s* @get_current_file() #0 {
entry:
  %retval = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %0, %struct.ref_s** %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %cmp = icmp uge %struct.ref_s* %1, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0)
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %neg = xor i32 %conv4, -1
  %and5 = and i32 %neg, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  store %struct.ref_s* %6, %struct.ref_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.ref_s* null, %struct.ref_s** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %retval
  ret %struct.ref_s* %8
}

; Function Attrs: nounwind uwtable
define i32 @file_close(%struct.ref_s* %fp, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.ref_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %fe = alloca %struct.file_entry_s*, align 8
  %buffer = alloca i8*, align 8
  store %struct.ref_s* %fp, %struct.ref_s** %fp.addr, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pfile = bitcast %union.v* %value to %struct.file_entry_s**
  %1 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  store %struct.file_entry_s* %1, %struct.file_entry_s** %fe, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %cbuf, align 8
  store i8* %3, i8** %buffer, align 8
  %4 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %can_close = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %4, i32 0, i32 1
  %5 = load i32, i32* %can_close, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 -7, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 7
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %7 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %7(%struct.stream_s* %8)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 7
  %close3 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs2, i32 0, i32 5
  %10 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close3, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call4 = call i32 %10(%struct.stream_s* %11)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i32 -12, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.default
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %13 = bitcast %struct.stream_s* %12 to i8*
  call void @alloc_free(i8* %13, i32 1, i32 120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0))
  %14 = load i8*, i8** %buffer, align 8
  call void @alloc_free(i8* %14, i32 512, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.1
  %15 = load %struct.file_entry_s*, %struct.file_entry_s** %fe, align 8
  %s5 = getelementptr inbounds %struct.file_entry_s, %struct.file_entry_s* %15, i32 0, i32 0
  store %struct.stream_s* null, %struct.stream_s** %s5, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then, %sw.bb
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @bytes_compare(...) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
