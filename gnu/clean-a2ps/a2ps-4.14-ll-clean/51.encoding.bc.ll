; ModuleID = './lib/encoding.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pair_htable = type opaque
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type { i8*, i8*, i8*, i8*, %struct.pair_htable*, [256 x i8*], %struct.darray*, %struct.hash_table_s*, [10 x i32*] }
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.font_entry = type { i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"encoding.map\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Read encoding.map:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",<>;\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot find font %s, nor any substitute\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"In encoding %s, font %s is resolved as %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Default font is `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Substitution of fonts:\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Name of fonts used (before substitution):\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Encoding array:\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%-10s \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Fonts:\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Faces:\0A\00", align 1
@base_faces = external global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Face %s (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Known Encodings\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".edf\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"The known encodings are:\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"***** %s ***** (%s, %s) \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"not used\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"to share between encodings\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"reencode\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"%3d: %04u %04u %04u %04u %04u %04u %04u %04u\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"<No WX defined>\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"List of font names\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%sEncoding\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@load_encoding_description_file.first_time = internal global i32 1, align 4
@load_encoding_description_file.documentation_stack = internal global %struct.obstack zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [32 x i8] c"Loading encoding file `%s.edf'\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Vector:\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"missing argument for `%s'\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"`Vector:'\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Default:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Documentation\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"EndDocumentation\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"`Documentation'\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Substitute:\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"invalid option `%s'\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"%%%%BeginResource: encoding %sEncoding\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"/%sEncoding [\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"/%s \00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\0A] def\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"%%%%EndResource\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"%% Dictionary for %s support\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"/%sdict %d dict begin\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"  /f%s %sEncoding /%s reencode_font\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"currentdict end def\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"@deftp {Encoding} {%s} (@file{%s.edf})\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"@end deftp\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pair_htable* @encodings_map_new() #0 {
entry:
  %call = call %struct.pair_htable* @pair_table_new()
  ret %struct.pair_htable* %call
}

declare %struct.pair_htable* @pair_table_new() #1

; Function Attrs: nounwind uwtable
define void @encodings_map_free(%struct.pair_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  call void @pair_table_free(%struct.pair_htable* %0)
  ret void
}

declare void @pair_table_free(%struct.pair_htable*) #1

; Function Attrs: nounwind uwtable
define i32 @load_main_encodings_map(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call i8* @xpw_find_file(i8** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* null)
  store i8* %call, i8** %file, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load i8*, i8** %file, align 8
  %call1 = call i32 @load_encodings_map(%struct.a2ps_job* %2, i8* %3)
  %4 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 16, %4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 20
  %7 = load %struct.pair_htable*, %struct.pair_htable** %encodings_map, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @pair_table_list_long(%struct.pair_htable* %7, %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %file, align 8
  call void @free(i8* %9) #6
  ret i32 1
}

declare i8* @xpw_find_file(i8**, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_encodings_map(%struct.a2ps_job* %job, i8* %file) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 20
  %1 = load %struct.pair_htable*, %struct.pair_htable** %encodings_map, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %call = call i32 @pair_table_load(%struct.pair_htable* %1, i8* %2)
  ret i32 %call
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @pair_table_list_long(%struct.pair_htable*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @encoding_resolve_font_substitute(%struct.a2ps_job* %job, %struct.encoding* %encoding, i8* %font_list) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %encoding.addr = alloca %struct.encoding*, align 8
  %font_list.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  %font_list_copy = alloca i8*, align 8
  %font_name = alloca i8*, align 8
  %_tmp_ = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  store i8* %font_list, i8** %font_list.addr, align 8
  store i8* null, i8** %res, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %font_list.addr, align 8
  store i8* %0, i8** %_tmp_, align 8
  %1 = load i8*, i8** %_tmp_, align 8
  %call = call i64 @strlen(i8* %1) #7
  %add = add i64 %call, 1
  %mul = mul i64 1, %add
  %2 = alloca i8, i64 %mul
  store i8* %2, i8** %font_list_copy, align 8
  %3 = load i8*, i8** %font_list_copy, align 8
  %4 = load i8*, i8** %_tmp_, align 8
  %call1 = call i8* @strcpy(i8* %3, i8* %4) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %font_list_copy, align 8
  %call2 = call i8* @strtok(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call2, i8** %font_name, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %land.end, %do.end
  %6 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %substitutes = getelementptr inbounds %struct.encoding, %struct.encoding* %6, i32 0, i32 4
  %7 = load %struct.pair_htable*, %struct.pair_htable** %substitutes, align 8
  %8 = load i8*, i8** %font_name, align 8
  %call4 = call i8* @pair_get(%struct.pair_htable* %7, i8* %8)
  store i8* %call4, i8** %res, align 8
  %9 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %do.body.3
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %11 = load i8*, i8** %font_name, align 8
  %call5 = call i32 @font_exists(%struct.a2ps_job* %10, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %12 = load i8*, i8** %font_name, align 8
  %call8 = call i8* @xstrdup(i8* %12)
  store i8* %call8, i8** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %13 = load i8*, i8** %res, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %call11 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  store i8* %call11, i8** %font_name, align 8
  %tobool12 = icmp ne i8* %call11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %14 = phi i1 [ false, %do.cond ], [ %tobool12, %land.rhs ]
  br i1 %14, label %do.body.3, label %do.end.13

do.end.13:                                        ; preds = %land.end
  %15 = load i8*, i8** %res, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %if.end.20, label %if.then.15

if.then.15:                                       ; preds = %do.end.13
  %16 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %default_font = getelementptr inbounds %struct.encoding, %struct.encoding* %16, i32 0, i32 3
  %17 = load i8*, i8** %default_font, align 8
  %tobool16 = icmp ne i8* %17, null
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.15
  %18 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %default_font18 = getelementptr inbounds %struct.encoding, %struct.encoding* %18, i32 0, i32 3
  %19 = load i8*, i8** %default_font18, align 8
  store i8* %19, i8** %res, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.then.15
  %20 = load i8*, i8** %font_name, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %do.end.13
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %21 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 16, %21
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %do.body.21
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %23, i32 0, i32 0
  %24 = load i8*, i8** %key, align 8
  %25 = load i8*, i8** %font_name, align 8
  %26 = load i8*, i8** %res, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i8* %24, i8* %25, i8* %26)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %do.body.21
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.25
  %27 = load i8*, i8** %res, align 8
  ret i8* %27
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare i8* @pair_get(%struct.pair_htable*, i8*) #1

declare i32 @font_exists(%struct.a2ps_job*, i8*) #1

declare i8* @xstrdup(i8*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @encoding_self_print(%struct.encoding* %item, %struct._IO_FILE* %stream) #0 {
entry:
  %item.addr = alloca %struct.encoding*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %face = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.encoding* %item, %struct.encoding** %item.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @encoding_print_signature(%struct.encoding* %0, %struct._IO_FILE* %1)
  %2 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %default_font = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 3
  %3 = load i8*, i8** %default_font, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %default_font1 = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 3
  %5 = load i8*, i8** %default_font1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %8 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %default_font4 = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 3
  %9 = load i8*, i8** %default_font4, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  %11 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %substitutes = getelementptr inbounds %struct.encoding, %struct.encoding* %11, i32 0, i32 4
  %12 = load %struct.pair_htable*, %struct.pair_htable** %substitutes, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @pair_table_list_long(%struct.pair_htable* %12, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  %15 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %font_names_used = getelementptr inbounds %struct.encoding, %struct.encoding* %15, i32 0, i32 6
  %16 = load %struct.darray*, %struct.darray** %font_names_used, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_self_print(%struct.darray* %16, %struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %c, align 4
  %cmp8 = icmp slt i32 %19, 256
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %c, align 4
  %rem = srem i32 %20, 8
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call11 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.body
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %23 = load i32, i32* %c, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %vector = getelementptr inbounds %struct.encoding, %struct.encoding* %24, i32 0, i32 5
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %vector, i32 0, i64 %idxprom
  %25 = load i8*, i8** %arrayidx, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %25)
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %26 = load i32, i32* %c, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %29 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %fonts = getelementptr inbounds %struct.encoding, %struct.encoding* %29, i32 0, i32 7
  %30 = load %struct.hash_table_s*, %struct.hash_table_s** %fonts, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @font_table_self_print(%struct.hash_table_s* %30, %struct._IO_FILE* %31)
  %32 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 16, %32
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %for.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.31, %if.then.17
  %34 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom20
  %35 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp ne i32 %35, -1
  br i1 %cmp22, label %for.body.24, label %for.end.33

for.body.24:                                      ; preds = %for.cond.19
  %36 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom25
  %37 = load i32, i32* %arrayidx26, align 4
  store i32 %37, i32* %face, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %39 = load i32, i32* %face, align 4
  %call27 = call i8* @face_to_string(i32 %39)
  %40 = load i32, i32* %face, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %call27, i32 %40)
  %41 = load i32, i32* %face, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %faces_wx = getelementptr inbounds %struct.encoding, %struct.encoding* %42, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx, i32 0, i64 %idxprom29
  %43 = load i32*, i32** %arrayidx30, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @wx_self_print(i32* %43, %struct._IO_FILE* %44)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.24
  %45 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %45, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encoding_print_signature(%struct.encoding* %item, %struct._IO_FILE* %stream) #0 {
entry:
  %item.addr = alloca %struct.encoding*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %title_len = alloca i32, align 4
  store %struct.encoding* %item, %struct.encoding** %item.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %1) #7
  %add = add i64 3, %call
  %2 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %call1 = call i64 @strlen(i8* %3) #7
  %add2 = add i64 %add, %call1
  %conv = trunc i64 %add2 to i32
  store i32 %conv, i32* %title_len, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %name3 = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 1
  %6 = load i8*, i8** %name3, align 8
  %7 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %key4 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 0
  %8 = load i8*, i8** %key4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %6, i8* %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %title_len, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call7 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %13)
  %14 = load %struct.encoding*, %struct.encoding** %item.addr, align 8
  %documentation = getelementptr inbounds %struct.encoding, %struct.encoding* %14, i32 0, i32 2
  %15 = load i8*, i8** %documentation, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @documentation_print_plain(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %16)
  ret void
}

declare void @da_self_print(%struct.darray*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @font_table_self_print(%struct.hash_table_s* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %entries = alloca %struct.font_entry**, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.font_entry**, %struct.font_entry**)* @font_entry_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.font_entry**
  store %struct.font_entry** %1, %struct.font_entry*** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.font_entry**, %struct.font_entry*** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.font_entry*, %struct.font_entry** %3, i64 %idxprom
  %4 = load %struct.font_entry*, %struct.font_entry** %arrayidx, align 8
  %tobool = icmp ne %struct.font_entry* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.font_entry**, %struct.font_entry*** %entries, align 8
  %arrayidx2 = getelementptr inbounds %struct.font_entry*, %struct.font_entry** %6, i64 %idxprom1
  %7 = load %struct.font_entry*, %struct.font_entry** %arrayidx2, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @font_entry_self_print(%struct.font_entry* %7, %struct._IO_FILE* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %10)
  %11 = load %struct.font_entry**, %struct.font_entry*** %entries, align 8
  %12 = bitcast %struct.font_entry** %11 to i8*
  call void @free(i8* %12) #6
  ret void
}

declare i8* @face_to_string(i32) #1

; Function Attrs: nounwind uwtable
define internal void @wx_self_print(i32* %wx, %struct._IO_FILE* %stream) #0 {
entry:
  %wx.addr = alloca i32*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %j = alloca i32, align 4
  store i32* %wx, i32** %wx.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32*, i32** %wx.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %4, 0
  %idxprom = sext i32 %add to i64
  %5 = load i32*, i32** %wx.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %7, 1
  %idxprom2 = sext i32 %add1 to i64
  %8 = load i32*, i32** %wx.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %10, 2
  %idxprom5 = sext i32 %add4 to i64
  %11 = load i32*, i32** %wx.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %13 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %13, 3
  %idxprom8 = sext i32 %add7 to i64
  %14 = load i32*, i32** %wx.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %16 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %16, 4
  %idxprom11 = sext i32 %add10 to i64
  %17 = load i32*, i32** %wx.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom11
  %18 = load i32, i32* %arrayidx12, align 4
  %19 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %19, 5
  %idxprom14 = sext i32 %add13 to i64
  %20 = load i32*, i32** %wx.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %22 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %22, 6
  %idxprom17 = sext i32 %add16 to i64
  %23 = load i32*, i32** %wx.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom17
  %24 = load i32, i32* %arrayidx18, align 4
  %25 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %25, 7
  %idxprom20 = sext i32 %add19 to i64
  %26 = load i32*, i32** %wx.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 %idxprom20
  %27 = load i32, i32* %arrayidx21, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i32 0, i32 0), i32 %3, i32 %6, i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %28, 8
  store i32 %add22, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @encoding_get_name(%struct.encoding* %enc) #0 {
entry:
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @encoding_get_key(%struct.encoding* %enc) #0 {
entry:
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @encoding_char_exists(%struct.encoding* %enc, i32 %face, i8 zeroext %c) #0 {
entry:
  %enc.addr = alloca %struct.encoding*, align 8
  %face.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  store i32 %face, i32* %face.addr, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %idxprom = zext i8 %0 to i64
  %1 = load i32, i32* %face.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %faces_wx = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 8
  %arrayidx = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx, i32 0, i64 %idxprom1
  %3 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx2, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define %struct.hash_table_s* @encodings_table_new() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 32, i64 (i8*)* bitcast (i64 (%struct.encoding*)* @encoding_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.encoding*)* @encoding_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.encoding*, %struct.encoding*)* @encoding_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

