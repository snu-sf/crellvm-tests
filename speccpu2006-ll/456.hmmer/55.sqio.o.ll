; ModuleID = 'sqio.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ReadSeqVars = type { %struct._IO_FILE*, i8*, i32, i8*, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i32, i32, i32, i32, i32, i32, i8*, %struct.seqinfo_s*, i8*, i32, i32, i32, i32, i32, %struct.msa_struct*, %struct.msafile_struct* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [65 x i8] c"SeqfilePosition() failed: in a nonrewindable data file or stream\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"SSISetFilePosition failed, but that shouldn't happen.\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"SeqfileRewind() failed: in a nonrewindable data file or stream\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@squid_errno = external global i32, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Invalid flag %d to SetSeqinfoString()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ACGTUNRYMKSWHBVDacgtunrymkswhbvd\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c">>>>\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Len: \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"!!AA_SEQUENCE\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"!!NA_SEQUENCE\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"# STOCKHOLM 1.\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CLUSTAL\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"multiple sequence alignment\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"!!AA_MULTIPLE_ALIGNMENT\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"!!NA_MULTIPLE_ALIGNMENT\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"#=AU\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"#=ID\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"#=AC\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"#=DE\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"#=GA\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"#=TC\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"#=NC\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"#=SQ\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"#=SS\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"#=CS\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"#=RF\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"///\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"ENTRY \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"MSF:\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Check:\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c" Check: \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"LOCUS \00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"ORIGIN \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"ID   \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"SQ   \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"#%\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Sequence file contains no data\00", align 1
@protonly = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), align 8
@primenuc = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i32 0, i32 0), align 8
@aminos = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.144, i32 0, i32 0), align 8
@.str.39 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"Tried to write an aligned format with WriteSeq() -- bad, bad.\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"LOCUS       %s       %d bp\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"ACCESSION   %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"DEFINITION  %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"VERSION     %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"ORIGIN      \0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"\0A//\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c">>>>%s  9/95  ASCII  Len: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"ENTRY          %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"TITLE          %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"ACCESSION      %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [66 x i8] c"SUMMARY                                #Length %d  #Checksum  %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"SEQUENCE\0A\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"                  5        10        15        20        25        30\0A\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\0A///\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"NAM  %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"SRC  %s %s %d..%d::%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"DES  %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"SEQ  +SS\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"SEQ\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"\0A++\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"ID   %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"AC   %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"DE   %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"SQ             %d BP\0A\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"    %s  Length: %d  (today)  Check: %d  ..\0A\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"; ### from DNA Strider ;-)\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"; DNA sequence  %s, %d bases, %d checksum.\0A;\0A\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c";%s %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%8d \00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"sqio.c\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"FASTA\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"GENBANK\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"EMBL\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"GCG\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"GCGDATA\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"IG\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"STRIDER\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"IDRAW\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"ZUKER\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"PIR\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"SQUID\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"STOCKHOLM\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"SELEX\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"MSF\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"A2M\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"PHYLIP\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"Genbank\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"GCG data library\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"Intelligenetics\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"MacStrider\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"Idraw Postscript\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Zuker\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"Stockholm\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"Clustal\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"a2m\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Phylip\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"Bad code passed to MSAFormat2String()\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.110 = private unnamed_addr constant [8 x i8] c"[STDIN]\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.112 = private unnamed_addr constant [64 x i8] c"Can't autodetect sequence file format from a stdin or gzip pipe\00", align 1
@.str.113 = private unnamed_addr constant [43 x i8] c"Can't determine format of sequence file %s\00", align 1
@.str.114 = private unnamed_addr constant [47 x i8] c"Failed to read any alignment data from file %s\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"SSIGetFilePosition() failed\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"; DNA sequence\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c",\0A\09 \00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"LOCUS\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"DEFINITION\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"ACCESSION\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"ORIGIN\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"LOCUS  \00", align 1
@.str.126 = private unnamed_addr constant [174 x i8] c"File %s does not appear to be in FASTA format at line %d.\0AYou may want to specify the file format on the command line.\0AUsually this is done with an option --informat <fmt>.\0A\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"ID  \00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"AC  \00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c";  \09\0A\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"DE  \00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.136 = private unnamed_addr constant [34 x i8] c">>>>([^ ]+) .+2BIT +Len: ([0-9]+)\00", align 1
@sqd_parse = external global [10 x i8*], align 16
@.str.137 = private unnamed_addr constant [33 x i8] c">>>>([^ ]+) .+ASCII +Len: [0-9]+\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"bogus GCGdata format? %s\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"fread failed\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"  Length: \00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"EFIPQZ\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"ACGTUN\00", align 1
@.str.144 = private unnamed_addr constant [25 x i8] c"ABCDEFGHIKLMNPQRSTVWXYZ*\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ReadSeqVars* @SeqfileOpen(i8* %filename, i32 %format, i8* %env) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %env.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i8* %env, i8** %env.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i32, i32* %format.addr, align 4
  %2 = load i8*, i8** %env.addr, align 8
  %call = call %struct.ReadSeqVars* @seqfile_open(i8* %0, i32 %1, i8* %2, i32 -1)
  ret %struct.ReadSeqVars* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #0 {
entry:
  %retval = alloca %struct.ReadSeqVars*, align 8
  %filename.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %env.addr = alloca i8*, align 8
  %ssimode.addr = alloca i32, align 4
  %dbfp = alloca %struct.ReadSeqVars*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i8* %env, i8** %env.addr, align 8
  store i32 %ssimode, i32* %ssimode.addr, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 101, i64 176)
  %0 = bitcast i8* %call to %struct.ReadSeqVars*
  store %struct.ReadSeqVars* %0, %struct.ReadSeqVars** %dbfp, align 8
  %1 = load i32, i32* %ssimode.addr, align 4
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %ssimode1 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 5
  store i32 %1, i32* %ssimode1, align 4
  %3 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %rpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %3, i32 0, i32 9
  store i32 -1, i32* %rpl, align 4
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 10
  store i32 0, i32* %lastrpl, align 4
  %5 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %5, i32 0, i32 11
  store i32 0, i32* %maxrpl, align 4
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %bpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 12
  store i32 -1, i32* %bpl, align 4
  %7 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %7, i32 0, i32 13
  store i32 0, i32* %lastbpl, align 4
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 14
  store i32 0, i32* %maxbpl, align 4
  %9 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %f, align 8
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 22
  store i32 1, i32* %do_stdin, align 4
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %13, i32 0, i32 21
  store i32 0, i32* %do_gzip, align 4
  %call3 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i32 -1)
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %fname = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 1
  store i8* %call3, i8** %fname, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %15 = load i8*, i8** %filename.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0))
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %f5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %16, i32 0, i32 0
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %f5, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load i8*, i8** %env.addr, align 8
  %call7 = call %struct._IO_FILE* @EnvFileOpen(i8* %17, i8* %18, i8** null)
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %f8 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 0
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f8, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  store %struct.ReadSeqVars* null, %struct.ReadSeqVars** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else
  %20 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_stdin11 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %20, i32 0, i32 22
  store i32 0, i32* %do_stdin11, align 4
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_gzip12 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 21
  store i32 0, i32* %do_gzip12, align 4
  %22 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @sre_strdup(i8* %22, i32 -1)
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %fname14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 1
  store i8* %call13, i8** %fname14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %24 = load i32, i32* %format.addr, align 4
  %cmp16 = icmp eq i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_stdin18 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 22
  %26 = load i32, i32* %do_stdin18, align 4
  %cmp19 = icmp eq i32 %26, 1
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %27 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_gzip20 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %27, i32 0, i32 21
  %28 = load i32, i32* %do_gzip20, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.17
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %lor.lhs.false
  %29 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %f23 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %29, i32 0, i32 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f23, align 8
  %call24 = call i32 @SeqfileFormat(%struct._IO_FILE* %30)
  store i32 %call24, i32* %format.addr, align 4
  %31 = load i32, i32* %format.addr, align 4
  %cmp25 = icmp eq i32 %31, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.22
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %fname27 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %32, i32 0, i32 1
  %33 = load i8*, i8** %fname27, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.113, i32 0, i32 0), i8* %33)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.15
  %34 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %msa = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %34, i32 0, i32 23
  store %struct.msa_struct* null, %struct.msa_struct** %msa, align 8
  %35 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %35, i32 0, i32 24
  store %struct.msafile_struct* null, %struct.msafile_struct** %afp, align 8
  %36 = load i32, i32* %format.addr, align 4
  %37 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %format30 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %37, i32 0, i32 20
  store i32 %36, i32* %format30, align 4
  %38 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %linenumber = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %38, i32 0, i32 2
  store i32 0, i32* %linenumber, align 4
  %39 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %39, i32 0, i32 3
  store i8* null, i8** %buf, align 8
  %40 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %buflen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %40, i32 0, i32 4
  store i32 0, i32* %buflen, align 4
  %41 = load i32, i32* %format.addr, align 4
  %cmp31 = icmp sgt i32 %41, 100
  br i1 %cmp31, label %if.then.32, label %if.end.65

if.then.32:                                       ; preds = %if.end.29
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 190, i64 64)
  %42 = bitcast i8* %call33 to %struct.msafile_struct*
  %43 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp34 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %43, i32 0, i32 24
  store %struct.msafile_struct* %42, %struct.msafile_struct** %afp34, align 8
  %44 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %f35 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %44, i32 0, i32 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %f35, align 8
  %46 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp36 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %46, i32 0, i32 24
  %47 = load %struct.msafile_struct*, %struct.msafile_struct** %afp36, align 8
  %f37 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %47, i32 0, i32 0
  store %struct._IO_FILE* %45, %struct._IO_FILE** %f37, align 8
  %48 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_stdin38 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %48, i32 0, i32 22
  %49 = load i32, i32* %do_stdin38, align 4
  %50 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp39 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %50, i32 0, i32 24
  %51 = load %struct.msafile_struct*, %struct.msafile_struct** %afp39, align 8
  %do_stdin40 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %51, i32 0, i32 7
  store i32 %49, i32* %do_stdin40, align 4
  %52 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %do_gzip41 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %52, i32 0, i32 21
  %53 = load i32, i32* %do_gzip41, align 4
  %54 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp42 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %54, i32 0, i32 24
  %55 = load %struct.msafile_struct*, %struct.msafile_struct** %afp42, align 8
  %do_gzip43 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %55, i32 0, i32 6
  store i32 %53, i32* %do_gzip43, align 4
  %56 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %fname44 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %56, i32 0, i32 1
  %57 = load i8*, i8** %fname44, align 8
  %58 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp45 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %58, i32 0, i32 24
  %59 = load %struct.msafile_struct*, %struct.msafile_struct** %afp45, align 8
  %fname46 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %59, i32 0, i32 1
  store i8* %57, i8** %fname46, align 8
  %60 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %format47 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %60, i32 0, i32 20
  %61 = load i32, i32* %format47, align 4
  %62 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp48 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %62, i32 0, i32 24
  %63 = load %struct.msafile_struct*, %struct.msafile_struct** %afp48, align 8
  %format49 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %63, i32 0, i32 8
  store i32 %61, i32* %format49, align 4
  %64 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %linenumber50 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %64, i32 0, i32 2
  %65 = load i32, i32* %linenumber50, align 4
  %66 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp51 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %66, i32 0, i32 24
  %67 = load %struct.msafile_struct*, %struct.msafile_struct** %afp51, align 8
  %linenumber52 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %67, i32 0, i32 2
  store i32 %65, i32* %linenumber52, align 4
  %68 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp53 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %68, i32 0, i32 24
  %69 = load %struct.msafile_struct*, %struct.msafile_struct** %afp53, align 8
  %buf54 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %69, i32 0, i32 3
  store i8* null, i8** %buf54, align 8
  %70 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp55 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %70, i32 0, i32 24
  %71 = load %struct.msafile_struct*, %struct.msafile_struct** %afp55, align 8
  %buflen56 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %71, i32 0, i32 4
  store i32 0, i32* %buflen56, align 4
  %72 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %afp57 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %72, i32 0, i32 24
  %73 = load %struct.msafile_struct*, %struct.msafile_struct** %afp57, align 8
  %call58 = call %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %73)
  %74 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %msa59 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %74, i32 0, i32 23
  store %struct.msa_struct* %call58, %struct.msa_struct** %msa59, align 8
  %cmp60 = icmp eq %struct.msa_struct* %call58, null
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.32
  %75 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %fname62 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %75, i32 0, i32 1
  %76 = load i8*, i8** %fname62, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.114, i32 0, i32 0), i8* %76)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.32
  %77 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %msa64 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %77, i32 0, i32 23
  %78 = load %struct.msa_struct*, %struct.msa_struct** %msa64, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %78, i32 0, i32 45
  store i32 0, i32* %lastidx, align 4
  %79 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  store %struct.ReadSeqVars* %79, %struct.ReadSeqVars** %retval
  br label %return

if.end.65:                                        ; preds = %if.end.29
  %80 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %80)
  %81 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  store %struct.ReadSeqVars* %81, %struct.ReadSeqVars** %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.end.63, %if.then.10
  %82 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %retval
  ret %struct.ReadSeqVars* %82
}

; Function Attrs: nounwind uwtable
define %struct.ReadSeqVars* @SeqfileOpenForIndexing(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %env.addr = alloca i8*, align 8
  %ssimode.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i8* %env, i8** %env.addr, align 8
  store i32 %ssimode, i32* %ssimode.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i32, i32* %format.addr, align 4
  %2 = load i8*, i8** %env.addr, align 8
  %3 = load i32, i32* %ssimode.addr, align 4
  %call = call %struct.ReadSeqVars* @seqfile_open(i8* %0, i32 %1, i8* %2, i32 %3)
  ret %struct.ReadSeqVars* %call
}

; Function Attrs: nounwind uwtable
define void @SeqfilePosition(%struct.ReadSeqVars* %sqfp, %struct.ssioffset_s* %offset) #0 {
entry:
  %sqfp.addr = alloca %struct.ReadSeqVars*, align 8
  %offset.addr = alloca %struct.ssioffset_s*, align 8
  store %struct.ReadSeqVars* %sqfp, %struct.ReadSeqVars** %sqfp.addr, align 8
  store %struct.ssioffset_s* %offset, %struct.ssioffset_s** %offset.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 22
  %1 = load i32, i32* %do_stdin, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 21
  %3 = load i32, i32* %do_gzip, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %format = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 20
  %5 = load i32, i32* %format, align 4
  %cmp = icmp sgt i32 %5, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %8 = load %struct.ssioffset_s*, %struct.ssioffset_s** %offset.addr, align 8
  %call = call i32 @SSISetFilePosition(%struct._IO_FILE* %7, %struct.ssioffset_s* %8)
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %9)
  ret void
}

declare void @Die(i8*, ...) #1

declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #1

; Function Attrs: nounwind uwtable
define internal void @SeqfileGetLine(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 5
  %1 = load i32, i32* %ssimode, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode1 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 5
  %5 = load i32, i32* %ssimode1, align 4
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 6
  %call = call i32 @SSIGetFilePosition(%struct._IO_FILE* %3, i32 %5, %struct.ssioffset_s* %ssioffset)
  %cmp2 = icmp ne i32 0, %call
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %7 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %7, i32 0, i32 3
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buflen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 4
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %9, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f5, align 8
  %call6 = call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %10)
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf9 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 3
  %12 = load i8*, i8** %buf9, align 8
  store i8 0, i8* %12, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %linenumber = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %13, i32 0, i32 2
  %14 = load i32, i32* %linenumber, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %linenumber, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SeqfileRewind(%struct.ReadSeqVars* %sqfp) #0 {
entry:
  %sqfp.addr = alloca %struct.ReadSeqVars*, align 8
  store %struct.ReadSeqVars* %sqfp, %struct.ReadSeqVars** %sqfp.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 22
  %1 = load i32, i32* %do_stdin, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 21
  %3 = load i32, i32* %do_gzip, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @rewind(%struct._IO_FILE* %5)
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %6)
  ret void
}

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @SeqfileLineParameters(%struct.ReadSeqVars* %V, i32* %ret_bpl, i32* %ret_rpl) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %ret_bpl.addr = alloca i32*, align 8
  %ret_rpl.addr = alloca i32*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  store i32* %ret_bpl, i32** %ret_bpl.addr, align 8
  store i32* %ret_rpl, i32** %ret_rpl.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 9
  %1 = load i32, i32* %rpl, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 11
  %3 = load i32, i32* %maxrpl, align 4
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl1 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 9
  %5 = load i32, i32* %rpl1, align 4
  %cmp2 = icmp eq i32 %3, %5
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 12
  %7 = load i32, i32* %bpl, align 4
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 14
  %9 = load i32, i32* %maxbpl, align 4
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 12
  %11 = load i32, i32* %bpl6, align 4
  %cmp7 = icmp eq i32 %9, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl8 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 12
  %13 = load i32, i32* %bpl8, align 4
  %14 = load i32*, i32** %ret_bpl.addr, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl9 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 9
  %16 = load i32, i32* %rpl9, align 4
  %17 = load i32*, i32** %ret_rpl.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %entry
  %18 = load i32*, i32** %ret_bpl.addr, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %ret_rpl.addr, align 8
  store i32 0, i32* %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @SeqfileClose(%struct.ReadSeqVars* %sqfp) #0 {
entry:
  %sqfp.addr = alloca %struct.ReadSeqVars*, align 8
  store %struct.ReadSeqVars* %sqfp, %struct.ReadSeqVars** %sqfp.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %afp = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 24
  %1 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %cmp = icmp ne %struct.msafile_struct* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %msa = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 23
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %cmp1 = icmp ne %struct.msa_struct* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %msa3 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 23
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa3, align 8
  call void @MSAFree(%struct.msa_struct* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %afp4 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 24
  %7 = load %struct.msafile_struct*, %struct.msafile_struct** %afp4, align 8
  %buf = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %7, i32 0, i32 3
  %8 = load i8*, i8** %buf, align 8
  %cmp5 = icmp ne i8* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %afp7 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %9, i32 0, i32 24
  %10 = load %struct.msafile_struct*, %struct.msafile_struct** %afp7, align 8
  %buf8 = getelementptr inbounds %struct.msafile_struct, %struct.msafile_struct* %10, i32 0, i32 3
  %11 = load i8*, i8** %buf8, align 8
  call void @free(i8* %11) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %afp10 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 24
  %13 = load %struct.msafile_struct*, %struct.msafile_struct** %afp10, align 8
  %14 = bitcast %struct.msafile_struct* %13 to i8*
  call void @free(i8* %14) #5
  br label %if.end.13

if.else:                                          ; preds = %entry
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 22
  %16 = load i32, i32* %do_stdin, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %17 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.9
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %buf14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 3
  %20 = load i8*, i8** %buf14, align 8
  %cmp15 = icmp ne i8* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %buf17 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 3
  %22 = load i8*, i8** %buf17, align 8
  call void @free(i8* %22) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %fname = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 1
  %24 = load i8*, i8** %fname, align 8
  %cmp19 = icmp ne i8* %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %fname21 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 1
  %26 = load i8*, i8** %fname21, align 8
  call void @free(i8* %26) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %27 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %sqfp.addr, align 8
  %28 = bitcast %struct.ReadSeqVars* %27 to i8*
  call void @free(i8* %28) #5
  ret void
}

