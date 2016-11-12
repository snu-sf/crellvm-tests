; ModuleID = './lib/confg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyword_s = type { i8*, i32, i32, i8 }
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

@delegation_hook = global void (i8*, i32, i8*)* null, align 8
@toc_entry_hook = global void (i8*, i32, i8*)* null, align 8
@in_word_set.wordlist = internal global [21 x %struct.keyword_s] [%struct.keyword_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 7, i32 2, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 7, i32 2, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 5, i32 1, i8 0 }, %struct.keyword_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 16, i32 2, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 1, i8 0 }, %struct.keyword_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 1, i8 0 }, %struct.keyword_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 9, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 10, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 8, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 14, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 3, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 4, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 16, i32 2, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 8, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 15, i32 2, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 13, i32 2, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i32 12, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 11, i32 1, i8 1 }, %struct.keyword_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 1, i8 1 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"Media:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Medium:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Include:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Variable:\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"DefaultPPD:\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"LibraryPath:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"DefaultPrinter:\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"OutputFirstLine:\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"PassThrough:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Pattern:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"UnknownPrinter:\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Delegation:\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"FileCommand:\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"MacroMetaSequence:\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"TemporaryDirectory:\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"UserOption:\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Printer:\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"PrependLibraryPath:\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"PageLabelFormat:\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"AppendLibraryPath:\00", align 1
@in_word_set.lookup = internal global [34 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 -1, i16 4, i16 5, i16 6, i16 -1, i16 7, i16 8, i16 9, i16 10, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 16, i16 -1, i16 17, i16 18, i16 -1, i16 19, i16 -1, i16 20], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [33 x i8] c"Reading configuration file `%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"invalid option `%s'\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"missing argument for `%s'\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"extra argument for `%s'\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"cannot open file `%s'\00", align 1
@program_name = external global i8*, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"%s:%s:%d\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"invalid definition for printer `%s': %s\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Unknown Printer\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Default Printer\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"invalid number of arguments for `%s'\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"invalid variable identifier `%s'\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"obsolete `%s' entry.  Ignored\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"A2PS_CONFIG\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"/usr/local/etc/a2ps.cfg\00", align 1
@hash.asso_values = internal global [256 x i8] c"\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\0A\22\22\22\22\22\22\22\22\0F\22\22\0F\22\22\22\22\05\22\22\22\22\22\22\22\22\22\22\22\22\00\22\22\22\0A\22\0A\22\22\22\22\22\22\0F\05\22\22\22\22\14\00\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22", align 16

; Function Attrs: inlinehint nounwind uwtable
define %struct.keyword_s* @in_word_set(i8* %str, i32 %len) #0 {
entry:
  %retval = alloca %struct.keyword_s*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %index = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp ule i32 %0, 19
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp uge i32 %1, 6
  br i1 %cmp1, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call i32 @hash(i8* %2, i32 %3)
  store i32 %call, i32* %key, align 4
  %4 = load i32, i32* %key, align 4
  %cmp2 = icmp sle i32 %4, 33
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.22

