; ModuleID = './MultiSource.Benchmarks.MiBench/52.consumer-typeset.z01.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@MemCheck = global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"LOUTLIB\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lout.lib\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to initialize locale\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s/%s/%s/LC_MESSAGES/errors.%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@MsgCat = common global i8* null, align 8
@TotalWordCount = common global i32 0, align 4
@PS_BackEnd = external global %struct.back_end_rec*, align 8
@BackEnd = common global %struct.back_end_rec* null, align 8
@PlainCharWidth = external global i32, align 4
@PlainCharHeight = external global i32, align 4
@PlainFormFeed = external global i32, align 4
@InitializeAll = common global i32 0, align 4
@UseCollate = common global i32 0, align 4
@AllowCrossDb = common global i32 0, align 4
@InMemoryDbIndexes = common global i32 0, align 4
@Encapsulated = external global i32, align 4
@SafeExecution = common global i32 0, align 4
@Kern = common global i32 0, align 4
@AltErrorFormat = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@CommandOptions = common global %union.rec* null, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"usage: -o <filename>\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"-o: output file name %s ends with %s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"usage: -c <filename>\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"usage: -e <filename>\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"usage: -EPS\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"usage: -D <directoryname>\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"usage: -C <directoryname>\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"usage: -F <directoryname>\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"usage: -H <directoryname>\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"usage: -I <directoryname>\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"usage: -i <filename>\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"two -h options illegal\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"usage: -h <filename>\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c".lh\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"%-28s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Basser Lout written by:\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Jeffrey H. Kingston (jeff@cs.usyd.edu.au)\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Free source available from:\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"ftp://ftp.cs.usyd.edu.au/jeff/lout\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%-28s %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"This executable compiled:\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"00:00:00\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Jan 01 1970\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"%-28s %s%s%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"System include directory:\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"System database directory:\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"Database index files created afresh automatically:%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" yes\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"Safe execution (disabling system()) is default:%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"strcoll() used for sorting by default:%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"PDF compression on:%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"Debugging (-d, -dd, -ddd flags) available:%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"Basser Lout comes with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"This is free software, and you are welcome to\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"redistribute it under certain conditions.  For\0A\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"details on both points, consult the GNU General\0A\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"Public License (distributed with this software).\0A\00", align 1
@PDF_BackEnd = external global %struct.back_end_rec*, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@Plain_BackEnd = external global %struct.back_end_rec*, align 8
@.str.57 = private unnamed_addr constant [9 x i8] c"%f%c%f%c\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"usage: lout -%c<length><length>\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"lout -%c: units must be c, i, p, or m\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"%s - debug flags not implemented\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"-m%ld\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"checking memory location %ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"standard input specified twice\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"%[^{ ] { %[^}] }\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"error in command-line option %s\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.66 = private unnamed_addr constant [29 x i8] c"unknown command line flag %s\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"unable to initialize collation\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.68 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"cannot open output file %s\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"hyph\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@StartSym = common global %union.rec* null, align 8
@.str.73 = private unnamed_addr constant [7 x i8] c"\5CStart\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"@Galley\00", align 1
@GalleySym = common global %union.rec* null, align 8
@.str.75 = private unnamed_addr constant [13 x i8] c"@ForceGalley\00", align 1
@ForceGalleySym = common global %union.rec* null, align 8
@.str.76 = private unnamed_addr constant [8 x i8] c"@LInput\00", align 1
@InputSym = common global %union.rec* null, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"\5CPrint\00", align 1
@PrintSym = common global %union.rec* null, align 8
@.str.78 = private unnamed_addr constant [10 x i8] c"@FilterIn\00", align 1
@FilterInSym = common global %union.rec* null, align 8
@.str.79 = private unnamed_addr constant [11 x i8] c"@FilterOut\00", align 1
@FilterOutSym = common global %union.rec* null, align 8
@.str.80 = private unnamed_addr constant [11 x i8] c"@FilterErr\00", align 1
@FilterErrSym = common global %union.rec* null, align 8
@.str.81 = private unnamed_addr constant [9 x i8] c"@OptGall\00", align 1
@OptGallSym = common global %union.rec* null, align 8
@.str.82 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@VerbatimSym = common global %union.rec* null, align 8
@.str.83 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@RawVerbatimSym = common global %union.rec* null, align 8
@.str.84 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"@LEnv\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"@@E\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"@LClos\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"@LEO\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"@SysPrependGraphic\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"@SysDatabase\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"@Use\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"@NotRevealed\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"@BackEnd\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"@Underline\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"@SetColor\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"@Outline\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"@CurrLang\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"@CurrFamily\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"@CurrFace\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"@CurrYUnit\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"@CurrZUnit\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"@Common\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"@Rump\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"@Next\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"@Plus\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"@Minus\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"@Wide\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"@HShift\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"@VShift\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"@BeginHeaderComponent\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"@SetHeaderComponent\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"@ClearHeaderComponent\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"@OneRow\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"@HScale\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"@VScale\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"@HCover\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"@VCover\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"@KernShrink\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"@HContract\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"@VContract\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"@HLimited\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"@VLimited\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"@HExpand\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"@VExpand\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"@StartHVSpan\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"@StartHSpan\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"@StartVSpan\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"@HSpan\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"@VSpan\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"@PAdjust\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"@HAdjust\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"@VAdjust\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"@Background\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"@LinkSource\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"@LinkDest\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"@Null\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"@PageLabel\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"^//\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"^/\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"^||\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"^|\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"^&\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"total of all words printed: %d\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"usage:  lout options files\00", align 1
@.str.188 = private unnamed_addr constant [62 x i8] c"  -s              suppress access to cross reference database\00", align 1
@.str.189 = private unnamed_addr constant [55 x i8] c"  -EPS            EPS (Encapsulated PostScript) output\00", align 1
@.str.190 = private unnamed_addr constant [62 x i8] c"  -PDF or -Z      PDF (Adobe Portable Document Format) output\00", align 1
@.str.191 = private unnamed_addr constant [58 x i8] c"  -p              plain text output instead of PostScript\00", align 1
@.str.192 = private unnamed_addr constant [64 x i8] c"  -P              like -p but with form-feed char between pages\00", align 1
@.str.193 = private unnamed_addr constant [62 x i8] c"  -S              safe execution (disable calls to system(3))\00", align 1
@.str.194 = private unnamed_addr constant [62 x i8] c"  -U              unsafe execution (allow calls to system(3))\00", align 1
@.str.195 = private unnamed_addr constant [66 x i8] c"  -l              ASCII collation order when sorting indexes etc.\00", align 1
@.str.196 = private unnamed_addr constant [67 x i8] c"  -L              locale collation order when sorting indexes etc.\00", align 1
@.str.197 = private unnamed_addr constant [51 x i8] c"  -o file         output to file instead of stdout\00", align 1
@.str.198 = private unnamed_addr constant [59 x i8] c"  -e file         error messages to file instead of stderr\00", align 1
@.str.199 = private unnamed_addr constant [63 x i8] c"  -a              alternative error format:  file:line:col ...\00", align 1
@.str.200 = private unnamed_addr constant [56 x i8] c"  -w              print total number of words in output\00", align 1
@.str.201 = private unnamed_addr constant [61 x i8] c"  -i file         like @SysInclude { file }; not recommended\00", align 1
@.str.202 = private unnamed_addr constant [60 x i8] c"  -I directory    add directory to include file search path\00", align 1
@.str.203 = private unnamed_addr constant [56 x i8] c"  -C directory    add directory to LCM file search path\00", align 1
@.str.204 = private unnamed_addr constant [65 x i8] c"  -F directory    add directory to font metrics file search path\00", align 1
@.str.205 = private unnamed_addr constant [64 x i8] c"  -H directory    add directory to hyphenation file search path\00", align 1
@.str.206 = private unnamed_addr constant [61 x i8] c"  -D directory    add directory to database file search path\00", align 1
@.str.207 = private unnamed_addr constant [67 x i8] c"  --option{value} set option e.g. --'@InitialFont{Times Base 10p}'\00", align 1
@.str.208 = private unnamed_addr constant [63 x i8] c"  -c file         use file.li instead of lout.li for crossrefs\00", align 1
@.str.209 = private unnamed_addr constant [63 x i8] c"  -M              save memory (don't read in database indexes)\00", align 1
@.str.210 = private unnamed_addr constant [57 x i8] c"  -x              initializing run, not for ordinary use\00", align 1
@.str.211 = private unnamed_addr constant [62 x i8] c"  -u              print this usage message on stderr and exit\00", align 1
@.str.212 = private unnamed_addr constant [62 x i8] c"  -V              print version and configuration information\00", align 1
@.str.213 = private unnamed_addr constant [54 x i8] c"  -               a file name denoting standard input\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"pb\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %arg = alloca i8*, align 8
  %t = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %s = alloca %union.rec*, align 8
  %stdin_seen = alloca i32, align 4
  %source_file_count = alloca i32, align 4
  %cross_db = alloca i8*, align 8
  %outfile = alloca i8*, align 8
  %lib = alloca i8*, align 8
  %out_fp = alloca %struct._IO_FILE*, align 8
  %MemCheckLong = alloca i64, align 8
  %oname = alloca [512 x i8], align 16
  %oval = alloca [512 x i8], align 16
  %buff = alloca [512 x i8], align 16
  %p = alloca i8*, align 8
  %bp = alloca i32, align 4
  %z = alloca %union.rec*, align 8
  %seen_wordcount = alloca i32, align 4
  %catname = alloca [512 x i8], align 16
  %loc = alloca i8*, align 8
  %len1 = alloca float, align 4
  %len2 = alloca float, align 4
  %units1 = alloca i8, align 1
  %units2 = alloca i8, align 1
  %g = alloca %union.rec*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call, i8** %lib, align 8
  %0 = load i8*, i8** %lib, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %lib, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @setlocale(i32 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call1, i8** %loc, align 8
  %1 = load i8*, i8** %loc, align 8
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %2)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %loc, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %catname, i32 0, i32 0
  %3 = load i8*, i8** %lib, align 8
  %4 = load i8*, i8** %loc, align 8
  %5 = load i8*, i8** %loc, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %4, i8* %5) #5
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %catname, i32 0, i32 0
  %call8 = call i8* @catopen(i8* %arraydecay7, i32 0)
  store i8* %call8, i8** @MsgCat, align 8
  store i32 0, i32* @TotalWordCount, align 4
  store i32 0, i32* %seen_wordcount, align 4
  %6 = load %struct.back_end_rec*, %struct.back_end_rec** @PS_BackEnd, align 8
  store %struct.back_end_rec* %6, %struct.back_end_rec** @BackEnd, align 8
  store i32 144, i32* @PlainCharWidth, align 4
  store i32 240, i32* @PlainCharHeight, align 4
  store i32 0, i32* @PlainFormFeed, align 4
  store i32 0, i32* @InitializeAll, align 4
  store i32 1, i32* @UseCollate, align 4
  store i32 1, i32* @AllowCrossDb, align 4
  store i32 1, i32* @InMemoryDbIndexes, align 4
  store i32 0, i32* @Encapsulated, align 4
  store i32 0, i32* @SafeExecution, align 4
  store i32 1, i32* @Kern, align 4
  call void @MemInit()
  call void @InitSym()
  call void @LexInit()
  call void @InitFiles()
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call9 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %7)
  call void @AddToPath(i32 0, %union.rec* %call9)
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call10 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %8)
  call void @AddToPath(i32 3, %union.rec* %call10)
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %9)
  call void @AddToPath(i32 1, %union.rec* %call11)
  store i32 0, i32* %stdin_seen, align 4
  store i32 0, i32* @AltErrorFormat, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8** %cross_db, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %outfile, align 8
  store i32 0, i32* %source_file_count, align 4
  %10 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv12 = sext i32 %conv to i64
  %cmp13 = icmp uge i64 %conv12, 265
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.5
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
  br label %if.end.28

if.else:                                          ; preds = %if.end.5
  %12 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %13 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp17 = icmp eq %union.rec* %13, null
  br i1 %cmp17, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %14 = load i32, i32* @zz_size, align 4
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call20 = call %union.rec* @GetMemory(i32 %14, %struct.FILE_POS* %15)
  store %union.rec* %call20, %union.rec** @zz_hold, align 8
  br label %if.end.27

if.else.21:                                       ; preds = %if.else
  %16 = load i32, i32* @zz_size, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom22
  %17 = load %union.rec*, %union.rec** %arrayidx23, align 8
  store %union.rec* %17, %union.rec** @zz_hold, align 8
  store %union.rec* %17, %union.rec** @zz_hold, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %18 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred, align 8
  %20 = load i32, i32* @zz_size, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom25
  store %union.rec* %19, %union.rec** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.21, %if.then.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.15
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %21 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %23 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  store %union.rec* %22, %union.rec** %osucc, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %24 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %22, %union.rec** %opred36, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %25 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %22, %union.rec** %osucc40, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %26 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  store %union.rec* %22, %union.rec** %opred44, align 8
  store %union.rec* %22, %union.rec** @CommandOptions, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1114, %if.end.28
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %argc.addr, align 4
  %cmp45 = icmp slt i32 %27, %28
  br i1 %cmp45, label %for.body, label %for.end.1116

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %29 to i64
  %30 = load i8**, i8*** %argv.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %30, i64 %idxprom47
  %31 = load i8*, i8** %arrayidx48, align 8
  %32 = load i8, i8* %31, align 1
  %conv49 = sext i8 %32 to i32
  %cmp50 = icmp eq i32 %conv49, 45
  br i1 %cmp50, label %if.then.52, label %if.else.1090

if.then.52:                                       ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %34, i64 %idxprom53
  %35 = load i8*, i8** %arrayidx54, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %add.ptr, align 1
  %conv55 = sext i8 %36 to i32
  switch i32 %conv55, label %sw.default.1085 [
    i32 111, label %sw.bb
    i32 115, label %sw.bb.66
    i32 77, label %sw.bb.67
    i32 107, label %sw.bb.68
    i32 108, label %sw.bb.69
    i32 76, label %sw.bb.70
    i32 99, label %sw.bb.71
    i32 101, label %sw.bb.78
    i32 97, label %sw.bb.85
    i32 69, label %sw.bb.86
    i32 68, label %sw.bb.96
    i32 67, label %sw.bb.105
    i32 70, label %sw.bb.113
    i32 72, label %sw.bb.121
    i32 73, label %sw.bb.129
    i32 105, label %sw.bb.138
    i32 104, label %sw.bb.160
    i32 86, label %sw.bb.176
    i32 119, label %sw.bb.194
    i32 90, label %sw.bb.195
    i32 80, label %sw.bb.196
    i32 112, label %sw.bb.205
    i32 120, label %sw.bb.264
    i32 117, label %sw.bb.265
    i32 100, label %sw.bb.266
    i32 109, label %sw.bb.270
    i32 0, label %sw.bb.275
    i32 45, label %sw.bb.281
    i32 83, label %sw.bb.1083
    i32 85, label %sw.bb.1084
  ]

sw.bb:                                            ; preds = %if.then.52
  %37 = load i8**, i8*** %argv.addr, align 8
  %38 = load i32, i32* %argc.addr, align 4
  %call56 = call i8* @GetArg(i8** %37, i32 %38, i32* %i)
  store i8* %call56, i8** %outfile, align 8
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %sw.bb
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call60 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %39)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %sw.bb
  %40 = load i8*, i8** %outfile, align 8
  %call62 = call i32 @StringEndsWith(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %tobool = icmp ne i32 %call62, 0
  br i1 %tobool, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %42 = load i8*, i8** %outfile, align 8
  %call64 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct.FILE_POS* %41, i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  br label %sw.epilog.1089

sw.bb.66:                                         ; preds = %if.then.52
  store i32 0, i32* @AllowCrossDb, align 4
  br label %sw.epilog.1089

sw.bb.67:                                         ; preds = %if.then.52
  store i32 0, i32* @InMemoryDbIndexes, align 4
  br label %sw.epilog.1089

sw.bb.68:                                         ; preds = %if.then.52
  store i32 0, i32* @Kern, align 4
  br label %sw.epilog.1089

sw.bb.69:                                         ; preds = %if.then.52
  store i32 0, i32* @UseCollate, align 4
  br label %sw.epilog.1089

sw.bb.70:                                         ; preds = %if.then.52
  store i32 1, i32* @UseCollate, align 4
  br label %sw.epilog.1089

sw.bb.71:                                         ; preds = %if.then.52
  %43 = load i8**, i8*** %argv.addr, align 8
  %44 = load i32, i32* %argc.addr, align 4
  %call72 = call i8* @GetArg(i8** %43, i32 %44, i32* %i)
  store i8* %call72, i8** %cross_db, align 8
  %cmp73 = icmp eq i8* %call72, null
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %sw.bb.71
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call76 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %45)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %sw.bb.71
  br label %sw.epilog.1089

