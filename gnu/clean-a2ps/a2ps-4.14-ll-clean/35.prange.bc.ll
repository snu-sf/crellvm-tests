; ModuleID = './lib/prange.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_range = type { %struct.darray*, i8 }
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.interval = type { i32, i32 }
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
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Page Range Interval\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid interval `%s'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"toc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d-\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1-%d\00", align 1

; Function Attrs: nounwind uwtable
define %struct.page_range* @page_range_new() #0 {
entry:
  %res = alloca %struct.page_range*, align 8
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.page_range*
  store %struct.page_range* %0, %struct.page_range** %res, align 8
  %call1 = call %struct.darray* @da_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i64 5, i32 1, i64 10, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.interval*, %struct._IO_FILE*)* @interval_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  %1 = load %struct.page_range*, %struct.page_range** %res, align 8
  %intervals = getelementptr inbounds %struct.page_range, %struct.page_range* %1, i32 0, i32 0
  store %struct.darray* %call1, %struct.darray** %intervals, align 8
  %2 = load %struct.page_range*, %struct.page_range** %res, align 8
  %toc = getelementptr inbounds %struct.page_range, %struct.page_range* %2, i32 0, i32 1
  store i8 0, i8* %toc, align 1
  %3 = load %struct.page_range*, %struct.page_range** %res, align 8
  ret %struct.page_range* %3
}

declare i8* @xmalloc(i64) #1

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @interval_self_print(%struct.interval* %interval, %struct._IO_FILE* %stream) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 0
  %1 = load i32, i32* %min, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 1
  %3 = load i32, i32* %max, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min2 = getelementptr inbounds %struct.interval, %struct.interval* %5, i32 0, i32 0
  %6 = load i32, i32* %min2, align 4
  %7 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max3 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 1
  %8 = load i32, i32* %max3, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %6, i32 %8)
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min4 = getelementptr inbounds %struct.interval, %struct.interval* %9, i32 0, i32 0
  %10 = load i32, i32* %min4, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %12 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min7 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %13 = load i32, i32* %min7, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %13)
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %15 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max10 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 1
  %16 = load i32, i32* %max10, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @page_range_free(%struct.page_range* %page_range) #0 {
entry:
  %page_range.addr = alloca %struct.page_range*, align 8
  store %struct.page_range* %page_range, %struct.page_range** %page_range.addr, align 8
  %0 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals = getelementptr inbounds %struct.page_range, %struct.page_range* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %intervals, align 8
  call void @da_free(%struct.darray* %1, void (i8*)* @free)
  %2 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %3 = bitcast %struct.page_range* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

declare void @da_free(%struct.darray*, void (i8*)*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @page_range_to_buffer(%struct.page_range* %page_range, i8* %buf, i32 %offset) #0 {
entry:
  %page_range.addr = alloca %struct.page_range*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %put_a_comma = alloca i32, align 4
  %intervals = alloca %struct.interval**, align 8
  store %struct.page_range* %page_range, %struct.page_range** %page_range.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 0, i32* %put_a_comma, align 4
  %0 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals1 = getelementptr inbounds %struct.page_range, %struct.page_range* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %intervals1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 6
  %2 = load i8**, i8*** %content, align 8
  %3 = bitcast i8** %2 to %struct.interval**
  store %struct.interval** %3, %struct.interval*** %intervals, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals2 = getelementptr inbounds %struct.page_range, %struct.page_range* %5, i32 0, i32 0
  %6 = load %struct.darray*, %struct.darray** %intervals2, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 5
  %7 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %4, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.interval**, %struct.interval*** %intervals, align 8
  %arrayidx = getelementptr inbounds %struct.interval*, %struct.interval** %9, i64 %8
  %10 = load %struct.interval*, %struct.interval** %arrayidx, align 8
  %11 = load i32, i32* %offset.addr, align 4
  %call = call i32 @interval_applies_above(%struct.interval* %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %put_a_comma, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  store i8 44, i8* %13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.interval**, %struct.interval*** %intervals, align 8
  %arrayidx5 = getelementptr inbounds %struct.interval*, %struct.interval** %15, i64 %14
  %16 = load %struct.interval*, %struct.interval** %arrayidx5, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %offset.addr, align 4
  %call6 = call i8* @interval_to_buffer(%struct.interval* %16, i8* %17, i32 %18)
  store i8* %call6, i8** %buf.addr, align 8
  store i32 1, i32* %put_a_comma, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @interval_applies_above(%struct.interval* %interval, i32 %offset) #3 {
entry:
  %retval = alloca i32, align 4
  %interval.addr = alloca %struct.interval*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 0
  %1 = load i32, i32* %min, align 4
  %2 = load i32, i32* %offset.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 1
  %4 = load i32, i32* %max, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i8* @interval_to_buffer(%struct.interval* %interval, i8* %buf, i32 %offset) #0 {
entry:
  %retval = alloca i8*, align 8
  %interval.addr = alloca %struct.interval*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %min = alloca i32, align 4
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 0, i32* %min, align 4
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 1
  %1 = load i32, i32* %max, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max1 = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 1
  %3 = load i32, i32* %max1, align 4
  %4 = load i32, i32* %offset.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %buf.addr, align 8
  store i8* %5, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min2 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 0
  %7 = load i32, i32* %min2, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.end
  %8 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min5 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 0
  %9 = load i32, i32* %min5, align 4
  %10 = load i32, i32* %offset.addr, align 4
  %cmp6 = icmp sle i32 %9, %10
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true.4
  store i32 1, i32* %min, align 4
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true.4, %if.end
  %11 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min8 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 0
  %12 = load i32, i32* %min8, align 4
  %13 = load i32, i32* %offset.addr, align 4
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* %min, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %14 = load i32, i32* %min, align 4
  %15 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max10 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 1
  %16 = load i32, i32* %max10, align 4
  %cmp11 = icmp eq i32 %14, %16
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.9
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %min, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %18) #6
  br label %if.end.32

if.else.13:                                       ; preds = %if.end.9
  %19 = load i32, i32* %min, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else.22

land.lhs.true.15:                                 ; preds = %if.else.13
  %20 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max16 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 1
  %21 = load i32, i32* %max16, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %land.lhs.true.15
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %min, align 4
  %24 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max19 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 1
  %25 = load i32, i32* %max19, align 4
  %26 = load i32, i32* %offset.addr, align 4
  %sub20 = sub nsw i32 %25, %26
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %23, i32 %sub20) #6
  br label %if.end.31

if.else.22:                                       ; preds = %land.lhs.true.15, %if.else.13
  %27 = load i32, i32* %min, align 4
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else.22
  %28 = load i8*, i8** %buf.addr, align 8
  %29 = load i32, i32* %min, align 4
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %29) #6
  br label %if.end.30

if.else.26:                                       ; preds = %if.else.22
  %30 = load i8*, i8** %buf.addr, align 8
  %31 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max27 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 1
  %32 = load i32, i32* %max27, align 4
  %33 = load i32, i32* %offset.addr, align 4
  %sub28 = sub nsw i32 %32, %33
  %call29 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %sub28) #6
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.12
  %34 = load i8*, i8** %buf.addr, align 8
  %35 = load i8*, i8** %buf.addr, align 8
  %call33 = call i64 @strlen(i8* %35) #7
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %call33
  store i8* %add.ptr, i8** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then
  %36 = load i8*, i8** %retval
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define i32 @page_range_applies_above(%struct.page_range* %page_range, i32 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %page_range.addr = alloca %struct.page_range*, align 8
  %offset.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %intervals = alloca %struct.interval**, align 8
  store %struct.page_range* %page_range, %struct.page_range** %page_range.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals1 = getelementptr inbounds %struct.page_range, %struct.page_range* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %intervals1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 6
  %2 = load i8**, i8*** %content, align 8
  %3 = bitcast i8** %2 to %struct.interval**
  store %struct.interval** %3, %struct.interval*** %intervals, align 8
  %4 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals2 = getelementptr inbounds %struct.page_range, %struct.page_range* %4, i32 0, i32 0
  %5 = load %struct.darray*, %struct.darray** %intervals2, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 5
  %6 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals3 = getelementptr inbounds %struct.page_range, %struct.page_range* %8, i32 0, i32 0
  %9 = load %struct.darray*, %struct.darray** %intervals3, align 8
  %len4 = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 5
  %10 = load i64, i64* %len4, align 8
  %cmp5 = icmp ult i64 %7, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.interval**, %struct.interval*** %intervals, align 8
  %arrayidx = getelementptr inbounds %struct.interval*, %struct.interval** %12, i64 %11
  %13 = load %struct.interval*, %struct.interval** %arrayidx, align 8
  %min = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  %14 = load i32, i32* %min, align 4
  %15 = load i32, i32* %offset.addr, align 4
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.interval**, %struct.interval*** %intervals, align 8
  %arrayidx7 = getelementptr inbounds %struct.interval*, %struct.interval** %17, i64 %16
  %18 = load %struct.interval*, %struct.interval** %arrayidx7, align 8
  %max = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 1
  %19 = load i32, i32* %max, align 4
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @a2ps_page_range_set_string(%struct.a2ps_job* %job, i8* %string) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %string.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %string_copy = alloca i8*, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %_tmp_ = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 67
  %1 = load %struct.page_range*, %struct.page_range** %page_range, align 8
  call void @page_range_reset(%struct.page_range* %1)
  %2 = load i8*, i8** %string.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end.60

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i8*, i8** %string.addr, align 8
  store i8* %3, i8** %_tmp_, align 8
  %4 = load i8*, i8** %_tmp_, align 8
  %call = call i64 @strlen(i8* %4) #7
  %add = add i64 %call, 1
  %mul = mul i64 1, %add
  %5 = alloca i8, i64 %mul
  store i8* %5, i8** %string_copy, align 8
  %6 = load i8*, i8** %string_copy, align 8
  %7 = load i8*, i8** %_tmp_, align 8
  %call1 = call i8* @strcpy(i8* %6, i8* %7) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %string_copy, align 8
  %call2 = call i8* @strtok(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #6
  store i8* %call2, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.end
  %9 = load i8*, i8** %cp, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %while.body, label %while.end.60

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %max, align 4
  store i32 0, i32* %min, align 4
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %idxprom = sext i32 %conv to i64
  %call4 = call i16** @__ctype_b_loc() #8
  %12 = load i16*, i16** %call4, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %13 to i32
  %and = and i32 %conv5, 2048
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %while.body
  %14 = load i8*, i8** %cp, align 8
  %call8 = call i32 @atoi(i8* %14) #7
  store i32 %call8, i32* %min, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.17, %if.then.7
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv10 = sext i8 %16 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %call12 = call i16** @__ctype_b_loc() #8
  %17 = load i16*, i16** %call12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %17, i64 %idxprom11
  %18 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %18 to i32
  %and15 = and i32 %conv14, 2048
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %while.cond.9
  %19 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %while.body
  %20 = load i8*, i8** %cp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr19, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = sext i8 %21 to i32
  switch i32 %conv20, label %sw.default [
    i32 0, label %sw.bb
    i32 58, label %sw.bb.22
    i32 45, label %sw.bb.22
    i32 116, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.18
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %23 = load i32, i32* %min, align 4
  %24 = load i32, i32* %min, align 4
  %call21 = call i32 @add_pages_interval(%struct.a2ps_job* %22, i32 %23, i32 %24)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.18, %if.end.18
  %25 = load i8*, i8** %cp, align 8
  %call23 = call i32 @atoi(i8* %25) #7
  store i32 %call23, i32* %max, align 4
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.32, %sw.bb.22
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv25 = sext i8 %27 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #8
  %28 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %28, i64 %idxprom26
  %29 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %29 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %while.body.32, label %while.end.34

while.body.32:                                    ; preds = %while.cond.24
  %30 = load i8*, i8** %cp, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr33, i8** %cp, align 8
  br label %while.cond.24

while.end.34:                                     ; preds = %while.cond.24
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8, i8* %31, align 1
  %conv35 = sext i8 %32 to i32
  %cmp = icmp ne i32 %conv35, 0
  br i1 %cmp, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.end.34
  br label %failed

if.end.38:                                        ; preds = %while.end.34
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %34 = load i32, i32* %min, align 4
  %35 = load i32, i32* %max, align 4
  %call39 = call i32 @add_pages_interval(%struct.a2ps_job* %33, i32 %34, i32 %35)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.44, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #6
  %36 = load i8*, i8** %string.addr, align 8
  %call43 = call i8* @quotearg(i8* %36)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call42, i8* %call43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.18
  %37 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 -1
  %call46 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %add.ptr, i64 3) #7
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else, label %if.then.48

if.then.48:                                       ; preds = %sw.bb.45
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range49 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 67
  %39 = load %struct.page_range*, %struct.page_range** %page_range49, align 8
  %toc = getelementptr inbounds %struct.page_range, %struct.page_range* %39, i32 0, i32 1
  store i8 1, i8* %toc, align 1
  %40 = load i8*, i8** %cp, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %add.ptr50, i8** %cp, align 8
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %conv51 = sext i8 %42 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.48
  br label %failed

if.end.55:                                        ; preds = %if.then.48
  br label %if.end.56

if.else:                                          ; preds = %sw.bb.45
  br label %failed

if.end.56:                                        ; preds = %if.end.55
  br label %sw.epilog

failed:                                           ; preds = %if.else, %if.then.54, %if.then.37
  br label %sw.default

sw.default:                                       ; preds = %if.end.18, %failed
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #6
  %43 = load i8*, i8** %string.addr, align 8
  %call58 = call i8* @quotearg(i8* %43)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call57, i8* %call58)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.56, %if.end.44, %sw.bb
  %call59 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #6
  store i8* %call59, i8** %cp, align 8
  br label %while.cond

while.end.60:                                     ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @page_range_reset(%struct.page_range* %page_range) #0 {
entry:
  %page_range.addr = alloca %struct.page_range*, align 8
  store %struct.page_range* %page_range, %struct.page_range** %page_range.addr, align 8
  %0 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals = getelementptr inbounds %struct.page_range, %struct.page_range* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %intervals, align 8
  call void @da_free_content(%struct.darray* %1, void (i8*)* @free)
  %2 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %toc = getelementptr inbounds %struct.page_range, %struct.page_range* %2, i32 0, i32 1
  store i8 0, i8* %toc, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @add_pages_interval(%struct.a2ps_job* %job, i32 %min, i32 %max) #3 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %max.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %max.addr, align 4
  %2 = load i32, i32* %min.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 67
  %4 = load %struct.page_range*, %struct.page_range** %page_range, align 8
  %intervals = getelementptr inbounds %struct.page_range, %struct.page_range* %4, i32 0, i32 0
  %5 = load %struct.darray*, %struct.darray** %intervals, align 8
  %6 = load i32, i32* %min.addr, align 4
  %7 = load i32, i32* %max.addr, align 4
  %call = call %struct.interval* @interval_new(i32 %6, i32 %7)
  %8 = bitcast %struct.interval* %call to i8*
  call void @da_append(%struct.darray* %5, i8* %8)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @report_pages_to_print(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 67
  %1 = load %struct.page_range*, %struct.page_range** %page_range, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @page_range_self_print(%struct.page_range* %1, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @page_range_self_print(%struct.page_range* %page_range, %struct._IO_FILE* %stream) #3 {
entry:
  %page_range.addr = alloca %struct.page_range*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.page_range* %page_range, %struct.page_range** %page_range.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.page_range*, %struct.page_range** %page_range.addr, align 8
  %intervals = getelementptr inbounds %struct.page_range, %struct.page_range* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %intervals, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_self_print(%struct.darray* %1, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @print_page(%struct.a2ps_job* %job, i32 %page_num) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %page_num.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %intervals = alloca %struct.interval**, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 67
  %1 = load %struct.page_range*, %struct.page_range** %page_range, align 8
  %intervals1 = getelementptr inbounds %struct.page_range, %struct.page_range* %1, i32 0, i32 0
  %2 = load %struct.darray*, %struct.darray** %intervals1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 6
  %3 = load i8**, i8*** %content, align 8
  %4 = bitcast i8** %3 to %struct.interval**
  store %struct.interval** %4, %struct.interval*** %intervals, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 67
  %6 = load %struct.page_range*, %struct.page_range** %page_range2, align 8
  %toc = getelementptr inbounds %struct.page_range, %struct.page_range* %6, i32 0, i32 1
  %7 = load i8, i8* %toc, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 68
  %9 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 5
  %10 = load i64, i64* %len, align 8
  %sub = sub i64 %10, 1
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 68
  %12 = load %struct.darray*, %struct.darray** %jobs3, align 8
  %content4 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 6
  %13 = load i8**, i8*** %content4, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %sub
  %14 = load i8*, i8** %arrayidx, align 8
  %15 = bitcast i8* %14 to %struct.file_job*
  %is_toc = getelementptr inbounds %struct.file_job, %struct.file_job* %15, i32 0, i32 4
  %16 = load i8, i8* %is_toc, align 1
  %tobool5 = trunc i8 %16 to i1
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 67
  %18 = load %struct.page_range*, %struct.page_range** %page_range6, align 8
  %intervals7 = getelementptr inbounds %struct.page_range, %struct.page_range* %18, i32 0, i32 0
  %19 = load %struct.darray*, %struct.darray** %intervals7, align 8
  %len8 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 5
  %20 = load i64, i64* %len8, align 8
  %cmp = icmp eq i64 %20, 0
  br i1 %cmp, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %if.end
  %21 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range10 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %21, i32 0, i32 67
  %22 = load %struct.page_range*, %struct.page_range** %page_range10, align 8
  %toc11 = getelementptr inbounds %struct.page_range, %struct.page_range* %22, i32 0, i32 1
  %23 = load i8, i8* %toc11, align 1
  %tobool12 = trunc i8 %23 to i1
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.9
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.9, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_range15 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 67
  %26 = load %struct.page_range*, %struct.page_range** %page_range15, align 8
  %intervals16 = getelementptr inbounds %struct.page_range, %struct.page_range* %26, i32 0, i32 0
  %27 = load %struct.darray*, %struct.darray** %intervals16, align 8
  %len17 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 5
  %28 = load i64, i64* %len17, align 8
  %cmp18 = icmp ult i64 %24, %28
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %i, align 8
  %30 = load %struct.interval**, %struct.interval*** %intervals, align 8
  %arrayidx19 = getelementptr inbounds %struct.interval*, %struct.interval** %30, i64 %29
  %31 = load %struct.interval*, %struct.interval** %arrayidx19, align 8
  %32 = load i32, i32* %page_num.addr, align 4
  %call = call i32 @interval_is_in(%struct.interval* %31, i32 %32)
  %tobool20 = icmp ne i32 %call, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.21, %if.then.13, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @interval_is_in(%struct.interval* %interval, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %interval.addr = alloca %struct.interval*, align 8
  %num.addr = alloca i32, align 4
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 0
  %1 = load i32, i32* %min, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 1
  %3 = load i32, i32* %max, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min2 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 0
  %5 = load i32, i32* %min2, align 4
  %6 = load i32, i32* %num.addr, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %7 = load i32, i32* %num.addr, align 4
  %8 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max3 = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 1
  %9 = load i32, i32* %max3, align 4
  %cmp4 = icmp sle i32 %7, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %10 = phi i1 [ false, %if.then ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min5 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 0
  %12 = load i32, i32* %min5, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %min8 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  %14 = load i32, i32* %min8, align 4
  %15 = load i32, i32* %num.addr, align 4
  %cmp9 = icmp sle i32 %14, %15
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else.10:                                       ; preds = %if.else
  %16 = load i32, i32* %num.addr, align 4
  %17 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %max11 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 1
  %18 = load i32, i32* %max11, align 4
  %cmp12 = icmp sle i32 %16, %18
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, i32* %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.7, %land.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @da_free_content(%struct.darray*, void (i8*)*) #1

declare void @da_append(%struct.darray*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.interval* @interval_new(i32 %min, i32 %max) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %res = alloca %struct.interval*, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %call = call i8* @xmalloc(i64 8)
  %0 = bitcast i8* %call to %struct.interval*
  store %struct.interval* %0, %struct.interval** %res, align 8
  %1 = load i32, i32* %min.addr, align 4
  %2 = load %struct.interval*, %struct.interval** %res, align 8
  %min1 = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 0
  store i32 %1, i32* %min1, align 4
  %3 = load i32, i32* %max.addr, align 4
  %4 = load %struct.interval*, %struct.interval** %res, align 8
  %max2 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 1
  store i32 %3, i32* %max2, align 4
  %5 = load %struct.interval*, %struct.interval** %res, align 8
  ret %struct.interval* %5
}

declare void @da_self_print(%struct.darray*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