declare void @MSAFree(%struct.msa_struct*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @FreeSequence(i8* %seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %sqinfo.addr = alloca %struct.seqinfo_s*, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo.addr, align 8
  %0 = load i8*, i8** %seq.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %seq.addr, align 8
  call void @free(i8* %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %2, i32 0, i32 0
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %ss = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %4, i32 0, i32 10
  %5 = load i8*, i8** %ss, align 8
  call void @free(i8* %5) #5
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags3 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %6, i32 0, i32 0
  %7 = load i32, i32* %flags3, align 4
  %and4 = and i32 %7, 1024
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  %8 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %sa = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %8, i32 0, i32 11
  %9 = load i8*, i8** %sa, align 8
  call void @free(i8* %9) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %sptr, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %sqinfo.addr = alloca %struct.seqinfo_s*, align 8
  %sptr.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo.addr, align 8
  store i8* %sptr, i8** %sptr.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %sptr.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i8*, i8** %sptr.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %sptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %sptr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %sptr.addr, align 8
  %call = call i64 @strlen(i8* %4) #6
  %sub = sub i64 %call, 1
  %conv3 = trunc i64 %sub to i32
  store i32 %conv3, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %5 = load i32, i32* %pos, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %sptr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %8 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %call8 = call i16** @__ctype_b_loc() #7
  %9 = load i16*, i16** %call8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %9, i64 %idxprom7
  %10 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %10 to i32
  %and = and i32 %conv10, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.body
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %11 = load i32, i32* %pos, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  %12 = load i32, i32* %pos, align 4
  %add = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add to i64
  %13 = load i8*, i8** %sptr.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1
  %14 = load i32, i32* %flag.addr, align 4
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.23
    i32 4, label %sw.bb.35
    i32 8, label %sw.bb.47
    i32 16, label %sw.bb.82
    i32 32, label %sw.bb.95
    i32 256, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %for.end
  %15 = load i8*, i8** %sptr.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = sext i8 %16 to i32
  %cmp16 = icmp ne i32 %conv15, 45
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %sw.bb
  %17 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %18 = load i8*, i8** %sptr.addr, align 8
  %call19 = call i8* @strncpy(i8* %arraydecay, i8* %18, i64 63) #5
  %19 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name20 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [64 x i8], [64 x i8]* %name20, i32 0, i64 63
  store i8 0, i8* %arrayidx21, align 1
  %20 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %20, i32 0, i32 0
  %21 = load i32, i32* %flags, align 4
  %or = or i32 %21, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.end
  %22 = load i8*, i8** %sptr.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 45
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %sw.bb.23
  %24 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %id = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %24, i32 0, i32 2
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %id, i32 0, i32 0
  %25 = load i8*, i8** %sptr.addr, align 8
  %call29 = call i8* @strncpy(i8* %arraydecay28, i8* %25, i64 63) #5
  %26 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %id30 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %26, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [64 x i8], [64 x i8]* %id30, i32 0, i64 63
  store i8 0, i8* %arrayidx31, align 1
  %27 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags32 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %27, i32 0, i32 0
  %28 = load i32, i32* %flags32, align 4
  %or33 = or i32 %28, 2
  store i32 %or33, i32* %flags32, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %sw.bb.23
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.end
  %29 = load i8*, i8** %sptr.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv36 = sext i8 %30 to i32
  %cmp37 = icmp ne i32 %conv36, 45
  br i1 %cmp37, label %if.then.39, label %if.end.46

if.then.39:                                       ; preds = %sw.bb.35
  %31 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %31, i32 0, i32 3
  %arraydecay40 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i32 0, i32 0
  %32 = load i8*, i8** %sptr.addr, align 8
  %call41 = call i8* @strncpy(i8* %arraydecay40, i8* %32, i64 63) #5
  %33 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc42 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %33, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [64 x i8], [64 x i8]* %acc42, i32 0, i64 63
  store i8 0, i8* %arrayidx43, align 1
  %34 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags44 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %34, i32 0, i32 0
  %35 = load i32, i32* %flags44, align 4
  %or45 = or i32 %35, 4
  store i32 %or45, i32* %flags44, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.39, %sw.bb.35
  br label %sw.epilog

sw.bb.47:                                         ; preds = %for.end
  %36 = load i8*, i8** %sptr.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv48 = sext i8 %37 to i32
  %cmp49 = icmp ne i32 %conv48, 45
  br i1 %cmp49, label %if.then.51, label %if.end.81

if.then.51:                                       ; preds = %sw.bb.47
  %38 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags52 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %38, i32 0, i32 0
  %39 = load i32, i32* %flags52, align 4
  %and53 = and i32 %39, 8
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.then.51
  %40 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %40, i32 0, i32 4
  %arraydecay56 = getelementptr inbounds [128 x i8], [128 x i8]* %desc, i32 0, i32 0
  %call57 = call i64 @strlen(i8* %arraydecay56) #6
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, i32* %len, align 4
  %41 = load i32, i32* %len, align 4
  %cmp59 = icmp slt i32 %41, 126
  br i1 %cmp59, label %if.then.61, label %if.end.72

if.then.61:                                       ; preds = %if.then.55
  %42 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc62 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %42, i32 0, i32 4
  %arraydecay63 = getelementptr inbounds [128 x i8], [128 x i8]* %desc62, i32 0, i32 0
  %43 = load i32, i32* %len, align 4
  %sub64 = sub nsw i32 127, %43
  %conv65 = sext i32 %sub64 to i64
  %call66 = call i8* @strncat(i8* %arraydecay63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i64 %conv65) #5
  %44 = load i32, i32* %len, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %len, align 4
  %45 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc67 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %45, i32 0, i32 4
  %arraydecay68 = getelementptr inbounds [128 x i8], [128 x i8]* %desc67, i32 0, i32 0
  %46 = load i8*, i8** %sptr.addr, align 8
  %47 = load i32, i32* %len, align 4
  %sub69 = sub nsw i32 127, %47
  %conv70 = sext i32 %sub69 to i64
  %call71 = call i8* @strncat(i8* %arraydecay68, i8* %46, i64 %conv70) #5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.61, %if.then.55
  br label %if.end.76

if.else:                                          ; preds = %if.then.51
  %48 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc73 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %48, i32 0, i32 4
  %arraydecay74 = getelementptr inbounds [128 x i8], [128 x i8]* %desc73, i32 0, i32 0
  %49 = load i8*, i8** %sptr.addr, align 8
  %call75 = call i8* @strncpy(i8* %arraydecay74, i8* %49, i64 127) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.end.72
  %50 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc77 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %50, i32 0, i32 4
  %arrayidx78 = getelementptr inbounds [128 x i8], [128 x i8]* %desc77, i32 0, i64 127
  store i8 0, i8* %arrayidx78, align 1
  %51 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags79 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %51, i32 0, i32 0
  %52 = load i32, i32* %flags79, align 4
  %or80 = or i32 %52, 8
  store i32 %or80, i32* %flags79, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.76, %sw.bb.47
  br label %sw.epilog

sw.bb.82:                                         ; preds = %for.end
  %53 = load i8*, i8** %sptr.addr, align 8
  %call83 = call i32 @IsInt(i8* %53)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %sw.bb.82
  store i32 5, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %sw.bb.82
  %54 = load i8*, i8** %sptr.addr, align 8
  %call87 = call i32 @atoi(i8* %54) #6
  %55 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %start = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %55, i32 0, i32 6
  store i32 %call87, i32* %start, align 4
  %56 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %start88 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %56, i32 0, i32 6
  %57 = load i32, i32* %start88, align 4
  %cmp89 = icmp ne i32 %57, 0
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.86
  %58 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags92 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %58, i32 0, i32 0
  %59 = load i32, i32* %flags92, align 4
  %or93 = or i32 %59, 16
  store i32 %or93, i32* %flags92, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.86
  br label %sw.epilog

sw.bb.95:                                         ; preds = %for.end
  %60 = load i8*, i8** %sptr.addr, align 8
  %call96 = call i32 @IsInt(i8* %60)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %sw.bb.95
  store i32 5, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %sw.bb.95
  %61 = load i8*, i8** %sptr.addr, align 8
  %call100 = call i32 @atoi(i8* %61) #6
  %62 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %stop = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %62, i32 0, i32 7
  store i32 %call100, i32* %stop, align 4
  %63 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %stop101 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %63, i32 0, i32 7
  %64 = load i32, i32* %stop101, align 4
  %cmp102 = icmp ne i32 %64, 0
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.end.99
  %65 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags105 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %65, i32 0, i32 0
  %66 = load i32, i32* %flags105, align 4
  %or106 = or i32 %66, 32
  store i32 %or106, i32* %flags105, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.end.99
  br label %sw.epilog

sw.bb.108:                                        ; preds = %for.end
  %67 = load i8*, i8** %sptr.addr, align 8
  %call109 = call i32 @IsInt(i8* %67)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %sw.bb.108
  store i32 5, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.112:                                       ; preds = %sw.bb.108
  %68 = load i8*, i8** %sptr.addr, align 8
  %call113 = call i32 @atoi(i8* %68) #6
  %69 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %olen = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %69, i32 0, i32 8
  store i32 %call113, i32* %olen, align 4
  %70 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %olen114 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %70, i32 0, i32 8
  %71 = load i32, i32* %olen114, align 4
  %cmp115 = icmp ne i32 %71, 0
  br i1 %cmp115, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.end.112
  %72 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags118 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %72, i32 0, i32 0
  %73 = load i32, i32* %flags118, align 4
  %or119 = or i32 %73, 256
  store i32 %or119, i32* %flags118, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.112
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %74 = load i32, i32* %flag.addr, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %74)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.120, %if.end.107, %if.end.94, %if.end.81, %if.end.46, %if.end.34, %if.end.22
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.111, %if.then.98, %if.then.85, %if.then
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #2

declare i32 @IsInt(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define void @SeqinfoCopy(%struct.seqinfo_s* %sq1, %struct.seqinfo_s* %sq2) #0 {
entry:
  %sq1.addr = alloca %struct.seqinfo_s*, align 8
  %sq2.addr = alloca %struct.seqinfo_s*, align 8
  store %struct.seqinfo_s* %sq1, %struct.seqinfo_s** %sq1.addr, align 8
  store %struct.seqinfo_s* %sq2, %struct.seqinfo_s** %sq2.addr, align 8
  %0 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %0, i32 0, i32 0
  %1 = load i32, i32* %flags, align 4
  %2 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %flags1 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %2, i32 0, i32 0
  store i32 %1, i32* %flags1, align 4
  %3 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags2 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %3, i32 0, i32 0
  %4 = load i32, i32* %flags2, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %6 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %name3 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %6, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %name3, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags5 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %7, i32 0, i32 0
  %8 = load i32, i32* %flags5, align 4
  %and6 = and i32 %8, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %9 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %id = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %9, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %id, i32 0, i32 0
  %10 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %id10 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %10, i32 0, i32 2
  %arraydecay11 = getelementptr inbounds [64 x i8], [64 x i8]* %id10, i32 0, i32 0
  %call12 = call i8* @strcpy(i8* %arraydecay9, i8* %arraydecay11) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %11 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags14 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %11, i32 0, i32 0
  %12 = load i32, i32* %flags14, align 4
  %and15 = and i32 %12, 4
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.13
  %13 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %acc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %13, i32 0, i32 3
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i32 0, i32 0
  %14 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %acc19 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %14, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [64 x i8], [64 x i8]* %acc19, i32 0, i32 0
  %call21 = call i8* @strcpy(i8* %arraydecay18, i8* %arraydecay20) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.13
  %15 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags23 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %15, i32 0, i32 0
  %16 = load i32, i32* %flags23, align 4
  %and24 = and i32 %16, 8
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.22
  %17 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %desc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %17, i32 0, i32 4
  %arraydecay27 = getelementptr inbounds [128 x i8], [128 x i8]* %desc, i32 0, i32 0
  %18 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %desc28 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %18, i32 0, i32 4
  %arraydecay29 = getelementptr inbounds [128 x i8], [128 x i8]* %desc28, i32 0, i32 0
  %call30 = call i8* @strcpy(i8* %arraydecay27, i8* %arraydecay29) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.end.22
  %19 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags32 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %19, i32 0, i32 0
  %20 = load i32, i32* %flags32, align 4
  %and33 = and i32 %20, 64
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.31
  %21 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %len = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %21, i32 0, i32 5
  %22 = load i32, i32* %len, align 4
  %23 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %len36 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %23, i32 0, i32 5
  store i32 %22, i32* %len36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.31
  %24 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags38 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %24, i32 0, i32 0
  %25 = load i32, i32* %flags38, align 4
  %and39 = and i32 %25, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.37
  %26 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %start = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %26, i32 0, i32 6
  %27 = load i32, i32* %start, align 4
  %28 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %start42 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %28, i32 0, i32 6
  store i32 %27, i32* %start42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.37
  %29 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags44 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %29, i32 0, i32 0
  %30 = load i32, i32* %flags44, align 4
  %and45 = and i32 %30, 32
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.43
  %31 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %stop = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %31, i32 0, i32 7
  %32 = load i32, i32* %stop, align 4
  %33 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %stop48 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %33, i32 0, i32 7
  store i32 %32, i32* %stop48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.43
  %34 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags50 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %34, i32 0, i32 0
  %35 = load i32, i32* %flags50, align 4
  %and51 = and i32 %35, 256
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.49
  %36 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %olen = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %36, i32 0, i32 8
  %37 = load i32, i32* %olen, align 4
  %38 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %olen54 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %38, i32 0, i32 8
  store i32 %37, i32* %olen54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.49
  %39 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags56 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %39, i32 0, i32 0
  %40 = load i32, i32* %flags56, align 4
  %and57 = and i32 %40, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.55
  %41 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %type = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %41, i32 0, i32 9
  %42 = load i32, i32* %type, align 4
  %43 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %type60 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %43, i32 0, i32 9
  store i32 %42, i32* %type60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.55
  %44 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags62 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %44, i32 0, i32 0
  %45 = load i32, i32* %flags62, align 4
  %and63 = and i32 %45, 512
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.61
  %46 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %ss = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %46, i32 0, i32 10
  %47 = load i8*, i8** %ss, align 8
  %call66 = call i8* @Strdup(i8* %47)
  %48 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %ss67 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %48, i32 0, i32 10
  store i8* %call66, i8** %ss67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.61
  %49 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %flags69 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %49, i32 0, i32 0
  %50 = load i32, i32* %flags69, align 4
  %and70 = and i32 %50, 1024
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.68
  %51 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq2.addr, align 8
  %sa = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %51, i32 0, i32 11
  %52 = load i8*, i8** %sa, align 8
  %call73 = call i8* @Strdup(i8* %52)
  %53 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sq1.addr, align 8
  %sa74 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %53, i32 0, i32 11
  store i8* %call73, i8** %sa74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.end.68
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @ToDNA(i8* %seq) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  store i8* %seq, i8** %seq.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 85
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %seq.addr, align 8
  store i8 84, i8* %4, align 1
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %5 = load i8*, i8** %seq.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 117
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %7 = load i8*, i8** %seq.addr, align 8
  store i8 116, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %8 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ToRNA(i8* %seq) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  store i8* %seq, i8** %seq.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %seq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 84
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %seq.addr, align 8
  store i8 85, i8* %4, align 1
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %5 = load i8*, i8** %seq.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 116
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %7 = load i8*, i8** %seq.addr, align 8
  store i8 117, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %8 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ToIUPAC(i8* %seq, i32 %is_aseq) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %is_aseq.addr = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %is_aseq, i32* %is_aseq.addr, align 4
  %0 = load i32, i32* %is_aseq.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i8*, i8** %seq.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %seq.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %conv2) #6
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %seq.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i8*, i8** %seq.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 46
  br i1 %cmp9, label %if.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %9 = load i8*, i8** %seq.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 95
  br i1 %cmp13, label %if.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %11 = load i8*, i8** %seq.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 45
  br i1 %cmp17, label %if.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %13 = load i8*, i8** %seq.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv20 = sext i8 %14 to i32
  %cmp21 = icmp eq i32 %conv20, 126
  br i1 %cmp21, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.19
  %15 = load i8*, i8** %seq.addr, align 8
  store i8 78, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.23, %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.38

if.else:                                          ; preds = %entry
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.35, %if.else
  %17 = load i8*, i8** %seq.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv25 = sext i8 %18 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.37

for.body.28:                                      ; preds = %for.cond.24
  %19 = load i8*, i8** %seq.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv29 = sext i8 %20 to i32
  %call30 = call i8* @strchr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %conv29) #6
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.28
  %21 = load i8*, i8** %seq.addr, align 8
  store i8 78, i8* %21, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %for.body.28
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %22 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr36, i8** %seq.addr, align 8
  br label %for.cond.24

for.end.37:                                       ; preds = %for.cond.24
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %for.end
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @ReadSeq(%struct.ReadSeqVars* %V, i32 %format, i8** %ret_seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %format.addr = alloca i32, align 4
  %ret_seq.addr = alloca i8**, align 8
  %sqinfo.addr = alloca %struct.seqinfo_s*, align 8
  %gotuw = alloca i32, align 4
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i8** %ret_seq, i8*** %ret_seq.addr, align 8
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo.addr, align 8
  store i32 0, i32* @squid_errno, align 4
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %format1 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 20
  %1 = load i32, i32* %format1, align 4
  %cmp = icmp sgt i32 %1, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 23
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %lastidx = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 45
  %4 = load i32, i32* %lastidx, align 4
  %5 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa2 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %5, i32 0, i32 23
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa2, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %nseq, align 4
  %cmp3 = icmp sge i32 %4, %7
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 23
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa5, align 8
  call void @MSAFree(%struct.msa_struct* %9)
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %afp = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 24
  %11 = load %struct.msafile_struct*, %struct.msafile_struct** %afp, align 8
  %call = call %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %11)
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 23
  store %struct.msa_struct* %call, %struct.msa_struct** %msa6, align 8
  %cmp7 = icmp eq %struct.msa_struct* %call, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa9 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %13, i32 0, i32 23
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa9, align 8
  %lastidx10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 45
  store i32 0, i32* %lastidx10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa12 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 23
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa12, align 8
  %lastidx13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 45
  %17 = load i32, i32* %lastidx13, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %18, i32 0, i32 23
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa14, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 0
  %20 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8
  %22 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa15 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %22, i32 0, i32 23
  %23 = load %struct.msa_struct*, %struct.msa_struct** %msa15, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %23, i32 0, i32 3
  %24 = load i32, i32* %alen, align 4
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa16 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 23
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa16, align 8
  %lastidx17 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 45
  %27 = load i32, i32* %lastidx17, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %28, i32 0, i32 23
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa19, align 8
  %aseq20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 0
  %30 = load i8**, i8*** %aseq20, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %30, i64 %idxprom18
  %31 = load i8*, i8** %arrayidx21, align 8
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %32, i32 0, i32 15
  %call22 = call i32 @MakeDealignedString(i8* %21, i32 %24, i8* %31, i8** %seq)
  %33 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq23 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %33, i32 0, i32 15
  %34 = load i8*, i8** %seq23, align 8
  %call24 = call i64 @strlen(i8* %34) #6
  %conv = trunc i64 %call24 to i32
  %35 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %35, i32 0, i32 18
  store i32 %conv, i32* %seqlen, align 4
  %36 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %36, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  %37 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa25 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %37, i32 0, i32 23
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa25, align 8
  %lastidx26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 45
  %39 = load i32, i32* %lastidx26, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa28 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %40, i32 0, i32 23
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa28, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 1
  %42 = load i8**, i8*** %sqname, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %42, i64 %idxprom27
  %43 = load i8*, i8** %arrayidx29, align 8
  %cmp30 = icmp ne i8* %43, null
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.end.11
  %44 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %45 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa33 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %45, i32 0, i32 23
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa33, align 8
  %lastidx34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 45
  %47 = load i32, i32* %lastidx34, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa36 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %48, i32 0, i32 23
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa36, align 8
  %sqname37 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 1
  %50 = load i8**, i8*** %sqname37, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %50, i64 %idxprom35
  %51 = load i8*, i8** %arrayidx38, align 8
  %call39 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %44, i8* %51, i32 1)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.32, %if.end.11
  %52 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa41 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %52, i32 0, i32 23
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa41, align 8
  %sqacc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 14
  %54 = load i8**, i8*** %sqacc, align 8
  %cmp42 = icmp ne i8** %54, null
  br i1 %cmp42, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.40
  %55 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa44 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %55, i32 0, i32 23
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa44, align 8
  %lastidx45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 45
  %57 = load i32, i32* %lastidx45, align 4
  %idxprom46 = sext i32 %57 to i64
  %58 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa47 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %58, i32 0, i32 23
  %59 = load %struct.msa_struct*, %struct.msa_struct** %msa47, align 8
  %sqacc48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 14
  %60 = load i8**, i8*** %sqacc48, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %60, i64 %idxprom46
  %61 = load i8*, i8** %arrayidx49, align 8
  %cmp50 = icmp ne i8* %61, null
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %land.lhs.true
  %62 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %63 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa53 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %63, i32 0, i32 23
  %64 = load %struct.msa_struct*, %struct.msa_struct** %msa53, align 8
  %lastidx54 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 45
  %65 = load i32, i32* %lastidx54, align 4
  %idxprom55 = sext i32 %65 to i64
  %66 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa56 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %66, i32 0, i32 23
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa56, align 8
  %sqacc57 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %67, i32 0, i32 14
  %68 = load i8**, i8*** %sqacc57, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %68, i64 %idxprom55
  %69 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %62, i8* %69, i32 4)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.52, %land.lhs.true, %if.end.40
  %70 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa61 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %70, i32 0, i32 23
  %71 = load %struct.msa_struct*, %struct.msa_struct** %msa61, align 8
  %sqdesc = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %71, i32 0, i32 15
  %72 = load i8**, i8*** %sqdesc, align 8
  %cmp62 = icmp ne i8** %72, null
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.81