sw.bb.78:                                         ; preds = %if.then.52
  %46 = load i8**, i8*** %argv.addr, align 8
  %47 = load i32, i32* %argc.addr, align 4
  %call79 = call i8* @GetArg(i8** %46, i32 %47, i32* %i)
  store i8* %call79, i8** %arg, align 8
  %cmp80 = icmp eq i8* %call79, null
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %sw.bb.78
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %48)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %sw.bb.78
  %49 = load i8*, i8** %arg, align 8
  call void @ErrorInit(i8* %49)
  br label %sw.epilog.1089

sw.bb.85:                                         ; preds = %if.then.52
  store i32 1, i32* @AltErrorFormat, align 4
  br label %sw.epilog.1089

sw.bb.86:                                         ; preds = %if.then.52
  %50 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %50 to i64
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %51, i64 %idxprom87
  %52 = load i8*, i8** %arrayidx88, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %52, i64 1
  %call90 = call i32 @strcmp(i8* %add.ptr89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #6
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.end.95, label %if.then.93

if.then.93:                                       ; preds = %sw.bb.86
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call94 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %53)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %sw.bb.86
  store i32 1, i32* @Encapsulated, align 4
  br label %sw.epilog.1089

sw.bb.96:                                         ; preds = %if.then.52
  %54 = load i8**, i8*** %argv.addr, align 8
  %55 = load i32, i32* %argc.addr, align 4
  %call97 = call i8* @GetArg(i8** %54, i32 %55, i32* %i)
  store i8* %call97, i8** %arg, align 8
  %cmp98 = icmp eq i8* %call97, null
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %sw.bb.96
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call101 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct.FILE_POS* %56)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %sw.bb.96
  %57 = load i8*, i8** %arg, align 8
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call103 = call %union.rec* @MakeWord(i32 11, i8* %57, %struct.FILE_POS* %58)
  call void @AddToPath(i32 3, %union.rec* %call103)
  %59 = load i8*, i8** %arg, align 8
  %60 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call104 = call %union.rec* @MakeWord(i32 11, i8* %59, %struct.FILE_POS* %60)
  call void @AddToPath(i32 4, %union.rec* %call104)
  br label %sw.epilog.1089

sw.bb.105:                                        ; preds = %if.then.52
  %61 = load i8**, i8*** %argv.addr, align 8
  %62 = load i32, i32* %argc.addr, align 4
  %call106 = call i8* @GetArg(i8** %61, i32 %62, i32* %i)
  store i8* %call106, i8** %arg, align 8
  %cmp107 = icmp eq i8* %call106, null
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %sw.bb.105
  %63 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call110 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %63)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %sw.bb.105
  %64 = load i8*, i8** %arg, align 8
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call112 = call %union.rec* @MakeWord(i32 11, i8* %64, %struct.FILE_POS* %65)
  call void @AddToPath(i32 7, %union.rec* %call112)
  br label %sw.epilog.1089

sw.bb.113:                                        ; preds = %if.then.52
  %66 = load i8**, i8*** %argv.addr, align 8
  %67 = load i32, i32* %argc.addr, align 4
  %call114 = call i8* @GetArg(i8** %66, i32 %67, i32* %i)
  store i8* %call114, i8** %arg, align 8
  %cmp115 = icmp eq i8* %call114, null
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %sw.bb.113
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call118 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 1, %struct.FILE_POS* %68)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %sw.bb.113
  %69 = load i8*, i8** %arg, align 8
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call120 = call %union.rec* @MakeWord(i32 11, i8* %69, %struct.FILE_POS* %70)
  call void @AddToPath(i32 5, %union.rec* %call120)
  br label %sw.epilog.1089

sw.bb.121:                                        ; preds = %if.then.52
  %71 = load i8**, i8*** %argv.addr, align 8
  %72 = load i32, i32* %argc.addr, align 4
  %call122 = call i8* @GetArg(i8** %71, i32 %72, i32* %i)
  store i8* %call122, i8** %arg, align 8
  %cmp123 = icmp eq i8* %call122, null
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %sw.bb.121
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call126 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %73)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %sw.bb.121
  %74 = load i8*, i8** %arg, align 8
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call128 = call %union.rec* @MakeWord(i32 11, i8* %74, %struct.FILE_POS* %75)
  call void @AddToPath(i32 6, %union.rec* %call128)
  br label %sw.epilog.1089

sw.bb.129:                                        ; preds = %if.then.52
  %76 = load i8**, i8*** %argv.addr, align 8
  %77 = load i32, i32* %argc.addr, align 4
  %call130 = call i8* @GetArg(i8** %76, i32 %77, i32* %i)
  store i8* %call130, i8** %arg, align 8
  %cmp131 = icmp eq i8* %call130, null
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %sw.bb.129
  %78 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call134 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i32 1, %struct.FILE_POS* %78)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %sw.bb.129
  %79 = load i8*, i8** %arg, align 8
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call136 = call %union.rec* @MakeWord(i32 11, i8* %79, %struct.FILE_POS* %80)
  call void @AddToPath(i32 1, %union.rec* %call136)
  %81 = load i8*, i8** %arg, align 8
  %82 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call137 = call %union.rec* @MakeWord(i32 11, i8* %81, %struct.FILE_POS* %82)
  call void @AddToPath(i32 2, %union.rec* %call137)
  br label %sw.epilog.1089

sw.bb.138:                                        ; preds = %if.then.52
  %83 = load i8**, i8*** %argv.addr, align 8
  %84 = load i32, i32* %argc.addr, align 4
  %call139 = call i8* @GetArg(i8** %83, i32 %84, i32* %i)
  store i8* %call139, i8** %arg, align 8
  %cmp140 = icmp eq i8* %call139, null
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %sw.bb.138
  %85 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call143 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %85)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %sw.bb.138
  %86 = load i8*, i8** %arg, align 8
  %call145 = call i64 @strlen(i8* %86) #6
  %sub = sub i64 %call145, 3
  %conv146 = trunc i64 %sub to i32
  store i32 %conv146, i32* %len, align 4
  %87 = load i32, i32* %len, align 4
  %cmp147 = icmp sge i32 %87, 0
  br i1 %cmp147, label %land.lhs.true, label %if.end.158

land.lhs.true:                                    ; preds = %if.end.144
  %88 = load i32, i32* %len, align 4
  %idxprom149 = sext i32 %88 to i64
  %89 = load i8*, i8** %arg, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %89, i64 %idxprom149
  %call151 = call i32 @strcmp(i8* %arrayidx150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #6
  %cmp152 = icmp eq i32 %call151, 0
  br i1 %cmp152, label %if.then.154, label %if.end.158

if.then.154:                                      ; preds = %land.lhs.true
  %90 = load i32, i32* %len, align 4
  %idxprom155 = sext i32 %90 to i64
  %91 = load i8*, i8** %arg, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %91, i64 %idxprom155
  %call157 = call i8* @strcpy(i8* %arrayidx156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.154, %land.lhs.true, %if.end.144
  %92 = load i8*, i8** %arg, align 8
  %93 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call159 = call zeroext i16 @DefineFile(i8* %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %93, i32 0, i32 2)
  br label %sw.epilog.1089

sw.bb.160:                                        ; preds = %if.then.52
  %call161 = call zeroext i16 @FirstFile(i32 7)
  %conv162 = zext i16 %call161 to i32
  %cmp163 = icmp ne i32 %conv162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %sw.bb.160
  %94 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call166 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 1, %struct.FILE_POS* %94)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %sw.bb.160
  %95 = load i8**, i8*** %argv.addr, align 8
  %96 = load i32, i32* %argc.addr, align 4
  %call168 = call i8* @GetArg(i8** %95, i32 %96, i32* %i)
  store i8* %call168, i8** %arg, align 8
  %cmp169 = icmp eq i8* %call168, null
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.167
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call172 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 1, %struct.FILE_POS* %97)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.167
  %98 = load i8*, i8** %arg, align 8
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call174 = call zeroext i16 @DefineFile(i8* %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %99, i32 7, i32 1)
  %100 = load i8*, i8** %arg, align 8
  %101 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call175 = call zeroext i16 @DefineFile(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct.FILE_POS* %101, i32 8, i32 1)
  br label %sw.epilog.1089

sw.bb.176:                                        ; preds = %if.then.52
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0))
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = load i8*, i8** %lib, align 8
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = load i8*, i8** %lib, align 8
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0))
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i32 0, i32 0))
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0))
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0))
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i32 0, i32 0))
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.55, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

sw.bb.194:                                        ; preds = %if.then.52
  store i32 1, i32* %seen_wordcount, align 4
  br label %sw.epilog.1089

sw.bb.195:                                        ; preds = %if.then.52
  %121 = load %struct.back_end_rec*, %struct.back_end_rec** @PDF_BackEnd, align 8
  store %struct.back_end_rec* %121, %struct.back_end_rec** @BackEnd, align 8
  br label %sw.epilog.1089

sw.bb.196:                                        ; preds = %if.then.52
  %122 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %122 to i64
  %123 = load i8**, i8*** %argv.addr, align 8
  %arrayidx198 = getelementptr inbounds i8*, i8** %123, i64 %idxprom197
  %124 = load i8*, i8** %arrayidx198, align 8
  %add.ptr199 = getelementptr inbounds i8, i8* %124, i64 1
  %call200 = call i32 @strcmp(i8* %add.ptr199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0)) #6
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %sw.bb.196
  %125 = load %struct.back_end_rec*, %struct.back_end_rec** @PDF_BackEnd, align 8
  store %struct.back_end_rec* %125, %struct.back_end_rec** @BackEnd, align 8
  br label %sw.epilog.1089

if.end.204:                                       ; preds = %sw.bb.196
  store i32 1, i32* @PlainFormFeed, align 4
  br label %sw.bb.205

sw.bb.205:                                        ; preds = %if.then.52, %if.end.204
  %126 = load %struct.back_end_rec*, %struct.back_end_rec** @Plain_BackEnd, align 8
  store %struct.back_end_rec* %126, %struct.back_end_rec** @BackEnd, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %127 to i64
  %128 = load i8**, i8*** %argv.addr, align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %128, i64 %idxprom206
  %129 = load i8*, i8** %arrayidx207, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %129, i64 2
  %130 = load i8, i8* %add.ptr208, align 1
  %conv209 = sext i8 %130 to i32
  %cmp210 = icmp ne i32 %conv209, 0
  br i1 %cmp210, label %if.then.212, label %if.end.263

if.then.212:                                      ; preds = %sw.bb.205
  %131 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %131 to i64
  %132 = load i8**, i8*** %argv.addr, align 8
  %arrayidx214 = getelementptr inbounds i8*, i8** %132, i64 %idxprom213
  %133 = load i8*, i8** %arrayidx214, align 8
  %add.ptr215 = getelementptr inbounds i8, i8* %133, i64 2
  %call216 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), float* %len1, i8* %units1, float* %len2, i8* %units2) #5
  %cmp217 = icmp ne i32 %call216, 4
  br i1 %cmp217, label %if.then.219, label %if.end.225

if.then.219:                                      ; preds = %if.then.212
  %134 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %135 to i64
  %136 = load i8**, i8*** %argv.addr, align 8
  %arrayidx221 = getelementptr inbounds i8*, i8** %136, i64 %idxprom220
  %137 = load i8*, i8** %arrayidx221, align 8
  %add.ptr222 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8, i8* %add.ptr222, align 1
  %conv223 = sext i8 %138 to i32
  %call224 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i32 0, i32 0), i32 1, %struct.FILE_POS* %134, i32 %conv223)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.219, %if.then.212
  %139 = load i8, i8* %units1, align 1
  %conv226 = zext i8 %139 to i32
  switch i32 %conv226, label %sw.default [
    i32 99, label %sw.bb.227
    i32 105, label %sw.bb.229
    i32 112, label %sw.bb.232
    i32 109, label %sw.bb.235
  ]

sw.bb.227:                                        ; preds = %if.end.225
  %140 = load float, float* %len1, align 4
  %mul = fmul float %140, 5.670000e+02
  %conv228 = fptosi float %mul to i32
  store i32 %conv228, i32* @PlainCharWidth, align 4
  br label %sw.epilog

sw.bb.229:                                        ; preds = %if.end.225
  %141 = load float, float* %len1, align 4
  %mul230 = fmul float %141, 1.440000e+03
  %conv231 = fptosi float %mul230 to i32
  store i32 %conv231, i32* @PlainCharWidth, align 4
  br label %sw.epilog

sw.bb.232:                                        ; preds = %if.end.225
  %142 = load float, float* %len1, align 4
  %mul233 = fmul float %142, 2.000000e+01
  %conv234 = fptosi float %mul233 to i32
  store i32 %conv234, i32* @PlainCharWidth, align 4
  br label %sw.epilog

sw.bb.235:                                        ; preds = %if.end.225
  %143 = load float, float* %len1, align 4
  %mul236 = fmul float %143, 1.200000e+02
  %conv237 = fptosi float %mul236 to i32
  store i32 %conv237, i32* @PlainCharWidth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.225
  %144 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %145 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %145 to i64
  %146 = load i8**, i8*** %argv.addr, align 8
  %arrayidx239 = getelementptr inbounds i8*, i8** %146, i64 %idxprom238
  %147 = load i8*, i8** %arrayidx239, align 8
  %add.ptr240 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %add.ptr240, align 1
  %conv241 = sext i8 %148 to i32
  %call242 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0), i32 1, %struct.FILE_POS* %144, i32 %conv241)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.235, %sw.bb.232, %sw.bb.229, %sw.bb.227
  %149 = load i8, i8* %units2, align 1
  %conv243 = zext i8 %149 to i32
  switch i32 %conv243, label %sw.default.256 [
    i32 99, label %sw.bb.244
    i32 105, label %sw.bb.247
    i32 112, label %sw.bb.250
    i32 109, label %sw.bb.253
  ]

sw.bb.244:                                        ; preds = %sw.epilog
  %150 = load float, float* %len2, align 4
  %mul245 = fmul float %150, 5.670000e+02
  %conv246 = fptosi float %mul245 to i32
  store i32 %conv246, i32* @PlainCharHeight, align 4
  br label %sw.epilog.262

sw.bb.247:                                        ; preds = %sw.epilog
  %151 = load float, float* %len2, align 4
  %mul248 = fmul float %151, 1.440000e+03
  %conv249 = fptosi float %mul248 to i32
  store i32 %conv249, i32* @PlainCharHeight, align 4
  br label %sw.epilog.262

sw.bb.250:                                        ; preds = %sw.epilog
  %152 = load float, float* %len2, align 4
  %mul251 = fmul float %152, 2.000000e+01
  %conv252 = fptosi float %mul251 to i32
  store i32 %conv252, i32* @PlainCharHeight, align 4
  br label %sw.epilog.262

sw.bb.253:                                        ; preds = %sw.epilog
  %153 = load float, float* %len2, align 4
  %mul254 = fmul float %153, 1.200000e+02
  %conv255 = fptosi float %mul254 to i32
  store i32 %conv255, i32* @PlainCharHeight, align 4
  br label %sw.epilog.262

sw.default.256:                                   ; preds = %sw.epilog
  %154 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %155 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %155 to i64
  %156 = load i8**, i8*** %argv.addr, align 8
  %arrayidx258 = getelementptr inbounds i8*, i8** %156, i64 %idxprom257
  %157 = load i8*, i8** %arrayidx258, align 8
  %add.ptr259 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %add.ptr259, align 1
  %conv260 = sext i8 %158 to i32
  %call261 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0), i32 1, %struct.FILE_POS* %154, i32 %conv260)
  br label %sw.epilog.262

