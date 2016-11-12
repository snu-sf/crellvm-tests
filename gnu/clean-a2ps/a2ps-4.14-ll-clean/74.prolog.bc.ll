; ModuleID = './lib/prolog.bc'
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
%struct.file_job = type opaque

@ps_comment_hook = global void (%struct.a2ps_job*, %struct._IO_FILE*)* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Known Prologues\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".pro\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Prologue \22%s\22:\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"@table @samp\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"@item %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"@end table\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"font %f too big\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Documentation\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"EndDocumentation\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"missing argument for `%s'\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"`Documentation'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ehandler\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c".ps\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/a2psdict 200 dict def\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"a2psdict begin\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"%%%%BeginProlog\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"%%%%EndProlog\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Document title\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%%%%Title: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"User Name\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%N\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"%%%%For: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"%%%%Creator: %s version %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"a2ps\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"4.14\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"%%%%CreationDate: %s\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"%%%%DocumentData: Clean7Bit\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"%%%%Orientation: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Landscape\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Portrait\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"%%%%Pages: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"%%%%PageOrder: Ascend\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"%%%%PageOrder: Special\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"%%%%DocumentMedia: %s %d %d 0 () ()\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%%EndComments\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"%%%%BeginSetup\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"%% Initialize page description variables.\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"/sh %d def\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"/sw %d def\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"/llx %d def\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"/urx %d def\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"/ury %d def\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"/lly %d def\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"/#copies %d def\0A\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"true page_prefeed\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"/th %f def\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"/fnfs %d def\0A\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"/bfs %f def\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"/cw %f def\0A\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"/hm fnfs 0.25 mul def\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"/pw\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"   cw %f mul\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"def\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"/ph\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"   %f th add\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"/pmw urx llx sub pw %d mul sub %d div def\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"/pmw 0 def\0A\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"/pmh ury lly sub ph %d mul sub %d sub %d div def\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"/pmh 0 def\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"/v 0 def\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"/x [\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"  0\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"  dup pmw add pw add\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"/y [\0A\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"  pmh ph add %d mul ph add\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"  dup\0A\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"  pmw pw add %d mul\0A\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"output_document_setup: bad switch\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"/scx sw 2 div def\0A\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"/scy sh 2 div def\0A\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"/snx urx def\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"/sny lly 2 add def\0A\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"/dx llx def\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"/dy sny def\0A\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"/fnx scx def\0A\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"/fny dy def\0A\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"/lx snx def\0A\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"/ly ury fnfs 0.8 mul sub def\0A\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"/sx %d def\0A\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"/tab %d def\0A\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"/x0 0 def\0A\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"/y0 0 def\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"%%%%EndSetup\0A\0A\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"\0A%%%%Trailer\0A\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"false page_prefeed\0A\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"%%%%EOF\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @prologues_list_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %4 = load i8**, i8*** %path, align 8
  call void @pw_lister_on_suffix(%struct._IO_FILE* %2, i8** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @pw_lister_on_suffix(%struct._IO_FILE*, i8**, i8*) #1

; Function Attrs: nounwind uwtable
define void @prologues_list_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @prologues_list_long_internal(%struct.a2ps_job* %2, %struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, %struct._IO_FILE*)* @documentation_print_plain)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prologues_list_long_internal(%struct.a2ps_job* %job, %struct._IO_FILE* %stream, i8* %name_format, void (i8*, i8*, %struct._IO_FILE*)* %documentation_fn) #3 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %name_format.addr = alloca i8*, align 8
  %documentation_fn.addr = alloca void (i8*, i8*, %struct._IO_FILE*)*, align 8
  %entries = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %name_format, i8** %name_format.addr, align 8
  store void (i8*, i8*, %struct._IO_FILE*)* %documentation_fn, void (i8*, i8*, %struct._IO_FILE*)** %documentation_fn.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 6
  %8 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %6
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load i8*, i8** %name_format.addr, align 8
  %12 = load void (i8*, i8*, %struct._IO_FILE*)*, void (i8*, i8*, %struct._IO_FILE*)** %documentation_fn.addr, align 8
  call void @prologue_print_signature(%struct.a2ps_job* %5, i8* %9, %struct._IO_FILE* %10, i8* %11, void (i8*, i8*, %struct._IO_FILE*)* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %14, void (i8*)* @free)
  ret void
}

declare void @documentation_print_plain(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @prologues_list_texinfo(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @prologues_list_long_internal(%struct.a2ps_job* %1, %struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, %struct._IO_FILE*)* @documentation_print_texinfo)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %3)
  ret void
}

declare void @documentation_print_texinfo(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @ps_begin(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %area_w = alloca float, align 4
  %area_h = alloca float, align 4
  %printing_h = alloca float, align 4
  %printing_w = alloca float, align 4
  %medium = alloca %struct.medium*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store float 0.000000e+00, float* %area_w, align 4
  store float 0.000000e+00, float* %area_h, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 37
  %1 = load %struct.medium*, %struct.medium** %medium1, align 8
  store %struct.medium* %1, %struct.medium** %medium, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @output_prolog(%struct.a2ps_job* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %virtual = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 17
  store i32 0, i32* %virtual, align 4
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 12
  %5 = load i32, i32* %orientation, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.medium*, %struct.medium** %medium, align 8
  %ury = getelementptr inbounds %struct.medium, %struct.medium* %6, i32 0, i32 6
  %7 = load i32, i32* %ury, align 4
  %8 = load %struct.medium*, %struct.medium** %medium, align 8
  %lly = getelementptr inbounds %struct.medium, %struct.medium* %8, i32 0, i32 4
  %9 = load i32, i32* %lly, align 4
  %sub = sub nsw i32 %7, %9
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 51
  %11 = load i8*, i8** %header, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 51
  %13 = load i8*, i8** %header2, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %15 = phi i1 [ true, %sw.bb ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %15, true
  %lnot.ext = zext i1 %lnot to i32
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 56
  %17 = load i8*, i8** %footer, align 8
  %cmp5 = icmp eq i8* %17, null
  br i1 %cmp5, label %lor.lhs.false.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 56
  %19 = load i8*, i8** %footer7, align 8
  %20 = load i8, i8* %19, align 1
  %conv8 = zext i8 %20 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %lor.lhs.false.11, label %lor.end.30

lor.lhs.false.11:                                 ; preds = %lor.lhs.false, %lor.end
  %21 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %21, i32 0, i32 55
  %22 = load i8*, i8** %left_footer, align 8
  %cmp12 = icmp eq i8* %22, null
  br i1 %cmp12, label %lor.rhs.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer15 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 55
  %24 = load i8*, i8** %left_footer15, align 8
  %25 = load i8, i8* %24, align 1
  %conv16 = zext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %lor.rhs.19, label %lor.end.30

lor.rhs.19:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.11
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 57
  %27 = load i8*, i8** %right_footer, align 8
  %cmp20 = icmp eq i8* %27, null
  br i1 %cmp20, label %lor.end.27, label %lor.rhs.22

lor.rhs.22:                                       ; preds = %lor.rhs.19
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer23 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 57
  %29 = load i8*, i8** %right_footer23, align 8
  %30 = load i8, i8* %29, align 1
  %conv24 = zext i8 %30 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br label %lor.end.27

lor.end.27:                                       ; preds = %lor.rhs.22, %lor.rhs.19
  %31 = phi i1 [ true, %lor.rhs.19 ], [ %cmp25, %lor.rhs.22 ]
  %lnot28 = xor i1 %31, true
  br label %lor.end.30

lor.end.30:                                       ; preds = %lor.end.27, %lor.lhs.false.14, %lor.lhs.false
  %32 = phi i1 [ true, %lor.lhs.false.14 ], [ true, %lor.lhs.false ], [ %lnot28, %lor.end.27 ]
  %lor.ext = zext i1 %32 to i32
  %add = add nsw i32 %lnot.ext, %lor.ext
  %mul = mul nsw i32 %add, 12
  %sub31 = sub nsw i32 %sub, %mul
  %conv32 = sitofp i32 %sub31 to float
  store float %conv32, float* %area_h, align 4
  %33 = load %struct.medium*, %struct.medium** %medium, align 8
  %urx = getelementptr inbounds %struct.medium, %struct.medium* %33, i32 0, i32 5
  %34 = load i32, i32* %urx, align 4
  %35 = load %struct.medium*, %struct.medium** %medium, align 8
  %llx = getelementptr inbounds %struct.medium, %struct.medium* %35, i32 0, i32 3
  %36 = load i32, i32* %llx, align 4
  %sub33 = sub nsw i32 %34, %36
  %37 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %37, i32 0, i32 19
  %38 = load i32, i32* %margin, align 4
  %sub34 = sub nsw i32 %sub33, %38
  %conv35 = sitofp i32 %sub34 to float
  store float %conv35, float* %area_w, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %39 = load %struct.medium*, %struct.medium** %medium, align 8
  %ury37 = getelementptr inbounds %struct.medium, %struct.medium* %39, i32 0, i32 6
  %40 = load i32, i32* %ury37, align 4
  %41 = load %struct.medium*, %struct.medium** %medium, align 8
  %lly38 = getelementptr inbounds %struct.medium, %struct.medium* %41, i32 0, i32 4
  %42 = load i32, i32* %lly38, align 4
  %sub39 = sub nsw i32 %40, %42
  %conv40 = sitofp i32 %sub39 to float
  store float %conv40, float* %area_w, align 4
  %43 = load %struct.medium*, %struct.medium** %medium, align 8
  %urx41 = getelementptr inbounds %struct.medium, %struct.medium* %43, i32 0, i32 5
  %44 = load i32, i32* %urx41, align 4
  %45 = load %struct.medium*, %struct.medium** %medium, align 8
  %llx42 = getelementptr inbounds %struct.medium, %struct.medium* %45, i32 0, i32 3
  %46 = load i32, i32* %llx42, align 4
  %sub43 = sub nsw i32 %44, %46
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 51
  %48 = load i8*, i8** %header44, align 8
  %cmp45 = icmp eq i8* %48, null
  br i1 %cmp45, label %lor.end.52, label %lor.rhs.47

lor.rhs.47:                                       ; preds = %sw.bb.36
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 51
  %50 = load i8*, i8** %header48, align 8
  %51 = load i8, i8* %50, align 1
  %conv49 = zext i8 %51 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br label %lor.end.52

lor.end.52:                                       ; preds = %lor.rhs.47, %sw.bb.36
  %52 = phi i1 [ true, %sw.bb.36 ], [ %cmp50, %lor.rhs.47 ]
  %lnot54 = xor i1 %52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer56 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %53, i32 0, i32 56
  %54 = load i8*, i8** %footer56, align 8
  %cmp57 = icmp eq i8* %54, null
  br i1 %cmp57, label %lor.lhs.false.64, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.end.52
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer60 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 56
  %56 = load i8*, i8** %footer60, align 8
  %57 = load i8, i8* %56, align 1
  %conv61 = zext i8 %57 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %lor.lhs.false.64, label %lor.end.86

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.59, %lor.end.52
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer65 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %58, i32 0, i32 55
  %59 = load i8*, i8** %left_footer65, align 8
  %cmp66 = icmp eq i8* %59, null
  br i1 %cmp66, label %lor.rhs.73, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.64
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer69 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 55
  %61 = load i8*, i8** %left_footer69, align 8
  %62 = load i8, i8* %61, align 1
  %conv70 = zext i8 %62 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %lor.rhs.73, label %lor.end.86

lor.rhs.73:                                       ; preds = %lor.lhs.false.68, %lor.lhs.false.64
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer74 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 57
  %64 = load i8*, i8** %right_footer74, align 8
  %cmp75 = icmp eq i8* %64, null
  br i1 %cmp75, label %lor.end.82, label %lor.rhs.77

lor.rhs.77:                                       ; preds = %lor.rhs.73
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer78 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %65, i32 0, i32 57
  %66 = load i8*, i8** %right_footer78, align 8
  %67 = load i8, i8* %66, align 1
  %conv79 = zext i8 %67 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br label %lor.end.82

lor.end.82:                                       ; preds = %lor.rhs.77, %lor.rhs.73
  %68 = phi i1 [ true, %lor.rhs.73 ], [ %cmp80, %lor.rhs.77 ]
  %lnot84 = xor i1 %68, true
  br label %lor.end.86

lor.end.86:                                       ; preds = %lor.end.82, %lor.lhs.false.68, %lor.lhs.false.59
  %69 = phi i1 [ true, %lor.lhs.false.68 ], [ true, %lor.lhs.false.59 ], [ %lnot84, %lor.end.82 ]
  %lor.ext87 = zext i1 %69 to i32
  %add88 = add nsw i32 %lnot.ext55, %lor.ext87
  %mul89 = mul nsw i32 %add88, 12
  %sub90 = sub nsw i32 %sub43, %mul89
  %70 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin91 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %70, i32 0, i32 19
  %71 = load i32, i32* %margin91, align 4
  %sub92 = sub nsw i32 %sub90, %71
  %conv93 = sitofp i32 %sub92 to float
  store float %conv93, float* %area_h, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %lor.end.86, %lor.end.30
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %72, i32 0, i32 52
  %73 = load i8*, i8** %center_title, align 8
  %cmp94 = icmp eq i8* %73, null
  br i1 %cmp94, label %lor.lhs.false.101, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %sw.epilog
  %74 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %center_title97 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %74, i32 0, i32 52
  %75 = load i8*, i8** %center_title97, align 8
  %76 = load i8, i8* %75, align 1
  %conv98 = zext i8 %76 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %lor.lhs.false.101, label %if.else

lor.lhs.false.101:                                ; preds = %lor.lhs.false.96, %sw.epilog
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %77, i32 0, i32 53
  %78 = load i8*, i8** %left_title, align 8
  %cmp102 = icmp eq i8* %78, null
  br i1 %cmp102, label %lor.lhs.false.109, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.101
  %79 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_title105 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %79, i32 0, i32 53
  %80 = load i8*, i8** %left_title105, align 8
  %81 = load i8, i8* %80, align 1
  %conv106 = zext i8 %81 to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %lor.lhs.false.109, label %if.else

lor.lhs.false.109:                                ; preds = %lor.lhs.false.104, %lor.lhs.false.101
  %82 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %82, i32 0, i32 54
  %83 = load i8*, i8** %right_title, align 8
  %cmp110 = icmp eq i8* %83, null
  br i1 %cmp110, label %if.then, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.109
  %84 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_title113 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %84, i32 0, i32 54
  %85 = load i8*, i8** %right_title113, align 8
  %86 = load i8, i8* %85, align 1
  %conv114 = zext i8 %86 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.112, %lor.lhs.false.109
  %87 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %87, i32 0, i32 64
  %88 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %title_font_size = getelementptr inbounds %struct.ps_status, %struct.ps_status* %88, i32 0, i32 4
  store i32 11, i32* %title_font_size, align 4
  %89 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status117 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %89, i32 0, i32 64
  %90 = load %struct.ps_status*, %struct.ps_status** %status117, align 8
  %title_bar_height = getelementptr inbounds %struct.ps_status, %struct.ps_status* %90, i32 0, i32 3
  store float 0.000000e+00, float* %title_bar_height, align 4
  br label %if.end.131

if.else:                                          ; preds = %lor.lhs.false.112, %lor.lhs.false.104, %lor.lhs.false.96
  %91 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %91, i32 0, i32 14
  %92 = load i32, i32* %columns, align 4
  %93 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %93, i32 0, i32 15
  %94 = load i32, i32* %rows, align 4
  %mul118 = mul nsw i32 %92, %94
  %cmp119 = icmp sgt i32 %mul118, 1
  br i1 %cmp119, label %if.then.121, label %if.else.126

if.then.121:                                      ; preds = %if.else
  %95 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status122 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %95, i32 0, i32 64
  %96 = load %struct.ps_status*, %struct.ps_status** %status122, align 8
  %title_font_size123 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %96, i32 0, i32 4
  store i32 11, i32* %title_font_size123, align 4
  %97 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status124 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %97, i32 0, i32 64
  %98 = load %struct.ps_status*, %struct.ps_status** %status124, align 8
  %title_bar_height125 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %98, i32 0, i32 3
  store float 1.500000e+01, float* %title_bar_height125, align 4
  br label %if.end

if.else.126:                                      ; preds = %if.else
  %99 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status127 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %99, i32 0, i32 64
  %100 = load %struct.ps_status*, %struct.ps_status** %status127, align 8
  %title_font_size128 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %100, i32 0, i32 4
  store i32 15, i32* %title_font_size128, align 4
  %101 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status129 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %101, i32 0, i32 64
  %102 = load %struct.ps_status*, %struct.ps_status** %status129, align 8
  %title_bar_height130 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %102, i32 0, i32 3
  store float 2.000000e+01, float* %title_bar_height130, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.126, %if.then.121
  br label %if.end.131

if.end.131:                                       ; preds = %if.end, %if.then
  %103 = load float, float* %area_h, align 4
  %104 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows132 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %104, i32 0, i32 15
  %105 = load i32, i32* %rows132, align 4
  %conv133 = sitofp i32 %105 to float
  %106 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status134 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %106, i32 0, i32 64
  %107 = load %struct.ps_status*, %struct.ps_status** %status134, align 8
  %title_bar_height135 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %107, i32 0, i32 3
  %108 = load float, float* %title_bar_height135, align 4
  %mul136 = fmul float %conv133, %108
  %sub137 = fsub float %103, %mul136
  %109 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows138 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %109, i32 0, i32 15
  %110 = load i32, i32* %rows138, align 4
  %cmp139 = icmp sgt i32 %110, 1
  %cond = select i1 %cmp139, i32 12, i32 0
  %conv141 = sitofp i32 %cond to float
  %sub142 = fsub float %sub137, %conv141
  %111 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows143 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %111, i32 0, i32 15
  %112 = load i32, i32* %rows143, align 4
  %conv144 = sitofp i32 %112 to float
  %div = fdiv float %sub142, %conv144
  store float %div, float* %printing_h, align 4
  %113 = load float, float* %area_w, align 4
  %114 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns145 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %114, i32 0, i32 14
  %115 = load i32, i32* %columns145, align 4
  %cmp146 = icmp sgt i32 %115, 1
  %cond148 = select i1 %cmp146, i32 12, i32 0
  %conv149 = sitofp i32 %cond148 to float
  %sub150 = fsub float %113, %conv149
  %116 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns151 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %116, i32 0, i32 14
  %117 = load i32, i32* %columns151, align 4
  %conv152 = sitofp i32 %117 to float
  %div153 = fdiv float %sub150, %conv152
  store float %div153, float* %printing_w, align 4
  %118 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %118, i32 0, i32 41
  %119 = load i32, i32* %columns_requested, align 4
  %cmp154 = icmp ne i32 %119, 0
  br i1 %cmp154, label %if.then.156, label %if.else.166

if.then.156:                                      ; preds = %if.end.131
  %120 = load float, float* %printing_w, align 4
  %conv157 = fpext float %120 to double
  %121 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested158 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %121, i32 0, i32 41
  %122 = load i32, i32* %columns_requested158, align 4
  %123 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %123, i32 0, i32 29
  %124 = load i32, i32* %numbering, align 4
  %tobool = icmp ne i32 %124, 0
  %cond159 = select i1 %tobool, i32 5, i32 0
  %add160 = add nsw i32 %122, %cond159
  %conv161 = sitofp i32 %add160 to double
  %add162 = fadd double %conv161, 1.400000e+00
  %div163 = fdiv double %conv157, %add162
  %div164 = fdiv double %div163, 6.000000e-01
  %conv165 = fptrunc double %div164 to float
  %125 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %125, i32 0, i32 42
  store float %conv165, float* %fontsize, align 4
  br label %if.end.197

if.else.166:                                      ; preds = %if.end.131
  %126 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %126, i32 0, i32 40
  %127 = load i32, i32* %lines_requested, align 4
  %cmp167 = icmp ne i32 %127, 0
  br i1 %cmp167, label %if.then.169, label %if.else.177

if.then.169:                                      ; preds = %if.else.166
  %128 = load float, float* %printing_h, align 4
  %conv170 = fpext float %128 to double
  %129 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested171 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %129, i32 0, i32 40
  %130 = load i32, i32* %lines_requested171, align 4
  %conv172 = sitofp i32 %130 to double
  %add173 = fadd double %conv172, 7.000000e-01
  %div174 = fdiv double %conv170, %add173
  %conv175 = fptrunc double %div174 to float
  %131 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize176 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %131, i32 0, i32 42
  store float %conv175, float* %fontsize176, align 4
  br label %if.end.196

if.else.177:                                      ; preds = %if.else.166
  %132 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize178 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %132, i32 0, i32 42
  %133 = load float, float* %fontsize178, align 4
  %conv179 = fpext float %133 to double
  %cmp180 = fcmp oeq double %conv179, 0.000000e+00
  br i1 %cmp180, label %if.then.182, label %if.end.195

if.then.182:                                      ; preds = %if.else.177
  %134 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation183 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %134, i32 0, i32 12
  %135 = load i32, i32* %orientation183, align 4
  %cmp184 = icmp eq i32 %135, 1
  br i1 %cmp184, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.182
  br label %cond.end

cond.false:                                       ; preds = %if.then.182
  %136 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns186 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %136, i32 0, i32 14
  %137 = load i32, i32* %columns186, align 4
  %138 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows187 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %138, i32 0, i32 15
  %139 = load i32, i32* %rows187, align 4
  %mul188 = mul nsw i32 %137, %139
  %cmp189 = icmp sgt i32 %mul188, 1
  %cond191 = select i1 %cmp189, double 6.400000e+00, double 9.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond192 = phi double [ 6.800000e+00, %cond.true ], [ %cond191, %cond.false ]
  %conv193 = fptrunc double %cond192 to float
  %140 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize194 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %140, i32 0, i32 42
  store float %conv193, float* %fontsize194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %cond.end, %if.else.177
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.169
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.156
  %141 = load float, float* %printing_h, align 4
  %142 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize198 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %142, i32 0, i32 42
  %143 = load float, float* %fontsize198, align 4
  %div199 = fdiv float %141, %143
  %conv200 = fpext float %div199 to double
  %sub201 = fsub double %conv200, 7.000000e-01
  %conv202 = fptosi double %sub201 to i32
  %144 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status203 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %144, i32 0, i32 64
  %145 = load %struct.ps_status*, %struct.ps_status** %status203, align 8
  %linesperpage = getelementptr inbounds %struct.ps_status, %struct.ps_status* %145, i32 0, i32 2
  store i32 %conv202, i32* %linesperpage, align 4
  %146 = load float, float* %printing_w, align 4
  %conv204 = fpext float %146 to double
  %147 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize205 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %147, i32 0, i32 42
  %148 = load float, float* %fontsize205, align 4
  %conv206 = fpext float %148 to double
  %mul207 = fmul double %conv206, 6.000000e-01
  %div208 = fdiv double %conv204, %mul207
  %sub209 = fsub double %div208, 1.400000e+00
  %conv210 = fptosi double %sub209 to i32
  %149 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status211 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %149, i32 0, i32 64
  %150 = load %struct.ps_status*, %struct.ps_status** %status211, align 8
  %columnsperline = getelementptr inbounds %struct.ps_status, %struct.ps_status* %150, i32 0, i32 0
  store i32 %conv210, i32* %columnsperline, align 4
  %151 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested212 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %151, i32 0, i32 41
  %152 = load i32, i32* %columns_requested212, align 4
  %cmp213 = icmp sgt i32 %152, 0
  br i1 %cmp213, label %if.then.215, label %if.else.223

if.then.215:                                      ; preds = %if.end.197
  %153 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns_requested216 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %153, i32 0, i32 41
  %154 = load i32, i32* %columns_requested216, align 4
  %155 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering217 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %155, i32 0, i32 29
  %156 = load i32, i32* %numbering217, align 4
  %tobool218 = icmp ne i32 %156, 0
  %cond219 = select i1 %tobool218, i32 5, i32 0
  %add220 = add nsw i32 %154, %cond219
  %157 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status221 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %157, i32 0, i32 64
  %158 = load %struct.ps_status*, %struct.ps_status** %status221, align 8
  %columnsperline222 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %158, i32 0, i32 0
  store i32 %add220, i32* %columnsperline222, align 4
  br label %if.end.232

if.else.223:                                      ; preds = %if.end.197
  %159 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested224 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %159, i32 0, i32 40
  %160 = load i32, i32* %lines_requested224, align 4
  %cmp225 = icmp sgt i32 %160, 0
  br i1 %cmp225, label %if.then.227, label %if.end.231

if.then.227:                                      ; preds = %if.else.223
  %161 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %lines_requested228 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %161, i32 0, i32 40
  %162 = load i32, i32* %lines_requested228, align 4
  %163 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status229 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %163, i32 0, i32 64
  %164 = load %struct.ps_status*, %struct.ps_status** %status229, align 8
  %linesperpage230 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %164, i32 0, i32 2
  store i32 %162, i32* %linesperpage230, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.227, %if.else.223
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.215
  %165 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status233 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %165, i32 0, i32 64
  %166 = load %struct.ps_status*, %struct.ps_status** %status233, align 8
  %linesperpage234 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %166, i32 0, i32 2
  %167 = load i32, i32* %linesperpage234, align 4
  %cmp235 = icmp sle i32 %167, 0
  br i1 %cmp235, label %if.then.242, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %if.end.232
  %168 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status238 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %168, i32 0, i32 64
  %169 = load %struct.ps_status*, %struct.ps_status** %status238, align 8
  %columnsperline239 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %169, i32 0, i32 0
  %170 = load i32, i32* %columnsperline239, align 4
  %cmp240 = icmp ule i32 %170, 0
  br i1 %cmp240, label %if.then.242, label %if.end.245

if.then.242:                                      ; preds = %lor.lhs.false.237, %if.end.232
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %171 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize243 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %171, i32 0, i32 42
  %172 = load float, float* %fontsize243, align 4
  %conv244 = fpext float %172 to double
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call, double %conv244)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.242, %lor.lhs.false.237
  %173 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status246 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %173, i32 0, i32 64
  %174 = load %struct.ps_status*, %struct.ps_status** %status246, align 8
  %columnsperline247 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %174, i32 0, i32 0
  %175 = load i32, i32* %columnsperline247, align 4
  %176 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering248 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %176, i32 0, i32 29
  %177 = load i32, i32* %numbering248, align 4
  %tobool249 = icmp ne i32 %177, 0
  %cond250 = select i1 %tobool249, i32 5, i32 0
  %sub251 = sub i32 %175, %cond250
  %mul252 = mul i32 %sub251, 600
  %conv253 = zext i32 %mul252 to i64
  %178 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status254 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %178, i32 0, i32 64
  %179 = load %struct.ps_status*, %struct.ps_status** %status254, align 8
  %wxperline = getelementptr inbounds %struct.ps_status, %struct.ps_status* %179, i32 0, i32 1
  store i64 %conv253, i64* %wxperline, align 8
  %180 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @output_document_setup(%struct.a2ps_job* %180)
  %181 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %181, i32 0, i32 45
  %182 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  %183 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %saved_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %183, i32 0, i32 46
  store %struct.encoding* %182, %struct.encoding** %saved_encoding, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_prolog(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 65
  %1 = load %struct.output*, %struct.output** %divertion, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = bitcast %struct.a2ps_job* %2 to i8*
  call void @output_delayed_routine(%struct.output* %1, void (%struct._IO_FILE*, i8*)* bitcast (void (%struct._IO_FILE*, %struct.a2ps_job*)* @dump_prolog_comments to void (%struct._IO_FILE*, i8*)*), i8* %3)
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %debug = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 35
  %5 = load i8, i8* %debug, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 65
  %7 = load %struct.output*, %struct.output** %divertion1, align 8
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @output_file(%struct.output* %7, %struct.a2ps_job* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 65
  %10 = load %struct.output*, %struct.output** %divertion2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 65
  %12 = load %struct.output*, %struct.output** %divertion3, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 65
  %14 = load %struct.output*, %struct.output** %divertion4, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 65
  %16 = load %struct.output*, %struct.output** %divertion5, align 8
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %prolog = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 36
  %19 = load i8*, i8** %prolog, align 8
  call void @output_file(%struct.output* %16, %struct.a2ps_job* %17, i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 65
  %21 = load %struct.output*, %struct.output** %divertion6, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  ret void
}

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @output_document_setup(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 65
  %1 = load %struct.output*, %struct.output** %divertion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0))
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @check_face_eo_font(%struct.a2ps_job* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 45
  %5 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  call void @encoding_build_faces_wx(%struct.a2ps_job* %3, %struct.encoding* %5)
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 65
  %7 = load %struct.output*, %struct.output** %divertion1, align 8
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %9 = bitcast %struct.a2ps_job* %8 to i8*
  call void @output_delayed_routine(%struct.output* %7, void (%struct._IO_FILE*, i8*)* bitcast (void (%struct._IO_FILE*, %struct.a2ps_job*)* @dump_encodings to void (%struct._IO_FILE*, i8*)*), i8* %9)
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 65
  %11 = load %struct.output*, %struct.output** %divertion2, align 8
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %13 = bitcast %struct.a2ps_job* %12 to i8*
  call void @output_delayed_routine(%struct.output* %11, void (%struct._IO_FILE*, i8*)* bitcast (void (%struct._IO_FILE*, %struct.a2ps_job*)* @dump_fonts to void (%struct._IO_FILE*, i8*)*), i8* %13)
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 65
  %15 = load %struct.output*, %struct.output** %divertion3, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0))
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 12
  %17 = load i32, i32* %orientation, align 4
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 65
  %19 = load %struct.output*, %struct.output** %divertion4, align 8
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 37
  %21 = load %struct.medium*, %struct.medium** %medium, align 8
  %h = getelementptr inbounds %struct.medium, %struct.medium* %21, i32 0, i32 2
  %22 = load i32, i32* %h, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %22)
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 65
  %24 = load %struct.output*, %struct.output** %divertion5, align 8
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 37
  %26 = load %struct.medium*, %struct.medium** %medium6, align 8
  %w = getelementptr inbounds %struct.medium, %struct.medium* %26, i32 0, i32 1
  %27 = load i32, i32* %w, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 %27)
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 65
  %29 = load %struct.output*, %struct.output** %divertion7, align 8
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 37
  %31 = load %struct.medium*, %struct.medium** %medium8, align 8
  %llx = getelementptr inbounds %struct.medium, %struct.medium* %31, i32 0, i32 3
  %32 = load i32, i32* %llx, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 %32)
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion9 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %33, i32 0, i32 65
  %34 = load %struct.output*, %struct.output** %divertion9, align 8
  %35 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium10 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %35, i32 0, i32 37
  %36 = load %struct.medium*, %struct.medium** %medium10, align 8
  %urx = getelementptr inbounds %struct.medium, %struct.medium* %36, i32 0, i32 5
  %37 = load i32, i32* %urx, align 4
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 19
  %39 = load i32, i32* %margin, align 4
  %sub = sub nsw i32 %37, %39
  call void (%struct.output*, i8*, ...) @output(%struct.output* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 %sub)
  %40 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion11 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %40, i32 0, i32 65
  %41 = load %struct.output*, %struct.output** %divertion11, align 8
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 37
  %43 = load %struct.medium*, %struct.medium** %medium12, align 8
  %ury = getelementptr inbounds %struct.medium, %struct.medium* %43, i32 0, i32 6
  %44 = load i32, i32* %ury, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 %44)
  %45 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion13 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %45, i32 0, i32 65
  %46 = load %struct.output*, %struct.output** %divertion13, align 8
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 37
  %48 = load %struct.medium*, %struct.medium** %medium14, align 8
  %lly = getelementptr inbounds %struct.medium, %struct.medium* %48, i32 0, i32 4
  %49 = load i32, i32* %lly, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %49)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %50 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion16 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %50, i32 0, i32 65
  %51 = load %struct.output*, %struct.output** %divertion16, align 8
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium17 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 37
  %53 = load %struct.medium*, %struct.medium** %medium17, align 8
  %w18 = getelementptr inbounds %struct.medium, %struct.medium* %53, i32 0, i32 1
  %54 = load i32, i32* %w18, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %54)
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion19 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 65
  %56 = load %struct.output*, %struct.output** %divertion19, align 8
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium20 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 37
  %58 = load %struct.medium*, %struct.medium** %medium20, align 8
  %h21 = getelementptr inbounds %struct.medium, %struct.medium* %58, i32 0, i32 2
  %59 = load i32, i32* %h21, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 %59)
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion22 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 65
  %61 = load %struct.output*, %struct.output** %divertion22, align 8
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium23 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %62, i32 0, i32 37
  %63 = load %struct.medium*, %struct.medium** %medium23, align 8
  %lly24 = getelementptr inbounds %struct.medium, %struct.medium* %63, i32 0, i32 4
  %64 = load i32, i32* %lly24, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 %64)
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion25 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %65, i32 0, i32 65
  %66 = load %struct.output*, %struct.output** %divertion25, align 8
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium26 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 37
  %68 = load %struct.medium*, %struct.medium** %medium26, align 8
  %ury27 = getelementptr inbounds %struct.medium, %struct.medium* %68, i32 0, i32 6
  %69 = load i32, i32* %ury27, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 %69)
  %70 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion28 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %70, i32 0, i32 65
  %71 = load %struct.output*, %struct.output** %divertion28, align 8
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium29 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %72, i32 0, i32 37
  %73 = load %struct.medium*, %struct.medium** %medium29, align 8
  %w30 = getelementptr inbounds %struct.medium, %struct.medium* %73, i32 0, i32 1
  %74 = load i32, i32* %w30, align 4
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium31 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 37
  %76 = load %struct.medium*, %struct.medium** %medium31, align 8
  %llx32 = getelementptr inbounds %struct.medium, %struct.medium* %76, i32 0, i32 3
  %77 = load i32, i32* %llx32, align 4
  %sub33 = sub nsw i32 %74, %77
  call void (%struct.output*, i8*, ...) @output(%struct.output* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 %sub33)
  %78 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion34 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %78, i32 0, i32 65
  %79 = load %struct.output*, %struct.output** %divertion34, align 8
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium35 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %80, i32 0, i32 37
  %81 = load %struct.medium*, %struct.medium** %medium35, align 8
  %w36 = getelementptr inbounds %struct.medium, %struct.medium* %81, i32 0, i32 1
  %82 = load i32, i32* %w36, align 4
  %83 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium37 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %83, i32 0, i32 37
  %84 = load %struct.medium*, %struct.medium** %medium37, align 8
  %urx38 = getelementptr inbounds %struct.medium, %struct.medium* %84, i32 0, i32 5
  %85 = load i32, i32* %urx38, align 4
  %sub39 = sub nsw i32 %82, %85
  %86 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %margin40 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %86, i32 0, i32 19
  %87 = load i32, i32* %margin40, align 4
  %add = add nsw i32 %sub39, %87
  call void (%struct.output*, i8*, ...) @output(%struct.output* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %add)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.15, %sw.bb
  %88 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion41 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %88, i32 0, i32 65
  %89 = load %struct.output*, %struct.output** %divertion41, align 8
  %90 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %copies = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %90, i32 0, i32 18
  %91 = load i32, i32* %copies, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 %91)
  %92 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_prefeed = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %92, i32 0, i32 22
  %93 = load i32, i32* %page_prefeed, align 4
  %tobool = icmp ne i32 %93, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %94 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion42 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %94, i32 0, i32 65
  %95 = load %struct.output*, %struct.output** %divertion42, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %96 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @output_statusdict(%struct.a2ps_job* %96)
  %97 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @output_pagedevice(%struct.a2ps_job* %97)
  %98 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion43 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %98, i32 0, i32 65
  %99 = load %struct.output*, %struct.output** %divertion43, align 8
  %100 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %100, i32 0, i32 64
  %101 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %title_bar_height = getelementptr inbounds %struct.ps_status, %struct.ps_status* %101, i32 0, i32 3
  %102 = load float, float* %title_bar_height, align 4
  %conv = fpext float %102 to double
  call void (%struct.output*, i8*, ...) @output(%struct.output* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), double %conv)
  %103 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion44 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %103, i32 0, i32 65
  %104 = load %struct.output*, %struct.output** %divertion44, align 8
  %105 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %105, i32 0, i32 64
  %106 = load %struct.ps_status*, %struct.ps_status** %status45, align 8
  %title_font_size = getelementptr inbounds %struct.ps_status, %struct.ps_status* %106, i32 0, i32 4
  %107 = load i32, i32* %title_font_size, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i32 %107)
  %108 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion46 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %108, i32 0, i32 65
  %109 = load %struct.output*, %struct.output** %divertion46, align 8
  %110 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %110, i32 0, i32 42
  %111 = load float, float* %fontsize, align 4
  %conv47 = fpext float %111 to double
  call void (%struct.output*, i8*, ...) @output(%struct.output* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), double %conv47)
  %112 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %112, i32 0, i32 65
  %113 = load %struct.output*, %struct.output** %divertion48, align 8
  %114 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize49 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %114, i32 0, i32 42
  %115 = load float, float* %fontsize49, align 4
  %conv50 = fpext float %115 to double
  %mul = fmul double %conv50, 6.000000e-01
  call void (%struct.output*, i8*, ...) @output(%struct.output* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), double %mul)
  %116 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion51 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %116, i32 0, i32 65
  %117 = load %struct.output*, %struct.output** %divertion51, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0))
  %118 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion52 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %118, i32 0, i32 65
  %119 = load %struct.output*, %struct.output** %divertion52, align 8
  %120 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %121 = bitcast %struct.a2ps_job* %120 to i8*
  call void @output_delayed_routine(%struct.output* %119, void (%struct._IO_FILE*, i8*)* bitcast (void (%struct._IO_FILE*, %struct.a2ps_job*)* @dump_encodings_setup to void (%struct._IO_FILE*, i8*)*), i8* %121)
  %122 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion53 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %122, i32 0, i32 65
  %123 = load %struct.output*, %struct.output** %divertion53, align 8
  %124 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %125 = bitcast %struct.a2ps_job* %124 to i8*
  call void @output_delayed_routine(%struct.output* %123, void (%struct._IO_FILE*, i8*)* bitcast (void (%struct._IO_FILE*, %struct.a2ps_job*)* @dump_setup to void (%struct._IO_FILE*, i8*)*), i8* %125)
  %126 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion54 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %126, i32 0, i32 65
  %127 = load %struct.output*, %struct.output** %divertion54, align 8
  %128 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %129 = bitcast %struct.a2ps_job* %128 to i8*
  call void @output_delayed_routine(%struct.output* %127, void (%struct._IO_FILE*, i8*)* bitcast (void (%struct._IO_FILE*, %struct.a2ps_job*)* @font_info_table_dump_special_font_setup to void (%struct._IO_FILE*, i8*)*), i8* %129)
  %130 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion55 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %130, i32 0, i32 65
  %131 = load %struct.output*, %struct.output** %divertion55, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  %132 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion56 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %132, i32 0, i32 65
  %133 = load %struct.output*, %struct.output** %divertion56, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0))
  %134 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %134, i32 0, i32 65
  %135 = load %struct.output*, %struct.output** %divertion57, align 8
  %136 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status58 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %136, i32 0, i32 64
  %137 = load %struct.ps_status*, %struct.ps_status** %status58, align 8
  %columnsperline = getelementptr inbounds %struct.ps_status, %struct.ps_status* %137, i32 0, i32 0
  %138 = load i32, i32* %columnsperline, align 4
  %conv59 = uitofp i32 %138 to float
  %conv60 = fpext float %conv59 to double
  %add61 = fadd double %conv60, 1.400000e+00
  call void (%struct.output*, i8*, ...) @output(%struct.output* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), double %add61)
  %139 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion62 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %139, i32 0, i32 65
  %140 = load %struct.output*, %struct.output** %divertion62, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0))
  %141 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion63 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %141, i32 0, i32 65
  %142 = load %struct.output*, %struct.output** %divertion63, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %143 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion64 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %143, i32 0, i32 65
  %144 = load %struct.output*, %struct.output** %divertion64, align 8
  %145 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status65 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %145, i32 0, i32 64
  %146 = load %struct.ps_status*, %struct.ps_status** %status65, align 8
  %linesperpage = getelementptr inbounds %struct.ps_status, %struct.ps_status* %146, i32 0, i32 2
  %147 = load i32, i32* %linesperpage, align 4
  %conv66 = sitofp i32 %147 to double
  %add67 = fadd double %conv66, 7.000000e-01
  %148 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fontsize68 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %148, i32 0, i32 42
  %149 = load float, float* %fontsize68, align 4
  %conv69 = fpext float %149 to double
  %mul70 = fmul double %add67, %conv69
  call void (%struct.output*, i8*, ...) @output(%struct.output* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), double %mul70)
  %150 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion71 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %150, i32 0, i32 65
  %151 = load %struct.output*, %struct.output** %divertion71, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0))
  %152 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %152, i32 0, i32 14
  %153 = load i32, i32* %columns, align 4
  %cmp = icmp sgt i32 %153, 1
  br i1 %cmp, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %if.end
  %154 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion74 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %154, i32 0, i32 65
  %155 = load %struct.output*, %struct.output** %divertion74, align 8
  %156 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns75 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %156, i32 0, i32 14
  %157 = load i32, i32* %columns75, align 4
  %158 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns76 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %158, i32 0, i32 14
  %159 = load i32, i32* %columns76, align 4
  %sub77 = sub nsw i32 %159, 1
  call void (%struct.output*, i8*, ...) @output(%struct.output* %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0), i32 %157, i32 %sub77)
  br label %if.end.79

if.else:                                          ; preds = %if.end
  %160 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion78 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %160, i32 0, i32 65
  %161 = load %struct.output*, %struct.output** %divertion78, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %if.then.73
  %162 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %162, i32 0, i32 15
  %163 = load i32, i32* %rows, align 4
  %cmp80 = icmp sgt i32 %163, 1
  br i1 %cmp80, label %if.then.82, label %if.else.121

if.then.82:                                       ; preds = %if.end.79
  %164 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion83 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %164, i32 0, i32 65
  %165 = load %struct.output*, %struct.output** %divertion83, align 8
  %166 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows84 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %166, i32 0, i32 15
  %167 = load i32, i32* %rows84, align 4
  %168 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %168, i32 0, i32 51
  %169 = load i8*, i8** %header, align 8
  %cmp85 = icmp eq i8* %169, null
  br i1 %cmp85, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.82
  %170 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %header87 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %170, i32 0, i32 51
  %171 = load i8*, i8** %header87, align 8
  %172 = load i8, i8* %171, align 1
  %conv88 = zext i8 %172 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.82
  %173 = phi i1 [ true, %if.then.82 ], [ %cmp89, %lor.rhs ]
  %lnot = xor i1 %173, true
  %lnot.ext = zext i1 %lnot to i32
  %174 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %174, i32 0, i32 56
  %175 = load i8*, i8** %footer, align 8
  %cmp91 = icmp eq i8* %175, null
  br i1 %cmp91, label %lor.lhs.false.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %176 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %footer93 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %176, i32 0, i32 56
  %177 = load i8*, i8** %footer93, align 8
  %178 = load i8, i8* %177, align 1
  %conv94 = zext i8 %178 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %lor.lhs.false.97, label %lor.end.116

lor.lhs.false.97:                                 ; preds = %lor.lhs.false, %lor.end
  %179 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %179, i32 0, i32 55
  %180 = load i8*, i8** %left_footer, align 8
  %cmp98 = icmp eq i8* %180, null
  br i1 %cmp98, label %lor.rhs.105, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.97
  %181 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %left_footer101 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %181, i32 0, i32 55
  %182 = load i8*, i8** %left_footer101, align 8
  %183 = load i8, i8* %182, align 1
  %conv102 = zext i8 %183 to i32
  %cmp103 = icmp eq i32 %conv102, 0
  br i1 %cmp103, label %lor.rhs.105, label %lor.end.116

lor.rhs.105:                                      ; preds = %lor.lhs.false.100, %lor.lhs.false.97
  %184 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %184, i32 0, i32 57
  %185 = load i8*, i8** %right_footer, align 8
  %cmp106 = icmp eq i8* %185, null
  br i1 %cmp106, label %lor.end.113, label %lor.rhs.108

lor.rhs.108:                                      ; preds = %lor.rhs.105
  %186 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %right_footer109 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %186, i32 0, i32 57
  %187 = load i8*, i8** %right_footer109, align 8
  %188 = load i8, i8* %187, align 1
  %conv110 = zext i8 %188 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br label %lor.end.113

lor.end.113:                                      ; preds = %lor.rhs.108, %lor.rhs.105
  %189 = phi i1 [ true, %lor.rhs.105 ], [ %cmp111, %lor.rhs.108 ]
  %lnot114 = xor i1 %189, true
  br label %lor.end.116

lor.end.116:                                      ; preds = %lor.end.113, %lor.lhs.false.100, %lor.lhs.false
  %190 = phi i1 [ true, %lor.lhs.false.100 ], [ true, %lor.lhs.false ], [ %lnot114, %lor.end.113 ]
  %lor.ext = zext i1 %190 to i32
  %add117 = add nsw i32 %lnot.ext, %lor.ext
  %mul118 = mul nsw i32 %add117, 12
  %191 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows119 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %191, i32 0, i32 15
  %192 = load i32, i32* %rows119, align 4
  %sub120 = sub nsw i32 %192, 1
  call void (%struct.output*, i8*, ...) @output(%struct.output* %165, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.60, i32 0, i32 0), i32 %167, i32 %mul118, i32 %sub120)
  br label %if.end.123

if.else.121:                                      ; preds = %if.end.79
  %193 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion122 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %193, i32 0, i32 65
  %194 = load %struct.output*, %struct.output** %divertion122, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %lor.end.116
  %195 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion124 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %195, i32 0, i32 65
  %196 = load %struct.output*, %struct.output** %divertion124, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0))
  %197 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %madir = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %197, i32 0, i32 16
  %198 = load i32, i32* %madir, align 4
  switch i32 %198, label %sw.default [
    i32 0, label %sw.bb.125
    i32 1, label %sw.bb.161
  ]

sw.bb.125:                                        ; preds = %if.end.123
  %199 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion126 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %199, i32 0, i32 65
  %200 = load %struct.output*, %struct.output** %divertion126, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0))
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.137, %sw.bb.125
  %201 = load i32, i32* %j, align 4
  %202 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows127 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %202, i32 0, i32 15
  %203 = load i32, i32* %rows127, align 4
  %cmp128 = icmp sle i32 %201, %203
  br i1 %cmp128, label %for.body, label %for.end.139

for.body:                                         ; preds = %for.cond
  %204 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion130 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %204, i32 0, i32 65
  %205 = load %struct.output*, %struct.output** %divertion130, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  store i32 2, i32* %i, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc, %for.body
  %206 = load i32, i32* %i, align 4
  %207 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns132 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %207, i32 0, i32 14
  %208 = load i32, i32* %columns132, align 4
  %cmp133 = icmp sle i32 %206, %208
  br i1 %cmp133, label %for.body.135, label %for.end

for.body.135:                                     ; preds = %for.cond.131
  %209 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion136 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %209, i32 0, i32 65
  %210 = load %struct.output*, %struct.output** %divertion136, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body.135
  %211 = load i32, i32* %i, align 4
  %inc = add nsw i32 %211, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.131

for.end:                                          ; preds = %for.cond.131
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end
  %212 = load i32, i32* %j, align 4
  %inc138 = add nsw i32 %212, 1
  store i32 %inc138, i32* %j, align 4
  br label %for.cond

for.end.139:                                      ; preds = %for.cond
  %213 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion140 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %213, i32 0, i32 65
  %214 = load %struct.output*, %struct.output** %divertion140, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0))
  %215 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion141 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %215, i32 0, i32 65
  %216 = load %struct.output*, %struct.output** %divertion141, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0))
  %217 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows142 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %217, i32 0, i32 15
  %218 = load i32, i32* %rows142, align 4
  store i32 %218, i32* %j, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.158, %for.end.139
  %219 = load i32, i32* %j, align 4
  %cmp144 = icmp sle i32 1, %219
  br i1 %cmp144, label %for.body.146, label %for.end.159

for.body.146:                                     ; preds = %for.cond.143
  %220 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion147 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %220, i32 0, i32 65
  %221 = load %struct.output*, %struct.output** %divertion147, align 8
  %222 = load i32, i32* %j, align 4
  %sub148 = sub nsw i32 %222, 1
  call void (%struct.output*, i8*, ...) @output(%struct.output* %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0), i32 %sub148)
  store i32 2, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.155, %for.body.146
  %223 = load i32, i32* %i, align 4
  %224 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns150 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %224, i32 0, i32 14
  %225 = load i32, i32* %columns150, align 4
  %cmp151 = icmp sle i32 %223, %225
  br i1 %cmp151, label %for.body.153, label %for.end.157

for.body.153:                                     ; preds = %for.cond.149
  %226 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion154 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %226, i32 0, i32 65
  %227 = load %struct.output*, %struct.output** %divertion154, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0))
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.153
  %228 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %228, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.149

for.end.157:                                      ; preds = %for.cond.149
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %229 = load i32, i32* %j, align 4
  %dec = add nsw i32 %229, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.143

for.end.159:                                      ; preds = %for.cond.143
  %230 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion160 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %230, i32 0, i32 65
  %231 = load %struct.output*, %struct.output** %divertion160, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0))
  br label %sw.epilog.203

sw.bb.161:                                        ; preds = %if.end.123
  %232 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion162 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %232, i32 0, i32 65
  %233 = load %struct.output*, %struct.output** %divertion162, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.179, %sw.bb.161
  %234 = load i32, i32* %i, align 4
  %235 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns164 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %235, i32 0, i32 14
  %236 = load i32, i32* %columns164, align 4
  %cmp165 = icmp sle i32 %234, %236
  br i1 %cmp165, label %for.body.167, label %for.end.181

for.body.167:                                     ; preds = %for.cond.163
  %237 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion168 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %237, i32 0, i32 65
  %238 = load %struct.output*, %struct.output** %divertion168, align 8
  %239 = load i32, i32* %i, align 4
  %sub169 = sub nsw i32 %239, 1
  call void (%struct.output*, i8*, ...) @output(%struct.output* %238, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i32 %sub169)
  store i32 2, i32* %j, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.176, %for.body.167
  %240 = load i32, i32* %j, align 4
  %241 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows171 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %241, i32 0, i32 15
  %242 = load i32, i32* %rows171, align 4
  %cmp172 = icmp sle i32 %240, %242
  br i1 %cmp172, label %for.body.174, label %for.end.178

for.body.174:                                     ; preds = %for.cond.170
  %243 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion175 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %243, i32 0, i32 65
  %244 = load %struct.output*, %struct.output** %divertion175, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %244, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0))
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.174
  %245 = load i32, i32* %j, align 4
  %inc177 = add nsw i32 %245, 1
  store i32 %inc177, i32* %j, align 4
  br label %for.cond.170

for.end.178:                                      ; preds = %for.cond.170
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.end.178
  %246 = load i32, i32* %i, align 4
  %inc180 = add nsw i32 %246, 1
  store i32 %inc180, i32* %i, align 4
  br label %for.cond.163

for.end.181:                                      ; preds = %for.cond.163
  %247 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion182 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %247, i32 0, i32 65
  %248 = load %struct.output*, %struct.output** %divertion182, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0))
  %249 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion183 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %249, i32 0, i32 65
  %250 = load %struct.output*, %struct.output** %divertion183, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.199, %for.end.181
  %251 = load i32, i32* %i, align 4
  %252 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %columns185 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %252, i32 0, i32 14
  %253 = load i32, i32* %columns185, align 4
  %cmp186 = icmp sle i32 %251, %253
  br i1 %cmp186, label %for.body.188, label %for.end.201

for.body.188:                                     ; preds = %for.cond.184
  %254 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %rows189 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %254, i32 0, i32 15
  %255 = load i32, i32* %rows189, align 4
  store i32 %255, i32* %j, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.196, %for.body.188
  %256 = load i32, i32* %j, align 4
  %cmp191 = icmp sge i32 %256, 1
  br i1 %cmp191, label %for.body.193, label %for.end.198

for.body.193:                                     ; preds = %for.cond.190
  %257 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion194 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %257, i32 0, i32 65
  %258 = load %struct.output*, %struct.output** %divertion194, align 8
  %259 = load i32, i32* %j, align 4
  %sub195 = sub nsw i32 %259, 1
  call void (%struct.output*, i8*, ...) @output(%struct.output* %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0), i32 %sub195)
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.193
  %260 = load i32, i32* %j, align 4
  %dec197 = add nsw i32 %260, -1
  store i32 %dec197, i32* %j, align 4
  br label %for.cond.190

for.end.198:                                      ; preds = %for.cond.190
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.end.198
  %261 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %261, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.184

for.end.201:                                      ; preds = %for.cond.184
  %262 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion202 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %262, i32 0, i32 65
  %263 = load %struct.output*, %struct.output** %divertion202, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0))
  br label %sw.epilog.203

sw.default:                                       ; preds = %if.end.123
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71, i32 0, i32 0))
  br label %sw.epilog.203

sw.epilog.203:                                    ; preds = %sw.default, %for.end.201, %for.end.159
  %264 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion204 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %264, i32 0, i32 65
  %265 = load %struct.output*, %struct.output** %divertion204, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %265, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0))
  %266 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion205 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %266, i32 0, i32 65
  %267 = load %struct.output*, %struct.output** %divertion205, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %267, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0))
  %268 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion206 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %268, i32 0, i32 65
  %269 = load %struct.output*, %struct.output** %divertion206, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %269, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0))
  %270 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion207 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %270, i32 0, i32 65
  %271 = load %struct.output*, %struct.output** %divertion207, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %271, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0))
  %272 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion208 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %272, i32 0, i32 65
  %273 = load %struct.output*, %struct.output** %divertion208, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0))
  %274 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion209 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %274, i32 0, i32 65
  %275 = load %struct.output*, %struct.output** %divertion209, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %275, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0))
  %276 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion210 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %276, i32 0, i32 65
  %277 = load %struct.output*, %struct.output** %divertion210, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0))
  %278 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion211 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %278, i32 0, i32 65
  %279 = load %struct.output*, %struct.output** %divertion211, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %279, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0))
  %280 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion212 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %280, i32 0, i32 65
  %281 = load %struct.output*, %struct.output** %divertion212, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0))
  %282 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion213 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %282, i32 0, i32 65
  %283 = load %struct.output*, %struct.output** %divertion213, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %283, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0))
  %284 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion214 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %284, i32 0, i32 65
  %285 = load %struct.output*, %struct.output** %divertion214, align 8
  %286 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %286, i32 0, i32 29
  %287 = load i32, i32* %numbering, align 4
  %tobool215 = icmp ne i32 %287, 0
  %cond = select i1 %tobool215, i32 5, i32 0
  call void (%struct.output*, i8*, ...) @output(%struct.output* %285, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 %cond)
  %288 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion216 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %288, i32 0, i32 65
  %289 = load %struct.output*, %struct.output** %divertion216, align 8
  %290 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tabsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %290, i32 0, i32 39
  %291 = load i32, i32* %tabsize, align 4
  call void (%struct.output*, i8*, ...) @output(%struct.output* %289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 %291)
  %292 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion217 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %292, i32 0, i32 65
  %293 = load %struct.output*, %struct.output** %divertion217, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0))
  %294 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion218 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %294, i32 0, i32 65
  %295 = load %struct.output*, %struct.output** %divertion218, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %295, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0))
  %296 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion219 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %296, i32 0, i32 65
  %297 = load %struct.output*, %struct.output** %divertion219, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %297, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_end(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 65
  %1 = load %struct.output*, %struct.output** %divertion, align 8
  call void @output_to_void(%struct.output* %1, i32 0)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @end_document(%struct.a2ps_job* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @undivert(%struct.a2ps_job* %3)
  ret void
}

declare void @output_to_void(%struct.output*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @end_document(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @page_flush(%struct.a2ps_job* %0)
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 65
  %2 = load %struct.output*, %struct.output** %divertion, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0))
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %page_prefeed = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 22
  %4 = load i32, i32* %page_prefeed, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 65
  %6 = load %struct.output*, %struct.output** %divertion1, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 65
  %8 = load %struct.output*, %struct.output** %divertion2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0))
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %divertion3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 65
  %10 = load %struct.output*, %struct.output** %divertion3, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0))
  ret void
}

declare void @undivert(%struct.a2ps_job*) #1

declare %struct.darray* @pw_glob_on_suffix(i8**, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prologue_print_signature(%struct.a2ps_job* %job, i8* %prologue_name, %struct._IO_FILE* %stream, i8* %name_format, void (i8*, i8*, %struct._IO_FILE*)* %documentation_fn) #3 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %prologue_name.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %name_format.addr = alloca i8*, align 8
  %documentation_fn.addr = alloca void (i8*, i8*, %struct._IO_FILE*)*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %done = alloca i32, align 4
  %firstline = alloca i32, align 4
  %lastline = alloca i32, align 4
  %bufsiz = alloca i64, align 8
  %buf2 = alloca [8192 x i8], align 16
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %prologue_name, i8** %prologue_name.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %name_format, i8** %name_format.addr, align 8
  store void (i8*, i8*, %struct._IO_FILE*)* %documentation_fn, void (i8*, i8*, %struct._IO_FILE*)** %documentation_fn.addr, align 8
  store i8* null, i8** %buf, align 8
  store i32 0, i32* %done, align 4
  store i32 0, i32* %firstline, align 4
  store i32 0, i32* %lastline, align 4
  store i64 0, i64* %bufsiz, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load i8*, i8** %name_format.addr, align 8
  %2 = load i8*, i8** %prologue_name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1, i8* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %4 = load i8**, i8*** %path, align 8
  %5 = load i8*, i8** %prologue_name.addr, align 8
  %call1 = call i8* @xpw_find_file(i8** %4, i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call1, i8** %filename, align 8
  %6 = load i8*, i8** %filename, align 8
  %call2 = call %struct._IO_FILE* @xrfopen(i8* %6)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 @getshline_numbered(i32* %firstline, i32* %lastline, i8** %buf, i64* %bufsiz, %struct._IO_FILE* %7)
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end.29

while.body:                                       ; preds = %land.end
  %10 = load i8*, i8** %buf, align 8
  %call4 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %10, i64 13) #6
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.28, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf2, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %11)
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %land.rhs.9, label %land.end.15

land.rhs.9:                                       ; preds = %while.cond.6
  %arraydecay10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf2, i32 0, i32 0
  %call11 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay10, i64 16) #6
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  %lnot14 = xor i1 %lnot13, true
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.9, %while.cond.6
  %12 = phi i1 [ false, %while.cond.6 ], [ %lnot14, %land.rhs.9 ]
  br i1 %12, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %land.end.15
  %arraydecay17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf2, i32 0, i32 0
  %call18 = call i64 @strlen(i8* %arraydecay17) #6
  %cmp19 = icmp ult i64 %call18, 8192
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %while.body.16
  %13 = load i32, i32* %lastline, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %lastline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %while.body.16
  %14 = load void (i8*, i8*, %struct._IO_FILE*)*, void (i8*, i8*, %struct._IO_FILE*)** %documentation_fn.addr, align 8
  %arraydecay21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf2, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void %14(i8* %arraydecay21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %while.cond.6

while.end:                                        ; preds = %land.end.15
  %arraydecay22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf2, i32 0, i32 0
  %call23 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay22, i64 16) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %while.end
  %16 = load i8*, i8** %filename, align 8
  %17 = load i32, i32* %firstline, align 4
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %16, i32 %17, i8* %call26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %while.end
  store i32 1, i32* %done, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %while.body
  br label %while.cond

while.end.29:                                     ; preds = %land.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call30 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %18)
  %19 = load i8*, i8** %buf, align 8
  call void @free(i8* %19) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 @fclose(%struct._IO_FILE* %20)
  %21 = load i8*, i8** %filename, align 8
  call void @free(i8* %21) #5
  ret void
}

declare void @da_free(%struct.darray*, void (i8*)*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @xpw_find_file(i8**, i8*, i8*) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare i32 @getshline_numbered(i32*, i32*, i8**, i64*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @output_delayed_routine(%struct.output*, void (%struct._IO_FILE*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dump_prolog_comments(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %cp = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 64
  %1 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %magic_number = getelementptr inbounds %struct.ps_status, %struct.ps_status* %1, i32 0, i32 5
  %2 = load i8*, i8** %magic_number, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4)
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 68
  %7 = load %struct.darray*, %struct.darray** %jobs, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 6
  %8 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = bitcast i8* %9 to %struct.file_job*
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 50
  %12 = load i8*, i8** %title, align 8
  %call2 = call i8* @expand_user_string(%struct.a2ps_job* %5, %struct.file_job* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %12)
  store i8* %call2, i8** %cp, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %14 = load i8*, i8** %cp, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* %14)
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 68
  %17 = load %struct.darray*, %struct.darray** %jobs4, align 8
  %content5 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 6
  %18 = load i8**, i8*** %content5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx6, align 8
  %20 = bitcast i8* %19 to %struct.file_job*
  %call7 = call i8* @expand_user_string(%struct.a2ps_job* %15, %struct.file_job* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  store i8* %call7, i8** %cp, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %22 = load i8*, i8** %cp, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %25, i32 0, i32 6
  %call10 = call i8* @asctime(%struct.tm* %run_tm) #5
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8* %call10)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %27 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %27, i32 0, i32 37
  %28 = load %struct.medium*, %struct.medium** %medium, align 8
  %llx = getelementptr inbounds %struct.medium, %struct.medium* %28, i32 0, i32 3
  %29 = load i32, i32* %llx, align 4
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 37
  %31 = load %struct.medium*, %struct.medium** %medium12, align 8
  %lly = getelementptr inbounds %struct.medium, %struct.medium* %31, i32 0, i32 4
  %32 = load i32, i32* %lly, align 4
  %33 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium13 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %33, i32 0, i32 37
  %34 = load %struct.medium*, %struct.medium** %medium13, align 8
  %urx = getelementptr inbounds %struct.medium, %struct.medium* %34, i32 0, i32 5
  %35 = load i32, i32* %urx, align 4
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 37
  %37 = load %struct.medium*, %struct.medium** %medium14, align 8
  %ury = getelementptr inbounds %struct.medium, %struct.medium* %37, i32 0, i32 6
  %38 = load i32, i32* %ury, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i32 %29, i32 %32, i32 %35, i32 %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %41, i32 0, i32 12
  %42 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %42, 1
  %cond = select i1 %cmp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8* %cond)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %sheets = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 8
  %45 = load i32, i32* %sheets, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i32 %45)
  %46 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status19 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %46, i32 0, i32 64
  %47 = load %struct.ps_status*, %struct.ps_status** %status19, align 8
  %page_are_ordered = getelementptr inbounds %struct.ps_status, %struct.ps_status* %47, i32 0, i32 8
  %48 = load i32, i32* %page_are_ordered, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium22 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 37
  %53 = load %struct.medium*, %struct.medium** %medium22, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %53, i32 0, i32 0
  %54 = load i8*, i8** %name, align 8
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium23 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 37
  %56 = load %struct.medium*, %struct.medium** %medium23, align 8
  %w = getelementptr inbounds %struct.medium, %struct.medium* %56, i32 0, i32 1
  %57 = load i32, i32* %w, align 4
  %58 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %medium24 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %58, i32 0, i32 37
  %59 = load %struct.medium*, %struct.medium** %medium24, align 8
  %h = getelementptr inbounds %struct.medium, %struct.medium* %59, i32 0, i32 2
  %60 = load i32, i32* %h, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0), i8* %54, i32 %57, i32 %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %62 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @dump_needed_resources(%struct._IO_FILE* %61, %struct.a2ps_job* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @dump_process_color(%struct._IO_FILE* %63, %struct.a2ps_job* %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @dump_requirements(%struct._IO_FILE* %65, %struct.a2ps_job* %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @dump_supplied_resources(%struct._IO_FILE* %67, %struct.a2ps_job* %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %69)
  %70 = load void (%struct.a2ps_job*, %struct._IO_FILE*)*, void (%struct.a2ps_job*, %struct._IO_FILE*)** @ps_comment_hook, align 8
  %tobool27 = icmp ne void (%struct.a2ps_job*, %struct._IO_FILE*)* %70, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  %71 = load void (%struct.a2ps_job*, %struct._IO_FILE*)*, void (%struct.a2ps_job*, %struct._IO_FILE*)** @ps_comment_hook, align 8
  %72 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void %71(%struct.a2ps_job* %72, %struct._IO_FILE* %73)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end
  ret void
}

declare void @output_file(%struct.output*, %struct.a2ps_job*, i8*, i8*) #1

declare void @output(%struct.output*, i8*, ...) #1

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #2

declare void @dump_needed_resources(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @dump_process_color(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @dump_requirements(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @dump_supplied_resources(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @check_face_eo_font(%struct.a2ps_job*) #1

declare void @encoding_build_faces_wx(%struct.a2ps_job*, %struct.encoding*) #1

; Function Attrs: nounwind uwtable
define internal void @dump_encodings(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 21
  %1 = load %struct.output*, %struct.output** %ps_encodings, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @output_dump(%struct.output* %1, %struct._IO_FILE* %2)
  ret void
}

declare void @dump_fonts(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @output_statusdict(%struct.a2ps_job*) #1

declare void @output_pagedevice(%struct.a2ps_job*) #1

declare void @dump_encodings_setup(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @dump_setup(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @font_info_table_dump_special_font_setup(%struct._IO_FILE*, %struct.a2ps_job*) #1

declare void @output_dump(%struct.output*, %struct._IO_FILE*) #1

declare void @page_flush(%struct.a2ps_job*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
