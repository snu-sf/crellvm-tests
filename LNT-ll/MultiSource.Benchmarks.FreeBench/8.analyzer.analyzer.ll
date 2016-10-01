; ModuleID = './MultiSource.Benchmarks.FreeBench/8.analyzer.analyzer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.conf_list_t = type { i8*, i64, i32 }
%struct.def_list_t = type { i8*, i64, i32, i32 }
%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct.epoch_t = type { %struct.trans_t*, %struct.trans_t*, i32, i64, i64, i64, i64 }
%struct.trans_t = type { i32, i64, i64, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [71 x i8] c"--- Dependency Analyzer version: %s, Copyleft 1999 Peter Rundberg ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1.00\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"--- Compiled: %s ---\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"--- Flags: %s ---\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"--- Host: %s ---\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"thishost\00", align 1
@list_len = global i32 0, align 4
@top_list_len = global i32 10, align 4
@epoch_length = global i32 1, align 4
@def_table_size = global i32 10007, align 4
@list = global %struct.conf_list_t* null, align 8
@first = global i32 1, align 4
@def_table = global %struct.def_list_t** null, align 8
@hard_raw_list = global %struct.hard_raw* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"Out of memory...\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"analyzer.conf\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@settings = external global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"ERROR: \09Could not find file: %s\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"ERROR: Number of loop iterations is less than epoch length: %d<%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"File %s is empty\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Num_epochs: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"START:\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"LD:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ST:\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"ALERT: \09Name dependecy testing not implemented\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"\0DProcessing %3.2f %%    \00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"END:\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"\0DProcessing 100.00 %%    \0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"ERROR: \09Wrong format on file %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"%d RAW:s for 0x%lx\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"ALERT: \09No such kernel present\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @version() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @init_def_table(i32 %def_size) #0 {
entry:
  %def_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %def_size, i32* %def_size.addr, align 4
  %0 = load i32, i32* %def_size.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to %struct.def_list_t**
  store %struct.def_list_t** %1, %struct.def_list_t*** @def_table, align 8
  %2 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %cmp = icmp eq %struct.def_list_t** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %def_size.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %arrayidx = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %7, i64 %idxprom
  store %struct.def_list_t* null, %struct.def_list_t** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @error(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %c, i8** %v) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %v.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %graphfile = alloca %struct._IO_FILE*, align 8
  %indata_lines = alloca i8**, align 8
  %counter = alloca i32, align 4
  %mem_ops = alloca i64, align 8
  %varv = alloca i32, align 4
  %place_in_varv = alloca i32, align 4
  %place_in_epoch = alloca i32, align 4
  %varv_in_epoch = alloca i32, align 4
  %string = alloca [100 x i8], align 16
  %address = alloca i64, align 8
  %issue_no = alloca i64, align 8
  %i = alloca i32, align 4
  %data = alloca i32, align 4
  %name = alloca i32, align 4
  %verbose = alloca i32, align 4
  %speed = alloca i32, align 4
  %forward = alloca i32, align 4
  %fastspeed = alloca i32, align 4
  %imix = alloca i32, align 4
  %load_pen = alloca i32, align 4
  %store_pen = alloca i32, align 4
  %nofile = alloca i32, align 4
  %kernel = alloca i32, align 4
  %cpulimit = alloca i32, align 4
  %configs = alloca i32, align 4
  %show_speedup = alloca i32, align 4
  %thread_pen = alloca i32, align 4
  %commit_pen = alloca i32, align 4
  %use_epoch_length_as_num_of_epochs = alloca i32, align 4
  %data_pen_tot = alloca i64, align 8
  %epoch = alloca %struct.epoch_t*, align 8
  %num_epochs = alloca i32, align 4
  %loops = alloca i32, align 4
  %trans = alloca %struct.trans_t*, align 8
  %load_store = alloca i32, align 4
  %settingsfile = alloca i8*, align 8
  %indata_line = alloca i8*, align 8
  %def_placeholder = alloca %struct.def_list_t*, align 8
  %conf_iterator = alloca %struct.conf_list_t*, align 8
  store i32 0, i32* %retval
  store i32 %c, i32* %c.addr, align 4
  store i8** %v, i8*** %v.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %graphfile, align 8
  store i32 0, i32* %counter, align 4
  store i64 0, i64* %mem_ops, align 8
  store i32 -1, i32* %varv, align 4
  store i32 0, i32* %place_in_varv, align 4
  store i32 0, i32* %place_in_epoch, align 4
  store i32 1, i32* %data, align 4
  store i32 0, i32* %name, align 4
  store i32 0, i32* %verbose, align 4
  store i32 1, i32* %speed, align 4
  store i32 1, i32* %forward, align 4
  store i32 0, i32* %fastspeed, align 4
  store i32 1, i32* %imix, align 4
  store i32 0, i32* %load_pen, align 4
  store i32 0, i32* %store_pen, align 4
  store i32 1, i32* %nofile, align 4
  store i32 3, i32* %kernel, align 4
  store i32 0, i32* %cpulimit, align 4
  store i32 0, i32* %configs, align 4
  store i32 3, i32* %show_speedup, align 4
  store i32 0, i32* %thread_pen, align 4
  store i32 0, i32* %commit_pen, align 4
  store i32 0, i32* %use_epoch_length_as_num_of_epochs, align 4
  store i64 0, i64* %data_pen_tot, align 8
  store %struct.epoch_t* null, %struct.epoch_t** %epoch, align 8
  store i32 0, i32* %num_epochs, align 4
  store i32 0, i32* %loops, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8** %settingsfile, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %v.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  call void @error(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nofile, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.8, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** %settingsfile, align 8
  %call3 = call i32 @parse_settings(i8* %6)
  %7 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 0), align 4
  store i32 %7, i32* %load_pen, align 4
  %8 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 1), align 4
  store i32 %8, i32* %store_pen, align 4
  %9 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 2), align 4
  store i32 %9, i32* %data, align 4
  %10 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 3), align 4
  store i32 %10, i32* %name, align 4
  %11 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 4), align 4
  store i32 %11, i32* %speed, align 4
  %12 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 5), align 4
  store i32 %12, i32* %fastspeed, align 4
  %13 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 6), align 4
  %tobool4 = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %forward, align 4
  %14 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 7), align 4
  store i32 %14, i32* %imix, align 4
  %15 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 8), align 4
  %tobool5 = icmp ne i32 %15, 0
  %lnot6 = xor i1 %tobool5, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, i32* %verbose, align 4
  %16 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 9), align 4
  store i32 %16, i32* @epoch_length, align 4
  %17 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 10), align 4
  store i32 %17, i32* %kernel, align 4
  %18 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 11), align 4
  store i32 %18, i32* %cpulimit, align 4
  %19 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 12), align 4
  store i32 %19, i32* %configs, align 4
  %20 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 13), align 4
  store i32 %20, i32* %show_speedup, align 4
  %21 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 14), align 4
  store i32 %21, i32* %thread_pen, align 4
  %22 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 15), align 4
  store i32 %22, i32* %commit_pen, align 4
  %23 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @settings, i32 0, i64 16), align 4
  store i32 %23, i32* %use_epoch_length_as_num_of_epochs, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.2, %if.end
  %24 = load i32, i32* @def_table_size, align 4
  call void @init_def_table(i32 %24)
  %25 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %26 = load i8**, i8*** %v.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx9, align 8
  %call10 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %28, null
  br i1 %tobool11, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* %c.addr, align 4
  %sub13 = sub nsw i32 %30, 1
  %idxprom14 = sext i32 %sub13 to i64
  %31 = load i8**, i8*** %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %31, i64 %idxprom14
  %32 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* %32)
  %33 = load i8**, i8*** %v.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx17, align 8
  call void @error(i8* %34)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end.8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.18
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i8* @fgets(i8* %arraydecay, i32 100, %struct._IO_FILE* %35)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %arrayidx20 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i64 0
  %36 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %36 to i32
  %cmp21 = icmp ne i32 %conv, 69
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay23 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay23, i64 5
  %call24 = call i32 @atoi(i8* %add.ptr) #7
  store i32 %call24, i32* %num_epochs, align 4
  %37 = load i32, i32* %num_epochs, align 4
  store i32 %37, i32* %loops, align 4
  %38 = load i32, i32* %loops, align 4
  %39 = load i32, i32* @epoch_length, align 4
  %cmp25 = icmp slt i32 %38, %39
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i32, i32* %num_epochs, align 4
  %42 = load i32, i32* @epoch_length, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i32 0, i32 0), i32 %41, i32 %42)
  call void @exit(i32 0) #6
  unreachable