sw.epilog.262:                                    ; preds = %sw.default.256, %sw.bb.253, %sw.bb.250, %sw.bb.247, %sw.bb.244
  br label %if.end.263

if.end.263:                                       ; preds = %sw.epilog.262, %sw.bb.205
  br label %sw.epilog.1089

sw.bb.264:                                        ; preds = %if.then.52
  store i32 1, i32* @InitializeAll, align 4
  store i32 0, i32* @AllowCrossDb, align 4
  br label %sw.epilog.1089

sw.bb.265:                                        ; preds = %if.then.52
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @PrintUsage(%struct._IO_FILE* %159)
  call void @exit(i32 0) #7
  unreachable

sw.bb.266:                                        ; preds = %if.then.52
  %160 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %161 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %161 to i64
  %162 = load i8**, i8*** %argv.addr, align 8
  %arrayidx268 = getelementptr inbounds i8*, i8** %162, i64 %idxprom267
  %163 = load i8*, i8** %arrayidx268, align 8
  %call269 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i32 0, i32 0), i32 1, %struct.FILE_POS* %160, i8* %163)
  br label %sw.epilog.1089

sw.bb.270:                                        ; preds = %if.then.52
  %164 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %164 to i64
  %165 = load i8**, i8*** %argv.addr, align 8
  %arrayidx272 = getelementptr inbounds i8*, i8** %165, i64 %idxprom271
  %166 = load i8*, i8** %arrayidx272, align 8
  %call273 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i64* %MemCheckLong) #5
  %167 = load i64, i64* %MemCheckLong, align 8
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** @MemCheck, align 8
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %170 = load i8*, i8** @MemCheck, align 8
  %171 = ptrtoint i8* %170 to i64
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i32 0, i32 0), i64 %171)
  br label %sw.epilog.1089

sw.bb.275:                                        ; preds = %if.then.52
  %172 = load i32, i32* %stdin_seen, align 4
  %tobool276 = icmp ne i32 %172, 0
  br i1 %tobool276, label %if.then.277, label %if.end.279

if.then.277:                                      ; preds = %sw.bb.275
  %173 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call278 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i32 1, %struct.FILE_POS* %173)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.277, %sw.bb.275
  store i32 1, i32* %stdin_seen, align 4
  %174 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call280 = call zeroext i16 @DefineFile(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %174, i32 0, i32 0)
  br label %sw.epilog.1089

sw.bb.281:                                        ; preds = %if.then.52
  %175 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %175 to i64
  %176 = load i8**, i8*** %argv.addr, align 8
  %arrayidx283 = getelementptr inbounds i8*, i8** %176, i64 %idxprom282
  %177 = load i8*, i8** %arrayidx283, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %177, i64 2
  %arraydecay285 = getelementptr inbounds [512 x i8], [512 x i8]* %oname, i32 0, i32 0
  %arraydecay286 = getelementptr inbounds [512 x i8], [512 x i8]* %oval, i32 0, i32 0
  %call287 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* %arraydecay285, i8* %arraydecay286) #5
  %cmp288 = icmp ne i32 %call287, 2
  br i1 %cmp288, label %if.then.299, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.281
  %arraydecay290 = getelementptr inbounds [512 x i8], [512 x i8]* %oname, i32 0, i32 0
  %call291 = call i64 @strlen(i8* %arraydecay290) #6
  %cmp292 = icmp eq i64 %call291, 0
  br i1 %cmp292, label %if.then.299, label %lor.lhs.false.294

lor.lhs.false.294:                                ; preds = %lor.lhs.false
  %arraydecay295 = getelementptr inbounds [512 x i8], [512 x i8]* %oval, i32 0, i32 0
  %call296 = call i64 @strlen(i8* %arraydecay295) #6
  %cmp297 = icmp eq i64 %call296, 0
  br i1 %cmp297, label %if.then.299, label %if.end.304

if.then.299:                                      ; preds = %lor.lhs.false.294, %lor.lhs.false, %sw.bb.281
  %178 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %179 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %179 to i64
  %180 = load i8**, i8*** %argv.addr, align 8
  %arrayidx301 = getelementptr inbounds i8*, i8** %180, i64 %idxprom300
  %181 = load i8*, i8** %arrayidx301, align 8
  %add.ptr302 = getelementptr inbounds i8, i8* %181, i64 2
  %call303 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0), i32 1, %struct.FILE_POS* %178, i8* %add.ptr302)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.299, %lor.lhs.false.294
  %arraydecay305 = getelementptr inbounds [512 x i8], [512 x i8]* %oname, i32 0, i32 0
  %182 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call306 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay305, %struct.FILE_POS* %182)
  store %union.rec* %call306, %union.rec** %y, align 8
  %183 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv307 = zext i8 %183 to i32
  store i32 %conv307, i32* @zz_size, align 4
  %conv308 = sext i32 %conv307 to i64
  %cmp309 = icmp uge i64 %conv308, 265
  br i1 %cmp309, label %if.then.311, label %if.else.313

if.then.311:                                      ; preds = %if.end.304
  %184 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call312 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %184)
  br label %if.end.330

if.else.313:                                      ; preds = %if.end.304
  %185 = load i32, i32* @zz_size, align 4
  %idxprom314 = sext i32 %185 to i64
  %arrayidx315 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom314
  %186 = load %union.rec*, %union.rec** %arrayidx315, align 8
  %cmp316 = icmp eq %union.rec* %186, null
  br i1 %cmp316, label %if.then.318, label %if.else.320

if.then.318:                                      ; preds = %if.else.313
  %187 = load i32, i32* @zz_size, align 4
  %188 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call319 = call %union.rec* @GetMemory(i32 %187, %struct.FILE_POS* %188)
  store %union.rec* %call319, %union.rec** @zz_hold, align 8
  br label %if.end.329

if.else.320:                                      ; preds = %if.else.313
  %189 = load i32, i32* @zz_size, align 4
  %idxprom321 = sext i32 %189 to i64
  %arrayidx322 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom321
  %190 = load %union.rec*, %union.rec** %arrayidx322, align 8
  store %union.rec* %190, %union.rec** @zz_hold, align 8
  store %union.rec* %190, %union.rec** @zz_hold, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1323 = bitcast %union.rec* %191 to %struct.word_type*
  %olist324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist324, i32 0, i64 0
  %opred326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx325, i32 0, i32 0
  %192 = load %union.rec*, %union.rec** %opred326, align 8
  %193 = load i32, i32* @zz_size, align 4
  %idxprom327 = sext i32 %193 to i64
  %arrayidx328 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom327
  store %union.rec* %192, %union.rec** %arrayidx328, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.320, %if.then.318
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.311
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1331 = bitcast %union.rec* %194 to %struct.word_type*
  %ou1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 1
  %os11333 = bitcast %union.FIRST_UNION* %ou1332 to %struct.anon*
  %otype334 = getelementptr inbounds %struct.anon, %struct.anon* %os11333, i32 0, i32 0
  store i8 0, i8* %otype334, align 1
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1335 = bitcast %union.rec* %196 to %struct.word_type*
  %olist336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist336, i32 0, i64 1
  %osucc338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx337, i32 0, i32 1
  store %union.rec* %195, %union.rec** %osucc338, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1339 = bitcast %union.rec* %197 to %struct.word_type*
  %olist340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist340, i32 0, i64 1
  %opred342 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx341, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred342, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1343 = bitcast %union.rec* %198 to %struct.word_type*
  %olist344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist344, i32 0, i64 0
  %osucc346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx345, i32 0, i32 1
  store %union.rec* %195, %union.rec** %osucc346, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1347 = bitcast %union.rec* %199 to %struct.word_type*
  %olist348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist348, i32 0, i64 0
  %opred350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx349, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred350, align 8
  store %union.rec* %195, %union.rec** @xx_link, align 8
  %200 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %200, %union.rec** @zz_res, align 8
  %201 = load %union.rec*, %union.rec** @CommandOptions, align 8
  store %union.rec* %201, %union.rec** @zz_hold, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp351 = icmp eq %union.rec* %202, null
  br i1 %cmp351, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.330
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.385

cond.false:                                       ; preds = %if.end.330
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp353 = icmp eq %union.rec* %204, null
  br i1 %cmp353, label %cond.true.355, label %cond.false.356

cond.true.355:                                    ; preds = %cond.false
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.356:                                   ; preds = %cond.false
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1357 = bitcast %union.rec* %206 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 0
  %opred360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 0
  %207 = load %union.rec*, %union.rec** %opred360, align 8
  store %union.rec* %207, %union.rec** @zz_tmp, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1361 = bitcast %union.rec* %208 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 0
  %opred364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %opred364, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1365 = bitcast %union.rec* %210 to %struct.word_type*
  %olist366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1365, i32 0, i32 0
  %arrayidx367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist366, i32 0, i64 0
  %opred368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx367, i32 0, i32 0
  store %union.rec* %209, %union.rec** %opred368, align 8
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1369 = bitcast %union.rec* %212 to %struct.word_type*
  %olist370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist370, i32 0, i64 0
  %opred372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx371, i32 0, i32 0
  %213 = load %union.rec*, %union.rec** %opred372, align 8
  %os1373 = bitcast %union.rec* %213 to %struct.word_type*
  %olist374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1373, i32 0, i32 0
  %arrayidx375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist374, i32 0, i64 0
  %osucc376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx375, i32 0, i32 1
  store %union.rec* %211, %union.rec** %osucc376, align 8
  %214 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %215 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1377 = bitcast %union.rec* %215 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 0
  %opred380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 0
  store %union.rec* %214, %union.rec** %opred380, align 8
  %216 = load %union.rec*, %union.rec** @zz_res, align 8
  %217 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1381 = bitcast %union.rec* %217 to %struct.word_type*
  %olist382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist382, i32 0, i64 0
  %osucc384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx383, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc384, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.356, %cond.true.355
  %cond = phi %union.rec* [ %205, %cond.true.355 ], [ %216, %cond.false.356 ]
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.end, %cond.true
  %cond386 = phi %union.rec* [ %203, %cond.true ], [ %cond, %cond.end ]
  %218 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %218, %union.rec** @zz_res, align 8
  %219 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp387 = icmp eq %union.rec* %220, null
  br i1 %cmp387, label %cond.true.389, label %cond.false.390

cond.true.389:                                    ; preds = %cond.end.385
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.425

cond.false.390:                                   ; preds = %cond.end.385
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp391 = icmp eq %union.rec* %222, null
  br i1 %cmp391, label %cond.true.393, label %cond.false.394

cond.true.393:                                    ; preds = %cond.false.390
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.423

cond.false.394:                                   ; preds = %cond.false.390
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1395 = bitcast %union.rec* %224 to %struct.word_type*
  %olist396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1395, i32 0, i32 0
  %arrayidx397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist396, i32 0, i64 1
  %opred398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx397, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %opred398, align 8
  store %union.rec* %225, %union.rec** @zz_tmp, align 8
  %226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1399 = bitcast %union.rec* %226 to %struct.word_type*
  %olist400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 0
  %arrayidx401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist400, i32 0, i64 1
  %opred402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx401, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %opred402, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1403 = bitcast %union.rec* %228 to %struct.word_type*
  %olist404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist404, i32 0, i64 1
  %opred406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx405, i32 0, i32 0
  store %union.rec* %227, %union.rec** %opred406, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1407 = bitcast %union.rec* %230 to %struct.word_type*
  %olist408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist408, i32 0, i64 1
  %opred410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx409, i32 0, i32 0
  %231 = load %union.rec*, %union.rec** %opred410, align 8
  %os1411 = bitcast %union.rec* %231 to %struct.word_type*
  %olist412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 0
  %arrayidx413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist412, i32 0, i64 1
  %osucc414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx413, i32 0, i32 1
  store %union.rec* %229, %union.rec** %osucc414, align 8
  %232 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %233 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1415 = bitcast %union.rec* %233 to %struct.word_type*
  %olist416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist416, i32 0, i64 1
  %opred418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx417, i32 0, i32 0
  store %union.rec* %232, %union.rec** %opred418, align 8
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  %235 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1419 = bitcast %union.rec* %235 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 1
  %osucc422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 1
  store %union.rec* %234, %union.rec** %osucc422, align 8
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.394, %cond.true.393
  %cond424 = phi %union.rec* [ %223, %cond.true.393 ], [ %234, %cond.false.394 ]
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.end.423, %cond.true.389
  %cond426 = phi %union.rec* [ %221, %cond.true.389 ], [ %cond424, %cond.end.423 ]
  %236 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv427 = zext i8 %236 to i32
  store i32 %conv427, i32* @zz_size, align 4
  %conv428 = sext i32 %conv427 to i64
  %cmp429 = icmp uge i64 %conv428, 265
  br i1 %cmp429, label %if.then.431, label %if.else.433

if.then.431:                                      ; preds = %cond.end.425
  %237 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call432 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %237)
  br label %if.end.450

if.else.433:                                      ; preds = %cond.end.425
  %238 = load i32, i32* @zz_size, align 4
  %idxprom434 = sext i32 %238 to i64
  %arrayidx435 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom434
  %239 = load %union.rec*, %union.rec** %arrayidx435, align 8
  %cmp436 = icmp eq %union.rec* %239, null
  br i1 %cmp436, label %if.then.438, label %if.else.440

if.then.438:                                      ; preds = %if.else.433
  %240 = load i32, i32* @zz_size, align 4
  %241 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call439 = call %union.rec* @GetMemory(i32 %240, %struct.FILE_POS* %241)
  store %union.rec* %call439, %union.rec** @zz_hold, align 8
  br label %if.end.449

if.else.440:                                      ; preds = %if.else.433
  %242 = load i32, i32* @zz_size, align 4
  %idxprom441 = sext i32 %242 to i64
  %arrayidx442 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom441
  %243 = load %union.rec*, %union.rec** %arrayidx442, align 8
  store %union.rec* %243, %union.rec** @zz_hold, align 8
  store %union.rec* %243, %union.rec** @zz_hold, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1443 = bitcast %union.rec* %244 to %struct.word_type*
  %olist444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1443, i32 0, i32 0
  %arrayidx445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist444, i32 0, i64 0
  %opred446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx445, i32 0, i32 0
  %245 = load %union.rec*, %union.rec** %opred446, align 8
  %246 = load i32, i32* @zz_size, align 4
  %idxprom447 = sext i32 %246 to i64
  %arrayidx448 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom447
  store %union.rec* %245, %union.rec** %arrayidx448, align 8
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.440, %if.then.438
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.431
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1451 = bitcast %union.rec* %247 to %struct.word_type*
  %ou1452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1451, i32 0, i32 1
  %os11453 = bitcast %union.FIRST_UNION* %ou1452 to %struct.anon*
  %otype454 = getelementptr inbounds %struct.anon, %struct.anon* %os11453, i32 0, i32 0
  store i8 17, i8* %otype454, align 1
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1455 = bitcast %union.rec* %249 to %struct.word_type*
  %olist456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 0
  %arrayidx457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist456, i32 0, i64 1
  %osucc458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx457, i32 0, i32 1
  store %union.rec* %248, %union.rec** %osucc458, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1459 = bitcast %union.rec* %250 to %struct.word_type*
  %olist460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist460, i32 0, i64 1
  %opred462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx461, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred462, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1463 = bitcast %union.rec* %251 to %struct.word_type*
  %olist464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1463, i32 0, i32 0
  %arrayidx465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist464, i32 0, i64 0
  %osucc466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx465, i32 0, i32 1
  store %union.rec* %248, %union.rec** %osucc466, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1467 = bitcast %union.rec* %252 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 0
  %opred470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred470, align 8
  store %union.rec* %248, %union.rec** %y, align 8
  %253 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv471 = zext i8 %253 to i32
  store i32 %conv471, i32* @zz_size, align 4
  %conv472 = sext i32 %conv471 to i64
  %cmp473 = icmp uge i64 %conv472, 265
  br i1 %cmp473, label %if.then.475, label %if.else.477

if.then.475:                                      ; preds = %if.end.450
  %254 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call476 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %254)
  br label %if.end.494