declare i8* @xmalloc(i64) #1

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @encoding_hash_1(%struct.encoding* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.encoding*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.encoding* %entry1, %struct.encoding** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %0 = load %struct.encoding*, %struct.encoding** %entry.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
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
define internal i64 @encoding_hash_2(%struct.encoding* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.encoding*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.encoding* %entry1, %struct.encoding** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %0 = load %struct.encoding*, %struct.encoding** %entry.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
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
define internal i32 @encoding_hash_cmp(%struct.encoding* %x, %struct.encoding* %y) #0 {
entry:
  %x.addr = alloca %struct.encoding*, align 8
  %y.addr = alloca %struct.encoding*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.encoding* %x, %struct.encoding** %x.addr, align 8
  store %struct.encoding* %y, %struct.encoding** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.encoding*, %struct.encoding** %x.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.encoding*, %struct.encoding** %y.addr, align 8
  %key2 = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 0
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
define void @encodings_table_free(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.encoding*)* @encoding_free to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #6
  ret void
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @encoding_free(%struct.encoding* %encoding) #0 {
entry:
  %encoding.addr = alloca %struct.encoding*, align 8
  %i = alloca i32, align 4
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key1 = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 0
  %3 = load i8*, i8** %key1, align 8
  call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body.2
  %6 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name5 = getelementptr inbounds %struct.encoding, %struct.encoding* %6, i32 0, i32 1
  %7 = load i8*, i8** %name5, align 8
  call void @free(i8* %7) #6
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body.2
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %8 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %default_font = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 3
  %9 = load i8*, i8** %default_font, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.body.8
  %10 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %default_font11 = getelementptr inbounds %struct.encoding, %struct.encoding* %10, i32 0, i32 3
  %11 = load i8*, i8** %default_font11, align 8
  call void @free(i8* %11) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.body.8
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %12 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %documentation = getelementptr inbounds %struct.encoding, %struct.encoding* %12, i32 0, i32 2
  %13 = load i8*, i8** %documentation, align 8
  %tobool15 = icmp ne i8* %13, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.body.14
  %14 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %documentation17 = getelementptr inbounds %struct.encoding, %struct.encoding* %14, i32 0, i32 2
  %15 = load i8*, i8** %documentation17, align 8
  call void @free(i8* %15) #6
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.body.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.19
  %16 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %16, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %vector = getelementptr inbounds %struct.encoding, %struct.encoding* %18, i32 0, i32 5
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %vector, i32 0, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %19) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %substitutes = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 4
  %22 = load %struct.pair_htable*, %struct.pair_htable** %substitutes, align 8
  call void @pair_table_free(%struct.pair_htable* %22)
  %23 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used = getelementptr inbounds %struct.encoding, %struct.encoding* %23, i32 0, i32 6
  %24 = load %struct.darray*, %struct.darray** %font_names_used, align 8
  call void @da_free(%struct.darray* %24, void (i8*)* @free)
  %25 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %fonts = getelementptr inbounds %struct.encoding, %struct.encoding* %25, i32 0, i32 7
  %26 = load %struct.hash_table_s*, %struct.hash_table_s** %fonts, align 8
  call void @font_table_free(%struct.hash_table_s* %26)
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom21
  %28 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp ne i32 %28, -1
  br i1 %cmp23, label %for.body.24, label %for.end.31

for.body.24:                                      ; preds = %for.cond.20
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom25
  %30 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %faces_wx = getelementptr inbounds %struct.encoding, %struct.encoding* %31, i32 0, i32 8
  %arrayidx28 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx, i32 0, i64 %idxprom27
  %32 = load i32*, i32** %arrayidx28, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33) #6
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.24
  %34 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  %35 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %36 = bitcast %struct.encoding* %35 to i8*
  call void @free(i8* %36) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @encoding_add_font_name_used(%struct.encoding* %encoding, i8* %name) #0 {
entry:
  %encoding.addr = alloca %struct.encoding*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 6
  %1 = load %struct.darray*, %struct.darray** %font_names_used, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i8* @xstrdup(i8* %2)
  call void @da_append(%struct.darray* %1, i8* %call)
  ret void
}

declare void @da_append(%struct.darray*, i8*) #1

