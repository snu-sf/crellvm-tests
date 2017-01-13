; ModuleID = './MultiSource.Benchmarks.MiBench/170.office-ispell.ispell.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.strchartype = type { i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@minimenusize = global i32 2, align 4
@eflag = global i32 0, align 4
@dumpflag = global i32 0, align 4
@fflag = global i32 0, align 4
@sflag = global i32 0, align 4
@vflag = global i32 0, align 4
@xflag = global i32 0, align 4
@deftflag = global i32 -1, align 4
@tflag = global i32 0, align 4
@prefstringchar = global i32 -1, align 4
@terse = global i32 0, align 4
@tempfile = global [4096 x i8] zeroinitializer, align 16
@minword = global i32 1, align 4
@sortit = global i32 1, align 4
@compoundflag = global i32 -1, align 4
@tryhardflag = global i32 -1, align 4
@currentfile = global i8* null, align 8
@math_mode = global i32 0, align 4
@LaTeX_Mode = global i8 80, align 1
@main.libdictname = internal global [13 x i8] zeroinitializer, align 1
@main.outbuf = internal global [8192 x i8] zeroinitializer, align 16
@Cmd = internal global i8* null, align 8
@Trynum = common global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DICTIONARY\00", align 1
@hashname = common global [4096 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@LibDict = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"english.hash\00", align 1
@Version_ID = internal global [40 x i8*] [i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.175, i32 0, i32 0), i8* null], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"(#) \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Compiled-in options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\09!USG (BSD)\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09BAKEXT = \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\09BINDIR = \22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\09!BOTTOMCONTEXT\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\09CBREAK\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\09CC = \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"\09CFLAGS = \22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"\09!COMMANDFORSPACE\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\09!CONTEXTROUNDUP\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\09CONTEXTPCT = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\09COUNTSUFFIX = \22%s\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c".cnt\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\09DEFHASH = \22%s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\09DEFINCSTR = \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"\09DEFLANG = \22%s\22\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"english.aff\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\09DEFNOBACKUPFLAG = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"\09DEFPAFF = \22%s\22\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"\09DEFPDICT = \22%s\22\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"\09DEFTEXFLAG = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"\09EGREPCMD = \22%s\22\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"\09ELISPDIR = \22%s\22\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/emacs/site-lisp\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\09EMACS = \22%s\22\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"\09!EQUAL_COLUMNS\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"\09!GENERATE_LIBRARY_PROTOS\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"\09!HAS_RENAME\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"\09HASHSUFFIX = \22%s\22\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"\09HOME = \22%s\22\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"\09!IGNOREBIB\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"\09INCSTRVAR = \22%s\22\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"\09INPUTWORDLEN = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"\09LANGUAGES = \22%s\22\0A\00", align 1
@.str.52 = private unnamed_addr constant [81 x i8] c"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"\09LIBDIR = \22%s\22\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\09LIBES = \22%s\22\0A\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"\09LINT = \22%s\22\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"\09LINTFLAGS = \22%s\22\0A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"\09LOOK = \22%s\22\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"\09MAKE_SORTTMP = \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"-T ${TMPDIR-/tmp}\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"\09MALLOC_INCREMENT = %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"\09MAN1DIR = \22%s\22\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man1\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"\09MAN1EXT = \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"\09MAN4DIR = \22%s\22\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man4\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"\09MAN4EXT = \22%s\22\0A\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c".4\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"\09MASKBITS = %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"\09MASKTYPE = %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"\09MASKTYPE_WIDTH = %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"\09MASTERHASH = \22%s\22\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"americanmed+.hash\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"\09MAXAFFIXLEN = %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"\09MAXCONTEXT = %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"\09MAXINCLUDEFILES = %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"\09MAXNAMLEN = %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"\09MAXPATHLEN = %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"\09MAXPCT = %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"\09MAXSEARCH = %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"\09MAXSTRINGCHARLEN = %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"\09MAXSTRINGCHARS = %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"\09MAX_CAPS = %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"\09MAX_HITS = %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"\09MAX_SCREEN_SIZE = %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"\09MINCONTEXT = %d\0A\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"\09MINIMENU\0A\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"\09MINWORD = %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"\09MSDOS_BINARY_OPEN = 0x%x\0A\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"\09MSGLANG = %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"english\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"\09!NO_CAPITALIZATION_SUPPORT\0A\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"\09!NO_STDLIB_H (STDLIB_H)\0A\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"\09NO8BIT\0A\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"\09NRSPECIAL = \22%s\22\0A\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"().\5C*\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"\09OLDPAFF = \22%s\22\0A\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"\09OLDPDICT = \22%s\22\0A\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"\09PDICTHOME = (undefined)\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"\09PDICTVAR = \22%s\22\0A\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"\09!PIECEMEAL_HASH_WRITES\0A\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"\09!REGEX_LOOKUP\0A\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"\09REGLIB = \22%s\22\0A\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"\09SIGNAL_TYPE = %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"\09SORTPERSONAL = %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"\09STATSUFFIX = \22%s\22\0A\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c".stat\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"\09TEMPNAME = \22%s\22\0A\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"/tmp/ispellXXXXXX\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"\09TERMLIB = \22%s\22\0A\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"\09TEXINFODIR = \22%s\22\0A\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"/usr/local/info\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"\09TEXSPECIAL = \22%s\22\0A\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"()[]{}<>\5C$*.%\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"\09!TRUNCATEBAK\0A\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"\09!USESH\0A\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"\09WORDS = \22%s\22\0A\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"\09YACC = \22%s\22\0A\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@incfileflag = common global i32 0, align 4
@aflag = common global i32 0, align 4
@nodictflag = common global i32 0, align 4
@cflag = common global i32 0, align 4
@lflag = common global i32 0, align 4
@askfilename = common global i8* null, align 8
@contextsize = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.129 = private unnamed_addr constant [40 x i8] c"ispell:  specified file does not exist\0A\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"ispell:  specified files do not exist\0A\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"ispell:  unrecognized formatter type '%s'\0A\00", align 1
@defdupchar = common global i32 0, align 4
@hashheader = common global %struct.hashheader zeroinitializer, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@infile = common global %struct._IO_FILE* null, align 8
@outfile = common global %struct._IO_FILE* null, align 8
@BC = common global i8* null, align 8
@cd = common global i8* null, align 8
@cl = common global i8* null, align 8
@cm = common global i8* null, align 8
@ho = common global i8* null, align 8
@nd = common global i8* null, align 8
@so = common global i8* null, align 8
@se = common global i8* null, align 8
@sg = common global i32 0, align 4
@ti = common global i8* null, align 8
@te = common global i8* null, align 8
@li = common global i32 0, align 4
@co = common global i32 0, align 4
@contextbufs = common global [10 x [8192 x i8]] zeroinitializer, align 16
@contextoffset = common global i32 0, align 4
@currentchar = common global i8* null, align 8
@ctoken = common global [120 x i8] zeroinitializer, align 16
@itoken = common global [120 x i8] zeroinitializer, align 16
@termcap = common global [2048 x i8] zeroinitializer, align 16
@termstr = common global [2048 x i8] zeroinitializer, align 16
@termptr = common global i8* null, align 8
@numhits = common global i32 0, align 4
@hits = common global [10 x %struct.success] zeroinitializer, align 16
@hashstrings = common global i8* null, align 8
@hashtbl = common global %struct.dent* null, align 8
@hashsize = common global i32 0, align 4
@uerasechar = common global i32 0, align 4
@ukillchar = common global i32 0, align 4
@laststringch = common global i32 0, align 4
@numpflags = common global i32 0, align 4
@numsflags = common global i32 0, align 4
@pflagindex = common global [228 x %struct.flagptr] zeroinitializer, align 16
@pflaglist = common global %struct.flagent* null, align 8
@sflagindex = common global [228 x %struct.flagptr] zeroinitializer, align 16
@sflaglist = common global %struct.flagent* null, align 8
@chartypes = common global %struct.strchartype* null, align 8
@changes = common global i32 0, align 4
@readonly = common global i32 0, align 4
@quit = common global i32 0, align 4
@possibilities = common global [100 x [120 x i8]] zeroinitializer, align 16
@pcount = common global i32 0, align 4
@maxposslen = common global i32 0, align 4
@easypossibilities = common global i32 0, align 4
@Try = common global [228 x i8] zeroinitializer, align 16
@.str.132 = private unnamed_addr constant [137 x i8] c"Usage: %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -x | -b | -S | -B | -C | -P | -m | -Lcontext | -M | -N | -Ttype | -V] file .....\0A\00", align 1
@.str.133 = private unnamed_addr constant [67 x i8] c"       %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -Ttype] -l\0A\00", align 1
@.str.134 = private unnamed_addr constant [98 x i8] c"       %s [-dfile | -pfile | -ffile | -Wn | -t | -n | -s | -B | -C | -P | -m | -Ttype] {-a | -A}\0A\00", align 1
@.str.135 = private unnamed_addr constant [39 x i8] c"       %s [-dfile] [-wchars | -Wn] -c\0A\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"       %s [-dfile] [-wchars] -e[1-4]\0A\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"       %s [-dfile] [-wchars] -D\0A\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"       %s -v\0A\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"@(#) Copyright (c), 1983, by Pace Willisson\00", align 1
@.str.141 = private unnamed_addr constant [64 x i8] c"@(#) International version Copyright (c) 1987, 1988, 1990-1995,\00", align 1
@.str.142 = private unnamed_addr constant [65 x i8] c"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved.\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"@(#)\00", align 1
@.str.144 = private unnamed_addr constant [72 x i8] c"@(#) Redistribution and use in source and binary forms, with or without\00", align 1
@.str.145 = private unnamed_addr constant [72 x i8] c"@(#) modification, are permitted provided that the following conditions\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"@(#) are met:\00", align 1
@.str.147 = private unnamed_addr constant [71 x i8] c"@(#) 1. Redistributions of source code must retain the above copyright\00", align 1
@.str.148 = private unnamed_addr constant [70 x i8] c"@(#)    notice, this list of conditions and the following disclaimer.\00", align 1
@.str.149 = private unnamed_addr constant [64 x i8] c"@(#) 2. Redistributions in binary form must reproduce the above\00", align 1
@.str.150 = private unnamed_addr constant [68 x i8] c"@(#)    copyright notice, this list of conditions and the following\00", align 1
@.str.151 = private unnamed_addr constant [72 x i8] c"@(#)    disclaimer in the documentation and/or other materials provided\00", align 1
@.str.152 = private unnamed_addr constant [31 x i8] c"@(#)    with the distribution.\00", align 1
@.str.153 = private unnamed_addr constant [71 x i8] c"@(#) 3. All modifications to the source code must be clearly marked as\00", align 1
@.str.154 = private unnamed_addr constant [68 x i8] c"@(#)    such.  Binary redistributions based on modified source code\00", align 1
@.str.155 = private unnamed_addr constant [73 x i8] c"@(#)    must be clearly marked as modified versions in the documentation\00", align 1
@.str.156 = private unnamed_addr constant [63 x i8] c"@(#)    and/or other materials provided with the distribution.\00", align 1
@.str.157 = private unnamed_addr constant [69 x i8] c"@(#) 4. All advertising materials mentioning features or use of this\00", align 1
@.str.158 = private unnamed_addr constant [60 x i8] c"@(#)    software must display the following acknowledgment:\00", align 1
@.str.159 = private unnamed_addr constant [73 x i8] c"@(#)      This product includes software developed by Geoff Kuenning and\00", align 1
@.str.160 = private unnamed_addr constant [37 x i8] c"@(#)      other unpaid contributors.\00", align 1
@.str.161 = private unnamed_addr constant [73 x i8] c"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote\00", align 1
@.str.162 = private unnamed_addr constant [67 x i8] c"@(#)    products derived from this software without specific prior\00", align 1
@.str.163 = private unnamed_addr constant [28 x i8] c"@(#)    written permission.\00", align 1
@.str.164 = private unnamed_addr constant [71 x i8] c"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS\00", align 1
@.str.165 = private unnamed_addr constant [68 x i8] c"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\00", align 1
@.str.166 = private unnamed_addr constant [71 x i8] c"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\00", align 1
@.str.167 = private unnamed_addr constant [71 x i8] c"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF\00", align 1
@.str.168 = private unnamed_addr constant [66 x i8] c"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\00", align 1
@.str.169 = private unnamed_addr constant [62 x i8] c"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\00", align 1
@.str.170 = private unnamed_addr constant [72 x i8] c"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\00", align 1
@.str.171 = private unnamed_addr constant [72 x i8] c"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\00", align 1
@.str.172 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
@.str.173 = private unnamed_addr constant [67 x i8] c"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\00", align 1
@.str.174 = private unnamed_addr constant [73 x i8] c"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\00", align 1
@.str.175 = private unnamed_addr constant [40 x i8] c"@(#) OF THE POSSIBILITY OF SUCH DAMAGE.\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c".tex\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.178 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"Warning:  Can't write to %s\0D\0A\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@.str.183 = private unnamed_addr constant [34 x i8] c"temporary file disappeared (%s)\0D\0A\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.186 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@.str.187 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.188 = private unnamed_addr constant [96 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/ispell.c\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c" %f\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %cpd = alloca i8*, align 8
  %versionp = alloca i8**, align 8
  %wchars = alloca i8*, align 8
  %preftype = alloca i8*, align 8
  %argno = alloca i32, align 4
  %arglen = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** %wchars, align 8
  store i8* null, i8** %preftype, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** @Cmd, align 8
  store i32 0, i32* @Trynum, align 4
  %call = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %call1 = call i8* @index(i8* %3, i32 47) #7
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load i8*, i8** %p, align 8
  %call4 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* %4) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i8*, i8** %p, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %5) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %6 = load i8*, i8** %p, align 8
  %call6 = call i8* @strcpy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i8* %6) #6
  %7 = load i8*, i8** %p, align 8
  %call7 = call i8* @rindex(i8* %7, i32 46) #7
  store i8* %call7, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  %cmp8 = icmp eq i8* %8, null
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8*, i8** %p, align 8
  %call9 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %call12 = call i8* @strcat(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %lor.lhs.false
  %call14 = call i8* @rindex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i32 47) #7
  store i8* %call14, i8** @LibDict, align 8
  %10 = load i8*, i8** @LibDict, align 8
  %cmp15 = icmp ne i8* %10, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.13
  %11 = load i8*, i8** @LibDict, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** @LibDict, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.13
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i8** @LibDict, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %call19 = call i8* @rindex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i32 46) #7
  store i8* %call19, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %cmp20 = icmp ne i8* %12, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %13 = load i8*, i8** %p, align 8
  store i8 0, i8* %13, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  br label %if.end.25

