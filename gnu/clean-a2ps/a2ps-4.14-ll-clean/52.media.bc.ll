; ModuleID = './lib/media.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lister = type opaque

@.str = private unnamed_addr constant [9 x i8] c"libpaper\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown medium `%s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Known Media\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"  %-10s\09%11s (%4s, %4s, %4s, %4s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"llx\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"lly\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"urx\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ury\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"  %-10s\09%4d x %4d (%4d, %4d, %4d, %4d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @add_medium(%struct.a2ps_job* %job, i8* %name, i32 %w, i32 %h, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %llx.addr = alloca i32, align 4
  %lly.addr = alloca i32, align 4
  %urx.addr = alloca i32, align 4
  %ury.addr = alloca i32, align 4
  %a_medium = alloca %struct.medium*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %llx, i32* %llx.addr, align 4
  store i32 %lly, i32* %lly.addr, align 4
  store i32 %urx, i32* %urx.addr, align 4
  store i32 %ury, i32* %ury.addr, align 4
  %call = call i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.medium*
  store %struct.medium* %0, %struct.medium** %a_medium, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  %2 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %name2 = getelementptr inbounds %struct.medium, %struct.medium* %2, i32 0, i32 0
  store i8* %call1, i8** %name2, align 8
  %3 = load i32, i32* %w.addr, align 4
  %4 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %w3 = getelementptr inbounds %struct.medium, %struct.medium* %4, i32 0, i32 1
  store i32 %3, i32* %w3, align 4
  %5 = load i32, i32* %h.addr, align 4
  %6 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %h4 = getelementptr inbounds %struct.medium, %struct.medium* %6, i32 0, i32 2
  store i32 %5, i32* %h4, align 4
  %7 = load i32, i32* %llx.addr, align 4
  %8 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %llx5 = getelementptr inbounds %struct.medium, %struct.medium* %8, i32 0, i32 3
  store i32 %7, i32* %llx5, align 4
  %9 = load i32, i32* %lly.addr, align 4
  %10 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %lly6 = getelementptr inbounds %struct.medium, %struct.medium* %10, i32 0, i32 4
  store i32 %9, i32* %lly6, align 4
  %11 = load i32, i32* %urx.addr, align 4
  %12 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %urx7 = getelementptr inbounds %struct.medium, %struct.medium* %12, i32 0, i32 5
  store i32 %11, i32* %urx7, align 4
  %13 = load i32, i32* %ury.addr, align 4
  %14 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %ury8 = getelementptr inbounds %struct.medium, %struct.medium* %14, i32 0, i32 6
  store i32 %13, i32* %ury8, align 4
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %media = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 4
  %16 = load %struct.hash_table_s*, %struct.hash_table_s** %media, align 8
  %17 = load %struct.medium*, %struct.medium** %a_medium, align 8
  %18 = bitcast %struct.medium* %17 to i8*
  %call9 = call i8* @hash_insert(%struct.hash_table_s* %16, i8* %18)
  ret void
}

declare i8* @xmalloc(i64) #1

declare i8* @xstrdup(i8*) #1

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.hash_table_s* @new_medium_table() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 16, i64 (i8*)* @medium_hash_1, i64 (i8*)* @medium_hash_2, i32 (i8*, i8*)* @medium_hash_cmp)
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @medium_hash_1(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.medium*
  %name = getelementptr inbounds %struct.medium, %struct.medium* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %3 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %kk, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call = call i32 @tolower(i32 %conv) #4
  %7 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %8 to i32
  %call3 = call i32 @tolower(i32 %conv2) #4
  %and = and i32 %call3, 15
  %shl = shl i32 %call, %and
  %conv4 = sext i32 %shl to i64
  %9 = load i64, i64* %result, align 8
  %add = add i64 %9, %conv4
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %10 = load i64, i64* %result, align 8
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @medium_hash_2(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.medium*
  %name = getelementptr inbounds %struct.medium, %struct.medium* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %3 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %kk, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %8 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %9 = load i64, i64* %result, align 8
  %add = add i64 %9, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %10 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @medium_hash_cmp(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.medium*
  %name = getelementptr inbounds %struct.medium, %struct.medium* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to %struct.medium*
  %name2 = getelementptr inbounds %struct.medium, %struct.medium* %4, i32 0, i32 0
  %5 = load i8*, i8** %name2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %6 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %8 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %yy, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load i8*, i8** %xx, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = zext i8 %11 to i32
  %call = call i32 @tolower(i32 %conv8) #4
  %12 = load i8*, i8** %yy, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i32
  %call10 = call i32 @tolower(i32 %conv9) #4
  %cmp11 = icmp eq i32 %call, %call10
  br i1 %cmp11, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %14 = load i8*, i8** %xx, align 8
  %15 = load i8, i8* %14, align 1
  %conv13 = zext i8 %15 to i32
  %call14 = call i32 @tolower(i32 %conv13) #4
  %16 = load i8*, i8** %yy, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = zext i8 %17 to i32
  %call16 = call i32 @tolower(i32 %conv15) #4
  %sub = sub nsw i32 %call14, %call16
  store i32 %sub, i32* %result, align 4
  br label %do.end.18

do.end.18:                                        ; preds = %do.end
  %18 = load i32, i32* %result, align 4
  br label %do.end.20

do.end.20:                                        ; preds = %do.end.18
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @free_medium_table(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.medium*)* @hash_free_medium to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @hash_free_medium(%struct.medium* %medium) #0 {
entry:
  %medium.addr = alloca %struct.medium*, align 8
  store %struct.medium* %medium, %struct.medium** %medium.addr, align 8
  %0 = load %struct.medium*, %struct.medium** %medium.addr, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @free(i8* %1) #4
  %2 = load %struct.medium*, %struct.medium** %medium.addr, align 8
  %3 = bitcast %struct.medium* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.medium* @a2ps_get_medium(%struct.a2ps_job* %job, i8* %name) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  %item = alloca %struct.medium*, align 8
  %token = alloca %struct.medium, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %name1 = getelementptr inbounds %struct.medium, %struct.medium* %token, i32 0, i32 0
  store i8* null, i8** %name1, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name2 = getelementptr inbounds %struct.medium, %struct.medium* %token, i32 0, i32 0
  store i8* null, i8** %name2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %name3 = getelementptr inbounds %struct.medium, %struct.medium* %token, i32 0, i32 0
  %1 = load i8*, i8** %name3, align 8
  %tobool4 = icmp ne i8* %1, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %2 = load i8*, i8** %name.addr, align 8
  %name6 = getelementptr inbounds %struct.medium, %struct.medium* %token, i32 0, i32 0
  store i8* %2, i8** %name6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %media = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 4
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %media, align 8
  %5 = bitcast %struct.medium* %token to i8*
  %call8 = call i8* @hash_find_item(%struct.hash_table_s* %4, i8* %5)
  %6 = bitcast i8* %call8 to %struct.medium*
  store %struct.medium* %6, %struct.medium** %item, align 8
  %7 = load %struct.medium*, %struct.medium** %item, align 8
  %cmp = icmp eq %struct.medium* %7, null
  br i1 %cmp, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #4
  %name11 = getelementptr inbounds %struct.medium, %struct.medium* %token, i32 0, i32 0
  %8 = load i8*, i8** %name11, align 8
  %call12 = call i8* @quotearg(i8* %8)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call10, i8* %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.7
  %9 = load %struct.medium*, %struct.medium** %item, align 8
  ret %struct.medium* %9
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @a2ps_get_medium_name(%struct.a2ps_job* %job, i8* %name) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  %medium = alloca %struct.medium*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.medium* @a2ps_get_medium(%struct.a2ps_job* %0, i8* %1)
  store %struct.medium* %call, %struct.medium** %medium, align 8
  %2 = load %struct.medium*, %struct.medium** %medium, align 8
  %name1 = getelementptr inbounds %struct.medium, %struct.medium* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define zeroext i1 @a2ps_medium_libpaper_p(%struct.a2ps_job* %job, i8* %name) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call, 0
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @list_media_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %media = alloca %struct.medium**, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %media1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 4
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %media1, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %1, i8** null, i32 (i8*, i8*)* @medium_hash_qcmp)
  %2 = bitcast i8** %call to %struct.medium**
  store %struct.medium** %2, %struct.medium*** %media, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fputs(i8* %call2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #4
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %call5, i8* %call6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx = getelementptr inbounds %struct.medium*, %struct.medium** %7, i64 %idxprom
  %8 = load %struct.medium*, %struct.medium** %arrayidx, align 8
  %tobool = icmp ne %struct.medium* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx9 = getelementptr inbounds %struct.medium*, %struct.medium** %11, i64 %idxprom8
  %12 = load %struct.medium*, %struct.medium** %arrayidx9, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx11 = getelementptr inbounds %struct.medium*, %struct.medium** %15, i64 %idxprom10
  %16 = load %struct.medium*, %struct.medium** %arrayidx11, align 8
  %w = getelementptr inbounds %struct.medium, %struct.medium* %16, i32 0, i32 1
  %17 = load i32, i32* %w, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx13 = getelementptr inbounds %struct.medium*, %struct.medium** %19, i64 %idxprom12
  %20 = load %struct.medium*, %struct.medium** %arrayidx13, align 8
  %h = getelementptr inbounds %struct.medium, %struct.medium* %20, i32 0, i32 2
  %21 = load i32, i32* %h, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx15 = getelementptr inbounds %struct.medium*, %struct.medium** %23, i64 %idxprom14
  %24 = load %struct.medium*, %struct.medium** %arrayidx15, align 8
  %llx = getelementptr inbounds %struct.medium, %struct.medium* %24, i32 0, i32 3
  %25 = load i32, i32* %llx, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx17 = getelementptr inbounds %struct.medium*, %struct.medium** %27, i64 %idxprom16
  %28 = load %struct.medium*, %struct.medium** %arrayidx17, align 8
  %lly = getelementptr inbounds %struct.medium, %struct.medium* %28, i32 0, i32 4
  %29 = load i32, i32* %lly, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx19 = getelementptr inbounds %struct.medium*, %struct.medium** %31, i64 %idxprom18
  %32 = load %struct.medium*, %struct.medium** %arrayidx19, align 8
  %urx = getelementptr inbounds %struct.medium, %struct.medium* %32, i32 0, i32 5
  %33 = load i32, i32* %urx, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.medium**, %struct.medium*** %media, align 8
  %arrayidx21 = getelementptr inbounds %struct.medium*, %struct.medium** %35, i64 %idxprom20
  %36 = load %struct.medium*, %struct.medium** %arrayidx21, align 8
  %ury = getelementptr inbounds %struct.medium, %struct.medium* %36, i32 0, i32 6
  %37 = load i32, i32* %ury, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8* %13, i32 %17, i32 %21, i32 %25, i32 %29, i32 %33, i32 %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call23 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %39)
  %40 = load %struct.medium**, %struct.medium*** %media, align 8
  %41 = bitcast %struct.medium** %40 to i8*
  call void @free(i8* %41) #4
  ret void
}

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @medium_hash_qcmp(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.medium**
  %2 = load %struct.medium*, %struct.medium** %1, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %4 = load i8*, i8** %y.addr, align 8
  %5 = bitcast i8* %4 to %struct.medium**
  %6 = load %struct.medium*, %struct.medium** %5, align 8
  %name2 = getelementptr inbounds %struct.medium, %struct.medium* %6, i32 0, i32 0
  %7 = load i8*, i8** %name2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %8 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %10 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  %11 = load i8*, i8** %yy, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %yy, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %12 = load i8*, i8** %xx, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = zext i8 %13 to i32
  %call = call i32 @tolower(i32 %conv8) #4
  %14 = load i8*, i8** %yy, align 8
  %15 = load i8, i8* %14, align 1
  %conv9 = zext i8 %15 to i32
  %call10 = call i32 @tolower(i32 %conv9) #4
  %cmp11 = icmp eq i32 %call, %call10
  br i1 %cmp11, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %16 = load i8*, i8** %xx, align 8
  %17 = load i8, i8* %16, align 1
  %conv13 = zext i8 %17 to i32
  %call14 = call i32 @tolower(i32 %conv13) #4
  %18 = load i8*, i8** %yy, align 8
  %19 = load i8, i8* %18, align 1
  %conv15 = zext i8 %19 to i32
  %call16 = call i32 @tolower(i32 %conv15) #4
  %sub = sub nsw i32 %call14, %call16
  store i32 %sub, i32* %result, align 4
  br label %do.end.18

do.end.18:                                        ; preds = %do.end
  %20 = load i32, i32* %result, align 4
  br label %do.end.20

do.end.20:                                        ; preds = %do.end.18
  ret i32 %20
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @list_media_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %media = alloca %struct.medium**, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %media1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 4
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %media1, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %1, i8** null, i32 (i8*, i8*)* @medium_hash_qcmp)
  %2 = bitcast i8** %call to %struct.medium**
  store %struct.medium** %2, %struct.medium*** %media, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fputs(i8* %call2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load %struct.medium**, %struct.medium*** %media, align 8
  %7 = bitcast %struct.medium** %6 to i8**
  call void @lister_fprint_vertical(%struct.lister* null, %struct._IO_FILE* %5, i8** %7, i64 -1, i64 (i8*)* bitcast (i64 (%struct.medium*)* @medium_name_len to i64 (i8*)*), void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.medium*, %struct._IO_FILE*)* @medium_name_fputs to void (i8*, %struct._IO_FILE*)*))
  %8 = load %struct.medium**, %struct.medium*** %media, align 8
  %9 = bitcast %struct.medium** %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

declare void @lister_fprint_vertical(%struct.lister*, %struct._IO_FILE*, i8**, i64, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @medium_name_len(%struct.medium* %medium) #0 {
entry:
  %medium.addr = alloca %struct.medium*, align 8
  store %struct.medium* %medium, %struct.medium** %medium.addr, align 8
  %0 = load %struct.medium*, %struct.medium** %medium.addr, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %1) #5
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @medium_name_fputs(%struct.medium* %medium, %struct._IO_FILE* %stream) #0 {
entry:
  %medium.addr = alloca %struct.medium*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.medium* %medium, %struct.medium** %medium.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.medium*, %struct.medium** %medium.addr, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