land.lhs.true.3:                                  ; preds = %if.then
  %5 = load i32, i32* %key, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %land.lhs.true.3
  %6 = load i32, i32* %key, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [34 x i16], [34 x i16]* @in_word_set.lookup, i32 0, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %index, align 4
  %8 = load i32, i32* %index, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.then.5
  %9 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [21 x %struct.keyword_s], [21 x %struct.keyword_s]* @in_word_set.wordlist, i32 0, i64 %idxprom9
  %name = getelementptr inbounds %struct.keyword_s, %struct.keyword_s* %arrayidx10, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  store i8* %10, i8** %s, align 8
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv11 = sext i8 %12 to i32
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %if.then.8
  %15 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8*, i8** %s, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %16, i64 1
  %call17 = call i32 @strcmp(i8* %add.ptr, i8* %add.ptr16) #6
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.15
  %17 = load i32, i32* %index, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [21 x %struct.keyword_s], [21 x %struct.keyword_s]* @in_word_set.wordlist, i32 0, i64 %idxprom19
  store %struct.keyword_s* %arrayidx20, %struct.keyword_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.15, %if.then.8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true.3, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %entry
  store %struct.keyword_s* null, %struct.keyword_s** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.18
  %18 = load %struct.keyword_s*, %struct.keyword_s** %retval
  ret %struct.keyword_s* %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %1 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 4
  %2 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @hash.asso_values, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %3 to i32
  %add = add i32 %0, %conv
  ret i32 %add
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @a2_read_config(%struct.a2ps_job* %job, i8* %path, i8* %file) #2 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %path.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fname = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %bufsiz = alloca i64, align 8
  %firstline = alloca i32, align 4
  %lastline = alloca i32, align 4
  %keyword = alloca %struct.keyword_s*, align 8
  %argc = alloca i32, align 4
  %argv = alloca [10 x i8*], align 16
  %dir = alloca i8*, align 8
  %included_file = alloca i8*, align 8
  %old_program_name = alloca i8*, align 8
  %my_s2 = alloca i8*, align 8
  %my_s2146 = alloca i8*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  %urx = alloca i32, align 4
  %ury = alloca i32, align 4
  %my_s2217 = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* null, i8** %buf, align 8
  store i64 0, i64* %bufsiz, align 8
  store i32 0, i32* %firstline, align 4
  store i32 0, i32* %lastline, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %call = call i8* @xpath_concat(i8* %0, i8* %1, i8** null)
  store i8* %call, i8** %fname, align 8
  %2 = load i8*, i8** %fname, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %fname, align 8
  call void @free(i8* %4) #7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 96, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %fname, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i8* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.241, %if.then.10, %do.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @getshline_numbered(i32* %firstline, i32* %lastline, i8** %buf, i64* %bufsiz, %struct._IO_FILE* %8)
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %buf, align 8
  %call7 = call i8* @strtok(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #7
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  store i8* %call7, i8** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %10 = load i8*, i8** %arrayidx8, align 8
  %tobool9 = icmp ne i8* %10, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %while.body
  br label %while.cond

if.end.11:                                        ; preds = %while.body
  %arrayidx12 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %11 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %12 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i64 @strlen(i8* %12) #6
  %conv = trunc i64 %call14 to i32
  %call15 = call %struct.keyword_s* @in_word_set(i8* %11, i32 %conv)
  store %struct.keyword_s* %call15, %struct.keyword_s** %keyword, align 8
  %13 = load %struct.keyword_s*, %struct.keyword_s** %keyword, align 8
  %tobool16 = icmp ne %struct.keyword_s* %13, null
  br i1 %tobool16, label %if.end.21, label %if.then.17

if.then.17:                                       ; preds = %if.end.11
  %14 = load i8*, i8** %fname, align 8
  %15 = load i32, i32* %firstline, align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #7
  %arrayidx19 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %16 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i8* @quotearg(i8* %16)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %14, i32 %15, i8* %call18, i8* %call20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.11
  store i32 1, i32* %argc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %17 = load i32, i32* %argc, align 4
  %18 = load %struct.keyword_s*, %struct.keyword_s** %keyword, align 8
  %argc22 = getelementptr inbounds %struct.keyword_s, %struct.keyword_s* %18, i32 0, i32 2
  %19 = load i32, i32* %argc22, align 4
  %cmp23 = icmp sle i32 %17, %19
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.keyword_s*, %struct.keyword_s** %keyword, align 8
  %line_token = getelementptr inbounds %struct.keyword_s, %struct.keyword_s* %20, i32 0, i32 3
  %21 = load i8, i8* %line_token, align 1
  %tobool25 = trunc i8 %21 to i1
  br i1 %tobool25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %22 = load i32, i32* %argc, align 4
  %23 = load %struct.keyword_s*, %struct.keyword_s** %keyword, align 8
  %argc27 = getelementptr inbounds %struct.keyword_s, %struct.keyword_s* %23, i32 0, i32 2
  %24 = load i32, i32* %argc27, align 4
  %cmp28 = icmp eq i32 %22, %24
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  %call31 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)) #7
  %25 = load i32, i32* %argc, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 %idxprom
  store i8* %call31, i8** %arrayidx32, align 8
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true, %for.body
  %call33 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)) #7
  %26 = load i32, i32* %argc, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 %idxprom34
  store i8* %call33, i8** %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.30
  %27 = load i32, i32* %argc, align 4
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 %idxprom37
  %28 = load i8*, i8** %arrayidx38, align 8
  %cmp39 = icmp eq i8* %28, null
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.36
  %29 = load i8*, i8** %fname, align 8
  %30 = load i32, i32* %firstline, align 4
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0)) #7
  %arrayidx43 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %31 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i8* @quotearg(i8* %31)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %29, i32 %30, i8* %call42, i8* %call44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %32 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %argc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call46 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)) #7
  %tobool47 = icmp ne i8* %call46, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %for.end
  %33 = load i8*, i8** %fname, align 8
  %34 = load i32, i32* %firstline, align 4
  %arrayidx49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %35 = load i8*, i8** %arrayidx49, align 8
  %call50 = call i8* @quotearg(i8* %35)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %33, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* %call50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %for.end
  %36 = load %struct.keyword_s*, %struct.keyword_s** %keyword, align 8
  %code = getelementptr inbounds %struct.keyword_s, %struct.keyword_s* %36, i32 0, i32 1
  %37 = load i32, i32* %code, align 4
  switch i32 %37, label %sw.epilog.241 [
    i32 5, label %sw.bb
    i32 9, label %sw.bb.75
    i32 1, label %sw.bb.82
    i32 13, label %sw.bb.84
    i32 14, label %sw.bb.95
    i32 2, label %sw.bb.106
    i32 3, label %sw.bb.117
    i32 15, label %sw.bb.122
    i32 10, label %sw.bb.125
    i32 11, label %sw.bb.144
    i32 7, label %sw.bb.170
    i32 16, label %sw.bb.179
    i32 6, label %sw.bb.188
    i32 0, label %sw.bb.201
    i32 12, label %sw.bb.208
    i32 4, label %sw.bb.215
    i32 8, label %sw.bb.238
  ]