if.else.23:                                       ; preds = %entry
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.end.22
  store i8* null, i8** %cpd, align 8
  %14 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr26, i8*** %argv.addr, align 8
  %15 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.25
  %16 = load i32, i32* %argc.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %cmp27 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i8**, i8*** %argv.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %call29 = call i64 @strlen(i8* %22) #7
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %arglen, align 4
  %23 = load i8**, i8*** %argv.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1
  %conv31 = sext i8 %25 to i32
  switch i32 %conv31, label %sw.default [
    i32 118, label %sw.bb
    i32 110, label %sw.bb.135
    i32 116, label %sw.bb.144
    i32 84, label %sw.bb.153
    i32 65, label %sw.bb.166
    i32 97, label %sw.bb.171
    i32 68, label %sw.bb.176
    i32 101, label %sw.bb.183
    i32 99, label %sw.bb.215
    i32 98, label %sw.bb.223
    i32 120, label %sw.bb.228
    i32 102, label %sw.bb.233
    i32 76, label %sw.bb.252
    i32 108, label %sw.bb.266
    i32 115, label %sw.bb.272
    i32 83, label %sw.bb.278
    i32 66, label %sw.bb.283
    i32 67, label %sw.bb.288
    i32 80, label %sw.bb.293
    i32 109, label %sw.bb.298
    i32 78, label %sw.bb.303
    i32 77, label %sw.bb.308
    i32 112, label %sw.bb.313
    i32 100, label %sw.bb.331
    i32 86, label %sw.bb.381
    i32 119, label %sw.bb.386
    i32 87, label %sw.bb.399
  ]

sw.bb:                                            ; preds = %while.body
  %26 = load i32, i32* %arglen, align 4
  %cmp32 = icmp sgt i32 %26, 3
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %sw.bb
  call void @usage()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %sw.bb
  store i8** getelementptr inbounds ([40 x i8*], [40 x i8*]* @Version_ID, i32 0, i32 0), i8*** %versionp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.42, %if.end.35
  %27 = load i8**, i8*** %versionp, align 8
  %28 = load i8*, i8** %27, align 8
  %tobool36 = icmp ne i8* %28, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8**, i8*** %versionp, align 8
  %incdec.ptr37 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr37, i8*** %versionp, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %p, align 8
  %31 = load i8*, i8** %p, align 8
  %call38 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 5) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body
  %32 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 5
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.body
  %33 = load i8*, i8** %p, align 8
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %33)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i8**, i8*** %argv.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %36 to i32
  %cmp46 = icmp eq i32 %conv45, 118
  br i1 %cmp46, label %if.then.48, label %if.end.134

if.then.48:                                       ; preds = %for.end
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0))
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 10)
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0))
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0))
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0))
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 0)
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0))
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0))
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0))
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0))
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0))
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0))
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0))
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0))
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0))
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), i32 100)
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.52, i32 0, i32 0))
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0))
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0))
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i32 4088)
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0))
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0))
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0))
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i32 32)
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0))
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i32 32)
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0))
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i32 20)
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i32 10)
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0), i32 5)
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i32 255)
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i32 4096)
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i32 70)
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i32 4)
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i32 0, i32 0), i32 10)
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i32 100)
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), i32 10)
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), i32 10)
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0), i32 0)
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), i32 2)
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0))
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0), i32 1)
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0), i32 0)
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0))
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i32 0, i32 0))
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i32 0, i32 0))
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0))
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0))
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0))
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i32 0, i32 0))
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0))
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i32 0, i32 0))
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0))
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0))
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.111, i32 0, i32 0), i32 1000)
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0))
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i32 0, i32 0))
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0))
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0))
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0))
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0))
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i32 0, i32 0))
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.48, %for.end
  call void @exit(i32 0) #8
  unreachable

sw.bb.135:                                        ; preds = %while.body
  %37 = load i32, i32* %arglen, align 4
  %cmp136 = icmp sgt i32 %37, 2
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %sw.bb.135
  call void @usage()
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %sw.bb.135
  store i32 0, i32* @tflag, align 4
  store i32 0, i32* @deftflag, align 4
  %38 = load i8*, i8** %preftype, align 8
  %cmp140 = icmp eq i8* %38, null
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i8** %preftype, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.139
  br label %sw.epilog

sw.bb.144:                                        ; preds = %while.body
  %39 = load i32, i32* %arglen, align 4
  %cmp145 = icmp sgt i32 %39, 2
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %sw.bb.144
  call void @usage()
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %sw.bb.144
  store i32 1, i32* @tflag, align 4
  store i32 1, i32* @deftflag, align 4
  %40 = load i8*, i8** %preftype, align 8
  %cmp149 = icmp eq i8* %40, null
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.148
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8** %preftype, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.148
  br label %sw.epilog

