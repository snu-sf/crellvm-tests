; ModuleID = './MultiSource.Applications.ClamAV/68.clamscan_clamscan.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.s_info = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.optstruct = type { %struct.optnode*, i8* }
%struct.optnode = type { i8, i8*, i8*, %struct.optnode* }

@.str = private unnamed_addr constant [12 x i8] c"hvd:wriVl:m\00", align 1
@clamscan_shortopt = global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@recursion = global i16 0, align 2
@printinfected = global i16 0, align 2
@bell = global i16 0, align 2
@clamscan_longopt = internal global [62 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.125, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.126, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.130, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0), i32 2, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [31 x i8] c"!Can't parse the command line\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@mprintf_verbose = external global i16, align 2
@logg_verbose = external global i16, align 2
@.str.3 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@mprintf_quiet = external global i16, align 2
@.str.4 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@mprintf_stdout = external global i16, align 2
@.str.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"infected\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bell\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"tempdir\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"leave-temps\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@logg_file = external global i8*, align 8
@.str.14 = private unnamed_addr constant [84 x i8] c"#\0A-------------------------------------------------------------------------------\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"!Problem with internal logger.\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"max-space\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"!--max-space requires a natural number\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"max-files\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"!--max-files requires a natural number\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"max-recursion\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"!--max-recursion requires a natural number\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"max-mail-recursion\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"!--max-mail-recursion requires a natural number\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"max-dir-recursion\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"!--max-dir-recursion requires a natural number\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"max-ratio\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"!--max-ratio requires a natural number\0A\00", align 1
@info = common global %struct.s_info zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"disable-summary\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"no-summary\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"\0A----------- SCAN SUMMARY -----------\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Known viruses: %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Engine version: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Scanned directories: %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Scanned files: %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Infected files: %u\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Not removed: %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Not %s: %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"moved\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"copied\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Data scanned: %2.2lf MB\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"                       Clam AntiVirus Scanner devel-20071218\0A\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"      (C) 2002 - 2007 ClamAV Team - http://www.clamav.net/team\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [65 x i8] c"    --help                -h             Print this help screen\0A\00", align 1
@.str.46 = private unnamed_addr constant [63 x i8] c"    --version             -V             Print version number\0A\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"    --verbose             -v             Be verbose\0A\00", align 1
@.str.48 = private unnamed_addr constant [76 x i8] c"    --debug                              Enable libclamav's debug messages\0A\00", align 1
@.str.49 = private unnamed_addr constant [69 x i8] c"    --quiet                              Only output error messages\0A\00", align 1
@.str.50 = private unnamed_addr constant [76 x i8] c"    --stdout                             Write to stdout instead of stderr\0A\00", align 1
@.str.51 = private unnamed_addr constant [77 x i8] c"    --no-summary                         Disable summary at end of scanning\0A\00", align 1
@.str.52 = private unnamed_addr constant [68 x i8] c"    --infected            -i             Only print infected files\0A\00", align 1
@.str.53 = private unnamed_addr constant [72 x i8] c"    --bell                               Sound bell on virus detection\0A\00", align 1
@.str.54 = private unnamed_addr constant [78 x i8] c"    --tempdir=DIRECTORY                  Create temporary files in DIRECTORY\0A\00", align 1
@.str.55 = private unnamed_addr constant [72 x i8] c"    --leave-temps                        Do not remove temporary files\0A\00", align 1
@.str.56 = private unnamed_addr constant [80 x i8] c"    --database=FILE/DIR   -d FILE/DIR    Load virus database from FILE or load\0A\00", align 1
@.str.57 = private unnamed_addr constant [77 x i8] c"                                         all .cvd and .db[2] files from DIR\0A\00", align 1
@.str.58 = private unnamed_addr constant [67 x i8] c"    --log=FILE            -l FILE        Save scan report to FILE\0A\00", align 1
@.str.59 = private unnamed_addr constant [74 x i8] c"    --recursive           -r             Scan subdirectories recursively\0A\00", align 1
@.str.60 = private unnamed_addr constant [77 x i8] c"    --remove                             Remove infected files. Be careful!\0A\00", align 1
@.str.61 = private unnamed_addr constant [77 x i8] c"    --move=DIRECTORY                     Move infected files into DIRECTORY\0A\00", align 1
@.str.62 = private unnamed_addr constant [77 x i8] c"    --copy=DIRECTORY                     Copy infected files into DIRECTORY\0A\00", align 1
@.str.63 = private unnamed_addr constant [80 x i8] c"    --exclude=PATT                       Don't scan file names containing PATT\0A\00", align 1
@.str.64 = private unnamed_addr constant [81 x i8] c"    --exclude-dir=PATT                   Don't scan directories containing PATT\0A\00", align 1
@.str.65 = private unnamed_addr constant [79 x i8] c"    --include=PATT                       Only scan file names containing PATT\0A\00", align 1
@.str.66 = private unnamed_addr constant [80 x i8] c"    --include-dir=PATT                   Only scan directories containing PATT\0A\00", align 1
@.str.67 = private unnamed_addr constant [80 x i8] c"    --detect-pua                         Detect Possibly Unwanted Applications\0A\00", align 1
@.str.68 = private unnamed_addr constant [68 x i8] c"    --no-mail                            Disable mail file support\0A\00", align 1
@.str.69 = private unnamed_addr constant [85 x i8] c"    --no-phishing-sigs                   Disable signature-based phishing detection\0A\00", align 1
@.str.70 = private unnamed_addr constant [79 x i8] c"    --no-phishing-scan-urls              Disable url-based phishing detection\0A\00", align 1
@.str.71 = private unnamed_addr constant [117 x i8] c"    --no-phishing-restrictedscan         Enable phishing detection for all domains (might lead to false positives!)\0A\00", align 1
@.str.72 = private unnamed_addr constant [96 x i8] c"    --phishing-ssl                       Always block SSL mismatches in URLs (phishing module)\0A\00", align 1
@.str.73 = private unnamed_addr constant [86 x i8] c"    --phishing-cloak                     Always block cloaked URLs (phishing module)\0A\00", align 1
@.str.74 = private unnamed_addr constant [72 x i8] c"    --no-algorithmic                     Disable algorithmic detection\0A\00", align 1
@.str.75 = private unnamed_addr constant [62 x i8] c"    --no-pe                              Disable PE analysis\0A\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"    --no-elf                             Disable ELF support\0A\00", align 1
@.str.77 = private unnamed_addr constant [63 x i8] c"    --no-ole2                            Disable OLE2 support\0A\00", align 1
@.str.78 = private unnamed_addr constant [62 x i8] c"    --no-pdf                             Disable PDF support\0A\00", align 1
@.str.79 = private unnamed_addr constant [63 x i8] c"    --no-html                            Disable HTML support\0A\00", align 1
@.str.80 = private unnamed_addr constant [76 x i8] c"    --no-archive                         Disable libclamav archive support\0A\00", align 1
@.str.81 = private unnamed_addr constant [80 x i8] c"    --detect-broken                      Try to detect broken executable files\0A\00", align 1
@.str.82 = private unnamed_addr constant [67 x i8] c"    --block-encrypted                    Block encrypted archives\0A\00", align 1
@.str.83 = private unnamed_addr constant [76 x i8] c"    --block-max                          Block archives that exceed limits\0A\00", align 1
@.str.84 = private unnamed_addr constant [65 x i8] c"    --mail-follow-urls                   Download and scan URLs\0A\00", align 1
@.str.85 = private unnamed_addr constant [79 x i8] c"    --max-space=#n                       Only extract first #n kilobytes from\0A\00", align 1
@.str.86 = private unnamed_addr constant [57 x i8] c"                                         archived files\0A\00", align 1
@.str.87 = private unnamed_addr constant [75 x i8] c"    --max-files=#n                       Only extract first #n files from\0A\00", align 1
@.str.88 = private unnamed_addr constant [51 x i8] c"                                         archives\0A\00", align 1
@.str.89 = private unnamed_addr constant [74 x i8] c"    --max-ratio=#n                       Maximum compression ratio limit\0A\00", align 1
@.str.90 = private unnamed_addr constant [74 x i8] c"    --max-recursion=#n                   Maximum archive recursion level\0A\00", align 1
@.str.91 = private unnamed_addr constant [76 x i8] c"    --max-dir-recursion=#n               Maximum directory recursion level\0A\00", align 1
@.str.92 = private unnamed_addr constant [71 x i8] c"    --max-mail-recursion=#n              Maximum mail recursion level\0A\00", align 1
@.str.93 = private unnamed_addr constant [72 x i8] c"    --unzip[=FULLPATH]                   Enable support for .zip files\0A\00", align 1
@.str.94 = private unnamed_addr constant [72 x i8] c"    --unrar[=FULLPATH]                   Enable support for .rar files\0A\00", align 1
@.str.95 = private unnamed_addr constant [72 x i8] c"    --arj[=FULLPATH]                     Enable support for .arj files\0A\00", align 1
@.str.96 = private unnamed_addr constant [72 x i8] c"    --unzoo[=FULLPATH]                   Enable support for .zoo files\0A\00", align 1
@.str.97 = private unnamed_addr constant [72 x i8] c"    --lha[=FULLPATH]                     Enable support for .lha files\0A\00", align 1
@.str.98 = private unnamed_addr constant [72 x i8] c"    --jar[=FULLPATH]                     Enable support for .jar files\0A\00", align 1
@.str.99 = private unnamed_addr constant [72 x i8] c"    --tar[=FULLPATH]                     Enable support for .tar files\0A\00", align 1
@.str.100 = private unnamed_addr constant [72 x i8] c"    --deb[=FULLPATH to ar]               Enable support for .deb files\0A\00", align 1
@.str.101 = private unnamed_addr constant [82 x i8] c"    --tgz[=FULLPATH]                     Enable support for .tar.gz, .tgz files\0A\0A\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"config-file\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"multiscan\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"exclude-dir\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"include-dir\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"detect-pua\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"disable-archive\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"no-archive\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"detect-broken\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"block-encrypted\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"block-max\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"no-pe\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"no-elf\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"no-ole2\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"no-pdf\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"no-html\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"no-mail\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"mail-follow-urls\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"no-phishing-sigs\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"no-phishing-scan-urls\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"no-phishing-restrictedscan\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"phishing-ssl\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"phishing-cloak\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"no-algorithmic\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"unrar\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"arj\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"unzoo\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"jar\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"tgz\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"deb\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"dev-ac-only\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"dev-ac-depth\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ds = alloca i32, align 4
  %dms = alloca i32, align 4
  %ret = alloca i32, align 4
  %mb = alloca double, align 8
  %t1 = alloca %struct.timeval, align 8
  %t2 = alloca %struct.timeval, align 8
  %tz = alloca %struct.timezone, align 4
  %opt = alloca %struct.optstruct*, align 8
  %pt = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i8*, i8** @clamscan_shortopt, align 8
  %call = call %struct.optstruct* @opt_parse(i32 %0, i8** %1, i8* %2, %struct.option* getelementptr inbounds ([62 x %struct.option], [62 x %struct.option]* @clamscan_longopt, i32 0, i32 0), i8** null)
  store %struct.optstruct* %call, %struct.optstruct** %opt, align 8
  %3 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %tobool = icmp ne %struct.optstruct* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call1 = call i32 @opt_check(%struct.optstruct* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i16 1, i16* @mprintf_verbose, align 2
  store i16 1, i16* @logg_verbose, align 2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call5 = call i32 @opt_check(%struct.optstruct* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i16 1, i16* @mprintf_quiet, align 2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %6 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call9 = call i32 @opt_check(%struct.optstruct* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i16 1, i16* @mprintf_stdout, align 2
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %7 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call13 = call i32 @opt_check(%struct.optstruct* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  call void @cl_debug()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %8 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call17 = call i32 @opt_check(%struct.optstruct* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %9 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %9)
  call void @print_version()
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %10 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call21 = call i32 @opt_check(%struct.optstruct* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %11 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %11)
  call void @help()
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %12 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call25 = call i32 @opt_check(%struct.optstruct* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i16 1, i16* @recursion, align 2
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  %13 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call29 = call i32 @opt_check(%struct.optstruct* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i16 1, i16* @printinfected, align 2
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %14 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call33 = call i32 @opt_check(%struct.optstruct* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i16 1, i16* @bell, align 2
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %15 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call37 = call i32 @opt_check(%struct.optstruct* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %16 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call40 = call i8* @opt_arg(%struct.optstruct* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  call void @cl_settempdir(i8* %call40, i16 signext 0)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %17 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call42 = call i32 @opt_check(%struct.optstruct* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  call void @cl_settempdir(i8* null, i16 signext 1)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  %18 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call46 = call i32 @opt_check(%struct.optstruct* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.45
  %19 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call49 = call i8* @opt_arg(%struct.optstruct* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call49, i8** @logg_file, align 8
  %call50 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.14, i32 0, i32 0))
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  %20 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %20)
  store i32 62, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.48
  br label %if.end.54

if.else:                                          ; preds = %if.end.45
  store i8* null, i8** @logg_file, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.end.53
  %21 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call55 = call i32 @opt_check(%struct.optstruct* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0))
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.70

if.then.57:                                       ; preds = %if.end.54
  %22 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call58 = call i8* @opt_arg(%struct.optstruct* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call58, i8** %pt, align 8
  %23 = load i8*, i8** %pt, align 8
  %call59 = call i8* @strchr(i8* %23, i32 77) #5
  %tobool60 = icmp ne i8* %call59, null
  br i1 %tobool60, label %if.end.69, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.57
  %24 = load i8*, i8** %pt, align 8
  %call61 = call i8* @strchr(i8* %24, i32 109) #5
  %tobool62 = icmp ne i8* %call61, null
  br i1 %tobool62, label %if.end.69, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true
  %25 = load i8*, i8** %pt, align 8
  %call64 = call i32 @isnumb(i8* %25)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.68, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  %call67 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0))
  %26 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %26)
  store i32 40, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true, %if.then.57
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.54
  %27 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call71 = call i32 @opt_check(%struct.optstruct* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %if.end.70
  %28 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call74 = call i8* @opt_arg(%struct.optstruct* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %call75 = call i32 @isnumb(i8* %call74)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.79, label %if.then.77

if.then.77:                                       ; preds = %if.then.73
  %call78 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0))
  %29 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %29)
  store i32 40, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.70
  %30 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call81 = call i32 @opt_check(%struct.optstruct* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.90

if.then.83:                                       ; preds = %if.end.80
  %31 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call84 = call i8* @opt_arg(%struct.optstruct* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  %call85 = call i32 @isnumb(i8* %call84)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %if.then.83
  %call88 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0))
  %32 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %32)
  store i32 40, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.then.83
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.80
  %33 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call91 = call i32 @opt_check(%struct.optstruct* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0))
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %if.end.90
  %34 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call94 = call i8* @opt_arg(%struct.optstruct* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0))
  %call95 = call i32 @isnumb(i8* %call94)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.99, label %if.then.97

if.then.97:                                       ; preds = %if.then.93
  %call98 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  %35 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %35)
  store i32 40, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.then.93
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.90
  %36 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call101 = call i32 @opt_check(%struct.optstruct* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.110

if.then.103:                                      ; preds = %if.end.100
  %37 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call104 = call i8* @opt_arg(%struct.optstruct* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  %call105 = call i32 @isnumb(i8* %call104)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %if.then.103
  %call108 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i32 0, i32 0))
  %38 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %38)
  store i32 40, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.then.103
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.100
  %39 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call111 = call i32 @opt_check(%struct.optstruct* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %if.end.110
  %40 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call114 = call i8* @opt_arg(%struct.optstruct* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  %call115 = call i32 @isnumb(i8* %call114)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.119, label %if.then.117

if.then.117:                                      ; preds = %if.then.113
  %call118 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  %41 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %41)
  store i32 40, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.110
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.s_info* @info to i8*), i8 0, i64 32, i32 8, i1 false)
  %call121 = call i32 @gettimeofday(%struct.timeval* %t1, %struct.timezone* %tz) #3
  %42 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call122 = call i32 @scanmanager(%struct.optstruct* %42)
  store i32 %call122, i32* %ret, align 4
  %43 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call123 = call i32 @opt_check(%struct.optstruct* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0))
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.159, label %land.lhs.true.125