if.end.29:                                        ; preds = %do.end
  %43 = load i32, i32* %use_epoch_length_as_num_of_epochs, align 4
  %tobool30 = icmp ne i32 %43, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %44 = load i32, i32* %num_epochs, align 4
  %45 = load i32, i32* @epoch_length, align 4
  %div = sdiv i32 %44, %45
  store i32 %div, i32* @epoch_length, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %46 = load i32, i32* %num_epochs, align 4
  %47 = load i32, i32* @epoch_length, align 4
  %rem = srem i32 %46, %47
  %tobool33 = icmp ne i32 %rem, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.32
  %48 = load i32, i32* %num_epochs, align 4
  %49 = load i32, i32* @epoch_length, align 4
  %div35 = sdiv i32 %48, %49
  %add = add nsw i32 %div35, 1
  store i32 %add, i32* %num_epochs, align 4
  br label %if.end.37

if.else:                                          ; preds = %if.end.32
  %50 = load i32, i32* %num_epochs, align 4
  %51 = load i32, i32* @epoch_length, align 4
  %div36 = sdiv i32 %50, %51
  store i32 %div36, i32* %num_epochs, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %52 = load i32, i32* %num_epochs, align 4
  %cmp38 = icmp eq i32 %52, 0
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.37
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i32, i32* %c.addr, align 4
  %sub41 = sub nsw i32 %54, 1
  %idxprom42 = sext i32 %sub41 to i64
  %55 = load i8**, i8*** %v.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %55, i64 %idxprom42
  %56 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* %56)
  call void @exit(i32 0) #6
  unreachable

if.end.45:                                        ; preds = %if.end.37
  %57 = load i32, i32* %num_epochs, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %58)
  %59 = load i32, i32* %fastspeed, align 4
  %tobool47 = icmp ne i32 %59, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @speedup_test(%struct._IO_FILE* %60)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %61 = load i32, i32* %imix, align 4
  %tobool50 = icmp ne i32 %61, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call52 = call i64 @imix_test(%struct._IO_FILE* %62)
  store i64 %call52, i64* %mem_ops, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %63 = load i32, i32* %data, align 4
  %tobool54 = icmp ne i32 %63, 0
  br i1 %tobool54, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.53
  %64 = load i32, i32* %name, align 4
  %tobool55 = icmp ne i32 %64, 0
  br i1 %tobool55, label %if.then.58, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false
  %65 = load i32, i32* %speed, align 4
  %tobool57 = icmp ne i32 %65, 0
  br i1 %tobool57, label %if.then.58, label %if.end.320