sw.bb.153:                                        ; preds = %while.body
  %41 = load i8**, i8*** %argv.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr154, i8** %p, align 8
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv155 = sext i8 %44 to i32
  %cmp156 = icmp eq i32 %conv155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.165

if.then.158:                                      ; preds = %sw.bb.153
  %45 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr159, i8*** %argv.addr, align 8
  %46 = load i32, i32* %argc.addr, align 4
  %dec160 = add nsw i32 %46, -1
  store i32 %dec160, i32* %argc.addr, align 4
  %47 = load i32, i32* %argc.addr, align 4
  %cmp161 = icmp eq i32 %47, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.158
  call void @usage()
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.then.158
  %48 = load i8**, i8*** %argv.addr, align 8
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %p, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %sw.bb.153
  %50 = load i8*, i8** %p, align 8
  store i8* %50, i8** %preftype, align 8
  br label %sw.epilog

sw.bb.166:                                        ; preds = %while.body
  %51 = load i32, i32* %arglen, align 4
  %cmp167 = icmp sgt i32 %51, 2
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %sw.bb.166
  call void @usage()
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %sw.bb.166
  store i32 1, i32* @incfileflag, align 4
  store i32 1, i32* @aflag, align 4
  br label %sw.epilog

sw.bb.171:                                        ; preds = %while.body
  %52 = load i32, i32* %arglen, align 4
  %cmp172 = icmp sgt i32 %52, 2
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %sw.bb.171
  call void @usage()
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %sw.bb.171
  %53 = load i32, i32* @aflag, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* @aflag, align 4
  br label %sw.epilog

sw.bb.176:                                        ; preds = %while.body
  %54 = load i32, i32* %arglen, align 4
  %cmp177 = icmp sgt i32 %54, 2
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %sw.bb.176
  call void @usage()
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %sw.bb.176
  %55 = load i32, i32* @dumpflag, align 4
  %inc181 = add nsw i32 %55, 1
  store i32 %inc181, i32* @dumpflag, align 4
  %56 = load i32, i32* @nodictflag, align 4
  %inc182 = add nsw i32 %56, 1
  store i32 %inc182, i32* @nodictflag, align 4
  br label %sw.epilog

sw.bb.183:                                        ; preds = %while.body
  %57 = load i32, i32* %arglen, align 4
  %cmp184 = icmp sgt i32 %57, 3
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %sw.bb.183
  call void @usage()
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %sw.bb.183
  store i32 1, i32* @eflag, align 4
  %58 = load i8**, i8*** %argv.addr, align 8
  %59 = load i8*, i8** %58, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %60 to i32
  %cmp190 = icmp eq i32 %conv189, 101
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %if.end.187
  store i32 2, i32* @eflag, align 4
  br label %if.end.213

if.else.193:                                      ; preds = %if.end.187
  %61 = load i8**, i8*** %argv.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %63 to i32
  %cmp196 = icmp sge i32 %conv195, 49
  br i1 %cmp196, label %land.lhs.true, label %if.else.205

land.lhs.true:                                    ; preds = %if.else.193
  %64 = load i8**, i8*** %argv.addr, align 8
  %65 = load i8*, i8** %64, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %65, i64 2
  %66 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %66 to i32
  %cmp200 = icmp sle i32 %conv199, 52
  br i1 %cmp200, label %if.then.202, label %if.else.205

if.then.202:                                      ; preds = %land.lhs.true
  %67 = load i8**, i8*** %argv.addr, align 8
  %68 = load i8*, i8** %67, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx203, align 1
  %conv204 = sext i8 %69 to i32
  %sub = sub nsw i32 %conv204, 48
  store i32 %sub, i32* @eflag, align 4
  br label %if.end.212

if.else.205:                                      ; preds = %land.lhs.true, %if.else.193
  %70 = load i8**, i8*** %argv.addr, align 8
  %71 = load i8*, i8** %70, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %71, i64 2
  %72 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %72 to i32
  %cmp208 = icmp ne i32 %conv207, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.else.205
  call void @usage()
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %if.else.205
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.202
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.192
  %73 = load i32, i32* @nodictflag, align 4
  %inc214 = add nsw i32 %73, 1
  store i32 %inc214, i32* @nodictflag, align 4
  br label %sw.epilog

sw.bb.215:                                        ; preds = %while.body
  %74 = load i32, i32* %arglen, align 4
  %cmp216 = icmp sgt i32 %74, 2
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %sw.bb.215
  call void @usage()
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.218, %sw.bb.215
  %75 = load i32, i32* @cflag, align 4
  %inc220 = add nsw i32 %75, 1
  store i32 %inc220, i32* @cflag, align 4
  %76 = load i32, i32* @lflag, align 4
  %inc221 = add nsw i32 %76, 1
  store i32 %inc221, i32* @lflag, align 4
  %77 = load i32, i32* @nodictflag, align 4
  %inc222 = add nsw i32 %77, 1
  store i32 %inc222, i32* @nodictflag, align 4
  br label %sw.epilog

sw.bb.223:                                        ; preds = %while.body
  %78 = load i32, i32* %arglen, align 4
  %cmp224 = icmp sgt i32 %78, 2
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %sw.bb.223
  call void @usage()
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %sw.bb.223
  store i32 0, i32* @xflag, align 4
  br label %sw.epilog

sw.bb.228:                                        ; preds = %while.body
  %79 = load i32, i32* %arglen, align 4
  %cmp229 = icmp sgt i32 %79, 2
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %sw.bb.228
  call void @usage()
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %sw.bb.228
  store i32 1, i32* @xflag, align 4
  br label %sw.epilog

sw.bb.233:                                        ; preds = %while.body
  %80 = load i32, i32* @fflag, align 4
  %inc234 = add nsw i32 %80, 1
  store i32 %inc234, i32* @fflag, align 4
  %81 = load i8**, i8*** %argv.addr, align 8
  %82 = load i8*, i8** %81, align 8
  %add.ptr235 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %add.ptr235, i8** %p, align 8
  %83 = load i8*, i8** %p, align 8
  %84 = load i8, i8* %83, align 1
  %conv236 = sext i8 %84 to i32
  %cmp237 = icmp eq i32 %conv236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.246

if.then.239:                                      ; preds = %sw.bb.233
  %85 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr240 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %incdec.ptr240, i8*** %argv.addr, align 8
  %86 = load i32, i32* %argc.addr, align 4
  %dec241 = add nsw i32 %86, -1
  store i32 %dec241, i32* %argc.addr, align 4
  %87 = load i32, i32* %argc.addr, align 4
  %cmp242 = icmp eq i32 %87, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.then.239
  call void @usage()
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.then.239
  %88 = load i8**, i8*** %argv.addr, align 8
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %p, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %sw.bb.233
  %90 = load i8*, i8** %p, align 8
  store i8* %90, i8** @askfilename, align 8
  %91 = load i8*, i8** @askfilename, align 8
  %92 = load i8, i8* %91, align 1
  %conv247 = sext i8 %92 to i32
  %cmp248 = icmp eq i32 %conv247, 0
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.246
  store i8* null, i8** @askfilename, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.250, %if.end.246
  br label %sw.epilog

sw.bb.252:                                        ; preds = %while.body
  %93 = load i8**, i8*** %argv.addr, align 8
  %94 = load i8*, i8** %93, align 8
  %add.ptr253 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %add.ptr253, i8** %p, align 8
  %95 = load i8*, i8** %p, align 8
  %96 = load i8, i8* %95, align 1
  %conv254 = sext i8 %96 to i32
  %cmp255 = icmp eq i32 %conv254, 0
  br i1 %cmp255, label %if.then.257, label %if.end.264

if.then.257:                                      ; preds = %sw.bb.252
  %97 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr258 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %incdec.ptr258, i8*** %argv.addr, align 8
  %98 = load i32, i32* %argc.addr, align 4
  %dec259 = add nsw i32 %98, -1
  store i32 %dec259, i32* %argc.addr, align 4
  %99 = load i32, i32* %argc.addr, align 4
  %cmp260 = icmp eq i32 %99, 0
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.then.257
  call void @usage()
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.then.257
  %100 = load i8**, i8*** %argv.addr, align 8
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %p, align 8
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %sw.bb.252
  %102 = load i8*, i8** %p, align 8
  %call265 = call i32 @atoi(i8* %102) #7
  store i32 %call265, i32* @contextsize, align 4
  br label %sw.epilog

sw.bb.266:                                        ; preds = %while.body
  %103 = load i32, i32* %arglen, align 4
  %cmp267 = icmp sgt i32 %103, 2
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %sw.bb.266
  call void @usage()
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %sw.bb.266
  %104 = load i32, i32* @lflag, align 4
  %inc271 = add nsw i32 %104, 1
  store i32 %inc271, i32* @lflag, align 4
  br label %sw.epilog

sw.bb.272:                                        ; preds = %while.body
  %105 = load i32, i32* %arglen, align 4
  %cmp273 = icmp sgt i32 %105, 2
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %sw.bb.272
  call void @usage()
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.275, %sw.bb.272
  %106 = load i32, i32* @sflag, align 4
  %inc277 = add nsw i32 %106, 1
  store i32 %inc277, i32* @sflag, align 4
  br label %sw.epilog

sw.bb.278:                                        ; preds = %while.body
  %107 = load i32, i32* %arglen, align 4
  %cmp279 = icmp sgt i32 %107, 2
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %sw.bb.278
  call void @usage()
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.281, %sw.bb.278
  store i32 0, i32* @sortit, align 4
  br label %sw.epilog

sw.bb.283:                                        ; preds = %while.body
  %108 = load i32, i32* %arglen, align 4
  %cmp284 = icmp sgt i32 %108, 2
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %sw.bb.283
  call void @usage()
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %sw.bb.283
  store i32 0, i32* @compoundflag, align 4
  br label %sw.epilog