; Function Attrs: nounwind uwtable
define void @encoding_build_faces_wx(%struct.a2ps_job* %job, %struct.encoding* %encoding) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %encoding.addr = alloca %struct.encoding*, align 8
  %i = alloca i32, align 4
  %face = alloca i32, align 4
  %true_font_name = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %face, align 4
  %4 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %5 = load i32, i32* %face, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font, i32 0, i64 %idxprom3
  %7 = load i8*, i8** %arrayidx4, align 8
  call void @encoding_add_font_name_used(%struct.encoding* %4, i8* %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %9 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %10 = load i32, i32* %face, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %face_eo_font6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [10 x i8*], [10 x i8*]* %face_eo_font6, i32 0, i64 %idxprom5
  %12 = load i8*, i8** %arrayidx7, align 8
  %call = call i8* @encoding_resolve_font_substitute(%struct.a2ps_job* %8, %struct.encoding* %9, i8* %12)
  store i8* %call, i8** %true_font_name, align 8
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %14 = load i8*, i8** %true_font_name, align 8
  %15 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %vector = getelementptr inbounds %struct.encoding, %struct.encoding* %15, i32 0, i32 5
  %arraydecay = getelementptr inbounds [256 x i8*], [256 x i8*]* %vector, i32 0, i32 0
  %16 = load i32, i32* %face, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %faces_wx = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx, i32 0, i64 %idxprom8
  %18 = load i32*, i32** %arrayidx9, align 8
  call void @font_info_get_wx_for_vector(%struct.a2ps_job* %13, i8* %14, i8** %arraydecay, i32* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @font_info_get_wx_for_vector(%struct.a2ps_job*, i8*, i8**, i32*) #1

; Function Attrs: nounwind uwtable
define %struct.encoding* @get_encoding_by_alias(%struct.a2ps_job* %job, i8* %alias) #0 {
entry:
  %retval = alloca %struct.encoding*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %alias.addr = alloca i8*, align 8
  %key = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %alias, i8** %alias.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 20
  %1 = load %struct.pair_htable*, %struct.pair_htable** %encodings_map, align 8
  %2 = load i8*, i8** %alias.addr, align 8
  %call = call i8* @strlower(i8* %2)
  %call1 = call i8* @encodings_map_resolve_alias(%struct.pair_htable* %1, i8* %call)
  store i8* %call1, i8** %key, align 8
  %3 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %5 = load i8*, i8** %key, align 8
  %call2 = call %struct.encoding* @encoding_get(%struct.a2ps_job* %4, i8* %5)
  store %struct.encoding* %call2, %struct.encoding** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.encoding* null, %struct.encoding** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.encoding*, %struct.encoding** %retval
  ret %struct.encoding* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @encodings_map_resolve_alias(%struct.pair_htable* %encodings_map, i8* %alias) #0 {
entry:
  %encodings_map.addr = alloca %struct.pair_htable*, align 8
  %alias.addr = alloca i8*, align 8
  store %struct.pair_htable* %encodings_map, %struct.pair_htable** %encodings_map.addr, align 8
  store i8* %alias, i8** %alias.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %encodings_map.addr, align 8
  %1 = load i8*, i8** %alias.addr, align 8
  %call = call i8* @pair_get(%struct.pair_htable* %0, i8* %1)
  ret i8* %call
}

declare i8* @strlower(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.encoding* @encoding_get(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %token = alloca %struct.encoding, align 8
  %res = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.encoding, %struct.encoding* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 47
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %encodings, align 8
  %3 = bitcast %struct.encoding* %token to i8*
  %call = call i8* @hash_find_item(%struct.hash_table_s* %2, i8* %3)
  %4 = bitcast i8* %call to %struct.encoding*
  store %struct.encoding* %4, %struct.encoding** %res, align 8
  %5 = load %struct.encoding*, %struct.encoding** %res, align 8
  %tobool = icmp ne %struct.encoding* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %7 = load i8*, i8** %key.addr, align 8
  call void @encoding_add(%struct.a2ps_job* %6, i8* %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 47
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %encodings2, align 8
  %10 = bitcast %struct.encoding* %token to i8*
  %call3 = call i8* @hash_find_item(%struct.hash_table_s* %9, i8* %10)
  %11 = bitcast i8* %call3 to %struct.encoding*
  store %struct.encoding* %11, %struct.encoding** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.encoding*, %struct.encoding** %res, align 8
  ret %struct.encoding* %12
}

; Function Attrs: nounwind uwtable
define void @dump_encodings_setup(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %i = alloca i32, align 4
  %encodings = alloca %struct.encoding**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 47
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %encodings1, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %1, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.encoding**, %struct.encoding**)* @encoding_hash_qcmp to i32 (i8*, i8*)*))
  %2 = bitcast i8** %call to %struct.encoding**
  store %struct.encoding** %2, %struct.encoding*** %encodings, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.encoding**, %struct.encoding*** %encodings, align 8
  %arrayidx = getelementptr inbounds %struct.encoding*, %struct.encoding** %4, i64 %idxprom
  %5 = load %struct.encoding*, %struct.encoding** %arrayidx, align 8
  %tobool = icmp ne %struct.encoding* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.encoding**, %struct.encoding*** %encodings, align 8
  %arrayidx3 = getelementptr inbounds %struct.encoding*, %struct.encoding** %9, i64 %idxprom2
  %10 = load %struct.encoding*, %struct.encoding** %arrayidx3, align 8
  call void @dump_encoding_setup(%struct._IO_FILE* %6, %struct.a2ps_job* %7, %struct.encoding* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.encoding**, %struct.encoding*** %encodings, align 8
  %13 = bitcast %struct.encoding** %12 to i8*
  call void @free(i8* %13) #6
  ret void
}

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @encoding_hash_qcmp(%struct.encoding** %x, %struct.encoding** %y) #0 {
entry:
  %x.addr = alloca %struct.encoding**, align 8
  %y.addr = alloca %struct.encoding**, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.encoding** %x, %struct.encoding*** %x.addr, align 8
  store %struct.encoding** %y, %struct.encoding*** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.encoding**, %struct.encoding*** %x.addr, align 8
  %1 = load %struct.encoding*, %struct.encoding** %0, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load %struct.encoding**, %struct.encoding*** %y.addr, align 8
  %4 = load %struct.encoding*, %struct.encoding** %3, align 8
  %key2 = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 0
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

; Function Attrs: nounwind uwtable
define internal void @dump_encoding_setup(%struct._IO_FILE* %stream, %struct.a2ps_job* %job, %struct.encoding* %encoding) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %encoding.addr = alloca %struct.encoding*, align 8
  %i = alloca i64, align 8
  %nb = alloca i64, align 8
  %real_font_name = alloca i8*, align 8
  %font_names = alloca i8**, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 6
  %1 = load %struct.darray*, %struct.darray** %font_names_used, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 6
  %2 = load i8**, i8*** %content, align 8
  store i8** %2, i8*** %font_names, align 8
  %3 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used1 = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 6
  %4 = load %struct.darray*, %struct.darray** %font_names_used1, align 8
  call void @da_qsort(%struct.darray* %4)
  %5 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used2 = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 6
  %6 = load %struct.darray*, %struct.darray** %font_names_used2, align 8
  call void @da_unique(%struct.darray* %6, void (i8*)* @free)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used3 = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 6
  %9 = load %struct.darray*, %struct.darray** %font_names_used3, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 5
  %10 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %7, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %12 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load i8**, i8*** %font_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %13
  %15 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @encoding_resolve_font_substitute(%struct.a2ps_job* %11, %struct.encoding* %12, i8* %15)
  store i8* %call, i8** %real_font_name, align 8
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %17 = load i8*, i8** %real_font_name, align 8
  %call4 = call i32 @font_is_to_reencode(%struct.a2ps_job* %16, i8* %17)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %18 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used5 = getelementptr inbounds %struct.encoding, %struct.encoding* %18, i32 0, i32 6
  %19 = load %struct.darray*, %struct.darray** %font_names_used5, align 8
  %20 = load i64, i64* %i, align 8
  call void @da_remove_at(%struct.darray* %19, i64 %20, void (i8*)* @free)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %font_names_used6 = getelementptr inbounds %struct.encoding, %struct.encoding* %22, i32 0, i32 6
  %23 = load %struct.darray*, %struct.darray** %font_names_used6, align 8
  %len7 = getelementptr inbounds %struct.darray, %struct.darray* %23, i32 0, i32 5
  %24 = load i64, i64* %len7, align 8
  store i64 %24, i64* %nb, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %26 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %29 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %29, i32 0, i32 0
  %30 = load i8*, i8** %key, align 8
  %31 = load i64, i64* %nb, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* %30, i64 %31)
  store i64 0, i64* %i, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.18, %for.end
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %nb, align 8
  %cmp11 = icmp ult i64 %32, %33
  br i1 %cmp11, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.10
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load i8**, i8*** %font_names, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %36, i64 %35
  %37 = load i8*, i8** %arrayidx13, align 8
  %38 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name14 = getelementptr inbounds %struct.encoding, %struct.encoding* %38, i32 0, i32 1
  %39 = load i8*, i8** %name14, align 8
  %40 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %41 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %42 = load i64, i64* %i, align 8
  %43 = load i8**, i8*** %font_names, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %43, i64 %42
  %44 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i8* @encoding_resolve_font_substitute(%struct.a2ps_job* %40, %struct.encoding* %41, i8* %44)
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i8* %37, i8* %39, i8* %call16)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %45 = load i64, i64* %i, align 8
  %inc19 = add i64 %45, 1
  store i64 %inc19, i64* %i, align 8
  br label %for.cond.10

for.end.20:                                       ; preds = %for.cond.10
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %46)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @char_WX(%struct.a2ps_job* %job, i8 zeroext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %c.addr = alloca i8, align 1
  %wx = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  %buf41 = alloca [4 x i8], align 1
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i32
  %idxprom = sext i32 %conv to i64
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 64
  %2 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %face = getelementptr inbounds %struct.ps_status, %struct.ps_status* %2, i32 0, i32 20
  %3 = load i32, i32* %face, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 43
  %5 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %faces_wx = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx, i32 0, i64 %idxprom1
  %6 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx2, align 4
  store i32 %7, i32* %wx, align 4
  %8 = load i32, i32* %wx, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %wx, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %unprintable_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 30
  %11 = load i32, i32* %unprintable_format, align 4
  switch i32 %11, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.40
    i32 1, label %sw.bb.85
    i32 2, label %sw.bb.93
    i32 0, label %sw.bb.101
    i32 5, label %sw.bb.180
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i32 0
  %12 = load i8, i8* %c.addr, align 1
  %conv3 = zext i8 %12 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %conv3) #6
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 64
  %14 = load %struct.ps_status*, %struct.ps_status** %status4, align 8
  %face5 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %14, i32 0, i32 20
  %15 = load i32, i32* %face5, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding7 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 43
  %17 = load %struct.encoding*, %struct.encoding** %encoding7, align 8
  %faces_wx8 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx8, i32 0, i64 %idxprom6
  %18 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 92
  %19 = load i32, i32* %arrayidx10, align 4
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status11 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 64
  %21 = load %struct.ps_status*, %struct.ps_status** %status11, align 8
  %face12 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %21, i32 0, i32 20
  %22 = load i32, i32* %face12, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 43
  %24 = load %struct.encoding*, %struct.encoding** %encoding14, align 8
  %faces_wx15 = getelementptr inbounds %struct.encoding, %struct.encoding* %24, i32 0, i32 8
  %arrayidx16 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx15, i32 0, i64 %idxprom13
  %25 = load i32*, i32** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 120
  %26 = load i32, i32* %arrayidx17, align 4
  %add = add i32 %19, %26
  %arrayidx18 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i64 0
  %27 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %27 to i32
  %idxprom20 = sext i32 %conv19 to i64
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status21 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 64
  %29 = load %struct.ps_status*, %struct.ps_status** %status21, align 8
  %face22 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %29, i32 0, i32 20
  %30 = load i32, i32* %face22, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding24 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %31, i32 0, i32 43
  %32 = load %struct.encoding*, %struct.encoding** %encoding24, align 8
  %faces_wx25 = getelementptr inbounds %struct.encoding, %struct.encoding* %32, i32 0, i32 8
  %arrayidx26 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx25, i32 0, i64 %idxprom23
  %33 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 %idxprom20
  %34 = load i32, i32* %arrayidx27, align 4
  %add28 = add i32 %add, %34
  %arrayidx29 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i64 1
  %35 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %35 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status32 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 64
  %37 = load %struct.ps_status*, %struct.ps_status** %status32, align 8
  %face33 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %37, i32 0, i32 20
  %38 = load i32, i32* %face33, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding35 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %39, i32 0, i32 43
  %40 = load %struct.encoding*, %struct.encoding** %encoding35, align 8
  %faces_wx36 = getelementptr inbounds %struct.encoding, %struct.encoding* %40, i32 0, i32 8
  %arrayidx37 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx36, i32 0, i64 %idxprom34
  %41 = load i32*, i32** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %41, i64 %idxprom31
  %42 = load i32, i32* %arrayidx38, align 4
  %add39 = add i32 %add28, %42
  store i32 %add39, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %if.end
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %buf41, i32 0, i32 0
  %43 = load i8, i8* %c.addr, align 1
  %conv43 = zext i8 %43 to i32
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %conv43) #6
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status45 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 64
  %45 = load %struct.ps_status*, %struct.ps_status** %status45, align 8
  %face46 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %45, i32 0, i32 20
  %46 = load i32, i32* %face46, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding48 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %47, i32 0, i32 43
  %48 = load %struct.encoding*, %struct.encoding** %encoding48, align 8
  %faces_wx49 = getelementptr inbounds %struct.encoding, %struct.encoding* %48, i32 0, i32 8
  %arrayidx50 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx49, i32 0, i64 %idxprom47
  %49 = load i32*, i32** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %49, i64 92
  %50 = load i32, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %buf41, i32 0, i64 0
  %51 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %51 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %52 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status55 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %52, i32 0, i32 64
  %53 = load %struct.ps_status*, %struct.ps_status** %status55, align 8
  %face56 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %53, i32 0, i32 20
  %54 = load i32, i32* %face56, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding58 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 43
  %56 = load %struct.encoding*, %struct.encoding** %encoding58, align 8
  %faces_wx59 = getelementptr inbounds %struct.encoding, %struct.encoding* %56, i32 0, i32 8
  %arrayidx60 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx59, i32 0, i64 %idxprom57
  %57 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %57, i64 %idxprom54
  %58 = load i32, i32* %arrayidx61, align 4
  %add62 = add i32 %50, %58
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %buf41, i32 0, i64 1
  %59 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %59 to i32
  %idxprom65 = sext i32 %conv64 to i64
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status66 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 64
  %61 = load %struct.ps_status*, %struct.ps_status** %status66, align 8
  %face67 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %61, i32 0, i32 20
  %62 = load i32, i32* %face67, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding69 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 43
  %64 = load %struct.encoding*, %struct.encoding** %encoding69, align 8
  %faces_wx70 = getelementptr inbounds %struct.encoding, %struct.encoding* %64, i32 0, i32 8
  %arrayidx71 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx70, i32 0, i64 %idxprom68
  %65 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %65, i64 %idxprom65
  %66 = load i32, i32* %arrayidx72, align 4
  %add73 = add i32 %add62, %66
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %buf41, i32 0, i64 2
  %67 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %67 to i32
  %idxprom76 = sext i32 %conv75 to i64
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status77 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %68, i32 0, i32 64
  %69 = load %struct.ps_status*, %struct.ps_status** %status77, align 8
  %face78 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %69, i32 0, i32 20
  %70 = load i32, i32* %face78, align 4
  %idxprom79 = sext i32 %70 to i64
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding80 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 43
  %72 = load %struct.encoding*, %struct.encoding** %encoding80, align 8
  %faces_wx81 = getelementptr inbounds %struct.encoding, %struct.encoding* %72, i32 0, i32 8
  %arrayidx82 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx81, i32 0, i64 %idxprom79
  %73 = load i32*, i32** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %73, i64 %idxprom76
  %74 = load i32, i32* %arrayidx83, align 4
  %add84 = add i32 %add73, %74
  store i32 %add84, i32* %retval
  br label %return