land.lhs.true.64:                                 ; preds = %if.end.60
  %73 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa65 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %73, i32 0, i32 23
  %74 = load %struct.msa_struct*, %struct.msa_struct** %msa65, align 8
  %lastidx66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 45
  %75 = load i32, i32* %lastidx66, align 4
  %idxprom67 = sext i32 %75 to i64
  %76 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa68 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %76, i32 0, i32 23
  %77 = load %struct.msa_struct*, %struct.msa_struct** %msa68, align 8
  %sqdesc69 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %77, i32 0, i32 15
  %78 = load i8**, i8*** %sqdesc69, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %78, i64 %idxprom67
  %79 = load i8*, i8** %arrayidx70, align 8
  %cmp71 = icmp ne i8* %79, null
  br i1 %cmp71, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %land.lhs.true.64
  %80 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %81 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa74 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %81, i32 0, i32 23
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa74, align 8
  %lastidx75 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 45
  %83 = load i32, i32* %lastidx75, align 4
  %idxprom76 = sext i32 %83 to i64
  %84 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa77 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %84, i32 0, i32 23
  %85 = load %struct.msa_struct*, %struct.msa_struct** %msa77, align 8
  %sqdesc78 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 15
  %86 = load i8**, i8*** %sqdesc78, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %86, i64 %idxprom76
  %87 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %80, i8* %87, i32 8)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.73, %land.lhs.true.64, %if.end.60
  %88 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa82 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %88, i32 0, i32 23
  %89 = load %struct.msa_struct*, %struct.msa_struct** %msa82, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %89, i32 0, i32 16
  %90 = load i8**, i8*** %ss, align 8
  %cmp83 = icmp ne i8** %90, null
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.112

land.lhs.true.85:                                 ; preds = %if.end.81
  %91 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa86 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %91, i32 0, i32 23
  %92 = load %struct.msa_struct*, %struct.msa_struct** %msa86, align 8
  %lastidx87 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %92, i32 0, i32 45
  %93 = load i32, i32* %lastidx87, align 4
  %idxprom88 = sext i32 %93 to i64
  %94 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa89 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %94, i32 0, i32 23
  %95 = load %struct.msa_struct*, %struct.msa_struct** %msa89, align 8
  %ss90 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %95, i32 0, i32 16
  %96 = load i8**, i8*** %ss90, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %96, i64 %idxprom88
  %97 = load i8*, i8** %arrayidx91, align 8
  %cmp92 = icmp ne i8* %97, null
  br i1 %cmp92, label %if.then.94, label %if.end.112

if.then.94:                                       ; preds = %land.lhs.true.85
  %98 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa95 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %98, i32 0, i32 23
  %99 = load %struct.msa_struct*, %struct.msa_struct** %msa95, align 8
  %lastidx96 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %99, i32 0, i32 45
  %100 = load i32, i32* %lastidx96, align 4
  %idxprom97 = sext i32 %100 to i64
  %101 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa98 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %101, i32 0, i32 23
  %102 = load %struct.msa_struct*, %struct.msa_struct** %msa98, align 8
  %aseq99 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %102, i32 0, i32 0
  %103 = load i8**, i8*** %aseq99, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %103, i64 %idxprom97
  %104 = load i8*, i8** %arrayidx100, align 8
  %105 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa101 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %105, i32 0, i32 23
  %106 = load %struct.msa_struct*, %struct.msa_struct** %msa101, align 8
  %alen102 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %106, i32 0, i32 3
  %107 = load i32, i32* %alen102, align 4
  %108 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa103 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %108, i32 0, i32 23
  %109 = load %struct.msa_struct*, %struct.msa_struct** %msa103, align 8
  %lastidx104 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %109, i32 0, i32 45
  %110 = load i32, i32* %lastidx104, align 4
  %idxprom105 = sext i32 %110 to i64
  %111 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa106 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %111, i32 0, i32 23
  %112 = load %struct.msa_struct*, %struct.msa_struct** %msa106, align 8
  %ss107 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 16
  %113 = load i8**, i8*** %ss107, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %113, i64 %idxprom105
  %114 = load i8*, i8** %arrayidx108, align 8
  %115 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %ss109 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %115, i32 0, i32 10
  %call110 = call i32 @MakeDealignedString(i8* %104, i32 %107, i8* %114, i8** %ss109)
  %116 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags111 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %116, i32 0, i32 0
  %117 = load i32, i32* %flags111, align 4
  %or = or i32 %117, 512
  store i32 %or, i32* %flags111, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.94, %land.lhs.true.85, %if.end.81
  %118 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa113 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %118, i32 0, i32 23
  %119 = load %struct.msa_struct*, %struct.msa_struct** %msa113, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %119, i32 0, i32 17
  %120 = load i8**, i8*** %sa, align 8
  %cmp114 = icmp ne i8** %120, null
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.144

land.lhs.true.116:                                ; preds = %if.end.112
  %121 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa117 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %121, i32 0, i32 23
  %122 = load %struct.msa_struct*, %struct.msa_struct** %msa117, align 8
  %lastidx118 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %122, i32 0, i32 45
  %123 = load i32, i32* %lastidx118, align 4
  %idxprom119 = sext i32 %123 to i64
  %124 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa120 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %124, i32 0, i32 23
  %125 = load %struct.msa_struct*, %struct.msa_struct** %msa120, align 8
  %sa121 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %125, i32 0, i32 17
  %126 = load i8**, i8*** %sa121, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %126, i64 %idxprom119
  %127 = load i8*, i8** %arrayidx122, align 8
  %cmp123 = icmp ne i8* %127, null
  br i1 %cmp123, label %if.then.125, label %if.end.144

if.then.125:                                      ; preds = %land.lhs.true.116
  %128 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa126 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %128, i32 0, i32 23
  %129 = load %struct.msa_struct*, %struct.msa_struct** %msa126, align 8
  %lastidx127 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %129, i32 0, i32 45
  %130 = load i32, i32* %lastidx127, align 4
  %idxprom128 = sext i32 %130 to i64
  %131 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa129 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %131, i32 0, i32 23
  %132 = load %struct.msa_struct*, %struct.msa_struct** %msa129, align 8
  %aseq130 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 0
  %133 = load i8**, i8*** %aseq130, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %133, i64 %idxprom128
  %134 = load i8*, i8** %arrayidx131, align 8
  %135 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa132 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %135, i32 0, i32 23
  %136 = load %struct.msa_struct*, %struct.msa_struct** %msa132, align 8
  %alen133 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 3
  %137 = load i32, i32* %alen133, align 4
  %138 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa134 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %138, i32 0, i32 23
  %139 = load %struct.msa_struct*, %struct.msa_struct** %msa134, align 8
  %lastidx135 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %139, i32 0, i32 45
  %140 = load i32, i32* %lastidx135, align 4
  %idxprom136 = sext i32 %140 to i64
  %141 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa137 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %141, i32 0, i32 23
  %142 = load %struct.msa_struct*, %struct.msa_struct** %msa137, align 8
  %sa138 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %142, i32 0, i32 17
  %143 = load i8**, i8*** %sa138, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %143, i64 %idxprom136
  %144 = load i8*, i8** %arrayidx139, align 8
  %145 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %sa140 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %145, i32 0, i32 11
  %call141 = call i32 @MakeDealignedString(i8* %134, i32 %137, i8* %144, i8** %sa140)
  %146 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags142 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %146, i32 0, i32 0
  %147 = load i32, i32* %flags142, align 4
  %or143 = or i32 %147, 1024
  store i32 %or143, i32* %flags142, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.125, %land.lhs.true.116, %if.end.112
  %148 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %msa145 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %148, i32 0, i32 23
  %149 = load %struct.msa_struct*, %struct.msa_struct** %msa145, align 8
  %lastidx146 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %149, i32 0, i32 45
  %150 = load i32, i32* %lastidx146, align 4
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %lastidx146, align 4
  br label %if.end.192

if.else:                                          ; preds = %entry
  %151 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %151, i32 0, i32 0
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call147 = call i32 @feof(%struct._IO_FILE* %152) #5
  %tobool = icmp ne i32 %call147, 0
  br i1 %tobool, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.else
  %153 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %153, i32 0, i32 5
  %154 = load i32, i32* %ssimode, align 4
  %cmp150 = icmp eq i32 %154, -1
  br i1 %cmp150, label %if.then.152, label %if.else.155

if.then.152:                                      ; preds = %if.end.149
  %call153 = call noalias i8* @calloc(i64 501, i64 1) #5
  %155 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq154 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %155, i32 0, i32 15
  store i8* %call153, i8** %seq154, align 8
  %156 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %156, i32 0, i32 19
  store i32 500, i32* %maxseq, align 4
  br label %if.end.158

if.else.155:                                      ; preds = %if.end.149
  %157 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq156 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %157, i32 0, i32 15
  store i8* null, i8** %seq156, align 8
  %158 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq157 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %158, i32 0, i32 19
  store i32 0, i32* %maxseq157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.152
  %159 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen159 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %159, i32 0, i32 18
  store i32 0, i32* %seqlen159, align 4
  %160 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %161 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo160 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %161, i32 0, i32 16
  store %struct.seqinfo_s* %160, %struct.seqinfo_s** %sqinfo160, align 8
  %162 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo161 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %162, i32 0, i32 16
  %163 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo161, align 8
  %flags162 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %163, i32 0, i32 0
  store i32 0, i32* %flags162, align 4
  %164 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %format163 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %164, i32 0, i32 20
  %165 = load i32, i32* %format163, align 4
  switch i32 %165, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb.164
    i32 2, label %sw.bb.165
    i32 7, label %sw.bb.166
    i32 4, label %sw.bb.167
    i32 8, label %sw.bb.168
    i32 12, label %sw.bb.169
    i32 16, label %sw.bb.170
    i32 5, label %sw.bb.171
    i32 9, label %sw.bb.181
  ]

sw.bb:                                            ; preds = %if.end.158
  %166 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readIG(%struct.ReadSeqVars* %166)
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.end.158
  %167 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readStrider(%struct.ReadSeqVars* %167)
  br label %sw.epilog

sw.bb.165:                                        ; preds = %if.end.158
  %168 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readGenBank(%struct.ReadSeqVars* %168)
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.158
  %169 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readPearson(%struct.ReadSeqVars* %169)
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.end.158
  %170 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readEMBL(%struct.ReadSeqVars* %170)
  br label %sw.epilog

sw.bb.168:                                        ; preds = %if.end.158
  %171 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readZuker(%struct.ReadSeqVars* %171)
  br label %sw.epilog

sw.bb.169:                                        ; preds = %if.end.158
  %172 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readPIR(%struct.ReadSeqVars* %172)
  br label %sw.epilog

sw.bb.170:                                        ; preds = %if.end.158
  %173 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readGCGdata(%struct.ReadSeqVars* %173)
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.end.158
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.171
  %174 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %174, i32 0, i32 3
  %175 = load i8*, i8** %buf, align 8
  %call172 = call i8* @strstr(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp173 = icmp ne i8* %call172, null
  %conv174 = zext i1 %cmp173 to i32
  store i32 %conv174, i32* %gotuw, align 4
  %176 = load i32, i32* %gotuw, align 4
  %tobool175 = icmp ne i32 %176, 0
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %do.body
  %177 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readUWGCG(%struct.ReadSeqVars* %177)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %do.body
  %178 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %178)
  br label %do.cond

do.cond:                                          ; preds = %if.end.177
  %179 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f178 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %179, i32 0, i32 0
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %f178, align 8
  %call179 = call i32 @feof(%struct._IO_FILE* %180) #5
  %tobool180 = icmp ne i32 %call179, 0
  %lnot = xor i1 %tobool180, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.bb.181:                                        ; preds = %if.end.158
  br label %sw.default

sw.default:                                       ; preds = %if.end.158, %sw.bb.181
  store i32 5, i32* @squid_errno, align 4
  %181 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq182 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %181, i32 0, i32 15
  %182 = load i8*, i8** %seq182, align 8
  call void @free(i8* %182) #5
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %do.end, %sw.bb.170, %sw.bb.169, %sw.bb.168, %sw.bb.167, %sw.bb.166, %sw.bb.165, %sw.bb.164, %sw.bb
  %183 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq183 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %183, i32 0, i32 15
  %184 = load i8*, i8** %seq183, align 8
  %cmp184 = icmp ne i8* %184, null
  br i1 %cmp184, label %if.then.186, label %if.end.191

if.then.186:                                      ; preds = %sw.epilog
  %185 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen187 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %185, i32 0, i32 18
  %186 = load i32, i32* %seqlen187, align 4
  %idxprom188 = sext i32 %186 to i64
  %187 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq189 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %187, i32 0, i32 15
  %188 = load i8*, i8** %seq189, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %188, i64 %idxprom188
  store i8 0, i8* %arrayidx190, align 1
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.186, %sw.epilog
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.end.144
  %189 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen193 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %189, i32 0, i32 18
  %190 = load i32, i32* %seqlen193, align 4
  %191 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %len = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %191, i32 0, i32 5
  store i32 %190, i32* %len, align 4
  %192 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags194 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %192, i32 0, i32 0
  %193 = load i32, i32* %flags194, align 4
  %or195 = or i32 %193, 64
  store i32 %or195, i32* %flags194, align 4
  %194 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq196 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %194, i32 0, i32 15
  %195 = load i8*, i8** %seq196, align 8
  %196 = load i8**, i8*** %ret_seq.addr, align 8
  store i8* %195, i8** %196, align 8
  %197 = load i32, i32* @squid_errno, align 4
  %cmp197 = icmp eq i32 %197, 0
  br i1 %cmp197, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %if.end.192
  store i32 1, i32* %retval
  br label %return

if.else.200:                                      ; preds = %if.end.192
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.200, %if.then.199, %sw.default, %if.then.148, %if.then.8
  %198 = load i32, i32* %retval
  ret i32 %198
}

declare %struct.msa_struct* @MSAFileRead(%struct.msafile_struct*) #1

declare i32 @MakeDealignedString(i8*, i32, i8*, i8**) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @readIG(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %nm = alloca i8*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %0)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %3 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %3, i32 0, i32 3
  %4 = load i8*, i8** %buf, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf2 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 3
  %7 = load i8*, i8** %buf2, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv3, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %9 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.cond
  %10 = phi i1 [ true, %do.cond ], [ %9, %land.end ]
  %lnot = xor i1 %10, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f6, align 8
  %call7 = call i32 @feof(%struct._IO_FILE* %12) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.15, label %if.then

if.then:                                          ; preds = %do.end
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf9 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %13, i32 0, i32 3
  %14 = load i8*, i8** %buf9, align 8
  %call10 = call i8* @strtok(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call10, i8** %nm, align 8
  %cmp11 = icmp ne i8* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 16
  %16 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %17 = load i8*, i8** %nm, align 8
  %call14 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %16, i8* %17, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %18 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endIG, %struct.ReadSeqVars* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f16 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f16, align 8
  %call17 = call i32 @feof(%struct._IO_FILE* %20) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %lor.end.30, label %lor.rhs.19

lor.rhs.19:                                       ; preds = %while.cond
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf20 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 3
  %22 = load i8*, i8** %buf20, align 8
  %23 = load i8, i8* %22, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %land.rhs.24, label %land.end.29

land.rhs.24:                                      ; preds = %lor.rhs.19
  %24 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf25 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %24, i32 0, i32 3
  %25 = load i8*, i8** %buf25, align 8
  %26 = load i8, i8* %25, align 1
  %conv26 = sext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 59
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.24, %lor.rhs.19
  %27 = phi i1 [ false, %lor.rhs.19 ], [ %cmp27, %land.rhs.24 ]
  br label %lor.end.30

lor.end.30:                                       ; preds = %land.end.29, %while.cond
  %28 = phi i1 [ true, %while.cond ], [ %27, %land.end.29 ]
  %lnot31 = xor i1 %28, true
  br i1 %lnot31, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.30
  %29 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %29)
  br label %while.cond

while.end:                                        ; preds = %lor.end.30
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readStrider(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %nm = alloca i8*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 3
  %3 = load i8*, i8** %buf, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf2 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 3
  %7 = load i8*, i8** %buf2, align 8
  %call3 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i64 14) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 3
  %9 = load i8*, i8** %buf6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 16
  %call7 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #5
  store i8* %call7, i8** %nm, align 8
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 16
  %11 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %12 = load i8*, i8** %nm, align 8
  %call11 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %11, i8* %12, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %while.body
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %13)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f13 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f13, align 8
  %call14 = call i32 @feof(%struct._IO_FILE* %15) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %while.end
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 1, i32 (i8*, i32*)* @endStrider, %struct.ReadSeqVars* %16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %while.end
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.28, %if.end.17
  %17 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f19, align 8
  %call20 = call i32 @feof(%struct._IO_FILE* %18) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.end.27, label %land.rhs.22

land.rhs.22:                                      ; preds = %while.cond.18
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf23 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 3
  %20 = load i8*, i8** %buf23, align 8
  %21 = load i8, i8* %20, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp ne i32 %conv24, 59
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.22, %while.cond.18
  %22 = phi i1 [ false, %while.cond.18 ], [ %cmp25, %land.rhs.22 ]
  br i1 %22, label %while.body.28, label %while.end.29

while.body.28:                                    ; preds = %land.end.27
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %23)
  br label %while.cond.18

while.end.29:                                     ; preds = %land.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readGenBank(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %sptr = alloca i8*, align 8
  %in_definition = alloca i32, align 4
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 3
  %1 = load i8*, i8** %buf, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i64 5) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %3, i32 0, i32 5
  %4 = load i32, i32* %ssimode, align 4
  %cmp1 = icmp sge i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %5 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %r_off = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %5, i32 0, i32 7
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 6
  %7 = bitcast %struct.ssioffset_s* %r_off to i8*
  %8 = bitcast %struct.ssioffset_s* %ssioffset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf2 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %9, i32 0, i32 3
  %10 = load i8*, i8** %buf2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 12
  %call3 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call3, i8** %sptr, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 16
  %12 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %13 = load i8*, i8** %sptr, align 8
  %call6 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %12, i8* %13, i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  store i32 0, i32* %in_definition, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.77, %if.end.7
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i32 @feof(%struct._IO_FILE* %15) #5
  %tobool = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body.10, label %while.end.78

while.body.10:                                    ; preds = %while.cond.8
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %16)
  %17 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f11 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f11, align 8
  %call12 = call i32 @feof(%struct._IO_FILE* %18) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.10
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 3
  %20 = load i8*, i8** %buf14, align 8
  %call15 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0)) #6
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf16 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 3
  %22 = load i8*, i8** %buf16, align 8
  %cmp17 = icmp eq i8* %call15, %22
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 3
  %24 = load i8*, i8** %buf19, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %24, i64 12
  %call21 = call i8* @strtok(i8* %add.ptr20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %call21, i8** %sptr, align 8
  %cmp22 = icmp ne i8* %call21, null
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.18
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo24 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 16
  %26 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo24, align 8
  %27 = load i8*, i8** %sptr, align 8
  %call25 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %26, i8* %27, i32 8)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.18
  store i32 1, i32* %in_definition, align 4
  br label %if.end.77

if.else:                                          ; preds = %land.lhs.true, %while.body.10
  %28 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f27 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %28, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f27, align 8
  %call28 = call i32 @feof(%struct._IO_FILE* %29) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.44, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %if.else
  %30 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf31 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %30, i32 0, i32 3
  %31 = load i8*, i8** %buf31, align 8
  %call32 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0)) #6
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf33 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %32, i32 0, i32 3
  %33 = load i8*, i8** %buf33, align 8
  %cmp34 = icmp eq i8* %call32, %33
  br i1 %cmp34, label %if.then.35, label %if.else.44

if.then.35:                                       ; preds = %land.lhs.true.30
  %34 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf36 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %34, i32 0, i32 3
  %35 = load i8*, i8** %buf36, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %35, i64 12
  %call38 = call i8* @strtok(i8* %add.ptr37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call38, i8** %sptr, align 8
  %cmp39 = icmp ne i8* %call38, null
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.35
  %36 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo41 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %36, i32 0, i32 16
  %37 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo41, align 8
  %38 = load i8*, i8** %sptr, align 8
  %call42 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %37, i8* %38, i32 4)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.35
  store i32 0, i32* %in_definition, align 4
  br label %if.end.76