if.else.477:                                      ; preds = %if.end.450
  %255 = load i32, i32* @zz_size, align 4
  %idxprom478 = sext i32 %255 to i64
  %arrayidx479 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom478
  %256 = load %union.rec*, %union.rec** %arrayidx479, align 8
  %cmp480 = icmp eq %union.rec* %256, null
  br i1 %cmp480, label %if.then.482, label %if.else.484

if.then.482:                                      ; preds = %if.else.477
  %257 = load i32, i32* @zz_size, align 4
  %258 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call483 = call %union.rec* @GetMemory(i32 %257, %struct.FILE_POS* %258)
  store %union.rec* %call483, %union.rec** @zz_hold, align 8
  br label %if.end.493

if.else.484:                                      ; preds = %if.else.477
  %259 = load i32, i32* @zz_size, align 4
  %idxprom485 = sext i32 %259 to i64
  %arrayidx486 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom485
  %260 = load %union.rec*, %union.rec** %arrayidx486, align 8
  store %union.rec* %260, %union.rec** @zz_hold, align 8
  store %union.rec* %260, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1487 = bitcast %union.rec* %261 to %struct.word_type*
  %olist488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist488, i32 0, i64 0
  %opred490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx489, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %opred490, align 8
  %263 = load i32, i32* @zz_size, align 4
  %idxprom491 = sext i32 %263 to i64
  %arrayidx492 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom491
  store %union.rec* %262, %union.rec** %arrayidx492, align 8
  br label %if.end.493

if.end.493:                                       ; preds = %if.else.484, %if.then.482
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.then.475
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1495 = bitcast %union.rec* %264 to %struct.word_type*
  %ou1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 1
  %os11497 = bitcast %union.FIRST_UNION* %ou1496 to %struct.anon*
  %otype498 = getelementptr inbounds %struct.anon, %struct.anon* %os11497, i32 0, i32 0
  store i8 0, i8* %otype498, align 1
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1499 = bitcast %union.rec* %266 to %struct.word_type*
  %olist500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist500, i32 0, i64 1
  %osucc502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx501, i32 0, i32 1
  store %union.rec* %265, %union.rec** %osucc502, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1503 = bitcast %union.rec* %267 to %struct.word_type*
  %olist504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist504, i32 0, i64 1
  %opred506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx505, i32 0, i32 0
  store %union.rec* %265, %union.rec** %opred506, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1507 = bitcast %union.rec* %268 to %struct.word_type*
  %olist508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist508, i32 0, i64 0
  %osucc510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx509, i32 0, i32 1
  store %union.rec* %265, %union.rec** %osucc510, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1511 = bitcast %union.rec* %269 to %struct.word_type*
  %olist512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist512, i32 0, i64 0
  %opred514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx513, i32 0, i32 0
  store %union.rec* %265, %union.rec** %opred514, align 8
  store %union.rec* %265, %union.rec** @xx_link, align 8
  %270 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %270, %union.rec** @zz_res, align 8
  %271 = load %union.rec*, %union.rec** @CommandOptions, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp515 = icmp eq %union.rec* %272, null
  br i1 %cmp515, label %cond.true.517, label %cond.false.518

cond.true.517:                                    ; preds = %if.end.494
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.553

cond.false.518:                                   ; preds = %if.end.494
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp519 = icmp eq %union.rec* %274, null
  br i1 %cmp519, label %cond.true.521, label %cond.false.522

cond.true.521:                                    ; preds = %cond.false.518
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.551

cond.false.522:                                   ; preds = %cond.false.518
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1523 = bitcast %union.rec* %276 to %struct.word_type*
  %olist524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1523, i32 0, i32 0
  %arrayidx525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist524, i32 0, i64 0
  %opred526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx525, i32 0, i32 0
  %277 = load %union.rec*, %union.rec** %opred526, align 8
  store %union.rec* %277, %union.rec** @zz_tmp, align 8
  %278 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1527 = bitcast %union.rec* %278 to %struct.word_type*
  %olist528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 0
  %arrayidx529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist528, i32 0, i64 0
  %opred530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx529, i32 0, i32 0
  %279 = load %union.rec*, %union.rec** %opred530, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1531 = bitcast %union.rec* %280 to %struct.word_type*
  %olist532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1531, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist532, i32 0, i64 0
  %opred534 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx533, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred534, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %282 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1535 = bitcast %union.rec* %282 to %struct.word_type*
  %olist536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1535, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist536, i32 0, i64 0
  %opred538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx537, i32 0, i32 0
  %283 = load %union.rec*, %union.rec** %opred538, align 8
  %os1539 = bitcast %union.rec* %283 to %struct.word_type*
  %olist540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist540, i32 0, i64 0
  %osucc542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx541, i32 0, i32 1
  store %union.rec* %281, %union.rec** %osucc542, align 8
  %284 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1543 = bitcast %union.rec* %285 to %struct.word_type*
  %olist544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1543, i32 0, i32 0
  %arrayidx545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist544, i32 0, i64 0
  %opred546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx545, i32 0, i32 0
  store %union.rec* %284, %union.rec** %opred546, align 8
  %286 = load %union.rec*, %union.rec** @zz_res, align 8
  %287 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1547 = bitcast %union.rec* %287 to %struct.word_type*
  %olist548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1547, i32 0, i32 0
  %arrayidx549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist548, i32 0, i64 0
  %osucc550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx549, i32 0, i32 1
  store %union.rec* %286, %union.rec** %osucc550, align 8
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.false.522, %cond.true.521
  %cond552 = phi %union.rec* [ %275, %cond.true.521 ], [ %286, %cond.false.522 ]
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.end.551, %cond.true.517
  %cond554 = phi %union.rec* [ %273, %cond.true.517 ], [ %cond552, %cond.end.551 ]
  %288 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %288, %union.rec** @zz_res, align 8
  %289 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %289, %union.rec** @zz_hold, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp555 = icmp eq %union.rec* %290, null
  br i1 %cmp555, label %cond.true.557, label %cond.false.558

cond.true.557:                                    ; preds = %cond.end.553
  %291 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.593

cond.false.558:                                   ; preds = %cond.end.553
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp559 = icmp eq %union.rec* %292, null
  br i1 %cmp559, label %cond.true.561, label %cond.false.562

cond.true.561:                                    ; preds = %cond.false.558
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.591

cond.false.562:                                   ; preds = %cond.false.558
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1563 = bitcast %union.rec* %294 to %struct.word_type*
  %olist564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1563, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist564, i32 0, i64 1
  %opred566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx565, i32 0, i32 0
  %295 = load %union.rec*, %union.rec** %opred566, align 8
  store %union.rec* %295, %union.rec** @zz_tmp, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1567 = bitcast %union.rec* %296 to %struct.word_type*
  %olist568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1567, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist568, i32 0, i64 1
  %opred570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx569, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred570, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1571 = bitcast %union.rec* %298 to %struct.word_type*
  %olist572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist572, i32 0, i64 1
  %opred574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx573, i32 0, i32 0
  store %union.rec* %297, %union.rec** %opred574, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1575 = bitcast %union.rec* %300 to %struct.word_type*
  %olist576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist576, i32 0, i64 1
  %opred578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx577, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %opred578, align 8
  %os1579 = bitcast %union.rec* %301 to %struct.word_type*
  %olist580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1579, i32 0, i32 0
  %arrayidx581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist580, i32 0, i64 1
  %osucc582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx581, i32 0, i32 1
  store %union.rec* %299, %union.rec** %osucc582, align 8
  %302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1583 = bitcast %union.rec* %303 to %struct.word_type*
  %olist584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 0
  %arrayidx585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist584, i32 0, i64 1
  %opred586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx585, i32 0, i32 0
  store %union.rec* %302, %union.rec** %opred586, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %305 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1587 = bitcast %union.rec* %305 to %struct.word_type*
  %olist588 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1587, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist588, i32 0, i64 1
  %osucc590 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx589, i32 0, i32 1
  store %union.rec* %304, %union.rec** %osucc590, align 8
  br label %cond.end.591

cond.end.591:                                     ; preds = %cond.false.562, %cond.true.561
  %cond592 = phi %union.rec* [ %293, %cond.true.561 ], [ %304, %cond.false.562 ]
  br label %cond.end.593

cond.end.593:                                     ; preds = %cond.end.591, %cond.true.557
  %cond594 = phi %union.rec* [ %291, %cond.true.557 ], [ %cond592, %cond.end.591 ]
  store i32 0, i32* %bp, align 4
  %arraydecay595 = getelementptr inbounds [512 x i8], [512 x i8]* %oval, i32 0, i32 0
  store i8* %arraydecay595, i8** %p, align 8
  br label %for.cond.596

for.cond.596:                                     ; preds = %for.inc, %cond.end.593
  %306 = load i8*, i8** %p, align 8
  %307 = load i8, i8* %306, align 1
  %conv597 = zext i8 %307 to i32
  %cmp598 = icmp ne i32 %conv597, 0
  br i1 %cmp598, label %for.body.600, label %for.end

for.body.600:                                     ; preds = %for.cond.596
  %308 = load i8*, i8** %p, align 8
  %309 = load i8, i8* %308, align 1
  %conv601 = zext i8 %309 to i32
  switch i32 %conv601, label %sw.default.933 [
    i32 32, label %sw.bb.602
    i32 9, label %sw.bb.602
    i32 10, label %sw.bb.602
    i32 123, label %sw.bb.602
    i32 125, label %sw.bb.602
  ]

sw.bb.602:                                        ; preds = %for.body.600, %for.body.600, %for.body.600, %for.body.600, %for.body.600
  %310 = load i32, i32* %bp, align 4
  %cmp603 = icmp sgt i32 %310, 0
  br i1 %cmp603, label %if.then.605, label %if.end.932

if.then.605:                                      ; preds = %sw.bb.602
  %311 = load i32, i32* %bp, align 4
  %inc = add nsw i32 %311, 1
  store i32 %inc, i32* %bp, align 4
  %idxprom606 = sext i32 %311 to i64
  %arrayidx607 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom606
  store i8 0, i8* %arrayidx607, align 1
  %312 = load %union.rec*, %union.rec** %y, align 8
  %os1608 = bitcast %union.rec* %312 to %struct.word_type*
  %olist609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1608, i32 0, i32 0
  %arrayidx610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist609, i32 0, i64 0
  %osucc611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx610, i32 0, i32 1
  %313 = load %union.rec*, %union.rec** %osucc611, align 8
  %314 = load %union.rec*, %union.rec** %y, align 8
  %cmp612 = icmp ne %union.rec* %313, %314
  br i1 %cmp612, label %if.then.614, label %if.end.805

if.then.614:                                      ; preds = %if.then.605
  %315 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv615 = zext i8 %315 to i32
  store i32 %conv615, i32* @zz_size, align 4
  %conv616 = sext i32 %conv615 to i64
  %cmp617 = icmp uge i64 %conv616, 265
  br i1 %cmp617, label %if.then.619, label %if.else.621

if.then.619:                                      ; preds = %if.then.614
  %316 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call620 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %316)
  br label %if.end.638

if.else.621:                                      ; preds = %if.then.614
  %317 = load i32, i32* @zz_size, align 4
  %idxprom622 = sext i32 %317 to i64
  %arrayidx623 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom622
  %318 = load %union.rec*, %union.rec** %arrayidx623, align 8
  %cmp624 = icmp eq %union.rec* %318, null
  br i1 %cmp624, label %if.then.626, label %if.else.628

if.then.626:                                      ; preds = %if.else.621
  %319 = load i32, i32* @zz_size, align 4
  %320 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call627 = call %union.rec* @GetMemory(i32 %319, %struct.FILE_POS* %320)
  store %union.rec* %call627, %union.rec** @zz_hold, align 8
  br label %if.end.637

if.else.628:                                      ; preds = %if.else.621
  %321 = load i32, i32* @zz_size, align 4
  %idxprom629 = sext i32 %321 to i64
  %arrayidx630 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom629
  %322 = load %union.rec*, %union.rec** %arrayidx630, align 8
  store %union.rec* %322, %union.rec** @zz_hold, align 8
  store %union.rec* %322, %union.rec** @zz_hold, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1631 = bitcast %union.rec* %323 to %struct.word_type*
  %olist632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1631, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist632, i32 0, i64 0
  %opred634 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx633, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred634, align 8
  %325 = load i32, i32* @zz_size, align 4
  %idxprom635 = sext i32 %325 to i64
  %arrayidx636 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom635
  store %union.rec* %324, %union.rec** %arrayidx636, align 8
  br label %if.end.637

if.end.637:                                       ; preds = %if.else.628, %if.then.626
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %if.then.619
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1639 = bitcast %union.rec* %326 to %struct.word_type*
  %ou1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 1
  %os11641 = bitcast %union.FIRST_UNION* %ou1640 to %struct.anon*
  %otype642 = getelementptr inbounds %struct.anon, %struct.anon* %os11641, i32 0, i32 0
  store i8 1, i8* %otype642, align 1
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1643 = bitcast %union.rec* %328 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 1
  %osucc646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 1
  store %union.rec* %327, %union.rec** %osucc646, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1647 = bitcast %union.rec* %329 to %struct.word_type*
  %olist648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1647, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist648, i32 0, i64 1
  %opred650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx649, i32 0, i32 0
  store %union.rec* %327, %union.rec** %opred650, align 8
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1651 = bitcast %union.rec* %330 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 0
  %osucc654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 1
  store %union.rec* %327, %union.rec** %osucc654, align 8
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1655 = bitcast %union.rec* %331 to %struct.word_type*
  %olist656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist656, i32 0, i64 0
  %opred658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx657, i32 0, i32 0
  store %union.rec* %327, %union.rec** %opred658, align 8
  store %union.rec* %327, %union.rec** %g, align 8
  %332 = load %union.rec*, %union.rec** %g, align 8
  %os1659 = bitcast %union.rec* %332 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  store i8 1, i8* %ohspace, align 1
  %333 = load %union.rec*, %union.rec** %g, align 8
  %os1660 = bitcast %union.rec* %333 to %struct.word_type*
  %ou2661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 2
  %os21662 = bitcast %union.SECOND_UNION* %ou2661 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21662, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %334 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %334, i32 0, i32 2
  %335 = load i16, i16* %ofile_num, align 2
  %336 = load %union.rec*, %union.rec** %g, align 8
  %os1663 = bitcast %union.rec* %336 to %struct.word_type*
  %ou1664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1664 to %struct.FILE_POS*
  %ofile_num665 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %335, i16* %ofile_num665, align 2
  %337 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %337, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %338 = load %union.rec*, %union.rec** %g, align 8
  %os1666 = bitcast %union.rec* %338 to %struct.word_type*
  %ou1667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1666, i32 0, i32 1
  %ofpos668 = bitcast %union.FIRST_UNION* %ou1667 to %struct.FILE_POS*
  %oline_num669 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos668, i32 0, i32 3
  %bf.load670 = load i32, i32* %oline_num669, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear671 = and i32 %bf.load670, -1048576
  %bf.set = or i32 %bf.clear671, %bf.value
  store i32 %bf.set, i32* %oline_num669, align 4
  %339 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %339, i32 0, i32 3
  %bf.load672 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load672, 20
  %340 = load %union.rec*, %union.rec** %g, align 8
  %os1673 = bitcast %union.rec* %340 to %struct.word_type*
  %ou1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 1
  %ofpos675 = bitcast %union.FIRST_UNION* %ou1674 to %struct.FILE_POS*
  %ocol_num676 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos675, i32 0, i32 3
  %bf.load677 = load i32, i32* %ocol_num676, align 4
  %bf.value678 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value678, 20
  %bf.clear679 = and i32 %bf.load677, 1048575
  %bf.set680 = or i32 %bf.clear679, %bf.shl
  store i32 %bf.set680, i32* %ocol_num676, align 4
  %341 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv681 = zext i8 %341 to i32
  store i32 %conv681, i32* @zz_size, align 4
  %conv682 = sext i32 %conv681 to i64
  %cmp683 = icmp uge i64 %conv682, 265
  br i1 %cmp683, label %if.then.685, label %if.else.687

