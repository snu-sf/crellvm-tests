; ModuleID = './MultiSource.Applications.ClamAV/27.libclamav_sis.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sis_file_hdr = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.sis_file_hdr6 = type { i32, i32, i32, i32, [4 x i32] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"SIS: fstat() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"SIS: Broken or not a SIS file (too small)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SIS: mmap() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SIS: mmap'ed file\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SIS: File too large (> %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SIS: Not a SIS file\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"SIS: EPOC release 3, 4 or 5\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SIS: EPOC release 6\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SIS: Application(?)\0A\00", align 1
@.str.9 = private unnamed_addr constant [77 x i8] c"SIS: Unknown value of UID 2 (EPOC release == 0x%x) -> not a real SIS file??\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"SIS: Number of languages: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"SIS: Broken file structure (language records)\0A\00", align 1
@langcodes = internal global [98 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"SIS: Supported languages: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"SIS: Incorrect number of languages (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"SIS: Offset of languages records: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"SIS: Installation language: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"SIS: Number of requisites: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"SIS: Offset of requisites records: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"SIS: Options:\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"SIS:    * File is in Unicode format\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"SIS:    * File is distributable\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"SIS:    * Archived files are not compressed\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"SIS:    * Archived files are compressed\0A\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"SIS:    * File installation shuts down all applications\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"SIS: Type: Contains an application\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"SIS: Type: Contains a shared/system component\0A\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"SIS: Type: Contains an optional (selectable) component\0A\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"SIS: Type: Configures an existing application or service\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"SIS: Type: Patches an existing component\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"SIS: Type: Upgrades an existing component\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"SIS: Unknown value of type\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"SIS: Major version: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"SIS: Minor version: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"SIS: Maximum space required: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"SIS: Files limit reached (max: %d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"SIS.ExceededFilesLimit\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"SIS: Number of files: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"SIS: Offset of files records: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"SIS: Broken file structure (frecord)\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"SIS: Can't create temporary directory %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"SIS: -----\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"SIS: Simple file record\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"SIS: Multiple languages file record\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"SIS: Options record\0A\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"SIS: Number of options: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"SIS: Incorrect number of options\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"SIS: If/ElseIf record\0A\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"SIS: Size of conditional expression: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"SIS: Incorrect size of conditional expression\0A\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"SIS: Else record\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"SIS: EndIf record\0A\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"SIS: Unknown file record type\0A\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"SIS:  ****** Scanning extracted files ******\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"FR\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"IT\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"FI\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"SG\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"PO\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"TU\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"HU\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"DU\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"BL\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"BG\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"NZ\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"SK\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"SL\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"HK\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"JA\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"HY\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"TL\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"BN\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"MY\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"HR\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"CE\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"ET\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"FA\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"CF\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"GD\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"KA\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"EL\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"GU\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"HE\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"GA\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"KN\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"KK\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"KO\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"LV\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"LT\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"MK\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"MS\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"ML\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"MO\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"NN\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"BP\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"PA\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"SO\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"OS\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"TE\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"BO\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"TK\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"UK\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"CY\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"ZU\00", align 1
@.str.149 = private unnamed_addr constant [45 x i8] c"SIS: sis_extract_simple: Broken file record\0A\00", align 1
@.str.150 = private unnamed_addr constant [31 x i8] c"SIS: File type: Standard file\0A\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"SIS: File type: Text file\0A\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.154 = private unnamed_addr constant [32 x i8] c"SIS: File type: Component file\0A\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"SIS: File type: Run file\0A\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.158 = private unnamed_addr constant [36 x i8] c"SIS:    * During installation only\0A\00", align 1
@.str.159 = private unnamed_addr constant [31 x i8] c"SIS:    * During removal only\0A\00", align 1
@.str.160 = private unnamed_addr constant [43 x i8] c"SIS:    * During installation and removal\0A\00", align 1
@.str.161 = private unnamed_addr constant [63 x i8] c"SIS: sis_extract_simple: Unknown value in file details (0x%x)\0A\00", align 1
@.str.162 = private unnamed_addr constant [43 x i8] c"SIS:    * Ends when installation finished\0A\00", align 1
@.str.163 = private unnamed_addr constant [48 x i8] c"SIS:    * Waits until closed before continuing\0A\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"SIS: File type: Null file\0A\00", align 1
@.str.165 = private unnamed_addr constant [27 x i8] c"SIS: File type: MIME file\0A\00", align 1
@.str.166 = private unnamed_addr constant [39 x i8] c"SIS: Unknown file type in file record\0A\00", align 1
@.str.167 = private unnamed_addr constant [71 x i8] c"SIS: sis_extract_simple: Source name too long and will not be decoded\0A\00", align 1
@.str.168 = private unnamed_addr constant [50 x i8] c"SIS: sis_extract_simple: Broken source name data\0A\00", align 1
@.str.169 = private unnamed_addr constant [22 x i8] c"SIS: Source name: %s\0A\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"SIS: Source name not decoded\0A\00", align 1
@.str.171 = private unnamed_addr constant [76 x i8] c"SIS: sis_extract_simple: Destination name too long and will not be decoded\0A\00", align 1
@.str.172 = private unnamed_addr constant [55 x i8] c"SIS: sis_extract_simple: Broken destination name data\0A\00", align 1
@.str.173 = private unnamed_addr constant [27 x i8] c"SIS: Destination name: %s\0A\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"SIS: Destination name not decoded\0A\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"SIS: Null file (installation record)\0A\00", align 1
@.str.177 = private unnamed_addr constant [53 x i8] c"SIS: sis_extract_simple: Broken file data (fileoff)\0A\00", align 1
@.str.178 = private unnamed_addr constant [37 x i8] c"SIS: Null file (installation track)\0A\00", align 1
@.str.179 = private unnamed_addr constant [62 x i8] c"SIS: sis_extract_simple: Broken file data (filelen, fileoff)\0A\00", align 1
@.str.180 = private unnamed_addr constant [27 x i8] c"SIS: Empty file, skipping\0A\00", align 1
@.str.181 = private unnamed_addr constant [26 x i8] c"SIS: Compressed size: %u\0A\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"SIS: Original size: %u\0A\00", align 1
@.str.183 = private unnamed_addr constant [35 x i8] c"SIS: Size exceeded (%u, max: %lu)\0A\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"SIS.ExceededFileSize\00", align 1
@.str.185 = private unnamed_addr constant [62 x i8] c"SIS: sis_extract_simple: Can't allocate decompression buffer\0A\00", align 1
@.str.186 = private unnamed_addr constant [52 x i8] c"SIS: sis_extract_simple: File decompression failed\0A\00", align 1
@.str.187 = private unnamed_addr constant [38 x i8] c"SIS: WARNING: Real original size: %u\0A\00", align 1
@.str.188 = private unnamed_addr constant [51 x i8] c"SIS: sis_extract_simple: Can't create new file %s\0A\00", align 1
@.str.189 = private unnamed_addr constant [53 x i8] c"SIS: sis_extract_simple: Can't write %d bytes to %s\0A\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"SIS: File decompressed into %s\0A\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"SIS: File saved into %s\0A\00", align 1
@.str.192 = private unnamed_addr constant [52 x i8] c"SIS: sis_extract_simple: Can't close descriptor %d\0A\00", align 1
@.str.193 = private unnamed_addr constant [55 x i8] c"SIS: sis_utf16_decode: Broken filename (length == %d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scansis(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %file_hdr = alloca %struct.sis_file_hdr, align 4
  %file_hdr6 = alloca %struct.sis_file_hdr6, align 4
  %release = alloca i8, align 1
  %compressed = alloca i8, align 1
  %ifile = alloca i8, align 1
  %opts = alloca i16, align 2
  %nlangs = alloca i16, align 2
  %langrecs = alloca i16*, align 8
  %nfiles = alloca i16, align 2
  %frecord = alloca i32, align 4
  %n = alloca i32, align 4
  %length = alloca i64, align 8
  %mfile = alloca i8*, align 8
  %langs = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %sb = alloca %struct.stat, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8 0, i8* %release, align 1
  store i8 0, i8* %ifile, align 1
  store i8* null, i8** %mfile, align 8
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %sb) #3
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %cmp1 = icmp slt i64 %1, 68
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %st_size4 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %2 = load i64, i64* %st_size4, align 8
  store i64 %2, i64* %length, align 8
  %3 = load i64, i64* %length, align 8
  %cmp5 = icmp ule i64 %3, 134217728
  br i1 %cmp5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.end.3
  %4 = load i64, i64* %length, align 8
  %5 = load i32, i32* %desc.addr, align 4
  %call7 = call i8* @mmap(i8* null, i64 %4, i32 1, i32 2, i32 %5, i64 0) #3
  store i8* %call7, i8** %mfile, align 8
  %6 = load i8*, i8** %mfile, align 8
  %cmp8 = icmp eq i8* %6, inttoptr (i64 -1 to i8*)
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %7 = bitcast %struct.sis_file_hdr* %file_hdr to i8*
  %8 = load i8*, i8** %mfile, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 68, i32 1, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.3
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 134217728)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.10
  %uid3 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 2
  %9 = load i32, i32* %uid3, align 4
  %cmp13 = icmp ne i32 %9, 268436505
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  %10 = load i8*, i8** %mfile, align 8
  %11 = load i64, i64* %length, align 8
  %call15 = call i32 @munmap(i8* %10, i64 %11) #3
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %uid2 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 1
  %12 = load i32, i32* %uid2, align 4
  switch i32 %12, label %sw.default [
    i32 268435565, label %sw.bb
    i32 268450322, label %sw.bb.17
    i32 268450254, label %sw.bb.18
    i32 268450360, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.16
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  store i8 3, i8* %release, align 1
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.16
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  store i8 6, i8* %release, align 1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.16, %if.end.16
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.16
  %uid219 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 1
  %13 = load i32, i32* %uid219, align 4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.9, i32 0, i32 0), i32 %13)
  %14 = load i8*, i8** %mfile, align 8
  %15 = load i64, i64* %length, align 8
  %call20 = call i32 @munmap(i8* %14, i64 %15) #3
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.17, %sw.bb
  %nlangs21 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 5
  %16 = load i16, i16* %nlangs21, align 2
  store i16 %16, i16* %nlangs, align 2
  %17 = load i16, i16* %nlangs, align 2
  %conv = zext i16 %17 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 %conv)
  %18 = load i16, i16* %nlangs, align 2
  %conv22 = zext i16 %18 to i32
  %tobool = icmp ne i32 %conv22, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.73