if.else.44:                                       ; preds = %land.lhs.true.30, %if.else
  %39 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f45 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %39, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f45, align 8
  %call46 = call i32 @feof(%struct._IO_FILE* %40) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.62, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %if.else.44
  %41 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf49 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %41, i32 0, i32 3
  %42 = load i8*, i8** %buf49, align 8
  %call50 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0)) #6
  %43 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf51 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %43, i32 0, i32 3
  %44 = load i8*, i8** %buf51, align 8
  %cmp52 = icmp eq i8* %call50, %44
  br i1 %cmp52, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %land.lhs.true.48
  %45 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf54 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %45, i32 0, i32 3
  %46 = load i8*, i8** %buf54, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %46, i64 12
  %call56 = call i8* @strtok(i8* %add.ptr55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call56, i8** %sptr, align 8
  %cmp57 = icmp ne i8* %call56, null
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.then.53
  %47 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo59 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %47, i32 0, i32 16
  %48 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo59, align 8
  %49 = load i8*, i8** %sptr, align 8
  %call60 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %48, i8* %49, i32 2)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.then.53
  store i32 0, i32* %in_definition, align 4
  br label %if.end.75

if.else.62:                                       ; preds = %land.lhs.true.48, %if.else.44
  %50 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf63 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %50, i32 0, i32 3
  %51 = load i8*, i8** %buf63, align 8
  %call64 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i64 6) #6
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.73

if.then.66:                                       ; preds = %if.else.62
  %52 = load i32, i32* %in_definition, align 4
  %tobool67 = icmp ne i32 %52, 0
  br i1 %tobool67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.then.66
  %53 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo69 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %53, i32 0, i32 16
  %54 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo69, align 8
  %55 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf70 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %55, i32 0, i32 3
  %56 = load i8*, i8** %buf70, align 8
  %call71 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %54, i8* %56, i32 8)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.then.66
  br label %if.end.74

if.else.73:                                       ; preds = %if.else.62
  br label %while.end.78

if.end.74:                                        ; preds = %if.end.72
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.61
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.43
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.26
  br label %while.cond.8

while.end.78:                                     ; preds = %if.else.73, %while.cond.8
  %57 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endGB, %struct.ReadSeqVars* %57)
  %58 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo79 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %58, i32 0, i32 16
  %59 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo79, align 8
  %start = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %59, i32 0, i32 6
  store i32 1, i32* %start, align 4
  %60 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %60, i32 0, i32 18
  %61 = load i32, i32* %seqlen, align 4
  %62 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo80 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %62, i32 0, i32 16
  %63 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo80, align 8
  %stop = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %63, i32 0, i32 7
  store i32 %61, i32* %stop, align 4
  %64 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen81 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %64, i32 0, i32 18
  %65 = load i32, i32* %seqlen81, align 4
  %66 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo82 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %66, i32 0, i32 16
  %67 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo82, align 8
  %olen = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %67, i32 0, i32 8
  store i32 %65, i32* %olen, align 4
  %68 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo83 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %68, i32 0, i32 16
  %69 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo83, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %69, i32 0, i32 0
  %70 = load i32, i32* %flags, align 4
  %or = or i32 %70, 304
  store i32 %or, i32* %flags, align 4
  br label %while.cond.84

while.cond.84:                                    ; preds = %while.body.97, %while.end.78
  %71 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f85 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %71, i32 0, i32 0
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %f85, align 8
  %call86 = call i32 @feof(%struct._IO_FILE* %72) #5
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.84
  %73 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf88 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %73, i32 0, i32 3
  %74 = load i8*, i8** %buf88, align 8
  %75 = load i8, i8* %74, align 1
  %conv = sext i8 %75 to i32
  %cmp89 = icmp ne i32 %conv, 0
  br i1 %cmp89, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %76 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf91 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %76, i32 0, i32 3
  %77 = load i8*, i8** %buf91, align 8
  %call92 = call i8* @strstr(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0)) #6
  %78 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf93 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %78, i32 0, i32 3
  %79 = load i8*, i8** %buf93, align 8
  %cmp94 = icmp eq i8* %call92, %79
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %80 = phi i1 [ false, %lor.rhs ], [ %cmp94, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond.84
  %81 = phi i1 [ true, %while.cond.84 ], [ %80, %land.end ]
  %lnot96 = xor i1 %81, true
  br i1 %lnot96, label %while.body.97, label %while.end.98

while.body.97:                                    ; preds = %lor.end
  %82 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %82)
  br label %while.cond.84

while.end.98:                                     ; preds = %lor.end
  br label %while.cond.99

while.cond.99:                                    ; preds = %while.body.110, %while.end.98
  %83 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f100 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %83, i32 0, i32 0
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %f100, align 8
  %call101 = call i32 @feof(%struct._IO_FILE* %84) #5
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %land.end.109, label %land.rhs.103

land.rhs.103:                                     ; preds = %while.cond.99
  %85 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf104 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %85, i32 0, i32 3
  %86 = load i8*, i8** %buf104, align 8
  %call105 = call i8* @strstr(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0)) #6
  %87 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf106 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %87, i32 0, i32 3
  %88 = load i8*, i8** %buf106, align 8
  %cmp107 = icmp ne i8* %call105, %88
  br label %land.end.109

land.end.109:                                     ; preds = %land.rhs.103, %while.cond.99
  %89 = phi i1 [ false, %while.cond.99 ], [ %cmp107, %land.rhs.103 ]
  br i1 %89, label %while.body.110, label %while.end.111

while.body.110:                                   ; preds = %land.end.109
  %90 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %90)
  br label %while.cond.99

while.end.111:                                    ; preds = %land.end.109
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readPearson(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %sptr = alloca i8*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 5
  %1 = load i32, i32* %ssimode, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %r_off = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 7
  %3 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %3, i32 0, i32 6
  %4 = bitcast %struct.ssioffset_s* %r_off to i8*
  %5 = bitcast %struct.ssioffset_s* %ssioffset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 3
  %7 = load i8*, i8** %buf, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp ne i32 %conv, 62
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %fname = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %9, i32 0, i32 1
  %10 = load i8*, i8** %fname, align 8
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %linenumber = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 2
  %12 = load i32, i32* %linenumber, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.126, i32 0, i32 0), i8* %10, i32 %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %13, i32 0, i32 3
  %14 = load i8*, i8** %buf5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  %call = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call, i8** %sptr, align 8
  %cmp6 = icmp ne i8* %call, null
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 16
  %16 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %17 = load i8*, i8** %sptr, align 8
  %call9 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %16, i8* %17, i32 1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %call11 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %call11, i8** %sptr, align 8
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.10
  %18 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo15 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %18, i32 0, i32 16
  %19 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo15, align 8
  %20 = load i8*, i8** %sptr, align 8
  %call16 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %19, i8* %20, i32 8)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.10
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endPearson, %struct.ReadSeqVars* %21)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %22 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %22, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @feof(%struct._IO_FILE* %23) #5
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %24 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %24, i32 0, i32 3
  %25 = load i8*, i8** %buf19, align 8
  %26 = load i8, i8* %25, align 1
  %conv20 = sext i8 %26 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %27 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf23 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %27, i32 0, i32 3
  %28 = load i8*, i8** %buf23, align 8
  %29 = load i8, i8* %28, align 1
  %conv24 = sext i8 %29 to i32
  %cmp25 = icmp eq i32 %conv24, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %30 = phi i1 [ false, %lor.rhs ], [ %cmp25, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %31 = phi i1 [ true, %while.cond ], [ %30, %land.end ]
  %lnot = xor i1 %31, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %32)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readEMBL(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %sptr = alloca i8*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 3
  %3 = load i8*, i8** %buf, align 8
  %call1 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i64 4) #6
  %cmp = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %5)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 5
  %7 = load i32, i32* %ssimode, align 4
  %cmp2 = icmp sge i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %r_off = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 7
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %9, i32 0, i32 6
  %10 = bitcast %struct.ssioffset_s* %r_off to i8*
  %11 = bitcast %struct.ssioffset_s* %ssioffset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf3 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 3
  %13 = load i8*, i8** %buf3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 5
  %call4 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call4, i8** %sptr, align 8
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 16
  %15 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %16 = load i8*, i8** %sptr, align 8
  %call7 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %15, i8* %16, i32 1)
  %17 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo8 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %17, i32 0, i32 16
  %18 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo8, align 8
  %19 = load i8*, i8** %sptr, align 8
  %call9 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %18, i8* %19, i32 2)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  br label %do.body

do.body:                                          ; preds = %land.end.53, %if.end.10
  %20 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %20)
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f11 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f11, align 8
  %call12 = call i32 @feof(%struct._IO_FILE* %22) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 3
  %24 = load i8*, i8** %buf14, align 8
  %call15 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0)) #6
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf16 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 3
  %26 = load i8*, i8** %buf16, align 8
  %cmp17 = icmp eq i8* %call15, %26
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  %27 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %27, i32 0, i32 3
  %28 = load i8*, i8** %buf19, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %28, i64 5
  %call21 = call i8* @strtok(i8* %add.ptr20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0)) #5
  store i8* %call21, i8** %sptr, align 8
  %cmp22 = icmp ne i8* %call21, null
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.18
  %29 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo24 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %29, i32 0, i32 16
  %30 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo24, align 8
  %31 = load i8*, i8** %sptr, align 8
  %call25 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %30, i8* %31, i32 4)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.18
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %do.body
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f27 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %32, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f27, align 8
  %call28 = call i32 @feof(%struct._IO_FILE* %33) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.44, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %if.else
  %34 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf31 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %34, i32 0, i32 3
  %35 = load i8*, i8** %buf31, align 8
  %call32 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0)) #6
  %36 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf33 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %36, i32 0, i32 3
  %37 = load i8*, i8** %buf33, align 8
  %cmp34 = icmp eq i8* %call32, %37
  br i1 %cmp34, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %land.lhs.true.30
  %38 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf36 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %38, i32 0, i32 3
  %39 = load i8*, i8** %buf36, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 5
  %call38 = call i8* @strtok(i8* %add.ptr37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %call38, i8** %sptr, align 8
  %cmp39 = icmp ne i8* %call38, null
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.35
  %40 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo41 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %40, i32 0, i32 16
  %41 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo41, align 8
  %42 = load i8*, i8** %sptr, align 8
  %call42 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %41, i8* %42, i32 8)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.30, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.26
  br label %do.cond

do.cond:                                          ; preds = %if.end.45
  %43 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f46 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %43, i32 0, i32 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f46, align 8
  %call47 = call i32 @feof(%struct._IO_FILE* %44) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.end.53, label %land.rhs.49

land.rhs.49:                                      ; preds = %do.cond
  %45 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf50 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %45, i32 0, i32 3
  %46 = load i8*, i8** %buf50, align 8
  %call51 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i64 2) #6
  %cmp52 = icmp ne i32 %call51, 0
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.49, %do.cond
  %47 = phi i1 [ false, %do.cond ], [ %cmp52, %land.rhs.49 ]
  br i1 %47, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.53
  %48 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endEMBL, %struct.ReadSeqVars* %48)
  %49 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode54 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %49, i32 0, i32 5
  %50 = load i32, i32* %ssimode54, align 4
  %cmp55 = icmp eq i32 %50, -1
  br i1 %cmp55, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %do.end
  %51 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %51, i32 0, i32 15
  %52 = load i8*, i8** %seq, align 8
  store i8* %52, i8** %sptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.56
  %53 = load i8*, i8** %sptr, align 8
  %54 = load i8, i8* %53, align 1
  %conv = sext i8 %54 to i32
  %cmp57 = icmp ne i32 %conv, 0
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i8*, i8** %sptr, align 8
  %56 = load i8, i8* %55, align 1
  %conv59 = sext i8 %56 to i32
  %cmp60 = icmp eq i32 %conv59, 45
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body
  %57 = load i8*, i8** %sptr, align 8
  store i8 78, i8* %57, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %58 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %do.end
  %59 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo65 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %59, i32 0, i32 16
  %60 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo65, align 8
  %start = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %60, i32 0, i32 6
  store i32 1, i32* %start, align 4
  %61 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %61, i32 0, i32 18
  %62 = load i32, i32* %seqlen, align 4
  %63 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo66 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %63, i32 0, i32 16
  %64 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo66, align 8
  %stop = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %64, i32 0, i32 7
  store i32 %62, i32* %stop, align 4
  %65 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen67 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %65, i32 0, i32 18
  %66 = load i32, i32* %seqlen67, align 4
  %67 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo68 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %67, i32 0, i32 16
  %68 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo68, align 8
  %olen = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %68, i32 0, i32 8
  store i32 %66, i32* %olen, align 4
  %69 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo69 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %69, i32 0, i32 16
  %70 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo69, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %70, i32 0, i32 0
  %71 = load i32, i32* %flags, align 4
  %or = or i32 %71, 304
  store i32 %or, i32* %flags, align 4
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.80, %if.end.64
  %72 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f71 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %72, i32 0, i32 0
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %f71, align 8
  %call72 = call i32 @feof(%struct._IO_FILE* %73) #5
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %land.end.79, label %land.rhs.74

land.rhs.74:                                      ; preds = %while.cond.70
  %74 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf75 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %74, i32 0, i32 3
  %75 = load i8*, i8** %buf75, align 8
  %call76 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i64 4) #6
  %cmp77 = icmp ne i32 %call76, 0
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.74, %while.cond.70
  %76 = phi i1 [ false, %while.cond.70 ], [ %cmp77, %land.rhs.74 ]
  br i1 %76, label %while.body.80, label %while.end.81

while.body.80:                                    ; preds = %land.end.79
  %77 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %77)
  br label %while.cond.70

while.end.81:                                     ; preds = %land.end.79
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readZuker(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %sptr = alloca i8*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %0)
  %1 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %1, i32 0, i32 3
  %2 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 6
  %call = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #5
  store i8* %call, i8** %sptr, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %3, i32 0, i32 16
  %4 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %5 = load i8*, i8** %sptr, align 8
  %call1 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %4, i8* %5, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %call2, i8** %sptr, align 8
  %cmp3 = icmp ne i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 16
  %7 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo5, align 8
  %8 = load i8*, i8** %sptr, align 8
  %call6 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %7, i8* %8, i32 8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endZuker, %struct.ReadSeqVars* %9)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i32 @feof(%struct._IO_FILE* %11) #5
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf9 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 3
  %13 = load i8*, i8** %buf9, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp10 = icmp ne i32 %conv, 0
  %conv11 = zext i1 %cmp10 to i32
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf12 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 3
  %16 = load i8*, i8** %buf12, align 8
  %17 = load i8, i8* %16, align 1
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 40
  %conv15 = zext i1 %cmp14 to i32
  %and = and i32 %conv11, %conv15
  %or = or i32 %call8, %and
  %tobool = icmp ne i32 %or, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %18)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readPIR(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %sptr = alloca i8*, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 3
  %3 = load i8*, i8** %buf, align 8
  %call1 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i64 5) #6
  %cmp = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %5)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f2 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f2, align 8
  %call3 = call i32 @feof(%struct._IO_FILE* %7) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end.68

if.end:                                           ; preds = %while.end
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 5
  %9 = load i32, i32* %ssimode, align 4
  %cmp5 = icmp sge i32 %9, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %r_off = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 7
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 6
  %12 = bitcast %struct.ssioffset_s* %r_off to i8*
  %13 = bitcast %struct.ssioffset_s* %ssioffset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf8 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 3
  %15 = load i8*, i8** %buf8, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 15
  %call9 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call9, i8** %sptr, align 8
  %cmp10 = icmp ne i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.7
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %16, i32 0, i32 16
  %17 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %18 = load i8*, i8** %sptr, align 8
  %call12 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %17, i8* %18, i32 1)
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo13 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 16
  %20 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo13, align 8
  %21 = load i8*, i8** %sptr, align 8
  %call14 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %20, i8* %21, i32 2)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.7
  br label %do.body

do.body:                                          ; preds = %land.end.52, %if.end.15
  %22 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %22)
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f16 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f16, align 8
  %call17 = call i32 @feof(%struct._IO_FILE* %24) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 3
  %26 = load i8*, i8** %buf19, align 8
  %call20 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i64 5) #6
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %27 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo23 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %27, i32 0, i32 16
  %28 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo23, align 8
  %29 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf24 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %29, i32 0, i32 3
  %30 = load i8*, i8** %buf24, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %30, i64 15
  %call26 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %28, i8* %add.ptr25, i32 8)
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %do.body
  %31 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f27 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f27, align 8
  %call28 = call i32 @feof(%struct._IO_FILE* %32) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.43, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %if.else
  %33 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf31 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %33, i32 0, i32 3
  %34 = load i8*, i8** %buf31, align 8
  %call32 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i64 9) #6
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %land.lhs.true.30
  %35 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf35 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %35, i32 0, i32 3
  %36 = load i8*, i8** %buf35, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %36, i64 15
  %call37 = call i8* @strtok(i8* %add.ptr36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #5
  store i8* %call37, i8** %sptr, align 8
  %cmp38 = icmp ne i8* %call37, null
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.then.34
  %37 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo40 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %37, i32 0, i32 16
  %38 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo40, align 8
  %39 = load i8*, i8** %sptr, align 8
  %call41 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %38, i8* %39, i32 4)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.then.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true.30, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %40 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f45 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %40, i32 0, i32 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %f45, align 8
  %call46 = call i32 @feof(%struct._IO_FILE* %41) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.end.52, label %land.rhs.48

land.rhs.48:                                      ; preds = %do.cond
  %42 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf49 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %42, i32 0, i32 3
  %43 = load i8*, i8** %buf49, align 8
  %call50 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i64 8) #6
  %cmp51 = icmp ne i32 %call50, 0
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.48, %do.cond
  %44 = phi i1 [ false, %do.cond ], [ %cmp51, %land.rhs.48 ]
  br i1 %44, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.52
  %45 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %45)
  %46 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endPIR, %struct.ReadSeqVars* %46)
  %47 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo53 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %47, i32 0, i32 16
  %48 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo53, align 8
  %start = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %48, i32 0, i32 6
  store i32 1, i32* %start, align 4
  %49 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %49, i32 0, i32 18
  %50 = load i32, i32* %seqlen, align 4
  %51 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo54 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %51, i32 0, i32 16
  %52 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo54, align 8
  %stop = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %52, i32 0, i32 7
  store i32 %50, i32* %stop, align 4
  %53 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen55 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %53, i32 0, i32 18
  %54 = load i32, i32* %seqlen55, align 4
  %55 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo56 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %55, i32 0, i32 16
  %56 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo56, align 8
  %olen = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %56, i32 0, i32 8
  store i32 %54, i32* %olen, align 4
  %57 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo57 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %57, i32 0, i32 16
  %58 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo57, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %58, i32 0, i32 0
  %59 = load i32, i32* %flags, align 4
  %or = or i32 %59, 304
  store i32 %or, i32* %flags, align 4
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.67, %do.end
  %60 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f59 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %60, i32 0, i32 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %f59, align 8
  %call60 = call i32 @feof(%struct._IO_FILE* %61) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %land.end.66, label %land.rhs.62

land.rhs.62:                                      ; preds = %while.cond.58
  %62 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf63 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %62, i32 0, i32 3
  %63 = load i8*, i8** %buf63, align 8
  %call64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i64 5) #6
  %cmp65 = icmp ne i32 %call64, 0
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.62, %while.cond.58
  %64 = phi i1 [ false, %while.cond.58 ], [ %cmp65, %land.rhs.62 ]
  br i1 %64, label %while.body.67, label %while.end.68

while.body.67:                                    ; preds = %land.end.66
  %65 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %65)
  br label %while.cond.58

while.end.68:                                     ; preds = %if.then, %land.end.66
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readGCGdata(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %binary = alloca i32, align 4
  %blen = alloca i32, align 4
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  store i32 0, i32* %binary, align 4
  store i32 0, i32* %blen, align 4
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 3
  %1 = load i8*, i8** %buf, align 8
  %call = call i32 @Strparse(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.136, i32 0, i32 0), i8* %1, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %binary, align 4
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 16
  %3 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %4 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 1), align 8
  %call1 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %3, i8* %4, i32 1)
  %5 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 2), align 8
  %call2 = call i32 @atoi(i8* %5) #6
  store i32 %call2, i32* %blen, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf3 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 3
  %7 = load i8*, i8** %buf3, align 8
  %call4 = call i32 @Strparse(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0), i8* %7, i32 1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo7 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 16
  %9 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo7, align 8
  %10 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 1), align 8
  %call8 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %9, i8* %10, i32 1)
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %11 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf10 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %11, i32 0, i32 3
  %12 = load i8*, i8** %buf10, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.138, i32 0, i32 0), i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %13)
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo12 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 16
  %15 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo12, align 8
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf13 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %16, i32 0, i32 3
  %17 = load i8*, i8** %buf13, align 8
  %call14 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %15, i8* %17, i32 8)
  %18 = load i32, i32* %binary, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then.16, label %if.else.40