if.then.58:                                       ; preds = %lor.lhs.false.56, %lor.lhs.false, %if.end.53
  %66 = load i32, i32* %num_epochs, align 4
  %conv59 = sext i32 %66 to i64
  %mul = mul i64 %conv59, 56
  %call60 = call noalias i8* @malloc(i64 %mul) #5
  %67 = bitcast i8* %call60 to %struct.epoch_t*
  store %struct.epoch_t* %67, %struct.epoch_t** %epoch, align 8
  %68 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %tobool61 = icmp ne %struct.epoch_t* %68, null
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.then.58
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.64:                                        ; preds = %if.then.58
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.64
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %num_epochs, align 4
  %cmp65 = icmp slt i32 %70, %71
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %72 to i64
  %73 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx68 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %73, i64 %idxprom67
  %trans69 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx68, i32 0, i32 0
  store %struct.trans_t* null, %struct.trans_t** %trans69, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %74 to i64
  %75 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx71 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %75, i64 %idxprom70
  %last = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx71, i32 0, i32 1
  store %struct.trans_t* null, %struct.trans_t** %last, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %76 to i64
  %77 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx73 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %77, i64 %idxprom72
  %first_trans = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx73, i32 0, i32 2
  store i32 1, i32* %first_trans, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, i32* %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i64, i64* %mem_ops, align 8
  %80 = load i32, i32* %loops, align 4
  %conv74 = sext i32 %80 to i64
  %add75 = add i64 %79, %conv74
  %add76 = add i64 %add75, 10
  %mul77 = mul i64 %add76, 8
  %call78 = call noalias i8* @malloc(i64 %mul77) #5
  %81 = bitcast i8* %call78 to i8**
  store i8** %81, i8*** %indata_lines, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call79 = call i32 @feof(%struct._IO_FILE* %82) #5
  %tobool80 = icmp ne i32 %call79, 0
  %lnot81 = xor i1 %tobool80, true
  br i1 %lnot81, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call83 = call noalias i8* @malloc(i64 50) #5
  store i8* %call83, i8** %indata_line, align 8
  %83 = load i8*, i8** %indata_line, align 8
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call84 = call i8* @fgets(i8* %83, i32 50, %struct._IO_FILE* %84)
  %85 = load i8*, i8** %indata_line, align 8
  %86 = load i32, i32* %counter, align 4
  %inc85 = add nsw i32 %86, 1
  store i32 %inc85, i32* %counter, align 4
  %idxprom86 = sext i32 %86 to i64
  %87 = load i8**, i8*** %indata_lines, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %87, i64 %idxprom86
  store i8* %85, i8** %arrayidx87, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %counter, align 4
  %88 = load i32, i32* %counter, align 4
  %inc88 = add nsw i32 %88, 1
  store i32 %inc88, i32* %counter, align 4
  %idxprom89 = sext i32 %88 to i64
  %89 = load i8**, i8*** %indata_lines, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %89, i64 %idxprom89
  %90 = load i8*, i8** %arrayidx90, align 8
  %arraydecay91 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call92 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay91, i64* %issue_no) #5
  %91 = load i64, i64* %issue_no, align 8
  %92 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx93 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %92, i64 0
  %start_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx93, i32 0, i32 3
  store i64 %91, i64* %start_time, align 8
  store i32 -1, i32* %varv_in_epoch, align 4
  store i32 0, i32* %place_in_varv, align 4
  br label %while.body.95

while.body.95:                                    ; preds = %while.end, %if.end.318
  %arraydecay96 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call97 = call i32 @strcmp(i8* %arraydecay96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #7
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.else.300, label %if.then.99

if.then.99:                                       ; preds = %while.body.95
  %93 = load i32, i32* %varv, align 4
  %inc100 = add nsw i32 %93, 1
  store i32 %inc100, i32* %varv, align 4
  %94 = load i32, i32* %varv_in_epoch, align 4
  %inc101 = add nsw i32 %94, 1
  store i32 %inc101, i32* %varv_in_epoch, align 4
  %95 = load i32, i32* %varv_in_epoch, align 4
  %96 = load i32, i32* @epoch_length, align 4
  %cmp102 = icmp eq i32 %95, %96
  br i1 %cmp102, label %if.then.104, label %if.end.122

if.then.104:                                      ; preds = %if.then.99
  store i32 0, i32* %place_in_varv, align 4
  store i32 0, i32* %varv_in_epoch, align 4
  %arraydecay105 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %97 = load i64, i64* %address, align 8
  %call106 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i64 %97) #5
  %arraydecay107 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call108 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64* %issue_no) #5
  %98 = load i64, i64* %data_pen_tot, align 8
  %99 = load i64, i64* %issue_no, align 8
  %add109 = add i64 %99, %98
  store i64 %add109, i64* %issue_no, align 8
  %100 = load i64, i64* %issue_no, align 8
  %101 = load i32, i32* %varv, align 4
  %102 = load i32, i32* @epoch_length, align 4
  %div110 = sdiv i32 %101, %102
  %idxprom111 = sext i32 %div110 to i64
  %103 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx112 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %103, i64 %idxprom111
  %start_time113 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx112, i32 0, i32 3
  store i64 %100, i64* %start_time113, align 8
  %104 = load i32, i32* %varv, align 4
  %105 = load i32, i32* @epoch_length, align 4
  %div114 = sdiv i32 %104, %105
  %tobool115 = icmp ne i32 %div114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %if.then.104
  %106 = load i64, i64* %issue_no, align 8
  %107 = load i32, i32* %varv, align 4
  %108 = load i32, i32* @epoch_length, align 4
  %div117 = sdiv i32 %107, %108
  %sub118 = sub nsw i32 %div117, 1
  %idxprom119 = sext i32 %sub118 to i64
  %109 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx120 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %109, i64 %idxprom119
  %end_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx120, i32 0, i32 4
  store i64 %106, i64* %end_time, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %if.then.104
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.99
  br label %while.body.124

