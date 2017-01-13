; ModuleID = './lib/psgen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.encoding = type opaque
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%sdict begin\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"end %% of %sdict\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c") %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c") S\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"(%d) # (\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"0 T (\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c") %s\0A(\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c") S\0A(\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c") %s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c") S\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" %d T (\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Page label\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"grestore\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"right header\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c") rhead\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"center footer\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"() \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"right footer\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"left footer\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"footer\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"pagesave restore\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"showpage\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"/v %d store\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"/x0 x v get %f add sx cw mul add store\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"/y0 y v get bfs %s sub store\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"th add\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"x0 y0 moveto\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"%%%%Page: (\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c") %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"%%%%BeginPageSetup\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"/pagesave save def\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%d 0 translate\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"sh 0 translate 90 rotate\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"%%%%EndPageSetup\0A\00", align 1
@.str.37 = private unnamed_addr constant [181 x i8] c"%% Display the bounding box\0A  gsave\0A    llx lly moveto\0A    2 setlinewidth\0A    0.9 setgray\0A    urx lly lineto\0A    urx ury lineto\0A    llx ury lineto\0A    closepath stroke\0A  grestore\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"water mark\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c") %4.2f water\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gsave\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"llx lly %d add translate\0A\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c") %s n\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c") N\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"center title\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"right title\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"left title\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"title\0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"border\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%s\5C%o\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"\5C\5C%03o\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"\5C\5Cx%02x\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"C-\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"C-?\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"opt.virtual.force\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"%%%%Page: (*) %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"%% Empty Page\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"`%s' is a binary file, printing aborted\00", align 1

; Function Attrs: nounwind uwtable
define void @ps_set_encoding(%struct.a2ps_job* %job, %struct.encoding* %enc) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  call void @set_encoding(%struct.a2ps_job* %0, %struct.encoding* %1)
  %2 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 64
  %4 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %opened_encoding = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 7
  store %struct.encoding* %2, %struct.encoding** %opened_encoding, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 65
  %6 = load %struct.output*, %struct.output** %divertion, align 8
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %call = call i8* @encoding_get_key(%struct.encoding* %7)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call)
  ret void
}

declare void @set_encoding(%struct.a2ps_job*, %struct.encoding*) #1

declare void @output(%struct.output*, i8*, ...) #1

declare i8* @encoding_get_key(%struct.encoding*) #1

; Function Attrs: nounwind uwtable
define void @ps_end_encoding(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %opened_encoding = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 7
  %2 = load %struct.encoding*, %struct.encoding** %opened_encoding, align 8
  %tobool = icmp ne %struct.encoding* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 65
  %4 = load %struct.output*, %struct.output** %divertion, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 64
  %6 = load %struct.ps_status*, %struct.ps_status** %status1, align 8
  %opened_encoding2 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 7
  %7 = load %struct.encoding*, %struct.encoding** %opened_encoding2, align 8
  %call = call i8* @encoding_get_key(%struct.encoding* %7)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @set_encoding(%struct.a2ps_job* %8, %struct.encoding* null)
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 64
  %10 = load %struct.ps_status*, %struct.ps_status** %status3, align 8
  %opened_encoding4 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %10, i32 0, i32 7
  store %struct.encoding* null, %struct.encoding** %opened_encoding4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_switch_encoding(%struct.a2ps_job* %job, %struct.encoding* %enc) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 43
  %1 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %2 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %cmp = icmp ne %struct.encoding* %1, %2
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 64
  %4 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %start_line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 17
  %5 = load i32, i32* %start_line, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.7, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 64
  %7 = load %struct.ps_status*, %struct.ps_status** %status2, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %7, i32 0, i32 21
  %8 = load i32, i32* %face_declared, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 65
  %10 = load %struct.output*, %struct.output** %divertion, align 8
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 64
  %12 = load %struct.ps_status*, %struct.ps_status** %status5, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %12, i32 0, i32 20
  %13 = load i32, i32* %face, align 4
  %call = call i8* @face_eo_ps(i32 %13)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %call)
  br label %if.end

if.else:                                          ; preds = %if.then.1
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 65
  %15 = load %struct.output*, %struct.output** %divertion6, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  call void @ps_internal_switch_encoding(%struct.a2ps_job* %16, %struct.encoding* %17)
  %18 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 46
  store %struct.encoding* %18, %struct.encoding** %saved_encoding, align 8
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 64
  %21 = load %struct.ps_status*, %struct.ps_status** %status8, align 8
  %start_line9 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %21, i32 0, i32 17
  %22 = load i32, i32* %start_line9, align 4
  %tobool10 = icmp ne i32 %22, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 65
  %24 = load %struct.output*, %struct.output** %divertion12, align 8
  call void @output_char(%struct.output* %24, i8 zeroext 40)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  ret void
}

declare i8* @face_eo_ps(i32) #1