if.then.16:                                       ; preds = %if.end.11
  %19 = load i32, i32* %blen, align 4
  %20 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %20, i32 0, i32 19
  %21 = load i32, i32* %maxseq, align 4
  %cmp = icmp sge i32 %19, %21
  br i1 %cmp, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %if.then.16
  %22 = load i32, i32* %blen, align 4
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq18 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 19
  store i32 %22, i32* %maxseq18, align 4
  %24 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %24, i32 0, i32 15
  %25 = load i8*, i8** %seq, align 8
  %26 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq19 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %26, i32 0, i32 19
  %27 = load i32, i32* %maxseq19, align 4
  %add = add nsw i32 %27, 4
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call20 = call i8* @realloc(i8* %25, i64 %mul) #5
  %28 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq21 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %28, i32 0, i32 15
  store i8* %call20, i8** %seq21, align 8
  %cmp22 = icmp eq i8* %call20, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.17
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  %29 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq27 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %29, i32 0, i32 15
  %30 = load i8*, i8** %seq27, align 8
  %31 = load i32, i32* %blen, align 4
  %add28 = add nsw i32 %31, 3
  %div = sdiv i32 %add28, 4
  %conv29 = sext i32 %div to i64
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %32, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call30 = call i64 @fread(i8* %30, i64 1, i64 %conv29, %struct._IO_FILE* %33)
  %34 = load i32, i32* %blen, align 4
  %add31 = add nsw i32 %34, 3
  %div32 = sdiv i32 %add31, 4
  %conv33 = sext i32 %div32 to i64
  %cmp34 = icmp ult i64 %call30, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.26
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.26
  %35 = load i32, i32* %blen, align 4
  %36 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %36, i32 0, i32 18
  store i32 %35, i32* %seqlen, align 4
  %37 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq38 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %37, i32 0, i32 15
  %38 = load i8*, i8** %seq38, align 8
  %39 = load i32, i32* %blen, align 4
  %call39 = call i32 @GCGBinaryToSequence(i8* %38, i32 %39)
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.11
  %40 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @readLoop(i32 0, i32 (i8*, i32*)* @endGCGdata, %struct.ReadSeqVars* %40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.37
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.41
  %41 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f42 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %41, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f42, align 8
  %call43 = call i32 @feof(%struct._IO_FILE* %42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %43 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf45 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %43, i32 0, i32 3
  %44 = load i8*, i8** %buf45, align 8
  %45 = load i8, i8* %44, align 1
  %conv46 = sext i8 %45 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %46 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf49 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %46, i32 0, i32 3
  %47 = load i8*, i8** %buf49, align 8
  %48 = load i8, i8* %47, align 1
  %conv50 = sext i8 %48 to i32
  %cmp51 = icmp eq i32 %conv50, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %49 = phi i1 [ false, %lor.rhs ], [ %cmp51, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %50 = phi i1 [ true, %while.cond ], [ %49, %land.end ]
  %lnot = xor i1 %50, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %51 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %51)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @readUWGCG(%struct.ReadSeqVars* %V) #0 {
entry:
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %si = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %done = alloca i32, align 4
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 18
  store i32 0, i32* %seqlen, align 4
  %1 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %1, i32 0, i32 3
  %2 = load i8*, i8** %buf, align 8
  %call = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0)) #6
  store i8* %call, i8** %si, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %si, align 8
  store i8 0, i8* %3, align 1
  br label %if.end.5

if.else:                                          ; preds = %entry
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf1 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 3
  %5 = load i8*, i8** %buf1, align 8
  %call2 = call i8* @strstr(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #6
  store i8* %call2, i8** %si, align 8
  %cmp3 = icmp ne i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %6 = load i8*, i8** %si, align 8
  store i8 0, i8* %6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %7 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %7, i32 0, i32 3
  %8 = load i8*, i8** %buf6, align 8
  %call7 = call i8* @strtok(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #5
  store i8* %call7, i8** %sptr, align 8
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %9 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %sqinfo = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %9, i32 0, i32 16
  %10 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %11 = load i8*, i8** %sptr, align 8
  %call10 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %10, i8* %11, i32 1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.11
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i32 @feof(%struct._IO_FILE* %13) #5
  store i32 %call12, i32* %done, align 4
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %14)
  %15 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %do.body
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %16, i32 0, i32 3
  %17 = load i8*, i8** %buf14, align 8
  %18 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @addseq(i8* %17, %struct.ReadSeqVars* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %19 = load i32, i32* %done, align 4
  %tobool16 = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SeqfileFormat(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca i8*, align 8
  %len = alloca i32, align 4
  %fmt = alloca i32, align 4
  %ndataline = alloca i32, align 4
  %bufcpy = alloca i8*, align 8
  %s = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %has_junk = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %fmt, align 4
  store i8* null, i8** %buf, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %ndataline, align 4
  store i32 0, i32* %has_junk, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.183, %if.then.165, %if.then.159, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @sre_fgets(i8** %buf, i32* %len, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %buf, align 8
  %call1 = call i32 @IsBlankline(i8* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %2 = load i32, i32* %ndataline, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.end.61

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %buf, align 8
  %call4 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then.3
  %4 = load i8*, i8** %buf, align 8
  %call6 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 16, i32* %fmt, align 4
  br label %DONE

if.end.9:                                         ; preds = %land.lhs.true, %if.then.3
  %5 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv, 62
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 7, i32* %fmt, align 4
  br label %DONE

if.end.13:                                        ; preds = %if.end.9
  %7 = load i8*, i8** %buf, align 8
  %call14 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i64 13) #6
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %8 = load i8*, i8** %buf, align 8
  %call17 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i64 13) #6
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.13
  store i32 5, i32* %fmt, align 4
  br label %DONE

if.end.21:                                        ; preds = %lor.lhs.false
  %9 = load i8*, i8** %buf, align 8
  %call22 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 14) #6
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 101, i32* %fmt, align 4
  br label %DONE

if.end.26:                                        ; preds = %if.end.21
  %10 = load i8*, i8** %buf, align 8
  %call27 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 7) #6
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.end.26
  %11 = load i8*, i8** %buf, align 8
  %call31 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #6
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 104, i32* %fmt, align 4
  br label %DONE

if.end.35:                                        ; preds = %land.lhs.true.30, %if.end.26
  %12 = load i8*, i8** %buf, align 8
  %call36 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i64 23) #6
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.35
  %13 = load i8*, i8** %buf, align 8
  %call40 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i64 23) #6
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.39, %if.end.35
  store i32 103, i32* %fmt, align 4
  br label %DONE

if.end.44:                                        ; preds = %lor.lhs.false.39
  %14 = load i8*, i8** %buf, align 8
  %call45 = call i8* @sre_strdup(i8* %14, i32 -1)
  store i8* %call45, i8** %bufcpy, align 8
  %15 = load i8*, i8** %bufcpy, align 8
  store i8* %15, i8** %s, align 8
  %call46 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32* null)
  store i8* %call46, i8** %s1, align 8
  %cmp47 = icmp ne i8* %call46, null
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.60

land.lhs.true.49:                                 ; preds = %if.end.44
  %call50 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32* null)
  store i8* %call50, i8** %s2, align 8
  %cmp51 = icmp ne i8* %call50, null
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %16 = load i8*, i8** %s1, align 8
  %call54 = call i32 @IsInt(i8* %16)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.60

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %17 = load i8*, i8** %s2, align 8
  %call57 = call i32 @IsInt(i8* %17)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.56
  %18 = load i8*, i8** %bufcpy, align 8
  call void @free(i8* %18) #5
  store i32 106, i32* %fmt, align 4
  br label %DONE

if.end.60:                                        ; preds = %land.lhs.true.56, %land.lhs.true.53, %land.lhs.true.49, %if.end.44
  %19 = load i8*, i8** %bufcpy, align 8
  call void @free(i8* %19) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %20 = load i8*, i8** %buf, align 8
  %call62 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 4) #6
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.105, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %if.end.61
  %21 = load i8*, i8** %buf, align 8
  %call66 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4) #6
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then.105, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.65
  %22 = load i8*, i8** %buf, align 8
  %call70 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64 4) #6
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then.105, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.69
  %23 = load i8*, i8** %buf, align 8
  %call74 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i64 4) #6
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then.105, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.73
  %24 = load i8*, i8** %buf, align 8
  %call78 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i64 4) #6
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then.105, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.77
  %25 = load i8*, i8** %buf, align 8
  %call82 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 4) #6
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then.105, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.81
  %26 = load i8*, i8** %buf, align 8
  %call86 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i64 4) #6
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %if.then.105, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.85
  %27 = load i8*, i8** %buf, align 8
  %call90 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i64 4) #6
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.105, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.89
  %28 = load i8*, i8** %buf, align 8
  %call94 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i64 4) #6
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.105, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.93
  %29 = load i8*, i8** %buf, align 8
  %call98 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i64 4) #6
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then.105, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.97
  %30 = load i8*, i8** %buf, align 8
  %call102 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i64 4) #6
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.97, %lor.lhs.false.93, %lor.lhs.false.89, %lor.lhs.false.85, %lor.lhs.false.81, %lor.lhs.false.77, %lor.lhs.false.73, %lor.lhs.false.69, %lor.lhs.false.65, %if.end.61
  store i32 102, i32* %fmt, align 4
  br label %DONE

if.end.106:                                       ; preds = %lor.lhs.false.101
  %31 = load i8*, i8** %buf, align 8
  %call107 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i64 3) #6
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then.114, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.end.106
  %32 = load i8*, i8** %buf, align 8
  %call111 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i64 6) #6
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.110, %if.end.106
  store i32 12, i32* %fmt, align 4
  br label %DONE

if.end.115:                                       ; preds = %lor.lhs.false.110
  %33 = load i8*, i8** %buf, align 8
  %call116 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp117 = icmp ne i8* %call116, null
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.128

land.lhs.true.119:                                ; preds = %if.end.115
  %34 = load i8*, i8** %buf, align 8
  %call120 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #6
  %cmp121 = icmp ne i8* %call120, null
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.128

land.lhs.true.123:                                ; preds = %land.lhs.true.119
  %35 = load i8*, i8** %buf, align 8
  %call124 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #6
  %cmp125 = icmp ne i8* %call124, null
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 103, i32* %fmt, align 4
  br label %DONE

if.end.128:                                       ; preds = %land.lhs.true.123, %land.lhs.true.119, %if.end.115
  %36 = load i8*, i8** %buf, align 8
  %call129 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)) #6
  %cmp130 = icmp ne i8* %call129, null
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.137

land.lhs.true.132:                                ; preds = %if.end.128
  %37 = load i8*, i8** %buf, align 8
  %call133 = call i8* @strstr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp134 = icmp ne i8* %call133, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %land.lhs.true.132
  store i32 5, i32* %fmt, align 4
  br label %DONE

if.end.137:                                       ; preds = %land.lhs.true.132, %if.end.128
  %38 = load i8*, i8** %buf, align 8
  %call138 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i64 6) #6
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.then.145, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %if.end.137
  %39 = load i8*, i8** %buf, align 8
  %call142 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i64 6) #6
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %lor.lhs.false.141, %if.end.137
  store i32 2, i32* %fmt, align 4
  br label %DONE

if.end.146:                                       ; preds = %lor.lhs.false.141
  %40 = load i8*, i8** %buf, align 8
  %call147 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i64 5) #6
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then.154, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.146
  %41 = load i8*, i8** %buf, align 8
  %call151 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i64 5) #6
  %cmp152 = icmp eq i32 %call151, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %lor.lhs.false.150, %if.end.146
  store i32 4, i32* %fmt, align 4
  br label %DONE

if.end.155:                                       ; preds = %lor.lhs.false.150
  %42 = load i8*, i8** %buf, align 8
  store i8* %42, i8** %s, align 8
  %call156 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32* null)
  store i8* %call156, i8** %s1, align 8
  %cmp157 = icmp eq i8* %call156, null
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  br label %while.cond

if.end.160:                                       ; preds = %if.end.155
  %43 = load i8*, i8** %s1, align 8
  %44 = load i8, i8* %43, align 1
  %conv161 = sext i8 %44 to i32
  %call162 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 %conv161) #6
  %cmp163 = icmp ne i8* %call162, null
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.160
  br label %while.cond

if.end.166:                                       ; preds = %if.end.160
  %call167 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32* null)
  store i8* %call167, i8** %s2, align 8
  %cmp168 = icmp eq i8* %call167, null
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.166
  store i32 1, i32* %has_junk, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.166
  %45 = load i8*, i8** %s2, align 8
  %cmp172 = icmp ne i8* %45, null
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.179

land.lhs.true.174:                                ; preds = %if.end.171
  %46 = load i8*, i8** %s2, align 8
  %call175 = call i32 @Seqtype(i8* %46)
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %land.lhs.true.174
  store i32 1, i32* %has_junk, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %land.lhs.true.174, %if.end.171
  %47 = load i32, i32* %ndataline, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ndataline, align 4
  %48 = load i32, i32* %ndataline, align 4
  %cmp180 = icmp eq i32 %48, 300
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.179
  br label %while.end

if.end.183:                                       ; preds = %if.end.179
  br label %while.cond

while.end:                                        ; preds = %if.then.182, %while.cond
  %49 = load i32, i32* %ndataline, align 4
  %cmp184 = icmp eq i32 %49, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %while.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %while.end
  %50 = load i32, i32* %has_junk, align 4
  %cmp188 = icmp eq i32 %50, 1
  br i1 %cmp188, label %if.then.190, label %if.else

if.then.190:                                      ; preds = %if.end.187
  store i32 0, i32* %fmt, align 4
  br label %if.end.191

if.else:                                          ; preds = %if.end.187
  store i32 102, i32* %fmt, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.else, %if.then.190
  br label %DONE

DONE:                                             ; preds = %if.end.191, %if.then.154, %if.then.145, %if.then.136, %if.then.127, %if.then.114, %if.then.105, %if.then.59, %if.then.43, %if.then.34, %if.then.25, %if.then.20, %if.then.12, %if.then.8
  %51 = load i8*, i8** %buf, align 8
  %cmp192 = icmp ne i8* %51, null
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %DONE
  %52 = load i8*, i8** %buf, align 8
  call void @free(i8* %52) #5
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %DONE
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %53)
  %54 = load i32, i32* %fmt, align 4
  ret i32 %54
}

declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #1

declare i32 @IsBlankline(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i8* @sre_strdup(i8*, i32) #1

declare i8* @sre_strtok(i8**, i8*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @Seqtype(i8* %seq) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca i8*, align 8
  %saw = alloca i32, align 4
  %c = alloca i8, align 1
  %po = alloca i32, align 4
  %nt = alloca i32, align 4
  %nu = alloca i32, align 4
  %na = alloca i32, align 4
  %aa = alloca i32, align 4
  %no = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 0, i32* %po, align 4
  store i32 0, i32* %nt, align 4
  store i32 0, i32* %nu, align 4
  store i32 0, i32* %na, align 4
  store i32 0, i32* %aa, align 4
  store i32 0, i32* %no, align 4
  store i32 0, i32* %saw, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %saw, align 4
  %cmp2 = icmp slt i32 %2, 300
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i8*, i8** %seq.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %call = call i32 @sre_toupper(i32 %conv4)
  %conv5 = trunc i32 %call to i8
  store i8 %conv5, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br i1 %cmp7, label %if.end.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8, i8* %c, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 46
  br i1 %cmp10, label %if.end.62, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %8 = load i8, i8* %c, align 1
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 %conv13, 95
  br i1 %cmp14, label %if.end.62, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %9 = load i8, i8* %c, align 1
  %conv17 = sext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.end.62, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %10 = load i8, i8* %c, align 1
  %conv21 = sext i8 %10 to i32
  %cmp22 = icmp eq i32 %conv21, 126
  br i1 %cmp22, label %if.end.62, label %if.then

if.then:                                          ; preds = %lor.lhs.false.20
  %11 = load i8*, i8** @protonly, align 8
  %12 = load i8, i8* %c, align 1
  %conv24 = sext i8 %12 to i32
  %call25 = call i8* @strchr(i8* %11, i32 %conv24) #6
  %tobool = icmp ne i8* %call25, null
  br i1 %tobool, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then
  %13 = load i32, i32* %po, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %po, align 4
  br label %if.end.60

if.else:                                          ; preds = %if.then
  %14 = load i8*, i8** @primenuc, align 8
  %15 = load i8, i8* %c, align 1
  %conv27 = sext i8 %15 to i32
  %call28 = call i8* @strchr(i8* %14, i32 %conv27) #6
  %tobool29 = icmp ne i8* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.else.44

if.then.30:                                       ; preds = %if.else
  %16 = load i32, i32* %na, align 4
  %inc31 = add nsw i32 %16, 1
  store i32 %inc31, i32* %na, align 4
  %17 = load i8, i8* %c, align 1
  %conv32 = sext i8 %17 to i32
  %cmp33 = icmp eq i32 %conv32, 84
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.then.30
  %18 = load i32, i32* %nt, align 4
  %inc36 = add nsw i32 %18, 1
  store i32 %inc36, i32* %nt, align 4
  br label %if.end.43

if.else.37:                                       ; preds = %if.then.30
  %19 = load i8, i8* %c, align 1
  %conv38 = sext i8 %19 to i32
  %cmp39 = icmp eq i32 %conv38, 85
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else.37
  %20 = load i32, i32* %nu, align 4
  %inc42 = add nsw i32 %20, 1
  store i32 %inc42, i32* %nu, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.35
  br label %if.end.59

if.else.44:                                       ; preds = %if.else
  %21 = load i8*, i8** @aminos, align 8
  %22 = load i8, i8* %c, align 1
  %conv45 = sext i8 %22 to i32
  %call46 = call i8* @strchr(i8* %21, i32 %conv45) #6
  %tobool47 = icmp ne i8* %call46, null
  br i1 %tobool47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else.44
  %23 = load i32, i32* %aa, align 4
  %inc49 = add nsw i32 %23, 1
  store i32 %inc49, i32* %aa, align 4
  br label %if.end.58

if.else.50:                                       ; preds = %if.else.44
  %24 = load i8, i8* %c, align 1
  %conv51 = sext i8 %24 to i32
  %idxprom = sext i32 %conv51 to i64
  %call52 = call i16** @__ctype_b_loc() #7
  %25 = load i16*, i16** %call52, align 8
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 %idxprom
  %26 = load i16, i16* %arrayidx, align 2
  %conv53 = zext i16 %26 to i32
  %and = and i32 %conv53, 1024
  %tobool54 = icmp ne i32 %and, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.else.50
  %27 = load i32, i32* %no, align 4
  %inc56 = add nsw i32 %27, 1
  store i32 %inc56, i32* %no, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.else.50
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.48
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.43
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.26
  %28 = load i32, i32* %saw, align 4
  %inc61 = add nsw i32 %28, 1
  store i32 %inc61, i32* %saw, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.60, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %29 = load i8*, i8** %seq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %seq.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %30 = load i32, i32* %no, align 4
  %cmp63 = icmp sgt i32 %30, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.else.66:                                       ; preds = %for.end
  %31 = load i32, i32* %po, align 4
  %cmp67 = icmp sgt i32 %31, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.66
  store i32 3, i32* %retval
  br label %return

if.else.70:                                       ; preds = %if.else.66
  %32 = load i32, i32* %na, align 4
  %33 = load i32, i32* %aa, align 4
  %cmp71 = icmp sgt i32 %32, %33
  br i1 %cmp71, label %if.then.73, label %if.else.78

if.then.73:                                       ; preds = %if.else.70
  %34 = load i32, i32* %nu, align 4
  %35 = load i32, i32* %nt, align 4
  %cmp74 = icmp sgt i32 %34, %35
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.then.73
  store i32 2, i32* %retval
  br label %return

if.else.77:                                       ; preds = %if.then.73
  store i32 1, i32* %retval
  br label %return

if.else.78:                                       ; preds = %if.else.70
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.else.78, %if.else.77, %if.then.76, %if.then.69, %if.then.65
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @GCGBinaryToSequence(i8* %seq, i32 %len) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bpos = alloca i32, align 4
  %spos = alloca i32, align 4
  %twobit = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %0, 1
  %div = sdiv i32 %sub, 4
  store i32 %div, i32* %bpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %1 = load i32, i32* %bpos, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bpos, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %twobit, align 1
  %5 = load i32, i32* %bpos, align 4
  %mul = mul nsw i32 %5, 4
  store i32 %mul, i32* %spos, align 4
  store i32 3, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i8, i8* %twobit, align 1
  %conv = sext i8 %7 to i32
  %and = and i32 %conv, 3
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %for.body.3
  %8 = load i32, i32* %spos, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, %9
  %idxprom4 = sext i32 %add to i64
  %10 = load i8*, i8** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  store i8 67, i8* %arrayidx5, align 1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body.3
  %11 = load i32, i32* %spos, align 4
  %12 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %11, %12
  %idxprom8 = sext i32 %add7 to i64
  %13 = load i8*, i8** %seq.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 84, i8* %arrayidx9, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body.3
  %14 = load i32, i32* %spos, align 4
  %15 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %14, %15
  %idxprom12 = sext i32 %add11 to i64
  %16 = load i8*, i8** %seq.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  store i8 65, i8* %arrayidx13, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body.3
  %17 = load i32, i32* %spos, align 4
  %18 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %17, %18
  %idxprom16 = sext i32 %add15 to i64
  %19 = load i8*, i8** %seq.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom16
  store i8 71, i8* %arrayidx17, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.3, %sw.bb.14, %sw.bb.10, %sw.bb.6, %sw.bb
  %20 = load i8, i8* %twobit, align 1
  %conv18 = sext i8 %20 to i32
  %shr = ashr i32 %conv18, 2
  %conv19 = trunc i32 %shr to i8
  store i8 %conv19, i8* %twobit, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %22 = load i32, i32* %bpos, align 4
  %dec21 = add nsw i32 %22, -1
  store i32 %dec21, i32* %bpos, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %23 = load i32, i32* %len.addr, align 4
  %idxprom23 = sext i32 %23 to i64
  %24 = load i8*, i8** %seq.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %24, i64 %idxprom23
  store i8 0, i8* %arrayidx24, align 1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @GCGchecksum(i8* %seq, i32 %len) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %chk = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %chk, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %chk, align 4
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %3, 57
  %add = add nsw i32 %rem, 1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @sre_toupper(i32 %conv)
  %mul = mul nsw i32 %add, %call
  %add1 = add nsw i32 %2, %mul
  %rem2 = srem i32 %add1, 10000
  store i32 %rem2, i32* %chk, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %chk, align 4
  ret i32 %8
}

declare i32 @sre_toupper(i32) #1

; Function Attrs: nounwind uwtable
define i32 @GCGMultchecksum(i8** %seqs, i32 %nseq) #0 {
entry:
  %seqs.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %chk = alloca i32, align 4
  %idx = alloca i32, align 4
  store i8** %seqs, i8*** %seqs.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 0, i32* %chk, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %chk, align 4
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %seqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8**, i8*** %seqs.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %8) #6
  %conv = trunc i64 %call to i32
  %call3 = call i32 @GCGchecksum(i8* %5, i32 %conv)
  %add = add nsw i32 %2, %call3
  %rem = srem i32 %add, 10000
  store i32 %rem, i32* %chk, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %chk, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @GuessAlignmentSeqtype(i8** %aseq, i32 %nseq) #0 {