land.lhs.true.125:                                ; preds = %if.end.120
  %44 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call126 = call i32 @opt_check(%struct.optstruct* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.159, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.125
  %call129 = call i32 @gettimeofday(%struct.timeval* %t2, %struct.timezone* %tz) #3
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t2, i32 0, i32 0
  %45 = load i64, i64* %tv_sec, align 8
  %tv_sec130 = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 0
  %46 = load i64, i64* %tv_sec130, align 8
  %sub = sub nsw i64 %45, %46
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %ds, align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t2, i32 0, i32 1
  %47 = load i64, i64* %tv_usec, align 8
  %tv_usec131 = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 1
  %48 = load i64, i64* %tv_usec131, align 8
  %sub132 = sub nsw i64 %47, %48
  %conv133 = trunc i64 %sub132 to i32
  store i32 %conv133, i32* %dms, align 4
  %49 = load i32, i32* %dms, align 4
  %cmp = icmp slt i32 %49, 0
  %cond = select i1 %cmp, i32 1, i32 0
  %50 = load i32, i32* %ds, align 4
  %sub135 = sub nsw i32 %50, %cond
  store i32 %sub135, i32* %ds, align 4
  %51 = load i32, i32* %dms, align 4
  %cmp136 = icmp slt i32 %51, 0
  %cond138 = select i1 %cmp136, i32 1000000, i32 0
  %52 = load i32, i32* %dms, align 4
  %add = add nsw i32 %52, %cond138
  store i32 %add, i32* %dms, align 4
  %call139 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0))
  %53 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 0), align 4
  %call140 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 %53)
  %call141 = call i8* @cl_retver()
  %call142 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %call141)
  %54 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 1), align 4
  %call143 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %54)
  %55 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 2), align 4
  %call144 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i32 %55)
  %56 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 3), align 4
  %call145 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i32 %56)
  %57 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %tobool146 = icmp ne i32 %57, 0
  br i1 %tobool146, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.then.128
  %58 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 4), align 4
  %call148 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32 %58)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.then.128
  %59 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %tobool150 = icmp ne i32 %59, 0
  br i1 %tobool150, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %if.end.149
  %60 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %call152 = call i32 @opt_check(%struct.optstruct* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  %tobool153 = icmp ne i32 %call152, 0
  %cond154 = select i1 %tobool153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)
  %61 = load i32, i32* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 5), align 4
  %call155 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* %cond154, i32 %61)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.151, %if.end.149
  %62 = load i64, i64* getelementptr inbounds (%struct.s_info, %struct.s_info* @info, i32 0, i32 6), align 8
  %mul = mul i64 %62, 4
  %conv157 = uitofp i64 %mul to double
  %div = fdiv double %conv157, 1.024000e+03
  store double %div, double* %mb, align 8
  %63 = load double, double* %mb, align 8
  %call158 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), double %63)
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.156, %land.lhs.true.125, %if.end.120
  %64 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %64)
  %65 = load i32, i32* %ret, align 4
  store i32 %65, i32* %retval
  br label %return