while.body.124:                                   ; preds = %if.end.122, %if.end.297
  %110 = load i32, i32* %counter, align 4
  %inc125 = add nsw i32 %110, 1
  store i32 %inc125, i32* %counter, align 4
  %idxprom126 = sext i32 %110 to i64
  %111 = load i8**, i8*** %indata_lines, align 8
  %arrayidx127 = getelementptr inbounds i8*, i8** %111, i64 %idxprom126
  %112 = load i8*, i8** %arrayidx127, align 8
  %arraydecay128 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call129 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay128, i64* %address, i64* %issue_no) #5
  %113 = load i64, i64* %data_pen_tot, align 8
  %114 = load i64, i64* %issue_no, align 8
  %add130 = add i64 %114, %113
  store i64 %add130, i64* %issue_no, align 8
  %arraydecay131 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call132 = call i32 @strcmp(i8* %arraydecay131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #7
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.else.175, label %if.then.134

if.then.134:                                      ; preds = %while.body.124
  %115 = load i32, i32* %load_pen, align 4
  %conv135 = sext i32 %115 to i64
  %116 = load i64, i64* %data_pen_tot, align 8
  %add136 = add i64 %116, %conv135
  store i64 %add136, i64* %data_pen_tot, align 8
  store i32 1, i32* %load_store, align 4
  %call137 = call noalias i8* @malloc(i64 32) #5
  %117 = bitcast i8* %call137 to %struct.trans_t*
  store %struct.trans_t* %117, %struct.trans_t** %trans, align 8
  %118 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %load_store138 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %118, i32 0, i32 0
  store i32 1, i32* %load_store138, align 4
  %119 = load i64, i64* %address, align 8
  %120 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %address139 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %120, i32 0, i32 1
  store i64 %119, i64* %address139, align 8
  %121 = load i64, i64* %issue_no, align 8
  %122 = load i32, i32* %varv, align 4
  %123 = load i32, i32* @epoch_length, align 4
  %div140 = sdiv i32 %122, %123
  %idxprom141 = sext i32 %div140 to i64
  %124 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx142 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %124, i64 %idxprom141
  %start_time143 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx142, i32 0, i32 3
  %125 = load i64, i64* %start_time143, align 8
  %sub144 = sub i64 %121, %125
  %126 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %issue_no145 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %126, i32 0, i32 2
  store i64 %sub144, i64* %issue_no145, align 8
  %127 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %next = getelementptr inbounds %struct.trans_t, %struct.trans_t* %127, i32 0, i32 3
  store i8* null, i8** %next, align 8
  %128 = load i32, i32* %varv, align 4
  %129 = load i32, i32* @epoch_length, align 4
  %div146 = sdiv i32 %128, %129
  %idxprom147 = sext i32 %div146 to i64
  %130 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx148 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %130, i64 %idxprom147
  %first_trans149 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx148, i32 0, i32 2
  %131 = load i32, i32* %first_trans149, align 4
  %tobool150 = icmp ne i32 %131, 0
  br i1 %tobool150, label %if.then.151, label %if.else.164

if.then.151:                                      ; preds = %if.then.134
  %132 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %133 = load i32, i32* %varv, align 4
  %134 = load i32, i32* @epoch_length, align 4
  %div152 = sdiv i32 %133, %134
  %idxprom153 = sext i32 %div152 to i64
  %135 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx154 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %135, i64 %idxprom153
  %trans155 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx154, i32 0, i32 0
  store %struct.trans_t* %132, %struct.trans_t** %trans155, align 8
  %136 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %137 = load i32, i32* %varv, align 4
  %138 = load i32, i32* @epoch_length, align 4
  %div156 = sdiv i32 %137, %138
  %idxprom157 = sext i32 %div156 to i64
  %139 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx158 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %139, i64 %idxprom157
  %last159 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx158, i32 0, i32 1
  store %struct.trans_t* %136, %struct.trans_t** %last159, align 8
  %140 = load i32, i32* %varv, align 4
  %141 = load i32, i32* @epoch_length, align 4
  %div160 = sdiv i32 %140, %141
  %idxprom161 = sext i32 %div160 to i64
  %142 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx162 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %142, i64 %idxprom161
  %first_trans163 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx162, i32 0, i32 2
  store i32 0, i32* %first_trans163, align 4
  br label %if.end.174

if.else.164:                                      ; preds = %if.then.134
  %143 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %144 = bitcast %struct.trans_t* %143 to i8*
  %145 = load i32, i32* %varv, align 4
  %146 = load i32, i32* @epoch_length, align 4
  %div165 = sdiv i32 %145, %146
  %idxprom166 = sext i32 %div165 to i64
  %147 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx167 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %147, i64 %idxprom166
  %last168 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx167, i32 0, i32 1
  %148 = load %struct.trans_t*, %struct.trans_t** %last168, align 8
  %next169 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %148, i32 0, i32 3
  store i8* %144, i8** %next169, align 8
  %149 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %150 = load i32, i32* %varv, align 4
  %151 = load i32, i32* @epoch_length, align 4
  %div170 = sdiv i32 %150, %151
  %idxprom171 = sext i32 %div170 to i64
  %152 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx172 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %152, i64 %idxprom171
  %last173 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx172, i32 0, i32 1
  store %struct.trans_t* %149, %struct.trans_t** %last173, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.164, %if.then.151
  br label %if.end.224

if.else.175:                                      ; preds = %while.body.124
  %arraydecay176 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call177 = call i32 @strcmp(i8* %arraydecay176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #7
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.else.222, label %if.then.179

if.then.179:                                      ; preds = %if.else.175
  %153 = load i32, i32* %store_pen, align 4
  %conv180 = sext i32 %153 to i64
  %154 = load i64, i64* %data_pen_tot, align 8
  %add181 = add i64 %154, %conv180
  store i64 %add181, i64* %data_pen_tot, align 8
  store i32 2, i32* %load_store, align 4
  %call182 = call noalias i8* @malloc(i64 32) #5
  %155 = bitcast i8* %call182 to %struct.trans_t*
  store %struct.trans_t* %155, %struct.trans_t** %trans, align 8
  %156 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %load_store183 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %156, i32 0, i32 0
  store i32 2, i32* %load_store183, align 4
  %157 = load i64, i64* %address, align 8
  %158 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %address184 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %158, i32 0, i32 1
  store i64 %157, i64* %address184, align 8
  %159 = load i64, i64* %issue_no, align 8
  %160 = load i32, i32* %varv, align 4
  %161 = load i32, i32* @epoch_length, align 4
  %div185 = sdiv i32 %160, %161
  %idxprom186 = sext i32 %div185 to i64
  %162 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx187 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %162, i64 %idxprom186
  %start_time188 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx187, i32 0, i32 3
  %163 = load i64, i64* %start_time188, align 8
  %sub189 = sub i64 %159, %163
  %164 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %issue_no190 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %164, i32 0, i32 2
  store i64 %sub189, i64* %issue_no190, align 8
  %165 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %next191 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %165, i32 0, i32 3
  store i8* null, i8** %next191, align 8
  %166 = load i64, i64* %address, align 8
  %167 = load i32, i32* %varv, align 4
  %168 = load i32, i32* @epoch_length, align 4
  %div192 = sdiv i32 %167, %168
  %169 = load i32, i32* %place_in_varv, align 4
  call void @def_list_mod(i64 %166, i32 %div192, i32 %169)
  %170 = load i32, i32* %varv, align 4
  %171 = load i32, i32* @epoch_length, align 4
  %div193 = sdiv i32 %170, %171
  %idxprom194 = sext i32 %div193 to i64
  %172 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx195 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %172, i64 %idxprom194
  %first_trans196 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx195, i32 0, i32 2
  %173 = load i32, i32* %first_trans196, align 4
  %tobool197 = icmp ne i32 %173, 0
  br i1 %tobool197, label %if.then.198, label %if.else.211

if.then.198:                                      ; preds = %if.then.179
  %174 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %175 = load i32, i32* %varv, align 4
  %176 = load i32, i32* @epoch_length, align 4
  %div199 = sdiv i32 %175, %176
  %idxprom200 = sext i32 %div199 to i64
  %177 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx201 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %177, i64 %idxprom200
  %trans202 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx201, i32 0, i32 0
  store %struct.trans_t* %174, %struct.trans_t** %trans202, align 8
  %178 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %179 = load i32, i32* %varv, align 4
  %180 = load i32, i32* @epoch_length, align 4
  %div203 = sdiv i32 %179, %180
  %idxprom204 = sext i32 %div203 to i64
  %181 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx205 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %181, i64 %idxprom204
  %last206 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx205, i32 0, i32 1
  store %struct.trans_t* %178, %struct.trans_t** %last206, align 8
  %182 = load i32, i32* %varv, align 4
  %183 = load i32, i32* @epoch_length, align 4
  %div207 = sdiv i32 %182, %183
  %idxprom208 = sext i32 %div207 to i64
  %184 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx209 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %184, i64 %idxprom208
  %first_trans210 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx209, i32 0, i32 2
  store i32 0, i32* %first_trans210, align 4
  br label %if.end.221

if.else.211:                                      ; preds = %if.then.179
  %185 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %186 = bitcast %struct.trans_t* %185 to i8*
  %187 = load i32, i32* %varv, align 4
  %188 = load i32, i32* @epoch_length, align 4
  %div212 = sdiv i32 %187, %188
  %idxprom213 = sext i32 %div212 to i64
  %189 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx214 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %189, i64 %idxprom213
  %last215 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx214, i32 0, i32 1
  %190 = load %struct.trans_t*, %struct.trans_t** %last215, align 8
  %next216 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %190, i32 0, i32 3
  store i8* %186, i8** %next216, align 8
  %191 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %192 = load i32, i32* %varv, align 4
  %193 = load i32, i32* @epoch_length, align 4
  %div217 = sdiv i32 %192, %193
  %idxprom218 = sext i32 %div217 to i64
  %194 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx219 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %194, i64 %idxprom218
  %last220 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx219, i32 0, i32 1
  store %struct.trans_t* %191, %struct.trans_t** %last220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.211, %if.then.198
  br label %if.end.223

if.else.222:                                      ; preds = %if.else.175
  br label %while.end.299

if.end.223:                                       ; preds = %if.end.221
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.end.174
  %195 = load i32, i32* %data, align 4
  %tobool225 = icmp ne i32 %195, 0
  br i1 %tobool225, label %if.then.228, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %if.end.224
  %196 = load i32, i32* %speed, align 4
  %tobool227 = icmp ne i32 %196, 0
  br i1 %tobool227, label %if.then.228, label %if.end.281

if.then.228:                                      ; preds = %lor.lhs.false.226, %if.end.224
  %197 = load i32, i32* %load_store, align 4
  %cmp229 = icmp eq i32 %197, 1
  br i1 %cmp229, label %if.then.231, label %if.else.279

if.then.231:                                      ; preds = %if.then.228
  store i32 0, i32* %i, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.276, %if.then.231
  %198 = load i32, i32* %i, align 4
  %199 = load i32, i32* %varv, align 4
  %200 = load i32, i32* @epoch_length, align 4
  %div233 = sdiv i32 %199, %200
  %cmp234 = icmp slt i32 %198, %div233
  br i1 %cmp234, label %for.body.236, label %for.end.278

for.body.236:                                     ; preds = %for.cond.232
  %201 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %201 to i64
  %202 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx238 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %202, i64 %idxprom237
  %trans239 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx238, i32 0, i32 0
  %203 = load %struct.trans_t*, %struct.trans_t** %trans239, align 8
  store %struct.trans_t* %203, %struct.trans_t** %trans, align 8
  store i32 -1, i32* %place_in_epoch, align 4
  br label %while.cond.240

while.cond.240:                                   ; preds = %if.end.273, %for.body.236
  %204 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %cmp241 = icmp ne %struct.trans_t* %204, null
  br i1 %cmp241, label %while.body.243, label %while.end.275

while.body.243:                                   ; preds = %while.cond.240
  %205 = load i32, i32* %place_in_epoch, align 4
  %inc244 = add nsw i32 %205, 1
  store i32 %inc244, i32* %place_in_epoch, align 4
  %206 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %load_store245 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %206, i32 0, i32 0
  %207 = load i32, i32* %load_store245, align 4
  %cmp246 = icmp eq i32 %207, 2
  br i1 %cmp246, label %land.lhs.true, label %if.end.273

land.lhs.true:                                    ; preds = %while.body.243
  %208 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %address248 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %208, i32 0, i32 1
  %209 = load i64, i64* %address248, align 8
  %210 = load i64, i64* %address, align 8
  %cmp249 = icmp eq i64 %209, %210
  br i1 %cmp249, label %if.then.251, label %if.end.273

if.then.251:                                      ; preds = %land.lhs.true
  store %struct.def_list_t* null, %struct.def_list_t** %def_placeholder, align 8
  %211 = load i64, i64* %address, align 8
  %call252 = call %struct.def_list_t* @def_list_lookup(i64 %211)
  store %struct.def_list_t* %call252, %struct.def_list_t** %def_placeholder, align 8
  %212 = load %struct.def_list_t*, %struct.def_list_t** %def_placeholder, align 8
  %cmp253 = icmp ne %struct.def_list_t* %212, null
  br i1 %cmp253, label %if.then.255, label %if.end.272

if.then.255:                                      ; preds = %if.then.251
  %213 = load %struct.def_list_t*, %struct.def_list_t** %def_placeholder, align 8
  %epoch256 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %213, i32 0, i32 2
  %214 = load i32, i32* %epoch256, align 4
  %215 = load i32, i32* %i, align 4
  %cmp257 = icmp eq i32 %214, %215
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.271

land.lhs.true.259:                                ; preds = %if.then.255
  %216 = load %struct.def_list_t*, %struct.def_list_t** %def_placeholder, align 8
  %place_in_epoch260 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %216, i32 0, i32 3
  %217 = load i32, i32* %place_in_epoch260, align 4
  %218 = load i32, i32* %place_in_epoch, align 4
  %cmp261 = icmp eq i32 %217, %218
  br i1 %cmp261, label %if.then.263, label %if.end.271

if.then.263:                                      ; preds = %land.lhs.true.259
  %219 = load i64, i64* %address, align 8
  call void @conflict_list(i64 %219)
  %220 = load i64, i64* %address, align 8
  %221 = load i32, i32* %i, align 4
  %222 = load i32, i32* %place_in_epoch, align 4
  %223 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %issue_no264 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %223, i32 0, i32 2
  %224 = load i64, i64* %issue_no264, align 8
  %225 = load i32, i32* %varv, align 4
  %226 = load i32, i32* @epoch_length, align 4
  %div265 = sdiv i32 %225, %226
  %227 = load i32, i32* %place_in_varv, align 4
  %228 = load i64, i64* %issue_no, align 8
  %229 = load i32, i32* %varv, align 4
  %230 = load i32, i32* @epoch_length, align 4
  %div266 = sdiv i32 %229, %230
  %idxprom267 = sext i32 %div266 to i64
  %231 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx268 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %231, i64 %idxprom267
  %start_time269 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx268, i32 0, i32 3
  %232 = load i64, i64* %start_time269, align 8
  %sub270 = sub i64 %228, %232
  call void @hard_raw_mod(i64 %220, i32 %221, i32 %222, i64 %224, i32 %div265, i32 %227, i64 %sub270)
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.263, %land.lhs.true.259, %if.then.255
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.251
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %land.lhs.true, %while.body.243
  %233 = load %struct.trans_t*, %struct.trans_t** %trans, align 8
  %next274 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %233, i32 0, i32 3
  %234 = load i8*, i8** %next274, align 8
  %235 = bitcast i8* %234 to %struct.trans_t*
  store %struct.trans_t* %235, %struct.trans_t** %trans, align 8
  br label %while.cond.240

while.end.275:                                    ; preds = %while.cond.240
  br label %for.inc.276

for.inc.276:                                      ; preds = %while.end.275
  %236 = load i32, i32* %i, align 4
  %inc277 = add nsw i32 %236, 1
  store i32 %inc277, i32* %i, align 4
  br label %for.cond.232

for.end.278:                                      ; preds = %for.cond.232
  br label %if.end.280

if.else.279:                                      ; preds = %if.then.228
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.279, %for.end.278
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %lor.lhs.false.226
  %237 = load i32, i32* %name, align 4
  %tobool282 = icmp ne i32 %237, 0
  br i1 %tobool282, label %if.then.283, label %if.end.285

if.then.283:                                      ; preds = %if.end.281
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.285:                                       ; preds = %if.end.281
  %239 = load i32, i32* %verbose, align 4
  %tobool286 = icmp ne i32 %239, 0
  br i1 %tobool286, label %land.lhs.true.287, label %if.end.297

land.lhs.true.287:                                ; preds = %if.end.285
  %240 = load i32, i32* %varv, align 4
  %rem288 = srem i32 %240, 10
  %tobool289 = icmp ne i32 %rem288, 0
  br i1 %tobool289, label %if.end.297, label %if.then.290

if.then.290:                                      ; preds = %land.lhs.true.287
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %242 = load i32, i32* %varv, align 4
  %conv291 = sitofp i32 %242 to float
  %mul292 = fmul float 1.000000e+02, %conv291
  %243 = load i32, i32* %loops, align 4
  %conv293 = sitofp i32 %243 to float
  %div294 = fdiv float %mul292, %conv293
  %conv295 = fpext float %div294 to double
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), double %conv295)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.290, %land.lhs.true.287, %if.end.285
  %244 = load i32, i32* %place_in_varv, align 4
  %inc298 = add nsw i32 %244, 1
  store i32 %inc298, i32* %place_in_varv, align 4
  br label %while.body.124

