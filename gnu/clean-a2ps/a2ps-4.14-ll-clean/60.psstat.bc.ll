; ModuleID = './lib/psstat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.encoding = type opaque
%struct.output = type opaque
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.pair_htable = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dict_entry = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%!PS-Adobe-3.0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#!s|$p-|, |\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.3 = private unnamed_addr constant [170 x i8] c"%%%% Pagedevice definitions:\0Acountdictstack\0A%% Push our own mark, since there can be several PS marks pushed depending\0A%% where the failure really occured.\0A/a2ps_mark\0A{\0A\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"%%%%BeginFeature: *%s %c%s\0A  (<<) cvx exec /%s (%s) cvx exec (>>) cvx exec setpagedevice\0A%%%%EndFeature\0A\00", align 1
@.str.5 = private unnamed_addr constant [134 x i8] c"} stopped\0A%% My cleartomark\0A{ /a2ps_mark eq { exit } if } loop\0Acountdictstack exch sub dup 0 gt\0A{\0A  { end } repeat\0A}{\0A  pop\0A} ifelse\0A\00", align 1
@.str.6 = private unnamed_addr constant [166 x i8] c"%% Pagedevice definitions:\0Acountdictstack\0A% Push our own mark, since there can be several PS marks pushed depending\0A% where the failure really occured.\0A/a2ps_mark\0A{\0A\00", align 1
@.str.7 = private unnamed_addr constant [128 x i8] c"%%%%BeginFeature: *%s %c%s\0A  (<<) cvx exec /%s (%s) cvx exec (>>) cvx exec\0A  systemdict /setpagedevice get exec\0A%%%%EndFeature\0A\00", align 1
@.str.8 = private unnamed_addr constant [133 x i8] c"} stopped\0A% My cleartomark\0A{ /a2ps_mark eq { exit } if } loop\0Acountdictstack exch sub dup 0 gt\0A{\0A  { end } repeat\0A}{\0A  pop\0A} ifelse\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%%Requirements: \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%% Statustdict definitions:\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"statusdict begin\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  /%s %s def\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"  %s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@new_dict_entry_table.res = internal global %struct.hash_table_s* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"%s::%s \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s:%s \00", align 1

; Function Attrs: nounwind uwtable
define %struct.ps_status* @new_ps_status() #0 {
entry:
  %res = alloca %struct.ps_status*, align 8
  %call = call i8* @xmalloc(i64 168)
  %0 = bitcast i8* %call to %struct.ps_status*
  store %struct.ps_status* %0, %struct.ps_status** %res, align 8
  %call1 = call i8* @xstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %magic_number = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 5
  store i8* %call1, i8** %magic_number, align 8
  %call2 = call i8* @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %2 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %page_label_format = getelementptr inbounds %struct.ps_status, %struct.ps_status* %2, i32 0, i32 6
  store i8* %call2, i8** %page_label_format, align 8
  %3 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %opened_encoding = getelementptr inbounds %struct.ps_status, %struct.ps_status* %3, i32 0, i32 7
  store %struct.encoding* null, %struct.encoding** %opened_encoding, align 8
  %4 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %page_are_ordered = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 8
  store i32 1, i32* %page_are_ordered, align 4
  %call3 = call %struct.hash_table_s* @multivalued_table_new()
  %5 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %5, i32 0, i32 9
  store %struct.hash_table_s* %call3, %struct.hash_table_s** %needed_resources, align 8
  %call4 = call %struct.hash_table_s* @multivalued_table_new()
  %6 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %supplied_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 10
  store %struct.hash_table_s* %call4, %struct.hash_table_s** %supplied_resources, align 8
  %call5 = call %struct.hash_table_s* @new_dict_entry_table()
  %7 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %7, i32 0, i32 12
  store %struct.hash_table_s* %call5, %struct.hash_table_s** %pagedevice, align 8
  %call6 = call %struct.hash_table_s* @new_dict_entry_table()
  %8 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %statusdict = getelementptr inbounds %struct.ps_status, %struct.ps_status* %8, i32 0, i32 13
  store %struct.hash_table_s* %call6, %struct.hash_table_s** %statusdict, align 8
  %call7 = call %struct.output* @output_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  %setup = getelementptr inbounds %struct.ps_status, %struct.ps_status* %9, i32 0, i32 14
  store %struct.output* %call7, %struct.output** %setup, align 8
  %10 = load %struct.ps_status*, %struct.ps_status** %res, align 8
  ret %struct.ps_status* %10
}