land.lhs.true:                                    ; preds = %sw.epilog
  %19 = load i16, i16* %nlangs, align 2
  %conv23 = zext i16 %19 to i32
  %cmp24 = icmp slt i32 %conv23, 100
  br i1 %cmp24, label %if.then.26, label %if.else.73

if.then.26:                                       ; preds = %land.lhs.true
  %plangs = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 18
  %20 = load i32, i32* %plangs, align 4
  %conv27 = zext i32 %20 to i64
  %21 = load i64, i64* %length, align 8
  %cmp28 = icmp uge i64 %conv27, %21
  br i1 %cmp28, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %plangs30 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 18
  %22 = load i32, i32* %plangs30, align 4
  %23 = load i16, i16* %nlangs, align 2
  %conv31 = zext i16 %23 to i32
  %mul = mul nsw i32 %conv31, 2
  %add = add i32 %22, %mul
  %st_size32 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %24 = load i64, i64* %st_size32, align 8
  %conv33 = trunc i64 %24 to i32
  %cmp34 = icmp uge i32 %add, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false, %if.then.26
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0))
  %25 = load i8*, i8** %mfile, align 8
  %26 = load i64, i64* %length, align 8
  %call37 = call i32 @munmap(i8* %25, i64 %26) #3
  store i32 -124, i32* %retval
  br label %return

if.end.38:                                        ; preds = %lor.lhs.false
  %27 = load i16, i16* %nlangs, align 2
  %conv39 = zext i16 %27 to i32
  %mul40 = mul nsw i32 %conv39, 2
  %conv41 = sext i32 %mul40 to i64
  %call42 = call i8* @cli_malloc(i64 %conv41)
  %28 = bitcast i8* %call42 to i16*
  store i16* %28, i16** %langrecs, align 8
  %tobool43 = icmp ne i16* %28, null
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.38
  %29 = load i8*, i8** %mfile, align 8
  %30 = load i64, i64* %length, align 8
  %call45 = call i32 @munmap(i8* %29, i64 %30) #3
  store i32 -114, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.38
  %31 = load i16*, i16** %langrecs, align 8
  %32 = bitcast i16* %31 to i8*
  %33 = load i8*, i8** %mfile, align 8
  %plangs47 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 18
  %34 = load i32, i32* %plangs47, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  %35 = load i16, i16* %nlangs, align 2
  %conv48 = zext i16 %35 to i32
  %mul49 = mul nsw i32 %conv48, 2
  %conv50 = sext i32 %mul49 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %add.ptr, i64 %conv50, i32 1, i1 false)
  %36 = load i16, i16* %nlangs, align 2
  %conv51 = zext i16 %36 to i32
  %mul52 = mul nsw i32 %conv51, 3
  %add53 = add nsw i32 %mul52, 1
  %conv54 = sext i32 %add53 to i64
  %call55 = call i8* @cli_calloc(i64 %conv54, i64 1)
  store i8* %call55, i8** %langs, align 8
  %tobool56 = icmp ne i8* %call55, null
  br i1 %tobool56, label %if.end.59, label %if.then.57

if.then.57:                                       ; preds = %if.end.46
  %37 = load i8*, i8** %mfile, align 8
  %38 = load i64, i64* %length, align 8
  %call58 = call i32 @munmap(i8* %37, i64 %38) #3
  %39 = load i16*, i16** %langrecs, align 8
  %40 = bitcast i16* %39 to i8*
  call void @free(i8* %40) #3
  store i32 -114, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.46
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.59
  %41 = load i32, i32* %i, align 4
  %42 = load i16, i16* %nlangs, align 2
  %conv60 = zext i16 %42 to i32
  %cmp61 = icmp slt i32 %41, %conv60
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i8*, i8** %langs, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load i16*, i16** %langrecs, align 8
  %arrayidx = getelementptr inbounds i16, i16* %45, i64 %idxprom
  %46 = load i16, i16* %arrayidx, align 2
  %conv63 = zext i16 %46 to i32
  %rem = srem i32 %conv63, 98
  %idxprom64 = sext i32 %rem to i64
  %arrayidx65 = getelementptr inbounds [98 x i8*], [98 x i8*]* @langcodes, i32 0, i64 %idxprom64
  %47 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i8* @strncat(i8* %43, i8* %47, i64 2) #3
  %48 = load i32, i32* %i, align 4
  %49 = load i16, i16* %nlangs, align 2
  %conv67 = zext i16 %49 to i32
  %sub = sub nsw i32 %conv67, 1
  %cmp68 = icmp ne i32 %48, %sub
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %for.body
  %50 = load i8*, i8** %langs, align 8
  %call71 = call i8* @strncat(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 1) #3
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i8*, i8** %langs, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* %52)
  %53 = load i16*, i16** %langrecs, align 8
  %54 = bitcast i16* %53 to i8*
  call void @free(i8* %54) #3
  %55 = load i8*, i8** %langs, align 8
  call void @free(i8* %55) #3
  br label %if.end.76

if.else.73:                                       ; preds = %land.lhs.true, %sw.epilog
  %56 = load i16, i16* %nlangs, align 2
  %conv74 = zext i16 %56 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %conv74)
  %57 = load i8*, i8** %mfile, align 8
  %58 = load i64, i64* %length, align 8
  %call75 = call i32 @munmap(i8* %57, i64 %58) #3
  store i32 -124, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.end
  %plangs77 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 18
  %59 = load i32, i32* %plangs77, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i32 %59)
  %ilang = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 8
  %60 = load i16, i16* %ilang, align 2
  %tobool78 = icmp ne i16 %60, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.76
  %ilang80 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 8
  %61 = load i16, i16* %ilang80, align 2
  %conv81 = zext i16 %61 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i32 %conv81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.76
  %nreqs = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 7
  %62 = load i16, i16* %nreqs, align 2
  %conv83 = zext i16 %62 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 %conv83)
  %preqs = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 20
  %63 = load i32, i32* %preqs, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i32 %63)
  %options = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 13
  %64 = load i16, i16* %options, align 2
  store i16 %64, i16* %opts, align 2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  %65 = load i16, i16* %opts, align 2
  %conv84 = zext i16 %65 to i32
  %and = and i32 %conv84, 1
  %tobool85 = icmp ne i32 %and, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.82
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.82
  %66 = load i16, i16* %opts, align 2
  %conv88 = zext i16 %66 to i32
  %and89 = and i32 %conv88, 2
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.87
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.87
  %67 = load i16, i16* %opts, align 2
  %conv93 = zext i16 %67 to i32
  %and94 = and i32 %conv93, 8
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.end.92
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0))
  store i8 0, i8* %compressed, align 1
  br label %if.end.98

if.else.97:                                       ; preds = %if.end.92
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0))
  store i8 1, i8* %compressed, align 1
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.96
  %68 = load i16, i16* %opts, align 2
  %conv99 = zext i16 %68 to i32
  %and100 = and i32 %conv99, 16
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.98
  %type = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 14
  %69 = load i16, i16* %type, align 2
  %conv104 = zext i16 %69 to i32
  switch i32 %conv104, label %sw.default.111 [
    i32 0, label %sw.bb.105
    i32 1, label %sw.bb.106
    i32 2, label %sw.bb.107
    i32 3, label %sw.bb.108
    i32 4, label %sw.bb.109
    i32 5, label %sw.bb.110
  ]