entry:
  %retval = alloca i32, align 4
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %nrna = alloca i32, align 4
  %ndna = alloca i32, align 4
  %namino = alloca i32, align 4
  %nother = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 0, i32* %nrna, align 4
  store i32 0, i32* %ndna, align 4
  store i32 0, i32* %namino, align 4
  store i32 0, i32* %nother, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @Seqtype(i8* %4)
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load i32, i32* %nrna, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nrna, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %6 = load i32, i32* %ndna, align 4
  %inc2 = add nsw i32 %6, 1
  store i32 %inc2, i32* %ndna, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %7 = load i32, i32* %namino, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %namino, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %8 = load i32, i32* %nother, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %nother, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.1, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %9 = load i32, i32* %idx, align 4
  %inc6 = add nsw i32 %9, 1
  store i32 %inc6, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %nother, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %11 = load i32, i32* %namino, align 4
  %12 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %13 = load i32, i32* %ndna, align 4
  %14 = load i32, i32* %nseq.addr, align 4
  %cmp10 = icmp eq i32 %13, %14
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %15 = load i32, i32* %nrna, align 4
  %16 = load i32, i32* %nseq.addr, align 4
  %cmp13 = icmp eq i32 %15, %16
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store i32 2, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  %17 = load i32, i32* %namino, align 4
  %cmp16 = icmp eq i32 %17, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i32 2, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.14, %if.then.11, %if.then.8, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @WriteSimpleFASTA(%struct._IO_FILE* %fp, i8* %seq, i8* %name, i8* %desc) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %seq.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %buf = alloca [61 x i8], align 16
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  %0 = load i8*, i8** %seq.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %arrayidx = getelementptr inbounds [61 x i8], [61 x i8]* %buf, i32 0, i64 60
  store i8 0, i8* %arrayidx, align 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %desc.addr, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %desc.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), %cond.false ]
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* %2, i8* %cond)
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, i32* %pos, align 4
  %6 = load i32, i32* %len, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [61 x i8], [61 x i8]* %buf, i32 0, i32 0
  %7 = load i8*, i8** %seq.addr, align 8
  %8 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %call5 = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr, i64 60) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay6 = getelementptr inbounds [61 x i8], [61 x i8]* %buf, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %pos, align 4
  %add = add nsw i32 %10, 60
  store i32 %add, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @WriteSeq(%struct._IO_FILE* %outf, i32 %outform, i8* %seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %outform.addr = alloca i32, align 4
  %seq.addr = alloca i8*, align 8
  %sqinfo.addr = alloca %struct.seqinfo_s*, align 8
  %numline = alloca i32, align 4
  %lines = alloca i32, align 4
  %spacer = alloca i32, align 4
  %width = alloca i32, align 4
  %tab = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %l1 = alloca i32, align 4
  %ibase = alloca i32, align 4
  %endstr = alloca [10 x i8], align 1
  %s = alloca [100 x i8], align 16
  %ss = alloca [100 x i8], align 16
  %checksum = alloca i32, align 4
  %seqlen = alloca i32, align 4
  %which_case = alloca i32, align 4
  %dostruc = alloca i32, align 4
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8
  store i32 %outform, i32* %outform.addr, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo.addr, align 8
  store i32 0, i32* %numline, align 4
  store i32 0, i32* %lines, align 4
  store i32 0, i32* %spacer, align 4
  store i32 50, i32* %width, align 4
  store i32 0, i32* %tab, align 4
  store i32 0, i32* %checksum, align 4
  store i32 0, i32* %which_case, align 4
  store i32 0, i32* %dostruc, align 4
  %0 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %0, i32 0, i32 0
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %len = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %2, i32 0, i32 5
  %3 = load i32, i32* %len, align 4
  %conv = sext i32 %3 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8*, i8** %seq.addr, align 8
  %call = call i64 @strlen(i8* %4) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  store i32 %conv1, i32* %seqlen, align 4
  %5 = load i32, i32* %outform.addr, align 4
  %cmp = icmp sgt i32 %5, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call3 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0)) #5
  store i32 0, i32* %l1, align 4
  %6 = load i8*, i8** %seq.addr, align 8
  %7 = load i32, i32* %seqlen, align 4
  %call4 = call i32 @GCGchecksum(i8* %6, i32 %7)
  store i32 %call4, i32* %checksum, align 4
  %8 = load i32, i32* %outform.addr, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.7
    i32 16, label %sw.bb.40
    i32 12, label %sw.bb.54
    i32 14, label %sw.bb.93
    i32 4, label %sw.bb.159
    i32 5, label %sw.bb.195
    i32 6, label %sw.bb.220
    i32 8, label %sw.bb.227
    i32 1, label %sw.bb.228
    i32 13, label %sw.bb.246
    i32 7, label %sw.bb.247
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %10 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %10, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %11 = load i32, i32* %seqlen, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i8* %arraydecay8, i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %13 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags10 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %13, i32 0, i32 0
  %14 = load i32, i32* %flags10, align 4
  %and11 = and i32 %14, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %sw.bb.7
  %15 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %15, i32 0, i32 3
  %arraydecay14 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i32 0, i32 0
  br label %cond.end.16

cond.false.15:                                    ; preds = %sw.bb.7
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi i8* [ %arraydecay14, %cond.true.13 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), %cond.false.15 ]
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* %cond17)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %17 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags19 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %17, i32 0, i32 0
  %18 = load i32, i32* %flags19, align 4
  %and20 = and i32 %18, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.16
  %19 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %19, i32 0, i32 4
  %arraydecay23 = getelementptr inbounds [128 x i8], [128 x i8]* %desc, i32 0, i32 0
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.16
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi i8* [ %arraydecay23, %cond.true.22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), %cond.false.24 ]
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i8* %cond26)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %21 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags28 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %21, i32 0, i32 0
  %22 = load i32, i32* %flags28, align 4
  %and29 = and i32 %22, 2
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.end.25
  %23 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %id = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %23, i32 0, i32 2
  %arraydecay32 = getelementptr inbounds [64 x i8], [64 x i8]* %id, i32 0, i32 0
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end.25
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi i8* [ %arraydecay32, %cond.true.31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), %cond.false.33 ]
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i8* %cond35)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0))
  store i32 11, i32* %spacer, align 4
  store i32 1, i32* %numline, align 4
  %arraydecay38 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call39 = call i8* @strcpy(i8* %arraydecay38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %26 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name41 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %26, i32 0, i32 1
  %arraydecay42 = getelementptr inbounds [64 x i8], [64 x i8]* %name41, i32 0, i32 0
  %27 = load i32, i32* %seqlen, align 4
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i8* %arraydecay42, i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %29 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags44 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %29, i32 0, i32 0
  %30 = load i32, i32* %flags44, align 4
  %and45 = and i32 %30, 8
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %sw.bb.40
  %31 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc48 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %31, i32 0, i32 4
  %arraydecay49 = getelementptr inbounds [128 x i8], [128 x i8]* %desc48, i32 0, i32 0
  br label %cond.end.51

cond.false.50:                                    ; preds = %sw.bb.40
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.47
  %cond52 = phi i8* [ %arraydecay49, %cond.true.47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.50 ]
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %cond52)
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %33 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags55 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %33, i32 0, i32 0
  %34 = load i32, i32* %flags55, align 4
  %and56 = and i32 %34, 2
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.61

cond.true.58:                                     ; preds = %sw.bb.54
  %35 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %id59 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %35, i32 0, i32 2
  %arraydecay60 = getelementptr inbounds [64 x i8], [64 x i8]* %id59, i32 0, i32 0
  br label %cond.end.64

cond.false.61:                                    ; preds = %sw.bb.54
  %36 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name62 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %36, i32 0, i32 1
  %arraydecay63 = getelementptr inbounds [64 x i8], [64 x i8]* %name62, i32 0, i32 0
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.58
  %cond65 = phi i8* [ %arraydecay60, %cond.true.58 ], [ %arraydecay63, %cond.false.61 ]
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* %cond65)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %38 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags67 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %38, i32 0, i32 0
  %39 = load i32, i32* %flags67, align 4
  %and68 = and i32 %39, 8
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %cond.true.70, label %cond.false.73

cond.true.70:                                     ; preds = %cond.end.64
  %40 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc71 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %40, i32 0, i32 4
  %arraydecay72 = getelementptr inbounds [128 x i8], [128 x i8]* %desc71, i32 0, i32 0
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.64
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.70
  %cond75 = phi i8* [ %arraydecay72, %cond.true.70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.73 ]
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i8* %cond75)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %42 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags77 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %42, i32 0, i32 0
  %43 = load i32, i32* %flags77, align 4
  %and78 = and i32 %43, 4
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %cond.true.80, label %cond.false.83

cond.true.80:                                     ; preds = %cond.end.74
  %44 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc81 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %44, i32 0, i32 3
  %arraydecay82 = getelementptr inbounds [64 x i8], [64 x i8]* %acc81, i32 0, i32 0
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end.74
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.80
  %cond85 = phi i8* [ %arraydecay82, %cond.true.80 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.83 ]
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %cond85)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %46 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %len87 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %46, i32 0, i32 5
  %47 = load i32, i32* %len87, align 4
  %48 = load i32, i32* %checksum, align 4
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.56, i32 0, i32 0), i32 %47, i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.58, i32 0, i32 0))
  store i32 2, i32* %spacer, align 4
  store i32 1, i32* %numline, align 4
  store i32 30, i32* %width, align 4
  %arraydecay91 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call92 = call i8* @strcpy(i8* %arraydecay91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %52 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name94 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %52, i32 0, i32 1
  %arraydecay95 = getelementptr inbounds [64 x i8], [64 x i8]* %name94, i32 0, i32 0
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* %arraydecay95)
  %53 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags97 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %53, i32 0, i32 0
  %54 = load i32, i32* %flags97, align 4
  %and98 = and i32 %54, 310
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.141

if.then.100:                                      ; preds = %sw.bb.93
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %56 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags101 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %56, i32 0, i32 0
  %57 = load i32, i32* %flags101, align 4
  %and102 = and i32 %57, 2
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %cond.true.104, label %cond.false.107

cond.true.104:                                    ; preds = %if.then.100
  %58 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %id105 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %58, i32 0, i32 2
  %arraydecay106 = getelementptr inbounds [64 x i8], [64 x i8]* %id105, i32 0, i32 0
  br label %cond.end.108

cond.false.107:                                   ; preds = %if.then.100
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.104
  %cond109 = phi i8* [ %arraydecay106, %cond.true.104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.107 ]
  %59 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags110 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %59, i32 0, i32 0
  %60 = load i32, i32* %flags110, align 4
  %and111 = and i32 %60, 4
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.end.108
  %61 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc114 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %61, i32 0, i32 3
  %arraydecay115 = getelementptr inbounds [64 x i8], [64 x i8]* %acc114, i32 0, i32 0
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.108
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.113
  %cond118 = phi i8* [ %arraydecay115, %cond.true.113 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.116 ]
  %62 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags119 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %62, i32 0, i32 0
  %63 = load i32, i32* %flags119, align 4
  %and120 = and i32 %63, 16
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.117
  %64 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %start = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %64, i32 0, i32 6
  %65 = load i32, i32* %start, align 4
  br label %cond.end.124

cond.false.123:                                   ; preds = %cond.end.117
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %65, %cond.true.122 ], [ 0, %cond.false.123 ]
  %66 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags126 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %66, i32 0, i32 0
  %67 = load i32, i32* %flags126, align 4
  %and127 = and i32 %67, 32
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.end.124
  %68 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %stop = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %68, i32 0, i32 7
  %69 = load i32, i32* %stop, align 4
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.124
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.129
  %cond132 = phi i32 [ %69, %cond.true.129 ], [ 0, %cond.false.130 ]
  %70 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags133 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %70, i32 0, i32 0
  %71 = load i32, i32* %flags133, align 4
  %and134 = and i32 %71, 256
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.end.131
  %72 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %olen = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %72, i32 0, i32 8
  %73 = load i32, i32* %olen, align 4
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.end.131
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ %73, %cond.true.136 ], [ 0, %cond.false.137 ]
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i8* %cond109, i8* %cond118, i32 %cond125, i32 %cond132, i32 %cond139)
  br label %if.end.141

if.end.141:                                       ; preds = %cond.end.138, %sw.bb.93
  %74 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags142 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %74, i32 0, i32 0
  %75 = load i32, i32* %flags142, align 4
  %and143 = and i32 %75, 8
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %if.end.141
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %77 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc146 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %77, i32 0, i32 4
  %arraydecay147 = getelementptr inbounds [128 x i8], [128 x i8]* %desc146, i32 0, i32 0
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay147)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %if.end.141
  %78 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags150 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %78, i32 0, i32 0
  %79 = load i32, i32* %flags150, align 4
  %and151 = and i32 %79, 512
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else

if.then.153:                                      ; preds = %if.end.149
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0))
  store i32 1, i32* %dostruc, align 4
  br label %if.end.156

if.else:                                          ; preds = %if.end.149
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.else, %if.then.153
  store i32 1, i32* %numline, align 4
  %arraydecay157 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call158 = call i8* @strcpy(i8* %arraydecay157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.159:                                        ; preds = %if.end
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %83 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags160 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %83, i32 0, i32 0
  %84 = load i32, i32* %flags160, align 4
  %and161 = and i32 %84, 2
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %cond.true.163, label %cond.false.166

cond.true.163:                                    ; preds = %sw.bb.159
  %85 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %id164 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %85, i32 0, i32 2
  %arraydecay165 = getelementptr inbounds [64 x i8], [64 x i8]* %id164, i32 0, i32 0
  br label %cond.end.169

cond.false.166:                                   ; preds = %sw.bb.159
  %86 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name167 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %86, i32 0, i32 1
  %arraydecay168 = getelementptr inbounds [64 x i8], [64 x i8]* %name167, i32 0, i32 0
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.166, %cond.true.163
  %cond170 = phi i8* [ %arraydecay165, %cond.true.163 ], [ %arraydecay168, %cond.false.166 ]
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* %cond170)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %88 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags172 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %88, i32 0, i32 0
  %89 = load i32, i32* %flags172, align 4
  %and173 = and i32 %89, 4
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.178

cond.true.175:                                    ; preds = %cond.end.169
  %90 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc176 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %90, i32 0, i32 3
  %arraydecay177 = getelementptr inbounds [64 x i8], [64 x i8]* %acc176, i32 0, i32 0
  br label %cond.end.179

cond.false.178:                                   ; preds = %cond.end.169
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.178, %cond.true.175
  %cond180 = phi i8* [ %arraydecay177, %cond.true.175 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.178 ]
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8* %cond180)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %92 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags182 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %92, i32 0, i32 0
  %93 = load i32, i32* %flags182, align 4
  %and183 = and i32 %93, 8
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %cond.true.185, label %cond.false.188

cond.true.185:                                    ; preds = %cond.end.179
  %94 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc186 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %94, i32 0, i32 4
  %arraydecay187 = getelementptr inbounds [128 x i8], [128 x i8]* %desc186, i32 0, i32 0
  br label %cond.end.189

cond.false.188:                                   ; preds = %cond.end.179
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.188, %cond.true.185
  %cond190 = phi i8* [ %arraydecay187, %cond.true.185 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), %cond.false.188 ]
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* %cond190)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %96 = load i32, i32* %seqlen, align 4
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0), i32 %96)
  %arraydecay193 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call194 = call i8* @strcpy(i8* %arraydecay193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #5
  store i32 5, i32* %tab, align 4
  store i32 11, i32* %spacer, align 4
  br label %sw.epilog

sw.bb.195:                                        ; preds = %if.end
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %98 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name196 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %98, i32 0, i32 1
  %arraydecay197 = getelementptr inbounds [64 x i8], [64 x i8]* %name196, i32 0, i32 0
  %call198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay197)
  %99 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags199 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %99, i32 0, i32 0
  %100 = load i32, i32* %flags199, align 4
  %and200 = and i32 %100, 4
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.206