sw.bb.288:                                        ; preds = %while.body
  %109 = load i32, i32* %arglen, align 4
  %cmp289 = icmp sgt i32 %109, 2
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %sw.bb.288
  call void @usage()
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.291, %sw.bb.288
  store i32 1, i32* @compoundflag, align 4
  br label %sw.epilog

sw.bb.293:                                        ; preds = %while.body
  %110 = load i32, i32* %arglen, align 4
  %cmp294 = icmp sgt i32 %110, 2
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %sw.bb.293
  call void @usage()
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %sw.bb.293
  store i32 0, i32* @tryhardflag, align 4
  br label %sw.epilog

sw.bb.298:                                        ; preds = %while.body
  %111 = load i32, i32* %arglen, align 4
  %cmp299 = icmp sgt i32 %111, 2
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %sw.bb.298
  call void @usage()
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.301, %sw.bb.298
  store i32 1, i32* @tryhardflag, align 4
  br label %sw.epilog

sw.bb.303:                                        ; preds = %while.body
  %112 = load i32, i32* %arglen, align 4
  %cmp304 = icmp sgt i32 %112, 2
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %sw.bb.303
  call void @usage()
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %sw.bb.303
  store i32 0, i32* @minimenusize, align 4
  br label %sw.epilog

sw.bb.308:                                        ; preds = %while.body
  %113 = load i32, i32* %arglen, align 4
  %cmp309 = icmp sgt i32 %113, 2
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %sw.bb.308
  call void @usage()
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %sw.bb.308
  store i32 2, i32* @minimenusize, align 4
  br label %sw.epilog

sw.bb.313:                                        ; preds = %while.body
  %114 = load i8**, i8*** %argv.addr, align 8
  %115 = load i8*, i8** %114, align 8
  %add.ptr314 = getelementptr inbounds i8, i8* %115, i64 2
  store i8* %add.ptr314, i8** %cpd, align 8
  %116 = load i8*, i8** %cpd, align 8
  %117 = load i8, i8* %116, align 1
  %conv315 = sext i8 %117 to i32
  %cmp316 = icmp eq i32 %conv315, 0
  br i1 %cmp316, label %if.then.318, label %if.end.330

if.then.318:                                      ; preds = %sw.bb.313
  %118 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr319 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %incdec.ptr319, i8*** %argv.addr, align 8
  %119 = load i32, i32* %argc.addr, align 4
  %dec320 = add nsw i32 %119, -1
  store i32 %dec320, i32* %argc.addr, align 4
  %120 = load i32, i32* %argc.addr, align 4
  %cmp321 = icmp eq i32 %120, 0
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.then.318
  call void @usage()
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.323, %if.then.318
  %121 = load i8**, i8*** %argv.addr, align 8
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %cpd, align 8
  %123 = load i8*, i8** %cpd, align 8
  %124 = load i8, i8* %123, align 1
  %conv325 = sext i8 %124 to i32
  %cmp326 = icmp eq i32 %conv325, 0
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.end.324
  store i8* null, i8** %cpd, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.end.324
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %sw.bb.313
  store i8* null, i8** @LibDict, align 8
  br label %sw.epilog

sw.bb.331:                                        ; preds = %while.body
  %125 = load i8**, i8*** %argv.addr, align 8
  %126 = load i8*, i8** %125, align 8
  %add.ptr332 = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %add.ptr332, i8** %p, align 8
  %127 = load i8*, i8** %p, align 8
  %128 = load i8, i8* %127, align 1
  %conv333 = sext i8 %128 to i32
  %cmp334 = icmp eq i32 %conv333, 0
  br i1 %cmp334, label %if.then.336, label %if.end.343

if.then.336:                                      ; preds = %sw.bb.331
  %129 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr337 = getelementptr inbounds i8*, i8** %129, i32 1
  store i8** %incdec.ptr337, i8*** %argv.addr, align 8
  %130 = load i32, i32* %argc.addr, align 4
  %dec338 = add nsw i32 %130, -1
  store i32 %dec338, i32* %argc.addr, align 4
  %131 = load i32, i32* %argc.addr, align 4
  %cmp339 = icmp eq i32 %131, 0
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %if.then.336
  call void @usage()
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.341, %if.then.336
  %132 = load i8**, i8*** %argv.addr, align 8
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %p, align 8
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %sw.bb.331
  %134 = load i8*, i8** %p, align 8
  %call344 = call i8* @index(i8* %134, i32 47) #7
  %cmp345 = icmp ne i8* %call344, null
  br i1 %cmp345, label %if.then.347, label %if.else.349

if.then.347:                                      ; preds = %if.end.343
  %135 = load i8*, i8** %p, align 8
  %call348 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* %135) #6
  br label %if.end.351

if.else.349:                                      ; preds = %if.end.343
  %136 = load i8*, i8** %p, align 8
  %call350 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %136) #6
  br label %if.end.351

if.end.351:                                       ; preds = %if.else.349, %if.then.347
  %137 = load i8*, i8** %cpd, align 8
  %cmp352 = icmp eq i8* %137, null
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.359

land.lhs.true.354:                                ; preds = %if.end.351
  %138 = load i8*, i8** %p, align 8
  %139 = load i8, i8* %138, align 1
  %conv355 = sext i8 %139 to i32
  %cmp356 = icmp ne i32 %conv355, 0
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %land.lhs.true.354
  %140 = load i8*, i8** %p, align 8
  store i8* %140, i8** @LibDict, align 8
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %land.lhs.true.354, %if.end.351
  %141 = load i8*, i8** %p, align 8
  %call360 = call i8* @rindex(i8* %141, i32 46) #7
  store i8* %call360, i8** %p, align 8
  %142 = load i8*, i8** %p, align 8
  %cmp361 = icmp ne i8* %142, null
  br i1 %cmp361, label %land.lhs.true.363, label %if.else.368

land.lhs.true.363:                                ; preds = %if.end.359
  %143 = load i8*, i8** %p, align 8
  %call364 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp365 = icmp eq i32 %call364, 0
  br i1 %cmp365, label %if.then.367, label %if.else.368

if.then.367:                                      ; preds = %land.lhs.true.363
  %144 = load i8*, i8** %p, align 8
  store i8 0, i8* %144, align 1
  br label %if.end.370