sw.bb.105:                                        ; preds = %if.end.103
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog.112

sw.bb.106:                                        ; preds = %if.end.103
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0))
  br label %sw.epilog.112

sw.bb.107:                                        ; preds = %if.end.103
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i32 0, i32 0))
  br label %sw.epilog.112

sw.bb.108:                                        ; preds = %if.end.103
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog.112

sw.bb.109:                                        ; preds = %if.end.103
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog.112

sw.bb.110:                                        ; preds = %if.end.103
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0))
  br label %sw.epilog.112

sw.default.111:                                   ; preds = %if.end.103
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0))
  br label %sw.epilog.112

sw.epilog.112:                                    ; preds = %sw.default.111, %sw.bb.110, %sw.bb.109, %sw.bb.108, %sw.bb.107, %sw.bb.106, %sw.bb.105
  %majorver = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 15
  %70 = load i16, i16* %majorver, align 2
  %conv113 = zext i16 %70 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i32 %conv113)
  %minorver = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 16
  %71 = load i16, i16* %minorver, align 2
  %conv114 = zext i16 %71 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i32 %conv114)
  %72 = load i8, i8* %release, align 1
  %conv115 = zext i8 %72 to i32
  %cmp116 = icmp eq i32 %conv115, 6
  br i1 %cmp116, label %if.then.118, label %if.end.125

if.then.118:                                      ; preds = %sw.epilog.112
  %73 = load i64, i64* %length, align 8
  %cmp119 = icmp uge i64 100, %73
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.then.118
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0))
  %74 = load i8*, i8** %mfile, align 8
  %75 = load i64, i64* %length, align 8
  %call122 = call i32 @munmap(i8* %74, i64 %75) #3
  store i32 -124, i32* %retval
  br label %return

if.end.123:                                       ; preds = %if.then.118
  %76 = bitcast %struct.sis_file_hdr6* %file_hdr6 to i8*
  %77 = load i8*, i8** %mfile, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %77, i64 68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %add.ptr124, i64 32, i32 1, i1 false)
  %maxispace = getelementptr inbounds %struct.sis_file_hdr6, %struct.sis_file_hdr6* %file_hdr6, i32 0, i32 3
  %78 = load i32, i32* %maxispace, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i32 %78)
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.123, %sw.epilog.112
  %nfiles126 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 6
  %79 = load i16, i16* %nfiles126, align 2
  store i16 %79, i16* %nfiles, align 2
  %80 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %80, i32 0, i32 4
  %81 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool127 = icmp ne %struct.cl_limits* %81, null
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.146

land.lhs.true.128:                                ; preds = %if.end.125
  %82 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits129 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %82, i32 0, i32 4
  %83 = load %struct.cl_limits*, %struct.cl_limits** %limits129, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %83, i32 0, i32 1
  %84 = load i32, i32* %maxfiles, align 4
  %tobool130 = icmp ne i32 %84, 0
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.146

land.lhs.true.131:                                ; preds = %land.lhs.true.128
  %85 = load i16, i16* %nfiles, align 2
  %conv132 = zext i16 %85 to i32
  %86 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits133 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %86, i32 0, i32 4
  %87 = load %struct.cl_limits*, %struct.cl_limits** %limits133, align 8
  %maxfiles134 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %87, i32 0, i32 1
  %88 = load i32, i32* %maxfiles134, align 4
  %cmp135 = icmp ugt i32 %conv132, %88
  br i1 %cmp135, label %if.then.137, label %if.end.146

if.then.137:                                      ; preds = %land.lhs.true.131
  %89 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits138 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %89, i32 0, i32 4
  %90 = load %struct.cl_limits*, %struct.cl_limits** %limits138, align 8
  %maxfiles139 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %90, i32 0, i32 1
  %91 = load i32, i32* %maxfiles139, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), i32 %91)
  %92 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options140 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %92, i32 0, i32 5
  %93 = load i32, i32* %options140, align 4
  %and141 = and i32 %93, 256
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.then.137
  %94 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %94, i32 0, i32 0
  %95 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i8** %95, align 8
  %96 = load i8*, i8** %mfile, align 8
  %97 = load i64, i64* %length, align 8
  %call144 = call i32 @munmap(i8* %96, i64 %97) #3
  store i32 1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.then.137
  store i32 0, i32* %retval
  br label %return

if.end.146:                                       ; preds = %land.lhs.true.131, %land.lhs.true.128, %if.end.125
  %98 = load i16, i16* %nfiles, align 2
  %conv147 = zext i16 %98 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i32 %conv147)
  %pfiles = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 19
  %99 = load i32, i32* %pfiles, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i32 %99)
  %pfiles148 = getelementptr inbounds %struct.sis_file_hdr, %struct.sis_file_hdr* %file_hdr, i32 0, i32 19
  %100 = load i32, i32* %pfiles148, align 4
  store i32 %100, i32* %frecord, align 4
  %conv149 = zext i32 %100 to i64
  %101 = load i64, i64* %length, align 8
  %cmp150 = icmp uge i64 %conv149, %101
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %if.end.146
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i32 0, i32 0))
  %102 = load i8*, i8** %mfile, align 8
  %103 = load i64, i64* %length, align 8
  %call153 = call i32 @munmap(i8* %102, i64 %103) #3
  store i32 -124, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.146
  %call155 = call i8* @cli_gentemp(i8* null)
  store i8* %call155, i8** %dir, align 8
  %104 = load i8*, i8** %dir, align 8
  %tobool156 = icmp ne i8* %104, null
  br i1 %tobool156, label %lor.lhs.false.157, label %if.then.161

lor.lhs.false.157:                                ; preds = %if.end.154
  %105 = load i8*, i8** %dir, align 8
  %call158 = call i32 @mkdir(i8* %105, i32 448) #3
  %cmp159 = icmp eq i32 %call158, -1
  br i1 %cmp159, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %lor.lhs.false.157, %if.end.154
  %106 = load i8*, i8** %dir, align 8
  %tobool162 = icmp ne i8* %106, null
  br i1 %tobool162, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.161
  %107 = load i8*, i8** %dir, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.161
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %107, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0), i8* %cond)
  %108 = load i8*, i8** %mfile, align 8
  %109 = load i64, i64* %length, align 8
  %call163 = call i32 @munmap(i8* %108, i64 %109) #3
  store i32 -118, i32* %retval
  br label %return

if.end.164:                                       ; preds = %lor.lhs.false.157
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.304, %if.end.164
  %110 = load i32, i32* %i, align 4
  %111 = load i16, i16* %nfiles, align 2
  %conv166 = zext i16 %111 to i32
  %cmp167 = icmp slt i32 %110, %conv166
  br i1 %cmp167, label %for.body.169, label %for.end.306

for.body.169:                                     ; preds = %for.cond.165
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0))
  %112 = load i32, i32* %frecord, align 4
  %add170 = add i32 %112, 4
  %conv171 = zext i32 %add170 to i64
  %113 = load i64, i64* %length, align 8
  %cmp172 = icmp uge i64 %conv171, %113
  br i1 %cmp172, label %if.then.174, label %if.end.180

if.then.174:                                      ; preds = %for.body.169
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i32 0, i32 0))
  %114 = load i8*, i8** %mfile, align 8
  %115 = load i64, i64* %length, align 8
  %call175 = call i32 @munmap(i8* %114, i64 %115) #3
  %116 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool176 = icmp ne i8 %116, 0
  br i1 %tobool176, label %if.end.179, label %if.then.177

if.then.177:                                      ; preds = %if.then.174
  %117 = load i8*, i8** %dir, align 8
  %call178 = call i32 @cli_rmdirs(i8* %117)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.then.174
  %118 = load i8*, i8** %dir, align 8
  call void @free(i8* %118) #3
  store i32 -124, i32* %retval
  br label %return

if.end.180:                                       ; preds = %for.body.169
  %119 = load i8*, i8** %mfile, align 8
  %120 = load i32, i32* %frecord, align 4
  %idx.ext181 = zext i32 %120 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %119, i64 %idx.ext181
  %121 = bitcast i8* %add.ptr182 to i32*
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %sw.default.302 [
    i32 0, label %sw.bb.183
    i32 1, label %sw.bb.204
    i32 2, label %sw.bb.233
    i32 3, label %sw.bb.271
    i32 4, label %sw.bb.271
    i32 5, label %sw.bb.298
    i32 6, label %sw.bb.300
  ]

sw.bb.183:                                        ; preds = %if.end.180
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  %123 = load i32, i32* %desc.addr, align 4
  %124 = load i8*, i8** %mfile, align 8
  %st_size184 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %125 = load i64, i64* %st_size184, align 8
  %conv185 = trunc i64 %125 to i32
  %126 = load i32, i32* %frecord, align 4
  %add186 = add i32 %126, 4
  %127 = load i8, i8* %compressed, align 1
  %128 = load i8*, i8** %dir, align 8
  %129 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call187 = call i32 @sis_extract_simple(i32 %123, i8* %124, i32 %conv185, i32 %add186, i16 zeroext 1, i8 zeroext %127, i8* %ifile, i8* %128, %struct.cli_ctx* %129)
  store i32 %call187, i32* %ret, align 4
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.195