if.then.685:                                      ; preds = %if.end.638
  %342 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call686 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %342)
  br label %if.end.704

if.else.687:                                      ; preds = %if.end.638
  %343 = load i32, i32* @zz_size, align 4
  %idxprom688 = sext i32 %343 to i64
  %arrayidx689 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom688
  %344 = load %union.rec*, %union.rec** %arrayidx689, align 8
  %cmp690 = icmp eq %union.rec* %344, null
  br i1 %cmp690, label %if.then.692, label %if.else.694

if.then.692:                                      ; preds = %if.else.687
  %345 = load i32, i32* @zz_size, align 4
  %346 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call693 = call %union.rec* @GetMemory(i32 %345, %struct.FILE_POS* %346)
  store %union.rec* %call693, %union.rec** @zz_hold, align 8
  br label %if.end.703

if.else.694:                                      ; preds = %if.else.687
  %347 = load i32, i32* @zz_size, align 4
  %idxprom695 = sext i32 %347 to i64
  %arrayidx696 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom695
  %348 = load %union.rec*, %union.rec** %arrayidx696, align 8
  store %union.rec* %348, %union.rec** @zz_hold, align 8
  store %union.rec* %348, %union.rec** @zz_hold, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1697 = bitcast %union.rec* %349 to %struct.word_type*
  %olist698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist698, i32 0, i64 0
  %opred700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx699, i32 0, i32 0
  %350 = load %union.rec*, %union.rec** %opred700, align 8
  %351 = load i32, i32* @zz_size, align 4
  %idxprom701 = sext i32 %351 to i64
  %arrayidx702 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom701
  store %union.rec* %350, %union.rec** %arrayidx702, align 8
  br label %if.end.703

if.end.703:                                       ; preds = %if.else.694, %if.then.692
  br label %if.end.704

if.end.704:                                       ; preds = %if.end.703, %if.then.685
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1705 = bitcast %union.rec* %352 to %struct.word_type*
  %ou1706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 1
  %os11707 = bitcast %union.FIRST_UNION* %ou1706 to %struct.anon*
  %otype708 = getelementptr inbounds %struct.anon, %struct.anon* %os11707, i32 0, i32 0
  store i8 0, i8* %otype708, align 1
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1709 = bitcast %union.rec* %354 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 1
  %osucc712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 1
  store %union.rec* %353, %union.rec** %osucc712, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1713 = bitcast %union.rec* %355 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 1
  %opred716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 0
  store %union.rec* %353, %union.rec** %opred716, align 8
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1717 = bitcast %union.rec* %356 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 0
  %osucc720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 1
  store %union.rec* %353, %union.rec** %osucc720, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1721 = bitcast %union.rec* %357 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 0
  %opred724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 0
  store %union.rec* %353, %union.rec** %opred724, align 8
  store %union.rec* %353, %union.rec** @xx_link, align 8
  %358 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %358, %union.rec** @zz_res, align 8
  %359 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %359, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp725 = icmp eq %union.rec* %360, null
  br i1 %cmp725, label %cond.true.727, label %cond.false.728

cond.true.727:                                    ; preds = %if.end.704
  %361 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.763

cond.false.728:                                   ; preds = %if.end.704
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp729 = icmp eq %union.rec* %362, null
  br i1 %cmp729, label %cond.true.731, label %cond.false.732

cond.true.731:                                    ; preds = %cond.false.728
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.761

cond.false.732:                                   ; preds = %cond.false.728
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %364 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 0
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  %365 = load %union.rec*, %union.rec** %opred736, align 8
  store %union.rec* %365, %union.rec** @zz_tmp, align 8
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1737 = bitcast %union.rec* %366 to %struct.word_type*
  %olist738 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1737, i32 0, i32 0
  %arrayidx739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist738, i32 0, i64 0
  %opred740 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx739, i32 0, i32 0
  %367 = load %union.rec*, %union.rec** %opred740, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1741 = bitcast %union.rec* %368 to %struct.word_type*
  %olist742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1741, i32 0, i32 0
  %arrayidx743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist742, i32 0, i64 0
  %opred744 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx743, i32 0, i32 0
  store %union.rec* %367, %union.rec** %opred744, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1745 = bitcast %union.rec* %370 to %struct.word_type*
  %olist746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1745, i32 0, i32 0
  %arrayidx747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist746, i32 0, i64 0
  %opred748 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx747, i32 0, i32 0
  %371 = load %union.rec*, %union.rec** %opred748, align 8
  %os1749 = bitcast %union.rec* %371 to %struct.word_type*
  %olist750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1749, i32 0, i32 0
  %arrayidx751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist750, i32 0, i64 0
  %osucc752 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx751, i32 0, i32 1
  store %union.rec* %369, %union.rec** %osucc752, align 8
  %372 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %373 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1753 = bitcast %union.rec* %373 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 0
  %opred756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  store %union.rec* %372, %union.rec** %opred756, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %375 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1757 = bitcast %union.rec* %375 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %osucc760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 1
  store %union.rec* %374, %union.rec** %osucc760, align 8
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.732, %cond.true.731
  %cond762 = phi %union.rec* [ %363, %cond.true.731 ], [ %374, %cond.false.732 ]
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.end.761, %cond.true.727
  %cond764 = phi %union.rec* [ %361, %cond.true.727 ], [ %cond762, %cond.end.761 ]
  %376 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %376, %union.rec** @zz_res, align 8
  %377 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %377, %union.rec** @zz_hold, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp765 = icmp eq %union.rec* %378, null
  br i1 %cmp765, label %cond.true.767, label %cond.false.768

cond.true.767:                                    ; preds = %cond.end.763
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.803

cond.false.768:                                   ; preds = %cond.end.763
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp769 = icmp eq %union.rec* %380, null
  br i1 %cmp769, label %cond.true.771, label %cond.false.772

cond.true.771:                                    ; preds = %cond.false.768
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.801

cond.false.772:                                   ; preds = %cond.false.768
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1773 = bitcast %union.rec* %382 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 1
  %opred776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 0
  %383 = load %union.rec*, %union.rec** %opred776, align 8
  store %union.rec* %383, %union.rec** @zz_tmp, align 8
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1777 = bitcast %union.rec* %384 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 1
  %opred780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 0
  %385 = load %union.rec*, %union.rec** %opred780, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1781 = bitcast %union.rec* %386 to %struct.word_type*
  %olist782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 0
  %arrayidx783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist782, i32 0, i64 1
  %opred784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx783, i32 0, i32 0
  store %union.rec* %385, %union.rec** %opred784, align 8
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %388 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1785 = bitcast %union.rec* %388 to %struct.word_type*
  %olist786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 0
  %arrayidx787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist786, i32 0, i64 1
  %opred788 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx787, i32 0, i32 0
  %389 = load %union.rec*, %union.rec** %opred788, align 8
  %os1789 = bitcast %union.rec* %389 to %struct.word_type*
  %olist790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 0
  %arrayidx791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist790, i32 0, i64 1
  %osucc792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx791, i32 0, i32 1
  store %union.rec* %387, %union.rec** %osucc792, align 8
  %390 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %391 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1793 = bitcast %union.rec* %391 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 1
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  store %union.rec* %390, %union.rec** %opred796, align 8
  %392 = load %union.rec*, %union.rec** @zz_res, align 8
  %393 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1797 = bitcast %union.rec* %393 to %struct.word_type*
  %olist798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist798, i32 0, i64 1
  %osucc800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx799, i32 0, i32 1
  store %union.rec* %392, %union.rec** %osucc800, align 8
  br label %cond.end.801

cond.end.801:                                     ; preds = %cond.false.772, %cond.true.771
  %cond802 = phi %union.rec* [ %381, %cond.true.771 ], [ %392, %cond.false.772 ]
  br label %cond.end.803

cond.end.803:                                     ; preds = %cond.end.801, %cond.true.767
  %cond804 = phi %union.rec* [ %379, %cond.true.767 ], [ %cond802, %cond.end.801 ]
  br label %if.end.805

if.end.805:                                       ; preds = %cond.end.803, %if.then.605
  %arraydecay806 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %394 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call807 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay806, %struct.FILE_POS* %394)
  store %union.rec* %call807, %union.rec** %z, align 8
  %395 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv808 = zext i8 %395 to i32
  store i32 %conv808, i32* @zz_size, align 4
  %conv809 = sext i32 %conv808 to i64
  %cmp810 = icmp uge i64 %conv809, 265
  br i1 %cmp810, label %if.then.812, label %if.else.814

if.then.812:                                      ; preds = %if.end.805
  %396 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call813 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %396)
  br label %if.end.831

if.else.814:                                      ; preds = %if.end.805
  %397 = load i32, i32* @zz_size, align 4
  %idxprom815 = sext i32 %397 to i64
  %arrayidx816 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom815
  %398 = load %union.rec*, %union.rec** %arrayidx816, align 8
  %cmp817 = icmp eq %union.rec* %398, null
  br i1 %cmp817, label %if.then.819, label %if.else.821

if.then.819:                                      ; preds = %if.else.814
  %399 = load i32, i32* @zz_size, align 4
  %400 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call820 = call %union.rec* @GetMemory(i32 %399, %struct.FILE_POS* %400)
  store %union.rec* %call820, %union.rec** @zz_hold, align 8
  br label %if.end.830

if.else.821:                                      ; preds = %if.else.814
  %401 = load i32, i32* @zz_size, align 4
  %idxprom822 = sext i32 %401 to i64
  %arrayidx823 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom822
  %402 = load %union.rec*, %union.rec** %arrayidx823, align 8
  store %union.rec* %402, %union.rec** @zz_hold, align 8
  store %union.rec* %402, %union.rec** @zz_hold, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1824 = bitcast %union.rec* %403 to %struct.word_type*
  %olist825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1824, i32 0, i32 0
  %arrayidx826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist825, i32 0, i64 0
  %opred827 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx826, i32 0, i32 0
  %404 = load %union.rec*, %union.rec** %opred827, align 8
  %405 = load i32, i32* @zz_size, align 4
  %idxprom828 = sext i32 %405 to i64
  %arrayidx829 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom828
  store %union.rec* %404, %union.rec** %arrayidx829, align 8
  br label %if.end.830

if.end.830:                                       ; preds = %if.else.821, %if.then.819
  br label %if.end.831

if.end.831:                                       ; preds = %if.end.830, %if.then.812
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1832 = bitcast %union.rec* %406 to %struct.word_type*
  %ou1833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1832, i32 0, i32 1
  %os11834 = bitcast %union.FIRST_UNION* %ou1833 to %struct.anon*
  %otype835 = getelementptr inbounds %struct.anon, %struct.anon* %os11834, i32 0, i32 0
  store i8 0, i8* %otype835, align 1
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1836 = bitcast %union.rec* %408 to %struct.word_type*
  %olist837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1836, i32 0, i32 0
  %arrayidx838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist837, i32 0, i64 1
  %osucc839 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx838, i32 0, i32 1
  store %union.rec* %407, %union.rec** %osucc839, align 8
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1840 = bitcast %union.rec* %409 to %struct.word_type*
  %olist841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1840, i32 0, i32 0
  %arrayidx842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist841, i32 0, i64 1
  %opred843 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx842, i32 0, i32 0
  store %union.rec* %407, %union.rec** %opred843, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1844 = bitcast %union.rec* %410 to %struct.word_type*
  %olist845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1844, i32 0, i32 0
  %arrayidx846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist845, i32 0, i64 0
  %osucc847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx846, i32 0, i32 1
  store %union.rec* %407, %union.rec** %osucc847, align 8
  %411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1848 = bitcast %union.rec* %411 to %struct.word_type*
  %olist849 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1848, i32 0, i32 0
  %arrayidx850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist849, i32 0, i64 0
  %opred851 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx850, i32 0, i32 0
  store %union.rec* %407, %union.rec** %opred851, align 8
  store %union.rec* %407, %union.rec** @xx_link, align 8
  %412 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %412, %union.rec** @zz_res, align 8
  %413 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %413, %union.rec** @zz_hold, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp852 = icmp eq %union.rec* %414, null
  br i1 %cmp852, label %cond.true.854, label %cond.false.855

cond.true.854:                                    ; preds = %if.end.831
  %415 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.890

cond.false.855:                                   ; preds = %if.end.831
  %416 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp856 = icmp eq %union.rec* %416, null
  br i1 %cmp856, label %cond.true.858, label %cond.false.859

cond.true.858:                                    ; preds = %cond.false.855
  %417 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.888

cond.false.859:                                   ; preds = %cond.false.855
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1860 = bitcast %union.rec* %418 to %struct.word_type*
  %olist861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1860, i32 0, i32 0
  %arrayidx862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist861, i32 0, i64 0
  %opred863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx862, i32 0, i32 0
  %419 = load %union.rec*, %union.rec** %opred863, align 8
  store %union.rec* %419, %union.rec** @zz_tmp, align 8
  %420 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1864 = bitcast %union.rec* %420 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %opred867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 0
  %421 = load %union.rec*, %union.rec** %opred867, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1868 = bitcast %union.rec* %422 to %struct.word_type*
  %olist869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1868, i32 0, i32 0
  %arrayidx870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist869, i32 0, i64 0
  %opred871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx870, i32 0, i32 0
  store %union.rec* %421, %union.rec** %opred871, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %424 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1872 = bitcast %union.rec* %424 to %struct.word_type*
  %olist873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 0
  %arrayidx874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist873, i32 0, i64 0
  %opred875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx874, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %opred875, align 8
  %os1876 = bitcast %union.rec* %425 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 0
  %osucc879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 1
  store %union.rec* %423, %union.rec** %osucc879, align 8
  %426 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %427 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1880 = bitcast %union.rec* %427 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 0
  %opred883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 0
  store %union.rec* %426, %union.rec** %opred883, align 8
  %428 = load %union.rec*, %union.rec** @zz_res, align 8
  %429 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1884 = bitcast %union.rec* %429 to %struct.word_type*
  %olist885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1884, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist885, i32 0, i64 0
  %osucc887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx886, i32 0, i32 1
  store %union.rec* %428, %union.rec** %osucc887, align 8
  br label %cond.end.888

cond.end.888:                                     ; preds = %cond.false.859, %cond.true.858
  %cond889 = phi %union.rec* [ %417, %cond.true.858 ], [ %428, %cond.false.859 ]
  br label %cond.end.890

cond.end.890:                                     ; preds = %cond.end.888, %cond.true.854
  %cond891 = phi %union.rec* [ %415, %cond.true.854 ], [ %cond889, %cond.end.888 ]
  %430 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %430, %union.rec** @zz_res, align 8
  %431 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %431, %union.rec** @zz_hold, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp892 = icmp eq %union.rec* %432, null
  br i1 %cmp892, label %cond.true.894, label %cond.false.895

cond.true.894:                                    ; preds = %cond.end.890
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.930

cond.false.895:                                   ; preds = %cond.end.890
  %434 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp896 = icmp eq %union.rec* %434, null
  br i1 %cmp896, label %cond.true.898, label %cond.false.899

cond.true.898:                                    ; preds = %cond.false.895
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.928

cond.false.899:                                   ; preds = %cond.false.895
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1900 = bitcast %union.rec* %436 to %struct.word_type*
  %olist901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist901, i32 0, i64 1
  %opred903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx902, i32 0, i32 0
  %437 = load %union.rec*, %union.rec** %opred903, align 8
  store %union.rec* %437, %union.rec** @zz_tmp, align 8
  %438 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1904 = bitcast %union.rec* %438 to %struct.word_type*
  %olist905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1904, i32 0, i32 0
  %arrayidx906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist905, i32 0, i64 1
  %opred907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx906, i32 0, i32 0
  %439 = load %union.rec*, %union.rec** %opred907, align 8
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1908 = bitcast %union.rec* %440 to %struct.word_type*
  %olist909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1908, i32 0, i32 0
  %arrayidx910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist909, i32 0, i64 1
  %opred911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx910, i32 0, i32 0
  store %union.rec* %439, %union.rec** %opred911, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %442 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1912 = bitcast %union.rec* %442 to %struct.word_type*
  %olist913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1912, i32 0, i32 0
  %arrayidx914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist913, i32 0, i64 1
  %opred915 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx914, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %opred915, align 8
  %os1916 = bitcast %union.rec* %443 to %struct.word_type*
  %olist917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1916, i32 0, i32 0
  %arrayidx918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist917, i32 0, i64 1
  %osucc919 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx918, i32 0, i32 1
  store %union.rec* %441, %union.rec** %osucc919, align 8
  %444 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %445 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1920 = bitcast %union.rec* %445 to %struct.word_type*
  %olist921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1920, i32 0, i32 0
  %arrayidx922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist921, i32 0, i64 1
  %opred923 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx922, i32 0, i32 0
  store %union.rec* %444, %union.rec** %opred923, align 8
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  %447 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1924 = bitcast %union.rec* %447 to %struct.word_type*
  %olist925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1924, i32 0, i32 0
  %arrayidx926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist925, i32 0, i64 1
  %osucc927 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx926, i32 0, i32 1
  store %union.rec* %446, %union.rec** %osucc927, align 8
  br label %cond.end.928