sw.bb:                                            ; preds = %if.end.51
  %arrayidx52 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %38 = load i8*, i8** %arrayidx52, align 8
  %39 = load i8, i8* %38, align 1
  %conv53 = sext i8 %39 to i32
  %cmp54 = icmp eq i32 %conv53, 47
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %sw.bb
  store i8* null, i8** %dir, align 8
  br label %if.end.59

if.else.57:                                       ; preds = %sw.bb
  %40 = load i8*, i8** %fname, align 8
  %call58 = call i8* @dir_name(i8* %40)
  store i8* %call58, i8** %dir, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  %41 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %42 = load i8*, i8** %dir, align 8
  %arrayidx60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %43 = load i8*, i8** %arrayidx60, align 8
  %call61 = call i32 @a2_read_config(%struct.a2ps_job* %41, i8* %42, i8* %43)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.69, label %if.then.63

if.then.63:                                       ; preds = %if.end.59
  %44 = load i8*, i8** %dir, align 8
  %arrayidx64 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %45 = load i8*, i8** %arrayidx64, align 8
  %call65 = call i8* @xpath_concat(i8* %44, i8* %45, i8** null)
  store i8* %call65, i8** %included_file, align 8
  %call66 = call i32* @__errno_location() #8
  %46 = load i32, i32* %call66, align 4
  %47 = load i8*, i8** %fname, align 8
  %48 = load i32, i32* %firstline, align 4
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #7
  %49 = load i8*, i8** %included_file, align 8
  %call68 = call i8* @quotearg(i8* %49)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 0, i32 %46, i8* %47, i32 %48, i8* %call67, i8* %call68)
  %50 = load i8*, i8** %included_file, align 8
  call void @free(i8* %50) #7
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.63, %if.end.59
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %51 = load i8*, i8** %dir, align 8
  %tobool71 = icmp ne i8* %51, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body.70
  %52 = load i8*, i8** %dir, align 8
  call void @free(i8* %52) #7
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %do.body.70
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %sw.epilog.241