if.then.189:                                      ; preds = %sw.bb.183
  %130 = load i8*, i8** %mfile, align 8
  %131 = load i64, i64* %length, align 8
  %call190 = call i32 @munmap(i8* %130, i64 %131) #3
  %132 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool191 = icmp ne i8 %132, 0
  br i1 %tobool191, label %if.end.194, label %if.then.192

if.then.192:                                      ; preds = %if.then.189
  %133 = load i8*, i8** %dir, align 8
  %call193 = call i32 @cli_rmdirs(i8* %133)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %if.then.189
  %134 = load i8*, i8** %dir, align 8
  call void @free(i8* %134) #3
  %135 = load i32, i32* %ret, align 4
  store i32 %135, i32* %retval
  br label %return

if.end.195:                                       ; preds = %sw.bb.183
  %136 = load i8, i8* %release, align 1
  %conv196 = zext i8 %136 to i32
  %cmp197 = icmp eq i32 %conv196, 6
  br i1 %cmp197, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %if.end.195
  %137 = load i32, i32* %frecord, align 4
  %add200 = add i32 %137, 48
  store i32 %add200, i32* %frecord, align 4
  br label %if.end.203

if.else.201:                                      ; preds = %if.end.195
  %138 = load i32, i32* %frecord, align 4
  %add202 = add i32 %138, 36
  store i32 %add202, i32* %frecord, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.201, %if.then.199
  br label %sw.epilog.303

sw.bb.204:                                        ; preds = %if.end.180
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i32 0, i32 0))
  %139 = load i32, i32* %desc.addr, align 4
  %140 = load i8*, i8** %mfile, align 8
  %st_size205 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %141 = load i64, i64* %st_size205, align 8
  %conv206 = trunc i64 %141 to i32
  %142 = load i32, i32* %frecord, align 4
  %add207 = add i32 %142, 4
  %143 = load i16, i16* %nlangs, align 2
  %144 = load i8, i8* %compressed, align 1
  %145 = load i8*, i8** %dir, align 8
  %146 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call208 = call i32 @sis_extract_simple(i32 %139, i8* %140, i32 %conv206, i32 %add207, i16 zeroext %143, i8 zeroext %144, i8* %ifile, i8* %145, %struct.cli_ctx* %146)
  store i32 %call208, i32* %ret, align 4
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.then.210, label %if.end.216

if.then.210:                                      ; preds = %sw.bb.204
  %147 = load i8*, i8** %mfile, align 8
  %148 = load i64, i64* %length, align 8
  %call211 = call i32 @munmap(i8* %147, i64 %148) #3
  %149 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool212 = icmp ne i8 %149, 0
  br i1 %tobool212, label %if.end.215, label %if.then.213

if.then.213:                                      ; preds = %if.then.210
  %150 = load i8*, i8** %dir, align 8
  %call214 = call i32 @cli_rmdirs(i8* %150)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %if.then.210
  %151 = load i8*, i8** %dir, align 8
  call void @free(i8* %151) #3
  %152 = load i32, i32* %ret, align 4
  store i32 %152, i32* %retval
  br label %return

if.end.216:                                       ; preds = %sw.bb.204
  %153 = load i8, i8* %release, align 1
  %conv217 = zext i8 %153 to i32
  %cmp218 = icmp eq i32 %conv217, 6
  br i1 %cmp218, label %if.then.220, label %if.else.226

if.then.220:                                      ; preds = %if.end.216
  %154 = load i16, i16* %nlangs, align 2
  %conv221 = zext i16 %154 to i32
  %mul222 = mul nsw i32 12, %conv221
  %add223 = add nsw i32 32, %mul222
  %add224 = add nsw i32 %add223, 4
  %155 = load i32, i32* %frecord, align 4
  %add225 = add i32 %155, %add224
  store i32 %add225, i32* %frecord, align 4
  br label %if.end.232

if.else.226:                                      ; preds = %if.end.216
  %156 = load i16, i16* %nlangs, align 2
  %conv227 = zext i16 %156 to i32
  %mul228 = mul nsw i32 4, %conv227
  %add229 = add nsw i32 28, %mul228
  %add230 = add nsw i32 %add229, 4
  %157 = load i32, i32* %frecord, align 4
  %add231 = add i32 %157, %add230
  store i32 %add231, i32* %frecord, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.226, %if.then.220
  br label %sw.epilog.303

sw.bb.233:                                        ; preds = %if.end.180
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0))
  %158 = load i32, i32* %frecord, align 4
  %add234 = add i32 %158, 8
  %conv235 = zext i32 %add234 to i64
  %159 = load i64, i64* %length, align 8
  %cmp236 = icmp uge i64 %conv235, %159
  br i1 %cmp236, label %if.then.238, label %if.end.244

if.then.238:                                      ; preds = %sw.bb.233
  %160 = load i8*, i8** %mfile, align 8
  %161 = load i64, i64* %length, align 8
  %call239 = call i32 @munmap(i8* %160, i64 %161) #3
  %162 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool240 = icmp ne i8 %162, 0
  br i1 %tobool240, label %if.end.243, label %if.then.241

if.then.241:                                      ; preds = %if.then.238
  %163 = load i8*, i8** %dir, align 8
  %call242 = call i32 @cli_rmdirs(i8* %163)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %if.then.238
  %164 = load i8*, i8** %dir, align 8
  call void @free(i8* %164) #3
  store i32 -124, i32* %retval
  br label %return

if.end.244:                                       ; preds = %sw.bb.233
  %165 = load i8*, i8** %mfile, align 8
  %166 = load i32, i32* %frecord, align 4
  %idx.ext245 = zext i32 %166 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %165, i64 %idx.ext245
  %add.ptr247 = getelementptr inbounds i8, i8* %add.ptr246, i64 4
  %167 = bitcast i8* %add.ptr247 to i32*
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %n, align 4
  %169 = load i32, i32* %n, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* %n, align 4
  %cmp248 = icmp ugt i32 %170, 128
  br i1 %cmp248, label %if.then.258, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %if.end.244
  %171 = load i32, i32* %frecord, align 4
  %172 = load i32, i32* %n, align 4
  %mul251 = mul i32 8, %172
  %173 = load i16, i16* %nlangs, align 2
  %conv252 = zext i16 %173 to i32
  %mul253 = mul i32 %mul251, %conv252
  %add254 = add i32 %171, %mul253
  %conv255 = zext i32 %add254 to i64
  %174 = load i64, i64* %length, align 8
  %cmp256 = icmp uge i64 %conv255, %174
  br i1 %cmp256, label %if.then.258, label %if.end.264

if.then.258:                                      ; preds = %lor.lhs.false.250, %if.end.244
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
  %175 = load i8*, i8** %mfile, align 8
  %176 = load i64, i64* %length, align 8
  %call259 = call i32 @munmap(i8* %175, i64 %176) #3
  %177 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool260 = icmp ne i8 %177, 0
  br i1 %tobool260, label %if.end.263, label %if.then.261

if.then.261:                                      ; preds = %if.then.258
  %178 = load i8*, i8** %dir, align 8
  %call262 = call i32 @cli_rmdirs(i8* %178)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.261, %if.then.258
  %179 = load i8*, i8** %dir, align 8
  call void @free(i8* %179) #3
  store i32 -124, i32* %retval
  br label %return

if.end.264:                                       ; preds = %lor.lhs.false.250
  %180 = load i32, i32* %n, align 4
  %mul265 = mul i32 8, %180
  %181 = load i16, i16* %nlangs, align 2
  %conv266 = zext i16 %181 to i32
  %mul267 = mul i32 %mul265, %conv266
  %add268 = add i32 8, %mul267
  %add269 = add i32 %add268, 16
  %182 = load i32, i32* %frecord, align 4
  %add270 = add i32 %182, %add269
  store i32 %add270, i32* %frecord, align 4
  br label %sw.epilog.303

sw.bb.271:                                        ; preds = %if.end.180, %if.end.180
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0))
  %183 = load i32, i32* %frecord, align 4
  %add272 = add i32 %183, 8
  %conv273 = zext i32 %add272 to i64
  %184 = load i64, i64* %length, align 8
  %cmp274 = icmp uge i64 %conv273, %184
  br i1 %cmp274, label %if.then.276, label %if.end.282

if.then.276:                                      ; preds = %sw.bb.271
  %185 = load i8*, i8** %mfile, align 8
  %186 = load i64, i64* %length, align 8
  %call277 = call i32 @munmap(i8* %185, i64 %186) #3
  %187 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool278 = icmp ne i8 %187, 0
  br i1 %tobool278, label %if.end.281, label %if.then.279