sw.bb.85:                                         ; preds = %if.end
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status86 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 64
  %76 = load %struct.ps_status*, %struct.ps_status** %status86, align 8
  %face87 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %76, i32 0, i32 20
  %77 = load i32, i32* %face87, align 4
  %idxprom88 = sext i32 %77 to i64
  %78 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding89 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %78, i32 0, i32 43
  %79 = load %struct.encoding*, %struct.encoding** %encoding89, align 8
  %faces_wx90 = getelementptr inbounds %struct.encoding, %struct.encoding* %79, i32 0, i32 8
  %arrayidx91 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx90, i32 0, i64 %idxprom88
  %80 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %80, i64 32
  %81 = load i32, i32* %arrayidx92, align 4
  store i32 %81, i32* %retval
  br label %return

sw.bb.93:                                         ; preds = %if.end
  %82 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status94 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %82, i32 0, i32 64
  %83 = load %struct.ps_status*, %struct.ps_status** %status94, align 8
  %face95 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %83, i32 0, i32 20
  %84 = load i32, i32* %face95, align 4
  %idxprom96 = sext i32 %84 to i64
  %85 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding97 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %85, i32 0, i32 43
  %86 = load %struct.encoding*, %struct.encoding** %encoding97, align 8
  %faces_wx98 = getelementptr inbounds %struct.encoding, %struct.encoding* %86, i32 0, i32 8
  %arrayidx99 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx98, i32 0, i64 %idxprom96
  %87 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %87, i64 63
  %88 = load i32, i32* %arrayidx100, align 4
  store i32 %88, i32* %retval
  br label %return

sw.bb.101:                                        ; preds = %if.end
  %89 = load i8, i8* %c.addr, align 1
  %conv102 = zext i8 %89 to i32
  %cmp = icmp slt i32 127, %conv102
  br i1 %cmp, label %if.then.104, label %if.end.123

if.then.104:                                      ; preds = %sw.bb.101
  %90 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status105 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %90, i32 0, i32 64
  %91 = load %struct.ps_status*, %struct.ps_status** %status105, align 8
  %face106 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %91, i32 0, i32 20
  %92 = load i32, i32* %face106, align 4
  %idxprom107 = sext i32 %92 to i64
  %93 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding108 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %93, i32 0, i32 43
  %94 = load %struct.encoding*, %struct.encoding** %encoding108, align 8
  %faces_wx109 = getelementptr inbounds %struct.encoding, %struct.encoding* %94, i32 0, i32 8
  %arrayidx110 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx109, i32 0, i64 %idxprom107
  %95 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %95, i64 77
  %96 = load i32, i32* %arrayidx111, align 4
  %97 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status112 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %97, i32 0, i32 64
  %98 = load %struct.ps_status*, %struct.ps_status** %status112, align 8
  %face113 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %98, i32 0, i32 20
  %99 = load i32, i32* %face113, align 4
  %idxprom114 = sext i32 %99 to i64
  %100 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding115 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %100, i32 0, i32 43
  %101 = load %struct.encoding*, %struct.encoding** %encoding115, align 8
  %faces_wx116 = getelementptr inbounds %struct.encoding, %struct.encoding* %101, i32 0, i32 8
  %arrayidx117 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx116, i32 0, i64 %idxprom114
  %102 = load i32*, i32** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %102, i64 45
  %103 = load i32, i32* %arrayidx118, align 4
  %add119 = add i32 %96, %103
  %104 = load i32, i32* %wx, align 4
  %add120 = add i32 %104, %add119
  store i32 %add120, i32* %wx, align 4
  %105 = load i8, i8* %c.addr, align 1
  %conv121 = zext i8 %105 to i32
  %and = and i32 %conv121, 127
  %conv122 = trunc i32 %and to i8
  store i8 %conv122, i8* %c.addr, align 1
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.104, %sw.bb.101
  %106 = load i8, i8* %c.addr, align 1
  %conv124 = zext i8 %106 to i32
  %cmp125 = icmp eq i32 %conv124, 127
  br i1 %cmp125, label %if.then.127, label %if.else

if.then.127:                                      ; preds = %if.end.123
  %107 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status128 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %107, i32 0, i32 64
  %108 = load %struct.ps_status*, %struct.ps_status** %status128, align 8
  %face129 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %108, i32 0, i32 20
  %109 = load i32, i32* %face129, align 4
  %idxprom130 = sext i32 %109 to i64
  %110 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding131 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %110, i32 0, i32 43
  %111 = load %struct.encoding*, %struct.encoding** %encoding131, align 8
  %faces_wx132 = getelementptr inbounds %struct.encoding, %struct.encoding* %111, i32 0, i32 8
  %arrayidx133 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx132, i32 0, i64 %idxprom130
  %112 = load i32*, i32** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %112, i64 94
  %113 = load i32, i32* %arrayidx134, align 4
  %114 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status135 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %114, i32 0, i32 64
  %115 = load %struct.ps_status*, %struct.ps_status** %status135, align 8
  %face136 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %115, i32 0, i32 20
  %116 = load i32, i32* %face136, align 4
  %idxprom137 = sext i32 %116 to i64
  %117 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding138 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %117, i32 0, i32 43
  %118 = load %struct.encoding*, %struct.encoding** %encoding138, align 8
  %faces_wx139 = getelementptr inbounds %struct.encoding, %struct.encoding* %118, i32 0, i32 8
  %arrayidx140 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx139, i32 0, i64 %idxprom137
  %119 = load i32*, i32** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %119, i64 63
  %120 = load i32, i32* %arrayidx141, align 4
  %add142 = add i32 %113, %120
  %121 = load i32, i32* %wx, align 4
  %add143 = add i32 %121, %add142
  store i32 %add143, i32* %wx, align 4
  br label %if.end.179

if.else:                                          ; preds = %if.end.123
  %122 = load i8, i8* %c.addr, align 1
  %conv144 = zext i8 %122 to i32
  %cmp145 = icmp slt i32 %conv144, 32
  br i1 %cmp145, label %if.then.147, label %if.else.167

if.then.147:                                      ; preds = %if.else
  %123 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status148 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %123, i32 0, i32 64
  %124 = load %struct.ps_status*, %struct.ps_status** %status148, align 8
  %face149 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %124, i32 0, i32 20
  %125 = load i32, i32* %face149, align 4
  %idxprom150 = sext i32 %125 to i64
  %126 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding151 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %126, i32 0, i32 43
  %127 = load %struct.encoding*, %struct.encoding** %encoding151, align 8
  %faces_wx152 = getelementptr inbounds %struct.encoding, %struct.encoding* %127, i32 0, i32 8
  %arrayidx153 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx152, i32 0, i64 %idxprom150
  %128 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %128, i64 94
  %129 = load i32, i32* %arrayidx154, align 4
  %130 = load i8, i8* %c.addr, align 1
  %conv155 = zext i8 %130 to i32
  %add156 = add nsw i32 %conv155, 64
  %idxprom157 = sext i32 %add156 to i64
  %131 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status158 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %131, i32 0, i32 64
  %132 = load %struct.ps_status*, %struct.ps_status** %status158, align 8
  %face159 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %132, i32 0, i32 20
  %133 = load i32, i32* %face159, align 4
  %idxprom160 = sext i32 %133 to i64
  %134 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding161 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %134, i32 0, i32 43
  %135 = load %struct.encoding*, %struct.encoding** %encoding161, align 8
  %faces_wx162 = getelementptr inbounds %struct.encoding, %struct.encoding* %135, i32 0, i32 8
  %arrayidx163 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx162, i32 0, i64 %idxprom160
  %136 = load i32*, i32** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %136, i64 %idxprom157
  %137 = load i32, i32* %arrayidx164, align 4
  %add165 = add i32 %129, %137
  %138 = load i32, i32* %wx, align 4
  %add166 = add i32 %138, %add165
  store i32 %add166, i32* %wx, align 4
  br label %if.end.178

if.else.167:                                      ; preds = %if.else
  %139 = load i8, i8* %c.addr, align 1
  %conv168 = zext i8 %139 to i32
  %idxprom169 = sext i32 %conv168 to i64
  %140 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status170 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %140, i32 0, i32 64
  %141 = load %struct.ps_status*, %struct.ps_status** %status170, align 8
  %face171 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %141, i32 0, i32 20
  %142 = load i32, i32* %face171, align 4
  %idxprom172 = sext i32 %142 to i64
  %143 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding173 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %143, i32 0, i32 43
  %144 = load %struct.encoding*, %struct.encoding** %encoding173, align 8
  %faces_wx174 = getelementptr inbounds %struct.encoding, %struct.encoding* %144, i32 0, i32 8
  %arrayidx175 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx174, i32 0, i64 %idxprom172
  %145 = load i32*, i32** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %145, i64 %idxprom169
  %146 = load i32, i32* %arrayidx176, align 4
  %147 = load i32, i32* %wx, align 4
  %add177 = add i32 %147, %146
  store i32 %add177, i32* %wx, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.167, %if.then.147
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.127
  %148 = load i32, i32* %wx, align 4
  store i32 %148, i32* %retval
  br label %return

