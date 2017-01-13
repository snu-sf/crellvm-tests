; ModuleID = './lib/faces.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.face_and_name = type { i8*, i32 }
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

@base_faces = global [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1], align 16
@face_and_name = internal constant [12 x %struct.face_and_name] [%struct.face_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 -1 }, %struct.face_and_name { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 0 }, %struct.face_and_name { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.face_and_name { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 2 }, %struct.face_and_name { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 3 }, %struct.face_and_name { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 4 }, %struct.face_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 5 }, %struct.face_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 6 }, %struct.face_and_name { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 7 }, %struct.face_and_name { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 8 }, %struct.face_and_name { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 9 }, %struct.face_and_name { i8* null, i32 -1 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sy\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"face_eo_ps: %d\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"%s: face `\00", align 1
@program_name = external global i8*, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"' (%d) has no specified font\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"incomplete knowledge of faces\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"NoFace\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Plain\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Keyword\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Keyword_strong\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Label\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Label_strong\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Comment_strong\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"UnknownFace\00", align 1

; Function Attrs: nounwind uwtable
define i32 @string_to_face(i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.face_and_name], [12 x %struct.face_and_name]* @face_and_name, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.face_and_name, %struct.face_and_name* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [12 x %struct.face_and_name], [12 x %struct.face_and_name]* @face_and_name, i32 0, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.face_and_name, %struct.face_and_name* %arrayidx2, i32 0, i32 0
  %4 = load i8*, i8** %name3, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [12 x %struct.face_and_name], [12 x %struct.face_and_name]* @face_and_name, i32 0, i64 %idxprom4
  %face = getelementptr inbounds %struct.face_and_name, %struct.face_and_name* %arrayidx5, i32 0, i32 1
  %6 = load i32, i32* %face, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @face_to_string(i32 %face) #0 {
entry:
  %face.addr = alloca i32, align 4
  store i32 %face, i32* %face.addr, align 4
  %0 = load i32, i32* %face.addr, align 4
  %call = call i8* @_face_to_string(i32 %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @_face_to_string(i32 %face) #2 {
entry:
  %retval = alloca i8*, align 8
  %face.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %face, i32* %face.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.face_and_name], [12 x %struct.face_and_name]* @face_and_name, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.face_and_name, %struct.face_and_name* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %face.addr, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [12 x %struct.face_and_name], [12 x %struct.face_and_name]* @face_and_name, i32 0, i64 %idxprom1
  %face3 = getelementptr inbounds %struct.face_and_name, %struct.face_and_name* %arrayidx2, i32 0, i32 1
  %4 = load i32, i32* %face3, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [12 x %struct.face_and_name], [12 x %struct.face_and_name]* @face_and_name, i32 0, i64 %idxprom4
  %name6 = getelementptr inbounds %struct.face_and_name, %struct.face_and_name* %arrayidx5, i32 0, i32 0
  %6 = load i8*, i8** %name6, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define void @face_self_print(i32 %face, %struct._IO_FILE* %stream) #0 {
entry:
  %face.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i32 %face, i32* %face.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32, i32* %face.addr, align 4
  %call = call i8* @_face_to_string(i32 %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %1)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i8* @face_eo_ps(i32 %face) #0 {
entry:
  %retval = alloca i8*, align 8
  %face.addr = alloca i32, align 4
  store i32 %face, i32* %face.addr, align 4
  %0 = load i32, i32* %face.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 6, label %sw.bb.1
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
    i32 8, label %sw.bb.4
    i32 9, label %sw.bb.5
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.8
    i32 7, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %face.addr, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i8*, i8** %retval
  ret i8* %2
}

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @check_face_eo_font(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 0, i32* %err, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* @base_faces, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [11 x i32], [11 x i32]* @base_faces, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font, i32 0, i64 %idxprom3
  %5 = load i8*, i8** %arrayidx4, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %err, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @program_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [11 x i32], [11 x i32]* @base_faces, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @face_self_print(i32 %9, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [11 x i32], [11 x i32]* @base_faces, i32 0, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %err, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0)) #6
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @face_eo_font_is_set(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %f = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 1, i32* %res, align 4
  store i32 0, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %f, align 4
  %cmp = icmp sle i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %f, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %f, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %res, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @init_face_eo_font(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %f = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 0, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %f, align 4
  %cmp = icmp sle i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %f, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %f, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @face_eo_font_free(i8** %face_eo_font) #0 {
entry:
  %face_eo_font.addr = alloca i8**, align 8
  %f = alloca i32, align 4
  store i8** %face_eo_font, i8*** %face_eo_font.addr, align 8
  store i32 0, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %f, align 4
  %cmp = icmp sle i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load i32, i32* %f, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %face_eo_font.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %f, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8**, i8*** %face_eo_font.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8
  call void @free(i8* %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i32, i32* %f, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @face_set_font(%struct.a2ps_job* %job, i32 %face, i8* %font_name) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %face.addr = alloca i32, align 4
  %font_name.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %face, i32* %face.addr, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %face.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 23
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %face.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 23
  %arrayidx3 = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font2, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load i8*, i8** %font_name.addr, align 8
  %call = call i8* @xstrdup(i8* %6)
  %7 = load i32, i32* %face.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font5, i32 0, i64 %idxprom4
  store i8* %call, i8** %arrayidx6, align 8
  ret void
}

declare i8* @xstrdup(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