return:                                           ; preds = %if.end.159, %if.then.117, %if.then.107, %if.then.97, %if.then.87, %if.then.77, %if.then.66, %if.then.52, %if.then.23, %if.then.19, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare %struct.optstruct* @opt_parse(i32, i8**, i8*, %struct.option*, i8**) #1

declare void @mprintf(i8*, ...) #1

declare i32 @opt_check(%struct.optstruct*, i8*) #1

declare void @cl_debug() #1

declare void @opt_free(%struct.optstruct*) #1

declare void @print_version() #1

; Function Attrs: nounwind uwtable
define void @help() #0 {
entry:
  store i16 1, i16* @mprintf_stdout, align 2
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.43, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.44, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.45, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.46, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.48, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.49, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.50, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.51, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.52, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.53, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.54, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.55, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.56, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.57, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.58, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.59, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.60, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.61, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.62, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.63, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.64, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.65, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.66, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.67, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.68, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.69, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.70, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.71, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.72, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.73, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.74, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.75, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.76, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.77, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.78, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.79, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.80, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.81, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.82, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.83, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.84, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.85, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.86, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.87, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.88, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.89, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.90, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.91, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.92, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.93, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.94, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.95, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.96, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.97, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.98, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.99, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.100, i32 0, i32 0))
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.101, i32 0, i32 0))
  ret void
}

declare void @cl_settempdir(i8*, i16 signext) #1

declare i8* @opt_arg(%struct.optstruct*, i8*) #1

declare i32 @logg(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i32 @isnumb(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare i32 @scanmanager(%struct.optstruct*) #1

declare i8* @cl_retver() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