sw.bb.75:                                         ; preds = %if.end.51
  %53 = load i8*, i8** @program_name, align 8
  store i8* %53, i8** %old_program_name, align 8
  %54 = load i8*, i8** @program_name, align 8
  %call76 = call i64 @strlen(i8* %54) #6
  %55 = load i8*, i8** %fname, align 8
  %call77 = call i64 @strlen(i8* %55) #6
  %add = add i64 %call76, %call77
  %add78 = add i64 %add, 10
  %mul = mul i64 1, %add78
  %56 = alloca i8, i64 %mul
  store i8* %56, i8** @program_name, align 8
  %57 = load i8*, i8** @program_name, align 8
  %58 = load i8*, i8** %old_program_name, align 8
  %59 = load i8*, i8** %fname, align 8
  %60 = load i32, i32* %firstline, align 4
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* %58, i8* %59, i32 %60) #7
  %61 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %arrayidx80 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %62 = load i8*, i8** %arrayidx80, align 8
  %call81 = call i32 @a2ps_handle_string_options(%struct.a2ps_job* %61, i8* %62)
  %63 = load i8*, i8** %old_program_name, align 8
  store i8* %63, i8** @program_name, align 8
  br label %sw.epilog.241

sw.bb.82:                                         ; preds = %if.end.51
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %64, i32 0, i32 25
  %65 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %arrayidx83 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %66 = load i8*, i8** %arrayidx83, align 8
  call void @a2ps_printers_default_ppdkey_set(%struct.a2ps_printers_s* %65, i8* %66)
  br label %sw.epilog.241

sw.bb.84:                                         ; preds = %if.end.51
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers85 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 25
  %68 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers85, align 8
  %arrayidx86 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %69 = load i8*, i8** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 2
  %70 = load i8*, i8** %arrayidx87, align 8
  %call88 = call zeroext i1 @a2ps_printers_add(%struct.a2ps_printers_s* %68, i8* %69, i8* %70)
  br i1 %call88, label %if.end.94, label %if.then.89

if.then.89:                                       ; preds = %sw.bb.84
  %71 = load i8*, i8** %fname, align 8
  %72 = load i32, i32* %firstline, align 4
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0)) #7
  %arrayidx91 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %73 = load i8*, i8** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 2
  %74 = load i8*, i8** %arrayidx92, align 8
  %call93 = call i8* @quotearg(i8* %74)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %71, i32 %72, i8* %call90, i8* %73, i8* %call93)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.89, %sw.bb.84
  br label %sw.epilog.241

sw.bb.95:                                         ; preds = %if.end.51
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers96 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 25
  %76 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers96, align 8
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #7
  %arrayidx98 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %77 = load i8*, i8** %arrayidx98, align 8
  %call99 = call zeroext i1 @a2ps_printers_add(%struct.a2ps_printers_s* %76, i8* %call97, i8* %77)
  br i1 %call99, label %if.end.105, label %if.then.100

if.then.100:                                      ; preds = %sw.bb.95
  %78 = load i8*, i8** %fname, align 8
  %79 = load i32, i32* %firstline, align 4
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0)) #7
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #7
  %arrayidx103 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %80 = load i8*, i8** %arrayidx103, align 8
  %call104 = call i8* @quotearg(i8* %80)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %78, i32 %79, i8* %call101, i8* %call102, i8* %call104)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.100, %sw.bb.95
  br label %sw.epilog.241