sw.bb.180:                                        ; preds = %if.end
  %149 = load i8, i8* %c.addr, align 1
  %conv181 = zext i8 %149 to i32
  %cmp182 = icmp slt i32 127, %conv181
  br i1 %cmp182, label %if.then.184, label %if.end.204

if.then.184:                                      ; preds = %sw.bb.180
  %150 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status185 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %150, i32 0, i32 64
  %151 = load %struct.ps_status*, %struct.ps_status** %status185, align 8
  %face186 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %151, i32 0, i32 20
  %152 = load i32, i32* %face186, align 4
  %idxprom187 = sext i32 %152 to i64
  %153 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding188 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %153, i32 0, i32 43
  %154 = load %struct.encoding*, %struct.encoding** %encoding188, align 8
  %faces_wx189 = getelementptr inbounds %struct.encoding, %struct.encoding* %154, i32 0, i32 8
  %arrayidx190 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx189, i32 0, i64 %idxprom187
  %155 = load i32*, i32** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %155, i64 77
  %156 = load i32, i32* %arrayidx191, align 4
  %157 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status192 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %157, i32 0, i32 64
  %158 = load %struct.ps_status*, %struct.ps_status** %status192, align 8
  %face193 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %158, i32 0, i32 20
  %159 = load i32, i32* %face193, align 4
  %idxprom194 = sext i32 %159 to i64
  %160 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding195 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %160, i32 0, i32 43
  %161 = load %struct.encoding*, %struct.encoding** %encoding195, align 8
  %faces_wx196 = getelementptr inbounds %struct.encoding, %struct.encoding* %161, i32 0, i32 8
  %arrayidx197 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx196, i32 0, i64 %idxprom194
  %162 = load i32*, i32** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %162, i64 45
  %163 = load i32, i32* %arrayidx198, align 4
  %add199 = add i32 %156, %163
  %164 = load i32, i32* %wx, align 4
  %add200 = add i32 %164, %add199
  store i32 %add200, i32* %wx, align 4
  %165 = load i8, i8* %c.addr, align 1
  %conv201 = zext i8 %165 to i32
  %and202 = and i32 %conv201, 127
  %conv203 = trunc i32 %and202 to i8
  store i8 %conv203, i8* %c.addr, align 1
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.184, %sw.bb.180
  %166 = load i8, i8* %c.addr, align 1
  %conv205 = zext i8 %166 to i32
  %cmp206 = icmp eq i32 %conv205, 127
  br i1 %cmp206, label %if.then.208, label %if.else.233

if.then.208:                                      ; preds = %if.end.204
  %167 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status209 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %167, i32 0, i32 64
  %168 = load %struct.ps_status*, %struct.ps_status** %status209, align 8
  %face210 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %168, i32 0, i32 20
  %169 = load i32, i32* %face210, align 4
  %idxprom211 = sext i32 %169 to i64
  %170 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding212 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %170, i32 0, i32 43
  %171 = load %struct.encoding*, %struct.encoding** %encoding212, align 8
  %faces_wx213 = getelementptr inbounds %struct.encoding, %struct.encoding* %171, i32 0, i32 8
  %arrayidx214 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx213, i32 0, i64 %idxprom211
  %172 = load i32*, i32** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %172, i64 67
  %173 = load i32, i32* %arrayidx215, align 4
  %174 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status216 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %174, i32 0, i32 64
  %175 = load %struct.ps_status*, %struct.ps_status** %status216, align 8
  %face217 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %175, i32 0, i32 20
  %176 = load i32, i32* %face217, align 4
  %idxprom218 = sext i32 %176 to i64
  %177 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding219 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %177, i32 0, i32 43
  %178 = load %struct.encoding*, %struct.encoding** %encoding219, align 8
  %faces_wx220 = getelementptr inbounds %struct.encoding, %struct.encoding* %178, i32 0, i32 8
  %arrayidx221 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx220, i32 0, i64 %idxprom218
  %179 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %179, i64 45
  %180 = load i32, i32* %arrayidx222, align 4
  %add223 = add i32 %173, %180
  %181 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status224 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %181, i32 0, i32 64
  %182 = load %struct.ps_status*, %struct.ps_status** %status224, align 8
  %face225 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %182, i32 0, i32 20
  %183 = load i32, i32* %face225, align 4
  %idxprom226 = sext i32 %183 to i64
  %184 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding227 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %184, i32 0, i32 43
  %185 = load %struct.encoding*, %struct.encoding** %encoding227, align 8
  %faces_wx228 = getelementptr inbounds %struct.encoding, %struct.encoding* %185, i32 0, i32 8
  %arrayidx229 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx228, i32 0, i64 %idxprom226
  %186 = load i32*, i32** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %186, i64 63
  %187 = load i32, i32* %arrayidx230, align 4
  %add231 = add i32 %add223, %187
  %188 = load i32, i32* %wx, align 4
  %add232 = add i32 %188, %add231
  store i32 %add232, i32* %wx, align 4
  br label %if.end.277

if.else.233:                                      ; preds = %if.end.204
  %189 = load i8, i8* %c.addr, align 1
  %conv234 = zext i8 %189 to i32
  %cmp235 = icmp slt i32 %conv234, 32
  br i1 %cmp235, label %if.then.237, label %if.else.265

if.then.237:                                      ; preds = %if.else.233
  %190 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status238 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %190, i32 0, i32 64
  %191 = load %struct.ps_status*, %struct.ps_status** %status238, align 8
  %face239 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %191, i32 0, i32 20
  %192 = load i32, i32* %face239, align 4
  %idxprom240 = sext i32 %192 to i64
  %193 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding241 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %193, i32 0, i32 43
  %194 = load %struct.encoding*, %struct.encoding** %encoding241, align 8
  %faces_wx242 = getelementptr inbounds %struct.encoding, %struct.encoding* %194, i32 0, i32 8
  %arrayidx243 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx242, i32 0, i64 %idxprom240
  %195 = load i32*, i32** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %195, i64 67
  %196 = load i32, i32* %arrayidx244, align 4
  %197 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status245 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %197, i32 0, i32 64
  %198 = load %struct.ps_status*, %struct.ps_status** %status245, align 8
  %face246 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %198, i32 0, i32 20
  %199 = load i32, i32* %face246, align 4
  %idxprom247 = sext i32 %199 to i64
  %200 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding248 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %200, i32 0, i32 43
  %201 = load %struct.encoding*, %struct.encoding** %encoding248, align 8
  %faces_wx249 = getelementptr inbounds %struct.encoding, %struct.encoding* %201, i32 0, i32 8
  %arrayidx250 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx249, i32 0, i64 %idxprom247
  %202 = load i32*, i32** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %202, i64 45
  %203 = load i32, i32* %arrayidx251, align 4
  %add252 = add i32 %196, %203
  %204 = load i8, i8* %c.addr, align 1
  %conv253 = zext i8 %204 to i32
  %add254 = add nsw i32 %conv253, 64
  %idxprom255 = sext i32 %add254 to i64
  %205 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status256 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %205, i32 0, i32 64
  %206 = load %struct.ps_status*, %struct.ps_status** %status256, align 8
  %face257 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %206, i32 0, i32 20
  %207 = load i32, i32* %face257, align 4
  %idxprom258 = sext i32 %207 to i64
  %208 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding259 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %208, i32 0, i32 43
  %209 = load %struct.encoding*, %struct.encoding** %encoding259, align 8
  %faces_wx260 = getelementptr inbounds %struct.encoding, %struct.encoding* %209, i32 0, i32 8
  %arrayidx261 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx260, i32 0, i64 %idxprom258
  %210 = load i32*, i32** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %210, i64 %idxprom255
  %211 = load i32, i32* %arrayidx262, align 4
  %add263 = add i32 %add252, %211
  %212 = load i32, i32* %wx, align 4
  %add264 = add i32 %212, %add263
  store i32 %add264, i32* %wx, align 4
  br label %if.end.276

if.else.265:                                      ; preds = %if.else.233
  %213 = load i8, i8* %c.addr, align 1
  %conv266 = zext i8 %213 to i32
  %idxprom267 = sext i32 %conv266 to i64
  %214 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status268 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %214, i32 0, i32 64
  %215 = load %struct.ps_status*, %struct.ps_status** %status268, align 8
  %face269 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %215, i32 0, i32 20
  %216 = load i32, i32* %face269, align 4
  %idxprom270 = sext i32 %216 to i64
  %217 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding271 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %217, i32 0, i32 43
  %218 = load %struct.encoding*, %struct.encoding** %encoding271, align 8
  %faces_wx272 = getelementptr inbounds %struct.encoding, %struct.encoding* %218, i32 0, i32 8
  %arrayidx273 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx272, i32 0, i64 %idxprom270
  %219 = load i32*, i32** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %219, i64 %idxprom267
  %220 = load i32, i32* %arrayidx274, align 4
  %221 = load i32, i32* %wx, align 4
  %add275 = add i32 %221, %220
  store i32 %add275, i32* %wx, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.265, %if.then.237
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.208
  %222 = load i32, i32* %wx, align 4
  store i32 %222, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  call void @abort() #8
  unreachable

return:                                           ; preds = %if.end.277, %if.end.179, %sw.bb.93, %sw.bb.85, %sw.bb.40, %sw.bb, %if.then
  %223 = load i32, i32* %retval
  ret i32 %223
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define i32 @string_WX(%struct.a2ps_job* %job, i8* %string) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %string.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %result, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i8, i8* %3, align 1
  %call = call i32 @char_WX(%struct.a2ps_job* %2, i8 zeroext %4)
  %5 = load i32, i32* %result, align 4
  %add = add i32 %5, %call
  store i32 %add, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %result, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @set_encoding(%struct.a2ps_job* %job, %struct.encoding* %enc) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 43
  store %struct.encoding* %0, %struct.encoding** %encoding, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_encodings_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %4 = load i8**, i8*** %path, align 8
  call void @pw_lister_on_suffix(%struct._IO_FILE* %2, i8** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @pw_lister_on_suffix(%struct._IO_FILE*, i8**, i8*) #1

; Function Attrs: nounwind uwtable
define void @list_encodings_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %entries = alloca %struct.darray*, align 8
  %encoding = alloca %struct.encoding*, align 8
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %2 = load %struct.darray*, %struct.darray** %entries, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = bitcast %struct.a2ps_job* %3 to i8*
  call void @da_qsort_with_arg(%struct.darray* %2, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, i8*, %struct.a2ps_job*)* @da_encoding_name_cmp to i32 (i8*, i8*, i8*)*), i8* %4)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fputs(i8* %call1, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %6)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 6
  %13 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %11
  %14 = load i8*, i8** %arrayidx, align 8
  %call4 = call %struct.encoding* @encoding_get(%struct.a2ps_job* %10, i8* %14)
  store %struct.encoding* %call4, %struct.encoding** %encoding, align 8
  %15 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @encoding_print_signature(%struct.encoding* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %19, void (i8*)* @free)
  ret void
}