while.end.299:                                    ; preds = %if.else.222
  br label %if.end.318

if.else.300:                                      ; preds = %while.body.95
  %arraydecay301 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call302 = call i32 @strcmp(i8* %arraydecay301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #7
  %tobool303 = icmp ne i32 %call302, 0
  br i1 %tobool303, label %if.else.309, label %if.then.304

if.then.304:                                      ; preds = %if.else.300
  %245 = load i32, i32* %verbose, align 4
  %tobool305 = icmp ne i32 %245, 0
  br i1 %tobool305, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %if.then.304
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %if.then.304
  br label %while.end.319

if.else.309:                                      ; preds = %if.else.300
  %247 = load i32, i32* %verbose, align 4
  %tobool310 = icmp ne i32 %247, 0
  br i1 %tobool310, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %if.else.309
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %if.else.309
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %250 = load i32, i32* %c.addr, align 4
  %sub314 = sub nsw i32 %250, 1
  %idxprom315 = sext i32 %sub314 to i64
  %251 = load i8**, i8*** %v.addr, align 8
  %arrayidx316 = getelementptr inbounds i8*, i8** %251, i64 %idxprom315
  %252 = load i8*, i8** %arrayidx316, align 8
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %249, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i8* %252)
  call void @exit(i32 1) #6
  unreachable