if.then.279:                                      ; preds = %if.then.276
  %188 = load i8*, i8** %dir, align 8
  %call280 = call i32 @cli_rmdirs(i8* %188)
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.279, %if.then.276
  %189 = load i8*, i8** %dir, align 8
  call void @free(i8* %189) #3
  store i32 -124, i32* %retval
  br label %return

if.end.282:                                       ; preds = %sw.bb.271
  %190 = load i8*, i8** %mfile, align 8
  %191 = load i32, i32* %frecord, align 4
  %idx.ext283 = zext i32 %191 to i64
  %add.ptr284 = getelementptr inbounds i8, i8* %190, i64 %idx.ext283
  %add.ptr285 = getelementptr inbounds i8, i8* %add.ptr284, i64 4
  %192 = bitcast i8* %add.ptr285 to i32*
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %n, align 4
  %194 = load i32, i32* %n, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.49, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* %n, align 4
  %conv286 = zext i32 %195 to i64
  %196 = load i64, i64* %length, align 8
  %cmp287 = icmp uge i64 %conv286, %196
  br i1 %cmp287, label %if.then.289, label %if.end.295

if.then.289:                                      ; preds = %if.end.282
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.50, i32 0, i32 0))
  %197 = load i8*, i8** %mfile, align 8
  %198 = load i64, i64* %length, align 8
  %call290 = call i32 @munmap(i8* %197, i64 %198) #3
  %199 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool291 = icmp ne i8 %199, 0
  br i1 %tobool291, label %if.end.294, label %if.then.292

if.then.292:                                      ; preds = %if.then.289
  %200 = load i8*, i8** %dir, align 8
  %call293 = call i32 @cli_rmdirs(i8* %200)
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.292, %if.then.289
  %201 = load i8*, i8** %dir, align 8
  call void @free(i8* %201) #3
  store i32 -124, i32* %retval
  br label %return

if.end.295:                                       ; preds = %if.end.282
  %202 = load i32, i32* %n, align 4
  %add296 = add i32 8, %202
  %203 = load i32, i32* %frecord, align 4
  %add297 = add i32 %203, %add296
  store i32 %add297, i32* %frecord, align 4
  br label %sw.epilog.303

sw.bb.298:                                        ; preds = %if.end.180
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0))
  %204 = load i32, i32* %frecord, align 4
  %add299 = add i32 %204, 4
  store i32 %add299, i32* %frecord, align 4
  br label %sw.epilog.303

sw.bb.300:                                        ; preds = %if.end.180
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0))
  %205 = load i32, i32* %frecord, align 4
  %add301 = add i32 %205, 4
  store i32 %add301, i32* %frecord, align 4
  br label %sw.epilog.303

sw.default.302:                                   ; preds = %if.end.180
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0))
  br label %sw.epilog.303

sw.epilog.303:                                    ; preds = %sw.default.302, %sw.bb.300, %sw.bb.298, %if.end.295, %if.end.264, %if.end.232, %if.end.203
  br label %for.inc.304

for.inc.304:                                      ; preds = %sw.epilog.303
  %206 = load i32, i32* %i, align 4
  %inc305 = add nsw i32 %206, 1
  store i32 %inc305, i32* %i, align 4
  br label %for.cond.165

for.end.306:                                      ; preds = %for.cond.165
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0))
  %207 = load i8*, i8** %dir, align 8
  %208 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call307 = call i32 @cli_scandir(i8* %207, %struct.cli_ctx* %208)
  store i32 %call307, i32* %ret, align 4
  %209 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool308 = icmp ne i8 %209, 0
  br i1 %tobool308, label %if.end.311, label %if.then.309

if.then.309:                                      ; preds = %for.end.306
  %210 = load i8*, i8** %dir, align 8
  %call310 = call i32 @cli_rmdirs(i8* %210)
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.309, %for.end.306
  %211 = load i8*, i8** %dir, align 8
  call void @free(i8* %211) #3
  %212 = load i8*, i8** %mfile, align 8
  %213 = load i64, i64* %length, align 8
  %call312 = call i32 @munmap(i8* %212, i64 %213) #3
  %214 = load i32, i32* %ret, align 4
  store i32 %214, i32* %retval
  br label %return

return:                                           ; preds = %if.end.311, %if.end.294, %if.end.281, %if.end.263, %if.end.243, %if.end.215, %if.end.194, %if.end.179, %cond.end, %if.then.152, %if.end.145, %if.then.143, %if.then.121, %if.else.73, %if.then.57, %if.then.44, %if.then.36, %sw.default, %sw.bb.18, %if.then.14, %if.else.11, %if.then.9, %if.then.2, %if.then
  %215 = load i32, i32* %retval
  ret i32 %215
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

declare void @cli_errmsg(i8*, ...) #2

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @cli_warnmsg(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #1

declare i8* @cli_malloc(i64) #2

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #1

declare i8* @cli_gentemp(i8*) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #1

declare i32 @cli_rmdirs(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sis_extract_simple(i32 %fd, i8* %mfile, i32 %length, i32 %offset, i16 zeroext %nlangs, i8 zeroext %compressed, i8* %ifile, i8* %dir, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %mfile.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %nlangs.addr = alloca i16, align 2
  %compressed.addr = alloca i8, align 1
  %ifile.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %typedir = alloca i8*, align 8
  %sname = alloca i8*, align 8
  %dname = alloca i8*, align 8
  %subdir = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %desc = alloca i32, align 4
  %i = alloca i32, align 4
  %get_dname = alloca i8, align 1
  %namelen = alloca i32, align 4
  %nameoff = alloca i32, align 4
  %filelen = alloca i32, align 4
  %fileoff = alloca i32, align 4
  %val = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %osize = alloca i64, align 8
  %csize = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %mfile, i8** %mfile.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %nlangs, i16* %nlangs.addr, align 2
  store i8 %compressed, i8* %compressed.addr, align 1
  store i8* %ifile, i8** %ifile.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8* null, i8** %typedir, align 8
  store i8* null, i8** %sname, align 8
  store i8* null, i8** %dname, align 8
  store i8 1, i8* %get_dname, align 1
  store i64 0, i64* %osize, align 8
  store i64 0, i64* %csize, align 8
  %0 = load i32, i32* %offset.addr, align 4
  %add = add i32 %0, 24
  %1 = load i16, i16* %nlangs.addr, align 2
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 8, %conv
  %add1 = add i32 %add, %mul
  %2 = load i32, i32* %length.addr, align 4
  %cmp = icmp uge i32 %add1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.149, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %mfile.addr, align 8
  %4 = load i32, i32* %offset.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to i32*
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %sw.default.26 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.24
    i32 5, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.150, i32 0, i32 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), i8** %typedir, align 8
  br label %sw.epilog.27

sw.bb.3:                                          ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.152, i32 0, i32 0))
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), i8** %typedir, align 8
  store i8 0, i8* %get_dname, align 1
  br label %sw.epilog.27

sw.bb.4:                                          ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.154, i32 0, i32 0))
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0), i8** %typedir, align 8
  store i8 0, i8* %get_dname, align 1
  br label %sw.epilog.27

sw.bb.5:                                          ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i32 0, i32 0))
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i32 0, i32 0), i8** %typedir, align 8
  %7 = load i8*, i8** %mfile.addr, align 8
  %8 = load i32, i32* %offset.addr, align 4
  %idx.ext6 = zext i32 %8 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %7, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 4
  %9 = bitcast i8* %add.ptr8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %val, align 4
  %11 = load i32, i32* %val, align 4
  %and = and i32 %11, 255
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb.9
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.11
  ]

sw.bb.9:                                          ; preds = %sw.bb.5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.158, i32 0, i32 0))
  br label %sw.epilog

sw.bb.10:                                         ; preds = %sw.bb.5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.159, i32 0, i32 0))
  br label %sw.epilog

sw.bb.11:                                         ; preds = %sw.bb.5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.160, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.5
  %12 = load i8*, i8** %mfile.addr, align 8
  %13 = load i32, i32* %offset.addr, align 4
  %idx.ext12 = zext i32 %13 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 %idx.ext12
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr13, i64 4
  %14 = bitcast i8* %add.ptr14 to i32*
  %15 = load i32, i32* %14, align 4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.161, i32 0, i32 0), i32 %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb.10, %sw.bb.9
  %16 = load i32, i32* %val, align 4
  %and15 = and i32 %16, 65280
  switch i32 %and15, label %sw.default.19 [
    i32 0, label %sw.bb.16
    i32 256, label %sw.bb.17
    i32 512, label %sw.bb.18
  ]

sw.bb.16:                                         ; preds = %sw.epilog
  br label %sw.epilog.23

sw.bb.17:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.162, i32 0, i32 0))
  br label %sw.epilog.23

sw.bb.18:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.163, i32 0, i32 0))
  br label %sw.epilog.23