sw.bb.106:                                        ; preds = %if.end.51
  %81 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %printers107 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %81, i32 0, i32 25
  %82 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers107, align 8
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0)) #7
  %arrayidx109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %83 = load i8*, i8** %arrayidx109, align 8
  %call110 = call zeroext i1 @a2ps_printers_add(%struct.a2ps_printers_s* %82, i8* %call108, i8* %83)
  br i1 %call110, label %if.end.116, label %if.then.111

if.then.111:                                      ; preds = %sw.bb.106
  %84 = load i8*, i8** %fname, align 8
  %85 = load i32, i32* %firstline, align 4
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0)) #7
  %call113 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0)) #7
  %arrayidx114 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %86 = load i8*, i8** %arrayidx114, align 8
  %call115 = call i8* @quotearg(i8* %86)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %84, i32 %85, i8* %call112, i8* %call113, i8* %call115)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.111, %sw.bb.106
  br label %sw.epilog.241

sw.bb.117:                                        ; preds = %if.end.51
  %87 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** @delegation_hook, align 8
  %tobool118 = icmp ne void (i8*, i32, i8*)* %87, null
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %sw.bb.117
  %88 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** @delegation_hook, align 8
  %89 = load i8*, i8** %fname, align 8
  %90 = load i32, i32* %firstline, align 4
  %arrayidx120 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %91 = load i8*, i8** %arrayidx120, align 8
  call void %88(i8* %89, i32 %90, i8* %91)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %sw.bb.117
  br label %sw.epilog.241

sw.bb.122:                                        ; preds = %if.end.51
  %92 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %arrayidx123 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %93 = load i8*, i8** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 2
  %94 = load i8*, i8** %arrayidx124, align 8
  call void @user_option_add(%struct.a2ps_job* %92, i8* %93, i8* %94)
  br label %sw.epilog.241

sw.bb.125:                                        ; preds = %if.end.51
  br label %do.body.126

do.body.126:                                      ; preds = %sw.bb.125
  %arrayidx127 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %95 = load i8*, i8** %arrayidx127, align 8
  store i8* %95, i8** %my_s2, align 8
  br label %do.body.128

do.body.128:                                      ; preds = %do.body.126
  %96 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %96, i32 0, i32 64
  %97 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %magic_number = getelementptr inbounds %struct.ps_status, %struct.ps_status* %97, i32 0, i32 5
  %98 = load i8*, i8** %magic_number, align 8
  %tobool129 = icmp ne i8* %98, null
  br i1 %tobool129, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %do.body.128
  %99 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status131 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %99, i32 0, i32 64
  %100 = load %struct.ps_status*, %struct.ps_status** %status131, align 8
  %magic_number132 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %100, i32 0, i32 5
  %101 = load i8*, i8** %magic_number132, align 8
  call void @free(i8* %101) #7
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %do.body.128
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  %102 = load i8*, i8** %my_s2, align 8
  %cmp135 = icmp eq i8* %102, null
  br i1 %cmp135, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.134
  %103 = load i8*, i8** %my_s2, align 8
  %104 = load i8, i8* %103, align 1
  %conv137 = zext i8 %104 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %105 = load i8*, i8** %my_s2, align 8
  %call140 = call i8* @xstrdup(i8* %105)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end.134
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call140, %cond.true ], [ null, %cond.false ]
  %106 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status141 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %106, i32 0, i32 64
  %107 = load %struct.ps_status*, %struct.ps_status** %status141, align 8
  %magic_number142 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %107, i32 0, i32 5
  store i8* %cond, i8** %magic_number142, align 8
  br label %do.end.143

do.end.143:                                       ; preds = %cond.end
  br label %sw.epilog.241

sw.bb.144:                                        ; preds = %if.end.51
  br label %do.body.145

do.body.145:                                      ; preds = %sw.bb.144
  %arrayidx147 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %108 = load i8*, i8** %arrayidx147, align 8
  store i8* %108, i8** %my_s2146, align 8
  br label %do.body.148