; Function Attrs: nounwind uwtable
define internal void @ps_internal_switch_encoding(%struct.a2ps_job* %job, %struct.encoding* %enc) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 43
  %1 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %2 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %cmp = icmp ne %struct.encoding* %1, %2
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 64
  %4 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %opened_encoding = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 7
  %5 = load %struct.encoding*, %struct.encoding** %opened_encoding, align 8
  %tobool = icmp ne %struct.encoding* %5, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_end_encoding(%struct.a2ps_job* %6)
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %8 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  call void @ps_set_encoding(%struct.a2ps_job* %7, %struct.encoding* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_end_encoding(%struct.a2ps_job* %9)
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  call void @set_encoding(%struct.a2ps_job* %10, %struct.encoding* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 64
  %13 = load %struct.ps_status*, %struct.ps_status** %status2, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %13, i32 0, i32 21
  store i32 0, i32* %face_declared, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

declare void @output_char(%struct.output*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define void @page_flush(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 65
  %1 = load %struct.output*, %struct.output** %divertion, align 8
  call void @output_to_void(%struct.output* %1, i32 0)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 17
  %3 = load i32, i32* %virtual, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_end(%struct.a2ps_job* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @output_to_void(%struct.output*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @page_end(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 68
  %2 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 1
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 68
  %5 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %sub
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.file_job*
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 64
  %10 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %page_label_format = getelementptr inbounds %struct.ps_status, %struct.ps_status* %10, i32 0, i32 6
  %11 = load i8*, i8** %page_label_format, align 8
  %call = call i8* @expand_user_string(%struct.a2ps_job* %0, %struct.file_job* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* %11)
  %call2 = call i8* @xstrdup(i8* %call)
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 64
  %13 = load %struct.ps_status*, %struct.ps_status** %status3, align 8
  %page_label = getelementptr inbounds %struct.ps_status, %struct.ps_status* %13, i32 0, i32 15
  %14 = load i8**, i8*** %page_label, align 8
  store i8* %call2, i8** %14, align 8
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 65
  %16 = load %struct.output*, %struct.output** %divertion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 45
  %19 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  call void @ps_push_encoding(%struct.a2ps_job* %17, %struct.encoding* %19)
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 51
  %21 = load i8*, i8** %header, align 8
  %cmp = icmp eq i8* %21, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %22, i32 0, i32 51
  %23 = load i8*, i8** %header4, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 65
  %26 = load %struct.output*, %struct.output** %divertion7, align 8
  call void @output_char(%struct.output* %26, i8 zeroext 40)
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 51
  %29 = load i8*, i8** %header8, align 8
  call void @output_marker(%struct.a2ps_job* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %29)
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion9 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 65
  %31 = load %struct.output*, %struct.output** %divertion9, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 56
  %33 = load i8*, i8** %footer, align 8
  %cmp10 = icmp eq i8* %33, null
  br i1 %cmp10, label %lor.lhs.false.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer13 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 56
  %35 = load i8*, i8** %footer13, align 8
  %36 = load i8, i8* %35, align 1
  %conv14 = zext i8 %36 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %lor.lhs.false.17, label %if.then.33

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.12, %if.end
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 55
  %38 = load i8*, i8** %left_footer, align 8
  %cmp18 = icmp eq i8* %38, null
  br i1 %cmp18, label %lor.lhs.false.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer21 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 55
  %40 = load i8*, i8** %left_footer21, align 8
  %41 = load i8, i8* %40, align 1
  %conv22 = zext i8 %41 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %lor.lhs.false.25, label %if.then.33

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.20, %lor.lhs.false.17
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 57
  %43 = load i8*, i8** %right_footer, align 8
  %cmp26 = icmp eq i8* %43, null
  br i1 %cmp26, label %if.end.79, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer29 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 57
  %45 = load i8*, i8** %right_footer29, align 8
  %46 = load i8, i8* %45, align 1
  %conv30 = zext i8 %46 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.end.79, label %if.then.33

if.then.33:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.20, %lor.lhs.false.12
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer34 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 56
  %48 = load i8*, i8** %footer34, align 8
  %cmp35 = icmp eq i8* %48, null
  br i1 %cmp35, label %if.else, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.then.33
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer38 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 56
  %50 = load i8*, i8** %footer38, align 8
  %51 = load i8, i8* %50, align 1
  %conv39 = zext i8 %51 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.else, label %if.then.42

if.then.42:                                       ; preds = %lor.lhs.false.37
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion43 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 65
  %53 = load %struct.output*, %struct.output** %divertion43, align 8
  call void @output_char(%struct.output* %53, i8 zeroext 40)
  %54 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 56
  %56 = load i8*, i8** %footer44, align 8
  call void @output_marker(%struct.a2ps_job* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* %56)
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 65
  %58 = load %struct.output*, %struct.output** %divertion45, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.47

if.else:                                          ; preds = %lor.lhs.false.37, %if.then.33
  %59 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion46 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %59, i32 0, i32 65
  %60 = load %struct.output*, %struct.output** %divertion46, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.42
  %61 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %61, i32 0, i32 57
  %62 = load i8*, i8** %right_footer48, align 8
  %cmp49 = icmp eq i8* %62, null
  br i1 %cmp49, label %if.else.60, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.47
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer52 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 57
  %64 = load i8*, i8** %right_footer52, align 8
  %65 = load i8, i8* %64, align 1
  %conv53 = zext i8 %65 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.else.60, label %if.then.56

if.then.56:                                       ; preds = %lor.lhs.false.51
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %66, i32 0, i32 65
  %67 = load %struct.output*, %struct.output** %divertion57, align 8
  call void @output_char(%struct.output* %67, i8 zeroext 40)
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer58 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 57
  %70 = load i8*, i8** %right_footer58, align 8
  call void @output_marker(%struct.a2ps_job* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* %70)
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion59 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 65
  %72 = load %struct.output*, %struct.output** %divertion59, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.62

if.else.60:                                       ; preds = %lor.lhs.false.51, %if.end.47
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion61 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 65
  %74 = load %struct.output*, %struct.output** %divertion61, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.56
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer63 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 55
  %76 = load i8*, i8** %left_footer63, align 8
  %cmp64 = icmp eq i8* %76, null
  br i1 %cmp64, label %if.else.75, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.62
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer67 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %77, i32 0, i32 55
  %78 = load i8*, i8** %left_footer67, align 8
  %79 = load i8, i8* %78, align 1
  %conv68 = zext i8 %79 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %if.else.75, label %if.then.71

if.then.71:                                       ; preds = %lor.lhs.false.66
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion72 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %80, i32 0, i32 65
  %81 = load %struct.output*, %struct.output** %divertion72, align 8
  call void @output_char(%struct.output* %81, i8 zeroext 40)
  %82 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %83 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer73 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %83, i32 0, i32 55
  %84 = load i8*, i8** %left_footer73, align 8
  call void @output_marker(%struct.a2ps_job* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* %84)
  %85 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion74 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %85, i32 0, i32 65
  %86 = load %struct.output*, %struct.output** %divertion74, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.77

if.else.75:                                       ; preds = %lor.lhs.false.66, %if.end.62
  %87 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion76 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %87, i32 0, i32 65
  %88 = load %struct.output*, %struct.output** %divertion76, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.71
  %89 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion78 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %89, i32 0, i32 65
  %90 = load %struct.output*, %struct.output** %divertion78, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.77, %lor.lhs.false.28, %lor.lhs.false.25
  %91 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_end_encoding(%struct.a2ps_job* %91)
  %92 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion80 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %92, i32 0, i32 65
  %93 = load %struct.output*, %struct.output** %divertion80, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  %94 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion81 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %94, i32 0, i32 65
  %95 = load %struct.output*, %struct.output** %divertion81, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  %96 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %96, i32 0, i32 17
  store i32 0, i32* %virtual, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @require_fresh_page(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 17
  %1 = load i32, i32* %virtual, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_flush(%struct.a2ps_job* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_print_char(%struct.a2ps_job* %job, i32 %c, i32 %new_face) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %c.addr = alloca i32, align 4
  %new_face.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %nchars = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %new_face, i32* %new_face.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %is_in_cut = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 19
  %2 = load i32, i32* %is_in_cut, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %3, 12
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp ne i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 64
  %6 = load %struct.ps_status*, %struct.ps_status** %status3, align 8
  %is_in_cut4 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 19
  store i32 0, i32* %is_in_cut4, align 4
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 64
  %8 = load %struct.ps_status*, %struct.ps_status** %status5, align 8
  %start_line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %8, i32 0, i32 17
  %9 = load i32, i32* %start_line, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.75

if.then.7:                                        ; preds = %if.end
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 64
  %11 = load %struct.ps_status*, %struct.ps_status** %status8, align 8
  %start_page = getelementptr inbounds %struct.ps_status, %struct.ps_status* %11, i32 0, i32 16
  %12 = load i32, i32* %start_page, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.else.33

if.then.10:                                       ; preds = %if.then.7
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_begin(%struct.a2ps_job* %13)
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status11 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 64
  %15 = load %struct.ps_status*, %struct.ps_status** %status11, align 8
  %start_page12 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %15, i32 0, i32 16
  store i32 0, i32* %start_page12, align 4
  %16 = load i32, i32* %new_face.addr, align 4
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status13 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 64
  %18 = load %struct.ps_status*, %struct.ps_status** %status13, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %18, i32 0, i32 20
  store i32 %16, i32* %face, align 4
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 64
  %20 = load %struct.ps_status*, %struct.ps_status** %status14, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %20, i32 0, i32 21
  store i32 0, i32* %face_declared, align 4
  %21 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %21, i32 0, i32 29
  %22 = load i32, i32* %numbering, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.else.30

if.then.16:                                       ; preds = %if.then.10
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 68
  %24 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %24, i32 0, i32 5
  %25 = load i64, i64* %len, align 8
  %sub = sub i64 %25, 1
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs17 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 68
  %27 = load %struct.darray*, %struct.darray** %jobs17, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 6
  %28 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %28, i64 %sub
  %29 = load i8*, i8** %arrayidx, align 8
  %30 = bitcast i8* %29 to %struct.file_job*
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %30, i32 0, i32 17
  %31 = load i32, i32* %lines, align 4
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering18 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 29
  %33 = load i32, i32* %numbering18, align 4
  %rem = srem i32 %31, %33
  %cmp19 = icmp eq i32 %rem, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.16
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 65
  %35 = load %struct.output*, %struct.output** %divertion, align 8
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs21 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 68
  %37 = load %struct.darray*, %struct.darray** %jobs21, align 8
  %len22 = getelementptr inbounds %struct.darray, %struct.darray* %37, i32 0, i32 5
  %38 = load i64, i64* %len22, align 8
  %sub23 = sub i64 %38, 1
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs24 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 68
  %40 = load %struct.darray*, %struct.darray** %jobs24, align 8
  %content25 = getelementptr inbounds %struct.darray, %struct.darray* %40, i32 0, i32 6
  %41 = load i8**, i8*** %content25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %41, i64 %sub23
  %42 = load i8*, i8** %arrayidx26, align 8
  %43 = bitcast i8* %42 to %struct.file_job*
  %lines27 = getelementptr inbounds %struct.file_job, %struct.file_job* %43, i32 0, i32 17
  %44 = load i32, i32* %lines27, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %44)
  br label %if.end.29

if.else:                                          ; preds = %if.then.16
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion28 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %45, i32 0, i32 65
  %46 = load %struct.output*, %struct.output** %divertion28, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.20
  br label %if.end.32

if.else.30:                                       ; preds = %if.then.10
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion31 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 65
  %48 = load %struct.output*, %struct.output** %divertion31, align 8
  call void @output_char(%struct.output* %48, i8 zeroext 40)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.end.29
  br label %if.end.72

if.else.33:                                       ; preds = %if.then.7
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering34 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 29
  %50 = load i32, i32* %numbering34, align 4
  %tobool35 = icmp ne i32 %50, 0
  br i1 %tobool35, label %if.then.36, label %if.else.59

if.then.36:                                       ; preds = %if.else.33
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs37 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 68
  %52 = load %struct.darray*, %struct.darray** %jobs37, align 8
  %len38 = getelementptr inbounds %struct.darray, %struct.darray* %52, i32 0, i32 5
  %53 = load i64, i64* %len38, align 8
  %sub39 = sub i64 %53, 1
  %54 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs40 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %54, i32 0, i32 68
  %55 = load %struct.darray*, %struct.darray** %jobs40, align 8
  %content41 = getelementptr inbounds %struct.darray, %struct.darray* %55, i32 0, i32 6
  %56 = load i8**, i8*** %content41, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %56, i64 %sub39
  %57 = load i8*, i8** %arrayidx42, align 8
  %58 = bitcast i8* %57 to %struct.file_job*
  %lines43 = getelementptr inbounds %struct.file_job, %struct.file_job* %58, i32 0, i32 17
  %59 = load i32, i32* %lines43, align 4
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 29
  %61 = load i32, i32* %numbering44, align 4
  %rem45 = srem i32 %59, %61
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.56

if.then.47:                                       ; preds = %if.then.36
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %62, i32 0, i32 65
  %63 = load %struct.output*, %struct.output** %divertion48, align 8
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs49 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %64, i32 0, i32 68
  %65 = load %struct.darray*, %struct.darray** %jobs49, align 8
  %len50 = getelementptr inbounds %struct.darray, %struct.darray* %65, i32 0, i32 5
  %66 = load i64, i64* %len50, align 8
  %sub51 = sub i64 %66, 1
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs52 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 68
  %68 = load %struct.darray*, %struct.darray** %jobs52, align 8
  %content53 = getelementptr inbounds %struct.darray, %struct.darray* %68, i32 0, i32 6
  %69 = load i8**, i8*** %content53, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %69, i64 %sub51
  %70 = load i8*, i8** %arrayidx54, align 8
  %71 = bitcast i8* %70 to %struct.file_job*
  %lines55 = getelementptr inbounds %struct.file_job, %struct.file_job* %71, i32 0, i32 17
  %72 = load i32, i32* %lines55, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %72)
  br label %if.end.58

if.else.56:                                       ; preds = %if.then.36
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 65
  %74 = load %struct.output*, %struct.output** %divertion57, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.47
  br label %if.end.71

if.else.59:                                       ; preds = %if.else.33
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion60 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 65
  %76 = load %struct.output*, %struct.output** %divertion60, align 8
  call void @output_char(%struct.output* %76, i8 zeroext 40)
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status61 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %77, i32 0, i32 64
  %78 = load %struct.ps_status*, %struct.ps_status** %status61, align 8
  %face_declared62 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %78, i32 0, i32 21
  %79 = load i32, i32* %face_declared62, align 4
  %tobool63 = icmp ne i32 %79, 0
  br i1 %tobool63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.59
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status64 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %80, i32 0, i32 64
  %81 = load %struct.ps_status*, %struct.ps_status** %status64, align 8
  %face65 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %81, i32 0, i32 20
  %82 = load i32, i32* %face65, align 4
  %83 = load i32, i32* %new_face.addr, align 4
  %cmp66 = icmp eq i32 %82, %83
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.59
  %84 = phi i1 [ false, %if.else.59 ], [ %cmp66, %land.rhs ]
  %land.ext = zext i1 %84 to i32
  %85 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status67 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %85, i32 0, i32 64
  %86 = load %struct.ps_status*, %struct.ps_status** %status67, align 8
  %face_declared68 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %86, i32 0, i32 21
  store i32 %land.ext, i32* %face_declared68, align 4
  %87 = load i32, i32* %new_face.addr, align 4
  %88 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status69 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %88, i32 0, i32 64
  %89 = load %struct.ps_status*, %struct.ps_status** %status69, align 8
  %face70 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %89, i32 0, i32 20
  store i32 %87, i32* %face70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %land.end, %if.end.58
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.32
  %90 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status73 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %90, i32 0, i32 64
  %91 = load %struct.ps_status*, %struct.ps_status** %status73, align 8
  %start_line74 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %91, i32 0, i32 17
  store i32 0, i32* %start_line74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %if.end
  %92 = load i32, i32* %c.addr, align 4
  switch i32 %92, label %sw.default [
    i32 12, label %sw.bb
    i32 10, label %sw.bb.93
    i32 9, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.75
  %93 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %interpret = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %93, i32 0, i32 31
  %94 = load i32, i32* %interpret, align 4
  %tobool76 = icmp ne i32 %94, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %sw.bb
  br label %print

if.end.78:                                        ; preds = %sw.bb
  %95 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status79 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %95, i32 0, i32 64
  %96 = load %struct.ps_status*, %struct.ps_status** %status79, align 8
  %start_line80 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %96, i32 0, i32 17
  %97 = load i32, i32* %start_line80, align 4
  %tobool81 = icmp ne i32 %97, 0
  br i1 %tobool81, label %if.end.85, label %if.then.82

if.then.82:                                       ; preds = %if.end.78
  %98 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @end_of_line(%struct.a2ps_job* %98)
  %99 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status83 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %99, i32 0, i32 64
  %100 = load %struct.ps_status*, %struct.ps_status** %status83, align 8
  %start_line84 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %100, i32 0, i32 17
  store i32 1, i32* %start_line84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %if.end.78
  %101 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status86 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %101, i32 0, i32 64
  %102 = load %struct.ps_status*, %struct.ps_status** %status86, align 8
  %start_page87 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %102, i32 0, i32 16
  %103 = load i32, i32* %start_page87, align 4
  %tobool88 = icmp ne i32 %103, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.85
  %104 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_begin(%struct.a2ps_job* %104)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.85
  %105 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_end(%struct.a2ps_job* %105)
  %106 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status91 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %106, i32 0, i32 64
  %107 = load %struct.ps_status*, %struct.ps_status** %status91, align 8
  %start_page92 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %107, i32 0, i32 16
  store i32 1, i32* %start_page92, align 4
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.75
  %108 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs94 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %108, i32 0, i32 68
  %109 = load %struct.darray*, %struct.darray** %jobs94, align 8
  %len95 = getelementptr inbounds %struct.darray, %struct.darray* %109, i32 0, i32 5
  %110 = load i64, i64* %len95, align 8
  %sub96 = sub i64 %110, 1
  %111 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs97 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %111, i32 0, i32 68
  %112 = load %struct.darray*, %struct.darray** %jobs97, align 8
  %content98 = getelementptr inbounds %struct.darray, %struct.darray* %112, i32 0, i32 6
  %113 = load i8**, i8*** %content98, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %113, i64 %sub96
  %114 = load i8*, i8** %arrayidx99, align 8
  %115 = bitcast i8* %114 to %struct.file_job*
  %lines100 = getelementptr inbounds %struct.file_job, %struct.file_job* %115, i32 0, i32 17
  %116 = load i32, i32* %lines100, align 4
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %lines100, align 4
  %117 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status101 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %117, i32 0, i32 64
  %118 = load %struct.ps_status*, %struct.ps_status** %status101, align 8
  %start_line102 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %118, i32 0, i32 17
  store i32 1, i32* %start_line102, align 4
  %119 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @end_of_line(%struct.a2ps_job* %119)
  %120 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status103 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %120, i32 0, i32 64
  %121 = load %struct.ps_status*, %struct.ps_status** %status103, align 8
  %line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %121, i32 0, i32 24
  %122 = load i32, i32* %line, align 4
  %123 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status104 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %123, i32 0, i32 64
  %124 = load %struct.ps_status*, %struct.ps_status** %status104, align 8
  %linesperpage = getelementptr inbounds %struct.ps_status, %struct.ps_status* %124, i32 0, i32 2
  %125 = load i32, i32* %linesperpage, align 4
  %cmp105 = icmp sge i32 %122, %125
  br i1 %cmp105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %sw.bb.93
  %126 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_end(%struct.a2ps_job* %126)
  %127 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status107 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %127, i32 0, i32 64
  %128 = load %struct.ps_status*, %struct.ps_status** %status107, align 8
  %start_page108 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %128, i32 0, i32 16
  store i32 1, i32* %start_page108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %sw.bb.93
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end.75
  %129 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %interpret111 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %129, i32 0, i32 31
  %130 = load i32, i32* %interpret111, align 4
  %tobool112 = icmp ne i32 %130, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %sw.bb.110
  br label %print

if.end.114:                                       ; preds = %sw.bb.110
  %131 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status115 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %131, i32 0, i32 64
  %132 = load %struct.ps_status*, %struct.ps_status** %status115, align 8
  %face116 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %132, i32 0, i32 20
  %133 = load i32, i32* %face116, align 4
  %134 = load i32, i32* %new_face.addr, align 4
  %cmp117 = icmp ne i32 %133, %134
  br i1 %cmp117, label %if.then.118, label %if.end.133

if.then.118:                                      ; preds = %if.end.114
  %135 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status119 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %135, i32 0, i32 64
  %136 = load %struct.ps_status*, %struct.ps_status** %status119, align 8
  %face_declared120 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %136, i32 0, i32 21
  %137 = load i32, i32* %face_declared120, align 4
  %tobool121 = icmp ne i32 %137, 0
  br i1 %tobool121, label %if.else.126, label %if.then.122

if.then.122:                                      ; preds = %if.then.118
  %138 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion123 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %138, i32 0, i32 65
  %139 = load %struct.output*, %struct.output** %divertion123, align 8
  %140 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status124 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %140, i32 0, i32 64
  %141 = load %struct.ps_status*, %struct.ps_status** %status124, align 8
  %face125 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %141, i32 0, i32 20
  %142 = load i32, i32* %face125, align 4
  %call = call i8* @face_eo_ps(i32 %142)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call)
  br label %if.end.128

if.else.126:                                      ; preds = %if.then.118
  %143 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion127 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %143, i32 0, i32 65
  %144 = load %struct.output*, %struct.output** %divertion127, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.122
  %145 = load i32, i32* %new_face.addr, align 4
  %146 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status129 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %146, i32 0, i32 64
  %147 = load %struct.ps_status*, %struct.ps_status** %status129, align 8
  %face130 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %147, i32 0, i32 20
  store i32 %145, i32* %face130, align 4
  %148 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status131 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %148, i32 0, i32 64
  %149 = load %struct.ps_status*, %struct.ps_status** %status131, align 8
  %face_declared132 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %149, i32 0, i32 21
  store i32 0, i32* %face_declared132, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.128, %if.end.114
  %150 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status134 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %150, i32 0, i32 64
  %151 = load %struct.ps_status*, %struct.ps_status** %status134, align 8
  %wx = getelementptr inbounds %struct.ps_status, %struct.ps_status* %151, i32 0, i32 26
  %152 = load i64, i64* %wx, align 8
  %div = udiv i64 %152, 600
  %153 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status135 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %153, i32 0, i32 64
  %154 = load %struct.ps_status*, %struct.ps_status** %status135, align 8
  %column = getelementptr inbounds %struct.ps_status, %struct.ps_status* %154, i32 0, i32 25
  %155 = load i32, i32* %column, align 4
  %conv = zext i32 %155 to i64
  %cmp136 = icmp ugt i64 %div, %conv
  br i1 %cmp136, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.133
  %156 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status138 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %156, i32 0, i32 64
  %157 = load %struct.ps_status*, %struct.ps_status** %status138, align 8
  %wx139 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %157, i32 0, i32 26
  %158 = load i64, i64* %wx139, align 8
  %div140 = udiv i64 %158, 600
  br label %cond.end

cond.false:                                       ; preds = %if.end.133
  %159 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status141 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %159, i32 0, i32 64
  %160 = load %struct.ps_status*, %struct.ps_status** %status141, align 8
  %column142 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %160, i32 0, i32 25
  %161 = load i32, i32* %column142, align 4
  %conv143 = zext i32 %161 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div140, %cond.true ], [ %conv143, %cond.false ]
  %162 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tabsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %162, i32 0, i32 39
  %163 = load i32, i32* %tabsize, align 4
  %conv144 = sext i32 %163 to i64
  %div145 = udiv i64 %cond, %conv144
  %add = add i64 %div145, 1
  %164 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tabsize146 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %164, i32 0, i32 39
  %165 = load i32, i32* %tabsize146, align 4
  %conv147 = sext i32 %165 to i64
  %mul = mul i64 %add, %conv147
  %conv148 = trunc i64 %mul to i32
  %166 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status149 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %166, i32 0, i32 64
  %167 = load %struct.ps_status*, %struct.ps_status** %status149, align 8
  %column150 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %167, i32 0, i32 25
  store i32 %conv148, i32* %column150, align 4
  %168 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status151 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %168, i32 0, i32 64
  %169 = load %struct.ps_status*, %struct.ps_status** %status151, align 8
  %column152 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %169, i32 0, i32 25
  %170 = load i32, i32* %column152, align 4
  %mul153 = mul i32 %170, 600
  %conv154 = zext i32 %mul153 to i64
  %171 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status155 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %171, i32 0, i32 64
  %172 = load %struct.ps_status*, %struct.ps_status** %status155, align 8
  %wx156 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %172, i32 0, i32 26
  store i64 %conv154, i64* %wx156, align 8
  %173 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status157 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %173, i32 0, i32 64
  %174 = load %struct.ps_status*, %struct.ps_status** %status157, align 8
  %wx158 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %174, i32 0, i32 26
  %175 = load i64, i64* %wx158, align 8
  %176 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status159 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %176, i32 0, i32 64
  %177 = load %struct.ps_status*, %struct.ps_status** %status159, align 8
  %wxperline = getelementptr inbounds %struct.ps_status, %struct.ps_status* %177, i32 0, i32 1
  %178 = load i64, i64* %wxperline, align 8
  %cmp160 = icmp ugt i64 %175, %178
  br i1 %cmp160, label %if.then.162, label %if.end.169

if.then.162:                                      ; preds = %cond.end
  %179 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %folding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %179, i32 0, i32 28
  %180 = load i8, i8* %folding, align 1
  %tobool163 = trunc i8 %180 to i1
  br i1 %tobool163, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.then.162
  %181 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %182 = load i32, i32* %new_face.addr, align 4
  call void @fold_line(%struct.a2ps_job* %181, i32 %182)
  br label %if.end.168

if.else.165:                                      ; preds = %if.then.162
  %183 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status166 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %183, i32 0, i32 64
  %184 = load %struct.ps_status*, %struct.ps_status** %status166, align 8
  %is_in_cut167 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %184, i32 0, i32 19
  store i32 1, i32* %is_in_cut167, align 4
  br label %sw.epilog

if.end.168:                                       ; preds = %if.then.164
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %cond.end
  %185 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status170 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %185, i32 0, i32 64
  %186 = load %struct.ps_status*, %struct.ps_status** %status170, align 8
  %face_declared171 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %186, i32 0, i32 21
  %187 = load i32, i32* %face_declared171, align 4
  %tobool172 = icmp ne i32 %187, 0
  br i1 %tobool172, label %if.else.180, label %if.then.173

if.then.173:                                      ; preds = %if.end.169
  %188 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion174 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %188, i32 0, i32 65
  %189 = load %struct.output*, %struct.output** %divertion174, align 8
  %190 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status175 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %190, i32 0, i32 64
  %191 = load %struct.ps_status*, %struct.ps_status** %status175, align 8
  %face176 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %191, i32 0, i32 20
  %192 = load i32, i32* %face176, align 4
  %call177 = call i8* @face_eo_ps(i32 %192)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %call177)
  %193 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status178 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %193, i32 0, i32 64
  %194 = load %struct.ps_status*, %struct.ps_status** %status178, align 8
  %face_declared179 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %194, i32 0, i32 21
  store i32 1, i32* %face_declared179, align 4
  br label %if.end.182

if.else.180:                                      ; preds = %if.end.169
  %195 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion181 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %195, i32 0, i32 65
  %196 = load %struct.output*, %struct.output** %divertion181, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.180, %if.then.173
  %197 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion183 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %197, i32 0, i32 65
  %198 = load %struct.output*, %struct.output** %divertion183, align 8
  %199 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status184 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %199, i32 0, i32 64
  %200 = load %struct.ps_status*, %struct.ps_status** %status184, align 8
  %column185 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %200, i32 0, i32 25
  %201 = load i32, i32* %column185, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %201)
  br label %sw.epilog

print:                                            ; preds = %if.then.113, %if.then.77
  br label %sw.default

sw.default:                                       ; preds = %if.end.75, %print
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %202 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status186 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %202, i32 0, i32 64
  %203 = load %struct.ps_status*, %struct.ps_status** %status186, align 8
  %face187 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %203, i32 0, i32 20
  %204 = load i32, i32* %face187, align 4
  %205 = load i32, i32* %new_face.addr, align 4
  %cmp188 = icmp ne i32 %204, %205
  br i1 %cmp188, label %if.then.190, label %if.end.206

if.then.190:                                      ; preds = %sw.default
  %206 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status191 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %206, i32 0, i32 64
  %207 = load %struct.ps_status*, %struct.ps_status** %status191, align 8
  %face_declared192 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %207, i32 0, i32 21
  %208 = load i32, i32* %face_declared192, align 4
  %tobool193 = icmp ne i32 %208, 0
  br i1 %tobool193, label %if.else.199, label %if.then.194

if.then.194:                                      ; preds = %if.then.190
  %209 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion195 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %209, i32 0, i32 65
  %210 = load %struct.output*, %struct.output** %divertion195, align 8
  %211 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status196 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %211, i32 0, i32 64
  %212 = load %struct.ps_status*, %struct.ps_status** %status196, align 8
  %face197 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %212, i32 0, i32 20
  %213 = load i32, i32* %face197, align 4
  %call198 = call i8* @face_eo_ps(i32 %213)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call198)
  br label %if.end.201

if.else.199:                                      ; preds = %if.then.190
  %214 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion200 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %214, i32 0, i32 65
  %215 = load %struct.output*, %struct.output** %divertion200, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.199, %if.then.194
  %216 = load i32, i32* %new_face.addr, align 4
  %217 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status202 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %217, i32 0, i32 64
  %218 = load %struct.ps_status*, %struct.ps_status** %status202, align 8
  %face203 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %218, i32 0, i32 20
  store i32 %216, i32* %face203, align 4
  %219 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status204 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %219, i32 0, i32 64
  %220 = load %struct.ps_status*, %struct.ps_status** %status204, align 8
  %face_declared205 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %220, i32 0, i32 21
  store i32 0, i32* %face_declared205, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.201, %sw.default
  %221 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %222 = load i32, i32* %c.addr, align 4
  %conv207 = trunc i32 %222 to i8
  %arraydecay208 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call209 = call i32 @ps_escape_char(%struct.a2ps_job* %221, i8 zeroext %conv207, i8* %arraydecay208)
  store i32 %call209, i32* %nchars, align 4
  %223 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %224 = load i32, i32* %c.addr, align 4
  %conv210 = trunc i32 %224 to i8
  %call211 = call i32 @char_WX(%struct.a2ps_job* %223, i8 zeroext %conv210)
  %conv212 = zext i32 %call211 to i64
  %225 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status213 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %225, i32 0, i32 64
  %226 = load %struct.ps_status*, %struct.ps_status** %status213, align 8
  %wx214 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %226, i32 0, i32 26
  %227 = load i64, i64* %wx214, align 8
  %add215 = add i64 %227, %conv212
  store i64 %add215, i64* %wx214, align 8
  %228 = load i32, i32* %nchars, align 4
  %229 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status216 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %229, i32 0, i32 64
  %230 = load %struct.ps_status*, %struct.ps_status** %status216, align 8
  %column217 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %230, i32 0, i32 25
  %231 = load i32, i32* %column217, align 4
  %add218 = add i32 %231, %228
  store i32 %add218, i32* %column217, align 4
  %232 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status219 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %232, i32 0, i32 64
  %233 = load %struct.ps_status*, %struct.ps_status** %status219, align 8
  %wx220 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %233, i32 0, i32 26
  %234 = load i64, i64* %wx220, align 8
  %235 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status221 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %235, i32 0, i32 64
  %236 = load %struct.ps_status*, %struct.ps_status** %status221, align 8
  %wxperline222 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %236, i32 0, i32 1
  %237 = load i64, i64* %wxperline222, align 8
  %cmp223 = icmp ugt i64 %234, %237
  br i1 %cmp223, label %if.then.225, label %if.end.240

if.then.225:                                      ; preds = %if.end.206
  %238 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %folding226 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %238, i32 0, i32 28
  %239 = load i8, i8* %folding226, align 1
  %tobool227 = trunc i8 %239 to i1
  br i1 %tobool227, label %if.then.228, label %if.else.236

if.then.228:                                      ; preds = %if.then.225
  %240 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %241 = load i32, i32* %new_face.addr, align 4
  call void @fold_line(%struct.a2ps_job* %240, i32 %241)
  %242 = load i32, i32* %nchars, align 4
  %243 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status229 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %243, i32 0, i32 64
  %244 = load %struct.ps_status*, %struct.ps_status** %status229, align 8
  %column230 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %244, i32 0, i32 25
  store i32 %242, i32* %column230, align 4
  %245 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %246 = load i32, i32* %c.addr, align 4
  %conv231 = trunc i32 %246 to i8
  %call232 = call i32 @char_WX(%struct.a2ps_job* %245, i8 zeroext %conv231)
  %conv233 = zext i32 %call232 to i64
  %247 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status234 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %247, i32 0, i32 64
  %248 = load %struct.ps_status*, %struct.ps_status** %status234, align 8
  %wx235 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %248, i32 0, i32 26
  store i64 %conv233, i64* %wx235, align 8
  br label %if.end.239

if.else.236:                                      ; preds = %if.then.225
  %249 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status237 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %249, i32 0, i32 64
  %250 = load %struct.ps_status*, %struct.ps_status** %status237, align 8
  %is_in_cut238 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %250, i32 0, i32 19
  store i32 1, i32* %is_in_cut238, align 4
  br label %sw.epilog

if.end.239:                                       ; preds = %if.then.228
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.206
  %251 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion241 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %251, i32 0, i32 65
  %252 = load %struct.output*, %struct.output** %divertion241, align 8
  %arraydecay242 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void (%struct.output*, i8*, ...) @output(%struct.output* %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay242)
  %253 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status243 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %253, i32 0, i32 64
  %254 = load %struct.ps_status*, %struct.ps_status** %status243, align 8
  %chars = getelementptr inbounds %struct.ps_status, %struct.ps_status* %254, i32 0, i32 23
  %255 = load i32, i32* %chars, align 4
  %inc244 = add nsw i32 %255, 1
  store i32 %inc244, i32* %chars, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.else.165, %if.else.236, %if.end.240, %if.end.182, %if.end.109, %if.end.90
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @virtual_begin(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 9
  %1 = load i32, i32* %pages, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %pages, align 4
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 9
  %4 = load i32, i32* %pages1, align 4
  %call = call i32 @print_page(%struct.a2ps_job* %2, i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 65
  %6 = load %struct.output*, %struct.output** %divertion, align 8
  call void @output_to_void(%struct.output* %6, i32 0)
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 17
  %8 = load i32, i32* %virtual, align 4
  %inc2 = add nsw i32 %8, 1
  store i32 %inc2, i32* %virtual, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 65
  %10 = load %struct.output*, %struct.output** %divertion3, align 8
  call void @output_to_void(%struct.output* %10, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 17
  %12 = load i32, i32* %virtual4, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_begin(%struct.a2ps_job* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 43
  %15 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %tobool7 = icmp ne %struct.encoding* %15, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 46
  %18 = load %struct.encoding*, %struct.encoding** %saved_encoding, align 8
  call void @ps_set_encoding(%struct.a2ps_job* %16, %struct.encoding* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @file_job_synchronize_pages(%struct.a2ps_job* %19)
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @file_job_synchronize_sheets(%struct.a2ps_job* %20)
  %21 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion10 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %21, i32 0, i32 65
  %22 = load %struct.output*, %struct.output** %divertion10, align 8
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual11 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 17
  %24 = load i32, i32* %virtual11, align 4
  %sub = sub nsw i32 %24, 1
  call void (%struct.output*, i8*, ...) @output(%struct.output* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 %sub)
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 65
  %26 = load %struct.output*, %struct.output** %divertion12, align 8
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %27, i32 0, i32 42
  %28 = load float, float* %fontsize, align 4
  %conv = fpext float %28 to double
  %mul = fmul double 7.000000e-01, %conv
  %mul13 = fmul double %mul, 6.000000e-01
  call void (%struct.output*, i8*, ...) @output(%struct.output* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0), double %mul13)
  %29 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %29, i32 0, i32 65
  %30 = load %struct.output*, %struct.output** %divertion14, align 8
  %31 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %31, i32 0, i32 52
  %32 = load i8*, i8** %center_title, align 8
  %cmp15 = icmp eq i8* %32, null
  br i1 %cmp15, label %lor.lhs.false.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title17 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %33, i32 0, i32 52
  %34 = load i8*, i8** %center_title17, align 8
  %35 = load i8, i8* %34, align 1
  %conv18 = zext i8 %35 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %lor.lhs.false.21, label %lor.end.36

lor.lhs.false.21:                                 ; preds = %lor.lhs.false, %if.end.9
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 53
  %37 = load i8*, i8** %left_title, align 8
  %cmp22 = icmp eq i8* %37, null
  br i1 %cmp22, label %lor.rhs, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title25 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 53
  %39 = load i8*, i8** %left_title25, align 8
  %40 = load i8, i8* %39, align 1
  %conv26 = zext i8 %40 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %lor.rhs, label %lor.end.36

lor.rhs:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.21
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %41, i32 0, i32 54
  %42 = load i8*, i8** %right_title, align 8
  %cmp29 = icmp eq i8* %42, null
  br i1 %cmp29, label %lor.end, label %lor.rhs.31

lor.rhs.31:                                       ; preds = %lor.rhs
  %43 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title32 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %43, i32 0, i32 54
  %44 = load i8*, i8** %right_title32, align 8
  %45 = load i8, i8* %44, align 1
  %conv33 = zext i8 %45 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.31, %lor.rhs
  %46 = phi i1 [ true, %lor.rhs ], [ %cmp34, %lor.rhs.31 ]
  %lnot = xor i1 %46, true
  br label %lor.end.36

lor.end.36:                                       ; preds = %lor.end, %lor.lhs.false.24, %lor.lhs.false
  %47 = phi i1 [ true, %lor.lhs.false.24 ], [ true, %lor.lhs.false ], [ %lnot, %lor.end ]
  %cond = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %cond)
  %48 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion37 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %48, i32 0, i32 65
  %49 = load %struct.output*, %struct.output** %divertion37, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @end_of_line(%struct.a2ps_job* %job) #2 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 21
  %2 = load i32, i32* %face_declared, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 65
  %4 = load %struct.output*, %struct.output** %divertion, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 64
  %6 = load %struct.ps_status*, %struct.ps_status** %status1, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 20
  %7 = load i32, i32* %face, align 4
  %call = call i8* @face_eo_ps(i32 %7)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* %call)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 64
  %9 = load %struct.ps_status*, %struct.ps_status** %status2, align 8
  %face_declared3 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %9, i32 0, i32 21
  store i32 1, i32* %face_declared3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 65
  %11 = load %struct.output*, %struct.output** %divertion4, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 64
  %13 = load %struct.ps_status*, %struct.ps_status** %status5, align 8
  %line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %13, i32 0, i32 24
  %14 = load i32, i32* %line, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %line, align 4
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 64
  %16 = load %struct.ps_status*, %struct.ps_status** %status6, align 8
  %column = getelementptr inbounds %struct.ps_status, %struct.ps_status* %16, i32 0, i32 25
  store i32 0, i32* %column, align 4
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 64
  %18 = load %struct.ps_status*, %struct.ps_status** %status7, align 8
  %wx = getelementptr inbounds %struct.ps_status, %struct.ps_status* %18, i32 0, i32 26
  store i64 0, i64* %wx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @virtual_end(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 52
  %1 = load i8*, i8** %center_title, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %lor.lhs.false.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 52
  %3 = load i8*, i8** %center_title1, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false, %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 53
  %6 = load i8*, i8** %left_title, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %lor.lhs.false.12, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 53
  %8 = load i8*, i8** %left_title8, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %lor.lhs.false.12, label %if.then

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.7, %lor.lhs.false.4
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 54
  %11 = load i8*, i8** %right_title, align 8
  %cmp13 = icmp eq i8* %11, null
  br i1 %cmp13, label %if.end.63, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title16 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 54
  %13 = load i8*, i8** %right_title16, align 8
  %14 = load i8, i8* %13, align 1
  %conv17 = zext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.end.63, label %if.then

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.7, %lor.lhs.false
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 45
  %17 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  call void @ps_push_encoding(%struct.a2ps_job* %15, %struct.encoding* %17)
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title20 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 52
  %19 = load i8*, i8** %center_title20, align 8
  %cmp21 = icmp eq i8* %19, null
  br i1 %cmp21, label %if.else, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.then
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title24 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 52
  %21 = load i8*, i8** %center_title24, align 8
  %22 = load i8, i8* %21, align 1
  %conv25 = zext i8 %22 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false.23
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 65
  %24 = load %struct.output*, %struct.output** %divertion, align 8
  call void @output_char(%struct.output* %24, i8 zeroext 40)
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title29 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 52
  %27 = load i8*, i8** %center_title29, align 8
  call void @output_marker(%struct.a2ps_job* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* %27)
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion30 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 65
  %29 = load %struct.output*, %struct.output** %divertion30, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.23, %if.then
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion31 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 65
  %31 = load %struct.output*, %struct.output** %divertion31, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.28
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title32 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 54
  %33 = load i8*, i8** %right_title32, align 8
  %cmp33 = icmp eq i8* %33, null
  br i1 %cmp33, label %if.else.44, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title36 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 54
  %35 = load i8*, i8** %right_title36, align 8
  %36 = load i8, i8* %35, align 1
  %conv37 = zext i8 %36 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.else.44, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false.35
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion41 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 65
  %38 = load %struct.output*, %struct.output** %divertion41, align 8
  call void @output_char(%struct.output* %38, i8 zeroext 40)
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %40 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title42 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %40, i32 0, i32 54
  %41 = load i8*, i8** %right_title42, align 8
  call void @output_marker(%struct.a2ps_job* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* %41)
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion43 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 65
  %43 = load %struct.output*, %struct.output** %divertion43, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.46

if.else.44:                                       ; preds = %lor.lhs.false.35, %if.end
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 65
  %45 = load %struct.output*, %struct.output** %divertion45, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.40
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title47 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %46, i32 0, i32 53
  %47 = load i8*, i8** %left_title47, align 8
  %cmp48 = icmp eq i8* %47, null
  br i1 %cmp48, label %if.else.59, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.end.46
  %48 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title51 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %48, i32 0, i32 53
  %49 = load i8*, i8** %left_title51, align 8
  %50 = load i8, i8* %49, align 1
  %conv52 = zext i8 %50 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %if.else.59, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false.50
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion56 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 65
  %52 = load %struct.output*, %struct.output** %divertion56, align 8
  call void @output_char(%struct.output* %52, i8 zeroext 40)
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %54 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %54, i32 0, i32 53
  %55 = load i8*, i8** %left_title57, align 8
  call void @output_marker(%struct.a2ps_job* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* %55)
  %56 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion58 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %56, i32 0, i32 65
  %57 = load %struct.output*, %struct.output** %divertion58, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.61

if.else.59:                                       ; preds = %lor.lhs.false.50, %if.end.46
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion60 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %58, i32 0, i32 65
  %59 = load %struct.output*, %struct.output** %divertion60, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.55
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion62 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 65
  %61 = load %struct.output*, %struct.output** %divertion62, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0))
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_pop_encoding(%struct.a2ps_job* %62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.61, %lor.lhs.false.15, %lor.lhs.false.12
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %border = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 34
  %64 = load i32, i32* %border, align 4
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.63
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion65 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %65, i32 0, i32 65
  %66 = load %struct.output*, %struct.output** %divertion65, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.63
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 17
  %68 = load i32, i32* %virtual, align 4
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 14
  %70 = load i32, i32* %columns, align 4
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 15
  %72 = load i32, i32* %rows, align 4
  %mul = mul nsw i32 %70, %72
  %cmp67 = icmp eq i32 %68, %mul
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_end(%struct.a2ps_job* %73)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.66
  %74 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %74, i32 0, i32 64
  %75 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %75, i32 0, i32 24
  store i32 0, i32* %line, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @fold_line(%struct.a2ps_job* %job, i32 %new_face) #2 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %new_face.addr = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %new_face, i32* %new_face.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_folded = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 10
  %1 = load i32, i32* %lines_folded, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %lines_folded, align 4
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @end_of_line(%struct.a2ps_job* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 64
  %4 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 24
  %5 = load i32, i32* %line, align 4
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 64
  %7 = load %struct.ps_status*, %struct.ps_status** %status1, align 8
  %linesperpage = getelementptr inbounds %struct.ps_status, %struct.ps_status* %7, i32 0, i32 2
  %8 = load i32, i32* %linesperpage, align 4
  %cmp = icmp sge i32 %5, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_end(%struct.a2ps_job* %9)
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_begin(%struct.a2ps_job* %10)
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 64
  %12 = load %struct.ps_status*, %struct.ps_status** %status2, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %12, i32 0, i32 21
  store i32 0, i32* %face_declared, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 29
  %14 = load i32, i32* %numbering, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 65
  %16 = load %struct.output*, %struct.output** %divertion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 65
  %18 = load %struct.output*, %struct.output** %divertion4, align 8
  call void @output_char(%struct.output* %18, i8 zeroext 40)
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 64
  %20 = load %struct.ps_status*, %struct.ps_status** %status5, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %20, i32 0, i32 20
  %21 = load i32, i32* %face, align 4
  %22 = load i32, i32* %new_face.addr, align 4
  %cmp6 = icmp eq i32 %21, %22
  %conv = zext i1 %cmp6 to i32
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 64
  %24 = load %struct.ps_status*, %struct.ps_status** %status7, align 8
  %face_declared8 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %24, i32 0, i32 21
  %25 = load i32, i32* %face_declared8, align 4
  %and = and i32 %25, %conv
  store i32 %and, i32* %face_declared8, align 4
  %26 = load i32, i32* %new_face.addr, align 4
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status9 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %27, i32 0, i32 64
  %28 = load %struct.ps_status*, %struct.ps_status** %status9, align 8
  %face10 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %28, i32 0, i32 20
  store i32 %26, i32* %face10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_escape_char(%struct.a2ps_job* %job, i8 zeroext %c, i8* %res) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %c.addr = alloca i8, align 1
  %res.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %__len = alloca i32, align 4
  %__len21 = alloca i32, align 4
  %__len52 = alloca i32, align 4
  %__len63 = alloca i32, align 4
  %__len86 = alloca i32, align 4
  %__len112 = alloca i32, align 4
  %__len123 = alloca i32, align 4
  %__len152 = alloca i32, align 4
  %__len163 = alloca i32, align 4
  %__len208 = alloca i32, align 4
  %__len219 = alloca i32, align 4
  %__len249 = alloca i32, align 4
  %__len260 = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %res, i8** %res.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sle i32 32, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp slt i32 %conv2, 127
  br i1 %cmp3, label %if.then, label %if.end.30

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* %c.addr, align 1
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp eq i32 %conv5, 40
  br i1 %cmp6, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i8, i8* %c.addr, align 1
  %conv8 = zext i8 %3 to i32
  %cmp9 = icmp eq i32 %conv8, 41
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %4 = load i8, i8* %c.addr, align 1
  %conv12 = zext i8 %4 to i32
  %cmp13 = icmp eq i32 %conv12, 92
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %5 = load i8*, i8** %res.addr, align 8
  %call = call i64 @strlen(i8* %5) #5
  %conv16 = trunc i64 %call to i32
  store i32 %conv16, i32* %__len, align 4
  %6 = load i8*, i8** %res.addr, align 8
  %7 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8 92, i8* %add.ptr, align 1
  %8 = load i8*, i8** %res.addr, align 8
  %9 = load i32, i32* %__len, align 4
  %idx.ext17 = sext i32 %9 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %8, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 1
  store i8 0, i8* %add.ptr19, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.11
  br label %do.body.20

do.body.20:                                       ; preds = %if.end
  %10 = load i8*, i8** %res.addr, align 8
  %call22 = call i64 @strlen(i8* %10) #5
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %__len21, align 4
  %11 = load i8, i8* %c.addr, align 1
  %12 = load i8*, i8** %res.addr, align 8
  %13 = load i32, i32* %__len21, align 4
  %idx.ext24 = sext i32 %13 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %12, i64 %idx.ext24
  store i8 %11, i8* %add.ptr25, align 1
  %14 = load i8*, i8** %res.addr, align 8
  %15 = load i32, i32* %__len21, align 4
  %idx.ext26 = sext i32 %15 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %14, i64 %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 1
  store i8 0, i8* %add.ptr28, align 1
  br label %do.end.29

do.end.29:                                        ; preds = %do.body.20
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true, %entry
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 43
  %17 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 64
  %19 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %19, i32 0, i32 20
  %20 = load i32, i32* %face, align 4
  %21 = load i8, i8* %c.addr, align 1
  %call31 = call i32 @encoding_char_exists(%struct.encoding* %17, i32 %20, i8 zeroext %21)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %land.lhs.true.32, label %if.end.43

land.lhs.true.32:                                 ; preds = %if.end.30
  %22 = load i8, i8* %c.addr, align 1
  %conv33 = zext i8 %22 to i32
  %cmp34 = icmp slt i32 127, %conv33
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.32
  %23 = load i8, i8* %c.addr, align 1
  %conv37 = zext i8 %23 to i32
  %cmp38 = icmp slt i32 %conv37, 32
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %lor.lhs.false.36, %land.lhs.true.32
  %24 = load i8*, i8** %res.addr, align 8
  %25 = load i8*, i8** %res.addr, align 8
  %26 = load i8, i8* %c.addr, align 1
  %conv41 = zext i8 %26 to i32
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* %25, i32 %conv41) #6
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.36, %if.end.30
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %27, i32 0, i32 64
  %28 = load %struct.ps_status*, %struct.ps_status** %status44, align 8
  %nonprinting_chars = getelementptr inbounds %struct.ps_status, %struct.ps_status* %28, i32 0, i32 22
  %29 = load i32, i32* %nonprinting_chars, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %nonprinting_chars, align 4
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %unprintable_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 30
  %31 = load i32, i32* %unprintable_format, align 4
  switch i32 %31, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.47
    i32 2, label %sw.bb.50
    i32 1, label %sw.bb.61
    i32 0, label %sw.bb.72
    i32 5, label %sw.bb.175
  ]

sw.bb:                                            ; preds = %if.end.43
  %32 = load i8*, i8** %res.addr, align 8
  %33 = load i8, i8* %c.addr, align 1
  %conv45 = zext i8 %33 to i32
  %call46 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %conv45) #6
  store i32 4, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %if.end.43
  %34 = load i8*, i8** %res.addr, align 8
  %35 = load i8, i8* %c.addr, align 1
  %conv48 = zext i8 %35 to i32
  %call49 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 %conv48) #6
  store i32 4, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end.43
  br label %do.body.51

do.body.51:                                       ; preds = %sw.bb.50
  %36 = load i8*, i8** %res.addr, align 8
  %call53 = call i64 @strlen(i8* %36) #5
  %conv54 = trunc i64 %call53 to i32
  store i32 %conv54, i32* %__len52, align 4
  %37 = load i8*, i8** %res.addr, align 8
  %38 = load i32, i32* %__len52, align 4
  %idx.ext55 = sext i32 %38 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %37, i64 %idx.ext55
  store i8 63, i8* %add.ptr56, align 1
  %39 = load i8*, i8** %res.addr, align 8
  %40 = load i32, i32* %__len52, align 4
  %idx.ext57 = sext i32 %40 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %39, i64 %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, i8* %add.ptr58, i64 1
  store i8 0, i8* %add.ptr59, align 1
  br label %do.end.60

do.end.60:                                        ; preds = %do.body.51
  store i32 1, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %if.end.43
  br label %do.body.62

do.body.62:                                       ; preds = %sw.bb.61
  %41 = load i8*, i8** %res.addr, align 8
  %call64 = call i64 @strlen(i8* %41) #5
  %conv65 = trunc i64 %call64 to i32
  store i32 %conv65, i32* %__len63, align 4
  %42 = load i8*, i8** %res.addr, align 8
  %43 = load i32, i32* %__len63, align 4
  %idx.ext66 = sext i32 %43 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %42, i64 %idx.ext66
  store i8 32, i8* %add.ptr67, align 1
  %44 = load i8*, i8** %res.addr, align 8
  %45 = load i32, i32* %__len63, align 4
  %idx.ext68 = sext i32 %45 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %44, i64 %idx.ext68
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr69, i64 1
  store i8 0, i8* %add.ptr70, align 1
  br label %do.end.71

do.end.71:                                        ; preds = %do.body.62
  store i32 1, i32* %retval
  br label %return

sw.bb.72:                                         ; preds = %if.end.43
  %46 = load i8, i8* %c.addr, align 1
  %conv73 = zext i8 %46 to i32
  %cmp74 = icmp slt i32 127, %conv73
  br i1 %cmp74, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %sw.bb.72
  %47 = load i8*, i8** %res.addr, align 8
  %call77 = call i8* @strcat(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0)) #6
  %48 = load i32, i32* %len, align 4
  %add = add nsw i32 %48, 2
  store i32 %add, i32* %len, align 4
  %49 = load i8, i8* %c.addr, align 1
  %conv78 = zext i8 %49 to i32
  %and = and i32 %conv78, 127
  %conv79 = trunc i32 %and to i8
  store i8 %conv79, i8* %c.addr, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %sw.bb.72
  %50 = load i8, i8* %c.addr, align 1
  %conv81 = zext i8 %50 to i32
  %cmp82 = icmp slt i32 %conv81, 32
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.end.80
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.84
  %51 = load i8*, i8** %res.addr, align 8
  %call87 = call i64 @strlen(i8* %51) #5
  %conv88 = trunc i64 %call87 to i32
  store i32 %conv88, i32* %__len86, align 4
  %52 = load i8*, i8** %res.addr, align 8
  %53 = load i32, i32* %__len86, align 4
  %idx.ext89 = sext i32 %53 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %52, i64 %idx.ext89
  store i8 94, i8* %add.ptr90, align 1
  %54 = load i8*, i8** %res.addr, align 8
  %55 = load i32, i32* %__len86, align 4
  %idx.ext91 = sext i32 %55 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %54, i64 %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr92, i64 1
  store i8 0, i8* %add.ptr93, align 1
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.85
  %56 = load i32, i32* %len, align 4
  %add95 = add nsw i32 %56, 2
  store i32 %add95, i32* %len, align 4
  %57 = load i8, i8* %c.addr, align 1
  %conv96 = zext i8 %57 to i32
  %add97 = add nsw i32 %conv96, 64
  %conv98 = trunc i32 %add97 to i8
  store i8 %conv98, i8* %c.addr, align 1
  %58 = load i8, i8* %c.addr, align 1
  %conv99 = zext i8 %58 to i32
  %cmp100 = icmp eq i32 %conv99, 40
  br i1 %cmp100, label %if.then.110, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %do.end.94
  %59 = load i8, i8* %c.addr, align 1
  %conv103 = zext i8 %59 to i32
  %cmp104 = icmp eq i32 %conv103, 41
  br i1 %cmp104, label %if.then.110, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.102
  %60 = load i8, i8* %c.addr, align 1
  %conv107 = zext i8 %60 to i32
  %cmp108 = icmp eq i32 %conv107, 92
  br i1 %cmp108, label %if.then.110, label %if.end.121

if.then.110:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.102, %do.end.94
  br label %do.body.111

do.body.111:                                      ; preds = %if.then.110
  %61 = load i8*, i8** %res.addr, align 8
  %call113 = call i64 @strlen(i8* %61) #5
  %conv114 = trunc i64 %call113 to i32
  store i32 %conv114, i32* %__len112, align 4
  %62 = load i8*, i8** %res.addr, align 8
  %63 = load i32, i32* %__len112, align 4
  %idx.ext115 = sext i32 %63 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %62, i64 %idx.ext115
  store i8 92, i8* %add.ptr116, align 1
  %64 = load i8*, i8** %res.addr, align 8
  %65 = load i32, i32* %__len112, align 4
  %idx.ext117 = sext i32 %65 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %64, i64 %idx.ext117
  %add.ptr119 = getelementptr inbounds i8, i8* %add.ptr118, i64 1
  store i8 0, i8* %add.ptr119, align 1
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.111
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %lor.lhs.false.106
  br label %do.body.122

do.body.122:                                      ; preds = %if.end.121
  %66 = load i8*, i8** %res.addr, align 8
  %call124 = call i64 @strlen(i8* %66) #5
  %conv125 = trunc i64 %call124 to i32
  store i32 %conv125, i32* %__len123, align 4
  %67 = load i8, i8* %c.addr, align 1
  %68 = load i8*, i8** %res.addr, align 8
  %69 = load i32, i32* %__len123, align 4
  %idx.ext126 = sext i32 %69 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %68, i64 %idx.ext126
  store i8 %67, i8* %add.ptr127, align 1
  %70 = load i8*, i8** %res.addr, align 8
  %71 = load i32, i32* %__len123, align 4
  %idx.ext128 = sext i32 %71 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %70, i64 %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr129, i64 1
  store i8 0, i8* %add.ptr130, align 1
  br label %do.end.131

do.end.131:                                       ; preds = %do.body.122
  br label %if.end.174

if.else:                                          ; preds = %if.end.80
  %72 = load i8, i8* %c.addr, align 1
  %conv132 = zext i8 %72 to i32
  %cmp133 = icmp eq i32 %conv132, 127
  br i1 %cmp133, label %if.then.135, label %if.else.138

if.then.135:                                      ; preds = %if.else
  %73 = load i8*, i8** %res.addr, align 8
  %call136 = call i8* @strcat(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #6
  %74 = load i32, i32* %len, align 4
  %add137 = add nsw i32 %74, 2
  store i32 %add137, i32* %len, align 4
  br label %if.end.173

if.else.138:                                      ; preds = %if.else
  %75 = load i8, i8* %c.addr, align 1
  %conv139 = zext i8 %75 to i32
  %cmp140 = icmp eq i32 %conv139, 40
  br i1 %cmp140, label %if.then.150, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.else.138
  %76 = load i8, i8* %c.addr, align 1
  %conv143 = zext i8 %76 to i32
  %cmp144 = icmp eq i32 %conv143, 41
  br i1 %cmp144, label %if.then.150, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.142
  %77 = load i8, i8* %c.addr, align 1
  %conv147 = zext i8 %77 to i32
  %cmp148 = icmp eq i32 %conv147, 92
  br i1 %cmp148, label %if.then.150, label %if.end.161

if.then.150:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.142, %if.else.138
  br label %do.body.151

do.body.151:                                      ; preds = %if.then.150
  %78 = load i8*, i8** %res.addr, align 8
  %call153 = call i64 @strlen(i8* %78) #5
  %conv154 = trunc i64 %call153 to i32
  store i32 %conv154, i32* %__len152, align 4
  %79 = load i8*, i8** %res.addr, align 8
  %80 = load i32, i32* %__len152, align 4
  %idx.ext155 = sext i32 %80 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %79, i64 %idx.ext155
  store i8 92, i8* %add.ptr156, align 1
  %81 = load i8*, i8** %res.addr, align 8
  %82 = load i32, i32* %__len152, align 4
  %idx.ext157 = sext i32 %82 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %81, i64 %idx.ext157
  %add.ptr159 = getelementptr inbounds i8, i8* %add.ptr158, i64 1
  store i8 0, i8* %add.ptr159, align 1
  br label %do.end.160

do.end.160:                                       ; preds = %do.body.151
  br label %if.end.161

if.end.161:                                       ; preds = %do.end.160, %lor.lhs.false.146
  br label %do.body.162

do.body.162:                                      ; preds = %if.end.161
  %83 = load i8*, i8** %res.addr, align 8
  %call164 = call i64 @strlen(i8* %83) #5
  %conv165 = trunc i64 %call164 to i32
  store i32 %conv165, i32* %__len163, align 4
  %84 = load i8, i8* %c.addr, align 1
  %85 = load i8*, i8** %res.addr, align 8
  %86 = load i32, i32* %__len163, align 4
  %idx.ext166 = sext i32 %86 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %85, i64 %idx.ext166
  store i8 %84, i8* %add.ptr167, align 1
  %87 = load i8*, i8** %res.addr, align 8
  %88 = load i32, i32* %__len163, align 4
  %idx.ext168 = sext i32 %88 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %87, i64 %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, i8* %add.ptr169, i64 1
  store i8 0, i8* %add.ptr170, align 1
  br label %do.end.171

do.end.171:                                       ; preds = %do.body.162
  %89 = load i32, i32* %len, align 4
  %inc172 = add nsw i32 %89, 1
  store i32 %inc172, i32* %len, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %do.end.171, %if.then.135
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %do.end.131
  %90 = load i32, i32* %len, align 4
  store i32 %90, i32* %retval
  br label %return

sw.bb.175:                                        ; preds = %if.end.43
  %91 = load i8, i8* %c.addr, align 1
  %conv176 = zext i8 %91 to i32
  %cmp177 = icmp slt i32 127, %conv176
  br i1 %cmp177, label %if.then.179, label %if.end.185

if.then.179:                                      ; preds = %sw.bb.175
  %92 = load i8*, i8** %res.addr, align 8
  %call180 = call i8* @strcat(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0)) #6
  %93 = load i32, i32* %len, align 4
  %add181 = add nsw i32 %93, 2
  store i32 %add181, i32* %len, align 4
  %94 = load i8, i8* %c.addr, align 1
  %conv182 = zext i8 %94 to i32
  %and183 = and i32 %conv182, 127
  %conv184 = trunc i32 %and183 to i8
  store i8 %conv184, i8* %c.addr, align 1
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.179, %sw.bb.175
  %95 = load i8, i8* %c.addr, align 1
  %conv186 = zext i8 %95 to i32
  %cmp187 = icmp slt i32 %conv186, 32
  br i1 %cmp187, label %if.then.189, label %if.else.228

if.then.189:                                      ; preds = %if.end.185
  %96 = load i8*, i8** %res.addr, align 8
  %call190 = call i8* @strcat(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0)) #6
  %97 = load i32, i32* %len, align 4
  %add191 = add nsw i32 %97, 3
  store i32 %add191, i32* %len, align 4
  %98 = load i8, i8* %c.addr, align 1
  %conv192 = zext i8 %98 to i32
  %add193 = add nsw i32 %conv192, 64
  %conv194 = trunc i32 %add193 to i8
  store i8 %conv194, i8* %c.addr, align 1
  %99 = load i8, i8* %c.addr, align 1
  %conv195 = zext i8 %99 to i32
  %cmp196 = icmp eq i32 %conv195, 40
  br i1 %cmp196, label %if.then.206, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %if.then.189
  %100 = load i8, i8* %c.addr, align 1
  %conv199 = zext i8 %100 to i32
  %cmp200 = icmp eq i32 %conv199, 41
  br i1 %cmp200, label %if.then.206, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %lor.lhs.false.198
  %101 = load i8, i8* %c.addr, align 1
  %conv203 = zext i8 %101 to i32
  %cmp204 = icmp eq i32 %conv203, 92
  br i1 %cmp204, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %lor.lhs.false.202, %lor.lhs.false.198, %if.then.189
  br label %do.body.207