if.end.318:                                       ; preds = %while.end.299
  br label %while.body.95

while.end.319:                                    ; preds = %if.end.308
  br label %if.end.320

if.end.320:                                       ; preds = %while.end.319, %lor.lhs.false.56
  %253 = load i32, i32* %data, align 4
  %tobool321 = icmp ne i32 %253, 0
  br i1 %tobool321, label %if.then.322, label %if.end.331

if.then.322:                                      ; preds = %if.end.320
  %254 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %254, %struct.conf_list_t** %conf_iterator, align 8
  br label %while.cond.323

while.cond.323:                                   ; preds = %while.body.326, %if.then.322
  %255 = load %struct.conf_list_t*, %struct.conf_list_t** %conf_iterator, align 8
  %cmp324 = icmp ne %struct.conf_list_t* %255, null
  br i1 %cmp324, label %while.body.326, label %while.end.330

while.body.326:                                   ; preds = %while.cond.323
  %256 = load %struct.conf_list_t*, %struct.conf_list_t** %conf_iterator, align 8
  %accesser = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %256, i32 0, i32 2
  %257 = load i32, i32* %accesser, align 4
  %258 = load %struct.conf_list_t*, %struct.conf_list_t** %conf_iterator, align 8
  %address327 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %258, i32 0, i32 1
  %259 = load i64, i64* %address327, align 8
  %call328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i32 %257, i64 %259)
  %260 = load %struct.conf_list_t*, %struct.conf_list_t** %conf_iterator, align 8
  %next329 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %260, i32 0, i32 0
  %261 = load i8*, i8** %next329, align 8
  %262 = bitcast i8* %261 to %struct.conf_list_t*
  store %struct.conf_list_t* %262, %struct.conf_list_t** %conf_iterator, align 8
  br label %while.cond.323