do.body.148:                                      ; preds = %do.body.145
  %109 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status149 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %109, i32 0, i32 64
  %110 = load %struct.ps_status*, %struct.ps_status** %status149, align 8
  %page_label_format = getelementptr inbounds %struct.ps_status, %struct.ps_status* %110, i32 0, i32 6
  %111 = load i8*, i8** %page_label_format, align 8
  %tobool150 = icmp ne i8* %111, null
  br i1 %tobool150, label %if.then.151, label %if.end.154

if.then.151:                                      ; preds = %do.body.148
  %112 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status152 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %112, i32 0, i32 64
  %113 = load %struct.ps_status*, %struct.ps_status** %status152, align 8
  %page_label_format153 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %113, i32 0, i32 6
  %114 = load i8*, i8** %page_label_format153, align 8
  call void @free(i8* %114) #7
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.151, %do.body.148
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  %115 = load i8*, i8** %my_s2146, align 8
  %cmp156 = icmp eq i8* %115, null
  br i1 %cmp156, label %cond.false.164, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %do.end.155
  %116 = load i8*, i8** %my_s2146, align 8
  %117 = load i8, i8* %116, align 1
  %conv159 = zext i8 %117 to i32
  %cmp160 = icmp eq i32 %conv159, 0
  br i1 %cmp160, label %cond.false.164, label %cond.true.162

cond.true.162:                                    ; preds = %lor.lhs.false.158
  %118 = load i8*, i8** %my_s2146, align 8
  %call163 = call i8* @xstrdup(i8* %118)
  br label %cond.end.165

cond.false.164:                                   ; preds = %lor.lhs.false.158, %do.end.155
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.164, %cond.true.162
  %cond166 = phi i8* [ %call163, %cond.true.162 ], [ null, %cond.false.164 ]
  %119 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %status167 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %119, i32 0, i32 64
  %120 = load %struct.ps_status*, %struct.ps_status** %status167, align 8
  %page_label_format168 = getelementptr inbounds %struct.ps_status, %struct.ps_status* %120, i32 0, i32 6
  store i8* %cond166, i8** %page_label_format168, align 8
  br label %do.end.169

do.end.169:                                       ; preds = %cond.end.165
  br label %sw.epilog.241

sw.bb.170:                                        ; preds = %if.end.51
  %arrayidx171 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 2
  %121 = load i8*, i8** %arrayidx171, align 8
  %call172 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32* %w, i32* %h, i32* %llx, i32* %lly, i32* %urx, i32* %ury) #7
  switch i32 %call172, label %sw.default [
    i32 6, label %sw.bb.173
    i32 2, label %sw.bb.174
  ]

sw.bb.173:                                        ; preds = %sw.bb.170
  br label %sw.epilog

sw.bb.174:                                        ; preds = %sw.bb.170
  store i32 24, i32* %lly, align 4
  store i32 24, i32* %llx, align 4
  %122 = load i32, i32* %w, align 4
  %sub = sub nsw i32 %122, 24
  store i32 %sub, i32* %urx, align 4
  %123 = load i32, i32* %h, align 4
  %sub175 = sub nsw i32 %123, 24
  store i32 %sub175, i32* %ury, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.170
  %124 = load i8*, i8** %fname, align 8
  %125 = load i32, i32* %firstline, align 4
  %arrayidx176 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %126 = load i8*, i8** %arrayidx176, align 8
  %call177 = call i8* @quotearg(i8* %126)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %124, i32 %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0), i8* %call177)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.174, %sw.bb.173
  %127 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %arrayidx178 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %128 = load i8*, i8** %arrayidx178, align 8
  %129 = load i32, i32* %w, align 4
  %130 = load i32, i32* %h, align 4
  %131 = load i32, i32* %llx, align 4
  %132 = load i32, i32* %lly, align 4
  %133 = load i32, i32* %urx, align 4
  %134 = load i32, i32* %ury, align 4
  call void @add_medium(%struct.a2ps_job* %127, i8* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %sw.epilog.241

sw.bb.179:                                        ; preds = %if.end.51
  %135 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %arrayidx180 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %136 = load i8*, i8** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 2
  %137 = load i8*, i8** %arrayidx181, align 8
  %call182 = call zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job* %135, i8* %136, i8* %137)
  br i1 %call182, label %if.end.187, label %if.then.183