do.body.207:                                      ; preds = %if.then.206
  %102 = load i8*, i8** %res.addr, align 8
  %call209 = call i64 @strlen(i8* %102) #5
  %conv210 = trunc i64 %call209 to i32
  store i32 %conv210, i32* %__len208, align 4
  %103 = load i8*, i8** %res.addr, align 8
  %104 = load i32, i32* %__len208, align 4
  %idx.ext211 = sext i32 %104 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %103, i64 %idx.ext211
  store i8 92, i8* %add.ptr212, align 1
  %105 = load i8*, i8** %res.addr, align 8
  %106 = load i32, i32* %__len208, align 4
  %idx.ext213 = sext i32 %106 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %105, i64 %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr214, i64 1
  store i8 0, i8* %add.ptr215, align 1
  br label %do.end.216

do.end.216:                                       ; preds = %do.body.207
  br label %if.end.217

if.end.217:                                       ; preds = %do.end.216, %lor.lhs.false.202
  br label %do.body.218

do.body.218:                                      ; preds = %if.end.217
  %107 = load i8*, i8** %res.addr, align 8
  %call220 = call i64 @strlen(i8* %107) #5
  %conv221 = trunc i64 %call220 to i32
  store i32 %conv221, i32* %__len219, align 4
  %108 = load i8, i8* %c.addr, align 1
  %109 = load i8*, i8** %res.addr, align 8
  %110 = load i32, i32* %__len219, align 4
  %idx.ext222 = sext i32 %110 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %109, i64 %idx.ext222
  store i8 %108, i8* %add.ptr223, align 1
  %111 = load i8*, i8** %res.addr, align 8
  %112 = load i32, i32* %__len219, align 4
  %idx.ext224 = sext i32 %112 to i64
  %add.ptr225 = getelementptr inbounds i8, i8* %111, i64 %idx.ext224
  %add.ptr226 = getelementptr inbounds i8, i8* %add.ptr225, i64 1
  store i8 0, i8* %add.ptr226, align 1
  br label %do.end.227