while.end.330:                                    ; preds = %while.cond.323
  br label %if.end.331

if.end.331:                                       ; preds = %while.end.330, %if.end.320
  %263 = load i32, i32* %speed, align 4
  %tobool332 = icmp ne i32 %263, 0
  br i1 %tobool332, label %if.then.333, label %if.end.385

if.then.333:                                      ; preds = %if.end.331
  %264 = load i32, i32* %varv, align 4
  %265 = load i32, i32* @epoch_length, align 4
  %div334 = sdiv i32 %264, %265
  %idxprom335 = sext i32 %div334 to i64
  %266 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx336 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %266, i64 %idxprom335
  %start_time337 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx336, i32 0, i32 3
  %267 = load i64, i64* %start_time337, align 8
  %268 = load i32, i32* %varv, align 4
  %269 = load i32, i32* @epoch_length, align 4
  %div338 = sdiv i32 %268, %269
  %idxprom339 = sext i32 %div338 to i64
  %270 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx340 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %270, i64 %idxprom339
  %last341 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx340, i32 0, i32 1
  %271 = load %struct.trans_t*, %struct.trans_t** %last341, align 8
  %issue_no342 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %271, i32 0, i32 2
  %272 = load i64, i64* %issue_no342, align 8
  %add343 = add i64 %267, %272
  %273 = load i32, i32* %varv, align 4
  %274 = load i32, i32* @epoch_length, align 4
  %div344 = sdiv i32 %273, %274
  %idxprom345 = sext i32 %div344 to i64
  %275 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %arrayidx346 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %275, i64 %idxprom345
  %end_time347 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx346, i32 0, i32 4
  store i64 %add343, i64* %end_time347, align 8
  %276 = load i32, i32* %forward, align 4
  %tobool348 = icmp ne i32 %276, 0
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.then.333
  call void (...) @find_hard_raws()
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.then.333
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @speedup_test(%struct._IO_FILE* %277)
  %278 = load i32, i32* %kernel, align 4
  %cmp351 = icmp eq i32 %278, 1
  br i1 %cmp351, label %if.then.353, label %if.else.354

if.then.353:                                      ; preds = %if.end.350
  %279 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %280 = load i32, i32* %num_epochs, align 4
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile, align 8
  %282 = load i32, i32* %show_speedup, align 4
  %283 = load i32, i32* %thread_pen, align 4
  %284 = load i32, i32* %commit_pen, align 4
  call void @specul_time_o(%struct.epoch_t* %279, i32 %280, %struct._IO_FILE* %281, i32 %282, i32 %283, i32 %284)
  br label %if.end.384