sw.default.19:                                    ; preds = %sw.epilog
  %17 = load i8*, i8** %mfile.addr, align 8
  %18 = load i32, i32* %offset.addr, align 4
  %idx.ext20 = zext i32 %18 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %17, i64 %idx.ext20
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i64 4
  %19 = bitcast i8* %add.ptr22 to i32*
  %20 = load i32, i32* %19, align 4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.161, i32 0, i32 0), i32 %20)
  br label %sw.epilog.23

sw.epilog.23:                                     ; preds = %sw.default.19, %sw.bb.18, %sw.bb.17, %sw.bb.16
  br label %sw.epilog.27

sw.bb.24:                                         ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.165, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.default.26:                                    ; preds = %if.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.166, i32 0, i32 0))
  br label %sw.epilog.27

sw.epilog.27:                                     ; preds = %sw.default.26, %sw.epilog.23, %sw.bb.4, %sw.bb.3, %sw.bb
  %21 = load i8*, i8** %mfile.addr, align 8
  %22 = load i32, i32* %offset.addr, align 4
  %idx.ext28 = zext i32 %22 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %21, i64 %idx.ext28
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr29, i64 8
  %23 = bitcast i8* %add.ptr30 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %namelen, align 4
  %25 = load i32, i32* %namelen, align 4
  %cmp31 = icmp ugt i32 %25, 512
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %sw.epilog.27
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.167, i32 0, i32 0))
  br label %if.end.49

if.else:                                          ; preds = %sw.epilog.27
  %26 = load i8*, i8** %mfile.addr, align 8
  %27 = load i32, i32* %offset.addr, align 4
  %idx.ext34 = zext i32 %27 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %26, i64 %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr35, i64 12
  %28 = bitcast i8* %add.ptr36 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %nameoff, align 4
  %30 = load i32, i32* %nameoff, align 4
  %31 = load i32, i32* %length.addr, align 4
  %cmp37 = icmp uge i32 %30, %31
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %32 = load i32, i32* %nameoff, align 4
  %33 = load i32, i32* %namelen, align 4
  %add39 = add i32 %32, %33
  %34 = load i32, i32* %length.addr, align 4
  %cmp40 = icmp uge i32 %add39, %34
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false, %if.else
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.168, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false
  %35 = load i8*, i8** %mfile.addr, align 8
  %36 = load i32, i32* %nameoff, align 4
  %idx.ext44 = zext i32 %36 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %35, i64 %idx.ext44
  %37 = load i32, i32* %namelen, align 4
  %call = call i8* @sis_utf16_decode(i8* %add.ptr45, i32 %37)
  store i8* %call, i8** %sname, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.43
  %38 = load i8*, i8** %sname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.169, i32 0, i32 0), i8* %38)
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.43
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.170, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.33
  %39 = load i8, i8* %get_dname, align 1
  %tobool50 = icmp ne i8 %39, 0
  br i1 %tobool50, label %if.then.51, label %if.end.81

if.then.51:                                       ; preds = %if.end.49
  %40 = load i8*, i8** %mfile.addr, align 8
  %41 = load i32, i32* %offset.addr, align 4
  %idx.ext52 = zext i32 %41 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %40, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 16
  %42 = bitcast i8* %add.ptr54 to i32*
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %namelen, align 4
  %44 = load i32, i32* %namelen, align 4
  %cmp55 = icmp ugt i32 %44, 512
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.then.51
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.171, i32 0, i32 0))
  br label %if.end.80

if.else.58:                                       ; preds = %if.then.51
  %45 = load i8*, i8** %mfile.addr, align 8
  %46 = load i32, i32* %offset.addr, align 4
  %idx.ext59 = zext i32 %46 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %45, i64 %idx.ext59
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i64 20
  %47 = bitcast i8* %add.ptr61 to i32*
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %nameoff, align 4
  %49 = load i32, i32* %nameoff, align 4
  %50 = load i32, i32* %length.addr, align 4
  %cmp62 = icmp uge i32 %49, %50
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.else.58
  %51 = load i32, i32* %nameoff, align 4
  %52 = load i32, i32* %namelen, align 4
  %add65 = add i32 %51, %52
  %53 = load i32, i32* %length.addr, align 4
  %cmp66 = icmp uge i32 %add65, %53
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %lor.lhs.false.64, %if.else.58
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.172, i32 0, i32 0))
  %54 = load i8*, i8** %sname, align 8
  %tobool69 = icmp ne i8* %54, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.68
  %55 = load i8*, i8** %sname, align 8
  call void @free(i8* %55) #3
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.68
  store i32 -124, i32* %retval
  br label %return

if.end.72:                                        ; preds = %lor.lhs.false.64
  %56 = load i8*, i8** %mfile.addr, align 8
  %57 = load i32, i32* %nameoff, align 4
  %idx.ext73 = zext i32 %57 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %56, i64 %idx.ext73
  %58 = load i32, i32* %namelen, align 4
  %call75 = call i8* @sis_utf16_decode(i8* %add.ptr74, i32 %58)
  store i8* %call75, i8** %dname, align 8
  %tobool76 = icmp ne i8* %call75, null
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.72
  %59 = load i8*, i8** %dname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.173, i32 0, i32 0), i8* %59)
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.72
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.174, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.57
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.49
  %60 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool82 = icmp ne i8 %60, 0
  br i1 %tobool82, label %if.end.90, label %if.then.83

if.then.83:                                       ; preds = %if.end.81
  %61 = load i8*, i8** %sname, align 8
  %tobool84 = icmp ne i8* %61, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.83
  %62 = load i8*, i8** %sname, align 8
  call void @free(i8* %62) #3
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.83
  %63 = load i8*, i8** %dname, align 8
  %tobool87 = icmp ne i8* %63, null
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.86
  %64 = load i8*, i8** %dname, align 8
  call void @free(i8* %64) #3
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.81
  %65 = load i8*, i8** %typedir, align 8
  %tobool91 = icmp ne i8* %65, null
  br i1 %tobool91, label %if.then.92, label %if.else.102

if.then.92:                                       ; preds = %if.end.90
  %66 = load i8*, i8** %dir.addr, align 8
  %call93 = call i64 @strlen(i8* %66) #5
  %67 = load i8*, i8** %typedir, align 8
  %call94 = call i64 @strlen(i8* %67) #5
  %add95 = add i64 %call93, %call94
  %add96 = add i64 %add95, 2
  %call97 = call i8* @cli_malloc(i64 %add96)
  store i8* %call97, i8** %subdir, align 8
  %tobool98 = icmp ne i8* %call97, null
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.then.92
  store i32 -114, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.92
  %68 = load i8*, i8** %subdir, align 8
  %69 = load i8*, i8** %dir.addr, align 8
  %70 = load i8*, i8** %typedir, align 8
  %call101 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), i8* %69, i8* %70) #3
  br label %if.end.107

if.else.102:                                      ; preds = %if.end.90
  %71 = load i8*, i8** %dir.addr, align 8
  %call103 = call i8* @cli_strdup(i8* %71)
  store i8* %call103, i8** %subdir, align 8
  %tobool104 = icmp ne i8* %call103, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.else.102
  store i32 -114, i32* %retval
  br label %return

if.end.106:                                       ; preds = %if.else.102
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.100
  %72 = load i8*, i8** %subdir, align 8
  %call108 = call i32 @stat(i8* %72, %struct.stat* %sb) #3
  %cmp109 = icmp eq i32 %call108, -1
  br i1 %cmp109, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %if.end.107
  %73 = load i8*, i8** %subdir, align 8
  %call112 = call i32 @mkdir(i8* %73, i32 448) #3
  %cmp113 = icmp eq i32 %call112, -1
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.then.111
  %74 = load i8*, i8** %subdir, align 8
  call void @free(i8* %74) #3
  store i32 -123, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.then.111
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.107
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.117
  %75 = load i32, i32* %i, align 4
  %76 = load i16, i16* %nlangs.addr, align 2
  %conv118 = zext i16 %76 to i32
  %cmp119 = icmp slt i32 %75, %conv118
  br i1 %cmp119, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i8*, i8** %mfile.addr, align 8
  %78 = load i32, i32* %offset.addr, align 4
  %idx.ext121 = zext i32 %78 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %77, i64 %idx.ext121
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 24
  %79 = load i32, i32* %i, align 4
  %mul124 = mul nsw i32 4, %79
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr123, i64 %idx.ext125
  %80 = bitcast i8* %add.ptr126 to i32*
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %filelen, align 4
  %82 = load i8*, i8** %mfile.addr, align 8
  %83 = load i32, i32* %offset.addr, align 4
  %idx.ext127 = zext i32 %83 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %82, i64 %idx.ext127
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr128, i64 24
  %84 = load i32, i32* %i, align 4
  %mul130 = mul nsw i32 4, %84
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr129, i64 %idx.ext131
  %85 = load i16, i16* %nlangs.addr, align 2
  %conv133 = zext i16 %85 to i32
  %mul134 = mul nsw i32 4, %conv133
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr132, i64 %idx.ext135
  %86 = bitcast i8* %add.ptr136 to i32*
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %fileoff, align 4
  %88 = load i32, i32* %fileoff, align 4
  %89 = load i32, i32* %length.addr, align 4
  %cmp137 = icmp eq i32 %88, %89
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %for.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.176, i32 0, i32 0))
  %90 = load i8*, i8** %ifile.addr, align 8
  store i8 1, i8* %90, align 1
  br label %for.inc