if.then.202:                                      ; preds = %sw.bb.195
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %102 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %acc203 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %102, i32 0, i32 3
  %arraydecay204 = getelementptr inbounds [64 x i8], [64 x i8]* %acc203, i32 0, i32 0
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay204)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.202, %sw.bb.195
  %103 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags207 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %103, i32 0, i32 0
  %104 = load i32, i32* %flags207, align 4
  %and208 = and i32 %104, 8
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %if.end.206
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %106 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc211 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %106, i32 0, i32 4
  %arraydecay212 = getelementptr inbounds [128 x i8], [128 x i8]* %desc211, i32 0, i32 0
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay212)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.210, %if.end.206
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %108 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name215 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %108, i32 0, i32 1
  %arraydecay216 = getelementptr inbounds [64 x i8], [64 x i8]* %name215, i32 0, i32 0
  %109 = load i32, i32* %seqlen, align 4
  %110 = load i32, i32* %checksum, align 4
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.70, i32 0, i32 0), i8* %arraydecay216, i32 %109, i32 %110)
  store i32 11, i32* %spacer, align 4
  store i32 1, i32* %numline, align 4
  %arraydecay218 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call219 = call i8* @strcpy(i8* %arraydecay218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.220:                                        ; preds = %if.end
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %113 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name222 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %113, i32 0, i32 1
  %arraydecay223 = getelementptr inbounds [64 x i8], [64 x i8]* %name222, i32 0, i32 0
  %114 = load i32, i32* %seqlen, align 4
  %115 = load i32, i32* %checksum, align 4
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.72, i32 0, i32 0), i8* %arraydecay223, i32 %114, i32 %115)
  %arraydecay225 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call226 = call i8* @strcpy(i8* %arraydecay225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.227:                                        ; preds = %if.end
  store i32 1, i32* %which_case, align 4
  br label %sw.bb.228

sw.bb.228:                                        ; preds = %if.end, %sw.bb.227
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %117 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name229 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %117, i32 0, i32 1
  %arraydecay230 = getelementptr inbounds [64 x i8], [64 x i8]* %name229, i32 0, i32 0
  %118 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags231 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %118, i32 0, i32 0
  %119 = load i32, i32* %flags231, align 4
  %and232 = and i32 %119, 8
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %cond.true.234, label %cond.false.237

cond.true.234:                                    ; preds = %sw.bb.228
  %120 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc235 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %120, i32 0, i32 4
  %arraydecay236 = getelementptr inbounds [128 x i8], [128 x i8]* %desc235, i32 0, i32 0
  br label %cond.end.238

cond.false.237:                                   ; preds = %sw.bb.228
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.237, %cond.true.234
  %cond239 = phi i8* [ %arraydecay236, %cond.true.234 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), %cond.false.237 ]
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay230, i8* %cond239)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %122 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name241 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %122, i32 0, i32 1
  %arraydecay242 = getelementptr inbounds [64 x i8], [64 x i8]* %name241, i32 0, i32 0
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay242)
  %arraydecay244 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call245 = call i8* @strcpy(i8* %arraydecay244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.246:                                        ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.bb.247

sw.bb.247:                                        ; preds = %if.end, %sw.default
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %124 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %name248 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %124, i32 0, i32 1
  %arraydecay249 = getelementptr inbounds [64 x i8], [64 x i8]* %name248, i32 0, i32 0
  %125 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags250 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %125, i32 0, i32 0
  %126 = load i32, i32* %flags250, align 4
  %and251 = and i32 %126, 8
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %cond.true.253, label %cond.false.256

cond.true.253:                                    ; preds = %sw.bb.247
  %127 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %desc254 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %127, i32 0, i32 4
  %arraydecay255 = getelementptr inbounds [128 x i8], [128 x i8]* %desc254, i32 0, i32 0
  br label %cond.end.257

cond.false.256:                                   ; preds = %sw.bb.247
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.256, %cond.true.253
  %cond258 = phi i8* [ %arraydecay255, %cond.true.253 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), %cond.false.256 ]
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay249, i8* %cond258)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.257, %sw.bb.246, %cond.end.238, %sw.bb.220, %if.end.214, %cond.end.189, %if.end.156, %cond.end.84, %cond.end.51, %cond.end.34, %sw.bb
  %128 = load i32, i32* %which_case, align 4
  %cmp260 = icmp eq i32 %128, 1
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %sw.epilog
  %129 = load i8*, i8** %seq.addr, align 8
  call void @s2upper(i8* %129)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %sw.epilog
  %130 = load i32, i32* %which_case, align 4
  %cmp264 = icmp eq i32 %130, 2
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.end.263
  %131 = load i8*, i8** %seq.addr, align 8
  call void @s2lower(i8* %131)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.end.263
  %132 = load i32, i32* %width, align 4
  %cmp268 = icmp slt i32 %132, 100
  br i1 %cmp268, label %cond.true.270, label %cond.false.271

cond.true.270:                                    ; preds = %if.end.267
  %133 = load i32, i32* %width, align 4
  br label %cond.end.272

cond.false.271:                                   ; preds = %if.end.267
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.271, %cond.true.270
  %cond273 = phi i32 [ %133, %cond.true.270 ], [ 100, %cond.false.271 ]
  store i32 %cond273, i32* %width, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %l, align 4
  store i32 1, i32* %ibase, align 4
  store i32 0, i32* %lines, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.373, %cond.end.272
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %seqlen, align 4
  %cmp274 = icmp slt i32 %134, %135
  br i1 %cmp274, label %for.body, label %for.end.374

for.body:                                         ; preds = %for.cond
  %136 = load i32, i32* %l1, align 4
  %cmp276 = icmp slt i32 %136, 0
  br i1 %cmp276, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %for.body
  store i32 0, i32* %l1, align 4
  br label %if.end.293

if.else.279:                                      ; preds = %for.body
  %137 = load i32, i32* %l1, align 4
  %cmp280 = icmp eq i32 %137, 0
  br i1 %cmp280, label %if.then.282, label %if.end.292

if.then.282:                                      ; preds = %if.else.279
  %138 = load i32, i32* %numline, align 4
  %tobool283 = icmp ne i32 %138, 0
  br i1 %tobool283, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %if.then.282
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %140 = load i32, i32* %ibase, align 4
  %call285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i32 %140)
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %if.then.282
  store i32 0, i32* %j, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc, %if.end.286
  %141 = load i32, i32* %j, align 4
  %142 = load i32, i32* %tab, align 4
  %cmp288 = icmp slt i32 %141, %142
  br i1 %cmp288, label %for.body.290, label %for.end

for.body.290:                                     ; preds = %for.cond.287
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call291 = call i32 @fputc(i32 32, %struct._IO_FILE* %143)
  br label %for.inc

for.inc:                                          ; preds = %for.body.290
  %144 = load i32, i32* %j, align 4
  %inc = add nsw i32 %144, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.287

for.end:                                          ; preds = %for.cond.287
  br label %if.end.292

if.end.292:                                       ; preds = %for.end, %if.else.279
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.278
  %145 = load i32, i32* %spacer, align 4
  %cmp294 = icmp ne i32 %145, 0
  br i1 %cmp294, label %land.lhs.true, label %if.end.302

land.lhs.true:                                    ; preds = %if.end.293
  %146 = load i32, i32* %l, align 4
  %add = add nsw i32 %146, 1
  %147 = load i32, i32* %spacer, align 4
  %rem = srem i32 %add, %147
  %cmp296 = icmp eq i32 %rem, 1
  br i1 %cmp296, label %if.then.298, label %if.end.302

if.then.298:                                      ; preds = %land.lhs.true
  %148 = load i32, i32* %l, align 4
  %idxprom = sext i32 %148 to i64
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %s, i32 0, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  %149 = load i32, i32* %l, align 4
  %idxprom299 = sext i32 %149 to i64
  %arrayidx300 = getelementptr inbounds [100 x i8], [100 x i8]* %ss, i32 0, i64 %idxprom299
  store i8 32, i8* %arrayidx300, align 1
  %150 = load i32, i32* %l, align 4
  %inc301 = add nsw i32 %150, 1
  store i32 %inc301, i32* %l, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.298, %land.lhs.true, %if.end.293
  %151 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %151 to i64
  %152 = load i8*, i8** %seq.addr, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %152, i64 %idxprom303
  %153 = load i8, i8* %arrayidx304, align 1
  %154 = load i32, i32* %l, align 4
  %idxprom305 = sext i32 %154 to i64
  %arrayidx306 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i32 0, i64 %idxprom305
  store i8 %153, i8* %arrayidx306, align 1
  %155 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %flags307 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %155, i32 0, i32 0
  %156 = load i32, i32* %flags307, align 4
  %and308 = and i32 %156, 512
  %tobool309 = icmp ne i32 %and308, 0
  br i1 %tobool309, label %cond.true.310, label %cond.false.315

cond.true.310:                                    ; preds = %if.end.302
  %157 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %157 to i64
  %158 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %ss312 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %158, i32 0, i32 10
  %159 = load i8*, i8** %ss312, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %159, i64 %idxprom311
  %160 = load i8, i8* %arrayidx313, align 1
  %conv314 = sext i8 %160 to i32
  br label %cond.end.316

cond.false.315:                                   ; preds = %if.end.302
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.315, %cond.true.310
  %cond317 = phi i32 [ %conv314, %cond.true.310 ], [ 46, %cond.false.315 ]
  %conv318 = trunc i32 %cond317 to i8
  %161 = load i32, i32* %l, align 4
  %idxprom319 = sext i32 %161 to i64
  %arrayidx320 = getelementptr inbounds [100 x i8], [100 x i8]* %ss, i32 0, i64 %idxprom319
  store i8 %conv318, i8* %arrayidx320, align 1
  %162 = load i32, i32* %l, align 4
  %inc321 = add nsw i32 %162, 1
  store i32 %inc321, i32* %l, align 4
  %163 = load i32, i32* %i, align 4
  %inc322 = add nsw i32 %163, 1
  store i32 %inc322, i32* %i, align 4
  %164 = load i32, i32* %l1, align 4
  %inc323 = add nsw i32 %164, 1
  store i32 %inc323, i32* %l1, align 4
  %165 = load i32, i32* %l1, align 4
  %166 = load i32, i32* %width, align 4
  %cmp324 = icmp eq i32 %165, %166
  br i1 %cmp324, label %if.then.328, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.316
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %seqlen, align 4
  %cmp326 = icmp eq i32 %167, %168
  br i1 %cmp326, label %if.then.328, label %if.end.373

if.then.328:                                      ; preds = %lor.lhs.false, %cond.end.316
  %169 = load i32, i32* %l, align 4
  %idxprom329 = sext i32 %169 to i64
  %arrayidx330 = getelementptr inbounds [100 x i8], [100 x i8]* %ss, i32 0, i64 %idxprom329
  store i8 0, i8* %arrayidx330, align 1
  %170 = load i32, i32* %l, align 4
  %idxprom331 = sext i32 %170 to i64
  %arrayidx332 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i32 0, i64 %idxprom331
  store i8 0, i8* %arrayidx332, align 1
  store i32 0, i32* %l, align 4
  store i32 0, i32* %l1, align 4
  %171 = load i32, i32* %dostruc, align 4
  %tobool333 = icmp ne i32 %171, 0
  br i1 %tobool333, label %if.then.334, label %if.else.359

if.then.334:                                      ; preds = %if.then.328
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %arraydecay335 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i32 0, i32 0
  %call336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay335)
  %173 = load i32, i32* %numline, align 4
  %tobool337 = icmp ne i32 %173, 0
  br i1 %tobool337, label %if.then.338, label %if.end.340

if.then.338:                                      ; preds = %if.then.334
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.338, %if.then.334
  store i32 0, i32* %j, align 4
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.346, %if.end.340
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %tab, align 4
  %cmp342 = icmp slt i32 %175, %176
  br i1 %cmp342, label %for.body.344, label %for.end.348

for.body.344:                                     ; preds = %for.cond.341
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call345 = call i32 @fputc(i32 32, %struct._IO_FILE* %177)
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.body.344
  %178 = load i32, i32* %j, align 4
  %inc347 = add nsw i32 %178, 1
  store i32 %inc347, i32* %j, align 4
  br label %for.cond.341

for.end.348:                                      ; preds = %for.cond.341
  %179 = load i32, i32* %i, align 4
  %180 = load i32, i32* %seqlen, align 4
  %cmp349 = icmp eq i32 %179, %180
  br i1 %cmp349, label %if.then.351, label %if.else.355

if.then.351:                                      ; preds = %for.end.348
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %arraydecay352 = getelementptr inbounds [100 x i8], [100 x i8]* %ss, i32 0, i32 0
  %arraydecay353 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* %arraydecay352, i8* %arraydecay353)
  br label %if.end.358

if.else.355:                                      ; preds = %for.end.348
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %arraydecay356 = getelementptr inbounds [100 x i8], [100 x i8]* %ss, i32 0, i32 0
  %call357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay356)
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.355, %if.then.351
  br label %if.end.370

if.else.359:                                      ; preds = %if.then.328
  %183 = load i32, i32* %i, align 4
  %184 = load i32, i32* %seqlen, align 4
  %cmp360 = icmp eq i32 %183, %184
  br i1 %cmp360, label %if.then.362, label %if.else.366

if.then.362:                                      ; preds = %if.else.359
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %arraydecay363 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i32 0, i32 0
  %arraydecay364 = getelementptr inbounds [10 x i8], [10 x i8]* %endstr, i32 0, i32 0
  %call365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* %arraydecay363, i8* %arraydecay364)
  br label %if.end.369

if.else.366:                                      ; preds = %if.else.359
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %arraydecay367 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i32 0, i32 0
  %call368 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay367)
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.366, %if.then.362
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.end.358
  %187 = load i32, i32* %lines, align 4
  %inc371 = add nsw i32 %187, 1
  store i32 %inc371, i32* %lines, align 4
  %188 = load i32, i32* %i, align 4
  %add372 = add nsw i32 %188, 1
  store i32 %add372, i32* %ibase, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.370, %lor.lhs.false
  br label %for.cond

for.end.374:                                      ; preds = %for.cond
  %189 = load i32, i32* %lines, align 4
  ret i32 %189
}

declare void @s2upper(i8*) #1

declare void @s2lower(i8*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @ReadMultipleRseqs(i8* %seqfile, i32 %fformat, i8*** %ret_rseqs, %struct.seqinfo_s** %ret_sqinfo, i32* %ret_num) #0 {
entry:
  %retval = alloca i32, align 4
  %seqfile.addr = alloca i8*, align 8
  %fformat.addr = alloca i32, align 4
  %ret_rseqs.addr = alloca i8***, align 8
  %ret_sqinfo.addr = alloca %struct.seqinfo_s**, align 8
  %ret_num.addr = alloca i32*, align 8
  %sqinfo = alloca %struct.seqinfo_s*, align 8
  %dbfp = alloca %struct.ReadSeqVars*, align 8
  %rseqs = alloca i8**, align 8
  %numalloced = alloca i32, align 4
  %num = alloca i32, align 4
  store i8* %seqfile, i8** %seqfile.addr, align 8
  store i32 %fformat, i32* %fformat.addr, align 4
  store i8*** %ret_rseqs, i8**** %ret_rseqs.addr, align 8
  store %struct.seqinfo_s** %ret_sqinfo, %struct.seqinfo_s*** %ret_sqinfo.addr, align 8
  store i32* %ret_num, i32** %ret_num.addr, align 8
  store i32 0, i32* %num, align 4
  store i32 16, i32* %numalloced, align 4
  %0 = load i32, i32* %numalloced, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1732, i64 %mul)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %rseqs, align 8
  %2 = load i32, i32* %numalloced, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 360
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1733, i64 %mul2)
  %3 = bitcast i8* %call3 to %struct.seqinfo_s*
  store %struct.seqinfo_s* %3, %struct.seqinfo_s** %sqinfo, align 8
  %4 = load i8*, i8** %seqfile.addr, align 8
  %5 = load i32, i32* %fformat.addr, align 4
  %call4 = call %struct.ReadSeqVars* @SeqfileOpen(i8* %4, i32 %5, i8* null)
  store %struct.ReadSeqVars* %call4, %struct.ReadSeqVars** %dbfp, align 8
  %cmp = icmp eq %struct.ReadSeqVars* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %7 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  %format = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %7, i32 0, i32 20
  %8 = load i32, i32* %format, align 4
  %9 = load i32, i32* %num, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %rseqs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i32, i32* %num, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx7 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %12, i64 %idxprom6
  %call8 = call i32 @ReadSeq(%struct.ReadSeqVars* %6, i32 %8, i8** %arrayidx, %struct.seqinfo_s* %arrayidx7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %num, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %num, align 4
  %14 = load i32, i32* %num, align 4
  %15 = load i32, i32* %numalloced, align 4
  %cmp9 = icmp eq i32 %14, %15
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %while.body
  %16 = load i32, i32* %numalloced, align 4
  %add = add nsw i32 %16, 16
  store i32 %add, i32* %numalloced, align 4
  %17 = load i8**, i8*** %rseqs, align 8
  %18 = bitcast i8** %17 to i8*
  %19 = load i32, i32* %numalloced, align 4
  %conv12 = sext i32 %19 to i64
  %mul13 = mul i64 %conv12, 8
  %call14 = call i8* @sre_realloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1742, i8* %18, i64 %mul13)
  %20 = bitcast i8* %call14 to i8**
  store i8** %20, i8*** %rseqs, align 8
  %21 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %22 = bitcast %struct.seqinfo_s* %21 to i8*
  %23 = load i32, i32* %numalloced, align 4
  %conv15 = sext i32 %23 to i64
  %mul16 = mul i64 %conv15, 360
  %call17 = call i8* @sre_realloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1743, i8* %22, i64 %mul16)
  %24 = bitcast i8* %call17 to %struct.seqinfo_s*
  store %struct.seqinfo_s* %24, %struct.seqinfo_s** %sqinfo, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %dbfp, align 8
  call void @SeqfileClose(%struct.ReadSeqVars* %25)
  %26 = load i8**, i8*** %rseqs, align 8
  %27 = load i8***, i8**** %ret_rseqs.addr, align 8
  store i8** %26, i8*** %27, align 8
  %28 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %29 = load %struct.seqinfo_s**, %struct.seqinfo_s*** %ret_sqinfo.addr, align 8
  store %struct.seqinfo_s* %28, %struct.seqinfo_s** %29, align 8
  %30 = load i32, i32* %num, align 4
  %31 = load i32*, i32** %ret_num.addr, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @String2SeqfileFormat(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %code = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %code, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i8* @sre_strdup(i8* %1, i32 -1)
  store i8* %call, i8** %s2, align 8
  %2 = load i8*, i8** %s2, align 8
  call void @s2upper(i8* %2)
  %3 = load i8*, i8** %s2, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0)) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 7, i32* %code, align 4
  br label %if.end.93

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %s2, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0)) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 2, i32* %code, align 4
  br label %if.end.92

if.else.7:                                        ; preds = %if.else
  %5 = load i8*, i8** %s2, align 8
  %call8 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.7
  store i32 4, i32* %code, align 4
  br label %if.end.91

if.else.11:                                       ; preds = %if.else.7
  %6 = load i8*, i8** %s2, align 8
  %call12 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0)) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.11
  store i32 5, i32* %code, align 4
  br label %if.end.90

if.else.15:                                       ; preds = %if.else.11
  %7 = load i8*, i8** %s2, align 8
  %call16 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0)) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.15
  store i32 16, i32* %code, align 4
  br label %if.end.89

if.else.19:                                       ; preds = %if.else.15
  %8 = load i8*, i8** %s2, align 8
  %call20 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0)) #6
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.19
  store i32 13, i32* %code, align 4
  br label %if.end.88

if.else.23:                                       ; preds = %if.else.19
  %9 = load i8*, i8** %s2, align 8
  %call24 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.23
  store i32 1, i32* %code, align 4
  br label %if.end.87

if.else.27:                                       ; preds = %if.else.23
  %10 = load i8*, i8** %s2, align 8
  %call28 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0)) #6
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.27
  store i32 6, i32* %code, align 4
  br label %if.end.86

if.else.31:                                       ; preds = %if.else.27
  %11 = load i8*, i8** %s2, align 8
  %call32 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0)) #6
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.31
  store i32 9, i32* %code, align 4
  br label %if.end.85

if.else.35:                                       ; preds = %if.else.31
  %12 = load i8*, i8** %s2, align 8
  %call36 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0)) #6
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.35
  store i32 8, i32* %code, align 4
  br label %if.end.84

if.else.39:                                       ; preds = %if.else.35
  %13 = load i8*, i8** %s2, align 8
  %call40 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0)) #6
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.else.39
  store i32 12, i32* %code, align 4
  br label %if.end.83

if.else.43:                                       ; preds = %if.else.39
  %14 = load i8*, i8** %s2, align 8
  %call44 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)) #6
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.43
  store i32 14, i32* %code, align 4
  br label %if.end.82

if.else.47:                                       ; preds = %if.else.43
  %15 = load i8*, i8** %s2, align 8
  %call48 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0)) #6
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.47
  store i32 101, i32* %code, align 4
  br label %if.end.81

if.else.51:                                       ; preds = %if.else.47
  %16 = load i8*, i8** %s2, align 8
  %call52 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)) #6
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.51
  store i32 102, i32* %code, align 4
  br label %if.end.80

if.else.55:                                       ; preds = %if.else.51
  %17 = load i8*, i8** %s2, align 8
  %call56 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0)) #6
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.55
  store i32 103, i32* %code, align 4
  br label %if.end.79

if.else.59:                                       ; preds = %if.else.55
  %18 = load i8*, i8** %s2, align 8
  %call60 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #6
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.59
  store i32 104, i32* %code, align 4
  br label %if.end.78

if.else.63:                                       ; preds = %if.else.59
  %19 = load i8*, i8** %s2, align 8
  %call64 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0)) #6
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.63
  store i32 105, i32* %code, align 4
  br label %if.end.77