declare %struct.darray* @pw_glob_on_suffix(i8**, i8*) #1

declare void @da_qsort_with_arg(%struct.darray*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @da_encoding_name_cmp(i8* %key1, i8* %key2, %struct.a2ps_job* %job) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load i8*, i8** %key1.addr, align 8
  %call = call %struct.encoding* @encoding_get(%struct.a2ps_job* %0, i8* %1)
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %call, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = load i8*, i8** %key2.addr, align 8
  %call1 = call %struct.encoding* @encoding_get(%struct.a2ps_job* %3, i8* %4)
  %name2 = getelementptr inbounds %struct.encoding, %struct.encoding* %call1, i32 0, i32 1
  %5 = load i8*, i8** %name2, align 8
  %call3 = call i32 @strverscmp(i8* %2, i8* %5)
  ret i32 %call3
}

declare void @da_free(%struct.darray*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define void @list_texinfo_encodings_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %entries = alloca %struct.darray*, align 8
  %encoding = alloca %struct.encoding*, align 8
  %i = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %2 = load %struct.darray*, %struct.darray** %entries, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %4 = bitcast %struct.a2ps_job* %3 to i8*
  call void @da_qsort_with_arg(%struct.darray* %2, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, i8*, %struct.a2ps_job*)* @da_encoding_name_cmp to i32 (i8*, i8*, i8*)*), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %conv = zext i32 %6 to i64
  %7 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %conv, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %call3 = call %struct.encoding* @encoding_get(%struct.a2ps_job* %9, i8* %13)
  store %struct.encoding* %call3, %struct.encoding** %encoding, align 8
  %14 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @encoding_texinfo_print_signature(%struct.encoding* %14, %struct._IO_FILE* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %17, void (i8*)* @free)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encoding_texinfo_print_signature(%struct.encoding* %encoding, %struct._IO_FILE* %stream) #0 {
entry:
  %encoding.addr = alloca %struct.encoding*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0), i8* %2, i8* %4)
  %5 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %documentation = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 2
  %6 = load i8*, i8** %documentation, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @documentation_print_texinfo(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %8)
  ret void
}

declare i32 @pair_table_load(%struct.pair_htable*, i8*) #1

