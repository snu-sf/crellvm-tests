; ModuleID = './MultiSource.Applications.SIBsim4/2.sim4.init.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._options_t = type { i8*, %struct._junction_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._seq_t = type { i8*, i8*, i8*, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { i8*, i32, i32, i32, [4096 x i8] }
%struct._hash_env_t = type { i8**, i8*, i32, i32*, i32, i32 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { i8** }
%struct._result_t = type { %struct._edit_script_list*, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._edit_script_list = type { %struct._edit_script_list*, %struct._edit_script*, i32, i32, i32, i32, i32 }
%struct._edit_script = type { %struct._edit_script*, i32, i8 }
%struct._sim4_stats = type { i32, i32, i32 }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }

@argv0 = common global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: Warning: could not set locale to POSIX\0A\00", align 1
@options = common global %struct._options_t zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"GTAG,GCAG,GTAC,ATAC\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"A:C:c:E:f:g:I:K:L:M:o:q:R:r:W:X:\00", align 1
@optarg = external global i8*, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"A must be one of 0, 1, 2, 3, or 4.\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Value for option C must be non-negative.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Value for option c must be non-negative.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Cutoff (E) must be within [3,10].\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Filter in percent (f) must be within [0,100].\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Value for option K must be non-negative.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Splice types list has illegal length (%zu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Comma expected instead of %c at position %zuin splice types list.\0A\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"Expected 'A', 'C', 'G' or 'T' instead of '%c' atposition %zu in splice types list.\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Value for option M must be non-negative.\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"R must be one of 0, 1, or 2.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"W must be within [1,15].\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"X must be positive.\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"?? getopt returned character code 0%o ??\0A\00", align 1
@optind = external global i32, align 4
@Usage = internal constant [1399 x i8] c"%s [options] dna est_db\0A\0AThis is SIBsim4 version 0.14.\0A\0AAvailable options (default value in braces[]):\0A  -A <int>  output format\0A             0: exon endpoints only\0A             1: alignment text\0A             3: both exon endpoints and alignment text\0A             4: both exon endpoints and alignment text with polyA info\0A            Note that 2 is unimplemented [%d]\0A  -C <int>  MSP score threshold for the second pass [%d]\0A  -c <int>  minimum score cutoff [%d]\0A  -E <int>  cutoff value [%d]\0A  -f <int>  score filter in percent (0 to disable filtering) [%d]\0A  -g <int>  join exons when gap on genomic and RNA have lengths which\0A            differ at most by this percentage [%d]\0A  -I <int>  window width in which to search for intron splicing [%d]\0A  -K <int>  MSP score threshold for the first pass [%d]\0A  -L <str>  a comma separated list of forward splice-types [%s]\0A  -M <int>  scoring splice sites, evaluate match within M nucleotides [%d]\0A  -o <int>  offset nt positions in dna sequence by this amount [%u]\0A  -q <int>  penalty for a nucleotide mismatch [%d]\0A  -R <int>  direction of search\0A             0: search the '+' (direct) strand only\0A             1: search the '-' strand only\0A             2: search both strands and report the best match\0A            [%d]\0A  -r <int>  reward for a nucleotide match [%d]\0A  -W <int>  word size [%d]\0A  -X <int>  value for terminating word extensions [%d]\0A\00", align 16
@.str.18 = private unnamed_addr constant [31 x i8] c"Cannot read sequence from %s.\0A\00", align 1
@dna_seq_head = common global [256 x i8] zeroinitializer, align 16
@rna_seq_head = common global [256 x i8] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [43 x i8] c"Unrecognized request for EST orientation.\0A\00", align 1
@dna_complement = internal constant [256 x i8] c"                                                                 TVGH  CD  M KN   YSA BWXR       tvgh  cd  m kn   ysa bwxr                                                                                                                                      ", align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"\0A%s%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"(complement)\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Unrecognized option for alignment output.\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"\0APolyA site %u nt, %u/%u A's %u\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"AATAAA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ATTAAA\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"PolyA signal %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"\0APolyA site %u nt, %u/%u A's %u minus strand\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"TTTATT\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"TTTAAT\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"PolyA signal %u minus strand\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Could not open file %s: %s(%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Could not read from %d: %s(%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [239 x i8] c"\0A***  WARNING                                           ***\0A***  there appears to be several sequences in the DNA  ***\0A***  sequence file.  Only the first one will be used,  ***\0A***  which might not be what was intended.             ***\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"; LEN=\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"; LEN=%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Sequence too long: %u\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.38 = private unnamed_addr constant [51 x i8] c"\0ACaught signal %d while processing:\0A%.256s\0A%.256s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %count = alloca i32, align 4
  %seq1 = alloca %struct._seq_t, align 8
  %seq2 = alloca %struct._seq_t, align 8
  %he = alloca %struct._hash_env_t, align 8
  %res = alloca %struct._collec_t, align 8
  %rev_res = alloca %struct._collec_t, align 8
  %c = alloca i32, align 4
  %val = alloca i32, align 4
  %val20 = alloca i32, align 4
  %val42 = alloca i32, align 4
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %val87 = alloca i32, align 4
  %curRes = alloca i32, align 4
  %max_nmatches = alloca i32, align 4
  %r = alloca %struct._result_t*, align 8
  %r188 = alloca %struct._result_t*, align 8
  %r209 = alloca %struct._result_t*, align 8
  %r230 = alloca %struct._result_t*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** @argv0, align 8
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call void (i32)* @signal(i32 11, void (i32)* @bug_handler) #6
  %call4 = call void (i32)* @signal(i32 7, void (i32)* @bug_handler) #6
  store i32 15, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 4
  store i32 3, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  store i32 10, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 4
  store i32 6, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  store i32 15, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  store i32 4, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  store i32 10, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  store i32 -5, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  store i32 2, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  store i32 1, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  store i32 12, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  store i32 12, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 4
  store i32 75, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  store i32 50, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %sw.epilog
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %call5 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 %call5, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %7, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  br label %while.end

if.end.8:                                         ; preds = %while.body
  %8 = load i32, i32* %c, align 4
  switch i32 %8, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb.14
    i32 99, label %sw.bb.19
    i32 69, label %sw.bb.25
    i32 102, label %sw.bb.32
    i32 103, label %sw.bb.37
    i32 73, label %sw.bb.39
    i32 75, label %sw.bb.41
    i32 76, label %sw.bb.47
    i32 77, label %sw.bb.86
    i32 111, label %sw.bb.93
    i32 113, label %sw.bb.95
    i32 82, label %sw.bb.97
    i32 114, label %sw.bb.106
    i32 87, label %sw.bb.108
    i32 88, label %sw.bb.117
    i32 63, label %sw.bb.123
  ]

sw.bb:                                            ; preds = %if.end.8
  %9 = load i8*, i8** @optarg, align 8
  %call9 = call i32 @atoi(i8* %9) #8
  store i32 %call9, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %cmp10 = icmp slt i32 %10, 0
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %cmp11 = icmp sgt i32 %11, 4
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %sw.bb
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable

if.end.13:                                        ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.8
  %12 = load i8*, i8** @optarg, align 8
  %call15 = call i32 @atoi(i8* %12) #8
  store i32 %call15, i32* %val, align 4
  %13 = load i32, i32* %val, align 4
  %cmp16 = icmp slt i32 %13, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.14
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0)) #9
  unreachable

if.end.18:                                        ; preds = %sw.bb.14
  %14 = load i32, i32* %val, align 4
  store i32 %14, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.8
  %15 = load i8*, i8** @optarg, align 8
  %call21 = call i32 @atoi(i8* %15) #8
  store i32 %call21, i32* %val20, align 4
  %16 = load i32, i32* %val20, align 4
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.19
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0)) #9
  unreachable

if.end.24:                                        ; preds = %sw.bb.19
  %17 = load i32, i32* %val20, align 4
  store i32 %17, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.8
  %18 = load i8*, i8** @optarg, align 8
  %call26 = call i32 @atoi(i8* %18) #8
  store i32 %call26, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %cmp27 = icmp slt i32 %19, 3
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %sw.bb.25
  %20 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %cmp29 = icmp sgt i32 %20, 10
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %sw.bb.25
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #9
  unreachable

if.end.31:                                        ; preds = %lor.lhs.false.28
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.8
  %21 = load i8*, i8** @optarg, align 8
  %call33 = call i32 @atoi(i8* %21) #8
  store i32 %call33, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %cmp34 = icmp ugt i32 %22, 100
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.32
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0)) #9
  unreachable

if.end.36:                                        ; preds = %sw.bb.32
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.8
  %23 = load i8*, i8** @optarg, align 8
  %call38 = call i32 @atoi(i8* %23) #8
  store i32 %call38, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.8
  %24 = load i8*, i8** @optarg, align 8
  %call40 = call i32 @atoi(i8* %24) #8
  store i32 %call40, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.8
  %25 = load i8*, i8** @optarg, align 8
  %call43 = call i32 @atoi(i8* %25) #8
  store i32 %call43, i32* %val42, align 4
  %26 = load i32, i32* %val42, align 4
  %cmp44 = icmp slt i32 %26, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.41
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.46:                                        ; preds = %sw.bb.41
  %27 = load i32, i32* %val42, align 4
  store i32 %27, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.8
  %28 = load i8*, i8** @optarg, align 8
  %call48 = call i64 @strlen(i8* %28) #8
  store i64 %call48, i64* %len, align 8
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  %30 = load i64, i64* %len, align 8
  %rem = urem i64 %30, 5
  %cmp49 = icmp ne i64 %rem, 4
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.bb.47
  %31 = load i64, i64* %len, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i64 %31) #9
  unreachable

if.end.51:                                        ; preds = %sw.bb.47
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %len, align 8
  %cmp52 = icmp ult i64 %32, %33
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i64, i64* %i, align 8
  %rem53 = urem i64 %34, 5
  %cmp54 = icmp eq i64 %rem53, 4
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %for.body
  %35 = load i64, i64* %i, align 8
  %36 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %36, i64 %35
  %37 = load i8, i8* %arrayidx56, align 1
  %conv = sext i8 %37 to i32
  %cmp57 = icmp ne i32 %conv, 44
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.then.55
  %38 = load i64, i64* %i, align 8
  %39 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %39, i64 %38
  %40 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %40 to i32
  %41 = load i64, i64* %i, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i32 0, i32 0), i32 %conv61, i64 %41) #9
  unreachable

if.end.62:                                        ; preds = %if.then.55
  %42 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  %add = add i32 %42, 1
  store i32 %add, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  br label %if.end.85

if.else:                                          ; preds = %for.body
  %43 = load i64, i64* %i, align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %44, i64 %43
  %45 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %45 to i32
  %cmp65 = icmp ne i32 %conv64, 65
  br i1 %cmp65, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.else
  %46 = load i64, i64* %i, align 8
  %47 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %47, i64 %46
  %48 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %48 to i32
  %cmp69 = icmp ne i32 %conv68, 67
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.84

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %49 = load i64, i64* %i, align 8
  %50 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %50, i64 %49
  %51 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %51 to i32
  %cmp74 = icmp ne i32 %conv73, 71
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.84

land.lhs.true.76:                                 ; preds = %land.lhs.true.71
  %52 = load i64, i64* %i, align 8
  %53 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %53, i64 %52
  %54 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %54 to i32
  %cmp79 = icmp ne i32 %conv78, 84
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %land.lhs.true.76
  %55 = load i64, i64* %i, align 8
  %56 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %56, i64 %55
  %57 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %57 to i32
  %58 = load i64, i64* %i, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i32 0, i32 0), i32 %conv83, i64 %58) #9
  unreachable

if.end.84:                                        ; preds = %land.lhs.true.76, %land.lhs.true.71, %land.lhs.true, %if.else
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %59 = load i64, i64* %i, align 8
  %inc = add i64 %59, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.end.8
  %60 = load i8*, i8** @optarg, align 8
  %call88 = call i32 @atoi(i8* %60) #8
  store i32 %call88, i32* %val87, align 4
  %61 = load i32, i32* %val87, align 4
  %cmp89 = icmp slt i32 %61, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %sw.bb.86
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0)) #9
  unreachable