cond.end.928:                                     ; preds = %cond.false.899, %cond.true.898
  %cond929 = phi %union.rec* [ %435, %cond.true.898 ], [ %446, %cond.false.899 ]
  br label %cond.end.930

cond.end.930:                                     ; preds = %cond.end.928, %cond.true.894
  %cond931 = phi %union.rec* [ %433, %cond.true.894 ], [ %cond929, %cond.end.928 ]
  store i32 0, i32* %bp, align 4
  br label %if.end.932

if.end.932:                                       ; preds = %cond.end.930, %sw.bb.602
  br label %sw.epilog.937

sw.default.933:                                   ; preds = %for.body.600
  %448 = load i8*, i8** %p, align 8
  %449 = load i8, i8* %448, align 1
  %450 = load i32, i32* %bp, align 4
  %inc934 = add nsw i32 %450, 1
  store i32 %inc934, i32* %bp, align 4
  %idxprom935 = sext i32 %450 to i64
  %arrayidx936 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom935
  store i8 %449, i8* %arrayidx936, align 1
  br label %sw.epilog.937

sw.epilog.937:                                    ; preds = %sw.default.933, %if.end.932
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.937
  %451 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.596

for.end:                                          ; preds = %for.cond.596
  %452 = load i32, i32* %bp, align 4
  %cmp938 = icmp sgt i32 %452, 0
  br i1 %cmp938, label %if.then.940, label %if.end.1070

if.then.940:                                      ; preds = %for.end
  %453 = load i32, i32* %bp, align 4
  %inc941 = add nsw i32 %453, 1
  store i32 %inc941, i32* %bp, align 4
  %idxprom942 = sext i32 %453 to i64
  %arrayidx943 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom942
  store i8 0, i8* %arrayidx943, align 1
  %arraydecay944 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %454 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call945 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay944, %struct.FILE_POS* %454)
  store %union.rec* %call945, %union.rec** %z, align 8
  %455 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv946 = zext i8 %455 to i32
  store i32 %conv946, i32* @zz_size, align 4
  %conv947 = sext i32 %conv946 to i64
  %cmp948 = icmp uge i64 %conv947, 265
  br i1 %cmp948, label %if.then.950, label %if.else.952

if.then.950:                                      ; preds = %if.then.940
  %456 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call951 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %456)
  br label %if.end.969

if.else.952:                                      ; preds = %if.then.940
  %457 = load i32, i32* @zz_size, align 4
  %idxprom953 = sext i32 %457 to i64
  %arrayidx954 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom953
  %458 = load %union.rec*, %union.rec** %arrayidx954, align 8
  %cmp955 = icmp eq %union.rec* %458, null
  br i1 %cmp955, label %if.then.957, label %if.else.959

if.then.957:                                      ; preds = %if.else.952
  %459 = load i32, i32* @zz_size, align 4
  %460 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call958 = call %union.rec* @GetMemory(i32 %459, %struct.FILE_POS* %460)
  store %union.rec* %call958, %union.rec** @zz_hold, align 8
  br label %if.end.968

if.else.959:                                      ; preds = %if.else.952
  %461 = load i32, i32* @zz_size, align 4
  %idxprom960 = sext i32 %461 to i64
  %arrayidx961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom960
  %462 = load %union.rec*, %union.rec** %arrayidx961, align 8
  store %union.rec* %462, %union.rec** @zz_hold, align 8
  store %union.rec* %462, %union.rec** @zz_hold, align 8
  %463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1962 = bitcast %union.rec* %463 to %struct.word_type*
  %olist963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1962, i32 0, i32 0
  %arrayidx964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist963, i32 0, i64 0
  %opred965 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx964, i32 0, i32 0
  %464 = load %union.rec*, %union.rec** %opred965, align 8
  %465 = load i32, i32* @zz_size, align 4
  %idxprom966 = sext i32 %465 to i64
  %arrayidx967 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom966
  store %union.rec* %464, %union.rec** %arrayidx967, align 8
  br label %if.end.968

if.end.968:                                       ; preds = %if.else.959, %if.then.957
  br label %if.end.969

if.end.969:                                       ; preds = %if.end.968, %if.then.950
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1970 = bitcast %union.rec* %466 to %struct.word_type*
  %ou1971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1970, i32 0, i32 1
  %os11972 = bitcast %union.FIRST_UNION* %ou1971 to %struct.anon*
  %otype973 = getelementptr inbounds %struct.anon, %struct.anon* %os11972, i32 0, i32 0
  store i8 0, i8* %otype973, align 1
  %467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1974 = bitcast %union.rec* %468 to %struct.word_type*
  %olist975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1974, i32 0, i32 0
  %arrayidx976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist975, i32 0, i64 1
  %osucc977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx976, i32 0, i32 1
  store %union.rec* %467, %union.rec** %osucc977, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1978 = bitcast %union.rec* %469 to %struct.word_type*
  %olist979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1978, i32 0, i32 0
  %arrayidx980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist979, i32 0, i64 1
  %opred981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx980, i32 0, i32 0
  store %union.rec* %467, %union.rec** %opred981, align 8
  %470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1982 = bitcast %union.rec* %470 to %struct.word_type*
  %olist983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1982, i32 0, i32 0
  %arrayidx984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist983, i32 0, i64 0
  %osucc985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx984, i32 0, i32 1
  store %union.rec* %467, %union.rec** %osucc985, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1986 = bitcast %union.rec* %471 to %struct.word_type*
  %olist987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1986, i32 0, i32 0
  %arrayidx988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist987, i32 0, i64 0
  %opred989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx988, i32 0, i32 0
  store %union.rec* %467, %union.rec** %opred989, align 8
  store %union.rec* %467, %union.rec** @xx_link, align 8
  %472 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %472, %union.rec** @zz_res, align 8
  %473 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %473, %union.rec** @zz_hold, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp990 = icmp eq %union.rec* %474, null
  br i1 %cmp990, label %cond.true.992, label %cond.false.993

cond.true.992:                                    ; preds = %if.end.969
  %475 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1028

cond.false.993:                                   ; preds = %if.end.969
  %476 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp994 = icmp eq %union.rec* %476, null
  br i1 %cmp994, label %cond.true.996, label %cond.false.997

cond.true.996:                                    ; preds = %cond.false.993
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1026

cond.false.997:                                   ; preds = %cond.false.993
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1998 = bitcast %union.rec* %478 to %struct.word_type*
  %olist999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1998, i32 0, i32 0
  %arrayidx1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist999, i32 0, i64 0
  %opred1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1000, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %opred1001, align 8
  store %union.rec* %479, %union.rec** @zz_tmp, align 8
  %480 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11002 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1003 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11002, i32 0, i32 0
  %arrayidx1004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1003, i32 0, i64 0
  %opred1005 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1004, i32 0, i32 0
  %481 = load %union.rec*, %union.rec** %opred1005, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11006 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11006, i32 0, i32 0
  %arrayidx1008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1007, i32 0, i64 0
  %opred1009 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1008, i32 0, i32 0
  store %union.rec* %481, %union.rec** %opred1009, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %484 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11010 = bitcast %union.rec* %484 to %struct.word_type*
  %olist1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11010, i32 0, i32 0
  %arrayidx1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1011, i32 0, i64 0
  %opred1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1012, i32 0, i32 0
  %485 = load %union.rec*, %union.rec** %opred1013, align 8
  %os11014 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1015 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11014, i32 0, i32 0
  %arrayidx1016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1015, i32 0, i64 0
  %osucc1017 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1016, i32 0, i32 1
  store %union.rec* %483, %union.rec** %osucc1017, align 8
  %486 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %487 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11018 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11018, i32 0, i32 0
  %arrayidx1020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1019, i32 0, i64 0
  %opred1021 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1020, i32 0, i32 0
  store %union.rec* %486, %union.rec** %opred1021, align 8
  %488 = load %union.rec*, %union.rec** @zz_res, align 8
  %489 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11022 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11022, i32 0, i32 0
  %arrayidx1024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1023, i32 0, i64 0
  %osucc1025 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1024, i32 0, i32 1
  store %union.rec* %488, %union.rec** %osucc1025, align 8
  br label %cond.end.1026

cond.end.1026:                                    ; preds = %cond.false.997, %cond.true.996
  %cond1027 = phi %union.rec* [ %477, %cond.true.996 ], [ %488, %cond.false.997 ]
  br label %cond.end.1028

cond.end.1028:                                    ; preds = %cond.end.1026, %cond.true.992
  %cond1029 = phi %union.rec* [ %475, %cond.true.992 ], [ %cond1027, %cond.end.1026 ]
  %490 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %490, %union.rec** @zz_res, align 8
  %491 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %491, %union.rec** @zz_hold, align 8
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1030 = icmp eq %union.rec* %492, null
  br i1 %cmp1030, label %cond.true.1032, label %cond.false.1033

cond.true.1032:                                   ; preds = %cond.end.1028
  %493 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1068

cond.false.1033:                                  ; preds = %cond.end.1028
  %494 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1034 = icmp eq %union.rec* %494, null
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1037

cond.true.1036:                                   ; preds = %cond.false.1033
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1066

cond.false.1037:                                  ; preds = %cond.false.1033
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11038 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11038, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1039, i32 0, i64 1
  %opred1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1040, i32 0, i32 0
  %497 = load %union.rec*, %union.rec** %opred1041, align 8
  store %union.rec* %497, %union.rec** @zz_tmp, align 8
  %498 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11042 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11042, i32 0, i32 0
  %arrayidx1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1043, i32 0, i64 1
  %opred1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1044, i32 0, i32 0
  %499 = load %union.rec*, %union.rec** %opred1045, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11046 = bitcast %union.rec* %500 to %struct.word_type*
  %olist1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11046, i32 0, i32 0
  %arrayidx1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1047, i32 0, i64 1
  %opred1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1048, i32 0, i32 0
  store %union.rec* %499, %union.rec** %opred1049, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11050 = bitcast %union.rec* %502 to %struct.word_type*
  %olist1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11050, i32 0, i32 0
  %arrayidx1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1051, i32 0, i64 1
  %opred1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1052, i32 0, i32 0
  %503 = load %union.rec*, %union.rec** %opred1053, align 8
  %os11054 = bitcast %union.rec* %503 to %struct.word_type*
  %olist1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11054, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1055, i32 0, i64 1
  %osucc1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1056, i32 0, i32 1
  store %union.rec* %501, %union.rec** %osucc1057, align 8
  %504 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %505 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11058 = bitcast %union.rec* %505 to %struct.word_type*
  %olist1059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11058, i32 0, i32 0
  %arrayidx1060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1059, i32 0, i64 1
  %opred1061 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1060, i32 0, i32 0
  store %union.rec* %504, %union.rec** %opred1061, align 8
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %507 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11062 = bitcast %union.rec* %507 to %struct.word_type*
  %olist1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11062, i32 0, i32 0
  %arrayidx1064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1063, i32 0, i64 1
  %osucc1065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1064, i32 0, i32 1
  store %union.rec* %506, %union.rec** %osucc1065, align 8
  br label %cond.end.1066

cond.end.1066:                                    ; preds = %cond.false.1037, %cond.true.1036
  %cond1067 = phi %union.rec* [ %495, %cond.true.1036 ], [ %506, %cond.false.1037 ]
  br label %cond.end.1068

cond.end.1068:                                    ; preds = %cond.end.1066, %cond.true.1032
  %cond1069 = phi %union.rec* [ %493, %cond.true.1032 ], [ %cond1067, %cond.end.1066 ]
  br label %if.end.1070

if.end.1070:                                      ; preds = %cond.end.1068, %for.end
  %508 = load %union.rec*, %union.rec** %y, align 8
  %os11071 = bitcast %union.rec* %508 to %struct.word_type*
  %olist1072 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11071, i32 0, i32 0
  %arrayidx1073 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1072, i32 0, i64 0
  %osucc1074 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1073, i32 0, i32 1
  %509 = load %union.rec*, %union.rec** %osucc1074, align 8
  %510 = load %union.rec*, %union.rec** %y, align 8
  %cmp1075 = icmp eq %union.rec* %509, %510
  br i1 %cmp1075, label %if.then.1077, label %if.end.1082

if.then.1077:                                     ; preds = %if.end.1070
  %511 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %512 = load i32, i32* %i, align 4
  %idxprom1078 = sext i32 %512 to i64
  %513 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1079 = getelementptr inbounds i8*, i8** %513, i64 %idxprom1078
  %514 = load i8*, i8** %arrayidx1079, align 8
  %add.ptr1080 = getelementptr inbounds i8, i8* %514, i64 2
  %call1081 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0), i32 1, %struct.FILE_POS* %511, i8* %add.ptr1080)
  br label %if.end.1082

if.end.1082:                                      ; preds = %if.then.1077, %if.end.1070
  br label %sw.epilog.1089

sw.bb.1083:                                       ; preds = %if.then.52
  store i32 1, i32* @SafeExecution, align 4
  br label %sw.epilog.1089

sw.bb.1084:                                       ; preds = %if.then.52
  store i32 0, i32* @SafeExecution, align 4
  br label %sw.epilog.1089

sw.default.1085:                                  ; preds = %if.then.52
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @PrintUsage(%struct._IO_FILE* %515)
  %516 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %517 = load i32, i32* %i, align 4
  %idxprom1086 = sext i32 %517 to i64
  %518 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1087 = getelementptr inbounds i8*, i8** %518, i64 %idxprom1086
  %519 = load i8*, i8** %arrayidx1087, align 8
  %call1088 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i32 1, %struct.FILE_POS* %516, i8* %519)
  br label %sw.epilog.1089

sw.epilog.1089:                                   ; preds = %sw.default.1085, %sw.bb.1084, %sw.bb.1083, %if.end.1082, %if.end.279, %sw.bb.270, %sw.bb.266, %sw.bb.264, %if.end.263, %if.then.203, %sw.bb.195, %sw.bb.194, %if.end.173, %if.end.158, %if.end.135, %if.end.127, %if.end.119, %if.end.111, %if.end.102, %if.end.95, %sw.bb.85, %if.end.84, %if.end.77, %sw.bb.70, %sw.bb.69, %sw.bb.68, %sw.bb.67, %sw.bb.66, %if.end.65
  br label %if.end.1113

if.else.1090:                                     ; preds = %for.body
  %520 = load i32, i32* %i, align 4
  %idxprom1091 = sext i32 %520 to i64
  %521 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1092 = getelementptr inbounds i8*, i8** %521, i64 %idxprom1091
  %522 = load i8*, i8** %arrayidx1092, align 8
  store i8* %522, i8** %arg, align 8
  %523 = load i8*, i8** %arg, align 8
  %call1093 = call i64 @strlen(i8* %523) #6
  %sub1094 = sub i64 %call1093, 3
  %conv1095 = trunc i64 %sub1094 to i32
  store i32 %conv1095, i32* %len, align 4
  %524 = load i32, i32* %len, align 4
  %cmp1096 = icmp sge i32 %524, 0
  br i1 %cmp1096, label %land.lhs.true.1098, label %if.end.1108