declare void @documentation_print_plain(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @font_entry_hash_qcmp(%struct.font_entry** %x, %struct.font_entry** %y) #0 {
entry:
  %x.addr = alloca %struct.font_entry**, align 8
  %y.addr = alloca %struct.font_entry**, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.font_entry** %x, %struct.font_entry*** %x.addr, align 8
  store %struct.font_entry** %y, %struct.font_entry*** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.font_entry**, %struct.font_entry*** %x.addr, align 8
  %1 = load %struct.font_entry*, %struct.font_entry** %0, align 8
  %key = getelementptr inbounds %struct.font_entry, %struct.font_entry* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load %struct.font_entry**, %struct.font_entry*** %y.addr, align 8
  %4 = load %struct.font_entry*, %struct.font_entry** %3, align 8
  %key2 = getelementptr inbounds %struct.font_entry, %struct.font_entry* %4, i32 0, i32 0
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

; Function Attrs: nounwind uwtable
define internal void @font_entry_self_print(%struct.font_entry* %entry1, %struct._IO_FILE* %stream) #0 {
entry:
  %entry.addr = alloca %struct.font_entry*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.font_entry* %entry1, %struct.font_entry** %entry.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.font_entry*, %struct.font_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.font_entry, %struct.font_entry* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %3 = load %struct.font_entry*, %struct.font_entry** %entry.addr, align 8
  %used = getelementptr inbounds %struct.font_entry, %struct.font_entry* %3, i32 0, i32 1
  %4 = load i32, i32* %used, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)
  %5 = load %struct.font_entry*, %struct.font_entry** %entry.addr, align 8
  %reencode = getelementptr inbounds %struct.font_entry, %struct.font_entry* %5, i32 0, i32 2
  %6 = load i32, i32* %reencode, align 4
  %tobool2 = icmp ne i32 %6, 0
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* %2, i8* %cond, i8* %cond3)
  %7 = load %struct.font_entry*, %struct.font_entry** %entry.addr, align 8
  %wx = getelementptr inbounds %struct.font_entry, %struct.font_entry* %7, i32 0, i32 3
  %8 = load i32*, i32** %wx, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @wx_self_print(i32* %8, %struct._IO_FILE* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @font_table_free(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.font_entry*)* @font_entry_free to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @font_entry_free(%struct.font_entry* %item) #5 {
entry:
  %item.addr = alloca %struct.font_entry*, align 8
  store %struct.font_entry* %item, %struct.font_entry** %item.addr, align 8
  %0 = load %struct.font_entry*, %struct.font_entry** %item.addr, align 8
  %key = getelementptr inbounds %struct.font_entry, %struct.font_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  call void @free(i8* %1) #6
  %2 = load %struct.font_entry*, %struct.font_entry** %item.addr, align 8
  %3 = bitcast %struct.font_entry* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @encoding_add(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %encoding = alloca %struct.encoding*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct.encoding* @encoding_new(i8* %0)
  store %struct.encoding* %call, %struct.encoding** %encoding, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %2 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  call void @encoding_setup(%struct.a2ps_job* %1, %struct.encoding* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call1 = call i32 @face_eo_font_is_set(%struct.a2ps_job* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %5 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  call void @encoding_build_faces_wx(%struct.a2ps_job* %4, %struct.encoding* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 16, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @encoding_self_print(%struct.encoding* %7, %struct._IO_FILE* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 47
  %10 = load %struct.hash_table_s*, %struct.hash_table_s** %encodings, align 8
  %11 = load %struct.encoding*, %struct.encoding** %encoding, align 8
  %12 = bitcast %struct.encoding* %11 to i8*
  %call5 = call i8* @hash_insert(%struct.hash_table_s* %10, i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.encoding* @encoding_new(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca %struct.encoding*, align 8
  store i8* %key, i8** %key.addr, align 8
  %call = call i8* @xmalloc(i64 2184)
  %0 = bitcast i8* %call to %struct.encoding*
  store %struct.encoding* %0, %struct.encoding** %res, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  %2 = load %struct.encoding*, %struct.encoding** %res, align 8
  %key2 = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 0
  store i8* %call1, i8** %key2, align 8
  %3 = load %struct.encoding*, %struct.encoding** %res, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 1
  store i8* null, i8** %name, align 8
  %4 = load %struct.encoding*, %struct.encoding** %res, align 8
  %default_font = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 3
  store i8* null, i8** %default_font, align 8
  %5 = load %struct.encoding*, %struct.encoding** %res, align 8
  %documentation = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 2
  store i8* null, i8** %documentation, align 8
  %call3 = call %struct.pair_htable* @pair_table_new()
  %6 = load %struct.encoding*, %struct.encoding** %res, align 8
  %substitutes = getelementptr inbounds %struct.encoding, %struct.encoding* %6, i32 0, i32 4
  store %struct.pair_htable* %call3, %struct.pair_htable** %substitutes, align 8
  %call4 = call %struct.darray* @da_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i64 10, i32 1, i64 10, void (i8*, %struct._IO_FILE*)* @da_str_print, i32 (i8*, i8*)* @da_str_cmp)
  %7 = load %struct.encoding*, %struct.encoding** %res, align 8
  %font_names_used = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 6
  store %struct.darray* %call4, %struct.darray** %font_names_used, align 8
  %call5 = call %struct.hash_table_s* @font_table_new()
  %8 = load %struct.encoding*, %struct.encoding** %res, align 8
  %fonts = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 7
  store %struct.hash_table_s* %call5, %struct.hash_table_s** %fonts, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.encoding*, %struct.encoding** %res, align 8
  %faces_wx = getelementptr inbounds %struct.encoding, %struct.encoding* %11, i32 0, i32 8
  %arrayidx = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx, i32 0, i64 %idxprom
  store i32* null, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.17, %for.end
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %14, -1
  br i1 %cmp9, label %for.body.10, label %for.end.19

for.body.10:                                      ; preds = %for.cond.6
  %call11 = call i32* @wx_new()
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [0 x i32], [0 x i32]* @base_faces, i32 0, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.encoding*, %struct.encoding** %res, align 8
  %faces_wx15 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 8
  %arrayidx16 = getelementptr inbounds [10 x i32*], [10 x i32*]* %faces_wx15, i32 0, i64 %idxprom14
  store i32* %call11, i32** %arrayidx16, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.10
  %18 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.6

for.end.19:                                       ; preds = %for.cond.6
  %19 = load %struct.encoding*, %struct.encoding** %res, align 8
  ret %struct.encoding* %19
}

; Function Attrs: nounwind uwtable
define internal void @encoding_setup(%struct.a2ps_job* %job, %struct.encoding* %encoding) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %encoding.addr = alloca %struct.encoding*, align 8
  %cp = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  call void @load_encoding_description_file(%struct.a2ps_job* %0, %struct.encoding* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 26
  %3 = load i32, i32* %output_format, align 4
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %5) #7
  %add = add i64 %call, 8
  %add1 = add i64 %add, 1
  %mul = mul i64 1, %add1
  %6 = alloca i8, i64 %mul
  store i8* %6, i8** %cp, align 8
  %7 = load i8*, i8** %cp, align 8
  %8 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name2 = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 1
  %9 = load i8*, i8** %name2, align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* %9) #6
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %11 = load i8*, i8** %cp, align 8
  call void @add_supplied_resource(%struct.a2ps_job* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* %11)
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %13 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  call void @encoding_output_ps_vector(%struct.a2ps_job* %12, %struct.encoding* %13)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void
}

declare i32 @face_eo_font_is_set(%struct.a2ps_job*) #1

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #1

declare void @da_str_print(i8*, %struct._IO_FILE*) #1

declare i32 @da_str_cmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.hash_table_s* @font_table_new() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 32, i64 (i8*)* bitcast (i64 (%struct.font_entry*)* @font_entry_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.font_entry*)* @font_entry_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.font_entry*, %struct.font_entry*)* @font_entry_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @wx_new() #5 {
entry:
  %i = alloca i32, align 4
  %res = alloca i32*, align 8
  %call = call i8* @xmalloc(i64 1024)
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %res, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %res, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32*, i32** %res, align 8
  ret i32* %5
}

; Function Attrs: nounwind uwtable
define internal i64 @font_entry_hash_1(%struct.font_entry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.font_entry*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.font_entry* %entry1, %struct.font_entry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %0 = load %struct.font_entry*, %struct.font_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.font_entry, %struct.font_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
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
define internal i64 @font_entry_hash_2(%struct.font_entry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct.font_entry*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.font_entry* %entry1, %struct.font_entry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %0 = load %struct.font_entry*, %struct.font_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.font_entry, %struct.font_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
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
define internal i32 @font_entry_hash_cmp(%struct.font_entry* %x, %struct.font_entry* %y) #0 {
entry:
  %x.addr = alloca %struct.font_entry*, align 8
  %y.addr = alloca %struct.font_entry*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.font_entry* %x, %struct.font_entry** %x.addr, align 8
  store %struct.font_entry* %y, %struct.font_entry** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.font_entry*, %struct.font_entry** %x.addr, align 8
  %key = getelementptr inbounds %struct.font_entry, %struct.font_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.font_entry*, %struct.font_entry** %y.addr, align 8
  %key2 = getelementptr inbounds %struct.font_entry, %struct.font_entry* %2, i32 0, i32 0
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
define internal void @load_encoding_description_file(%struct.a2ps_job* %job, %struct.encoding* %encoding) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %encoding.addr = alloca %struct.encoding*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %buf = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %bufsiz = alloca i64, align 8
  %token = alloca i8*, align 8
  %token2 = alloca i8*, align 8
  %firstline = alloca i32, align 4
  %lastline = alloca i32, align 4
  %c = alloca i32, align 4
  %buf2 = alloca [256 x i8], align 16
  %documentation = alloca i8*, align 8
  %buf263 = alloca [8192 x i8], align 16
  %read_length = alloca i64, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %__o96 = alloca %struct.obstack*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %__o134 = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %orig = alloca i8*, align 8
  %subs = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  store i8* null, i8** %buf, align 8
  store i64 0, i64* %bufsiz, align 8
  store i32 0, i32* %firstline, align 4
  store i32 0, i32* %lastline, align 4
  %0 = load i32, i32* @load_encoding_description_file.first_time, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @load_encoding_description_file.first_time, align 4
  %call = call i32 @_obstack_begin(%struct.obstack* @load_encoding_description_file.documentation_stack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 16, %1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i8* %4)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %6 = load i8**, i8*** %path, align 8
  %7 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %key5 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 0
  %8 = load i8*, i8** %key5, align 8
  %call6 = call i8* @xpw_find_file(i8** %6, i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call6, i8** %fname, align 8
  %9 = load i8*, i8** %fname, align 8
  %call7 = call %struct._IO_FILE* @xrfopen(i8* %9)
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.177, %if.then.11, %do.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call8 = call i32 @getshline_numbered(i32* %firstline, i32* %lastline, i8** %buf, i64* %bufsiz, %struct._IO_FILE* %10)
  %cmp = icmp ne i32 %call8, -1
  br i1 %cmp, label %while.body, label %while.end.178

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %buf, align 8
  %call9 = call i8* @strtok(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call9, i8** %token, align 8
  %12 = load i8*, i8** %token, align 8
  %tobool10 = icmp ne i8* %12, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %while.body
  br label %while.cond

if.end.12:                                        ; preds = %while.body
  %13 = load i8*, i8** %token, align 8
  %call13 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %c, align 4
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.end, %if.then.15
  %14 = load i32, i32* %c, align 4
  %cmp17 = icmp slt i32 %14, 256
  br i1 %cmp17, label %while.body.18, label %while.end.37

while.body.18:                                    ; preds = %while.cond.16
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call19 = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %15)
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %while.body.18
  %16 = load i8*, i8** %fname, align 8
  %17 = load i32, i32* %firstline, align 4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %16, i32 %17, i8* %call22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %while.body.18
  %18 = load i32, i32* %lastline, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %lastline, align 4
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i32 0, i32 0
  %call25 = call i8* @strtok(i8* %arraydecay24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call25, i8** %token, align 8
  %19 = load i8*, i8** %token, align 8
  %call26 = call i8* @xstrdup(i8* %19)
  %20 = load i32, i32* %c, align 4
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, i32* %c, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %vector = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 5
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %vector, i32 0, i64 %idxprom
  store i8* %call26, i8** %arrayidx, align 8
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.31, %if.end.23
  %call29 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call29, i8** %token2, align 8
  %tobool30 = icmp ne i8* %call29, null
  br i1 %tobool30, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.28
  %22 = load i8*, i8** %token2, align 8
  %call32 = call i8* @xstrdup(i8* %22)
  %23 = load i32, i32* %c, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, i32* %c, align 4
  %idxprom34 = sext i32 %23 to i64
  %24 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %vector35 = getelementptr inbounds %struct.encoding, %struct.encoding* %24, i32 0, i32 5
  %arrayidx36 = getelementptr inbounds [256 x i8*], [256 x i8*]* %vector35, i32 0, i64 %idxprom34
  store i8* %call32, i8** %arrayidx36, align 8
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  br label %while.cond.16

while.end.37:                                     ; preds = %while.cond.16
  br label %if.end.177

if.else:                                          ; preds = %if.end.12
  %25 = load i8*, i8** %token, align 8
  %call38 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.48

if.then.40:                                       ; preds = %if.else
  %call41 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call41, i8** %token2, align 8
  %26 = load i8*, i8** %token2, align 8
  %cmp42 = icmp eq i8* %26, null
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.40
  %27 = load i8*, i8** %fname, align 8
  %28 = load i32, i32* %firstline, align 4
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  %29 = load i8*, i8** %token, align 8
  %call45 = call i8* @quotearg(i8* %29)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %27, i32 %28, i8* %call44, i8* %call45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.40
  %30 = load i8*, i8** %token2, align 8
  %call47 = call i8* @xstrdup(i8* %30)
  %31 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %31, i32 0, i32 1
  store i8* %call47, i8** %name, align 8
  br label %if.end.176

if.else.48:                                       ; preds = %if.else
  %32 = load i8*, i8** %token, align 8
  %call49 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.59

if.then.51:                                       ; preds = %if.else.48
  %call52 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call52, i8** %token2, align 8
  %33 = load i8*, i8** %token2, align 8
  %cmp53 = icmp eq i8* %33, null
  br i1 %cmp53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.then.51
  %34 = load i8*, i8** %fname, align 8
  %35 = load i32, i32* %firstline, align 4
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  %36 = load i8*, i8** %token, align 8
  %call56 = call i8* @quotearg(i8* %36)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %34, i32 %35, i8* %call55, i8* %call56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.then.51
  %37 = load i8*, i8** %token2, align 8
  %call58 = call i8* @xstrdup(i8* %37)
  %38 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %default_font = getelementptr inbounds %struct.encoding, %struct.encoding* %38, i32 0, i32 3
  store i8* %call58, i8** %default_font, align 8
  br label %if.end.175

if.else.59:                                       ; preds = %if.else.48
  %39 = load i8*, i8** %token, align 8
  %call60 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #7
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.149

if.then.62:                                       ; preds = %if.else.59
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.82, %if.then.62
  %arraydecay65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf263, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call66 = call i8* @fgets(i8* %arraydecay65, i32 8192, %struct._IO_FILE* %40)
  %tobool67 = icmp ne i8* %call66, null
  br i1 %tobool67, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.64
  %arraydecay68 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf263, i32 0, i32 0
  %call69 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* %arraydecay68, i64 16) #7
  %tobool70 = icmp ne i32 %call69, 0
  %lnot = xor i1 %tobool70, true
  %lnot71 = xor i1 %lnot, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.64
  %41 = phi i1 [ false, %while.cond.64 ], [ %lnot71, %land.rhs ]
  br i1 %41, label %while.body.72, label %while.end.89

while.body.72:                                    ; preds = %land.end
  %arraydecay73 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf263, i32 0, i32 0
  %call74 = call i64 @strlen(i8* %arraydecay73) #7
  store i64 %call74, i64* %read_length, align 8
  %42 = load i64, i64* %read_length, align 8
  %cmp75 = icmp ult i64 %42, 8192
  br i1 %cmp75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %while.body.72
  %43 = load i32, i32* %lastline, align 4
  %inc77 = add nsw i32 %43, 1
  store i32 %inc77, i32* %lastline, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %while.body.72
  store %struct.obstack* @load_encoding_description_file.documentation_stack, %struct.obstack** %__o, align 8
  %44 = load i64, i64* %read_length, align 8
  %conv = trunc i64 %44 to i32
  store i32 %conv, i32* %__len, align 4
  %45 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 3
  %46 = load i8*, i8** %next_free, align 8
  %47 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  %48 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %48, i32 0, i32 4
  %49 = load i8*, i8** %chunk_limit, align 8
  %cmp79 = icmp ugt i8* %add.ptr, %49
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  %50 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %51 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %50, i32 %51)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.end.78
  %52 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free83 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 3
  %53 = load i8*, i8** %next_free83, align 8
  %arraydecay84 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf263, i32 0, i32 0
  %54 = load i32, i32* %__len, align 4
  %conv85 = sext i32 %54 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %arraydecay84, i64 %conv85, i32 1, i1 false)
  %55 = load i32, i32* %__len, align 4
  %56 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free86 = getelementptr inbounds %struct.obstack, %struct.obstack* %56, i32 0, i32 3
  %57 = load i8*, i8** %next_free86, align 8
  %idx.ext87 = sext i32 %55 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %57, i64 %idx.ext87
  store i8* %add.ptr88, i8** %next_free86, align 8
  br label %while.cond.64

while.end.89:                                     ; preds = %land.end
  %arraydecay90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf263, i32 0, i32 0
  %call91 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* %arraydecay90, i64 16) #7
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %while.end.89
  %58 = load i8*, i8** %fname, align 8
  %59 = load i32, i32* %firstline, align 4
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %58, i32 %59, i8* %call94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %while.end.89
  store %struct.obstack* @load_encoding_description_file.documentation_stack, %struct.obstack** %__o96, align 8
  %60 = load %struct.obstack*, %struct.obstack** %__o96, align 8
  %next_free97 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 3
  %61 = load i8*, i8** %next_free97, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load %struct.obstack*, %struct.obstack** %__o96, align 8
  %chunk_limit99 = getelementptr inbounds %struct.obstack, %struct.obstack* %62, i32 0, i32 4
  %63 = load i8*, i8** %chunk_limit99, align 8
  %cmp100 = icmp ugt i8* %add.ptr98, %63
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.95
  %64 = load %struct.obstack*, %struct.obstack** %__o96, align 8
  call void @_obstack_newchunk(%struct.obstack* %64, i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.95
  %65 = load %struct.obstack*, %struct.obstack** %__o96, align 8
  %next_free104 = getelementptr inbounds %struct.obstack, %struct.obstack* %65, i32 0, i32 3
  %66 = load i8*, i8** %next_free104, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %next_free104, align 8
  store i8 0, i8* %66, align 1
  store %struct.obstack* @load_encoding_description_file.documentation_stack, %struct.obstack** %__o1, align 8
  %67 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 2
  %68 = load i8*, i8** %object_base, align 8
  store i8* %68, i8** %value, align 8
  %69 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free105 = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 3
  %70 = load i8*, i8** %next_free105, align 8
  %71 = load i8*, i8** %value, align 8
  %cmp106 = icmp eq i8* %70, %71
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.103
  %72 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %72, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.103
  %73 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free110 = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 3
  %74 = load i8*, i8** %next_free110, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %75 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 6
  %76 = load i32, i32* %alignment_mask, align 4
  %conv111 = sext i32 %76 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv111
  %77 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask112 = getelementptr inbounds %struct.obstack, %struct.obstack* %77, i32 0, i32 6
  %78 = load i32, i32* %alignment_mask112, align 4
  %neg = xor i32 %78, -1
  %conv113 = sext i32 %neg to i64
  %and114 = and i64 %add, %conv113
  %add.ptr115 = getelementptr inbounds i8, i8* null, i64 %and114
  %79 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free116 = getelementptr inbounds %struct.obstack, %struct.obstack* %79, i32 0, i32 3
  store i8* %add.ptr115, i8** %next_free116, align 8
  %80 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free117 = getelementptr inbounds %struct.obstack, %struct.obstack* %80, i32 0, i32 3
  %81 = load i8*, i8** %next_free117, align 8
  %82 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %82, i32 0, i32 1
  %83 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %84 = bitcast %struct._obstack_chunk* %83 to i8*
  %sub.ptr.lhs.cast118 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %84 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast
  %85 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit120 = getelementptr inbounds %struct.obstack, %struct.obstack* %85, i32 0, i32 4
  %86 = load i8*, i8** %chunk_limit120, align 8
  %87 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk121 = getelementptr inbounds %struct.obstack, %struct.obstack* %87, i32 0, i32 1
  %88 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk121, align 8
  %89 = bitcast %struct._obstack_chunk* %88 to i8*
  %sub.ptr.lhs.cast122 = ptrtoint i8* %86 to i64
  %sub.ptr.rhs.cast123 = ptrtoint i8* %89 to i64
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123
  %cmp125 = icmp sgt i64 %sub.ptr.sub119, %sub.ptr.sub124
  br i1 %cmp125, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %if.end.109
  %90 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit128 = getelementptr inbounds %struct.obstack, %struct.obstack* %90, i32 0, i32 4
  %91 = load i8*, i8** %chunk_limit128, align 8
  %92 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free129 = getelementptr inbounds %struct.obstack, %struct.obstack* %92, i32 0, i32 3
  store i8* %91, i8** %next_free129, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %if.end.109
  %93 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free131 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 3
  %94 = load i8*, i8** %next_free131, align 8
  %95 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base132 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 2
  store i8* %94, i8** %object_base132, align 8
  %96 = load i8*, i8** %value, align 8
  store i8* %96, i8** %tmp
  %97 = load i8*, i8** %tmp
  store i8* %97, i8** %documentation, align 8
  store %struct.obstack* @load_encoding_description_file.documentation_stack, %struct.obstack** %__o134, align 8
  %98 = load i8*, i8** %documentation, align 8
  store i8* %98, i8** %__obj, align 8
  %99 = load i8*, i8** %__obj, align 8
  %100 = load %struct.obstack*, %struct.obstack** %__o134, align 8
  %chunk136 = getelementptr inbounds %struct.obstack, %struct.obstack* %100, i32 0, i32 1
  %101 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk136, align 8
  %102 = bitcast %struct._obstack_chunk* %101 to i8*
  %cmp137 = icmp ugt i8* %99, %102
  br i1 %cmp137, label %land.lhs.true, label %if.else.145

land.lhs.true:                                    ; preds = %if.end.130
  %103 = load i8*, i8** %__obj, align 8
  %104 = load %struct.obstack*, %struct.obstack** %__o134, align 8
  %chunk_limit139 = getelementptr inbounds %struct.obstack, %struct.obstack* %104, i32 0, i32 4
  %105 = load i8*, i8** %chunk_limit139, align 8
  %cmp140 = icmp ult i8* %103, %105
  br i1 %cmp140, label %if.then.142, label %if.else.145

if.then.142:                                      ; preds = %land.lhs.true
  %106 = load i8*, i8** %__obj, align 8
  %107 = load %struct.obstack*, %struct.obstack** %__o134, align 8
  %object_base143 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 2
  store i8* %106, i8** %object_base143, align 8
  %108 = load %struct.obstack*, %struct.obstack** %__o134, align 8
  %next_free144 = getelementptr inbounds %struct.obstack, %struct.obstack* %108, i32 0, i32 3
  store i8* %106, i8** %next_free144, align 8
  br label %if.end.146

if.else.145:                                      ; preds = %land.lhs.true, %if.end.130
  %109 = load %struct.obstack*, %struct.obstack** %__o134, align 8
  %110 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %109, i8* %110)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.142
  %111 = load i8*, i8** %documentation, align 8
  %call147 = call i8* @xstrdup(i8* %111)
  %112 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %documentation148 = getelementptr inbounds %struct.encoding, %struct.encoding* %112, i32 0, i32 2
  store i8* %call147, i8** %documentation148, align 8
  br label %if.end.174

if.else.149:                                      ; preds = %if.else.59
  %113 = load i8*, i8** %token, align 8
  %call150 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0)) #7
  %cmp151 = icmp eq i32 %call150, 0
  br i1 %cmp151, label %if.then.153, label %if.else.170