if.else.67:                                       ; preds = %if.else.63
  %20 = load i8*, i8** %s2, align 8
  %call68 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0)) #6
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.67
  store i32 106, i32* %code, align 4
  br label %if.end.76

if.else.71:                                       ; preds = %if.else.67
  %21 = load i8*, i8** %s2, align 8
  %call72 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0)) #6
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.else.71
  store i32 107, i32* %code, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.else.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.66
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.62
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.58
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.54
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.50
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.46
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.42
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.38
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.34
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.30
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.26
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.22
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.18
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.14
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.10
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.6
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.3
  %22 = load i8*, i8** %s2, align 8
  call void @free(i8* %22) #5
  %23 = load i32, i32* %code, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @SeqfileFormat2String(i32 %code) #0 {
entry:
  %retval = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.4
    i32 16, label %sw.bb.5
    i32 13, label %sw.bb.6
    i32 1, label %sw.bb.7
    i32 6, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 8, label %sw.bb.10
    i32 12, label %sw.bb.11
    i32 14, label %sw.bb.12
    i32 101, label %sw.bb.13
    i32 102, label %sw.bb.14
    i32 103, label %sw.bb.15
    i32 104, label %sw.bb.16
    i32 105, label %sw.bb.17
    i32 106, label %sw.bb.18
    i32 107, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.109, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define %struct.seqinfo_s* @MSAToSqinfo(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  %sqinfo = alloca %struct.seqinfo_s*, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %nseq, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 360, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1857, i64 %mul)
  %2 = bitcast i8* %call to %struct.seqinfo_s*
  store %struct.seqinfo_s* %2, %struct.seqinfo_s** %sqinfo, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %idx, align 4
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %nseq1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %7, i64 %idxprom
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  %8 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx4 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %9, i64 %idxprom3
  %10 = load i32, i32* %idx, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 1
  %12 = load i8**, i8*** %sqname, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %12, i64 %idxprom5
  %13 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx4, i8* %13, i32 1)
  %14 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx9 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %15, i64 %idxprom8
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %17 = load i32, i32* %idx, align 4
  %call10 = call i8* @MSAGetSeqAccession(%struct.msa_struct* %16, i32 %17)
  %call11 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx9, i8* %call10, i32 4)
  %18 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx13 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %19, i64 %idxprom12
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %21 = load i32, i32* %idx, align 4
  %call14 = call i8* @MSAGetSeqDescription(%struct.msa_struct* %20, i32 %21)
  %call15 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx13, i8* %call14, i32 8)
  %22 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %22, i32 0, i32 16
  %23 = load i8**, i8*** %ss, align 8
  %cmp16 = icmp ne i8** %23, null
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %24 = load i32, i32* %idx, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 16
  %26 = load i8**, i8*** %ss19, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %26, i64 %idxprom18
  %27 = load i8*, i8** %arrayidx20, align 8
  %cmp21 = icmp ne i8* %27, null
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %28 = load i32, i32* %idx, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %29, i32 0, i32 0
  %30 = load i8**, i8*** %aseq, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %30, i64 %idxprom23
  %31 = load i8*, i8** %arrayidx24, align 8
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 3
  %33 = load i32, i32* %alen, align 4
  %34 = load i32, i32* %idx, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss26 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 16
  %36 = load i8**, i8*** %ss26, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %36, i64 %idxprom25
  %37 = load i8*, i8** %arrayidx27, align 8
  %38 = load i32, i32* %idx, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx29 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %39, i64 %idxprom28
  %ss30 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx29, i32 0, i32 10
  %call31 = call i32 @MakeDealignedString(i8* %31, i32 %33, i8* %37, i8** %ss30)
  %40 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %40 to i64
  %41 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx33 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %41, i64 %idxprom32
  %flags34 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx33, i32 0, i32 0
  %42 = load i32, i32* %flags34, align 4
  %or = or i32 %42, 512
  store i32 %or, i32* %flags34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 17
  %44 = load i8**, i8*** %sa, align 8
  %cmp35 = icmp ne i8** %44, null
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.59

land.lhs.true.37:                                 ; preds = %if.end
  %45 = load i32, i32* %idx, align 4
  %idxprom38 = sext i32 %45 to i64
  %46 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa39 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %46, i32 0, i32 17
  %47 = load i8**, i8*** %sa39, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %47, i64 %idxprom38
  %48 = load i8*, i8** %arrayidx40, align 8
  %cmp41 = icmp ne i8* %48, null
  br i1 %cmp41, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %land.lhs.true.37
  %49 = load i32, i32* %idx, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %50, i32 0, i32 0
  %51 = load i8**, i8*** %aseq45, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %51, i64 %idxprom44
  %52 = load i8*, i8** %arrayidx46, align 8
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 3
  %54 = load i32, i32* %alen47, align 4
  %55 = load i32, i32* %idx, align 4
  %idxprom48 = sext i32 %55 to i64
  %56 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %56, i32 0, i32 17
  %57 = load i8**, i8*** %sa49, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %57, i64 %idxprom48
  %58 = load i8*, i8** %arrayidx50, align 8
  %59 = load i32, i32* %idx, align 4
  %idxprom51 = sext i32 %59 to i64
  %60 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx52 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %60, i64 %idxprom51
  %sa53 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx52, i32 0, i32 11
  %call54 = call i32 @MakeDealignedString(i8* %52, i32 %54, i8* %58, i8** %sa53)
  %61 = load i32, i32* %idx, align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx56 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %62, i64 %idxprom55
  %flags57 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx56, i32 0, i32 0
  %63 = load i32, i32* %flags57, align 4
  %or58 = or i32 %63, 1024
  store i32 %or58, i32* %flags57, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.43, %land.lhs.true.37, %if.end
  %64 = load i32, i32* %idx, align 4
  %idxprom60 = sext i32 %64 to i64
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq61 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 0
  %66 = load i8**, i8*** %aseq61, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %66, i64 %idxprom60
  %67 = load i8*, i8** %arrayidx62, align 8
  %call63 = call i32 @DealignedLength(i8* %67)
  %68 = load i32, i32* %idx, align 4
  %idxprom64 = sext i32 %68 to i64
  %69 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx65 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %69, i64 %idxprom64
  %len = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx65, i32 0, i32 5
  store i32 %call63, i32* %len, align 4
  %70 = load i32, i32* %idx, align 4
  %idxprom66 = sext i32 %70 to i64
  %71 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx67 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %71, i64 %idxprom66
  %flags68 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx67, i32 0, i32 0
  %72 = load i32, i32* %flags68, align 4
  %or69 = or i32 %72, 64
  store i32 %or69, i32* %flags68, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %73 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  ret %struct.seqinfo_s* %74
}

declare i8* @MSAGetSeqAccession(%struct.msa_struct*, i32) #1

declare i8* @MSAGetSeqDescription(%struct.msa_struct*, i32) #1

declare i32 @DealignedLength(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

declare i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @readLoop(i32 %addfirst, i32 (i8*, i32*)* %endTest, %struct.ReadSeqVars* %V) #0 {
entry:
  %addfirst.addr = alloca i32, align 4
  %endTest.addr = alloca i32 (i8*, i32*)*, align 8
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %addend = alloca i32, align 4
  %done = alloca i32, align 4
  store i32 %addfirst, i32* %addfirst.addr, align 4
  store i32 (i8*, i32*)* %endTest, i32 (i8*, i32*)** %endTest.addr, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  store i32 0, i32* %addend, align 4
  store i32 0, i32* %done, align 4
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 18
  store i32 0, i32* %seqlen, align 4
  %1 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %1, i32 0, i32 13
  store i32 0, i32* %lastbpl, align 4
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 10
  store i32 0, i32* %lastrpl, align 4
  %3 = load i32, i32* %addfirst.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 5
  %5 = load i32, i32* %ssimode, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %d_off = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 8
  %7 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %7, i32 0, i32 6
  %8 = bitcast %struct.ssioffset_s* %d_off to i8*
  %9 = bitcast %struct.ssioffset_s* %ssioffset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 3
  %11 = load i8*, i8** %buf, align 8
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @addseq(i8* %11, %struct.ReadSeqVars* %12)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %13 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode2 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %13, i32 0, i32 5
  %14 = load i32, i32* %ssimode2, align 4
  %cmp3 = icmp sge i32 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.else
  %15 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %15, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %17 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %17, i32 0, i32 5
  %18 = load i32, i32* %ssimode5, align 4
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %d_off6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 8
  %call = call i32 @SSIGetFilePosition(%struct._IO_FILE* %16, i32 %18, %struct.ssioffset_s* %d_off6)
  %cmp7 = icmp ne i32 0, %call
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.11
  %20 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @SeqfileGetLine(%struct.ReadSeqVars* %20)
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf12 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 3
  %22 = load i8*, i8** %buf12, align 8
  %23 = load i8, i8* %22, align 1
  %conv = sext i8 %23 to i32
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %do.body
  %24 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %f15 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %24, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f15, align 8
  %call16 = call i32 @feof(%struct._IO_FILE* %25) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %done, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %do.body
  %26 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %endTest.addr, align 8
  %27 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf20 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %27, i32 0, i32 3
  %28 = load i8*, i8** %buf20, align 8
  %call21 = call i32 %26(i8* %28, i32* %addend)
  %29 = load i32, i32* %done, align 4
  %or = or i32 %29, %call21
  store i32 %or, i32* %done, align 4
  %30 = load i32, i32* %addend, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %31 = load i32, i32* %done, align 4
  %tobool23 = icmp ne i32 %31, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.19
  %32 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buf25 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %32, i32 0, i32 3
  %33 = load i8*, i8** %buf25, align 8
  %34 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  call void @addseq(i8* %33, %struct.ReadSeqVars* %34)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  %35 = load i32, i32* %done, align 4
  %tobool27 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool27, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @endIG(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 49) #6
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %call1 = call i8* @strchr(i8* %2, i32 50) #6
  %cmp2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @addseq(i8* %s, %struct.ReadSeqVars* %V) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %V.addr = alloca %struct.ReadSeqVars*, align 8
  %s0 = alloca i8*, align 8
  %sq = alloca i8*, align 8
  %rpl = alloca i32, align 4
  %bpl = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.ReadSeqVars* %V, %struct.ReadSeqVars** %V.addr, align 8
  %0 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %ssimode = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %0, i32 0, i32 5
  %1 = load i32, i32* %ssimode, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %2, i32 0, i32 18
  %3 = load i32, i32* %seqlen, align 4
  %4 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buflen = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %4, i32 0, i32 4
  %5 = load i32, i32* %buflen, align 4
  %add = add nsw i32 %3, %5
  %6 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %6, i32 0, i32 19
  %7 = load i32, i32* %maxseq, align 4
  %cmp1 = icmp sgt i32 %add, %7
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buflen3 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %8, i32 0, i32 4
  %9 = load i32, i32* %buflen3, align 4
  %cmp4 = icmp sgt i32 %9, 500
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %10 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %buflen5 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %10, i32 0, i32 4
  %11 = load i32, i32* %buflen5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 500, %cond.false ]
  %12 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq6 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %12, i32 0, i32 19
  %13 = load i32, i32* %maxseq6, align 4
  %add7 = add nsw i32 %13, %cond
  store i32 %add7, i32* %maxseq6, align 4
  %14 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %14, i32 0, i32 15
  %15 = load i8*, i8** %seq, align 8
  %16 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq8 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %16, i32 0, i32 19
  %17 = load i32, i32* %maxseq8, align 4
  %add9 = add nsw i32 %17, 1
  %conv = sext i32 %add9 to i64
  %call = call i8* @sre_realloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 524, i8* %15, i64 %conv)
  %18 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq10 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %18, i32 0, i32 15
  store i8* %call, i8** %seq10, align 8
  %19 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxseq11 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %19, i32 0, i32 19
  %20 = load i32, i32* %maxseq11, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq12 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %21, i32 0, i32 15
  %22 = load i8*, i8** %seq12, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %23 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq13 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %23, i32 0, i32 15
  %24 = load i8*, i8** %seq13, align 8
  %25 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen14 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %25, i32 0, i32 18
  %26 = load i32, i32* %seqlen14, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %sq, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end
  %27 = load i8*, i8** %s.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv15 = sext i8 %28 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %s.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv18 = sext i8 %30 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %call20 = call i16** @__ctype_b_loc() #7
  %31 = load i16*, i16** %call20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %31, i64 %idxprom19
  %32 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %32 to i32
  %and = and i32 %conv22, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %33 = load i8*, i8** %s.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv23 = sext i8 %34 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %call25 = call i16** @__ctype_b_loc() #7
  %35 = load i16*, i16** %call25, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %35, i64 %idxprom24
  %36 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %36 to i32
  %and28 = and i32 %conv27, 8192
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true
  %37 = load i8*, i8** %s.addr, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %sq, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %sq, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %sq, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true, %while.body
  %41 = load i8*, i8** %s.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr32, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i8*, i8** %sq, align 8
  %43 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seq33 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %43, i32 0, i32 15
  %44 = load i8*, i8** %seq33, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv34 = trunc i64 %sub.ptr.sub to i32
  %45 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen35 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %45, i32 0, i32 18
  store i32 %conv34, i32* %seqlen35, align 4
  br label %if.end.134

if.else:                                          ; preds = %entry
  %46 = load i8*, i8** %s.addr, align 8
  store i8* %46, i8** %s0, align 8
  store i32 0, i32* %rpl, align 4
  br label %while.cond.36

while.cond.36:                                    ; preds = %if.end.57, %if.else
  %47 = load i8*, i8** %s.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv37 = sext i8 %48 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %while.body.40, label %while.end.59

while.body.40:                                    ; preds = %while.cond.36
  %49 = load i8*, i8** %s.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv41 = sext i8 %50 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %call43 = call i16** @__ctype_b_loc() #7
  %51 = load i16*, i16** %call43, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %51, i64 %idxprom42
  %52 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %52 to i32
  %and46 = and i32 %conv45, 2048
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.end.57, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %while.body.40
  %53 = load i8*, i8** %s.addr, align 8
  %54 = load i8, i8* %53, align 1
  %conv49 = sext i8 %54 to i32
  %idxprom50 = sext i32 %conv49 to i64
  %call51 = call i16** @__ctype_b_loc() #7
  %55 = load i16*, i16** %call51, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %55, i64 %idxprom50
  %56 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %56 to i32
  %and54 = and i32 %conv53, 8192
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.48
  %57 = load i32, i32* %rpl, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %rpl, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.48, %while.body.40
  %58 = load i8*, i8** %s.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr58, i8** %s.addr, align 8
  br label %while.cond.36

while.end.59:                                     ; preds = %while.cond.36
  %59 = load i32, i32* %rpl, align 4
  %60 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %seqlen60 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %60, i32 0, i32 18
  %61 = load i32, i32* %seqlen60, align 4
  %add61 = add nsw i32 %61, %59
  store i32 %add61, i32* %seqlen60, align 4
  %62 = load i8*, i8** %s.addr, align 8
  %63 = load i8*, i8** %s0, align 8
  %sub.ptr.lhs.cast62 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %63 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %conv65 = trunc i64 %sub.ptr.sub64 to i32
  store i32 %conv65, i32* %bpl, align 4
  %64 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl66 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %64, i32 0, i32 9
  %65 = load i32, i32* %rpl66, align 4
  %cmp67 = icmp ne i32 %65, 0
  br i1 %cmp67, label %if.then.69, label %if.end.99

if.then.69:                                       ; preds = %while.end.59
  %66 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %66, i32 0, i32 10
  %67 = load i32, i32* %lastrpl, align 4
  %cmp70 = icmp sgt i32 %67, 0
  br i1 %cmp70, label %if.then.72, label %if.end.92

if.then.72:                                       ; preds = %if.then.69
  %68 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl73 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %68, i32 0, i32 9
  %69 = load i32, i32* %rpl73, align 4
  %cmp74 = icmp sgt i32 %69, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.83

land.lhs.true.76:                                 ; preds = %if.then.72
  %70 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastrpl77 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %70, i32 0, i32 10
  %71 = load i32, i32* %lastrpl77, align 4
  %72 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl78 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %72, i32 0, i32 9
  %73 = load i32, i32* %rpl78, align 4
  %cmp79 = icmp ne i32 %71, %73
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %land.lhs.true.76
  %74 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl82 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %74, i32 0, i32 9
  store i32 0, i32* %rpl82, align 4
  br label %if.end.91

if.else.83:                                       ; preds = %land.lhs.true.76, %if.then.72
  %75 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl84 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %75, i32 0, i32 9
  %76 = load i32, i32* %rpl84, align 4
  %cmp85 = icmp eq i32 %76, -1
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.else.83
  %77 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastrpl88 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %77, i32 0, i32 10
  %78 = load i32, i32* %lastrpl88, align 4
  %79 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %rpl89 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %79, i32 0, i32 9
  store i32 %78, i32* %rpl89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.else.83
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.81
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.69
  %80 = load i32, i32* %rpl, align 4
  %81 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastrpl93 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %81, i32 0, i32 10
  store i32 %80, i32* %lastrpl93, align 4
  %82 = load i32, i32* %rpl, align 4
  %83 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %83, i32 0, i32 11
  %84 = load i32, i32* %maxrpl, align 4
  %cmp94 = icmp sgt i32 %82, %84
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.end.92
  %85 = load i32, i32* %rpl, align 4
  %86 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxrpl97 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %86, i32 0, i32 11
  store i32 %85, i32* %maxrpl97, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.92
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %while.end.59
  %87 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl100 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %87, i32 0, i32 12
  %88 = load i32, i32* %bpl100, align 4
  %cmp101 = icmp ne i32 %88, 0
  br i1 %cmp101, label %if.then.103, label %if.end.133

if.then.103:                                      ; preds = %if.end.99
  %89 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %89, i32 0, i32 13
  %90 = load i32, i32* %lastbpl, align 4
  %cmp104 = icmp sgt i32 %90, 0
  br i1 %cmp104, label %if.then.106, label %if.end.126

if.then.106:                                      ; preds = %if.then.103
  %91 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl107 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %91, i32 0, i32 12
  %92 = load i32, i32* %bpl107, align 4
  %cmp108 = icmp sgt i32 %92, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.117

land.lhs.true.110:                                ; preds = %if.then.106
  %93 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastbpl111 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %93, i32 0, i32 13
  %94 = load i32, i32* %lastbpl111, align 4
  %95 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl112 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %95, i32 0, i32 12
  %96 = load i32, i32* %bpl112, align 4
  %cmp113 = icmp ne i32 %94, %96
  br i1 %cmp113, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %land.lhs.true.110
  %97 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl116 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %97, i32 0, i32 12
  store i32 0, i32* %bpl116, align 4
  br label %if.end.125

if.else.117:                                      ; preds = %land.lhs.true.110, %if.then.106
  %98 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl118 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %98, i32 0, i32 12
  %99 = load i32, i32* %bpl118, align 4
  %cmp119 = icmp eq i32 %99, -1
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.else.117
  %100 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastbpl122 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %100, i32 0, i32 13
  %101 = load i32, i32* %lastbpl122, align 4
  %102 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %bpl123 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %102, i32 0, i32 12
  store i32 %101, i32* %bpl123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.else.117
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.115
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.103
  %103 = load i32, i32* %bpl, align 4
  %104 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %lastbpl127 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %104, i32 0, i32 13
  store i32 %103, i32* %lastbpl127, align 4
  %105 = load i32, i32* %bpl, align 4
  %106 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %106, i32 0, i32 14
  %107 = load i32, i32* %maxbpl, align 4
  %cmp128 = icmp sgt i32 %105, %107
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.126
  %108 = load i32, i32* %bpl, align 4
  %109 = load %struct.ReadSeqVars*, %struct.ReadSeqVars** %V.addr, align 8
  %maxbpl131 = getelementptr inbounds %struct.ReadSeqVars, %struct.ReadSeqVars* %109, i32 0, i32 14
  store i32 %108, i32* %maxbpl131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.126
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.99
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @endStrider(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0)) #6
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @endGB(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0)) #6
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %call1 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0)) #6
  %3 = load i8*, i8** %s.addr, align 8
  %cmp2 = icmp eq i8* %call1, %3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @endPearson(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 62
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @endEMBL(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i64 5) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @endZuker(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @endPIR(i8* %s, i32* %addend) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i64 3) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i64 5) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @Strparse(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @endGCGdata(i8* %s, i32* %addend) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %addend.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %addend, i32** %addend.addr, align 8
  %0 = load i32*, i32** %addend.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 62
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