do.end.227:                                       ; preds = %do.body.218
  br label %if.end.271

if.else.228:                                      ; preds = %if.end.185
  %113 = load i8, i8* %c.addr, align 1
  %conv229 = zext i8 %113 to i32
  %cmp230 = icmp eq i32 %conv229, 127
  br i1 %cmp230, label %if.then.232, label %if.else.235

if.then.232:                                      ; preds = %if.else.228
  %114 = load i8*, i8** %res.addr, align 8
  %call233 = call i8* @strcat(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0)) #6
  %115 = load i32, i32* %len, align 4
  %add234 = add nsw i32 %115, 3
  store i32 %add234, i32* %len, align 4
  br label %if.end.270

if.else.235:                                      ; preds = %if.else.228
  %116 = load i8, i8* %c.addr, align 1
  %conv236 = zext i8 %116 to i32
  %cmp237 = icmp eq i32 %conv236, 40
  br i1 %cmp237, label %if.then.247, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %if.else.235
  %117 = load i8, i8* %c.addr, align 1
  %conv240 = zext i8 %117 to i32
  %cmp241 = icmp eq i32 %conv240, 41
  br i1 %cmp241, label %if.then.247, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.239
  %118 = load i8, i8* %c.addr, align 1
  %conv244 = zext i8 %118 to i32
  %cmp245 = icmp eq i32 %conv244, 92
  br i1 %cmp245, label %if.then.247, label %if.end.258