land.lhs.true.1098:                               ; preds = %if.else.1090
  %525 = load i32, i32* %len, align 4
  %idxprom1099 = sext i32 %525 to i64
  %526 = load i8*, i8** %arg, align 8
  %arrayidx1100 = getelementptr inbounds i8, i8* %526, i64 %idxprom1099
  %call1101 = call i32 @strcmp(i8* %arrayidx1100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #6
  %cmp1102 = icmp eq i32 %call1101, 0
  br i1 %cmp1102, label %if.then.1104, label %if.end.1108

if.then.1104:                                     ; preds = %land.lhs.true.1098
  %527 = load i32, i32* %len, align 4
  %idxprom1105 = sext i32 %527 to i64
  %528 = load i8*, i8** %arg, align 8
  %arrayidx1106 = getelementptr inbounds i8, i8* %528, i64 %idxprom1105
  %call1107 = call i8* @strcpy(i8* %arrayidx1106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.1108

if.end.1108:                                      ; preds = %if.then.1104, %land.lhs.true.1098, %if.else.1090
  %529 = load i32, i32* %i, align 4
  %idxprom1109 = sext i32 %529 to i64
  %530 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1110 = getelementptr inbounds i8*, i8** %530, i64 %idxprom1109
  %531 = load i8*, i8** %arrayidx1110, align 8
  %532 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1111 = call zeroext i16 @DefineFile(i8* %531, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %532, i32 0, i32 0)
  %533 = load i32, i32* %source_file_count, align 4
  %inc1112 = add nsw i32 %533, 1
  store i32 %inc1112, i32* %source_file_count, align 4
  br label %if.end.1113

if.end.1113:                                      ; preds = %if.end.1108, %sw.epilog.1089
  br label %for.inc.1114

for.inc.1114:                                     ; preds = %if.end.1113
  %534 = load i32, i32* %i, align 4
  %inc1115 = add nsw i32 %534, 1
  store i32 %inc1115, i32* %i, align 4
  br label %for.cond

for.end.1116:                                     ; preds = %for.cond
  %535 = load i32, i32* @UseCollate, align 4
  %tobool1117 = icmp ne i32 %535, 0
  br i1 %tobool1117, label %if.then.1118, label %if.end.1124

if.then.1118:                                     ; preds = %for.end.1116
  %call1119 = call i8* @setlocale(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool1120 = icmp ne i8* %call1119, null
  br i1 %tobool1120, label %if.end.1123, label %if.then.1121

if.then.1121:                                     ; preds = %if.then.1118
  %536 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1122 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i32 2, %struct.FILE_POS* %536)
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.then.1121, %if.then.1118
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.end.1123, %for.end.1116
  %537 = load i8*, i8** %outfile, align 8
  %call1125 = call i32 @strcmp(i8* %537, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6
  %cmp1126 = icmp eq i32 %call1125, 0
  br i1 %cmp1126, label %if.then.1128, label %if.else.1129

if.then.1128:                                     ; preds = %if.end.1124
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %538, %struct._IO_FILE** %out_fp, align 8
  br label %if.end.1139

if.else.1129:                                     ; preds = %if.end.1124
  %539 = load i8*, i8** %outfile, align 8
  %540 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %code = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %540, i32 0, i32 0
  %541 = load i32, i32* %code, align 4
  %cmp1130 = icmp eq i32 %541, 2
  %cond1132 = select i1 %cmp1130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)
  %call1133 = call %struct._IO_FILE* @fopen(i8* %539, i8* %cond1132)
  store %struct._IO_FILE* %call1133, %struct._IO_FILE** %out_fp, align 8
  %542 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %cmp1134 = icmp eq %struct._IO_FILE* %542, null
  br i1 %cmp1134, label %if.then.1136, label %if.end.1138

if.then.1136:                                     ; preds = %if.else.1129
  %543 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %544 = load i8*, i8** %outfile, align 8
  %call1137 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %543, i8* %544)
  br label %if.end.1138

if.end.1138:                                      ; preds = %if.then.1136, %if.else.1129
  br label %if.end.1139

if.end.1139:                                      ; preds = %if.end.1138, %if.then.1128
  call void @ColourInit()
  call void @LanguageInit()
  %545 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintInitialize = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %545, i32 0, i32 10
  %546 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %PrintInitialize, align 8
  %547 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  call void %546(%struct._IO_FILE* %547)
  %548 = load i8*, i8** %lib, align 8
  %call1140 = call %union.rec* @MakeWordThree(i8* %548, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0))
  call void @AddToPath(i32 5, %union.rec* %call1140)
  %549 = load i8*, i8** %lib, align 8
  %call1141 = call %union.rec* @MakeWordThree(i8* %549, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0))
  call void @AddToPath(i32 6, %union.rec* %call1141)
  %550 = load i8*, i8** %lib, align 8
  %call1142 = call %union.rec* @MakeWordThree(i8* %550, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0))
  call void @AddToPath(i32 7, %union.rec* %call1142)
  %551 = load i8*, i8** %lib, align 8
  %call1143 = call %union.rec* @MakeWordThree(i8* %551, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  call void @AddToPath(i32 4, %union.rec* %call1143)
  %552 = load i8*, i8** %lib, align 8
  %call1144 = call %union.rec* @MakeWordThree(i8* %552, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  call void @AddToPath(i32 3, %union.rec* %call1144)
  %553 = load i8*, i8** %lib, align 8
  %call1145 = call %union.rec* @MakeWordThree(i8* %553, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  call void @AddToPath(i32 2, %union.rec* %call1145)
  %554 = load i8*, i8** %lib, align 8
  %call1146 = call %union.rec* @MakeWordThree(i8* %554, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  call void @AddToPath(i32 1, %union.rec* %call1146)
  %555 = load i32, i32* %source_file_count, align 4
  %cmp1147 = icmp eq i32 %555, 0
  br i1 %cmp1147, label %if.then.1149, label %if.end.1151

if.then.1149:                                     ; preds = %if.end.1139
  %556 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1150 = call zeroext i16 @DefineFile(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %556, i32 0, i32 0)
  br label %if.end.1151

if.end.1151:                                      ; preds = %if.then.1149, %if.end.1139
  store %union.rec* null, %union.rec** @StartSym, align 8
  %call1152 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %call1152, %union.rec** @StartSym, align 8
  %call1153 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %call1153, %union.rec** @GalleySym, align 8
  %call1154 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %call1154, %union.rec** @ForceGalleySym, align 8
  %call1155 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %call1155, %union.rec** @InputSym, align 8
  %call1156 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i8 zeroext 0)
  store %union.rec* %call1156, %union.rec** @PrintSym, align 8
  %call1157 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8 zeroext 0)
  store %union.rec* %call1157, %union.rec** @FilterInSym, align 8
  %call1158 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8 zeroext 0)
  store %union.rec* %call1158, %union.rec** @FilterOutSym, align 8
  %call1159 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8 zeroext 0)
  store %union.rec* %call1159, %union.rec** @FilterErrSym, align 8
  %call1160 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 0, i32 1, i32 0, i8 zeroext 100)
  store %union.rec* %call1160, %union.rec** @OptGallSym, align 8
  %call1161 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 53, i32 0, i32 1, i32 0, i8 zeroext 100)
  store %union.rec* %call1161, %union.rec** @VerbatimSym, align 8
  %call1162 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 54, i32 0, i32 1, i32 0, i8 zeroext 100)
  store %union.rec* %call1162, %union.rec** @RawVerbatimSym, align 8
  %call1163 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 104, i32 0, i32 0, i32 0, i8 zeroext 1)
  %call1164 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 105, i32 0, i32 0, i32 0, i8 zeroext 2)
  %call1165 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 82, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1166 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 83, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1167 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 84, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1168 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i32 85, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1169 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 86, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1170 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 87, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1171 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 88, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1172 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 89, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1173 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 90, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1174 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 91, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1175 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i32 102, i32 0, i32 0, i32 0, i8 zeroext 3)
  %call1176 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i32 103, i32 0, i32 0, i32 0, i8 zeroext 4)
  %call1177 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 112, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1178 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i32 113, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1179 = call %union.rec* @load(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), i32 114, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1180 = call %union.rec* @load(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), i32 115, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1181 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 116, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1182 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 117, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1183 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 106, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1184 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i32 107, i32 0, i32 0, i32 0, i8 zeroext 0)
  %call1185 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i32 52, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1186 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 55, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1187 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i32 56, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1188 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i32 58, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1189 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i32 59, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1190 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 60, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1191 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i32 61, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1192 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 62, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1193 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 63, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1194 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i32 64, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1195 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i32 65, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1196 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 65, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1197 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i32 66, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1198 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 67, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1199 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i32 68, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1200 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i32 69, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1201 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 70, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1202 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i32 71, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1203 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i32 72, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1204 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i32 73, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1205 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i32 74, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1206 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i32 75, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1207 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i32 76, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1208 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i32 77, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1209 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i32 78, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1210 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i32 79, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1211 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i32 80, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1212 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i32 92, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1213 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0), i32 93, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1214 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i32 26, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1215 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0), i32 27, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1216 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i32 28, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1217 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i32 29, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1218 = call %union.rec* @load(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.139, i32 0, i32 0), i32 20, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1219 = call %union.rec* @load(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i32 0, i32 0), i32 21, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1220 = call %union.rec* @load(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.141, i32 0, i32 0), i32 22, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1221 = call %union.rec* @load(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.142, i32 0, i32 0), i32 23, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1222 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i32 24, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1223 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i32 25, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1224 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i32 30, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1225 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i32 31, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1226 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), i32 32, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1227 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i32 33, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1228 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), i32 35, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1229 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0), i32 34, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1230 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i32 36, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1231 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i32 37, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1232 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i32 38, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1233 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i32 39, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1234 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 40, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1235 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), i32 41, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1236 = call %union.rec* @load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), i32 44, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1237 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i32 42, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1238 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), i32 43, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1239 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i32 0, i32 0), i32 45, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1240 = call %union.rec* @load(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i32 46, i32 0, i32 0, i32 0, i8 zeroext 100)
  %call1241 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i32 0, i32 0), i32 47, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1242 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 48, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1243 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i32 49, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1244 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i32 50, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1245 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i32 51, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1246 = call %union.rec* @load(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.167, i32 0, i32 0), i32 94, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1247 = call %union.rec* @load(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.168, i32 0, i32 0), i32 95, i32 0, i32 1, i32 0, i8 zeroext 100)
  %call1248 = call %union.rec* @load(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.169, i32 0, i32 0), i32 96, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1249 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i32 97, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1250 = call %union.rec* @load(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), i32 98, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1251 = call %union.rec* @load(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i32 99, i32 1, i32 1, i32 0, i8 zeroext 100)
  %call1252 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i32 0, i32 0), i32 6, i32 1, i32 1, i32 0, i8 zeroext 101)
  %call1253 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.174, i32 0, i32 0), i32 7, i32 1, i32 1, i32 0, i8 zeroext 101)
  %call1254 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), i32 5, i32 0, i32 0, i32 1, i8 zeroext 0)
  %call1255 = call %union.rec* @load(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i32 4, i32 0, i32 1, i32 1, i8 zeroext 100)
  %call1256 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %call1256, %union.rec** %s, align 8
  %557 = load %union.rec*, %union.rec** %s, align 8
  %os11257 = bitcast %union.rec* %557 to %struct.word_type*
  %ou21258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11257, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou21258 to %struct.anon.5*
  %ohas_mark = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %558 = bitcast [3 x i8]* %ohas_mark to i24*
  %bf.load1259 = load i24, i24* %558, align 1
  %bf.clear1260 = and i24 %bf.load1259, -131073
  store i24 %bf.clear1260, i24* %558, align 1
  %559 = load %union.rec*, %union.rec** %s, align 8
  %os11261 = bitcast %union.rec* %559 to %struct.word_type*
  %ou21262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11261, i32 0, i32 2
  %os261263 = bitcast %union.SECOND_UNION* %ou21262 to %struct.anon.5*
  %ohas_join = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261263, i32 0, i32 1
  %560 = bitcast [3 x i8]* %ohas_join to i24*
  %bf.load1264 = load i24, i24* %560, align 1
  %bf.clear1265 = and i24 %bf.load1264, -262145
  store i24 %bf.clear1265, i24* %560, align 1
  %call1266 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %call1266, %union.rec** %s, align 8
  %561 = load %union.rec*, %union.rec** %s, align 8
  %os11267 = bitcast %union.rec* %561 to %struct.word_type*
  %ou21268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11267, i32 0, i32 2
  %os261269 = bitcast %union.SECOND_UNION* %ou21268 to %struct.anon.5*
  %ohas_mark1270 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261269, i32 0, i32 1
  %562 = bitcast [3 x i8]* %ohas_mark1270 to i24*
  %bf.load1271 = load i24, i24* %562, align 1
  %bf.clear1272 = and i24 %bf.load1271, -131073
  %bf.set1273 = or i24 %bf.clear1272, 131072
  store i24 %bf.set1273, i24* %562, align 1
  %563 = load %union.rec*, %union.rec** %s, align 8
  %os11274 = bitcast %union.rec* %563 to %struct.word_type*
  %ou21275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11274, i32 0, i32 2
  %os261276 = bitcast %union.SECOND_UNION* %ou21275 to %struct.anon.5*
  %ohas_join1277 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261276, i32 0, i32 1
  %564 = bitcast [3 x i8]* %ohas_join1277 to i24*
  %bf.load1278 = load i24, i24* %564, align 1
  %bf.clear1279 = and i24 %bf.load1278, -262145
  store i24 %bf.clear1279, i24* %564, align 1
  %call1280 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %call1280, %union.rec** %s, align 8
  %565 = load %union.rec*, %union.rec** %s, align 8
  %os11281 = bitcast %union.rec* %565 to %struct.word_type*
  %ou21282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11281, i32 0, i32 2
  %os261283 = bitcast %union.SECOND_UNION* %ou21282 to %struct.anon.5*
  %ohas_mark1284 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261283, i32 0, i32 1
  %566 = bitcast [3 x i8]* %ohas_mark1284 to i24*
  %bf.load1285 = load i24, i24* %566, align 1
  %bf.clear1286 = and i24 %bf.load1285, -131073
  store i24 %bf.clear1286, i24* %566, align 1
  %567 = load %union.rec*, %union.rec** %s, align 8
  %os11287 = bitcast %union.rec* %567 to %struct.word_type*
  %ou21288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11287, i32 0, i32 2
  %os261289 = bitcast %union.SECOND_UNION* %ou21288 to %struct.anon.5*
  %ohas_join1290 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261289, i32 0, i32 1
  %568 = bitcast [3 x i8]* %ohas_join1290 to i24*
  %bf.load1291 = load i24, i24* %568, align 1
  %bf.clear1292 = and i24 %bf.load1291, -262145
  %bf.set1293 = or i24 %bf.clear1292, 262144
  store i24 %bf.set1293, i24* %568, align 1
  %call1294 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), i32 19, i32 1, i32 1, i32 0, i8 zeroext 5)
  store %union.rec* %call1294, %union.rec** %s, align 8
  %569 = load %union.rec*, %union.rec** %s, align 8
  %os11295 = bitcast %union.rec* %569 to %struct.word_type*
  %ou21296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11295, i32 0, i32 2
  %os261297 = bitcast %union.SECOND_UNION* %ou21296 to %struct.anon.5*
  %ohas_mark1298 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261297, i32 0, i32 1
  %570 = bitcast [3 x i8]* %ohas_mark1298 to i24*
  %bf.load1299 = load i24, i24* %570, align 1
  %bf.clear1300 = and i24 %bf.load1299, -131073
  %bf.set1301 = or i24 %bf.clear1300, 131072
  store i24 %bf.set1301, i24* %570, align 1
  %571 = load %union.rec*, %union.rec** %s, align 8
  %os11302 = bitcast %union.rec* %571 to %struct.word_type*
  %ou21303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11302, i32 0, i32 2
  %os261304 = bitcast %union.SECOND_UNION* %ou21303 to %struct.anon.5*
  %ohas_join1305 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261304, i32 0, i32 1
  %572 = bitcast [3 x i8]* %ohas_join1305 to i24*
  %bf.load1306 = load i24, i24* %572, align 1
  %bf.clear1307 = and i24 %bf.load1306, -262145
  %bf.set1308 = or i24 %bf.clear1307, 262144
  store i24 %bf.set1308, i24* %572, align 1
  %call1309 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %call1309, %union.rec** %s, align 8
  %573 = load %union.rec*, %union.rec** %s, align 8
  %os11310 = bitcast %union.rec* %573 to %struct.word_type*
  %ou21311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11310, i32 0, i32 2
  %os261312 = bitcast %union.SECOND_UNION* %ou21311 to %struct.anon.5*
  %ohas_mark1313 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261312, i32 0, i32 1
  %574 = bitcast [3 x i8]* %ohas_mark1313 to i24*
  %bf.load1314 = load i24, i24* %574, align 1
  %bf.clear1315 = and i24 %bf.load1314, -131073
  store i24 %bf.clear1315, i24* %574, align 1
  %575 = load %union.rec*, %union.rec** %s, align 8
  %os11316 = bitcast %union.rec* %575 to %struct.word_type*
  %ou21317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11316, i32 0, i32 2
  %os261318 = bitcast %union.SECOND_UNION* %ou21317 to %struct.anon.5*
  %ohas_join1319 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261318, i32 0, i32 1
  %576 = bitcast [3 x i8]* %ohas_join1319 to i24*
  %bf.load1320 = load i24, i24* %576, align 1
  %bf.clear1321 = and i24 %bf.load1320, -262145
  store i24 %bf.clear1321, i24* %576, align 1
  %call1322 = call %union.rec* @load(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.181, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %call1322, %union.rec** %s, align 8
  %577 = load %union.rec*, %union.rec** %s, align 8
  %os11323 = bitcast %union.rec* %577 to %struct.word_type*
  %ou21324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11323, i32 0, i32 2
  %os261325 = bitcast %union.SECOND_UNION* %ou21324 to %struct.anon.5*
  %ohas_mark1326 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261325, i32 0, i32 1
  %578 = bitcast [3 x i8]* %ohas_mark1326 to i24*
  %bf.load1327 = load i24, i24* %578, align 1
  %bf.clear1328 = and i24 %bf.load1327, -131073
  %bf.set1329 = or i24 %bf.clear1328, 131072
  store i24 %bf.set1329, i24* %578, align 1
  %579 = load %union.rec*, %union.rec** %s, align 8
  %os11330 = bitcast %union.rec* %579 to %struct.word_type*
  %ou21331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11330, i32 0, i32 2
  %os261332 = bitcast %union.SECOND_UNION* %ou21331 to %struct.anon.5*
  %ohas_join1333 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261332, i32 0, i32 1
  %580 = bitcast [3 x i8]* %ohas_join1333 to i24*
  %bf.load1334 = load i24, i24* %580, align 1
  %bf.clear1335 = and i24 %bf.load1334, -262145
  store i24 %bf.clear1335, i24* %580, align 1
  %call1336 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %call1336, %union.rec** %s, align 8
  %581 = load %union.rec*, %union.rec** %s, align 8
  %os11337 = bitcast %union.rec* %581 to %struct.word_type*
  %ou21338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11337, i32 0, i32 2
  %os261339 = bitcast %union.SECOND_UNION* %ou21338 to %struct.anon.5*
  %ohas_mark1340 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261339, i32 0, i32 1
  %582 = bitcast [3 x i8]* %ohas_mark1340 to i24*
  %bf.load1341 = load i24, i24* %582, align 1
  %bf.clear1342 = and i24 %bf.load1341, -131073
  store i24 %bf.clear1342, i24* %582, align 1
  %583 = load %union.rec*, %union.rec** %s, align 8
  %os11343 = bitcast %union.rec* %583 to %struct.word_type*
  %ou21344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11343, i32 0, i32 2
  %os261345 = bitcast %union.SECOND_UNION* %ou21344 to %struct.anon.5*
  %ohas_join1346 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261345, i32 0, i32 1
  %584 = bitcast [3 x i8]* %ohas_join1346 to i24*
  %bf.load1347 = load i24, i24* %584, align 1
  %bf.clear1348 = and i24 %bf.load1347, -262145
  %bf.set1349 = or i24 %bf.clear1348, 262144
  store i24 %bf.set1349, i24* %584, align 1
  %call1350 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0), i32 18, i32 1, i32 1, i32 0, i8 zeroext 6)
  store %union.rec* %call1350, %union.rec** %s, align 8
  %585 = load %union.rec*, %union.rec** %s, align 8
  %os11351 = bitcast %union.rec* %585 to %struct.word_type*
  %ou21352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11351, i32 0, i32 2
  %os261353 = bitcast %union.SECOND_UNION* %ou21352 to %struct.anon.5*
  %ohas_mark1354 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261353, i32 0, i32 1
  %586 = bitcast [3 x i8]* %ohas_mark1354 to i24*
  %bf.load1355 = load i24, i24* %586, align 1
  %bf.clear1356 = and i24 %bf.load1355, -131073
  %bf.set1357 = or i24 %bf.clear1356, 131072
  store i24 %bf.set1357, i24* %586, align 1
  %587 = load %union.rec*, %union.rec** %s, align 8
  %os11358 = bitcast %union.rec* %587 to %struct.word_type*
  %ou21359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 2
  %os261360 = bitcast %union.SECOND_UNION* %ou21359 to %struct.anon.5*
  %ohas_join1361 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261360, i32 0, i32 1
  %588 = bitcast [3 x i8]* %ohas_join1361 to i24*
  %bf.load1362 = load i24, i24* %588, align 1
  %bf.clear1363 = and i24 %bf.load1362, -262145
  %bf.set1364 = or i24 %bf.clear1363, 262144
  store i24 %bf.set1364, i24* %588, align 1
  %call1365 = call %union.rec* @load(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i32 0, i32 0), i32 17, i32 1, i32 1, i32 0, i8 zeroext 7)
  store %union.rec* %call1365, %union.rec** %s, align 8
  %589 = load %union.rec*, %union.rec** %s, align 8
  %os11366 = bitcast %union.rec* %589 to %struct.word_type*
  %ou21367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11366, i32 0, i32 2
  %os261368 = bitcast %union.SECOND_UNION* %ou21367 to %struct.anon.5*
  %ohas_mark1369 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261368, i32 0, i32 1
  %590 = bitcast [3 x i8]* %ohas_mark1369 to i24*
  %bf.load1370 = load i24, i24* %590, align 1
  %bf.clear1371 = and i24 %bf.load1370, -131073
  store i24 %bf.clear1371, i24* %590, align 1
  %591 = load %union.rec*, %union.rec** %s, align 8
  %os11372 = bitcast %union.rec* %591 to %struct.word_type*
  %ou21373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11372, i32 0, i32 2
  %os261374 = bitcast %union.SECOND_UNION* %ou21373 to %struct.anon.5*
  %ohas_join1375 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261374, i32 0, i32 1
  %592 = bitcast [3 x i8]* %ohas_join1375 to i24*
  %bf.load1376 = load i24, i24* %592, align 1
  %bf.clear1377 = and i24 %bf.load1376, -262145
  %bf.set1378 = or i24 %bf.clear1377, 262144
  store i24 %bf.set1378, i24* %592, align 1
  %call1379 = call %union.rec* @load(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.185, i32 0, i32 0), i32 17, i32 1, i32 1, i32 0, i8 zeroext 7)
  store %union.rec* %call1379, %union.rec** %s, align 8
  %593 = load %union.rec*, %union.rec** %s, align 8
  %os11380 = bitcast %union.rec* %593 to %struct.word_type*
  %ou21381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11380, i32 0, i32 2
  %os261382 = bitcast %union.SECOND_UNION* %ou21381 to %struct.anon.5*
  %ohas_mark1383 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261382, i32 0, i32 1
  %594 = bitcast [3 x i8]* %ohas_mark1383 to i24*
  %bf.load1384 = load i24, i24* %594, align 1
  %bf.clear1385 = and i24 %bf.load1384, -131073
  %bf.set1386 = or i24 %bf.clear1385, 131072
  store i24 %bf.set1386, i24* %594, align 1
  %595 = load %union.rec*, %union.rec** %s, align 8
  %os11387 = bitcast %union.rec* %595 to %struct.word_type*
  %ou21388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11387, i32 0, i32 2
  %os261389 = bitcast %union.SECOND_UNION* %ou21388 to %struct.anon.5*
  %ohas_join1390 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261389, i32 0, i32 1
  %596 = bitcast [3 x i8]* %ohas_join1390 to i24*
  %bf.load1391 = load i24, i24* %596, align 1
  %bf.clear1392 = and i24 %bf.load1391, -262145
  %bf.set1393 = or i24 %bf.clear1392, 262144
  store i24 %bf.set1393, i24* %596, align 1
  call void @FontInit()
  call void @InitTime()
  call void @FilterInit()
  call void @EnvInit()
  %597 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @PushScope(%union.rec* %597, i32 0, i32 0)
  %call1394 = call zeroext i16 @FirstFile(i32 0)
  call void @LexPush(i16 zeroext %call1394, i32 0, i32 0, i32 1, i32 0)
  %598 = load i8*, i8** %cross_db, align 8
  call void @InitParser(i8* %598)
  %599 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %600 = load %union.rec*, %union.rec** @StartSym, align 8
  %call1395 = call %union.rec* @NewToken(i8 zeroext 104, %struct.FILE_POS* %599, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, %union.rec* %600)
  store %union.rec* %call1395, %union.rec** %t, align 8
  %601 = load %union.rec*, %union.rec** @StartSym, align 8
  %call1396 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %601, i32 1, i32 1)
  store %union.rec* %call1396, %union.rec** %res, align 8
  %602 = load %union.rec*, %union.rec** @CommandOptions, align 8
  %call1397 = call i32 @DisposeObject(%union.rec* %602)
  %603 = load %union.rec*, %union.rec** %res, align 8
  call void @TransferEnd(%union.rec* %603)
  call void @TransferClose()
  %604 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintAfterLastPage = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %604, i32 0, i32 17
  %605 = load void ()*, void ()** %PrintAfterLastPage, align 8
  call void %605()
  %606 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %LinkCheck = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %606, i32 0, i32 32
  %607 = load void (...)*, void (...)** %LinkCheck, align 8
  call void (...) %607()
  call void @CrossClose()
  call void @CloseFiles()
  call void @FilterScavenge(i32 1)
  %608 = load i32, i32* %seen_wordcount, align 4
  %tobool1398 = icmp ne i32 %608, 0
  br i1 %tobool1398, label %if.then.1399, label %if.end.1401