if.then.183:                                      ; preds = %sw.bb.179
  %138 = load i8*, i8** %fname, align 8
  %139 = load i32, i32* %firstline, align 4
  %call184 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0)) #7
  %arrayidx185 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %140 = load i8*, i8** %arrayidx185, align 8
  %call186 = call i8* @quotearg(i8* %140)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %138, i32 %139, i8* %call184, i8* %call186)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.183, %sw.bb.179
  br label %sw.epilog.241

sw.bb.188:                                        ; preds = %if.end.51
  br label %do.body.189

do.body.189:                                      ; preds = %sw.bb.188
  %141 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %141, i32 0, i32 2
  %path190 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %142 = load i8**, i8*** %path190, align 8
  %tobool191 = icmp ne i8** %142, null
  br i1 %tobool191, label %if.then.192, label %if.end.195

if.then.192:                                      ; preds = %do.body.189
  %143 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common193 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %143, i32 0, i32 2
  %path194 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common193, i32 0, i32 0
  %144 = load i8**, i8*** %path194, align 8
  %145 = bitcast i8** %144 to i8*
  call void @free(i8* %145) #7
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.192, %do.body.189
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  %arrayidx197 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %146 = load i8*, i8** %arrayidx197, align 8
  %call198 = call i8** @pw_string_to_path(i8* %146)
  %147 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common199 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %147, i32 0, i32 2
  %path200 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common199, i32 0, i32 0
  store i8** %call198, i8*** %path200, align 8
  br label %sw.epilog.241

sw.bb.201:                                        ; preds = %if.end.51
  %148 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common202 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %148, i32 0, i32 2
  %path203 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common202, i32 0, i32 0
  %149 = load i8**, i8*** %path203, align 8
  %arrayidx204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %150 = load i8*, i8** %arrayidx204, align 8
  %call205 = call i8** @pw_append_string_to_path(i8** %149, i8* %150)
  %151 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common206 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %151, i32 0, i32 2
  %path207 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common206, i32 0, i32 0
  store i8** %call205, i8*** %path207, align 8
  br label %sw.epilog.241

sw.bb.208:                                        ; preds = %if.end.51
  %152 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common209 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %152, i32 0, i32 2
  %path210 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common209, i32 0, i32 0
  %153 = load i8**, i8*** %path210, align 8
  %arrayidx211 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %154 = load i8*, i8** %arrayidx211, align 8
  %call212 = call i8** @pw_prepend_string_to_path(i8** %153, i8* %154)
  %155 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common213 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %155, i32 0, i32 2
  %path214 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common213, i32 0, i32 0
  store i8** %call212, i8*** %path214, align 8
  br label %sw.epilog.241

sw.bb.215:                                        ; preds = %if.end.51
  br label %do.body.216

do.body.216:                                      ; preds = %sw.bb.215
  %arrayidx218 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 1
  %156 = load i8*, i8** %arrayidx218, align 8
  store i8* %156, i8** %my_s2217, align 8
  br label %do.body.219

do.body.219:                                      ; preds = %do.body.216
  %157 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %file_command = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %157, i32 0, i32 3
  %158 = load i8*, i8** %file_command, align 8
  %tobool220 = icmp ne i8* %158, null
  br i1 %tobool220, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %do.body.219
  %159 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %file_command222 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %159, i32 0, i32 3
  %160 = load i8*, i8** %file_command222, align 8
  call void @free(i8* %160) #7
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %do.body.219
  br label %do.end.224

do.end.224:                                       ; preds = %if.end.223
  %161 = load i8*, i8** %my_s2217, align 8
  %cmp225 = icmp eq i8* %161, null
  br i1 %cmp225, label %cond.false.233, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %do.end.224
  %162 = load i8*, i8** %my_s2217, align 8
  %163 = load i8, i8* %162, align 1
  %conv228 = sext i8 %163 to i32
  %cmp229 = icmp eq i32 %conv228, 0
  br i1 %cmp229, label %cond.false.233, label %cond.true.231