if.then.153:                                      ; preds = %if.else.149
  %call156 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call156, i8** %token2, align 8
  %114 = load i8*, i8** %token2, align 8
  %cmp157 = icmp eq i8* %114, null
  br i1 %cmp157, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %if.then.153
  %115 = load i8*, i8** %fname, align 8
  %116 = load i32, i32* %firstline, align 4
  %call160 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  %117 = load i8*, i8** %token, align 8
  %call161 = call i8* @quotearg(i8* %117)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %115, i32 %116, i8* %call160, i8* %call161)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %if.then.153
  %118 = load i8*, i8** %token2, align 8
  store i8* %118, i8** %orig, align 8
  %call163 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  store i8* %call163, i8** %token2, align 8
  %119 = load i8*, i8** %token2, align 8
  %cmp164 = icmp eq i8* %119, null
  br i1 %cmp164, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.end.162
  %120 = load i8*, i8** %fname, align 8
  %121 = load i32, i32* %firstline, align 4
  %call167 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0)) #6
  %122 = load i8*, i8** %token, align 8
  %call168 = call i8* @quotearg(i8* %122)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %120, i32 %121, i8* %call167, i8* %call168)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %if.end.162
  %123 = load i8*, i8** %token2, align 8
  store i8* %123, i8** %subs, align 8
  %124 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %125 = load i8*, i8** %orig, align 8
  %126 = load i8*, i8** %subs, align 8
  call void @encoding_add_font_substitute(%struct.encoding* %124, i8* %125, i8* %126)
  br label %if.end.173

if.else.170:                                      ; preds = %if.else.149
  %127 = load i8*, i8** %fname, align 8
  %128 = load i32, i32* %firstline, align 4
  %call171 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0)) #6
  %129 = load i8*, i8** %token, align 8
  %call172 = call i8* @quotearg(i8* %129)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %127, i32 %128, i8* %call171, i8* %call172)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.end.169
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.146
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.57
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.46
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %while.end.37
  br label %while.cond

while.end.178:                                    ; preds = %while.cond
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call179 = call i32 @fclose(%struct._IO_FILE* %130)
  %131 = load i8*, i8** %buf, align 8
  call void @free(i8* %131) #6
  %132 = load i8*, i8** %fname, align 8
  call void @free(i8* %132) #6
  ret void
}

declare void @add_supplied_resource(%struct.a2ps_job*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @encoding_output_ps_vector(%struct.a2ps_job* %job, %struct.encoding* %encoding) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %encoding.addr = alloca %struct.encoding*, align 8
  %c = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 21
  %1 = load %struct.output*, %struct.output** %ps_encodings, align 8
  %2 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i32 0, i32 0), i8* %3)
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 21
  %5 = load %struct.output*, %struct.output** %ps_encodings1, align 8
  %6 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %name2 = getelementptr inbounds %struct.encoding, %struct.encoding* %6, i32 0, i32 1
  %7 = load i8*, i8** %name2, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* %7)
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %8, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %c, align 4
  %rem = srem i32 %9, 8
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 21
  %11 = load %struct.output*, %struct.output** %ps_encodings3, align 8
  call void @output_char(%struct.output* %11, i8 zeroext 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 21
  %13 = load %struct.output*, %struct.output** %ps_encodings4, align 8
  %14 = load i32, i32* %c, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %vector = getelementptr inbounds %struct.encoding, %struct.encoding* %15, i32 0, i32 5
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %vector, i32 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %c, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 21
  %19 = load %struct.output*, %struct.output** %ps_encodings5, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0))
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %ps_encodings6 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %20, i32 0, i32 21
  %21 = load %struct.output*, %struct.output** %ps_encodings6, align 8
  call void (%struct.output*, i8*, ...) @output(%struct.output* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0))
  ret void
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare i32 @getshline_numbered(i32*, i32*, i8**, i64*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

declare i8* @quotearg(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @encoding_add_font_substitute(%struct.encoding* %encoding, i8* %orig, i8* %subs) #0 {
entry:
  %encoding.addr = alloca %struct.encoding*, align 8
  %orig.addr = alloca i8*, align 8
  %subs.addr = alloca i8*, align 8
  store %struct.encoding* %encoding, %struct.encoding** %encoding.addr, align 8
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %subs, i8** %subs.addr, align 8
  %0 = load %struct.encoding*, %struct.encoding** %encoding.addr, align 8
  %substitutes = getelementptr inbounds %struct.encoding, %struct.encoding* %0, i32 0, i32 4
  %1 = load %struct.pair_htable*, %struct.pair_htable** %substitutes, align 8
  %2 = load i8*, i8** %orig.addr, align 8
  %3 = load i8*, i8** %subs.addr, align 8
  call void @pair_add(%struct.pair_htable* %1, i8* %2, i8* %3)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @pair_add(%struct.pair_htable*, i8*, i8*) #1

declare void @output(%struct.output*, i8*, ...) #1

declare void @output_char(%struct.output*, i8 zeroext) #1

declare void @da_qsort(%struct.darray*) #1

declare void @da_unique(%struct.darray*, void (i8*)*) #1

declare i32 @font_is_to_reencode(%struct.a2ps_job*, i8*) #1

declare void @da_remove_at(%struct.darray*, i64, void (i8*)*) #1

declare i32 @strverscmp(i8*, i8*) #1

declare void @documentation_print_texinfo(i8*, i8*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