declare i8* @xmalloc(i64) #1

declare i8* @xstrdup(i8*) #1

declare %struct.hash_table_s* @multivalued_table_new() #1

; Function Attrs: nounwind uwtable
define internal %struct.hash_table_s* @new_dict_entry_table() #0 {
entry:
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** @new_dict_entry_table.res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** @new_dict_entry_table.res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* @key_hash_1, i64 (i8*)* @key_hash_2, i32 (i8*, i8*)* @key_hash_cmp)
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** @new_dict_entry_table.res, align 8
  ret %struct.hash_table_s* %2
}

declare %struct.output* @output_new(i8*) #1

; Function Attrs: nounwind uwtable
define void @ps_status_free(%struct.ps_status* %status) #0 {
entry:
  %status.addr = alloca %struct.ps_status*, align 8
  store %struct.ps_status* %status, %struct.ps_status** %status.addr, align 8
  %0 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %magic_number = getelementptr inbounds %struct.ps_status, %struct.ps_status* %0, i32 0, i32 5
  %1 = load i8*, i8** %magic_number, align 8
  call void @free(i8* %1) #3
  %2 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %page_label_format = getelementptr inbounds %struct.ps_status, %struct.ps_status* %2, i32 0, i32 6
  %3 = load i8*, i8** %page_label_format, align 8
  call void @free(i8* %3) #3
  %4 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %needed_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 9
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %needed_resources, align 8
  call void @multivalued_table_free(%struct.hash_table_s* %5)
  %6 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %supplied_resources = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 10
  %7 = load %struct.hash_table_s*, %struct.hash_table_s** %supplied_resources, align 8
  call void @multivalued_table_free(%struct.hash_table_s* %7)
  %8 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %8, i32 0, i32 12
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  call void @free_dict_entry_table(%struct.hash_table_s* %9)
  %10 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %statusdict = getelementptr inbounds %struct.ps_status, %struct.ps_status* %10, i32 0, i32 13
  %11 = load %struct.hash_table_s*, %struct.hash_table_s** %statusdict, align 8
  call void @free_dict_entry_table(%struct.hash_table_s* %11)
  %12 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %setup = getelementptr inbounds %struct.ps_status, %struct.ps_status* %12, i32 0, i32 14
  %13 = load %struct.output*, %struct.output** %setup, align 8
  call void @output_free(%struct.output* %13)
  %14 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %15 = bitcast %struct.ps_status* %14 to i8*
  call void @free(i8* %15) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @multivalued_table_free(%struct.hash_table_s*) #1

; Function Attrs: nounwind uwtable
define internal void @free_dict_entry_table(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.dict_entry*)* @free_dict_entry to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #3
  ret void
}

declare void @output_free(%struct.output*) #1