if.else.368:                                      ; preds = %land.lhs.true.363, %if.end.359
  %call369 = call i8* @strcat(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.370

if.end.370:                                       ; preds = %if.else.368, %if.then.367
  %145 = load i8*, i8** @LibDict, align 8
  %cmp371 = icmp ne i8* %145, null
  br i1 %cmp371, label %if.then.373, label %if.end.380

if.then.373:                                      ; preds = %if.end.370
  %146 = load i8*, i8** @LibDict, align 8
  %call374 = call i8* @rindex(i8* %146, i32 47) #7
  store i8* %call374, i8** %p, align 8
  %147 = load i8*, i8** %p, align 8
  %cmp375 = icmp ne i8* %147, null
  br i1 %cmp375, label %if.then.377, label %if.end.379

if.then.377:                                      ; preds = %if.then.373
  %148 = load i8*, i8** %p, align 8
  %add.ptr378 = getelementptr inbounds i8, i8* %148, i64 1
  store i8* %add.ptr378, i8** @LibDict, align 8
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.377, %if.then.373
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.end.370
  br label %sw.epilog

sw.bb.381:                                        ; preds = %while.body
  %149 = load i32, i32* %arglen, align 4
  %cmp382 = icmp sgt i32 %149, 2
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %sw.bb.381
  call void @usage()
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.384, %sw.bb.381
  store i32 1, i32* @vflag, align 4
  br label %sw.epilog

sw.bb.386:                                        ; preds = %while.body
  %150 = load i8**, i8*** %argv.addr, align 8
  %151 = load i8*, i8** %150, align 8
  %add.ptr387 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %add.ptr387, i8** %wchars, align 8
  %152 = load i8*, i8** %wchars, align 8
  %153 = load i8, i8* %152, align 1
  %conv388 = sext i8 %153 to i32
  %cmp389 = icmp eq i32 %conv388, 0
  br i1 %cmp389, label %if.then.391, label %if.end.398

if.then.391:                                      ; preds = %sw.bb.386
  %154 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr392 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %incdec.ptr392, i8*** %argv.addr, align 8
  %155 = load i32, i32* %argc.addr, align 4
  %dec393 = add nsw i32 %155, -1
  store i32 %dec393, i32* %argc.addr, align 4
  %156 = load i32, i32* %argc.addr, align 4
  %cmp394 = icmp eq i32 %156, 0
  br i1 %cmp394, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %if.then.391
  call void @usage()
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.396, %if.then.391
  %157 = load i8**, i8*** %argv.addr, align 8
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %wchars, align 8
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %sw.bb.386
  br label %sw.epilog

sw.bb.399:                                        ; preds = %while.body
  %159 = load i8**, i8*** %argv.addr, align 8
  %160 = load i8*, i8** %159, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %160, i64 2
  %161 = load i8, i8* %arrayidx400, align 1
  %conv401 = sext i8 %161 to i32
  %cmp402 = icmp eq i32 %conv401, 0
  br i1 %cmp402, label %if.then.404, label %if.else.412

if.then.404:                                      ; preds = %sw.bb.399
  %162 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr405 = getelementptr inbounds i8*, i8** %162, i32 1
  store i8** %incdec.ptr405, i8*** %argv.addr, align 8
  %163 = load i32, i32* %argc.addr, align 4
  %dec406 = add nsw i32 %163, -1
  store i32 %dec406, i32* %argc.addr, align 4
  %164 = load i32, i32* %argc.addr, align 4
  %cmp407 = icmp eq i32 %164, 0
  br i1 %cmp407, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.then.404
  call void @usage()
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.409, %if.then.404
  %165 = load i8**, i8*** %argv.addr, align 8
  %166 = load i8*, i8** %165, align 8
  %call411 = call i32 @atoi(i8* %166) #7
  store i32 %call411, i32* @minword, align 4
  br label %if.end.415

if.else.412:                                      ; preds = %sw.bb.399
  %167 = load i8**, i8*** %argv.addr, align 8
  %168 = load i8*, i8** %167, align 8
  %add.ptr413 = getelementptr inbounds i8, i8* %168, i64 2
  %call414 = call i32 @atoi(i8* %add.ptr413) #7
  store i32 %call414, i32* @minword, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.412, %if.end.410
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.415, %if.end.398, %if.end.385, %if.end.380, %if.end.330, %if.end.312, %if.end.307, %if.end.302, %if.end.297, %if.end.292, %if.end.287, %if.end.282, %if.end.276, %if.end.270, %if.end.264, %if.end.251, %if.end.232, %if.end.227, %if.end.219, %if.end.213, %if.end.180, %if.end.175, %if.end.170, %if.end.165, %if.end.152, %if.end.143
  %169 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr416 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %incdec.ptr416, i8*** %argv.addr, align 8
  %170 = load i32, i32* %argc.addr, align 4
  %dec417 = add nsw i32 %170, -1
  store i32 %dec417, i32* %argc.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %171 = load i32, i32* %argc.addr, align 4
  %tobool418 = icmp ne i32 %171, 0
  br i1 %tobool418, label %if.end.428, label %land.lhs.true.419

land.lhs.true.419:                                ; preds = %while.end
  %172 = load i32, i32* @lflag, align 4
  %tobool420 = icmp ne i32 %172, 0
  br i1 %tobool420, label %if.end.428, label %land.lhs.true.421

land.lhs.true.421:                                ; preds = %land.lhs.true.419
  %173 = load i32, i32* @aflag, align 4
  %tobool422 = icmp ne i32 %173, 0
  br i1 %tobool422, label %if.end.428, label %land.lhs.true.423

land.lhs.true.423:                                ; preds = %land.lhs.true.421
  %174 = load i32, i32* @eflag, align 4
  %tobool424 = icmp ne i32 %174, 0
  br i1 %tobool424, label %if.end.428, label %land.lhs.true.425

land.lhs.true.425:                                ; preds = %land.lhs.true.423
  %175 = load i32, i32* @dumpflag, align 4
  %tobool426 = icmp ne i32 %175, 0
  br i1 %tobool426, label %if.end.428, label %if.then.427

if.then.427:                                      ; preds = %land.lhs.true.425
  call void @usage()
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.427, %land.lhs.true.425, %land.lhs.true.423, %land.lhs.true.421, %land.lhs.true.419, %while.end
  store i32 0, i32* %argno, align 4
  br label %for.cond.429

for.cond.429:                                     ; preds = %for.inc, %if.end.428
  %176 = load i32, i32* %argno, align 4
  %177 = load i32, i32* %argc.addr, align 4
  %cmp430 = icmp slt i32 %176, %177
  br i1 %cmp430, label %for.body.432, label %for.end.440

for.body.432:                                     ; preds = %for.cond.429
  %178 = load i32, i32* %argno, align 4
  %idxprom = sext i32 %178 to i64
  %179 = load i8**, i8*** %argv.addr, align 8
  %arrayidx433 = getelementptr inbounds i8*, i8** %179, i64 %idxprom
  %180 = load i8*, i8** %arrayidx433, align 8
  %call434 = call i32 @access(i8* %180, i32 4) #6
  %cmp435 = icmp sge i32 %call434, 0
  br i1 %cmp435, label %if.then.437, label %if.end.438

if.then.437:                                      ; preds = %for.body.432
  br label %for.end.440

if.end.438:                                       ; preds = %for.body.432
  br label %for.inc

for.inc:                                          ; preds = %if.end.438
  %181 = load i32, i32* %argno, align 4
  %inc439 = add nsw i32 %181, 1
  store i32 %inc439, i32* %argno, align 4
  br label %for.cond.429

for.end.440:                                      ; preds = %if.then.437, %for.cond.429
  %182 = load i32, i32* %argno, align 4
  %183 = load i32, i32* %argc.addr, align 4
  %cmp441 = icmp sge i32 %182, %183
  br i1 %cmp441, label %land.lhs.true.443, label %if.end.455

land.lhs.true.443:                                ; preds = %for.end.440
  %184 = load i32, i32* @lflag, align 4
  %tobool444 = icmp ne i32 %184, 0
  br i1 %tobool444, label %if.end.455, label %land.lhs.true.445

land.lhs.true.445:                                ; preds = %land.lhs.true.443
  %185 = load i32, i32* @aflag, align 4
  %tobool446 = icmp ne i32 %185, 0
  br i1 %tobool446, label %if.end.455, label %land.lhs.true.447

land.lhs.true.447:                                ; preds = %land.lhs.true.445
  %186 = load i32, i32* @eflag, align 4
  %tobool448 = icmp ne i32 %186, 0
  br i1 %tobool448, label %if.end.455, label %land.lhs.true.449

land.lhs.true.449:                                ; preds = %land.lhs.true.447
  %187 = load i32, i32* @dumpflag, align 4
  %tobool450 = icmp ne i32 %187, 0
  br i1 %tobool450, label %if.end.455, label %if.then.451

if.then.451:                                      ; preds = %land.lhs.true.449
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %189 = load i32, i32* %argc.addr, align 4
  %cmp452 = icmp eq i32 %189, 1
  %cond = select i1 %cmp452, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.130, i32 0, i32 0)
  %call454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* %cond)
  call void @exit(i32 1) #8
  unreachable

if.end.455:                                       ; preds = %land.lhs.true.449, %land.lhs.true.447, %land.lhs.true.445, %land.lhs.true.443, %for.end.440
  %call456 = call i32 @linit()
  %cmp457 = icmp slt i32 %call456, 0
  br i1 %cmp457, label %if.then.459, label %if.end.460

if.then.459:                                      ; preds = %if.end.455
  call void @exit(i32 1) #8
  unreachable

if.end.460:                                       ; preds = %if.end.455
  %190 = load i8*, i8** %preftype, align 8
  %cmp461 = icmp ne i8* %190, null
  br i1 %cmp461, label %if.then.463, label %if.end.481

if.then.463:                                      ; preds = %if.end.460
  %191 = load i8*, i8** %preftype, align 8
  %192 = load i32, i32* @deftflag, align 4
  %cmp464 = icmp slt i32 %192, 0
  %cond466 = select i1 %cmp464, i32* @deftflag, i32* null
  %call467 = call i32 @findfiletype(i8* %191, i32 1, i32* %cond466)
  store i32 %call467, i32* @prefstringchar, align 4
  %193 = load i32, i32* @prefstringchar, align 4
  %cmp468 = icmp slt i32 %193, 0
  br i1 %cmp468, label %land.lhs.true.470, label %if.end.480

land.lhs.true.470:                                ; preds = %if.then.463
  %194 = load i8*, i8** %preftype, align 8
  %call471 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0)) #7
  %cmp472 = icmp ne i32 %call471, 0
  br i1 %cmp472, label %land.lhs.true.474, label %if.end.480

land.lhs.true.474:                                ; preds = %land.lhs.true.470
  %195 = load i8*, i8** %preftype, align 8
  %call475 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0)) #7
  %cmp476 = icmp ne i32 %call475, 0
  br i1 %cmp476, label %if.then.478, label %if.end.480

if.then.478:                                      ; preds = %land.lhs.true.474
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %197 = load i8*, i8** %preftype, align 8
  %call479 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.131, i32 0, i32 0), i8* %197)
  call void @exit(i32 1) #8
  unreachable

if.end.480:                                       ; preds = %land.lhs.true.474, %land.lhs.true.470, %if.then.463
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %if.end.460
  %198 = load i32, i32* @prefstringchar, align 4
  %cmp482 = icmp slt i32 %198, 0
  br i1 %cmp482, label %if.then.484, label %if.else.485

if.then.484:                                      ; preds = %if.end.481
  store i32 0, i32* @defdupchar, align 4
  br label %if.end.486

if.else.485:                                      ; preds = %if.end.481
  %199 = load i32, i32* @prefstringchar, align 4
  store i32 %199, i32* @defdupchar, align 4
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.485, %if.then.484
  %200 = load i32, i32* @compoundflag, align 4
  %cmp487 = icmp slt i32 %200, 0
  br i1 %cmp487, label %if.then.489, label %if.end.491

if.then.489:                                      ; preds = %if.end.486
  %201 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 17), align 1
  %conv490 = sext i8 %201 to i32
  store i32 %conv490, i32* @compoundflag, align 4
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.489, %if.end.486
  %202 = load i32, i32* @tryhardflag, align 4
  %cmp492 = icmp slt i32 %202, 0
  br i1 %cmp492, label %if.then.494, label %if.end.496

if.then.494:                                      ; preds = %if.end.491
  %203 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 18), align 1
  %conv495 = sext i8 %203 to i32
  store i32 %conv495, i32* @tryhardflag, align 4
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.494, %if.end.491
  %204 = load i8*, i8** %wchars, align 8
  call void @initckch(i8* %204)
  %205 = load i8*, i8** @LibDict, align 8
  %cmp497 = icmp eq i8* %205, null
  br i1 %cmp497, label %if.then.499, label %if.end.510

if.then.499:                                      ; preds = %if.end.496
  %call500 = call i8* @strcpy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)) #6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i8** @LibDict, align 8
  %call501 = call i8* @rindex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.libdictname, i32 0, i32 0), i32 46) #7
  store i8* %call501, i8** %p, align 8
  %206 = load i8*, i8** %p, align 8
  %cmp502 = icmp ne i8* %206, null
  br i1 %cmp502, label %land.lhs.true.504, label %if.end.509