if.end.92:                                        ; preds = %sw.bb.86
  %62 = load i32, i32* %val87, align 4
  store i32 %62, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.8
  %63 = load i8*, i8** @optarg, align 8
  %call94 = call i32 @atoi(i8* %63) #8
  store i32 %call94, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.8
  %64 = load i8*, i8** @optarg, align 8
  %call96 = call i32 @atoi(i8* %64) #8
  store i32 %call96, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.8
  %65 = load i8*, i8** @optarg, align 8
  %call98 = call i32 @atoi(i8* %65) #8
  store i32 %call98, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %cmp99 = icmp slt i32 %66, 0
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %sw.bb.97
  %67 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %cmp102 = icmp sgt i32 %67, 2
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %sw.bb.97
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)) #9
  unreachable

if.end.105:                                       ; preds = %lor.lhs.false.101
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.8
  %68 = load i8*, i8** @optarg, align 8
  %call107 = call i32 @atoi(i8* %68) #8
  store i32 %call107, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.8
  %69 = load i8*, i8** @optarg, align 8
  %call109 = call i32 @atoi(i8* %69) #8
  store i32 %call109, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %cmp110 = icmp slt i32 %70, 1
  br i1 %cmp110, label %if.then.115, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %sw.bb.108
  %71 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %cmp113 = icmp sgt i32 %71, 15
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false.112, %sw.bb.108
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0)) #9
  unreachable

if.end.116:                                       ; preds = %lor.lhs.false.112
  br label %sw.epilog

sw.bb.117:                                        ; preds = %if.end.8
  %72 = load i8*, i8** @optarg, align 8
  %call118 = call i32 @atoi(i8* %72) #8
  store i32 %call118, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 4
  %cmp119 = icmp slt i32 %73, 1
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %sw.bb.117
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0)) #9
  unreachable

if.end.122:                                       ; preds = %sw.bb.117
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end.8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load i32, i32* %c, align 4
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i32 %75)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %if.end.122, %if.end.116, %sw.bb.106, %if.end.105, %sw.bb.95, %sw.bb.93, %if.end.92, %for.end, %if.end.46, %sw.bb.39, %sw.bb.37, %if.end.36, %if.end.31, %if.end.24, %if.end.18, %if.end.13
  br label %while.body

while.end:                                        ; preds = %if.then.7
  %76 = load i32, i32* @optind, align 4
  %add125 = add nsw i32 %76, 2
  %77 = load i32, i32* %argc.addr, align 4
  %cmp126 = icmp ne i32 %add125, %77
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %while.end
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i8**, i8*** %argv.addr, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %79, i64 0
  %80 = load i8*, i8** %arrayidx129, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 4
  %83 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 4
  %89 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 4
  %93 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %94 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 4
  %95 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %96 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([1399 x i8], [1399 x i8]* @Usage, i32 0, i32 0), i8* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i8* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %while.end
  %97 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %97 to i64
  %98 = load i8**, i8*** %argv.addr, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %98, i64 %idxprom
  %99 = load i8*, i8** %arrayidx132, align 8
  call void @init_seq(i8* %99, %struct._seq_t* %seq1)
  %100 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %call133 = call i32 @get_next_seq(%struct._seq_t* %seq1, i32 %100, i32 1)
  %cmp134 = icmp ne i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.end.131
  %101 = load i32, i32* @optind, align 4
  %idxprom137 = sext i32 %101 to i64
  %102 = load i8**, i8*** %argv.addr, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %102, i64 %idxprom137
  %103 = load i8*, i8** %arrayidx138, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* %103) #9
  unreachable

if.end.139:                                       ; preds = %if.end.131
  %header = getelementptr inbounds %struct._seq_t, %struct._seq_t* %seq1, i32 0, i32 1
  %104 = load i8*, i8** %header, align 8
  %call140 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dna_seq_head, i32 0, i32 0), i8* %104, i64 256) #6
  %105 = load i32, i32* @optind, align 4
  %add141 = add nsw i32 %105, 1
  %idxprom142 = sext i32 %add141 to i64
  %106 = load i8**, i8*** %argv.addr, align 8
  %arrayidx143 = getelementptr inbounds i8*, i8** %106, i64 %idxprom142
  %107 = load i8*, i8** %arrayidx143, align 8
  call void @init_seq(i8* %107, %struct._seq_t* %seq2)
  %call144 = call i32 @get_next_seq(%struct._seq_t* %seq2, i32 0, i32 0)
  %cmp145 = icmp ne i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %if.end.139
  %108 = load i32, i32* @optind, align 4
  %add148 = add nsw i32 %108, 1
  %idxprom149 = sext i32 %add148 to i64
  %109 = load i8**, i8*** %argv.addr, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %109, i64 %idxprom149
  %110 = load i8*, i8** %arrayidx150, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* %110) #9
  unreachable

if.end.151:                                       ; preds = %if.end.139
  call void @init_encoding()
  %111 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %seq = getelementptr inbounds %struct._seq_t, %struct._seq_t* %seq1, i32 0, i32 2
  %112 = load i8*, i8** %seq, align 8
  %len152 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %seq1, i32 0, i32 5
  %113 = load i32, i32* %len152, align 4
  call void @init_hash_env(%struct._hash_env_t* %he, i32 %111, i8* %112, i32 %113)
  call void @init_col(%struct._collec_t* %res, i32 1)
  call void @init_col(%struct._collec_t* %rev_res, i32 1)
  call void @bld_table(%struct._hash_env_t* %he)
  call void @init_splice_junctions()
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.276, %if.end.151
  %114 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond
  %call153 = call i32 @get_next_seq(%struct._seq_t* %seq2, i32 0, i32 0)
  %cmp154 = icmp eq i32 %call153, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %115 = phi i1 [ true, %while.cond ], [ %cmp154, %lor.rhs ]
  br i1 %115, label %while.body.156, label %while.end.278

while.body.156:                                   ; preds = %lor.end
  %header157 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %seq2, i32 0, i32 1
  %116 = load i8*, i8** %header157, align 8
  %call158 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rna_seq_head, i32 0, i32 0), i8* %116, i64 256) #6
  %117 = load i32, i32* %count, align 4
  %inc159 = add nsw i32 %117, 1
  store i32 %inc159, i32* %count, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  switch i32 %118, label %sw.default.163 [
    i32 0, label %sw.bb.160
    i32 2, label %sw.bb.161
    i32 1, label %sw.bb.162
  ]

sw.bb.160:                                        ; preds = %while.body.156
  call void @SIM4(%struct._hash_env_t* %he, %struct._seq_t* %seq2, %struct._collec_t* %res)
  br label %sw.epilog.164

sw.bb.161:                                        ; preds = %while.body.156
  call void @SIM4(%struct._hash_env_t* %he, %struct._seq_t* %seq2, %struct._collec_t* %res)
  br label %sw.bb.162

sw.bb.162:                                        ; preds = %while.body.156, %sw.bb.161
  call void @seq_revcomp_inplace(%struct._seq_t* %seq2)
  call void @SIM4(%struct._hash_env_t* %he, %struct._seq_t* %seq2, %struct._collec_t* %rev_res)
  br label %sw.epilog.164

sw.default.163:                                   ; preds = %while.body.156
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0)) #9
  unreachable

sw.epilog.164:                                    ; preds = %sw.bb.162, %sw.bb.160
  %119 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %cmp165 = icmp ugt i32 %119, 0
  br i1 %cmp165, label %if.then.167, label %if.end.246

if.then.167:                                      ; preds = %sw.epilog.164
  store i32 0, i32* %max_nmatches, align 4
  store i32 0, i32* %curRes, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.180, %if.then.167
  %120 = load i32, i32* %curRes, align 4
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 1
  %121 = load i32, i32* %nb, align 4
  %cmp169 = icmp ult i32 %120, %121
  br i1 %cmp169, label %for.body.171, label %for.end.182

for.body.171:                                     ; preds = %for.cond.168
  %122 = load i32, i32* %curRes, align 4
  %idxprom172 = zext i32 %122 to i64
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 0
  %result = bitcast %union._collec_elt_t* %e to %struct._result_t***
  %123 = load %struct._result_t**, %struct._result_t*** %result, align 8
  %arrayidx173 = getelementptr inbounds %struct._result_t*, %struct._result_t** %123, i64 %idxprom172
  %124 = load %struct._result_t*, %struct._result_t** %arrayidx173, align 8
  store %struct._result_t* %124, %struct._result_t** %r, align 8
  %125 = load %struct._result_t*, %struct._result_t** %r, align 8
  %st = getelementptr inbounds %struct._result_t, %struct._result_t* %125, i32 0, i32 5
  %nmatches = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st, i32 0, i32 0
  %126 = load i32, i32* %nmatches, align 4
  %127 = load i32, i32* %max_nmatches, align 4
  %cmp174 = icmp ugt i32 %126, %127
  br i1 %cmp174, label %if.then.176, label %if.end.179

if.then.176:                                      ; preds = %for.body.171
  %128 = load %struct._result_t*, %struct._result_t** %r, align 8
  %st177 = getelementptr inbounds %struct._result_t, %struct._result_t* %128, i32 0, i32 5
  %nmatches178 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st177, i32 0, i32 0
  %129 = load i32, i32* %nmatches178, align 4
  store i32 %129, i32* %max_nmatches, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.176, %for.body.171
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %130 = load i32, i32* %curRes, align 4
  %inc181 = add i32 %130, 1
  store i32 %inc181, i32* %curRes, align 4
  br label %for.cond.168

for.end.182:                                      ; preds = %for.cond.168
  store i32 0, i32* %curRes, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.201, %for.end.182
  %131 = load i32, i32* %curRes, align 4
  %nb184 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 1
  %132 = load i32, i32* %nb184, align 4
  %cmp185 = icmp ult i32 %131, %132
  br i1 %cmp185, label %for.body.187, label %for.end.203

for.body.187:                                     ; preds = %for.cond.183
  %133 = load i32, i32* %curRes, align 4
  %idxprom189 = zext i32 %133 to i64
  %e190 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 0
  %result191 = bitcast %union._collec_elt_t* %e190 to %struct._result_t***
  %134 = load %struct._result_t**, %struct._result_t*** %result191, align 8
  %arrayidx192 = getelementptr inbounds %struct._result_t*, %struct._result_t** %134, i64 %idxprom189
  %135 = load %struct._result_t*, %struct._result_t** %arrayidx192, align 8
  store %struct._result_t* %135, %struct._result_t** %r188, align 8
  %136 = load %struct._result_t*, %struct._result_t** %r188, align 8
  %st193 = getelementptr inbounds %struct._result_t, %struct._result_t* %136, i32 0, i32 5
  %nmatches194 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st193, i32 0, i32 0
  %137 = load i32, i32* %nmatches194, align 4
  %138 = load i32, i32* %max_nmatches, align 4
  %cmp195 = icmp ugt i32 %137, %138
  br i1 %cmp195, label %if.then.197, label %if.end.200

if.then.197:                                      ; preds = %for.body.187
  %139 = load %struct._result_t*, %struct._result_t** %r188, align 8
  %st198 = getelementptr inbounds %struct._result_t, %struct._result_t* %139, i32 0, i32 5
  %nmatches199 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st198, i32 0, i32 0
  %140 = load i32, i32* %nmatches199, align 4
  store i32 %140, i32* %max_nmatches, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.197, %for.body.187
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %141 = load i32, i32* %curRes, align 4
  %inc202 = add i32 %141, 1
  store i32 %inc202, i32* %curRes, align 4
  br label %for.cond.183

for.end.203:                                      ; preds = %for.cond.183
  %142 = load i32, i32* %max_nmatches, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 4
  %mul = mul i32 %142, %143
  %div = udiv i32 %mul, 100
  store i32 %div, i32* %max_nmatches, align 4
  store i32 0, i32* %curRes, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.222, %for.end.203
  %144 = load i32, i32* %curRes, align 4
  %nb205 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 1
  %145 = load i32, i32* %nb205, align 4
  %cmp206 = icmp ult i32 %144, %145
  br i1 %cmp206, label %for.body.208, label %for.end.224