if.then.247:                                      ; preds = %lor.lhs.false.243, %lor.lhs.false.239, %if.else.235
  br label %do.body.248

do.body.248:                                      ; preds = %if.then.247
  %119 = load i8*, i8** %res.addr, align 8
  %call250 = call i64 @strlen(i8* %119) #5
  %conv251 = trunc i64 %call250 to i32
  store i32 %conv251, i32* %__len249, align 4
  %120 = load i8*, i8** %res.addr, align 8
  %121 = load i32, i32* %__len249, align 4
  %idx.ext252 = sext i32 %121 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %120, i64 %idx.ext252
  store i8 92, i8* %add.ptr253, align 1
  %122 = load i8*, i8** %res.addr, align 8
  %123 = load i32, i32* %__len249, align 4
  %idx.ext254 = sext i32 %123 to i64
  %add.ptr255 = getelementptr inbounds i8, i8* %122, i64 %idx.ext254
  %add.ptr256 = getelementptr inbounds i8, i8* %add.ptr255, i64 1
  store i8 0, i8* %add.ptr256, align 1
  br label %do.end.257

do.end.257:                                       ; preds = %do.body.248
  br label %if.end.258

if.end.258:                                       ; preds = %do.end.257, %lor.lhs.false.243
  br label %do.body.259