cond.true.231:                                    ; preds = %lor.lhs.false.227
  %164 = load i8*, i8** %my_s2217, align 8
  %call232 = call i8* @xstrdup(i8* %164)
  br label %cond.end.234

cond.false.233:                                   ; preds = %lor.lhs.false.227, %do.end.224
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.233, %cond.true.231
  %cond235 = phi i8* [ %call232, %cond.true.231 ], [ null, %cond.false.233 ]
  %165 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %file_command236 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %165, i32 0, i32 3
  store i8* %cond235, i8** %file_command236, align 8
  br label %do.end.237

do.end.237:                                       ; preds = %cond.end.234
  br label %sw.epilog.241

sw.bb.238:                                        ; preds = %if.end.51
  %166 = load i8*, i8** %fname, align 8
  %167 = load i32, i32* %firstline, align 4
  %call239 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0)) #7
  %arrayidx240 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argv, i32 0, i64 0
  %168 = load i8*, i8** %arrayidx240, align 8
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 0, i32 0, i8* %166, i32 %167, i8* %call239, i8* %168)
  br label %sw.epilog.241

sw.epilog.241:                                    ; preds = %if.end.51, %sw.bb.238, %do.end.237, %sw.bb.208, %sw.bb.201, %do.end.196, %if.end.187, %sw.epilog, %do.end.169, %do.end.143, %sw.bb.122, %if.end.121, %if.end.116, %if.end.105, %if.end.94, %sw.bb.82, %sw.bb.75, %do.end.74
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.242

do.body.242:                                      ; preds = %while.end
  %169 = load i8*, i8** %fname, align 8
  %tobool243 = icmp ne i8* %169, null
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %do.body.242
  %170 = load i8*, i8** %fname, align 8
  call void @free(i8* %170) #7
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %do.body.242
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call247 = call i32 @fclose(%struct._IO_FILE* %171)
  %172 = load i8*, i8** %buf, align 8
  call void @free(i8* %172) #7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.246, %if.then
  %173 = load i32, i32* %retval
  ret i32 %173
}

declare i8* @xpath_concat(i8*, i8*, i8**) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @getshline_numbered(i32*, i32*, i8**, i64*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @quotearg(i8*) #3

declare i8* @dir_name(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i32 @a2ps_handle_string_options(%struct.a2ps_job*, i8*) #3

declare void @a2ps_printers_default_ppdkey_set(%struct.a2ps_printers_s*, i8*) #3

declare zeroext i1 @a2ps_printers_add(%struct.a2ps_printers_s*, i8*, i8*) #3

declare void @user_option_add(%struct.a2ps_job*, i8*, i8*) #3

declare i8* @xstrdup(i8*) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare void @add_medium(%struct.a2ps_job*, i8*, i32, i32, i32, i32, i32, i32) #3

declare zeroext i1 @macro_meta_sequence_add(%struct.a2ps_job*, i8*, i8*) #3

declare i8** @pw_string_to_path(i8*) #3

declare i8** @pw_append_string_to_path(i8**, i8*) #3

declare i8** @pw_prepend_string_to_path(i8**, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @a2_read_sys_config(%struct.a2ps_job* %job) #2 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %config_file = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #7
  store i8* %call, i8** %config_file, align 8
  %0 = load i8*, i8** %config_file, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i8** %config_file, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %2 = load i8*, i8** %config_file, align 8
  %call1 = call i32 @a2_read_config(%struct.a2ps_job* %1, i8* null, i8* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call5, align 4
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #7
  %4 = load i8*, i8** %config_file, align 8
  %call7 = call i8* @quotearg(i8* %4)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %3, i8* %call6, i8* %call7)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare void @error(i32, i32, i8*, ...) #3

attributes #0 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