if.else.354:                                      ; preds = %if.end.350
  %285 = load i32, i32* %kernel, align 4
  %cmp355 = icmp eq i32 %285, 2
  br i1 %cmp355, label %if.then.357, label %if.else.367

if.then.357:                                      ; preds = %if.else.354
  %286 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %287 = load i32, i32* %num_epochs, align 4
  %288 = load i32, i32* %cpulimit, align 4
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile, align 8
  %290 = load i32, i32* %show_speedup, align 4
  %291 = load i32, i32* %thread_pen, align 4
  %292 = load i32, i32* %commit_pen, align 4
  call void @specul_time_r(%struct.epoch_t* %286, i32 %287, i32 %288, %struct._IO_FILE* %289, i32 %290, i32 %291, i32 %292)
  %293 = load i32, i32* %configs, align 4
  %tobool358 = icmp ne i32 %293, 0
  br i1 %tobool358, label %if.then.359, label %if.end.366

if.then.359:                                      ; preds = %if.then.357
  store i32 1, i32* %i, align 4
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.body.363, %if.then.359
  %294 = load i32, i32* %i, align 4
  %295 = load i32, i32* %configs, align 4
  %cmp361 = icmp sle i32 %294, %295
  br i1 %cmp361, label %for.body.363, label %for.end.365

for.body.363:                                     ; preds = %for.cond.360
  %296 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %297 = load i32, i32* %num_epochs, align 4
  %298 = load i32, i32* %i, align 4
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile, align 8
  %300 = load i32, i32* %show_speedup, align 4
  %301 = load i32, i32* %thread_pen, align 4
  %302 = load i32, i32* %commit_pen, align 4
  call void @specul_time_r(%struct.epoch_t* %296, i32 %297, i32 %298, %struct._IO_FILE* %299, i32 %300, i32 %301, i32 %302)
  %303 = load i32, i32* %i, align 4
  %mul364 = mul nsw i32 %303, 2
  store i32 %mul364, i32* %i, align 4
  br label %for.cond.360

for.end.365:                                      ; preds = %for.cond.360
  br label %if.end.366

if.end.366:                                       ; preds = %for.end.365, %if.then.357
  br label %if.end.383

if.else.367:                                      ; preds = %if.else.354
  %304 = load i32, i32* %kernel, align 4
  %cmp368 = icmp eq i32 %304, 3
  br i1 %cmp368, label %if.then.370, label %if.else.380

if.then.370:                                      ; preds = %if.else.367
  %305 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %306 = load i32, i32* %num_epochs, align 4
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile, align 8
  %308 = load i32, i32* %show_speedup, align 4
  %309 = load i32, i32* %thread_pen, align 4
  %310 = load i32, i32* %commit_pen, align 4
  call void @specul_time_o(%struct.epoch_t* %305, i32 %306, %struct._IO_FILE* %307, i32 %308, i32 %309, i32 %310)
  %311 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %312 = load i32, i32* %num_epochs, align 4
  %313 = load i32, i32* %cpulimit, align 4
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile, align 8
  %315 = load i32, i32* %show_speedup, align 4
  %316 = load i32, i32* %thread_pen, align 4
  %317 = load i32, i32* %commit_pen, align 4
  call void @specul_time_r(%struct.epoch_t* %311, i32 %312, i32 %313, %struct._IO_FILE* %314, i32 %315, i32 %316, i32 %317)
  %318 = load i32, i32* %configs, align 4
  %tobool371 = icmp ne i32 %318, 0
  br i1 %tobool371, label %if.then.372, label %if.end.379

if.then.372:                                      ; preds = %if.then.370
  store i32 1, i32* %i, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.body.376, %if.then.372
  %319 = load i32, i32* %i, align 4
  %320 = load i32, i32* %configs, align 4
  %cmp374 = icmp sle i32 %319, %320
  br i1 %cmp374, label %for.body.376, label %for.end.378

for.body.376:                                     ; preds = %for.cond.373
  %321 = load %struct.epoch_t*, %struct.epoch_t** %epoch, align 8
  %322 = load i32, i32* %num_epochs, align 4
  %323 = load i32, i32* %i, align 4
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile, align 8
  %325 = load i32, i32* %show_speedup, align 4
  %326 = load i32, i32* %thread_pen, align 4
  %327 = load i32, i32* %commit_pen, align 4
  call void @specul_time_r(%struct.epoch_t* %321, i32 %322, i32 %323, %struct._IO_FILE* %324, i32 %325, i32 %326, i32 %327)
  %328 = load i32, i32* %i, align 4
  %mul377 = mul nsw i32 %328, 2
  store i32 %mul377, i32* %i, align 4
  br label %for.cond.373

for.end.378:                                      ; preds = %for.cond.373
  br label %if.end.379

if.end.379:                                       ; preds = %for.end.378, %if.then.370
  br label %if.end.382

if.else.380:                                      ; preds = %if.else.367
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.382:                                       ; preds = %if.end.379
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.end.366
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.then.353
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.end.331
  ret i32 0
}

declare i32 @parse_settings(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @printf(i8*, ...) #1

declare void @rewind(%struct._IO_FILE*) #1

declare void @speedup_test(%struct._IO_FILE*) #1

declare i64 @imix_test(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @def_list_mod(i64, i32, i32) #1

declare %struct.def_list_t* @def_list_lookup(i64) #1

declare void @conflict_list(i64) #1

declare void @hard_raw_mod(i64, i32, i32, i64, i32, i32, i64) #1

declare void @find_hard_raws(...) #1

declare void @specul_time_o(%struct.epoch_t*, i32, %struct._IO_FILE*, i32, i32, i32) #1

declare void @specul_time_r(%struct.epoch_t*, i32, i32, %struct._IO_FILE*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