for.body.208:                                     ; preds = %for.cond.204
  %146 = load i32, i32* %curRes, align 4
  %idxprom210 = zext i32 %146 to i64
  %e211 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 0
  %result212 = bitcast %union._collec_elt_t* %e211 to %struct._result_t***
  %147 = load %struct._result_t**, %struct._result_t*** %result212, align 8
  %arrayidx213 = getelementptr inbounds %struct._result_t*, %struct._result_t** %147, i64 %idxprom210
  %148 = load %struct._result_t*, %struct._result_t** %arrayidx213, align 8
  store %struct._result_t* %148, %struct._result_t** %r209, align 8
  %149 = load %struct._result_t*, %struct._result_t** %r209, align 8
  %st214 = getelementptr inbounds %struct._result_t, %struct._result_t* %149, i32 0, i32 5
  %nmatches215 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st214, i32 0, i32 0
  %150 = load i32, i32* %nmatches215, align 4
  %151 = load i32, i32* %max_nmatches, align 4
  %cmp216 = icmp ult i32 %150, %151
  br i1 %cmp216, label %if.then.218, label %if.end.221

if.then.218:                                      ; preds = %for.body.208
  %152 = load %struct._result_t*, %struct._result_t** %r209, align 8
  %st219 = getelementptr inbounds %struct._result_t, %struct._result_t* %152, i32 0, i32 5
  %nmatches220 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st219, i32 0, i32 0
  store i32 0, i32* %nmatches220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.218, %for.body.208
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %153 = load i32, i32* %curRes, align 4
  %inc223 = add i32 %153, 1
  store i32 %inc223, i32* %curRes, align 4
  br label %for.cond.204

for.end.224:                                      ; preds = %for.cond.204
  store i32 0, i32* %curRes, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.243, %for.end.224
  %154 = load i32, i32* %curRes, align 4
  %nb226 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 1
  %155 = load i32, i32* %nb226, align 4
  %cmp227 = icmp ult i32 %154, %155
  br i1 %cmp227, label %for.body.229, label %for.end.245

for.body.229:                                     ; preds = %for.cond.225
  %156 = load i32, i32* %curRes, align 4
  %idxprom231 = zext i32 %156 to i64
  %e232 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 0
  %result233 = bitcast %union._collec_elt_t* %e232 to %struct._result_t***
  %157 = load %struct._result_t**, %struct._result_t*** %result233, align 8
  %arrayidx234 = getelementptr inbounds %struct._result_t*, %struct._result_t** %157, i64 %idxprom231
  %158 = load %struct._result_t*, %struct._result_t** %arrayidx234, align 8
  store %struct._result_t* %158, %struct._result_t** %r230, align 8
  %159 = load %struct._result_t*, %struct._result_t** %r230, align 8
  %st235 = getelementptr inbounds %struct._result_t, %struct._result_t* %159, i32 0, i32 5
  %nmatches236 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st235, i32 0, i32 0
  %160 = load i32, i32* %nmatches236, align 4
  %161 = load i32, i32* %max_nmatches, align 4
  %cmp237 = icmp ult i32 %160, %161
  br i1 %cmp237, label %if.then.239, label %if.end.242

if.then.239:                                      ; preds = %for.body.229
  %162 = load %struct._result_t*, %struct._result_t** %r230, align 8
  %st240 = getelementptr inbounds %struct._result_t, %struct._result_t* %162, i32 0, i32 5
  %nmatches241 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st240, i32 0, i32 0
  store i32 0, i32* %nmatches241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.239, %for.body.229
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %163 = load i32, i32* %curRes, align 4
  %inc244 = add i32 %163, 1
  store i32 %inc244, i32* %curRes, align 4
  br label %for.cond.225

for.end.245:                                      ; preds = %for.cond.225
  br label %if.end.246

if.end.246:                                       ; preds = %for.end.245, %sw.epilog.164
  store i32 0, i32* %curRes, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.256, %if.end.246
  %164 = load i32, i32* %curRes, align 4
  %nb248 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 1
  %165 = load i32, i32* %nb248, align 4
  %cmp249 = icmp ult i32 %164, %165
  br i1 %cmp249, label %for.body.251, label %for.end.258

for.body.251:                                     ; preds = %for.cond.247
  %166 = load i32, i32* %curRes, align 4
  %idxprom252 = zext i32 %166 to i64
  %e253 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 0
  %result254 = bitcast %union._collec_elt_t* %e253 to %struct._result_t***
  %167 = load %struct._result_t**, %struct._result_t*** %result254, align 8
  %arrayidx255 = getelementptr inbounds %struct._result_t*, %struct._result_t** %167, i64 %idxprom252
  %168 = load %struct._result_t*, %struct._result_t** %arrayidx255, align 8
  call void @print_res(%struct._result_t* %168, i32 1, %struct._seq_t* %seq1, %struct._seq_t* %seq2)
  br label %for.inc.256

for.inc.256:                                      ; preds = %for.body.251
  %169 = load i32, i32* %curRes, align 4
  %inc257 = add i32 %169, 1
  store i32 %inc257, i32* %curRes, align 4
  br label %for.cond.247

for.end.258:                                      ; preds = %for.cond.247
  %nb259 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %rev_res, i32 0, i32 1
  store i32 0, i32* %nb259, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %tobool260 = icmp ne i32 %170, 0
  br i1 %tobool260, label %land.lhs.true.261, label %if.end.264

land.lhs.true.261:                                ; preds = %for.end.258
  %171 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %tobool262 = icmp ne i32 %171, 0
  br i1 %tobool262, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %land.lhs.true.261
  call void @seq_revcomp_inplace(%struct._seq_t* %seq2)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %land.lhs.true.261, %for.end.258
  store i32 0, i32* %curRes, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.274, %if.end.264
  %172 = load i32, i32* %curRes, align 4
  %nb266 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 1
  %173 = load i32, i32* %nb266, align 4
  %cmp267 = icmp ult i32 %172, %173
  br i1 %cmp267, label %for.body.269, label %for.end.276

for.body.269:                                     ; preds = %for.cond.265
  %174 = load i32, i32* %curRes, align 4
  %idxprom270 = zext i32 %174 to i64
  %e271 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 0
  %result272 = bitcast %union._collec_elt_t* %e271 to %struct._result_t***
  %175 = load %struct._result_t**, %struct._result_t*** %result272, align 8
  %arrayidx273 = getelementptr inbounds %struct._result_t*, %struct._result_t** %175, i64 %idxprom270
  %176 = load %struct._result_t*, %struct._result_t** %arrayidx273, align 8
  call void @print_res(%struct._result_t* %176, i32 0, %struct._seq_t* %seq1, %struct._seq_t* %seq2)
  br label %for.inc.274

for.inc.274:                                      ; preds = %for.body.269
  %177 = load i32, i32* %curRes, align 4
  %inc275 = add i32 %177, 1
  store i32 %inc275, i32* %curRes, align 4
  br label %for.cond.265

for.end.276:                                      ; preds = %for.cond.265
  %nb277 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %res, i32 0, i32 1
  store i32 0, i32* %nb277, align 4
  br label %while.cond

while.end.278:                                    ; preds = %lor.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.278, %if.then.128
  %178 = load i32, i32* %retval
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @bug_handler(i32 %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* %signum.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i32 %3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dna_seq_head, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rna_seq_head, i32 0, i32 0))
  call void @abort() #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: noreturn
declare void @fatal(i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @init_seq(i8* %fName, %struct._seq_t* %sp) #0 {
entry:
  %fName.addr = alloca i8*, align 8
  %sp.addr = alloca %struct._seq_t*, align 8
  store i8* %fName, i8** %fName.addr, align 8
  store %struct._seq_t* %sp, %struct._seq_t** %sp.addr, align 8
  %0 = load i8*, i8** %fName.addr, align 8
  %1 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fName1 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %1, i32 0, i32 0
  store i8* %0, i8** %fName1, align 8
  %2 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %header = getelementptr inbounds %struct._seq_t, %struct._seq_t* %2, i32 0, i32 1
  store i8* null, i8** %header, align 8
  %3 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %seq = getelementptr inbounds %struct._seq_t, %struct._seq_t* %3, i32 0, i32 2
  store i8* null, i8** %seq, align 8
  %4 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb = getelementptr inbounds %struct._seq_t, %struct._seq_t* %4, i32 0, i32 3
  call void @init_buf(%struct._read_buf_t* %rb)
  %5 = load i8*, i8** %fName.addr, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %fName.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %6, i32 0)
  %7 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd = getelementptr inbounds %struct._seq_t, %struct._seq_t* %7, i32 0, i32 4
  store i32 %call, i32* %fd, align 4
  %8 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd2 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %8, i32 0, i32 4
  %9 = load i32, i32* %fd2, align 4
  %cmp3 = icmp eq i32 %9, -1
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load i8*, i8** %fName.addr, align 8
  %call5 = call i32* @__errno_location() #11
  %11 = load i32, i32* %call5, align 4
  %call6 = call i8* @strerror(i32 %11) #6
  %call7 = call i32* @__errno_location() #11
  %12 = load i32, i32* %call7, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* %10, i8* %call6, i32 %12) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %13 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd8 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %13, i32 0, i32 4
  store i32 0, i32* %fd8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  %14 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len = getelementptr inbounds %struct._seq_t, %struct._seq_t* %14, i32 0, i32 5
  store i32 0, i32* %len, align 4
  %15 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %maxHead = getelementptr inbounds %struct._seq_t, %struct._seq_t* %15, i32 0, i32 6
  store i32 0, i32* %maxHead, align 4
  %16 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %max = getelementptr inbounds %struct._seq_t, %struct._seq_t* %16, i32 0, i32 7
  store i32 0, i32* %max, align 4
  %17 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb10 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %17, i32 0, i32 3
  %18 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd11 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %18, i32 0, i32 4
  %19 = load i32, i32* %fd11, align 4
  %call12 = call i8* @read_line_buf(%struct._read_buf_t* %rb10, i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_next_seq(%struct._seq_t* %sp, i32 %offset, i32 %warnMultiSeq) #0 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca %struct._seq_t*, align 8
  %offset.addr = alloca i32, align 4
  %warnMultiSeq.addr = alloca i32, align 4
  %lenStr = alloca i32, align 4
  %headerLen = alloca i32, align 4
  %buf = alloca i8*, align 8
  %res = alloca i32, align 4
  %c = alloca i8, align 1
  %s = alloca i8*, align 8
  store %struct._seq_t* %sp, %struct._seq_t** %sp.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %warnMultiSeq, i32* %warnMultiSeq.addr, align 4
  store i32 24, i32* %lenStr, align 4
  %0 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb = getelementptr inbounds %struct._seq_t, %struct._seq_t* %0, i32 0, i32 3
  %line = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb, i32 0, i32 0
  %1 = load i8*, i8** %line, align 8
  store i8* %1, i8** %buf, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb1 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %2, i32 0, i32 3
  %lc = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb1, i32 0, i32 2
  %3 = load i32, i32* %lc, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb4 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %7, i32 0, i32 3
  %8 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd = getelementptr inbounds %struct._seq_t, %struct._seq_t* %8, i32 0, i32 4
  %9 = load i32, i32* %fd, align 4
  %call = call i8* @read_line_buf(%struct._read_buf_t* %rb4, i32 %9)
  store i8* %call, i8** %buf, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb5 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %10, i32 0, i32 3
  %lc6 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb5, i32 0, i32 2
  %11 = load i32, i32* %lc6, align 4
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %12 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb9 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %12, i32 0, i32 3
  %lc10 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb9, i32 0, i32 2
  %13 = load i32, i32* %lc10, align 4
  %add = add i32 %13, 24
  %add11 = add i32 %add, 1
  %14 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %maxHead = getelementptr inbounds %struct._seq_t, %struct._seq_t* %14, i32 0, i32 6
  %15 = load i32, i32* %maxHead, align 4
  %cmp12 = icmp ugt i32 %add11, %15
  br i1 %cmp12, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end
  %16 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb15 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %16, i32 0, i32 3
  %lc16 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb15, i32 0, i32 2
  %17 = load i32, i32* %lc16, align 4
  %add17 = add i32 %17, 24
  %add18 = add i32 %add17, 1
  %18 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %maxHead19 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %18, i32 0, i32 6
  store i32 %add18, i32* %maxHead19, align 4
  %19 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %header = getelementptr inbounds %struct._seq_t, %struct._seq_t* %19, i32 0, i32 1
  %20 = load i8*, i8** %header, align 8
  %21 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %maxHead20 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %21, i32 0, i32 6
  %22 = load i32, i32* %maxHead20, align 4
  %conv21 = zext i32 %22 to i64
  %mul = mul i64 %conv21, 1
  %call22 = call i8* @xrealloc(i8* %20, i64 %mul)
  %23 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %header23 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %23, i32 0, i32 1
  store i8* %call22, i8** %header23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.14, %if.end
  %24 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb25 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %24, i32 0, i32 3
  %lc26 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb25, i32 0, i32 2
  %25 = load i32, i32* %lc26, align 4
  store i32 %25, i32* %headerLen, align 4
  %26 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %header27 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %header27, align 8
  %28 = load i8*, i8** %buf, align 8
  %29 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb28 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %29, i32 0, i32 3
  %lc29 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb28, i32 0, i32 2
  %30 = load i32, i32* %lc29, align 4
  %add30 = add i32 %30, 1
  %conv31 = zext i32 %add30 to i64
  %mul32 = mul i64 %conv31, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 %mul32, i32 1, i1 false)
  %31 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len = getelementptr inbounds %struct._seq_t, %struct._seq_t* %31, i32 0, i32 5
  store i32 0, i32* %len, align 4
  %32 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb33 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %32, i32 0, i32 3
  %33 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd34 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %33, i32 0, i32 4
  %34 = load i32, i32* %fd34, align 4
  %call35 = call i8* @read_line_buf(%struct._read_buf_t* %rb33, i32 %34)
  store i8* %call35, i8** %buf, align 8
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.end.111, %if.end.24
  %35 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb37 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %35, i32 0, i32 3
  %lc38 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb37, i32 0, i32 2
  %36 = load i32, i32* %lc38, align 4
  %cmp39 = icmp ugt i32 %36, 0
  br i1 %cmp39, label %land.rhs.41, label %land.end.46