do.body.259:                                      ; preds = %if.end.258
  %124 = load i8*, i8** %res.addr, align 8
  %call261 = call i64 @strlen(i8* %124) #5
  %conv262 = trunc i64 %call261 to i32
  store i32 %conv262, i32* %__len260, align 4
  %125 = load i8, i8* %c.addr, align 1
  %126 = load i8*, i8** %res.addr, align 8
  %127 = load i32, i32* %__len260, align 4
  %idx.ext263 = sext i32 %127 to i64
  %add.ptr264 = getelementptr inbounds i8, i8* %126, i64 %idx.ext263
  store i8 %125, i8* %add.ptr264, align 1
  %128 = load i8*, i8** %res.addr, align 8
  %129 = load i32, i32* %__len260, align 4
  %idx.ext265 = sext i32 %129 to i64
  %add.ptr266 = getelementptr inbounds i8, i8* %128, i64 %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, i8* %add.ptr266, i64 1
  store i8 0, i8* %add.ptr267, align 1
  br label %do.end.268

do.end.268:                                       ; preds = %do.body.259
  %130 = load i32, i32* %len, align 4
  %inc269 = add nsw i32 %130, 1
  store i32 %inc269, i32* %len, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %do.end.268, %if.then.232
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %do.end.227
  %131 = load i32, i32* %len, align 4
  store i32 %131, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.43
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.271, %if.end.174, %do.end.71, %do.end.60, %sw.bb.47, %sw.bb, %if.then.40, %do.end.29
  %132 = load i32, i32* %retval
  ret i32 %132
}