; Function Attrs: nounwind uwtable
define void @initialize_ps_status(%struct.ps_status* %status) #0 {
entry:
  %status.addr = alloca %struct.ps_status*, align 8
  store %struct.ps_status* %status, %struct.ps_status** %status.addr, align 8
  %0 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %start_page = getelementptr inbounds %struct.ps_status, %struct.ps_status* %0, i32 0, i32 16
  store i32 1, i32* %start_page, align 4
  %1 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %start_line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 17
  store i32 1, i32* %start_line, align 4
  %2 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %line_continued = getelementptr inbounds %struct.ps_status, %struct.ps_status* %2, i32 0, i32 18
  store i32 0, i32* %line_continued, align 4
  %3 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %is_in_cut = getelementptr inbounds %struct.ps_status, %struct.ps_status* %3, i32 0, i32 19
  store i32 0, i32* %is_in_cut, align 4
  %4 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 20
  store i32 0, i32* %face, align 4
  %5 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %5, i32 0, i32 21
  store i32 0, i32* %face_declared, align 4
  %6 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %nonprinting_chars = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 22
  store i32 0, i32* %nonprinting_chars, align 4
  %7 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %chars = getelementptr inbounds %struct.ps_status, %struct.ps_status* %7, i32 0, i32 23
  store i32 0, i32* %chars, align 4
  %8 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %8, i32 0, i32 24
  store i32 0, i32* %line, align 4
  %9 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %column = getelementptr inbounds %struct.ps_status, %struct.ps_status* %9, i32 0, i32 25
  store i32 0, i32* %column, align 4
  %10 = load %struct.ps_status*, %struct.ps_status** %status.addr, align 8
  %wx = getelementptr inbounds %struct.ps_status, %struct.ps_status* %10, i32 0, i32 26
  store i64 0, i64* %wx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_pagedevice(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %entries = alloca %struct.dict_entry**, align 8
  %entry1 = alloca %struct.dict_entry**, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.dict_entry** null, %struct.dict_entry*** %entries, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 12
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %2, i8** null, i32 (i8*, i8*)* null)
  %3 = bitcast i8** %call to %struct.dict_entry**
  store %struct.dict_entry** %3, %struct.dict_entry*** %entries, align 8
  %4 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %5 = load %struct.dict_entry*, %struct.dict_entry** %4, align 8
  %tobool = icmp ne %struct.dict_entry* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 65
  %7 = load %struct.output*, %struct.output** %divertion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %7, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.3, i32 0, i32 0))
  %8 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  store %struct.dict_entry** %8, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %10 = load %struct.dict_entry*, %struct.dict_entry** %9, align 8
  %tobool2 = icmp ne %struct.dict_entry* %10, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 65
  %12 = load %struct.output*, %struct.output** %divertion3, align 8
  %13 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %14 = load %struct.dict_entry*, %struct.dict_entry** %13, align 8
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %14, i32 0, i32 0
  %15 = load i8*, i8** %key, align 8
  %16 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %17 = load %struct.dict_entry*, %struct.dict_entry** %16, align 8
  %value = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %17, i32 0, i32 1
  %18 = load i8*, i8** %value, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %19 to i32
  %call4 = call i32 @toupper(i32 %conv) #3
  %20 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %21 = load %struct.dict_entry*, %struct.dict_entry** %20, align 8
  %value5 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %21, i32 0, i32 1
  %22 = load i8*, i8** %value5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %24 = load %struct.dict_entry*, %struct.dict_entry** %23, align 8
  %key6 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %24, i32 0, i32 0
  %25 = load i8*, i8** %key6, align 8
  %26 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %27 = load %struct.dict_entry*, %struct.dict_entry** %26, align 8
  %value7 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %27, i32 0, i32 1
  %28 = load i8*, i8** %value7, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %12, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i32 0, i32 0), i8* %15, i32 %call4, i8* %add.ptr, i8* %25, i8* %28)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %incdec.ptr = getelementptr inbounds %struct.dict_entry*, %struct.dict_entry** %29, i32 1
  store %struct.dict_entry** %incdec.ptr, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 65
  %31 = load %struct.output*, %struct.output** %divertion8, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %31, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.5, i32 0, i32 0))
  %32 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %33 = bitcast %struct.dict_entry** %32 to i8*
  call void @free(i8* %33) #3
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