land.rhs.41:                                      ; preds = %while.cond.36
  %37 = load i8*, i8** %buf, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %38 to i32
  %cmp44 = icmp ne i32 %conv43, 62
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.41, %while.cond.36
  %39 = phi i1 [ false, %while.cond.36 ], [ %cmp44, %land.rhs.41 ]
  br i1 %39, label %while.body.47, label %while.end.115

while.body.47:                                    ; preds = %land.end.46
  %40 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len48 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %40, i32 0, i32 5
  %41 = load i32, i32* %len48, align 4
  %42 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb49 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %42, i32 0, i32 3
  %lc50 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb49, i32 0, i32 2
  %43 = load i32, i32* %lc50, align 4
  %add51 = add i32 %41, %43
  %add52 = add i32 %add51, 1
  %44 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %max = getelementptr inbounds %struct._seq_t, %struct._seq_t* %44, i32 0, i32 7
  %45 = load i32, i32* %max, align 4
  %cmp53 = icmp ugt i32 %add52, %45
  br i1 %cmp53, label %if.then.55, label %if.end.78

if.then.55:                                       ; preds = %while.body.47
  %46 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len56 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %46, i32 0, i32 5
  %47 = load i32, i32* %len56, align 4
  %48 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb57 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %48, i32 0, i32 3
  %lc58 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb57, i32 0, i32 2
  %49 = load i32, i32* %lc58, align 4
  %add59 = add i32 %47, %49
  %add60 = add i32 %add59, 1
  %50 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %max61 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %50, i32 0, i32 7
  %51 = load i32, i32* %max61, align 4
  %add62 = add i32 %51, 262144
  %cmp63 = icmp ult i32 %add60, %add62
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.55
  %52 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %max65 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %52, i32 0, i32 7
  %53 = load i32, i32* %max65, align 4
  %add66 = add i32 %53, 262144
  br label %cond.end

cond.false:                                       ; preds = %if.then.55
  %54 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len67 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %54, i32 0, i32 5
  %55 = load i32, i32* %len67, align 4
  %56 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb68 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %56, i32 0, i32 3
  %lc69 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb68, i32 0, i32 2
  %57 = load i32, i32* %lc69, align 4
  %add70 = add i32 %55, %57
  %add71 = add i32 %add70, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add66, %cond.true ], [ %add71, %cond.false ]
  %58 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %max72 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %58, i32 0, i32 7
  store i32 %cond, i32* %max72, align 4
  %59 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %seq = getelementptr inbounds %struct._seq_t, %struct._seq_t* %59, i32 0, i32 2
  %60 = load i8*, i8** %seq, align 8
  %61 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %max73 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %61, i32 0, i32 7
  %62 = load i32, i32* %max73, align 4
  %conv74 = zext i32 %62 to i64
  %mul75 = mul i64 %conv74, 1
  %call76 = call i8* @xrealloc(i8* %60, i64 %mul75)
  %63 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %seq77 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %63, i32 0, i32 2
  store i8* %call76, i8** %seq77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end, %while.body.47
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.110, %if.end.78
  %64 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %buf, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %c, align 1
  %conv80 = zext i8 %65 to i32
  %cmp81 = icmp ne i32 %conv80, 0
  br i1 %cmp81, label %while.body.83, label %while.end.111

while.body.83:                                    ; preds = %while.cond.79
  %66 = load i8, i8* %c, align 1
  %conv84 = zext i8 %66 to i32
  %idxprom = sext i32 %conv84 to i64
  %call85 = call i16** @__ctype_b_loc() #11
  %67 = load i16*, i16** %call85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %67, i64 %idxprom
  %68 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %68 to i32
  %and = and i32 %conv87, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %while.body.83
  %69 = load i8, i8* %c, align 1
  %70 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len89 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %70, i32 0, i32 5
  %71 = load i32, i32* %len89, align 4
  %inc = add i32 %71, 1
  store i32 %inc, i32* %len89, align 4
  %idxprom90 = zext i32 %71 to i64
  %72 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %seq91 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %72, i32 0, i32 2
  %73 = load i8*, i8** %seq91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %73, i64 %idxprom90
  store i8 %69, i8* %arrayidx92, align 1
  br label %if.end.110

if.else:                                          ; preds = %while.body.83
  %74 = load i8, i8* %c, align 1
  %conv93 = zext i8 %74 to i32
  %idxprom94 = sext i32 %conv93 to i64
  %call95 = call i16** @__ctype_b_loc() #11
  %75 = load i16*, i16** %call95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %75, i64 %idxprom94
  %76 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %76 to i32
  %and98 = and i32 %conv97, 512
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.else
  %77 = load i8, i8* %c, align 1
  %conv101 = zext i8 %77 to i32
  %call102 = call i32 @toupper(i32 %conv101) #6
  %conv103 = trunc i32 %call102 to i8
  %78 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len104 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %78, i32 0, i32 5
  %79 = load i32, i32* %len104, align 4
  %inc105 = add i32 %79, 1
  store i32 %inc105, i32* %len104, align 4
  %idxprom106 = zext i32 %79 to i64
  %80 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %seq107 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %80, i32 0, i32 2
  %81 = load i8*, i8** %seq107, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %81, i64 %idxprom106
  store i8 %conv103, i8* %arrayidx108, align 1
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.100, %if.else
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.88
  br label %while.cond.79

while.end.111:                                    ; preds = %while.cond.79
  %82 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb112 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %82, i32 0, i32 3
  %83 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %fd113 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %83, i32 0, i32 4
  %84 = load i32, i32* %fd113, align 4
  %call114 = call i8* @read_line_buf(%struct._read_buf_t* %rb112, i32 %84)
  store i8* %call114, i8** %buf, align 8
  br label %while.cond.36

while.end.115:                                    ; preds = %land.end.46
  %85 = load i32, i32* %warnMultiSeq.addr, align 4
  %tobool116 = icmp ne i32 %85, 0
  br i1 %tobool116, label %land.lhs.true, label %if.end.123

land.lhs.true:                                    ; preds = %while.end.115
  %86 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %rb117 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %86, i32 0, i32 3
  %lc118 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %rb117, i32 0, i32 2
  %87 = load i32, i32* %lc118, align 4
  %cmp119 = icmp ugt i32 %87, 0
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %land.lhs.true
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %land.lhs.true, %while.end.115
  %89 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len124 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %89, i32 0, i32 5
  %90 = load i32, i32* %len124, align 4
  %idxprom125 = zext i32 %90 to i64
  %91 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %seq126 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %91, i32 0, i32 2
  %92 = load i8*, i8** %seq126, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %92, i64 %idxprom125
  store i8 0, i8* %arrayidx127, align 1
  %93 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %header128 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %93, i32 0, i32 1
  %94 = load i8*, i8** %header128, align 8
  %call129 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #8
  store i8* %call129, i8** %buf, align 8
  %95 = load i8*, i8** %buf, align 8
  %tobool130 = icmp ne i8* %95, null
  br i1 %tobool130, label %if.then.131, label %if.end.150

if.then.131:                                      ; preds = %if.end.123
  %96 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 6
  store i8* %add.ptr, i8** %s, align 8
  %97 = load i32, i32* %headerLen, align 4
  %sub = sub i32 %97, 6
  store i32 %sub, i32* %headerLen, align 4
  br label %while.cond.132

while.cond.132:                                   ; preds = %while.body.140, %if.then.131
  %98 = load i8*, i8** %s, align 8
  %99 = load i8, i8* %98, align 1
  %conv133 = sext i8 %99 to i32
  %idxprom134 = sext i32 %conv133 to i64
  %call135 = call i16** @__ctype_b_loc() #11
  %100 = load i16*, i16** %call135, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %100, i64 %idxprom134
  %101 = load i16, i16* %arrayidx136, align 2
  %conv137 = zext i16 %101 to i32
  %and138 = and i32 %conv137, 2048
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %while.body.140, label %while.end.143

while.body.140:                                   ; preds = %while.cond.132
  %102 = load i8*, i8** %s, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %add.ptr141, i8** %s, align 8
  %103 = load i32, i32* %headerLen, align 4
  %sub142 = sub i32 %103, 1
  store i32 %sub142, i32* %headerLen, align 4
  br label %while.cond.132

while.end.143:                                    ; preds = %while.cond.132
  br label %while.cond.144

while.cond.144:                                   ; preds = %while.body.146, %while.end.143
  %104 = load i8*, i8** %s, align 8
  %105 = load i8, i8* %104, align 1
  %tobool145 = icmp ne i8 %105, 0
  br i1 %tobool145, label %while.body.146, label %while.end.149

while.body.146:                                   ; preds = %while.cond.144
  %106 = load i8*, i8** %s, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr147, i8** %s, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %buf, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr148, i8** %buf, align 8
  store i8 %107, i8* %108, align 1
  br label %while.cond.144

while.end.149:                                    ; preds = %while.cond.144
  br label %if.end.150

if.end.150:                                       ; preds = %while.end.149, %if.end.123
  %109 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %header151 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %109, i32 0, i32 1
  %110 = load i8*, i8** %header151, align 8
  %111 = load i32, i32* %headerLen, align 4
  %idx.ext = zext i32 %111 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %110, i64 %idx.ext
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr152, i64 -1
  store i8* %add.ptr153, i8** %buf, align 8
  br label %while.cond.154