if.then.1399:                                     ; preds = %if.end.1151
  %609 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %610 = load i32, i32* @TotalWordCount, align 4
  %call1400 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.186, i32 0, i32 0), i32 2, %struct.FILE_POS* %609, i32 %610)
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1399, %if.end.1151
  call void @CheckErrorBlocks()
  %611 = load i8*, i8** @MsgCat, align 8
  %call1402 = call i32 @catclose(i8* %611) #5
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %612 = load i32, i32* %retval
  ret i32 %612
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @catopen(i8*, i32) #2

declare void @MemInit() #2

declare void @InitSym() #2

declare void @LexInit() #2

declare void @InitFiles() #2

declare void @AddToPath(i32, %union.rec*) #2

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #2

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetArg(i8** %argv, i32 %argc, i32* %i) #0 {
entry:
  %retval = alloca i8*, align 8
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2
  %call = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %i.addr, align 8
  %5 = load i32, i32* %4, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %add.ptr3, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %i.addr, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %10, 1
  %cmp4 = icmp slt i32 %9, %sub
  br i1 %cmp4, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %11 = load i32*, i32** %i.addr, align 8
  %12 = load i32, i32* %11, align 4
  %add = add nsw i32 %12, 1
  %idxprom5 = sext i32 %add to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 %idxprom5
  %14 = load i8*, i8** %arrayidx6, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp7 = icmp ne i32 %conv, 45
  br i1 %cmp7, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %land.lhs.true
  %16 = load i32*, i32** %i.addr, align 8
  %17 = load i32, i32* %16, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %16, align 4
  %add10 = add nsw i32 %17, 1
  %idxprom11 = sext i32 %add10 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %18, i64 %idxprom11
  %19 = load i8*, i8** %arrayidx12, align 8
  store i8* %19, i8** %retval
  br label %return

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.13, %if.then.9, %if.then
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare i32 @StringEndsWith(i8*, i8*) #2

declare void @ErrorInit(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #2

declare zeroext i16 @FirstFile(i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @PrintUsage(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.188, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.189, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.190, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.191, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.192, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.193, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.194, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.195, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.196, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.197, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.198, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.199, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.200, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.201, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.202, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.203, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.204, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.205, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.206, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.207, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.208, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.209, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.210, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.212, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.213, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @ColourInit() #2

declare void @LanguageInit() #2

declare %union.rec* @MakeWordThree(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @load(i8* %xstr, i32 %xpre, i32 %xleft, i32 %xright, i32 %xindef, i8 zeroext %xprec) #0 {
entry:
  %xstr.addr = alloca i8*, align 8
  %xpre.addr = alloca i32, align 4
  %xleft.addr = alloca i32, align 4
  %xright.addr = alloca i32, align 4
  %xindef.addr = alloca i32, align 4
  %xprec.addr = alloca i8, align 1
  %s = alloca %union.rec*, align 8
  store i8* %xstr, i8** %xstr.addr, align 8
  store i32 %xpre, i32* %xpre.addr, align 4
  store i32 %xleft, i32* %xleft.addr, align 4
  store i32 %xright, i32* %xright.addr, align 4
  store i32 %xindef, i32* %xindef.addr, align 4
  store i8 %xprec, i8* %xprec.addr, align 1
  %0 = load i8*, i8** %xstr.addr, align 8
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2 = load i8, i8* %xprec.addr, align 1
  %3 = load i32, i32* %xindef.addr, align 4
  %4 = load i32, i32* %xpre.addr, align 4
  %5 = load %union.rec*, %union.rec** @StartSym, align 8
  %call = call %union.rec* @InsertSym(i8* %0, i8 zeroext -113, %struct.FILE_POS* %1, i8 zeroext %2, i32 %3, i32 0, i32 %4, %union.rec* %5, %union.rec* null)
  store %union.rec* %call, %union.rec** %s, align 8
  %6 = load i32, i32* %xleft.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = load %union.rec*, %union.rec** %s, align 8
  %call1 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8 zeroext -112, %struct.FILE_POS* %7, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %8, %union.rec* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %xright.addr, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = load %union.rec*, %union.rec** %s, align 8
  %call4 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.215, i32 0, i32 0), i8 zeroext -110, %struct.FILE_POS* %10, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %11, %union.rec* null)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %xleft.addr, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.5
  %13 = load i32, i32* %xright.addr, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %xpre.addr, align 4
  %cmp = icmp ne i32 %14, 79
  br i1 %cmp, label %land.lhs.true.9, label %if.end.12

land.lhs.true.9:                                  ; preds = %land.lhs.true.8
  %15 = load i32, i32* %xpre.addr, align 4
  %cmp10 = icmp ne i32 %15, 80
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.9
  %16 = load %union.rec*, %union.rec** %s, align 8
  %os1 = bitcast %union.rec* %16 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %oright_assoc = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %17 = bitcast [3 x i8]* %oright_assoc to i24*
  %bf.load = load i24, i24* %17, align 1
  %bf.clear = and i24 %bf.load, -17
  %bf.set = or i24 %bf.clear, 16
  store i24 %bf.set, i24* %17, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true, %if.end.5
  %18 = load %union.rec*, %union.rec** %s, align 8
  ret %union.rec* %18
}

declare void @FontInit() #2

declare void @InitTime() #2

declare void @FilterInit() #2

declare void @EnvInit() #2

declare void @PushScope(%union.rec*, i32, i32) #2

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #2

declare void @InitParser(i8*) #2

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #2

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #2

declare i32 @DisposeObject(%union.rec*) #2

declare void @TransferEnd(%union.rec*) #2

declare void @TransferClose() #2

declare void @CrossClose() #2

declare void @CloseFiles() #2

declare void @FilterScavenge(i32) #2

declare void @CheckErrorBlocks() #2

; Function Attrs: nounwind
declare i32 @catclose(i8*) #1

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