declare i32 @char_WX(%struct.a2ps_job*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define void @ps_print_string(%struct.a2ps_job* %job, i8* %string, i32 %face) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %string.addr = alloca i8*, align 8
  %face.addr = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %face, i32* %face.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %face.addr, align 4
  call void @ps_print_char(%struct.a2ps_job* %2, i32 %conv, i32 %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_print_buffer(%struct.a2ps_job* %job, i8* %buffer, i64 %start, i64 %end, i32 %face) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %buffer.addr = alloca i8*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %face.addr = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i32 %face, i32* %face.addr, align 4
  %0 = load i64, i64* %start.addr, align 8
  store i64 %0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %end.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %face.addr, align 4
  call void @ps_print_char(%struct.a2ps_job* %3, i32 %conv, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_begin_file(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %alignment = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  call void @initialize_ps_status(%struct.ps_status* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 68
  %3 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %file_align = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 33
  %6 = load i32, i32* %file_align, align 4
  switch i32 %6, label %sw.default [
    i32 -4, label %sw.bb
    i32 -3, label %sw.bb.1
    i32 -2, label %sw.bb.4
    i32 -1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 16
  %8 = load i32, i32* %madir, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 14
  %10 = load i32, i32* %columns, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 15
  %12 = load i32, i32* %rows, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %alignment, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 9
  %14 = load i32, i32* %pages, align 4
  %15 = load i32, i32* %alignment, align 4
  %rem = srem i32 %14, %15
  %cmp3 = icmp ne i32 %rem, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_empty_output(%struct.a2ps_job* %16)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_flush(%struct.a2ps_job* %17)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @sheet_flush(%struct.a2ps_job* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_flush(%struct.a2ps_job* %19)
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.10, %sw.default
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 8
  %21 = load i32, i32* %sheets, align 4
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %file_align7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %22, i32 0, i32 33
  %23 = load i32, i32* %file_align7, align 4
  %rem8 = srem i32 %21, %23
  %cmp9 = icmp ne i32 %rem8, 0
  br i1 %cmp9, label %while.body.10, label %while.end.11

while.body.10:                                    ; preds = %while.cond.6
  %24 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_empty_output(%struct.a2ps_job* %24)
  br label %while.cond.6

while.end.11:                                     ; preds = %while.cond.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %while.end.11, %sw.bb.5, %sw.bb.4, %while.end, %sw.bb
  ret void
}

declare void @initialize_ps_status(%struct.ps_status*) #1

; Function Attrs: nounwind uwtable
define internal void @virtual_empty_output(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_begin(%struct.a2ps_job* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_end(%struct.a2ps_job* %2)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 9
  %4 = load i32, i32* %pages, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %pages, align 4
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 17
  %6 = load i32, i32* %virtual, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* %virtual, align 4
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 17
  %8 = load i32, i32* %virtual2, align 4
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 14
  %10 = load i32, i32* %columns, align 4
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 15
  %12 = load i32, i32* %rows, align 4
  %mul = mul nsw i32 %10, %12
  %cmp = icmp eq i32 %8, %mul
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_end(%struct.a2ps_job* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sheet_flush(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_flush(%struct.a2ps_job* %0)
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 13
  %2 = load i32, i32* %duplex, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 13
  %4 = load i32, i32* %duplex1, align 4
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 8
  %6 = load i32, i32* %sheets, align 4
  %rem = srem i32 %6, 2
  %cmp3 = icmp ne i32 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_empty_output(%struct.a2ps_job* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @page_empty_output(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 8
  %1 = load i32, i32* %sheets, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %sheets, align 4
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @file_job_synchronize_sheets(%struct.a2ps_job* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 65
  %4 = load %struct.output*, %struct.output** %divertion, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 8
  %6 = load i32, i32* %sheets1, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0), i32 %6)
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 65
  %8 = load %struct.output*, %struct.output** %divertion2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0))
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 65
  %10 = load %struct.output*, %struct.output** %divertion3, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_end_file(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %start_line = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 17
  %2 = load i32, i32* %start_line, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 64
  %4 = load %struct.ps_status*, %struct.ps_status** %status1, align 8
  %face_declared = getelementptr inbounds %struct.ps_status, %struct.ps_status* %4, i32 0, i32 21
  %5 = load i32, i32* %face_declared, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 65
  %7 = load %struct.output*, %struct.output** %divertion, align 8
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 64
  %9 = load %struct.ps_status*, %struct.ps_status** %status4, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %9, i32 0, i32 20
  %10 = load i32, i32* %face, align 4
  %call = call i8* @face_eo_ps(i32 %10)
  call void (%struct.output*, i8*, ...) @output(%struct.output* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %call)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 65
  %12 = load %struct.output*, %struct.output** %divertion5, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 64
  %14 = load %struct.ps_status*, %struct.ps_status** %status7, align 8
  %start_page = getelementptr inbounds %struct.ps_status, %struct.ps_status* %14, i32 0, i32 16
  %15 = load i32, i32* %start_page, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @virtual_end(%struct.a2ps_job* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @file_job_synchronize_pages(%struct.a2ps_job* %17)
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @file_job_synchronize_sheets(%struct.a2ps_job* %18)
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @check_binary_file(%struct.a2ps_job* %19)
  ret void
}

declare void @file_job_synchronize_pages(%struct.a2ps_job*) #1

declare void @file_job_synchronize_sheets(%struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define internal void @check_binary_file(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %chars = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 23
  %2 = load i32, i32* %chars, align 4
  %cmp = icmp sgt i32 %2, 120
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %print_binaries = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 32
  %4 = load i32, i32* %print_binaries, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 64
  %6 = load %struct.ps_status*, %struct.ps_status** %status1, align 8
  %nonprinting_chars = getelementptr inbounds %struct.ps_status, %struct.ps_status* %6, i32 0, i32 22
  %7 = load i32, i32* %nonprinting_chars, align 4
  %mul = mul nsw i32 %7, 100
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 64
  %9 = load %struct.ps_status*, %struct.ps_status** %status2, align 8
  %chars3 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %9, i32 0, i32 23
  %10 = load i32, i32* %chars3, align 4
  %div = sdiv i32 %mul, %10
  %cmp4 = icmp sge i32 %div, 40
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %call = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0)) #6
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 68
  %12 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 5
  %13 = load i64, i64* %len, align 8
  %sub = sub i64 %13, 1
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 68
  %15 = load %struct.darray*, %struct.darray** %jobs6, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 6
  %16 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %sub
  %17 = load i8*, i8** %arrayidx, align 8
  %18 = bitcast i8* %17 to %struct.file_job*
  %name = getelementptr inbounds %struct.file_job, %struct.file_job* %18, i32 0, i32 0
  %19 = load i8*, i8** %name, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call, i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @xstrdup(i8*) #1

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ps_push_encoding(%struct.a2ps_job* %job, %struct.encoding* %enc) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 43
  %1 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 46
  store %struct.encoding* %1, %struct.encoding** %saved_encoding, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  call void @ps_internal_switch_encoding(%struct.a2ps_job* %3, %struct.encoding* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_marker(%struct.a2ps_job* %job, i8* %kind, i8* %marker) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %kind.addr = alloca i8*, align 8
  %marker.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %kind, i8** %kind.addr, align 8
  store i8* %marker, i8** %marker.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 68
  %2 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 1
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 68
  %5 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %sub
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.file_job*
  %9 = load i8*, i8** %kind.addr, align 8
  %10 = load i8*, i8** %marker.addr, align 8
  %call = call i8* @expand_user_string(%struct.a2ps_job* %0, %struct.file_job* %8, i8* %9, i8* %10)
  store i8* %call, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %cp, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx2, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load i8*, i8** %cp, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %15, i64 %idxprom3
  %16 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %16 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb.11
    i32 4, label %sw.bb.19
    i32 5, label %sw.bb.27
    i32 6, label %sw.bb.35
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.46
    i32 3, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %for.body
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 65
  %18 = load %struct.output*, %struct.output** %divertion, align 8
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 68
  %20 = load %struct.darray*, %struct.darray** %jobs5, align 8
  %len6 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 5
  %21 = load i64, i64* %len6, align 8
  %sub7 = sub i64 %21, 1
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %22, i32 0, i32 68
  %23 = load %struct.darray*, %struct.darray** %jobs8, align 8
  %content9 = getelementptr inbounds %struct.darray, %struct.darray* %23, i32 0, i32 6
  %24 = load i8**, i8*** %content9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %24, i64 %sub7
  %25 = load i8*, i8** %arrayidx10, align 8
  %26 = bitcast i8* %25 to %struct.file_job*
  %last_page = getelementptr inbounds %struct.file_job, %struct.file_job* %26, i32 0, i32 11
  call void @output_delayed_int(%struct.output* %18, i32* %last_page)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %27, i32 0, i32 65
  %28 = load %struct.output*, %struct.output** %divertion12, align 8
  %29 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs13 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %29, i32 0, i32 68
  %30 = load %struct.darray*, %struct.darray** %jobs13, align 8
  %len14 = getelementptr inbounds %struct.darray, %struct.darray* %30, i32 0, i32 5
  %31 = load i64, i64* %len14, align 8
  %sub15 = sub i64 %31, 1
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs16 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 68
  %33 = load %struct.darray*, %struct.darray** %jobs16, align 8
  %content17 = getelementptr inbounds %struct.darray, %struct.darray* %33, i32 0, i32 6
  %34 = load i8**, i8*** %content17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %34, i64 %sub15
  %35 = load i8*, i8** %arrayidx18, align 8
  %36 = bitcast i8* %35 to %struct.file_job*
  %last_sheet = getelementptr inbounds %struct.file_job, %struct.file_job* %36, i32 0, i32 9
  call void @output_delayed_int(%struct.output* %28, i32* %last_sheet)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion20 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 65
  %38 = load %struct.output*, %struct.output** %divertion20, align 8
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs21 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 68
  %40 = load %struct.darray*, %struct.darray** %jobs21, align 8
  %len22 = getelementptr inbounds %struct.darray, %struct.darray* %40, i32 0, i32 5
  %41 = load i64, i64* %len22, align 8
  %sub23 = sub i64 %41, 1
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs24 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 68
  %43 = load %struct.darray*, %struct.darray** %jobs24, align 8
  %content25 = getelementptr inbounds %struct.darray, %struct.darray* %43, i32 0, i32 6
  %44 = load i8**, i8*** %content25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %44, i64 %sub23
  %45 = load i8*, i8** %arrayidx26, align 8
  %46 = bitcast i8* %45 to %struct.file_job*
  %pages = getelementptr inbounds %struct.file_job, %struct.file_job* %46, i32 0, i32 12
  call void @output_delayed_int(%struct.output* %38, i32* %pages)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion28 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 65
  %48 = load %struct.output*, %struct.output** %divertion28, align 8
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs29 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 68
  %50 = load %struct.darray*, %struct.darray** %jobs29, align 8
  %len30 = getelementptr inbounds %struct.darray, %struct.darray* %50, i32 0, i32 5
  %51 = load i64, i64* %len30, align 8
  %sub31 = sub i64 %51, 1
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs32 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 68
  %53 = load %struct.darray*, %struct.darray** %jobs32, align 8
  %content33 = getelementptr inbounds %struct.darray, %struct.darray* %53, i32 0, i32 6
  %54 = load i8**, i8*** %content33, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %54, i64 %sub31
  %55 = load i8*, i8** %arrayidx34, align 8
  %56 = bitcast i8* %55 to %struct.file_job*
  %sheets = getelementptr inbounds %struct.file_job, %struct.file_job* %56, i32 0, i32 13
  call void @output_delayed_int(%struct.output* %48, i32* %sheets)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.body
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion36 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 65
  %58 = load %struct.output*, %struct.output** %divertion36, align 8
  %59 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs37 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %59, i32 0, i32 68
  %60 = load %struct.darray*, %struct.darray** %jobs37, align 8
  %len38 = getelementptr inbounds %struct.darray, %struct.darray* %60, i32 0, i32 5
  %61 = load i64, i64* %len38, align 8
  %sub39 = sub i64 %61, 1
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs40 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %62, i32 0, i32 68
  %63 = load %struct.darray*, %struct.darray** %jobs40, align 8
  %content41 = getelementptr inbounds %struct.darray, %struct.darray* %63, i32 0, i32 6
  %64 = load i8**, i8*** %content41, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %64, i64 %sub39
  %65 = load i8*, i8** %arrayidx42, align 8
  %66 = bitcast i8* %65 to %struct.file_job*
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %66, i32 0, i32 17
  call void @output_delayed_int(%struct.output* %58, i32* %lines)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %for.body
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 65
  %68 = load %struct.output*, %struct.output** %divertion44, align 8
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 9
  call void @output_delayed_int(%struct.output* %68, i32* %pages45)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body
  %70 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion47 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %70, i32 0, i32 65
  %71 = load %struct.output*, %struct.output** %divertion47, align 8
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %72, i32 0, i32 8
  call void @output_delayed_int(%struct.output* %71, i32* %sheets48)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %for.body
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion50 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 65
  %74 = load %struct.output*, %struct.output** %divertion50, align 8
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %total_files = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 11
  call void @output_delayed_int(%struct.output* %74, i32* %total_files)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %76 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %77 to i64
  %78 = load i8*, i8** %cp, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %78, i64 %idxprom51
  %79 = load i8, i8* %arrayidx52, align 1
  %arraydecay53 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call54 = call i32 @ps_escape_char(%struct.a2ps_job* %76, i8 zeroext %79, i8* %arraydecay53)
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion55 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %80, i32 0, i32 65
  %81 = load %struct.output*, %struct.output** %divertion55, align 8
  %arraydecay56 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void (%struct.output*, i8*, ...) @output(%struct.output* %81, i8* %arraydecay56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.49, %sw.bb.46, %sw.bb.43, %sw.bb.35, %sw.bb.27, %sw.bb.19, %sw.bb.11, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @output_delayed_int(%struct.output*, i32*) #1

declare i32 @print_page(%struct.a2ps_job*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @page_begin(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 17
  store i32 1, i32* %virtual, align 4
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %pages = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 9
  %3 = load i32, i32* %pages, align 4
  %call = call i32 @print_page(%struct.a2ps_job* %1, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 8
  %5 = load i32, i32* %sheets, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %sheets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 68
  %7 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len, align 8
  %sub = sub i64 %8, 1
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 68
  %10 = load %struct.darray*, %struct.darray** %jobs1, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %sub
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = bitcast i8* %12 to %struct.file_job*
  %pages2 = getelementptr inbounds %struct.file_job, %struct.file_job* %13, i32 0, i32 12
  %14 = load i32, i32* %pages2, align 4
  %add = add nsw i32 %14, 1
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 68
  %16 = load %struct.darray*, %struct.darray** %jobs3, align 8
  %len4 = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 5
  %17 = load i64, i64* %len4, align 8
  %sub5 = sub i64 %17, 1
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 68
  %19 = load %struct.darray*, %struct.darray** %jobs6, align 8
  %content7 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %20, i64 %sub5
  %21 = load i8*, i8** %arrayidx8, align 8
  %22 = bitcast i8* %21 to %struct.file_job*
  %top_page = getelementptr inbounds %struct.file_job, %struct.file_job* %22, i32 0, i32 16
  store i32 %add, i32* %top_page, align 4
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 65
  %24 = load %struct.output*, %struct.output** %divertion, align 8
  %call9 = call i32 @output_is_to_void(%struct.output* %24)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.19, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 65
  %26 = load %struct.output*, %struct.output** %divertion12, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0))
  %call13 = call i8* @xmalloc(i64 8)
  %27 = bitcast i8* %call13 to i8**
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 64
  %29 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %page_label = getelementptr inbounds %struct.ps_status, %struct.ps_status* %29, i32 0, i32 15
  store i8** %27, i8*** %page_label, align 8
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 65
  %31 = load %struct.output*, %struct.output** %divertion14, align 8
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status15 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 64
  %33 = load %struct.ps_status*, %struct.ps_status** %status15, align 8
  %page_label16 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %33, i32 0, i32 15
  %34 = load i8**, i8*** %page_label16, align 8
  call void @output_delayed_string(%struct.output* %31, i8** %34)
  %35 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion17 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %35, i32 0, i32 65
  %36 = load %struct.output*, %struct.output** %divertion17, align 8
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets18 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 8
  %38 = load i32, i32* %sheets18, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %38)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.11, %if.end
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion20 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 65
  %40 = load %struct.output*, %struct.output** %divertion20, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0))
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion21 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %41, i32 0, i32 65
  %42 = load %struct.output*, %struct.output** %divertion21, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0))
  %43 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %43, i32 0, i32 19
  %44 = load i32, i32* %margin, align 4
  %tobool22 = icmp ne i32 %44, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.19
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %45, i32 0, i32 13
  %46 = load i32, i32* %duplex, align 4
  %cmp = icmp eq i32 %46, 0
  br i1 %cmp, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets23 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 8
  %48 = load i32, i32* %sheets23, align 4
  %rem = srem i32 %48, 2
  %tobool24 = icmp ne i32 %rem, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion26 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 65
  %50 = load %struct.output*, %struct.output** %divertion26, align 8
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin27 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 19
  %52 = load i32, i32* %margin27, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %52)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %lor.lhs.false, %if.end.19
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %53, i32 0, i32 12
  %54 = load i32, i32* %orientation, align 4
  %cmp29 = icmp eq i32 %54, 1
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion31 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 65
  %56 = load %struct.output*, %struct.output** %divertion31, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion33 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 65
  %58 = load %struct.output*, %struct.output** %divertion33, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0))
  %59 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %debug = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %59, i32 0, i32 35
  %60 = load i8, i8* %debug, align 1
  %tobool34 = trunc i8 %60 to i1
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %61 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion36 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %61, i32 0, i32 65
  %62 = load %struct.output*, %struct.output** %divertion36, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %62, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %64, i32 0, i32 45
  %65 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  call void @ps_set_encoding(%struct.a2ps_job* %63, %struct.encoding* %65)
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %66, i32 0, i32 58
  %67 = load i8*, i8** %water, align 8
  %cmp38 = icmp eq i8* %67, null
  br i1 %cmp38, label %if.end.56, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.37
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water40 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %68, i32 0, i32 58
  %69 = load i8*, i8** %water40, align 8
  %70 = load i8, i8* %69, align 1
  %conv = zext i8 %70 to i32
  %cmp41 = icmp eq i32 %conv, 0
  br i1 %cmp41, label %if.end.56, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.39
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 65
  %72 = load %struct.output*, %struct.output** %divertion44, align 8
  call void @output_char(%struct.output* %72, i8 zeroext 40)
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %74 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %water45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %74, i32 0, i32 58
  %75 = load i8*, i8** %water45, align 8
  call void @output_marker(%struct.a2ps_job* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* %75)
  %76 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion46 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %76, i32 0, i32 65
  %77 = load %struct.output*, %struct.output** %divertion46, align 8
  %78 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %78, i32 0, i32 37
  %79 = load %struct.medium*, %struct.medium** %medium, align 8
  %w = getelementptr inbounds %struct.medium, %struct.medium* %79, i32 0, i32 1
  %80 = load i32, i32* %w, align 4
  %conv47 = sitofp i32 %80 to double
  %81 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %81, i32 0, i32 19
  %82 = load i32, i32* %margin48, align 4
  %conv49 = sitofp i32 %82 to double
  %sub50 = fsub double %conv47, %conv49
  %83 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium51 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %83, i32 0, i32 37
  %84 = load %struct.medium*, %struct.medium** %medium51, align 8
  %h = getelementptr inbounds %struct.medium, %struct.medium* %84, i32 0, i32 2
  %85 = load i32, i32* %h, align 4
  %conv52 = sitofp i32 %85 to double
  %call53 = call double @atan2(double %sub50, double %conv52) #6
  %conv54 = fptrunc double %call53 to float
  %conv55 = fpext float %conv54 to double
  %div = fdiv double %conv55, 0x400921FB53C8D4F1
  %mul = fmul double %div, 1.800000e+02
  call void (%struct.output*, i8*, ...) @output(%struct.output* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), double %mul)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.43, %lor.lhs.false.39, %if.end.37
  %86 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %86, i32 0, i32 65
  %87 = load %struct.output*, %struct.output** %divertion57, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0))
  %88 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion58 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %88, i32 0, i32 65
  %89 = load %struct.output*, %struct.output** %divertion58, align 8
  %90 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %90, i32 0, i32 56
  %91 = load i8*, i8** %footer, align 8
  %cmp59 = icmp eq i8* %91, null
  br i1 %cmp59, label %lor.lhs.false.66, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.56
  %92 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer62 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %92, i32 0, i32 56
  %93 = load i8*, i8** %footer62, align 8
  %94 = load i8, i8* %93, align 1
  %conv63 = zext i8 %94 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %lor.lhs.false.66, label %lor.end.81

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.61, %if.end.56
  %95 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %95, i32 0, i32 55
  %96 = load i8*, i8** %left_footer, align 8
  %cmp67 = icmp eq i8* %96, null
  br i1 %cmp67, label %lor.rhs, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.66
  %97 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer70 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %97, i32 0, i32 55
  %98 = load i8*, i8** %left_footer70, align 8
  %99 = load i8, i8* %98, align 1
  %conv71 = zext i8 %99 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %lor.rhs, label %lor.end.81

lor.rhs:                                          ; preds = %lor.lhs.false.69, %lor.lhs.false.66
  %100 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %100, i32 0, i32 57
  %101 = load i8*, i8** %right_footer, align 8
  %cmp74 = icmp eq i8* %101, null
  br i1 %cmp74, label %lor.end, label %lor.rhs.76

lor.rhs.76:                                       ; preds = %lor.rhs
  %102 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer77 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %102, i32 0, i32 57
  %103 = load i8*, i8** %right_footer77, align 8
  %104 = load i8, i8* %103, align 1
  %conv78 = zext i8 %104 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.76, %lor.rhs
  %105 = phi i1 [ true, %lor.rhs ], [ %cmp79, %lor.rhs.76 ]
  %lnot = xor i1 %105, true
  br label %lor.end.81

lor.end.81:                                       ; preds = %lor.end, %lor.lhs.false.69, %lor.lhs.false.61
  %106 = phi i1 [ true, %lor.lhs.false.69 ], [ true, %lor.lhs.false.61 ], [ %lnot, %lor.end ]
  %lor.ext = zext i1 %106 to i32
  %mul82 = mul nsw i32 %lor.ext, 12
  call void (%struct.output*, i8*, ...) @output(%struct.output* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), i32 %mul82)
  %107 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %108 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %108, i32 0, i32 46
  %109 = load %struct.encoding*, %struct.encoding** %saved_encoding, align 8
  call void @ps_internal_switch_encoding(%struct.a2ps_job* %107, %struct.encoding* %109)
  ret void
}

declare i32 @output_is_to_void(%struct.output*) #1

declare i8* @xmalloc(i64) #1

declare void @output_delayed_string(%struct.output*, i8**) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define internal void @ps_pop_encoding(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 46
  %2 = load %struct.encoding*, %struct.encoding** %saved_encoding, align 8
  call void @ps_internal_switch_encoding(%struct.a2ps_job* %0, %struct.encoding* %2)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @encoding_char_exists(%struct.encoding*, i32, i8 zeroext) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @macro_meta_sequence_get(%struct.a2ps_job*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