while.cond.154:                                   ; preds = %while.body.169, %if.end.150
  %112 = load i8*, i8** %buf, align 8
  %113 = load i8, i8* %112, align 1
  %conv155 = sext i8 %113 to i32
  %idxprom156 = sext i32 %conv155 to i64
  %call157 = call i16** @__ctype_b_loc() #11
  %114 = load i16*, i16** %call157, align 8
  %arrayidx158 = getelementptr inbounds i16, i16* %114, i64 %idxprom156
  %115 = load i16, i16* %arrayidx158, align 2
  %conv159 = zext i16 %115 to i32
  %and160 = and i32 %conv159, 2
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.154
  %116 = load i8*, i8** %buf, align 8
  %117 = load i8, i8* %116, align 1
  %conv162 = sext i8 %117 to i32
  %idxprom163 = sext i32 %conv162 to i64
  %call164 = call i16** @__ctype_b_loc() #11
  %118 = load i16*, i16** %call164, align 8
  %arrayidx165 = getelementptr inbounds i16, i16* %118, i64 %idxprom163
  %119 = load i16, i16* %arrayidx165, align 2
  %conv166 = zext i16 %119 to i32
  %and167 = and i32 %conv166, 8192
  %tobool168 = icmp ne i32 %and167, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.154
  %120 = phi i1 [ true, %while.cond.154 ], [ %tobool168, %lor.rhs ]
  br i1 %120, label %while.body.169, label %while.end.171

while.body.169:                                   ; preds = %lor.end
  %121 = load i8*, i8** %buf, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %121, i64 -1
  store i8* %add.ptr170, i8** %buf, align 8
  br label %while.cond.154

while.end.171:                                    ; preds = %lor.end
  %122 = load i8*, i8** %buf, align 8
  %add.ptr172 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len173 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %123, i32 0, i32 5
  %124 = load i32, i32* %len173, align 4
  %125 = load i32, i32* %offset.addr, align 4
  %add174 = add i32 %124, %125
  %call175 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr172, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 %add174) #6
  store i32 %call175, i32* %res, align 4
  %126 = load i32, i32* %res, align 4
  %cmp176 = icmp slt i32 %126, 0
  br i1 %cmp176, label %if.then.180, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.171
  %127 = load i32, i32* %res, align 4
  %cmp178 = icmp sge i32 %127, 24
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %lor.lhs.false, %while.end.171
  %128 = load %struct._seq_t*, %struct._seq_t** %sp.addr, align 8
  %len181 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %128, i32 0, i32 5
  %129 = load i32, i32* %len181, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i32 %129) #9
  unreachable

if.end.182:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.182, %if.then
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare void @init_encoding() #2

declare void @init_hash_env(%struct._hash_env_t*, i32, i8*, i32) #2

declare void @init_col(%struct._collec_t*, i32) #2

declare void @bld_table(%struct._hash_env_t*) #2

; Function Attrs: nounwind uwtable
define internal void @init_splice_junctions() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8, align 1
  %0 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct._junction_t*
  store %struct._junction_t* %1, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp3 = icmp ult i32 %4, 4
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %mul6 = mul i32 %5, 5
  %6 = load i32, i32* %j, align 4
  %add = add i32 %mul6, %6
  %idxprom = zext i32 %add to i64
  %7 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i8, i8* %c, align 1
  %10 = load i32, i32* %j, align 4
  %idxprom7 = zext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %11 to i64
  %12 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx9 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %12, i64 %idxprom8
  %fwd = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %fwd, i32 0, i64 %idxprom7
  store i8 %9, i8* %arrayidx10, align 1
  %13 = load i8, i8* %c, align 1
  %idxprom11 = zext i8 %13 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @dna_complement, i32 0, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %15 = load i32, i32* %j, align 4
  %sub = sub i32 3, %15
  %idxprom13 = zext i32 %sub to i64
  %16 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %16 to i64
  %17 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %arrayidx15 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %17, i64 %idxprom14
  %rev = getelementptr inbounds %struct._junction_t, %struct._junction_t* %arrayidx15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %rev, i32 0, i64 %idxprom13
  store i8 %14, i8* %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %18 = load i32, i32* %j, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc18 = add i32 %19, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

declare void @SIM4(%struct._hash_env_t*, %struct._seq_t*, %struct._collec_t*) #2

; Function Attrs: nounwind uwtable
define internal void @seq_revcomp_inplace(%struct._seq_t* %seq) #0 {
entry:
  %seq.addr = alloca %struct._seq_t*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct._seq_t* %seq, %struct._seq_t** %seq.addr, align 8
  %0 = load %struct._seq_t*, %struct._seq_t** %seq.addr, align 8
  %seq1 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %0, i32 0, i32 2
  %1 = load i8*, i8** %seq1, align 8
  store i8* %1, i8** %s, align 8
  %2 = load %struct._seq_t*, %struct._seq_t** %seq.addr, align 8
  %seq2 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %2, i32 0, i32 2
  %3 = load i8*, i8** %seq2, align 8
  %4 = load %struct._seq_t*, %struct._seq_t** %seq.addr, align 8
  %len = getelementptr inbounds %struct._seq_t, %struct._seq_t* %4, i32 0, i32 5
  %5 = load i32, i32* %len, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i8*, i8** %s, align 8
  %7 = load i8*, i8** %t, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr, i8** %t, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @dna_complement, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  store i8 %10, i8* %c, align 1
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom3 = zext i8 %12 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @dna_complement, i32 0, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1
  %14 = load i8*, i8** %t, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i8, i8* %c, align 1
  %16 = load i8*, i8** %s, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr5, i8** %s, align 8
  store i8 %15, i8* %16, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_res(%struct._result_t* %res, i32 %rev, %struct._seq_t* %seq1, %struct._seq_t* %seq2) #0 {
entry:
  %res.addr = alloca %struct._result_t*, align 8
  %rev.addr = alloca i32, align 4
  %seq1.addr = alloca %struct._seq_t*, align 8
  %seq2.addr = alloca %struct._seq_t*, align 8
  %i = alloca i32, align 4
  store %struct._result_t* %res, %struct._result_t** %res.addr, align 8
  store i32 %rev, i32* %rev.addr, align 4
  store %struct._seq_t* %seq1, %struct._seq_t** %seq1.addr, align 8
  store %struct._seq_t* %seq2, %struct._seq_t** %seq2.addr, align 8
  %0 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %st = getelementptr inbounds %struct._result_t, %struct._result_t* %0, i32 0, i32 5
  %nmatches = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %st, i32 0, i32 0
  %1 = load i32, i32* %nmatches, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  %cmp = icmp uge i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %3 = load %struct._seq_t*, %struct._seq_t** %seq1.addr, align 8
  %header = getelementptr inbounds %struct._seq_t, %struct._seq_t* %3, i32 0, i32 1
  %4 = load i8*, i8** %header, align 8
  %5 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %header1 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %5, i32 0, i32 1
  %6 = load i8*, i8** %header1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* %4, i8* %6)
  %7 = load i32, i32* %rev.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol = getelementptr inbounds %struct._result_t, %struct._result_t* %9, i32 0, i32 1
  %10 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %direction = getelementptr inbounds %struct._result_t, %struct._result_t* %10, i32 0, i32 4
  %11 = load i32, i32* %direction, align 4
  call void @print_exons(%struct._collec_t* %eCol, i32 %11)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %12 = load %struct._seq_t*, %struct._seq_t** %seq1.addr, align 8
  %seq = getelementptr inbounds %struct._seq_t, %struct._seq_t* %12, i32 0, i32 2
  %13 = load i8*, i8** %seq, align 8
  %14 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq5 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %14, i32 0, i32 2
  %15 = load i8*, i8** %seq5, align 8
  %16 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  call void @print_align_lat(i8* %13, i8* %15, %struct._result_t* %16)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %17 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol7 = getelementptr inbounds %struct._result_t, %struct._result_t* %17, i32 0, i32 1
  %18 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %direction8 = getelementptr inbounds %struct._result_t, %struct._result_t* %18, i32 0, i32 4
  %19 = load i32, i32* %direction8, align 4
  call void @print_exons(%struct._collec_t* %eCol7, i32 %19)
  %20 = load %struct._seq_t*, %struct._seq_t** %seq1.addr, align 8
  %seq9 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %20, i32 0, i32 2
  %21 = load i8*, i8** %seq9, align 8
  %22 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq10 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %22, i32 0, i32 2
  %23 = load i8*, i8** %seq10, align 8
  %24 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  call void @print_align_lat(i8* %21, i8* %23, %struct._result_t* %24)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %25 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol12 = getelementptr inbounds %struct._result_t, %struct._result_t* %25, i32 0, i32 1
  %26 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %direction13 = getelementptr inbounds %struct._result_t, %struct._result_t* %26, i32 0, i32 4
  %27 = load i32, i32* %direction13, align 4
  call void @print_exons(%struct._collec_t* %eCol12, i32 %27)
  %28 = load %struct._seq_t*, %struct._seq_t** %seq1.addr, align 8
  %29 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %30 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol14 = getelementptr inbounds %struct._result_t, %struct._result_t* %30, i32 0, i32 1
  %31 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %st15 = getelementptr inbounds %struct._result_t, %struct._result_t* %31, i32 0, i32 5
  call void @print_polyA_info(%struct._seq_t* %28, %struct._seq_t* %29, %struct._collec_t* %eCol14, %struct._sim4_stats* %st15)
  %32 = load %struct._seq_t*, %struct._seq_t** %seq1.addr, align 8
  %seq16 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %32, i32 0, i32 2
  %33 = load i8*, i8** %seq16, align 8
  %34 = load %struct._seq_t*, %struct._seq_t** %seq2.addr, align 8
  %seq17 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %34, i32 0, i32 2
  %35 = load i8*, i8** %seq17, align 8
  %36 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  call void @print_align_lat(i8* %33, i8* %35, %struct._result_t* %36)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0)) #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.6, %sw.bb.4, %sw.bb
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %sw.epilog, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %37 = load i32, i32* %i, align 4
  %38 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol20 = getelementptr inbounds %struct._result_t, %struct._result_t* %38, i32 0, i32 1
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol20, i32 0, i32 1
  %39 = load i32, i32* %nb, align 4
  %cmp21 = icmp ult i32 %37, %39
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %idxprom = zext i32 %40 to i64
  %41 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol22 = getelementptr inbounds %struct._result_t, %struct._result_t* %41, i32 0, i32 1
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol22, i32 0, i32 0
  %elt = bitcast %union._collec_elt_t* %e to i8***
  %42 = load i8**, i8*** %elt, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %42, i64 %idxprom
  %43 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %43) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %eCol23 = getelementptr inbounds %struct._result_t, %struct._result_t* %45, i32 0, i32 1
  %e24 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %eCol23, i32 0, i32 0
  %elt25 = bitcast %union._collec_elt_t* %e24 to i8***
  %46 = load i8**, i8*** %elt25, align 8
  %47 = bitcast i8** %46 to i8*
  call void @free(i8* %47) #6
  %48 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %sList = getelementptr inbounds %struct._result_t, %struct._result_t* %48, i32 0, i32 0
  %49 = load %struct._edit_script_list*, %struct._edit_script_list** %sList, align 8
  %tobool26 = icmp ne %struct._edit_script_list* %49, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.end
  %50 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %sList28 = getelementptr inbounds %struct._result_t, %struct._result_t* %50, i32 0, i32 0
  %51 = load %struct._edit_script_list*, %struct._edit_script_list** %sList28, align 8
  call void @free_align(%struct._edit_script_list* %51)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.end
  %52 = load %struct._result_t*, %struct._result_t** %res.addr, align 8
  %53 = bitcast %struct._result_t* %52 to i8*
  call void @free(i8* %53) #6
  ret void
}

declare i8* @xmalloc(i64) #2

declare i32 @printf(i8*, ...) #2