land.lhs.true.504:                                ; preds = %if.then.499
  %207 = load i8*, i8** %p, align 8
  %call505 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp506 = icmp eq i32 %call505, 0
  br i1 %cmp506, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %land.lhs.true.504
  %208 = load i8*, i8** %p, align 8
  store i8 0, i8* %208, align 1
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.508, %land.lhs.true.504, %if.then.499
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.end.496
  %209 = load i32, i32* @nodictflag, align 4
  %tobool511 = icmp ne i32 %209, 0
  br i1 %tobool511, label %if.end.513, label %if.then.512

if.then.512:                                      ; preds = %if.end.510
  %210 = load i8*, i8** %cpd, align 8
  %211 = load i8*, i8** @LibDict, align 8
  call void @treeinit(i8* %210, i8* %211)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.512, %if.end.510
  %212 = load i32, i32* @aflag, align 4
  %tobool514 = icmp ne i32 %212, 0
  br i1 %tobool514, label %if.then.515, label %if.else.516

if.then.515:                                      ; preds = %if.end.513
  call void @askmode()
  call void @treeoutput()
  call void @exit(i32 0) #8
  unreachable

if.else.516:                                      ; preds = %if.end.513
  %213 = load i32, i32* @eflag, align 4
  %tobool517 = icmp ne i32 %213, 0
  br i1 %tobool517, label %if.then.518, label %if.else.519

if.then.518:                                      ; preds = %if.else.516
  %214 = load i32, i32* @eflag, align 4
  call void @expandmode(i32 %214)
  call void @exit(i32 0) #8
  unreachable

if.else.519:                                      ; preds = %if.else.516
  %215 = load i32, i32* @dumpflag, align 4
  %tobool520 = icmp ne i32 %215, 0
  br i1 %tobool520, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.else.519
  call void @dumpmode()
  call void @exit(i32 0) #8
  unreachable

if.end.522:                                       ; preds = %if.else.519
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @main.outbuf, i32 0, i32 0)) #6
  %217 = load i32, i32* @lflag, align 4
  %tobool525 = icmp ne i32 %217, 0
  br i1 %tobool525, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.end.524
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %218, %struct._IO_FILE** @infile, align 8
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %219, %struct._IO_FILE** @outfile, align 8
  call void @checkfile()
  call void @exit(i32 0) #8
  unreachable

if.end.527:                                       ; preds = %if.end.524
  call void @terminit()
  br label %while.cond.528

while.cond.528:                                   ; preds = %while.body.531, %if.end.527
  %220 = load i32, i32* %argc.addr, align 4
  %dec529 = add nsw i32 %220, -1
  store i32 %dec529, i32* %argc.addr, align 4
  %tobool530 = icmp ne i32 %220, 0
  br i1 %tobool530, label %while.body.531, label %while.end.533

while.body.531:                                   ; preds = %while.cond.528
  %221 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr532 = getelementptr inbounds i8*, i8** %221, i32 1
  store i8** %incdec.ptr532, i8*** %argv.addr, align 8
  %222 = load i8*, i8** %221, align 8
  call void @dofile(i8* %222)
  br label %while.cond.528

while.end.533:                                    ; preds = %while.cond.528
  call void @done(i32 0)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @rindex(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @Cmd, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.132, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @Cmd, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.133, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @Cmd, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.134, i32 0, i32 0), i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @Cmd, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.135, i32 0, i32 0), i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @Cmd, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.136, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @Cmd, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0), i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @Cmd, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i8* %13)
  call void @givehelp(i32 0)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @linit() #3

declare i32 @findfiletype(i8*, i32, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @initckch(i8* %wchars) #0 {
entry:
  %wchars.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %num = alloca [4 x i8], align 1
  store i8* %wchars, i8** %wchars.addr, align 8
  store i8 0, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %c, align 1
  %conv = zext i8 %0 to i32
  %1 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %add = add nsw i32 128, %1
  %conv1 = trunc i32 %add to i8
  %conv2 = zext i8 %conv1 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %c, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i8, i8* %c, align 1
  %idxprom4 = zext i8 %4 to i64
  %arrayidx5 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %tobool6 = icmp ne i8 %5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %6 = load i8, i8* %c, align 1
  %7 = load i32, i32* @Trynum, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom8
  store i8 %6, i8* %arrayidx9, align 1
  %8 = load i32, i32* @Trynum, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @Trynum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %9 = load i8, i8* %c, align 1
  %idxprom10 = zext i8 %9 to i64
  %arrayidx11 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %tobool12 = icmp ne i8 %10, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.else
  %11 = load i8, i8* %c, align 1
  %12 = load i32, i32* @Trynum, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom14
  store i8 %11, i8* %arrayidx15, align 1
  %13 = load i32, i32* @Trynum, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* @Trynum, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %14 = load i8, i8* %c, align 1
  %inc19 = add i8 %14, 1
  store i8 %inc19, i8* %c, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %wchars.addr, align 8
  %cmp20 = icmp ne i8* %15, null
  br i1 %cmp20, label %if.then.22, label %if.end.139

if.then.22:                                       ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.138, %if.then.22
  %16 = load i32, i32* @Trynum, align 4
  %cmp23 = icmp slt i32 %16, 128
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i8*, i8** %wchars.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv25 = sext i8 %18 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i8*, i8** %wchars.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv28 = sext i8 %21 to i32
  %cmp29 = icmp ne i32 %conv28, 110
  br i1 %cmp29, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %while.body
  %22 = load i8*, i8** %wchars.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp ne i32 %conv31, 92
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true
  %24 = load i8*, i8** %wchars.addr, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %c, align 1
  %26 = load i8*, i8** %wchars.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %wchars.addr, align 8
  br label %if.end.121

if.else.35:                                       ; preds = %land.lhs.true, %while.body
  %27 = load i8*, i8** %wchars.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr36, i8** %wchars.addr, align 8
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 0
  store i8 0, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 1
  store i8 0, i8* %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 2
  store i8 0, i8* %arrayidx39, align 1
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 3
  store i8 0, i8* %arrayidx40, align 1
  %28 = load i8*, i8** %wchars.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %29 to i32
  %idxprom43 = sext i32 %conv42 to i64
  %call = call i16** @__ctype_b_loc() #9
  %30 = load i16*, i16** %call, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %30, i64 %idxprom43
  %31 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %31 to i32
  %and = and i32 %conv45, 2048
  %tobool46 = icmp ne i32 %and, 0
  br i1 %tobool46, label %if.then.47, label %if.end.74

if.then.47:                                       ; preds = %if.else.35
  %32 = load i8*, i8** %wchars.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx48, align 1
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 0
  store i8 %33, i8* %arrayidx49, align 1
  %34 = load i8*, i8** %wchars.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %35 to i32
  %idxprom52 = sext i32 %conv51 to i64
  %call53 = call i16** @__ctype_b_loc() #9
  %36 = load i16*, i16** %call53, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %36, i64 %idxprom52
  %37 = load i16, i16* %arrayidx54, align 2
  %conv55 = zext i16 %37 to i32
  %and56 = and i32 %conv55, 2048
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.73

if.then.58:                                       ; preds = %if.then.47
  %38 = load i8*, i8** %wchars.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx59, align 1
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 1
  store i8 %39, i8* %arrayidx60, align 1
  %40 = load i8*, i8** %wchars.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %40, i64 2
  %41 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %41 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %call64 = call i16** @__ctype_b_loc() #9
  %42 = load i16*, i16** %call64, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %42, i64 %idxprom63
  %43 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %43 to i32
  %and67 = and i32 %conv66, 2048
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.then.58
  %44 = load i8*, i8** %wchars.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx70, align 1
  %arrayidx71 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 2
  store i8 %45, i8* %arrayidx71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.then.58
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.47
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else.35
  %46 = load i8*, i8** %wchars.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %46, i64 -1
  %47 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %47 to i32
  %cmp77 = icmp eq i32 %conv76, 110
  br i1 %cmp77, label %if.then.79, label %if.else.84

if.then.79:                                       ; preds = %if.end.74
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i32 0
  %call80 = call i64 @strlen(i8* %arraydecay) #7
  %48 = load i8*, i8** %wchars.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %call80
  store i8* %add.ptr, i8** %wchars.addr, align 8
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i32 0
  %call82 = call i32 @atoi(i8* %arraydecay81) #7
  %conv83 = trunc i32 %call82 to i8
  store i8 %conv83, i8* %c, align 1
  br label %if.end.120

if.else.84:                                       ; preds = %if.end.74
  %arraydecay85 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i32 0
  %call86 = call i64 @strlen(i8* %arraydecay85) #7
  %49 = load i8*, i8** %wchars.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %49, i64 %call86
  store i8* %add.ptr87, i8** %wchars.addr, align 8
  store i8 0, i8* %c, align 1
  %arrayidx88 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 0
  %50 = load i8, i8* %arrayidx88, align 1
  %tobool89 = icmp ne i8 %50, 0
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.else.84
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 0
  %51 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %51 to i32
  %sub = sub nsw i32 %conv92, 48
  %conv93 = trunc i32 %sub to i8
  store i8 %conv93, i8* %c, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %if.else.84
  %arrayidx95 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 1
  %52 = load i8, i8* %arrayidx95, align 1
  %tobool96 = icmp ne i8 %52, 0
  br i1 %tobool96, label %if.then.97, label %if.end.106

if.then.97:                                       ; preds = %if.end.94
  %53 = load i8, i8* %c, align 1
  %conv98 = zext i8 %53 to i32
  %shl = shl i32 %conv98, 3
  %conv99 = trunc i32 %shl to i8
  store i8 %conv99, i8* %c, align 1
  %arrayidx100 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 1
  %54 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %54 to i32
  %sub102 = sub nsw i32 %conv101, 48
  %55 = load i8, i8* %c, align 1
  %conv103 = zext i8 %55 to i32
  %add104 = add nsw i32 %conv103, %sub102
  %conv105 = trunc i32 %add104 to i8
  store i8 %conv105, i8* %c, align 1
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.97, %if.end.94
  %arrayidx107 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 2
  %56 = load i8, i8* %arrayidx107, align 1
  %tobool108 = icmp ne i8 %56, 0
  br i1 %tobool108, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %if.end.106
  %57 = load i8, i8* %c, align 1
  %conv110 = zext i8 %57 to i32
  %shl111 = shl i32 %conv110, 3
  %conv112 = trunc i32 %shl111 to i8
  store i8 %conv112, i8* %c, align 1
  %arrayidx113 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i64 2
  %58 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %58 to i32
  %sub115 = sub nsw i32 %conv114, 48
  %59 = load i8, i8* %c, align 1
  %conv116 = zext i8 %59 to i32
  %add117 = add nsw i32 %conv116, %sub115
  %conv118 = trunc i32 %add117 to i8
  store i8 %conv118, i8* %c, align 1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.109, %if.end.106
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.79
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.34
  %60 = load i8, i8* %c, align 1
  %conv122 = zext i8 %60 to i32
  %and123 = and i32 %conv122, 127
  %conv124 = trunc i32 %and123 to i8
  store i8 %conv124, i8* %c, align 1
  %61 = load i8, i8* %c, align 1
  %idxprom125 = zext i8 %61 to i64
  %arrayidx126 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom125
  %62 = load i8, i8* %arrayidx126, align 1
  %tobool127 = icmp ne i8 %62, 0
  br i1 %tobool127, label %if.end.138, label %if.then.128

if.then.128:                                      ; preds = %if.end.121
  %63 = load i8, i8* %c, align 1
  %idxprom129 = zext i8 %63 to i64
  %arrayidx130 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom129
  store i8 1, i8* %arrayidx130, align 1
  %64 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 11), align 4
  %inc131 = add nsw i32 %64, 1
  store i32 %inc131, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 11), align 4
  %conv132 = trunc i32 %64 to i16
  %65 = load i8, i8* %c, align 1
  %idxprom133 = zext i8 %65 to i64
  %arrayidx134 = getelementptr inbounds [228 x i16], [228 x i16]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %idxprom133
  store i16 %conv132, i16* %arrayidx134, align 2
  %66 = load i8, i8* %c, align 1
  %67 = load i32, i32* @Trynum, align 4
  %idxprom135 = sext i32 %67 to i64
  %arrayidx136 = getelementptr inbounds [228 x i8], [228 x i8]* @Try, i32 0, i64 %idxprom135
  store i8 %66, i8* %arrayidx136, align 1
  %68 = load i32, i32* @Trynum, align 4
  %inc137 = add nsw i32 %68, 1
  store i32 %inc137, i32* @Trynum, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.128, %if.end.121
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.139