if.else.140:                                      ; preds = %for.body
  %91 = load i32, i32* %fileoff, align 4
  %92 = load i32, i32* %length.addr, align 4
  %cmp141 = icmp ugt i32 %91, %92
  br i1 %cmp141, label %if.then.143, label %if.end.147

if.then.143:                                      ; preds = %if.else.140
  %93 = load i8*, i8** %ifile.addr, align 8
  %94 = load i8, i8* %93, align 1
  %tobool144 = icmp ne i8 %94, 0
  br i1 %tobool144, label %if.else.146, label %if.then.145

if.then.145:                                      ; preds = %if.then.143
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.177, i32 0, i32 0))
  %95 = load i8*, i8** %subdir, align 8
  call void @free(i8* %95) #3
  store i32 -124, i32* %retval
  br label %return

if.else.146:                                      ; preds = %if.then.143
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.178, i32 0, i32 0))
  br label %for.inc

if.end.147:                                       ; preds = %if.else.140
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147
  %96 = load i32, i32* %filelen, align 4
  %97 = load i32, i32* %length.addr, align 4
  %cmp149 = icmp uge i32 %96, %97
  br i1 %cmp149, label %if.then.155, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.148
  %98 = load i32, i32* %filelen, align 4
  %99 = load i32, i32* %fileoff, align 4
  %add152 = add i32 %98, %99
  %100 = load i32, i32* %length.addr, align 4
  %cmp153 = icmp ugt i32 %add152, %100
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %lor.lhs.false.151, %if.end.148
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.179, i32 0, i32 0))
  %101 = load i8*, i8** %subdir, align 8
  call void @free(i8* %101) #3
  store i32 -124, i32* %retval
  br label %return

if.end.156:                                       ; preds = %lor.lhs.false.151
  %102 = load i8*, i8** %subdir, align 8
  %call157 = call i8* @cli_gentemp(i8* %102)
  store i8* %call157, i8** %fname, align 8
  %tobool158 = icmp ne i8* %call157, null
  br i1 %tobool158, label %if.end.160, label %if.then.159

if.then.159:                                      ; preds = %if.end.156
  %103 = load i8*, i8** %subdir, align 8
  call void @free(i8* %103) #3
  store i32 -114, i32* %retval
  br label %return

if.end.160:                                       ; preds = %if.end.156
  %104 = load i8, i8* %compressed.addr, align 1
  %tobool161 = icmp ne i8 %104, 0
  br i1 %tobool161, label %if.then.162, label %if.else.233

if.then.162:                                      ; preds = %if.end.160
  %105 = load i32, i32* %filelen, align 4
  %conv163 = zext i32 %105 to i64
  store i64 %conv163, i64* %csize, align 8
  %106 = load i8*, i8** %mfile.addr, align 8
  %107 = load i32, i32* %offset.addr, align 4
  %idx.ext164 = zext i32 %107 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %106, i64 %idx.ext164
  %add.ptr166 = getelementptr inbounds i8, i8* %add.ptr165, i64 24
  %108 = load i32, i32* %i, align 4
  %mul167 = mul nsw i32 4, %108
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %add.ptr166, i64 %idx.ext168
  %109 = load i16, i16* %nlangs.addr, align 2
  %conv170 = zext i16 %109 to i32
  %mul171 = mul nsw i32 8, %conv170
  %idx.ext172 = sext i32 %mul171 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %add.ptr169, i64 %idx.ext172
  %110 = bitcast i8* %add.ptr173 to i32*
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %filelen, align 4
  %112 = load i32, i32* %filelen, align 4
  %conv174 = zext i32 %112 to i64
  store i64 %conv174, i64* %osize, align 8
  %113 = load i64, i64* %osize, align 8
  %tobool175 = icmp ne i64 %113, 0
  br i1 %tobool175, label %if.end.177, label %if.then.176

if.then.176:                                      ; preds = %if.then.162
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.180, i32 0, i32 0))
  %114 = load i8*, i8** %fname, align 8
  call void @free(i8* %114) #3
  br label %for.inc

if.end.177:                                       ; preds = %if.then.162
  %115 = load i64, i64* %csize, align 8
  %conv178 = trunc i64 %115 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.181, i32 0, i32 0), i32 %conv178)
  %116 = load i64, i64* %osize, align 8
  %conv179 = trunc i64 %116 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0), i32 %conv179)
  %117 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %117, i32 0, i32 4
  %118 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool180 = icmp ne %struct.cl_limits* %118, null
  br i1 %tobool180, label %land.lhs.true, label %if.end.196

land.lhs.true:                                    ; preds = %if.end.177
  %119 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits181 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %119, i32 0, i32 4
  %120 = load %struct.cl_limits*, %struct.cl_limits** %limits181, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %120, i32 0, i32 5
  %121 = load i64, i64* %maxfilesize, align 8
  %tobool182 = icmp ne i64 %121, 0
  br i1 %tobool182, label %land.lhs.true.183, label %if.end.196

land.lhs.true.183:                                ; preds = %land.lhs.true
  %122 = load i64, i64* %osize, align 8
  %123 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits184 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %123, i32 0, i32 4
  %124 = load %struct.cl_limits*, %struct.cl_limits** %limits184, align 8
  %maxfilesize185 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %124, i32 0, i32 5
  %125 = load i64, i64* %maxfilesize185, align 8
  %cmp186 = icmp ugt i64 %122, %125
  br i1 %cmp186, label %if.then.188, label %if.end.196

if.then.188:                                      ; preds = %land.lhs.true.183
  %126 = load i64, i64* %osize, align 8
  %conv189 = trunc i64 %126 to i32
  %127 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits190 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %127, i32 0, i32 4
  %128 = load %struct.cl_limits*, %struct.cl_limits** %limits190, align 8
  %maxfilesize191 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %128, i32 0, i32 5
  %129 = load i64, i64* %maxfilesize191, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.183, i32 0, i32 0), i32 %conv189, i64 %129)
  %130 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %130, i32 0, i32 5
  %131 = load i32, i32* %options, align 4
  %and192 = and i32 %131, 256
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.then.188
  %132 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %132, i32 0, i32 0
  %133 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.184, i32 0, i32 0), i8** %133, align 8
  %134 = load i8*, i8** %subdir, align 8
  call void @free(i8* %134) #3
  %135 = load i8*, i8** %fname, align 8
  call void @free(i8* %135) #3
  store i32 1, i32* %retval
  br label %return

if.end.195:                                       ; preds = %if.then.188
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.183, %land.lhs.true, %if.end.177
  %136 = load i64, i64* %osize, align 8
  %137 = load i64, i64* %csize, align 8
  %mul197 = mul i64 3, %137
  %cmp198 = icmp ule i64 %136, %mul197
  br i1 %cmp198, label %if.then.212, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %if.end.196
  %138 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits201 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %138, i32 0, i32 4
  %139 = load %struct.cl_limits*, %struct.cl_limits** %limits201, align 8
  %tobool202 = icmp ne %struct.cl_limits* %139, null
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.214

land.lhs.true.203:                                ; preds = %lor.lhs.false.200
  %140 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits204 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %140, i32 0, i32 4
  %141 = load %struct.cl_limits*, %struct.cl_limits** %limits204, align 8
  %maxfilesize205 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %141, i32 0, i32 5
  %142 = load i64, i64* %maxfilesize205, align 8
  %tobool206 = icmp ne i64 %142, 0
  br i1 %tobool206, label %land.lhs.true.207, label %if.end.214

land.lhs.true.207:                                ; preds = %land.lhs.true.203
  %143 = load i64, i64* %osize, align 8
  %144 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits208 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %144, i32 0, i32 4
  %145 = load %struct.cl_limits*, %struct.cl_limits** %limits208, align 8
  %maxfilesize209 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %145, i32 0, i32 5
  %146 = load i64, i64* %maxfilesize209, align 8
  %cmp210 = icmp ugt i64 %143, %146
  br i1 %cmp210, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %land.lhs.true.207, %if.end.196
  %147 = load i64, i64* %csize, align 8
  %mul213 = mul i64 3, %147
  store i64 %mul213, i64* %osize, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %land.lhs.true.207, %land.lhs.true.203, %lor.lhs.false.200
  %148 = load i64, i64* %osize, align 8
  %call215 = call i8* @cli_malloc(i64 %148)
  store i8* %call215, i8** %buff, align 8
  %tobool216 = icmp ne i8* %call215, null
  br i1 %tobool216, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %if.end.214
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.185, i32 0, i32 0))
  %149 = load i8*, i8** %subdir, align 8
  call void @free(i8* %149) #3
  %150 = load i8*, i8** %fname, align 8
  call void @free(i8* %150) #3
  store i32 -123, i32* %retval
  br label %return