declare void @print_exons(%struct._collec_t*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_align_lat(i8* %seq1, i8* %seq2, %struct._result_t* %r) #0 {
entry:
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %r.addr = alloca %struct._result_t*, align 8
  %S = alloca i32*, align 8
  %head = alloca %struct._edit_script_list*, align 8
  %aligns = alloca %struct._edit_script_list*, align 8
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store %struct._result_t* %r, %struct._result_t** %r.addr, align 8
  %0 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %sList = getelementptr inbounds %struct._result_t, %struct._result_t* %0, i32 0, i32 0
  %1 = load %struct._edit_script_list*, %struct._edit_script_list** %sList, align 8
  %cmp = icmp eq %struct._edit_script_list* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %sList1 = getelementptr inbounds %struct._result_t, %struct._result_t* %2, i32 0, i32 0
  %3 = load %struct._edit_script_list*, %struct._edit_script_list** %sList1, align 8
  store %struct._edit_script_list* %3, %struct._edit_script_list** %aligns, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct._edit_script_list*, %struct._edit_script_list** %aligns, align 8
  %cmp2 = icmp ne %struct._edit_script_list* %4, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._edit_script_list*, %struct._edit_script_list** %aligns, align 8
  store %struct._edit_script_list* %5, %struct._edit_script_list** %head, align 8
  %6 = load %struct._edit_script_list*, %struct._edit_script_list** %aligns, align 8
  %next_script = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %6, i32 0, i32 0
  %7 = load %struct._edit_script_list*, %struct._edit_script_list** %next_script, align 8
  store %struct._edit_script_list* %7, %struct._edit_script_list** %aligns, align 8
  %8 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %len2 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %8, i32 0, i32 5
  %9 = load i32, i32* %len2, align 4
  %mul = mul i32 2, %9
  %add = add i32 %mul, 1
  %add3 = add i32 %add, 1
  %conv = zext i32 %add3 to i64
  %mul4 = mul i64 %conv, 4
  %call = call i8* @xmalloc(i64 %mul4)
  %10 = bitcast i8* %call to i32*
  store i32* %10, i32** %S, align 8
  %11 = load i32*, i32** %S, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %S, align 8
  %12 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %script = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %12, i32 0, i32 1
  %13 = load %struct._edit_script*, %struct._edit_script** %script, align 8
  %14 = load i32*, i32** %S, align 8
  call void @S2A(%struct._edit_script* %13, i32* %14, i32 0)
  %15 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %script5 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %15, i32 0, i32 1
  %16 = load %struct._edit_script*, %struct._edit_script** %script5, align 8
  call void @Free_script(%struct._edit_script* %16)
  %17 = load i8*, i8** %seq1.addr, align 8
  %18 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %offset1 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %18, i32 0, i32 2
  %19 = load i32, i32* %offset1, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 -1
  %20 = load i8*, i8** %seq2.addr, align 8
  %21 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %offset2 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %21, i32 0, i32 3
  %22 = load i32, i32* %offset2, align 4
  %idx.ext8 = zext i32 %22 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %20, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 -1
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 -1
  %23 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %len1 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %23, i32 0, i32 4
  %24 = load i32, i32* %len1, align 4
  %25 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %len212 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %25, i32 0, i32 5
  %26 = load i32, i32* %len212, align 4
  %27 = load i32*, i32** %S, align 8
  %28 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %offset113 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %28, i32 0, i32 2
  %29 = load i32, i32* %offset113, align 4
  %30 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %offset214 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %30, i32 0, i32 3
  %31 = load i32, i32* %offset214, align 4
  %32 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %eCol = getelementptr inbounds %struct._result_t, %struct._result_t* %32, i32 0, i32 1
  %33 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %direction = getelementptr inbounds %struct._result_t, %struct._result_t* %33, i32 0, i32 4
  %34 = load i32, i32* %direction, align 4
  call void @IDISPLAY(i8* %add.ptr7, i8* %add.ptr11, i32 %24, i32 %26, i32* %27, i32 %29, i32 %31, %struct._collec_t* %eCol, i32 %34)
  %35 = load i32*, i32** %S, align 8
  %add.ptr15 = getelementptr inbounds i32, i32* %35, i64 -1
  %36 = bitcast i32* %add.ptr15 to i8*
  call void @free(i8* %36) #6
  %37 = load %struct._edit_script_list*, %struct._edit_script_list** %head, align 8
  %38 = bitcast %struct._edit_script_list* %37 to i8*
  call void @free(i8* %38) #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct._result_t*, %struct._result_t** %r.addr, align 8
  %sList16 = getelementptr inbounds %struct._result_t, %struct._result_t* %39, i32 0, i32 0
  store %struct._edit_script_list* null, %struct._edit_script_list** %sList16, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_polyA_info(%struct._seq_t* %s1, %struct._seq_t* %s2, %struct._collec_t* %eCol, %struct._sim4_stats* %st) #0 {
entry:
  %s1.addr = alloca %struct._seq_t*, align 8
  %s2.addr = alloca %struct._seq_t*, align 8
  %eCol.addr = alloca %struct._collec_t*, align 8
  %st.addr = alloca %struct._sim4_stats*, align 8
  %cnt = alloca i32, align 4
  %cntDna = alloca i32, align 4
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  %scanLen = alloca i32, align 4
  %pSig = alloca i8*, align 8
  %buf = alloca [51 x i8], align 16
  %e = alloca %struct._exon_t*, align 8
  %cnt106 = alloca i32, align 4
  %cntDna107 = alloca i32, align 4
  %pos108 = alloca i32, align 4
  %i109 = alloca i32, align 4
  %pSig110 = alloca i8*, align 8
  %buf111 = alloca [51 x i8], align 16
  %e112 = alloca %struct._exon_t*, align 8
  store %struct._seq_t* %s1, %struct._seq_t** %s1.addr, align 8
  store %struct._seq_t* %s2, %struct._seq_t** %s2.addr, align 8
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store %struct._sim4_stats* %st, %struct._sim4_stats** %st.addr, align 8
  %0 = load %struct._sim4_stats*, %struct._sim4_stats** %st.addr, align 8
  %polyA_cut = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %0, i32 0, i32 1
  %1 = load i32, i32* %polyA_cut, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.103

if.then:                                          ; preds = %entry
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %cntDna, align 4
  store i32 50, i32* %scanLen, align 4
  %2 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %2, i32 0, i32 1
  %3 = load i32, i32* %nb, align 4
  %sub = sub i32 %3, 1
  %idxprom = zext i32 %sub to i64
  %4 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e1 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %4, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e1 to %struct._exon_t***
  %5 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %5, i64 %idxprom
  %6 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %6, %struct._exon_t** %e, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %pos, align 4
  %cmp = icmp ult i32 %7, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %8, i32 0, i32 3
  %9 = load i32, i32* %to2, align 4
  %10 = load i32, i32* %pos, align 4
  %add = add i32 %9, %10
  %11 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %len = getelementptr inbounds %struct._seq_t, %struct._seq_t* %11, i32 0, i32 5
  %12 = load i32, i32* %len, align 4
  %cmp2 = icmp ult i32 %add, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 3
  %15 = load i32, i32* %to23, align 4
  %16 = load i32, i32* %pos, align 4
  %add4 = add i32 %15, %16
  %idxprom5 = zext i32 %add4 to i64
  %17 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %seq = getelementptr inbounds %struct._seq_t, %struct._seq_t* %17, i32 0, i32 2
  %18 = load i8*, i8** %seq, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %18, i64 %idxprom5
  %19 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %19 to i32
  %cmp7 = icmp eq i32 %conv, 65
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %20 = load i32, i32* %cnt, align 4
  %add10 = add i32 %20, 1
  store i32 %add10, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %pos, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %22 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to211 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 3
  %23 = load i32, i32* %to211, align 4
  %24 = load i32, i32* %pos, align 4
  %add12 = add i32 %23, %24
  %25 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %len13 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %25, i32 0, i32 5
  %26 = load i32, i32* %len13, align 4
  %cmp14 = icmp ult i32 %add12, %26
  br i1 %cmp14, label %land.rhs.16, label %land.end.25

land.rhs.16:                                      ; preds = %while.cond
  %27 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to217 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %27, i32 0, i32 3
  %28 = load i32, i32* %to217, align 4
  %29 = load i32, i32* %pos, align 4
  %add18 = add i32 %28, %29
  %idxprom19 = zext i32 %add18 to i64
  %30 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %seq20 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %30, i32 0, i32 2
  %31 = load i8*, i8** %seq20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i64 %idxprom19
  %32 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %32 to i32
  %cmp23 = icmp eq i32 %conv22, 65
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.16, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp23, %land.rhs.16 ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.25
  %34 = load i32, i32* %pos, align 4
  %add26 = add i32 %34, 1
  store i32 %add26, i32* %pos, align 4
  %35 = load i32, i32* %cnt, align 4
  %add27 = add i32 %35, 1
  store i32 %add27, i32* %cnt, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.25
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.47, %while.end
  %36 = load i32, i32* %i, align 4
  %37 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %len29 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %37, i32 0, i32 5
  %38 = load i32, i32* %len29, align 4
  %cmp30 = icmp ult i32 %36, %38
  br i1 %cmp30, label %land.rhs.32, label %land.end.35

land.rhs.32:                                      ; preds = %for.cond.28
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %pos, align 4
  %cmp33 = icmp ult i32 %39, %40
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.32, %for.cond.28
  %41 = phi i1 [ false, %for.cond.28 ], [ %cmp33, %land.rhs.32 ]
  br i1 %41, label %for.body.36, label %for.end.49

for.body.36:                                      ; preds = %land.end.35
  %42 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %42, i32 0, i32 2
  %43 = load i32, i32* %to1, align 4
  %44 = load i32, i32* %i, align 4
  %add37 = add i32 %43, %44
  %idxprom38 = zext i32 %add37 to i64
  %45 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %seq39 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %45, i32 0, i32 2
  %46 = load i8*, i8** %seq39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %46, i64 %idxprom38
  %47 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %47 to i32
  %cmp42 = icmp eq i32 %conv41, 65
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body.36
  %48 = load i32, i32* %cntDna, align 4
  %add45 = add i32 %48, 1
  store i32 %add45, i32* %cntDna, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.body.36
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %49 = load i32, i32* %i, align 4
  %inc48 = add i32 %49, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.28

for.end.49:                                       ; preds = %land.end.35
  %50 = load i32, i32* %pos, align 4
  %51 = load i32, i32* %cnt, align 4
  %52 = load i32, i32* %cntDna, align 4
  %53 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to150 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 2
  %54 = load i32, i32* %to150, align 4
  %add51 = add i32 %54, 1
  %55 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add52 = add i32 %add51, %55
  %56 = load i32, i32* %pos, align 4
  %57 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %seq53 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %57, i32 0, i32 2
  %58 = load i8*, i8** %seq53, align 8
  %59 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to254 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %59, i32 0, i32 3
  %60 = load i32, i32* %to254, align 4
  %idx.ext = zext i32 %60 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %61 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to255 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %61, i32 0, i32 3
  %62 = load i32, i32* %to255, align 4
  %add56 = add i32 %62, 1
  %63 = load i32, i32* %pos, align 4
  %64 = load i32, i32* %i, align 4
  %65 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %seq57 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %65, i32 0, i32 2
  %66 = load i8*, i8** %seq57, align 8
  %67 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to158 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %67, i32 0, i32 2
  %68 = load i32, i32* %to158, align 4
  %idx.ext59 = zext i32 %68 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %66, i64 %idx.ext59
  %69 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to161 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %69, i32 0, i32 2
  %70 = load i32, i32* %to161, align 4
  %add62 = add i32 %70, 1
  %71 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add63 = add i32 %add62, %71
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0), i32 %50, i32 %51, i32 %52, i32 %add52, i32 %56, i8* %add.ptr, i32 %add56, i32 %63, i32 %64, i8* %add.ptr60, i32 %add63)
  %72 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to164 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %72, i32 0, i32 2
  %73 = load i32, i32* %to164, align 4
  %74 = load i32, i32* %scanLen, align 4
  %cmp65 = icmp ult i32 %73, %74
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %for.end.49
  %75 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to168 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %75, i32 0, i32 2
  %76 = load i32, i32* %to168, align 4
  store i32 %76, i32* %scanLen, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %for.end.49
  %arraydecay = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %77 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %seq70 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %77, i32 0, i32 2
  %78 = load i8*, i8** %seq70, align 8
  %79 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to171 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %79, i32 0, i32 2
  %80 = load i32, i32* %to171, align 4
  %idx.ext72 = zext i32 %80 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %78, i64 %idx.ext72
  %81 = load i32, i32* %scanLen, align 4
  %idx.ext74 = zext i32 %81 to i64
  %idx.neg = sub i64 0, %idx.ext74
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr73, i64 %idx.neg
  %82 = load i32, i32* %scanLen, align 4
  %conv76 = zext i32 %82 to i64
  %call77 = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr75, i64 %conv76) #6
  %83 = load i32, i32* %scanLen, align 4
  %idxprom78 = zext i32 %83 to i64
  %arrayidx79 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i64 %idxprom78
  store i8 0, i8* %arrayidx79, align 1
  %arraydecay80 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %call81 = call i8* @strstr(i8* %arraydecay80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #8
  store i8* %call81, i8** %pSig, align 8
  %84 = load i8*, i8** %pSig, align 8
  %cmp82 = icmp eq i8* %84, null
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.69
  %arraydecay85 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %call86 = call i8* @strstr(i8* %arraydecay85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #8
  store i8* %call86, i8** %pSig, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.69
  %85 = load i8*, i8** %pSig, align 8
  %cmp88 = icmp ne i8* %85, null
  br i1 %cmp88, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %if.end.87
  %86 = load i8*, i8** %pSig, align 8
  %arraydecay91 = getelementptr inbounds [51 x i8], [51 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %86 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay91 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %87 = load %struct._exon_t*, %struct._exon_t** %e, align 8
  %to192 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %87, i32 0, i32 2
  %88 = load i32, i32* %to192, align 4
  %conv93 = zext i32 %88 to i64
  %add94 = add nsw i64 %sub.ptr.sub, %conv93
  %89 = load i32, i32* %scanLen, align 4
  %conv95 = zext i32 %89 to i64
  %sub96 = sub nsw i64 %add94, %conv95
  %add97 = add nsw i64 %sub96, 1
  %90 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %conv98 = zext i32 %90 to i64
  %add99 = add nsw i64 %add97, %conv98
  %conv100 = trunc i64 %add99 to i32
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i32 %conv100)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.90, %if.end.87
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %entry
  %91 = load %struct._sim4_stats*, %struct._sim4_stats** %st.addr, align 8
  %polyT_cut = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %91, i32 0, i32 2
  %92 = load i32, i32* %polyT_cut, align 4
  %tobool104 = icmp ne i32 %92, 0
  br i1 %tobool104, label %if.then.105, label %if.end.237

if.then.105:                                      ; preds = %if.end.103
  store i32 0, i32* %cnt106, align 4
  store i32 0, i32* %cntDna107, align 4
  %93 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e113 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %93, i32 0, i32 0
  %exon114 = bitcast %union._collec_elt_t* %e113 to %struct._exon_t***
  %94 = load %struct._exon_t**, %struct._exon_t*** %exon114, align 8
  %arrayidx115 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %94, i64 0
  %95 = load %struct._exon_t*, %struct._exon_t** %arrayidx115, align 8
  store %struct._exon_t* %95, %struct._exon_t** %e112, align 8
  store i32 0, i32* %pos108, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.137, %if.then.105
  %96 = load i32, i32* %pos108, align 4
  %cmp117 = icmp ult i32 %96, 10
  br i1 %cmp117, label %land.rhs.119, label %land.end.123

land.rhs.119:                                     ; preds = %for.cond.116
  %97 = load i32, i32* %pos108, align 4
  %98 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %98, i32 0, i32 1
  %99 = load i32, i32* %from2, align 4
  %sub120 = sub i32 %99, 1
  %cmp121 = icmp ult i32 %97, %sub120
  br label %land.end.123

land.end.123:                                     ; preds = %land.rhs.119, %for.cond.116
  %100 = phi i1 [ false, %for.cond.116 ], [ %cmp121, %land.rhs.119 ]
  br i1 %100, label %for.body.124, label %for.end.139

for.body.124:                                     ; preds = %land.end.123
  %101 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from2125 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %101, i32 0, i32 1
  %102 = load i32, i32* %from2125, align 4
  %sub126 = sub i32 %102, 2
  %103 = load i32, i32* %pos108, align 4
  %sub127 = sub i32 %sub126, %103
  %idxprom128 = zext i32 %sub127 to i64
  %104 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %seq129 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %104, i32 0, i32 2
  %105 = load i8*, i8** %seq129, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %105, i64 %idxprom128
  %106 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %106 to i32
  %cmp132 = icmp eq i32 %conv131, 84
  br i1 %cmp132, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %for.body.124
  %107 = load i32, i32* %cnt106, align 4
  %add135 = add i32 %107, 1
  store i32 %add135, i32* %cnt106, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %for.body.124
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %108 = load i32, i32* %pos108, align 4
  %inc138 = add i32 %108, 1
  store i32 %inc138, i32* %pos108, align 4
  br label %for.cond.116

for.end.139:                                      ; preds = %land.end.123
  br label %while.cond.140

while.cond.140:                                   ; preds = %while.body.156, %for.end.139
  %109 = load i32, i32* %pos108, align 4
  %110 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from2141 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %110, i32 0, i32 1
  %111 = load i32, i32* %from2141, align 4
  %sub142 = sub i32 %111, 1
  %cmp143 = icmp ult i32 %109, %sub142
  br i1 %cmp143, label %land.rhs.145, label %land.end.155

land.rhs.145:                                     ; preds = %while.cond.140
  %112 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from2146 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %112, i32 0, i32 1
  %113 = load i32, i32* %from2146, align 4
  %sub147 = sub i32 %113, 2
  %114 = load i32, i32* %pos108, align 4
  %sub148 = sub i32 %sub147, %114
  %idxprom149 = zext i32 %sub148 to i64
  %115 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %seq150 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %115, i32 0, i32 2
  %116 = load i8*, i8** %seq150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %116, i64 %idxprom149
  %117 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %117 to i32
  %cmp153 = icmp eq i32 %conv152, 84
  br label %land.end.155

land.end.155:                                     ; preds = %land.rhs.145, %while.cond.140
  %118 = phi i1 [ false, %while.cond.140 ], [ %cmp153, %land.rhs.145 ]
  br i1 %118, label %while.body.156, label %while.end.159

while.body.156:                                   ; preds = %land.end.155
  %119 = load i32, i32* %pos108, align 4
  %add157 = add i32 %119, 1
  store i32 %add157, i32* %pos108, align 4
  %120 = load i32, i32* %cnt106, align 4
  %add158 = add i32 %120, 1
  store i32 %add158, i32* %cnt106, align 4
  br label %while.cond.140

while.end.159:                                    ; preds = %land.end.155
  store i32 0, i32* %i109, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.181, %while.end.159
  %121 = load i32, i32* %i109, align 4
  %122 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %122, i32 0, i32 0
  %123 = load i32, i32* %from1, align 4
  %sub161 = sub i32 %123, 1
  %cmp162 = icmp ult i32 %121, %sub161
  br i1 %cmp162, label %land.rhs.164, label %land.end.167

land.rhs.164:                                     ; preds = %for.cond.160
  %124 = load i32, i32* %i109, align 4
  %125 = load i32, i32* %pos108, align 4
  %cmp165 = icmp ult i32 %124, %125
  br label %land.end.167

land.end.167:                                     ; preds = %land.rhs.164, %for.cond.160
  %126 = phi i1 [ false, %for.cond.160 ], [ %cmp165, %land.rhs.164 ]
  br i1 %126, label %for.body.168, label %for.end.183

for.body.168:                                     ; preds = %land.end.167
  %127 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1169 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %127, i32 0, i32 0
  %128 = load i32, i32* %from1169, align 4
  %sub170 = sub i32 %128, 2
  %129 = load i32, i32* %i109, align 4
  %sub171 = sub i32 %sub170, %129
  %idxprom172 = zext i32 %sub171 to i64
  %130 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %seq173 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %130, i32 0, i32 2
  %131 = load i8*, i8** %seq173, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %131, i64 %idxprom172
  %132 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %132 to i32
  %cmp176 = icmp eq i32 %conv175, 84
  br i1 %cmp176, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %for.body.168
  %133 = load i32, i32* %cntDna107, align 4
  %add179 = add i32 %133, 1
  store i32 %add179, i32* %cntDna107, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.178, %for.body.168
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end.180
  %134 = load i32, i32* %i109, align 4
  %inc182 = add i32 %134, 1
  store i32 %inc182, i32* %i109, align 4
  br label %for.cond.160

for.end.183:                                      ; preds = %land.end.167
  %135 = load i32, i32* %pos108, align 4
  %136 = load i32, i32* %cnt106, align 4
  %137 = load i32, i32* %cntDna107, align 4
  %138 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1184 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %138, i32 0, i32 0
  %139 = load i32, i32* %from1184, align 4
  %sub185 = sub i32 %139, 1
  %140 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add186 = add i32 %sub185, %140
  %141 = load i32, i32* %pos108, align 4
  %142 = load %struct._seq_t*, %struct._seq_t** %s2.addr, align 8
  %seq187 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %142, i32 0, i32 2
  %143 = load i8*, i8** %seq187, align 8
  %144 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from2188 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %144, i32 0, i32 1
  %145 = load i32, i32* %from2188, align 4
  %sub189 = sub i32 %145, 1
  %146 = load i32, i32* %pos108, align 4
  %sub190 = sub i32 %sub189, %146
  %idx.ext191 = zext i32 %sub190 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %143, i64 %idx.ext191
  %147 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from2193 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %147, i32 0, i32 1
  %148 = load i32, i32* %from2193, align 4
  %sub194 = sub i32 %148, 1
  %149 = load i32, i32* %pos108, align 4
  %150 = load i32, i32* %i109, align 4
  %151 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %seq195 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %151, i32 0, i32 2
  %152 = load i8*, i8** %seq195, align 8
  %153 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1196 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %153, i32 0, i32 0
  %154 = load i32, i32* %from1196, align 4
  %sub197 = sub i32 %154, 1
  %155 = load i32, i32* %i109, align 4
  %sub198 = sub i32 %sub197, %155
  %idx.ext199 = zext i32 %sub198 to i64
  %add.ptr200 = getelementptr inbounds i8, i8* %152, i64 %idx.ext199
  %156 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1201 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %156, i32 0, i32 0
  %157 = load i32, i32* %from1201, align 4
  %sub202 = sub i32 %157, 1
  %158 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add203 = add i32 %sub202, %158
  %call204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i32 0, i32 0), i32 %135, i32 %136, i32 %137, i32 %add186, i32 %141, i8* %add.ptr192, i32 %sub194, i32 %149, i32 %150, i8* %add.ptr200, i32 %add203)
  %arraydecay205 = getelementptr inbounds [51 x i8], [51 x i8]* %buf111, i32 0, i32 0
  %159 = load %struct._seq_t*, %struct._seq_t** %s1.addr, align 8
  %seq206 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %159, i32 0, i32 2
  %160 = load i8*, i8** %seq206, align 8
  %161 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1207 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %161, i32 0, i32 0
  %162 = load i32, i32* %from1207, align 4
  %idx.ext208 = zext i32 %162 to i64
  %add.ptr209 = getelementptr inbounds i8, i8* %160, i64 %idx.ext208
  %add.ptr210 = getelementptr inbounds i8, i8* %add.ptr209, i64 -1
  %call211 = call i8* @strncpy(i8* %arraydecay205, i8* %add.ptr210, i64 50) #6
  %arrayidx212 = getelementptr inbounds [51 x i8], [51 x i8]* %buf111, i32 0, i64 50
  store i8 0, i8* %arrayidx212, align 1
  %arraydecay213 = getelementptr inbounds [51 x i8], [51 x i8]* %buf111, i32 0, i32 0
  %call214 = call i8* @strstr(i8* %arraydecay213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)) #8
  store i8* %call214, i8** %pSig110, align 8
  %163 = load i8*, i8** %pSig110, align 8
  %cmp215 = icmp eq i8* %163, null
  br i1 %cmp215, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %for.end.183
  %arraydecay218 = getelementptr inbounds [51 x i8], [51 x i8]* %buf111, i32 0, i32 0
  %call219 = call i8* @strstr(i8* %arraydecay218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #8
  store i8* %call219, i8** %pSig110, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %for.end.183
  %164 = load i8*, i8** %pSig110, align 8
  %cmp221 = icmp ne i8* %164, null
  br i1 %cmp221, label %if.then.223, label %if.end.236

if.then.223:                                      ; preds = %if.end.220
  %165 = load i8*, i8** %pSig110, align 8
  %arraydecay224 = getelementptr inbounds [51 x i8], [51 x i8]* %buf111, i32 0, i32 0
  %sub.ptr.lhs.cast225 = ptrtoint i8* %165 to i64
  %sub.ptr.rhs.cast226 = ptrtoint i8* %arraydecay224 to i64
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226
  %166 = load %struct._exon_t*, %struct._exon_t** %e112, align 8
  %from1228 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %166, i32 0, i32 0
  %167 = load i32, i32* %from1228, align 4
  %conv229 = zext i32 %167 to i64
  %add230 = add nsw i64 %sub.ptr.sub227, %conv229
  %add231 = add nsw i64 %add230, 5
  %168 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %conv232 = zext i32 %168 to i64
  %add233 = add nsw i64 %add231, %conv232
  %conv234 = trunc i64 %add233 to i32
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), i32 %conv234)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.223, %if.end.220
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.103
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @free_align(%struct._edit_script_list*) #2