if.end.139:                                       ; preds = %while.end, %for.end
  ret void
}

declare void @treeinit(i8*, i8*) #3

declare void @askmode() #3

declare void @treeoutput() #3

; Function Attrs: nounwind uwtable
define internal void @expandmode(i32 %option) #0 {
entry:
  %option.addr = alloca i32, align 4
  %buf = alloca [8192 x i8], align 16
  %explength = alloca i32, align 4
  %flagp = alloca i8*, align 8
  %ibuf = alloca [8192 x i8], align 16
  %mask = alloca [1 x i64], align 8
  %origbuf = alloca [8192 x i8], align 16
  %ratiobuf = alloca [20 x i8], align 16
  %rootlength = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %option, i32* %option.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.122, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i8* @xgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end.124

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #7
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %rootlength, align 4
  %1 = load i32, i32* %rootlength, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %rootlength, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %rootlength, align 4
  %idxprom6 = sext i32 %dec to i64
  %arrayidx7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %origbuf, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %arraydecay8, i8* %arraydecay9) #6
  %arraydecay11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %4 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv12 = sext i8 %4 to i32
  %call13 = call i8* @index(i8* %arraydecay11, i32 %conv12) #7
  store i8* %call13, i8** %flagp, align 8
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %5 = load i8*, i8** %flagp, align 8
  %arraydecay17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv18, i32* %rootlength, align 4
  %6 = load i8*, i8** %flagp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %flagp, align 8
  store i8 0, i8* %6, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end
  %7 = load i32, i32* %option.addr, align 4
  %cmp20 = icmp eq i32 %7, 2
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %8 = load i32, i32* %option.addr, align 4
  %cmp22 = icmp eq i32 %8, 3
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %9 = load i32, i32* %option.addr, align 4
  %cmp25 = icmp eq i32 %9, 4
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false, %if.end.19
  %arraydecay28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %origbuf, i32 0, i32 0
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), i8* %arraydecay28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %lor.lhs.false.24
  %10 = load i8*, i8** %flagp, align 8
  %cmp31 = icmp ne i8* %10, null
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end.30
  %11 = load i8*, i8** %flagp, align 8
  %arraydecay34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast35 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast36 = ptrtoint i8* %arraydecay34 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %cmp38 = icmp sgt i64 %sub.ptr.sub37, 100
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.33
  %arrayidx41 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 100
  store i8 0, i8* %arrayidx41, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.33
  br label %if.end.51

if.else:                                          ; preds = %if.end.30
  %arraydecay43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call44 = call i64 @strlen(i8* %arraydecay43) #7
  %conv45 = trunc i64 %call44 to i32
  %cmp46 = icmp sgt i32 %conv45, 99
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else
  %arrayidx49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 100
  store i8 0, i8* %arrayidx49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.42
  %arraydecay52 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call53 = call i32 @fputs(i8* %arraydecay52, %struct._IO_FILE* %12)
  %13 = load i8*, i8** %flagp, align 8
  %cmp54 = icmp ne i8* %13, null
  br i1 %cmp54, label %if.then.56, label %if.end.122

if.then.56:                                       ; preds = %if.end.51
  %arraydecay57 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i32 0
  %14 = bitcast i64* %arraydecay57 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 8, i32 1, i1 false)
  br label %while.cond.58

while.cond.58:                                    ; preds = %if.end.85, %if.then.56
  %15 = load i8*, i8** %flagp, align 8
  %16 = load i8, i8* %15, align 1
  %conv59 = sext i8 %16 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.58
  %17 = load i8*, i8** %flagp, align 8
  %18 = load i8, i8* %17, align 1
  %conv62 = sext i8 %18 to i32
  %cmp63 = icmp ne i32 %conv62, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.58
  %19 = phi i1 [ false, %while.cond.58 ], [ %cmp63, %land.rhs ]
  br i1 %19, label %while.body.65, label %while.end

while.body.65:                                    ; preds = %land.end
  %20 = load i8*, i8** %flagp, align 8
  %21 = load i8, i8* %20, align 1
  %conv66 = zext i8 %21 to i32
  %sub67 = sub nsw i32 %conv66, 65
  store i32 %sub67, i32* %temp, align 4
  %22 = load i32, i32* %temp, align 4
  %cmp68 = icmp sge i32 %22, 0
  br i1 %cmp68, label %land.lhs.true, label %if.else.74

land.lhs.true:                                    ; preds = %while.body.65
  %23 = load i32, i32* %temp, align 4
  %cmp70 = icmp sle i32 %23, 26
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %temp, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %arrayidx73 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %25 = load i64, i64* %arrayidx73, align 8
  %or = or i64 %25, %shl
  store i64 %or, i64* %arrayidx73, align 8
  br label %if.end.77

if.else.74:                                       ; preds = %land.lhs.true, %while.body.65
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** %flagp, align 8
  %28 = load i8, i8* %27, align 1
  %conv75 = zext i8 %28 to i32
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.186, i32 0, i32 0), i32 %conv75)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.72
  %29 = load i8*, i8** %flagp, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr78, i8** %flagp, align 8
  %30 = load i8*, i8** %flagp, align 8
  %31 = load i8, i8* %30, align 1
  %conv79 = sext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv80 = sext i8 %32 to i32
  %cmp81 = icmp eq i32 %conv79, %conv80
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.77
  %33 = load i8*, i8** %flagp, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr84, i8** %flagp, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.77
  br label %while.cond.58

