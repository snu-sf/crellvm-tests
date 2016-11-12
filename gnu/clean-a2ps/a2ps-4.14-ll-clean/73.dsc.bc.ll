; ModuleID = './lib/dsc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.multivalued_entry = type { i8*, %struct.string_htable* }
%struct.string_htable = type opaque
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@multivalued_table_new.res = internal global %struct.hash_table_s* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"%%%%DocumentSuppliedResources: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%%%%+ %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%%%%DocumentNeededResources: %s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%%DocumentProcessColors: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@multivalued_entry_get.token = internal global %struct.multivalued_entry zeroinitializer, align 8
@multivalued_entry_get.res = internal global %struct.multivalued_entry* null, align 8

; Function Attrs: nounwind uwtable
define %struct.hash_table_s* @multivalued_table_new() #0 {
entry:
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** @multivalued_table_new.res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** @multivalued_table_new.res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* bitcast (i64 (%struct.multivalued_entry*)* @mv_key_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.multivalued_entry*)* @mv_key_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.multivalued_entry*, %struct.multivalued_entry*)* @mv_key_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** @multivalued_table_new.res, align 8
  ret %struct.hash_table_s* %2
}

declare i8* @xmalloc(i64) #1

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @mv_key_hash_1(%struct.multivalued_entry* %key) #0 {
entry:
  %key.addr = alloca %struct.multivalued_entry*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.multivalued_entry* %key, %struct.multivalued_entry** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.multivalued_entry*, %struct.multivalued_entry** %key.addr, align 8
  %key2 = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  %and = and i32 %conv3, 15
  %shl = shl i32 %conv, %and
  %conv4 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv4
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i64 @mv_key_hash_2(%struct.multivalued_entry* %key) #0 {
entry:
  %key.addr = alloca %struct.multivalued_entry*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.multivalued_entry* %key, %struct.multivalued_entry** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.multivalued_entry*, %struct.multivalued_entry** %key.addr, align 8
  %key2 = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  %and = and i32 %conv3, 7
  %shl = shl i32 %conv, %and
  %conv4 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv4
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @mv_key_hash_cmp(%struct.multivalued_entry* %x, %struct.multivalued_entry* %y) #0 {
entry:
  %x.addr = alloca %struct.multivalued_entry*, align 8
  %y.addr = alloca %struct.multivalued_entry*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.multivalued_entry* %x, %struct.multivalued_entry** %x.addr, align 8
  store %struct.multivalued_entry* %y, %struct.multivalued_entry** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.multivalued_entry*, %struct.multivalued_entry** %x.addr, align 8
  %key = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.multivalued_entry*, %struct.multivalued_entry** %y.addr, align 8
  %key2 = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %2, i32 0, i32 0
  %3 = load i8*, i8** %key2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %4 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %6 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i8*, i8** %xx, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %10 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %11 = load i8*, i8** %xx, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8*, i8** %yy, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %15 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @multivalued_table_free(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.multivalued_entry*)* @multivalued_entry_free to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @multivalued_entry_free(%struct.multivalued_entry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.multivalued_entry*, align 8
  store %struct.multivalued_entry* %entry1, %struct.multivalued_entry** %entry.addr, align 8
  %0 = load %struct.multivalued_entry*, %struct.multivalued_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  call void @free(i8* %1) #4
  %2 = load %struct.multivalued_entry*, %struct.multivalued_entry** %entry.addr, align 8
  %entries = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %2, i32 0, i32 1
  %3 = load %struct.string_htable*, %struct.string_htable** %entries, align 8
  call void @string_htable_free(%struct.string_htable* %3)
  %4 = load %struct.multivalued_entry*, %struct.multivalued_entry** %entry.addr, align 8
  %5 = bitcast %struct.multivalued_entry* %4 to i8*
  call void @free(i8* %5) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @exist_resource(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 9
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %call = call i8* @multivalued_entry_get_sub_item(%struct.hash_table_s* %2, i8* %3, i8* %4)
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i8* @multivalued_entry_get_sub_item(%struct.hash_table_s* %table, i8* %type, i8* %value) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table_s*, align 8
  %type.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %sub_table = alloca %struct.string_htable*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load i8*, i8** %type.addr, align 8
  %call = call %struct.string_htable* @multivalued_entry_get_sub_table(%struct.hash_table_s* %0, i8* %1)
  store %struct.string_htable* %call, %struct.string_htable** %sub_table, align 8
  %2 = load %struct.string_htable*, %struct.string_htable** %sub_table, align 8
  %tobool = icmp ne %struct.string_htable* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.string_htable*, %struct.string_htable** %sub_table, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %call1 = call i8* @string_htable_get(%struct.string_htable* %3, i8* %4)
  store i8* %call1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @add_supplied_resource(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %supplied_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 10
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %supplied_resources, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  call void @multivalued_entry_add_couple(%struct.hash_table_s* %2, i8* %3, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @multivalued_entry_add_couple(%struct.hash_table_s* %table, i8* %type, i8* %value) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %type.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %sub_table = alloca %struct.multivalued_entry*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load i8*, i8** %type.addr, align 8
  %call = call %struct.multivalued_entry* @multivalued_entry_get(%struct.hash_table_s* %0, i8* %1)
  store %struct.multivalued_entry* %call, %struct.multivalued_entry** %sub_table, align 8
  %2 = load %struct.multivalued_entry*, %struct.multivalued_entry** %sub_table, align 8
  %cmp = icmp eq %struct.multivalued_entry* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %type.addr, align 8
  %call1 = call %struct.multivalued_entry* @multivalued_entry_new(i8* %3)
  store %struct.multivalued_entry* %call1, %struct.multivalued_entry** %sub_table, align 8
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %5 = load %struct.multivalued_entry*, %struct.multivalued_entry** %sub_table, align 8
  call void @multivalued_entry_add(%struct.hash_table_s* %4, %struct.multivalued_entry* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.multivalued_entry*, %struct.multivalued_entry** %sub_table, align 8
  %entries = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %6, i32 0, i32 1
  %7 = load %struct.string_htable*, %struct.string_htable** %entries, align 8
  %8 = load i8*, i8** %value.addr, align 8
  call void @string_htable_add(%struct.string_htable* %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_supplied_resources(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i32, align 4
  %list = alloca %struct.multivalued_entry**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %supplied_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 10
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %supplied_resources, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %2, i8** null, i32 (i8*, i8*)* null)
  %3 = bitcast i8** %call to %struct.multivalued_entry**
  store %struct.multivalued_entry** %3, %struct.multivalued_entry*** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.multivalued_entry*, %struct.multivalued_entry** %5, i64 %idxprom
  %6 = load %struct.multivalued_entry*, %struct.multivalued_entry** %arrayidx, align 8
  %tobool = icmp ne %struct.multivalued_entry* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %8, 0
  %conv = zext i1 %cmp to i32
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %arrayidx2 = getelementptr inbounds %struct.multivalued_entry*, %struct.multivalued_entry** %10, i64 %idxprom1
  %11 = load %struct.multivalued_entry*, %struct.multivalued_entry** %arrayidx2, align 8
  call void @multivalued_entry_dump(%struct._IO_FILE* %7, i32 %conv, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.multivalued_entry* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %14 = bitcast %struct.multivalued_entry** %13 to i8*
  call void @free(i8* %14) #4
  ret void
}

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @multivalued_entry_dump(%struct._IO_FILE* %stream, i32 %first, i8* %fmt_first, i8* %fmt_others, %struct.multivalued_entry* %entry1) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %first.addr = alloca i32, align 4
  %fmt_first.addr = alloca i8*, align 8
  %fmt_others.addr = alloca i8*, align 8
  %entry.addr = alloca %struct.multivalued_entry*, align 8
  %values = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  store i8* %fmt_first, i8** %fmt_first.addr, align 8
  store i8* %fmt_others, i8** %fmt_others.addr, align 8
  store %struct.multivalued_entry* %entry1, %struct.multivalued_entry** %entry.addr, align 8
  %0 = load %struct.multivalued_entry*, %struct.multivalued_entry** %entry.addr, align 8
  %entries = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %0, i32 0, i32 1
  %1 = load %struct.string_htable*, %struct.string_htable** %entries, align 8
  %call = call i8** @string_htable_dump_sorted(%struct.string_htable* %1)
  store i8** %call, i8*** %values, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %values, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %first.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load i8*, i8** %fmt_first.addr, align 8
  %8 = load %struct.multivalued_entry*, %struct.multivalued_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %8, i32 0, i32 0
  %9 = load i8*, i8** %key, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load i8**, i8*** %values, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 %idxprom3
  %12 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* %7, i8* %9, i8* %12)
  store i32 0, i32* %first.addr, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %14 = load i8*, i8** %fmt_others.addr, align 8
  %15 = load %struct.multivalued_entry*, %struct.multivalued_entry** %entry.addr, align 8
  %key6 = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %15, i32 0, i32 0
  %16 = load i8*, i8** %key6, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load i8**, i8*** %values, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %18, i64 %idxprom7
  %19 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* %14, i8* %16, i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8**, i8*** %values, align 8
  %22 = bitcast i8** %21 to i8*
  call void @free(i8* %22) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_needed_resource(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 9
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  call void @multivalued_entry_add_couple(%struct.hash_table_s* %2, i8* %3, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_needed_resources(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %list = alloca %struct.multivalued_entry**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 1, i32* %first, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 9
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %2, i8** null, i32 (i8*, i8*)* null)
  %3 = bitcast i8** %call to %struct.multivalued_entry**
  store %struct.multivalued_entry** %3, %struct.multivalued_entry*** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.multivalued_entry*, %struct.multivalued_entry** %5, i64 %idxprom
  %6 = load %struct.multivalued_entry*, %struct.multivalued_entry** %arrayidx, align 8
  %tobool = icmp ne %struct.multivalued_entry* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %arrayidx2 = getelementptr inbounds %struct.multivalued_entry*, %struct.multivalued_entry** %8, i64 %idxprom1
  %9 = load %struct.multivalued_entry*, %struct.multivalued_entry** %arrayidx2, align 8
  %key = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %9, i32 0, i32 0
  %10 = load i8*, i8** %key, align 8
  %call3 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %arrayidx5 = getelementptr inbounds %struct.multivalued_entry*, %struct.multivalued_entry** %12, i64 %idxprom4
  %13 = load %struct.multivalued_entry*, %struct.multivalued_entry** %arrayidx5, align 8
  %key6 = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %13, i32 0, i32 0
  %14 = load i8*, i8** %key6, align 8
  %call7 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %16 = load i32, i32* %first, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %arrayidx10 = getelementptr inbounds %struct.multivalued_entry*, %struct.multivalued_entry** %18, i64 %idxprom9
  %19 = load %struct.multivalued_entry*, %struct.multivalued_entry** %arrayidx10, align 8
  call void @multivalued_entry_dump(%struct._IO_FILE* %15, i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.multivalued_entry* %19)
  store i32 0, i32* %first, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.multivalued_entry**, %struct.multivalued_entry*** %list, align 8
  %22 = bitcast %struct.multivalued_entry** %21 to i8*
  call void @free(i8* %22) #4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @add_process_color(%struct.a2ps_job* %job, i8* %value) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 9
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  %3 = load i8*, i8** %value.addr, align 8
  call void @multivalued_entry_add_couple(%struct.hash_table_s* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_process_color(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %color_table = alloca %struct.string_htable*, align 8
  %i = alloca i32, align 4
  %colors = alloca i8**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 9
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  %call = call %struct.string_htable* @multivalued_entry_get_sub_table(%struct.hash_table_s* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  store %struct.string_htable* %call, %struct.string_htable** %color_table, align 8
  %3 = load %struct.string_htable*, %struct.string_htable** %color_table, align 8
  %tobool = icmp ne %struct.string_htable* %3, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct.string_htable*, %struct.string_htable** %color_table, align 8
  %call1 = call i8** @string_htable_dump_sorted(%struct.string_htable* %4)
  store i8** %call1, i8*** %colors, align 8
  %5 = load i8**, i8*** %colors, align 8
  %6 = load i8*, i8** %5, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %colors, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %tobool4 = icmp ne i8* %10, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i8**, i8*** %colors, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 %idxprom5
  %14 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %16)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %17 = load i8**, i8*** %colors, align 8
  %18 = bitcast i8** %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.string_htable* @multivalued_entry_get_sub_table(%struct.hash_table_s* %table, i8* %type) #0 {
entry:
  %retval = alloca %struct.string_htable*, align 8
  %table.addr = alloca %struct.hash_table_s*, align 8
  %type.addr = alloca i8*, align 8
  %item = alloca %struct.multivalued_entry*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load i8*, i8** %type.addr, align 8
  %call = call %struct.multivalued_entry* @multivalued_entry_get(%struct.hash_table_s* %0, i8* %1)
  store %struct.multivalued_entry* %call, %struct.multivalued_entry** %item, align 8
  %2 = load %struct.multivalued_entry*, %struct.multivalued_entry** %item, align 8
  %tobool = icmp ne %struct.multivalued_entry* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.string_htable* null, %struct.string_htable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.multivalued_entry*, %struct.multivalued_entry** %item, align 8
  %entries = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %3, i32 0, i32 1
  %4 = load %struct.string_htable*, %struct.string_htable** %entries, align 8
  store %struct.string_htable* %4, %struct.string_htable** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.string_htable*, %struct.string_htable** %retval
  ret %struct.string_htable* %5
}

declare i8** @string_htable_dump_sorted(%struct.string_htable*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @add_required_font(%struct.a2ps_job* %job, i8* %name) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 25
  %1 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @a2ps_printers_font_known_p(%struct.a2ps_printers_s* %1, i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call1 = call i8* @needed_resource_get(%struct.a2ps_job* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %4)
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %6 = load i8*, i8** %name.addr, align 8
  call void @add_needed_resource(%struct.a2ps_job* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %6)
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 65
  %8 = load %struct.output*, %struct.output** %divertion, align 8
  %9 = load i8*, i8** %name.addr, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %11 = load i8*, i8** %name.addr, align 8
  call void @add_supplied_resource(%struct.a2ps_job* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  ret void
}

declare i32 @a2ps_printers_font_known_p(%struct.a2ps_printers_s*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @needed_resource_get(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 9
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %call = call i8* @multivalued_entry_get_sub_item(%struct.hash_table_s* %2, i8* %3, i8* %4)
  ret i8* %call
}

declare void @output(%struct.output*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8** @required_fonts_get(%struct.a2ps_job* %job) #0 {
entry:
  %retval = alloca i8**, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %font_table = alloca %struct.string_htable*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %supplied_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 10
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %supplied_resources, align 8
  %call = call %struct.string_htable* @multivalued_entry_get_sub_table(%struct.hash_table_s* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  store %struct.string_htable* %call, %struct.string_htable** %font_table, align 8
  %3 = load %struct.string_htable*, %struct.string_htable** %font_table, align 8
  %tobool = icmp ne %struct.string_htable* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.string_htable*, %struct.string_htable** %font_table, align 8
  %call1 = call i8** @string_htable_dump_sorted(%struct.string_htable* %4)
  store i8** %call1, i8*** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8** null, i8*** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8**, i8*** %retval
  ret i8** %5
}

; Function Attrs: nounwind uwtable
define void @dump_setup(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %setup = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 14
  %2 = load %struct.output*, %struct.output** %setup, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @output_dump(%struct.output* %2, %struct._IO_FILE* %3)
  ret void
}

declare void @output_dump(%struct.output*, %struct._IO_FILE*) #1

declare void @string_htable_free(%struct.string_htable*) #1

declare i8* @string_htable_get(%struct.string_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.multivalued_entry* @multivalued_entry_get(%struct.hash_table_s* %table, i8* %type) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %type.addr = alloca i8*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load i8*, i8** %type.addr, align 8
  store i8* %0, i8** getelementptr inbounds (%struct.multivalued_entry, %struct.multivalued_entry* @multivalued_entry_get.token, i32 0, i32 0), align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %call = call i8* @hash_find_item(%struct.hash_table_s* %1, i8* bitcast (%struct.multivalued_entry* @multivalued_entry_get.token to i8*))
  %2 = bitcast i8* %call to %struct.multivalued_entry*
  store %struct.multivalued_entry* %2, %struct.multivalued_entry** @multivalued_entry_get.res, align 8
  %3 = load %struct.multivalued_entry*, %struct.multivalued_entry** @multivalued_entry_get.res, align 8
  ret %struct.multivalued_entry* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.multivalued_entry* @multivalued_entry_new(i8* %type) #0 {
entry:
  %type.addr = alloca i8*, align 8
  %res = alloca %struct.multivalued_entry*, align 8
  store i8* %type, i8** %type.addr, align 8
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.multivalued_entry*
  store %struct.multivalued_entry* %0, %struct.multivalued_entry** %res, align 8
  %1 = load i8*, i8** %type.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  %2 = load %struct.multivalued_entry*, %struct.multivalued_entry** %res, align 8
  %key = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %2, i32 0, i32 0
  store i8* %call1, i8** %key, align 8
  %call2 = call %struct.string_htable* @string_htable_new()
  %3 = load %struct.multivalued_entry*, %struct.multivalued_entry** %res, align 8
  %entries = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %3, i32 0, i32 1
  store %struct.string_htable* %call2, %struct.string_htable** %entries, align 8
  %4 = load %struct.multivalued_entry*, %struct.multivalued_entry** %res, align 8
  ret %struct.multivalued_entry* %4
}

; Function Attrs: nounwind uwtable
define internal void @multivalued_entry_add(%struct.hash_table_s* %table, %struct.multivalued_entry* %item) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %item.addr = alloca %struct.multivalued_entry*, align 8
  %old_item = alloca %struct.multivalued_entry*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store %struct.multivalued_entry* %item, %struct.multivalued_entry** %item.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load %struct.multivalued_entry*, %struct.multivalued_entry** %item.addr, align 8
  %key = getelementptr inbounds %struct.multivalued_entry, %struct.multivalued_entry* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %call = call %struct.multivalued_entry* @multivalued_entry_get(%struct.hash_table_s* %0, i8* %2)
  store %struct.multivalued_entry* %call, %struct.multivalued_entry** %old_item, align 8
  %3 = load %struct.multivalued_entry*, %struct.multivalued_entry** %old_item, align 8
  %tobool = icmp ne %struct.multivalued_entry* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.multivalued_entry*, %struct.multivalued_entry** %old_item, align 8
  call void @multivalued_entry_free(%struct.multivalued_entry* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %6 = load %struct.multivalued_entry*, %struct.multivalued_entry** %item.addr, align 8
  %7 = bitcast %struct.multivalued_entry* %6 to i8*
  %call1 = call i8* @hash_insert(%struct.hash_table_s* %5, i8* %7)
  ret void
}

declare void @string_htable_add(%struct.string_htable*, i8*) #1

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

declare i8* @xstrdup(i8*) #1

declare %struct.string_htable* @string_htable_new() #1

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