declare void @S2A(%struct._edit_script*, i32*, i32) #2

declare void @Free_script(%struct._edit_script*) #2

declare void @IDISPLAY(i8*, i8*, i32, i32, i32*, i32, i32, %struct._collec_t*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @init_buf(%struct._read_buf_t* %b) #0 {
entry:
  %b.addr = alloca %struct._read_buf_t*, align 8
  store %struct._read_buf_t* %b, %struct._read_buf_t** %b.addr, align 8
  %call = call i8* @xmalloc(i64 4096)
  %0 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %0, i32 0, i32 0
  store i8* %call, i8** %line, align 8
  %1 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lmax = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %1, i32 0, i32 1
  store i32 4096, i32* %lmax, align 4
  %2 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %2, i32 0, i32 2
  store i32 0, i32* %lc, align 4
  %3 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %3, i32 0, i32 3
  store i32 0, i32* %ic, align 4
  ret void
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal i8* @read_line_buf(%struct._read_buf_t* %b, i32 %fd) #0 {
entry:
  %retval = alloca i8*, align 8
  %b.addr = alloca %struct._read_buf_t*, align 8
  %fd.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %rc = alloca i64, align 8
  %cur = alloca i64, align 8
  store %struct._read_buf_t* %b, %struct._read_buf_t** %b.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* null, i8** %s, align 8
  store i64 0, i64* %cur, align 8
  %0 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %0, i32 0, i32 2
  store i32 0, i32* %lc, align 4
  %1 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %call = call i8* @shuffle_line(%struct._read_buf_t* %1, i64* %cur)
  store i8* %call, i8** %s, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %in = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %in, i32 0, i32 0
  %5 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %5, i32 0, i32 3
  %6 = load i32, i32* %ic, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %7 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic1 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %7, i32 0, i32 3
  %8 = load i32, i32* %ic1, align 4
  %sub = sub i32 4096, %8
  %sub2 = sub i32 %sub, 1
  %conv = zext i32 %sub2 to i64
  %call3 = call i64 @read(i32 %3, i8* %add.ptr, i64 %conv)
  store i64 %call3, i64* %rc, align 8
  %cmp4 = icmp eq i64 %call3, -1
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  %call7 = call i32* @__errno_location() #11
  %9 = load i32, i32* %call7, align 4
  %cmp8 = icmp ne i32 %9, 4
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.then.6
  %10 = load i32, i32* %fd.addr, align 4
  %call11 = call i32* @__errno_location() #11
  %11 = load i32, i32* %call11, align 4
  %call12 = call i8* @strerror(i32 %11) #6
  %call13 = call i32* @__errno_location() #11
  %12 = load i32, i32* %call13, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i32 %10, i8* %call12, i32 %12) #9
  unreachable