while.end:                                        ; preds = %land.end
  %arraydecay86 = getelementptr inbounds [8192 x i8], [8192 x i8]* %ibuf, i32 0, i32 0
  %arraydecay87 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call88 = call i32 @strtoichar(i8* %arraydecay86, i8* %arraydecay87, i32 8192, i32 1)
  %tobool = icmp ne i32 %call88, 0
  br i1 %tobool, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %while.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.187, i32 0, i32 0), i8* %arraydecay90, i32 997, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.188, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %while.end
  %arraydecay93 = getelementptr inbounds [8192 x i8], [8192 x i8]* %origbuf, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [8192 x i8], [8192 x i8]* %ibuf, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i32 0
  %35 = load i32, i32* %option.addr, align 4
  %call96 = call i32 @expand_pre(i8* %arraydecay93, i8* %arraydecay94, i64* %arraydecay95, i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  store i32 %call96, i32* %explength, align 4
  %arraydecay97 = getelementptr inbounds [8192 x i8], [8192 x i8]* %origbuf, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [8192 x i8], [8192 x i8]* %ibuf, i32 0, i32 0
  %arraydecay99 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i32 0
  %36 = load i32, i32* %option.addr, align 4
  %call100 = call i32 @expand_suf(i8* %arraydecay97, i8* %arraydecay98, i64* %arraydecay99, i32 0, i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  %37 = load i32, i32* %explength, align 4
  %add = add nsw i32 %37, %call100
  store i32 %add, i32* %explength, align 4
  %38 = load i32, i32* %rootlength, align 4
  %39 = load i32, i32* %explength, align 4
  %add101 = add nsw i32 %39, %38
  store i32 %add101, i32* %explength, align 4
  %40 = load i32, i32* %option.addr, align 4
  %cmp102 = icmp eq i32 %40, 4
  br i1 %cmp102, label %if.then.104, label %if.end.121

if.then.104:                                      ; preds = %if.end.92
  %arraydecay105 = getelementptr inbounds [20 x i8], [20 x i8]* %ratiobuf, i32 0, i32 0
  %41 = load i32, i32* %explength, align 4
  %conv106 = sitofp i32 %41 to double
  %42 = load i32, i32* %rootlength, align 4
  %conv107 = sitofp i32 %42 to double
  %div = fdiv double %conv106, %conv107
  %call108 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i32 0, i32 0), double %div) #6
  %arraydecay109 = getelementptr inbounds [20 x i8], [20 x i8]* %ratiobuf, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call110 = call i32 @fputs(i8* %arraydecay109, %struct._IO_FILE* %43)
  %arraydecay111 = getelementptr inbounds [8192 x i8], [8192 x i8]* %origbuf, i32 0, i32 0
  %arraydecay112 = getelementptr inbounds [8192 x i8], [8192 x i8]* %ibuf, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i32 0
  %arraydecay114 = getelementptr inbounds [20 x i8], [20 x i8]* %ratiobuf, i32 0, i32 0
  %call115 = call i32 @expand_pre(i8* %arraydecay111, i8* %arraydecay112, i64* %arraydecay113, i32 3, i8* %arraydecay114)
  %arraydecay116 = getelementptr inbounds [8192 x i8], [8192 x i8]* %origbuf, i32 0, i32 0
  %arraydecay117 = getelementptr inbounds [8192 x i8], [8192 x i8]* %ibuf, i32 0, i32 0
  %arraydecay118 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i32 0
  %arraydecay119 = getelementptr inbounds [20 x i8], [20 x i8]* %ratiobuf, i32 0, i32 0
  %call120 = call i32 @expand_suf(i8* %arraydecay116, i8* %arraydecay117, i64* %arraydecay118, i32 0, i32 3, i8* %arraydecay119)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.104, %if.end.92
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.51
  %call123 = call i32 @putchar(i32 10)
  br label %while.cond

while.end.124:                                    ; preds = %while.cond
  ret void
}

declare void @dumpmode() #3

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #1

declare void @checkfile() #3

declare void @terminit() #3

; Function Attrs: nounwind uwtable
define internal void @dofile(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %cp = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  store i8* %0, i8** @currentfile, align 8
  %1 = load i32, i32* @deftflag, align 4
  store i32 %1, i32* @tflag, align 4
  %2 = load i32, i32* @tflag, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @rindex(i8* %3, i32 46) #7
  store i8* %call, i8** %cp, align 8
  %cmp1 = icmp ne i8* %call, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %4 = load i8*, i8** %cp, align 8
  %call2 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i32 0, i32 0)) #7
  %cmp3 = icmp eq i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* @tflag, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %6 = load i32, i32* @prefstringchar, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** %filename.addr, align 8
  %8 = load i32, i32* @deftflag, align 4
  %cmp6 = icmp slt i32 %8, 0
  %cond = select i1 %cmp6, i32* @tflag, i32* null
  %call7 = call i32 @findfiletype(i8* %7, i32 0, i32* %cond)
  store i32 %call7, i32* @defdupchar, align 4
  %9 = load i32, i32* @defdupchar, align 4
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  store i32 0, i32* @defdupchar, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %10 = load i8*, i8** %filename.addr, align 8
  %call12 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** @infile, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.11
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** %filename.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.178, i32 0, i32 0), i8* %12)
  %call16 = call i32 @sleep(i32 2)
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %13 = load i8*, i8** %filename.addr, align 8
  %call18 = call i32 @access(i8* %13, i32 2) #6
  %cmp19 = icmp slt i32 %call18, 0
  %conv = zext i1 %cmp19 to i32
  store i32 %conv, i32* @readonly, align 4
  %14 = load i32, i32* @readonly, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %filename.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.179, i32 0, i32 0), i8* %16)
  %call22 = call i32 @sleep(i32 2)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call24 = call i32 @fileno(%struct._IO_FILE* %17) #6
  %call25 = call i32 @fstat(i32 %call24, %struct.stat* %statbuf) #6
  %call26 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i32 0, i32 0)) #6
  %call27 = call i8* @mktemp(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0)) #6
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %18 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i64 0), align 1
  %conv30 = sext i8 %18 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %call34 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0))
  store %struct._IO_FILE* %call34, %struct._IO_FILE** @outfile, align 8
  %cmp35 = icmp eq %struct._IO_FILE* %call34, null
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false, %if.end.23
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i64 0), align 1
  %conv38 = sext i8 %20 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  %cond41 = select i1 %cmp39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0)
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.181, i32 0, i32 0), i8* %cond41)
  %call43 = call i32 @sleep(i32 2)
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false.33
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %21 = load i32, i32* %st_mode, align 4
  %call45 = call i32 @chmod(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0), i32 %21) #6
  store i32 0, i32* @quit, align 4
  store i32 0, i32* @changes, align 4
  call void @checkfile()
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call47 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load i32, i32* @cflag, align 4
  %tobool48 = icmp ne i32 %24, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.44
  call void @treeoutput()
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.44
  %25 = load i32, i32* @changes, align 4
  %tobool51 = icmp ne i32 %25, 0
  br i1 %tobool51, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.50
  %26 = load i32, i32* @readonly, align 4
  %tobool52 = icmp ne i32 %26, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true
  %27 = load i8*, i8** %filename.addr, align 8
  call void @update_file(i8* %27, %struct.stat* %statbuf)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true, %if.end.50
  %call55 = call i32 @unlink(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0)) #6
  br label %return

return:                                           ; preds = %if.end.54, %if.then.37, %if.then.14
  ret void
}

declare void @done(i32) #3

declare void @givehelp(i32) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @sleep(i32) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @mktemp(i8*) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @update_file(i8* %filename, %struct.stat* %statbuf) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %statbuf.addr = alloca %struct.stat*, align 8
  %bakfile = alloca [4096 x i8], align 16
  %c = alloca i32, align 4
  %pathtail = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.stat* %statbuf, %struct.stat** %statbuf.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @infile, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0))
  %call2 = call i32 @sleep(i32 2)
  br label %if.end.47

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %1 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), i32 4091, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #6
  %arraydecay4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %call5 = call i8* @rindex(i8* %arraydecay4, i32 47) #7
  store i8* %call5, i8** %pathtail, align 8
  %2 = load i8*, i8** %pathtail, align 8
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  store i8* %arraydecay8, i8** %pathtail, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %pathtail, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %pathtail, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %4 = load i8*, i8** %filename.addr, align 8
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %5 = load i8*, i8** %pathtail, align 8
  %arraydecay11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 255
  %call12 = call i32 @strncmp(i8* %4, i8* %arraydecay10, i64 %add) #7
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.9
  %arraydecay15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %call16 = call i32 @unlink(i8* %arraydecay15) #6
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.9
  %6 = load i8*, i8** %filename.addr, align 8
  %arraydecay18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %call19 = call i32 @link(i8* %6, i8* %arraydecay18) #6
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %7 = load i8*, i8** %filename.addr, align 8
  %call22 = call i32 @unlink(i8* %7) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.17
  %8 = load i8*, i8** %filename.addr, align 8
  %call24 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0))
  store %struct._IO_FILE* %call24, %struct._IO_FILE** @outfile, align 8
  %cmp25 = icmp eq %struct._IO_FILE* %call24, null
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %filename.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.181, i32 0, i32 0), i8* %10)
  %call28 = call i32 @sleep(i32 2)
  br label %if.end.47

if.end.29:                                        ; preds = %if.end.23
  %11 = load i8*, i8** %filename.addr, align 8
  %12 = load %struct.stat*, %struct.stat** %statbuf.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 3
  %13 = load i32, i32* %st_mode, align 4
  %call30 = call i32 @chmod(i8* %11, i32 %13) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call31 = call i32 @_IO_getc(%struct._IO_FILE* %14)
  store i32 %call31, i32* %c, align 4
  %cmp32 = icmp ne i32 %call31, -1
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %c, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call33 = call i32 @_IO_putc(i32 %15, %struct._IO_FILE* %16)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call35 = call i32 @fclose(%struct._IO_FILE* %18)
  %19 = load i32, i32* @xflag, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %while.end
  %20 = load i8*, i8** %filename.addr, align 8
  %arraydecay36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %21 = load i8*, i8** %pathtail, align 8
  %arraydecay37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %sub.ptr.lhs.cast38 = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %arraydecay37 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %add41 = add nsw i64 %sub.ptr.sub40, 255
  %call42 = call i32 @strncmp(i8* %20, i8* %arraydecay36, i64 %add41) #7
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true
  %arraydecay45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bakfile, i32 0, i32 0
  %call46 = call i32 @unlink(i8* %arraydecay45) #6
  br label %if.end.47

if.end.47:                                        ; preds = %if.then, %if.then.26, %if.then.44, %land.lhs.true, %while.end
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

declare i8* @xgets(i8*, i32, %struct._IO_FILE*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare i32 @strtoichar(i8*, i8*, i32, i32) #3

declare i32 @expand_pre(i8*, i8*, i64*, i32, i8*) #3

declare i32 @expand_suf(i8*, i8*, i64*, i32, i32, i8*) #3

declare i32 @putchar(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