if.end.218:                                       ; preds = %if.end.214
  %151 = load i8*, i8** %buff, align 8
  %152 = load i8*, i8** %mfile.addr, align 8
  %153 = load i32, i32* %fileoff, align 4
  %idx.ext219 = zext i32 %153 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %152, i64 %idx.ext219
  %154 = load i64, i64* %csize, align 8
  %call221 = call i32 @uncompress(i8* %151, i64* %osize, i8* %add.ptr220, i64 %154)
  %cmp222 = icmp ne i32 %call221, 0
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.218
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.186, i32 0, i32 0))
  %155 = load i8*, i8** %buff, align 8
  call void @free(i8* %155) #3
  %156 = load i8*, i8** %subdir, align 8
  call void @free(i8* %156) #3
  %157 = load i8*, i8** %fname, align 8
  call void @free(i8* %157) #3
  store i32 -123, i32* %retval
  br label %return

if.end.225:                                       ; preds = %if.end.218
  %158 = load i64, i64* %osize, align 8
  %159 = load i32, i32* %filelen, align 4
  %conv226 = zext i32 %159 to i64
  %cmp227 = icmp ne i64 %158, %conv226
  br i1 %cmp227, label %if.then.229, label %if.end.232

if.then.229:                                      ; preds = %if.end.225
  %160 = load i64, i64* %osize, align 8
  %conv230 = trunc i64 %160 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.187, i32 0, i32 0), i32 %conv230)
  %161 = load i64, i64* %osize, align 8
  %conv231 = trunc i64 %161 to i32
  store i32 %conv231, i32* %filelen, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.229, %if.end.225
  br label %if.end.236

if.else.233:                                      ; preds = %if.end.160
  %162 = load i8*, i8** %mfile.addr, align 8
  %163 = load i32, i32* %fileoff, align 4
  %idx.ext234 = zext i32 %163 to i64
  %add.ptr235 = getelementptr inbounds i8, i8* %162, i64 %idx.ext234
  store i8* %add.ptr235, i8** %buff, align 8
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.233, %if.end.232
  %164 = load i8*, i8** %fname, align 8
  %call237 = call i32 (i8*, i32, ...) @open(i8* %164, i32 577, i32 384)
  store i32 %call237, i32* %desc, align 4
  %cmp238 = icmp eq i32 %call237, -1
  br i1 %cmp238, label %if.then.240, label %if.end.244

if.then.240:                                      ; preds = %if.end.236
  %165 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.188, i32 0, i32 0), i8* %165)
  %166 = load i8*, i8** %subdir, align 8
  call void @free(i8* %166) #3
  %167 = load i8*, i8** %fname, align 8
  call void @free(i8* %167) #3
  %168 = load i8, i8* %compressed.addr, align 1
  %tobool241 = icmp ne i8 %168, 0
  br i1 %tobool241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.then.240
  %169 = load i8*, i8** %buff, align 8
  call void @free(i8* %169) #3
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %if.then.240
  store i32 -123, i32* %retval
  br label %return

if.end.244:                                       ; preds = %if.end.236
  %170 = load i32, i32* %desc, align 4
  %171 = load i8*, i8** %buff, align 8
  %172 = load i32, i32* %filelen, align 4
  %call245 = call i32 @cli_writen(i32 %170, i8* %171, i32 %172)
  %173 = load i32, i32* %filelen, align 4
  %cmp246 = icmp ne i32 %call245, %173
  br i1 %cmp246, label %if.then.248, label %if.else.253

if.then.248:                                      ; preds = %if.end.244
  %174 = load i32, i32* %filelen, align 4
  %175 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.189, i32 0, i32 0), i32 %174, i8* %175)
  %176 = load i8*, i8** %subdir, align 8
  call void @free(i8* %176) #3
  %177 = load i8*, i8** %fname, align 8
  call void @free(i8* %177) #3
  %178 = load i8, i8* %compressed.addr, align 1
  %tobool249 = icmp ne i8 %178, 0
  br i1 %tobool249, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.then.248
  %179 = load i8*, i8** %buff, align 8
  call void @free(i8* %179) #3
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.250, %if.then.248
  %180 = load i32, i32* %desc, align 4
  %call252 = call i32 @close(i32 %180)
  store i32 -123, i32* %retval
  br label %return

if.else.253:                                      ; preds = %if.end.244
  %181 = load i8, i8* %compressed.addr, align 1
  %tobool254 = icmp ne i8 %181, 0
  br i1 %tobool254, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %if.else.253
  %182 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i32 0, i32 0), i8* %182)
  br label %if.end.257

if.else.256:                                      ; preds = %if.else.253
  %183 = load i8*, i8** %fname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.191, i32 0, i32 0), i8* %183)
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.256, %if.then.255
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257
  %184 = load i32, i32* %desc, align 4
  %call259 = call i32 @close(i32 %184)
  %cmp260 = icmp eq i32 %call259, -1
  br i1 %cmp260, label %if.then.262, label %if.end.266

if.then.262:                                      ; preds = %if.end.258
  %185 = load i32, i32* %desc, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.192, i32 0, i32 0), i32 %185)
  %186 = load i8*, i8** %subdir, align 8
  call void @free(i8* %186) #3
  %187 = load i8*, i8** %fname, align 8
  call void @free(i8* %187) #3
  %188 = load i8, i8* %compressed.addr, align 1
  %tobool263 = icmp ne i8 %188, 0
  br i1 %tobool263, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %if.then.262
  %189 = load i8*, i8** %buff, align 8
  call void @free(i8* %189) #3
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %if.then.262
  store i32 -123, i32* %retval
  br label %return

if.end.266:                                       ; preds = %if.end.258
  %190 = load i8*, i8** %fname, align 8
  call void @free(i8* %190) #3
  %191 = load i8, i8* %compressed.addr, align 1
  %tobool267 = icmp ne i8 %191, 0
  br i1 %tobool267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.end.266
  %192 = load i8*, i8** %buff, align 8
  call void @free(i8* %192) #3
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %if.end.266
  br label %for.inc

for.inc:                                          ; preds = %if.end.269, %if.then.176, %if.else.146, %if.then.139
  %193 = load i32, i32* %i, align 4
  %inc = add nsw i32 %193, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %194 = load i8*, i8** %subdir, align 8
  call void @free(i8* %194) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.265, %if.end.251, %if.end.243, %if.then.224, %if.then.217, %if.then.194, %if.then.159, %if.then.155, %if.then.145, %if.then.115, %if.then.105, %if.then.99, %if.end.71, %if.then.42, %sw.bb.25, %sw.bb.24, %if.then
  %195 = load i32, i32* %retval
  ret i32 %195
}

declare i32 @cli_scandir(i8*, %struct.cli_ctx*) #2

; Function Attrs: nounwind uwtable
define internal i8* @sis_utf16_decode(i8* %str, i32 %length) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %decoded = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4
  %rem = urem i32 %1, 2
  %tobool1 = icmp ne i32 %rem, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %length.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.193, i32 0, i32 0), i32 %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %length.addr, align 4
  %div = udiv i32 %3, 2
  %add = add i32 %div, 1
  %conv = zext i32 %add to i64
  %call = call i8* @cli_calloc(i64 %conv, i64 1)
  store i8* %call, i8** %decoded, align 8
  %tobool2 = icmp ne i8* %call, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %length.addr, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %add6 = add i32 %6, 1
  %idxprom = zext i32 %add6 to i64
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %8 to i32
  %shl = shl i32 %conv7, 4
  %conv8 = trunc i32 %shl to i8
  %9 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %9 to i64
  %10 = load i8*, i8** %decoded, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1
  %11 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %11 to i64
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %14 = load i32, i32* %j, align 4
  %idxprom14 = zext i32 %14 to i64
  %15 = load i8*, i8** %decoded, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %add17 = add nsw i32 %conv16, %conv13
  %conv18 = trunc i32 %add17 to i8
  store i8 %conv18, i8* %arrayidx15, align 1
  %17 = load i32, i32* %j, align 4
  %idxprom19 = zext i32 %17 to i64
  %18 = load i8*, i8** %decoded, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %18, i64 %idxprom19
  %19 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 37
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %idxprom25 = zext i32 %20 to i64
  %21 = load i8*, i8** %decoded, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  store i8 95, i8* %arrayidx26, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %22 = load i32, i32* %i, align 4
  %add28 = add i32 %22, 2
  store i32 %add28, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %decoded, align 8
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @cli_strdup(i8*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

declare i32 @uncompress(i8*, i64*, i8*, i64) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @cli_writen(i32, i8*, i32) #2

declare i32 @close(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