if.end.14:                                        ; preds = %if.then.6
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %13 = load i64, i64* %rc, align 8
  %14 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic15 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %14, i32 0, i32 3
  %15 = load i32, i32* %ic15, align 4
  %conv16 = zext i32 %15 to i64
  %add = add nsw i64 %conv16, %13
  %conv17 = trunc i64 %add to i32
  store i32 %conv17, i32* %ic15, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.14
  %16 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %call19 = call i8* @shuffle_line(%struct._read_buf_t* %16, i64* %cur)
  store i8* %call19, i8** %s, align 8
  %17 = load i8*, i8** %s, align 8
  %cmp20 = icmp eq i8* %17, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.18
  %18 = load i64, i64* %rc, align 8
  %cmp22 = icmp eq i64 %18, 0
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true
  %19 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc25 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %19, i32 0, i32 2
  %20 = load i32, i32* %lc25, align 4
  %idxprom = zext i32 %20 to i64
  %21 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %21, i32 0, i32 0
  %22 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %23 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line26 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %23, i32 0, i32 0
  %24 = load i8*, i8** %line26, align 8
  store i8* %24, i8** %s, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.18
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  %25 = load i8*, i8** %s, align 8
  %cmp28 = icmp eq i8* %25, null
  br i1 %cmp28, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i8*, i8** %s, align 8
  store i8* %26, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define internal i8* @shuffle_line(%struct._read_buf_t* %b, i64* %cur) #0 {
entry:
  %retval = alloca i8*, align 8
  %b.addr = alloca %struct._read_buf_t*, align 8
  %cur.addr = alloca i64*, align 8
  store %struct._read_buf_t* %b, %struct._read_buf_t** %b.addr, align 8
  store i64* %cur, i64** %cur.addr, align 8
  %0 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %0, i32 0, i32 3
  %1 = load i32, i32* %ic, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64*, i64** %cur.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic1 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %4, i32 0, i32 3
  %5 = load i32, i32* %ic1, align 4
  %conv = zext i32 %5 to i64
  %cmp2 = icmp uge i64 %3, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lmax = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %6, i32 0, i32 1
  %7 = load i32, i32* %lmax, align 4
  %conv4 = zext i32 %7 to i64
  %8 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %8, i32 0, i32 2
  %9 = load i32, i32* %lc, align 4
  %conv5 = zext i32 %9 to i64
  %10 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic6 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %10, i32 0, i32 3
  %11 = load i32, i32* %ic6, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i64*, i64** %cur.addr, align 8
  %13 = load i64, i64* %12, align 8
  %sub = sub i64 %conv7, %13
  %add = add i64 %conv5, %sub
  %cmp8 = icmp ule i64 %conv4, %add
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %14 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  call void @grow_read_buf(%struct._read_buf_t* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.11
  %15 = load i64*, i64** %cur.addr, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic12 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %17, i32 0, i32 3
  %18 = load i32, i32* %ic12, align 4
  %conv13 = zext i32 %18 to i64
  %cmp14 = icmp ult i64 %16, %conv13
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load i64*, i64** %cur.addr, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %in = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %21, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %in, i32 0, i64 %20
  %22 = load i8, i8* %arrayidx, align 1
  %conv16 = sext i8 %22 to i32
  %cmp17 = icmp ne i32 %conv16, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load i64*, i64** %cur.addr, align 8
  %25 = load i64, i64* %24, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %24, align 8
  %26 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %in19 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %26, i32 0, i32 4
  %arrayidx20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %in19, i32 0, i64 %25
  %27 = load i8, i8* %arrayidx20, align 1
  %28 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc21 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %28, i32 0, i32 2
  %29 = load i32, i32* %lc21, align 4
  %inc22 = add i32 %29, 1
  store i32 %inc22, i32* %lc21, align 4
  %idxprom = zext i32 %29 to i64
  %30 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %30, i32 0, i32 0
  %31 = load i8*, i8** %line, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8 %27, i8* %arrayidx23, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i64*, i64** %cur.addr, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic24 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %34, i32 0, i32 3
  %35 = load i32, i32* %ic24, align 4
  %conv25 = zext i32 %35 to i64
  %cmp26 = icmp ult i64 %33, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.58

if.then.28:                                       ; preds = %while.end
  %36 = load i64*, i64** %cur.addr, align 8
  %37 = load i64, i64* %36, align 8
  %inc29 = add i64 %37, 1
  store i64 %inc29, i64* %36, align 8
  %38 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %in30 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %38, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %in30, i32 0, i64 %37
  %39 = load i8, i8* %arrayidx31, align 1
  %40 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc32 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %40, i32 0, i32 2
  %41 = load i32, i32* %lc32, align 4
  %inc33 = add i32 %41, 1
  store i32 %inc33, i32* %lc32, align 4
  %idxprom34 = zext i32 %41 to i64
  %42 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line35 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %42, i32 0, i32 0
  %43 = load i8*, i8** %line35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom34
  store i8 %39, i8* %arrayidx36, align 1
  %44 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lc37 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %44, i32 0, i32 2
  %45 = load i32, i32* %lc37, align 4
  %idxprom38 = zext i32 %45 to i64
  %46 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line39 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %46, i32 0, i32 0
  %47 = load i8*, i8** %line39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 %idxprom38
  store i8 0, i8* %arrayidx40, align 1
  %48 = load i64*, i64** %cur.addr, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic41 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %50, i32 0, i32 3
  %51 = load i32, i32* %ic41, align 4
  %conv42 = zext i32 %51 to i64
  %cmp43 = icmp ult i64 %49, %conv42
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.28
  %52 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %in46 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %52, i32 0, i32 4
  %53 = bitcast [4096 x i8]* %in46 to i8*
  %54 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %in47 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %54, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %in47, i32 0, i32 0
  %55 = load i64*, i64** %cur.addr, align 8
  %56 = load i64, i64* %55, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %56
  %57 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic48 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %57, i32 0, i32 3
  %58 = load i32, i32* %ic48, align 4
  %conv49 = zext i32 %58 to i64
  %59 = load i64*, i64** %cur.addr, align 8
  %60 = load i64, i64* %59, align 8
  %sub50 = sub i64 %conv49, %60
  %mul = mul i64 %sub50, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %53, i8* %add.ptr, i64 %mul, i32 1, i1 false)
  %61 = load i64*, i64** %cur.addr, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic51 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %63, i32 0, i32 3
  %64 = load i32, i32* %ic51, align 4
  %conv52 = zext i32 %64 to i64
  %sub53 = sub i64 %conv52, %62
  %conv54 = trunc i64 %sub53 to i32
  store i32 %conv54, i32* %ic51, align 4
  br label %if.end.56

if.else:                                          ; preds = %if.then.28
  %65 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic55 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %65, i32 0, i32 3
  store i32 0, i32* %ic55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.45
  %66 = load i64*, i64** %cur.addr, align 8
  store i64 0, i64* %66, align 8
  %67 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line57 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %67, i32 0, i32 0
  %68 = load i8*, i8** %line57, align 8
  store i8* %68, i8** %retval
  br label %return

if.end.58:                                        ; preds = %while.end
  %69 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %ic59 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %69, i32 0, i32 3
  store i32 0, i32* %ic59, align 4
  %70 = load i64*, i64** %cur.addr, align 8
  store i64 0, i64* %70, align 8
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.end.56, %if.then
  %71 = load i8*, i8** %retval
  ret i8* %71
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @grow_read_buf(%struct._read_buf_t* %b) #0 {
entry:
  %b.addr = alloca %struct._read_buf_t*, align 8
  store %struct._read_buf_t* %b, %struct._read_buf_t** %b.addr, align 8
  %0 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lmax = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %0, i32 0, i32 1
  %1 = load i32, i32* %lmax, align 4
  %add = add i32 %1, 4096
  store i32 %add, i32* %lmax, align 4
  %2 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %2, i32 0, i32 0
  %3 = load i8*, i8** %line, align 8
  %4 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %lmax1 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %4, i32 0, i32 1
  %5 = load i32, i32* %lmax1, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @xrealloc(i8* %3, i64 %mul)
  %6 = load %struct._read_buf_t*, %struct._read_buf_t** %b.addr, align 8
  %line2 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %6, i32 0, i32 0
  store i8* %call, i8** %line2, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