declare void @output(%struct.output*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define void @pagedevice_dump(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %entries = alloca %struct.dict_entry**, align 8
  %entry1 = alloca %struct.dict_entry**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.dict_entry** null, %struct.dict_entry*** %entries, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 12
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %2, i8** null, i32 (i8*, i8*)* null)
  %3 = bitcast i8** %call to %struct.dict_entry**
  store %struct.dict_entry** %3, %struct.dict_entry*** %entries, align 8
  %4 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %5 = load %struct.dict_entry*, %struct.dict_entry** %4, align 8
  %tobool = icmp ne %struct.dict_entry* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  store %struct.dict_entry** %7, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %9 = load %struct.dict_entry*, %struct.dict_entry** %8, align 8
  %tobool3 = icmp ne %struct.dict_entry* %9, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %12 = load %struct.dict_entry*, %struct.dict_entry** %11, align 8
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %12, i32 0, i32 0
  %13 = load i8*, i8** %key, align 8
  %14 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %15 = load %struct.dict_entry*, %struct.dict_entry** %14, align 8
  %value = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %15, i32 0, i32 1
  %16 = load i8*, i8** %value, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %17 to i32
  %call4 = call i32 @toupper(i32 %conv) #3
  %18 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %19 = load %struct.dict_entry*, %struct.dict_entry** %18, align 8
  %value5 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %19, i32 0, i32 1
  %20 = load i8*, i8** %value5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %22 = load %struct.dict_entry*, %struct.dict_entry** %21, align 8
  %key6 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %22, i32 0, i32 0
  %23 = load i8*, i8** %key6, align 8
  %24 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %25 = load %struct.dict_entry*, %struct.dict_entry** %24, align 8
  %value7 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %25, i32 0, i32 1
  %26 = load i8*, i8** %value7, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.7, i32 0, i32 0), i8* %13, i32 %call4, i8* %add.ptr, i8* %23, i8* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %incdec.ptr = getelementptr inbounds %struct.dict_entry*, %struct.dict_entry** %27, i32 1
  store %struct.dict_entry** %incdec.ptr, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %30 = bitcast %struct.dict_entry** %29 to i8*
  call void @free(i8* %30) #3
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dump_requirements(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %entries = alloca %struct.dict_entry**, align 8
  %entry1 = alloca %struct.dict_entry**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.dict_entry** null, %struct.dict_entry*** %entries, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 12
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %2, i8** null, i32 (i8*, i8*)* null)
  %3 = bitcast i8** %call to %struct.dict_entry**
  store %struct.dict_entry** %3, %struct.dict_entry*** %entries, align 8
  %4 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %5 = load %struct.dict_entry*, %struct.dict_entry** %4, align 8
  %tobool = icmp ne %struct.dict_entry* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  store %struct.dict_entry** %7, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %9 = load %struct.dict_entry*, %struct.dict_entry** %8, align 8
  %tobool3 = icmp ne %struct.dict_entry* %9, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %12 = load %struct.dict_entry*, %struct.dict_entry** %11, align 8
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %12, i32 0, i32 0
  %13 = load i8*, i8** %key, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %incdec.ptr = getelementptr inbounds %struct.dict_entry*, %struct.dict_entry** %14, i32 1
  store %struct.dict_entry** %incdec.ptr, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %15)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %16 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %17 = bitcast %struct.dict_entry** %16 to i8*
  call void @free(i8* %17) #3
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @setpagedevice(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
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
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 12
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  call void @dict_entry_add(%struct.hash_table_s* %2, i8* %3, i8* %4, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dict_entry_add(%struct.hash_table_s* %table, i8* %key, i8* %value, i32 %def) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %def.addr = alloca i32, align 4
  %item = alloca %struct.dict_entry*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %def, i32* %def.addr, align 4
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.dict_entry*
  store %struct.dict_entry* %0, %struct.dict_entry** %item, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  %2 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  %key2 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %2, i32 0, i32 0
  store i8* %call1, i8** %key2, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %call3 = call i8* @xstrdup(i8* %3)
  %4 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  %value4 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %4, i32 0, i32 1
  store i8* %call3, i8** %value4, align 8
  %5 = load i32, i32* %def.addr, align 4
  %6 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  %def5 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %6, i32 0, i32 2
  store i32 %5, i32* %def5, align 4
  %7 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %8 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  %9 = bitcast %struct.dict_entry* %8 to i8*
  %call6 = call i8* @hash_insert(%struct.hash_table_s* %7, i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @delpagedevice(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 12
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  %3 = load i8*, i8** %key.addr, align 8
  call void @dict_entry_remove(%struct.hash_table_s* %2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dict_entry_remove(%struct.hash_table_s* %table, i8* %key) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %item = alloca %struct.dict_entry*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct.dict_entry* @dict_entry_get(%struct.hash_table_s* %0, i8* %1)
  store %struct.dict_entry* %call, %struct.dict_entry** %item, align 8
  %2 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  %tobool = icmp ne %struct.dict_entry* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %4 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  %5 = bitcast %struct.dict_entry* %4 to i8*
  %call1 = call i8* @hash_delete(%struct.hash_table_s* %3, i8* %5)
  %6 = load %struct.dict_entry*, %struct.dict_entry** %item, align 8
  call void @free_dict_entry(%struct.dict_entry* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_pagedevice(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %pagedevice = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 12
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %pagedevice, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @dict_entry_table_dump(%struct.hash_table_s* %2, %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dict_entry_table_dump(%struct.hash_table_s* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %items = alloca %struct.dict_entry**, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* null)
  %1 = bitcast i8** %call to %struct.dict_entry**
  store %struct.dict_entry** %1, %struct.dict_entry*** %items, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.dict_entry**, %struct.dict_entry*** %items, align 8
  %arrayidx = getelementptr inbounds %struct.dict_entry*, %struct.dict_entry** %3, i64 %idxprom
  %4 = load %struct.dict_entry*, %struct.dict_entry** %arrayidx, align 8
  %tobool = icmp ne %struct.dict_entry* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.dict_entry**, %struct.dict_entry*** %items, align 8
  %arrayidx2 = getelementptr inbounds %struct.dict_entry*, %struct.dict_entry** %6, i64 %idxprom1
  %7 = load %struct.dict_entry*, %struct.dict_entry** %arrayidx2, align 8
  %8 = bitcast %struct.dict_entry* %7 to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @dict_entry_print(i8* %8, %struct._IO_FILE* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %11)
  %12 = load %struct.dict_entry**, %struct.dict_entry*** %items, align 8
  %13 = bitcast %struct.dict_entry** %12 to i8*
  call void @free(i8* %13) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @setstatusdict(%struct.a2ps_job* %job, i8* %key, i8* %value, i32 %def) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %def.addr = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %def, i32* %def.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %statusdict = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 13
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %statusdict, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %5 = load i32, i32* %def.addr, align 4
  call void @dict_entry_add(%struct.hash_table_s* %2, i8* %3, i8* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @delstatusdict(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %statusdict = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 13
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %statusdict, align 8
  %3 = load i8*, i8** %key.addr, align 8
  call void @dict_entry_remove(%struct.hash_table_s* %2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_statusdict(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %entries = alloca %struct.dict_entry**, align 8
  %entry1 = alloca %struct.dict_entry**, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.dict_entry** null, %struct.dict_entry*** %entries, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %statusdict = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 13
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %statusdict, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %2, i8** null, i32 (i8*, i8*)* null)
  %3 = bitcast i8** %call to %struct.dict_entry**
  store %struct.dict_entry** %3, %struct.dict_entry*** %entries, align 8
  %4 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %5 = load %struct.dict_entry*, %struct.dict_entry** %4, align 8
  %tobool = icmp ne %struct.dict_entry* %5, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 65
  %7 = load %struct.output*, %struct.output** %divertion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 65
  %9 = load %struct.output*, %struct.output** %divertion2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  %10 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  store %struct.dict_entry** %10, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %12 = load %struct.dict_entry*, %struct.dict_entry** %11, align 8
  %tobool3 = icmp ne %struct.dict_entry* %12, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %14 = load %struct.dict_entry*, %struct.dict_entry** %13, align 8
  %def = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %14, i32 0, i32 2
  %15 = load i32, i32* %def, align 4
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 65
  %17 = load %struct.output*, %struct.output** %divertion6, align 8
  %18 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %19 = load %struct.dict_entry*, %struct.dict_entry** %18, align 8
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %19, i32 0, i32 0
  %20 = load i8*, i8** %key, align 8
  %21 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %22 = load %struct.dict_entry*, %struct.dict_entry** %21, align 8
  %value = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %22, i32 0, i32 1
  %23 = load i8*, i8** %value, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %20, i8* %23)
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %24, i32 0, i32 65
  %25 = load %struct.output*, %struct.output** %divertion7, align 8
  %26 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %27 = load %struct.dict_entry*, %struct.dict_entry** %26, align 8
  %value8 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %27, i32 0, i32 1
  %28 = load i8*, i8** %value8, align 8
  %29 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %30 = load %struct.dict_entry*, %struct.dict_entry** %29, align 8
  %key9 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %30, i32 0, i32 0
  %31 = load i8*, i8** %key9, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* %28, i8* %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct.dict_entry**, %struct.dict_entry*** %entry1, align 8
  %incdec.ptr = getelementptr inbounds %struct.dict_entry*, %struct.dict_entry** %32, i32 1
  store %struct.dict_entry** %incdec.ptr, %struct.dict_entry*** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion10 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %33, i32 0, i32 65
  %34 = load %struct.output*, %struct.output** %divertion10, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  %35 = load %struct.dict_entry**, %struct.dict_entry*** %entries, align 8
  %36 = bitcast %struct.dict_entry** %35 to i8*
  call void @free(i8* %36) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_statusdict(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %statusdict = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 13
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %statusdict, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @dict_entry_table_dump(%struct.hash_table_s* %2, %struct._IO_FILE* %3)
  ret void
}

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @key_hash_1(i8* %key) #0 {
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
  %1 = bitcast i8* %0 to %struct.dict_entry*
  %key2 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %1, i32 0, i32 0
  %2 = load i8*, i8** %key2, align 8
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
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 15
  %shl = shl i32 %conv, %and
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
define internal i64 @key_hash_2(i8* %key) #0 {
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
  %1 = bitcast i8* %0 to %struct.dict_entry*
  %key2 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %1, i32 0, i32 0
  %2 = load i8*, i8** %key2, align 8
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
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 7
  %shl = shl i32 %conv, %and
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
define internal i32 @key_hash_cmp(i8* %x, i8* %y) #0 {
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
  %1 = bitcast i8* %0 to %struct.dict_entry*
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to %struct.dict_entry*
  %key2 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %key2, align 8
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
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i8*, i8** %xx, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %12 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %13 = load i8*, i8** %xx, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load i8*, i8** %yy, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %17 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %17
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @free_dict_entry(%struct.dict_entry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.dict_entry*, align 8
  store %struct.dict_entry* %entry1, %struct.dict_entry** %entry.addr, align 8
  %0 = load %struct.dict_entry*, %struct.dict_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  call void @free(i8* %1) #3
  %2 = load %struct.dict_entry*, %struct.dict_entry** %entry.addr, align 8
  %value = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  call void @free(i8* %3) #3
  %4 = load %struct.dict_entry*, %struct.dict_entry** %entry.addr, align 8
  %5 = bitcast %struct.dict_entry* %4 to i8*
  call void @free(i8* %5) #3
  ret void
}

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.dict_entry* @dict_entry_get(%struct.hash_table_s* %table, i8* %key) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %token = alloca %struct.dict_entry, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.dict_entry* %token to i8*
  %call = call i8* @hash_find_item(%struct.hash_table_s* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.dict_entry*
  ret %struct.dict_entry* %3
}

declare i8* @hash_delete(%struct.hash_table_s*, i8*) #1

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dict_entry_print(i8* %item, %struct._IO_FILE* %stream) #0 {
entry:
  %item.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %tok = alloca %struct.dict_entry*, align 8
  store i8* %item, i8** %item.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %item.addr, align 8
  %1 = bitcast i8* %0 to %struct.dict_entry*
  store %struct.dict_entry* %1, %struct.dict_entry** %tok, align 8
  %2 = load %struct.dict_entry*, %struct.dict_entry** %tok, align 8
  %def = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %2, i32 0, i32 2
  %3 = load i32, i32* %def, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.dict_entry*, %struct.dict_entry** %tok, align 8
  %key = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %5, i32 0, i32 0
  %6 = load i8*, i8** %key, align 8
  %7 = load %struct.dict_entry*, %struct.dict_entry** %tok, align 8
  %value = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %7, i32 0, i32 1
  %8 = load i8*, i8** %value, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %6, i8* %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %10 = load %struct.dict_entry*, %struct.dict_entry** %tok, align 8
  %key1 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %10, i32 0, i32 0
  %11 = load i8*, i8** %key1, align 8
  %12 = load %struct.dict_entry*, %struct.dict_entry** %tok, align 8
  %value2 = getelementptr inbounds %struct.dict_entry, %struct.dict_entry* %12, i32 0, i32 1
  %13 = load i8*, i8** %value2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %11, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
