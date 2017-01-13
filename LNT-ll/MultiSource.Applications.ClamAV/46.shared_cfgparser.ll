; ModuleID = './MultiSource.Applications.ClamAV/46.shared_cfgparser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfgoption = type { i8*, i16, i32, i8*, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cfgstruct = type { i8*, i8*, i32, i16, i16, %struct.cfgstruct*, %struct.cfgstruct* }

@.str = private unnamed_addr constant [8 x i8] c"LogFile\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LogFileUnlock\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LogFileMaxSize\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LogTime\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"LogClean\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"LogVerbose\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"LogSyslog\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"LogFacility\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL6\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"PidFile\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"TemporaryDirectory\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ScanPE\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ScanELF\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"DetectBrokenExecutables\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ScanMail\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"MailFollowURLs\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"MailMaxRecursion\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"PhishingSignatures\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"PhishingScanURLs\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"PhishingAlwaysBlockCloak\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"PhishingAlwaysBlockSSLMismatch\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"PhishingRestrictedScan\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"DetectPUA\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"AlgorithmicDetection\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"ScanHTML\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"ScanOLE2\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"ScanPDF\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ScanArchive\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"ArchiveMaxFileSize\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"ArchiveMaxRecursion\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"ArchiveMaxFiles\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"ArchiveMaxCompressionRatio\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"ArchiveLimitMemoryUsage\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"ArchiveBlockEncrypted\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"ArchiveBlockMax\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"DatabaseDirectory\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"/usr/local/share/clamav\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"TCPAddr\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"TCPSocket\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"LocalSocket\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"MaxConnectionQueueLength\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"StreamMaxLength\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"StreamMinPort\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"StreamMaxPort\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"MaxThreads\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ReadTimeout\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"IdleTimeout\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"MaxDirectoryRecursion\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"FollowDirectorySymlinks\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"FollowFileSymlinks\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"ExitOnOOM\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Foreground\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"LeaveTemporaryFiles\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"FixStaleSocket\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"AllowSupplementaryGroups\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"SelfCheck\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"VirusEvent\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"ClamukoScanOnAccess\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"ClamukoScanOnOpen\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"ClamukoScanOnClose\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ClamukoScanOnExec\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"ClamukoIncludePath\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"ClamukoExcludePath\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"ClamukoMaxFileSize\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"DatabaseOwner\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"clamav\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Checks\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"UpdateLogFile\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"DNSDatabaseInfo\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"current.cvd.clamav.net\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"DatabaseMirror\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"MaxAttempts\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"ScriptedUpdates\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"HTTPProxyServer\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"HTTPProxyPort\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"HTTPProxyUsername\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"HTTPProxyPassword\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"HTTPUserAgent\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"NotifyClamd\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"OnUpdateExecute\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"OnErrorExecute\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"OnOutdatedExecute\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"LocalIPAddress\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"ConnectTimeout\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"ReceiveTimeout\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"DevACOnly\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"DevACDepth\00", align 1
@cfg_options = global [86 x %struct.cfgoption] [%struct.cfgoption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i16 3, i32 1048576, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i16 6, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i16 2, i32 64, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i16 3, i32 10485760, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i16 2, i32 8, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i16 2, i32 1000, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i16 2, i32 250, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i16 6, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i16 2, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i16 2, i32 15, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i16 3, i32 10485760, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i16 2, i32 1024, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i16 2, i32 2048, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i16 2, i32 10, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i16 2, i32 120, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i16 2, i32 30, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i16 2, i32 15, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i32 0, i32 0), i16 4, i32 0, i8* null, i16 0, i16 3 }, %struct.cfgoption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i16 2, i32 1800, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i16 5, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i32 0, i32 0), i16 4, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i16 4, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i16 4, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i16 4, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 1, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 1, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i16 3, i32 5242880, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i16 6, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i16 2, i32 12, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i16 6, i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 1, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i16 2, i32 3, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i16 4, i32 1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0), i16 2, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i16 5, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i16 5, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i16 5, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i16 5, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i16 6, i32 -1, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0), i16 2, i32 30, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i16 2, i32 30, i8* null, i16 0, i16 2 }, %struct.cfgoption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i16 4, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i16 2, i32 -1, i8* null, i16 0, i16 1 }, %struct.cfgoption zeroinitializer], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.89 = private unnamed_addr constant [55 x i8] c"ERROR: Can't register new options (not enough memory)\0A\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"Example\00", align 1
@.str.92 = private unnamed_addr constant [48 x i8] c"ERROR: Please edit the example config file %s.\0A\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c" \0D\0A\00", align 1
@.str.94 = private unnamed_addr constant [68 x i8] c"ERROR: Parse error at line %d: Option %s requires string argument.\0A\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.97 = private unnamed_addr constant [65 x i8] c"ERROR: Parse error at line %d: Option %s missing closing quote.\0A\00", align 1
@.str.98 = private unnamed_addr constant [71 x i8] c"ERROR: Parse error at line %d: Option %s requires numerical argument.\0A\00", align 1
@.str.99 = private unnamed_addr constant [61 x i8] c"ERROR: Parse error at line %d: Option %s requires argument.\0A\00", align 1
@.str.100 = private unnamed_addr constant [81 x i8] c"ERROR: Parse error at line %d: Option %s requires numerical (raw/K/M) argument.\0A\00", align 1
@.str.101 = private unnamed_addr constant [69 x i8] c"ERROR: Parse error at line %d: Option %s requires boolean argument.\0A\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.108 = private unnamed_addr constant [64 x i8] c"ERROR: Parse error at line %d: Option %s is of unknown type %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"ERROR: Parse error at line %d: Unknown option %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.cfgstruct* @getcfg(i8* %cfgfile, i32 %verbose) #0 {
entry:
  %retval = alloca %struct.cfgstruct*, align 8
  %cfgfile.addr = alloca i8*, align 8
  %verbose.addr = alloca i32, align 4
  %buff = alloca [1024 x i8], align 16
  %name = alloca i8*, align 8
  %arg = alloca i8*, align 8
  %c = alloca i8*, align 8
  %fs = alloca %struct._IO_FILE*, align 8
  %line = alloca i32, align 4
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %ctype = alloca i32, align 4
  %calc = alloca i32, align 4
  %val = alloca i32, align 4
  %copt = alloca %struct.cfgstruct*, align 8
  %pt = alloca %struct.cfgoption*, align 8
  %cpy = alloca i8*, align 8
  store i8* %cfgfile, i8** %cfgfile.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %line, align 4
  store %struct.cfgstruct* null, %struct.cfgstruct** %copt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [86 x %struct.cfgoption], [86 x %struct.cfgoption]* @cfg_options, i32 0, i64 %idxprom
  store %struct.cfgoption* %arrayidx, %struct.cfgoption** %pt, align 8
  %1 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %name1 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %1, i32 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %name2 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %3, i32 0, i32 0
  %4 = load i8*, i8** %name2, align 8
  %5 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %strarg = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %5, i32 0, i32 3
  %6 = load i8*, i8** %strarg, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %strarg4 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %7, i32 0, i32 3
  %8 = load i8*, i8** %strarg4, align 8
  %call = call noalias i8* @strdup(i8* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  %9 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %numarg = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %9, i32 0, i32 2
  %10 = load i32, i32* %numarg, align 4
  %11 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %11, i32 0, i32 4
  %12 = load i16, i16* %multiple, align 2
  %call5 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %4, i8* %cond, i32 %10, i16 signext %12)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %cond.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %14 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %14)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %16 = load i8*, i8** %cfgfile.addr, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fs, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  %17 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %17)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.12:                                        ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.283, %if.then.19, %if.end.12
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call13 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %18)
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %line, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %line, align 4
  %arrayidx16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i64 0
  %20 = load i8, i8* %arrayidx16, align 1
  %conv = sext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv, 35
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  br label %while.cond

if.end.20:                                        ; preds = %while.body
  %arraydecay21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %call22 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8* %arraydecay21, i64 7) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.30, label %if.then.24

if.then.24:                                       ; preds = %if.end.20
  %21 = load i32, i32* %verbose.addr, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.24
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** %cfgfile.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.92, i32 0, i32 0), i8* %23)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.24
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %25)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.20
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %call32 = call i8* @cli_strtok(i8* %arraydecay31, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0))
  store i8* %call32, i8** %name, align 8
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.then.34, label %if.end.283

if.then.34:                                       ; preds = %if.end.30
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %call36 = call i8* @cli_strtok(i8* %arraydecay35, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0))
  store i8* %call36, i8** %arg, align 8
  store i32 0, i32* %found, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.272, %if.then.34
  %26 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [86 x %struct.cfgoption], [86 x %struct.cfgoption]* @cfg_options, i32 0, i64 %idxprom38
  store %struct.cfgoption* %arrayidx39, %struct.cfgoption** %pt, align 8
  %27 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %name40 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %27, i32 0, i32 0
  %28 = load i8*, i8** %name40, align 8
  %tobool41 = icmp ne i8* %28, null
  br i1 %tobool41, label %if.then.42, label %if.else.270

if.then.42:                                       ; preds = %for.cond.37
  %29 = load i8*, i8** %name, align 8
  %30 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %name43 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %30, i32 0, i32 0
  %31 = load i8*, i8** %name43, align 8
  %call44 = call i32 @strcmp(i8* %29, i8* %31) #5
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.269, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  store i32 1, i32* %found, align 4
  %32 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %argtype = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %32, i32 0, i32 1
  %33 = load i16, i16* %argtype, align 2
  %conv47 = zext i16 %33 to i32
  switch i32 %conv47, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.64
    i32 6, label %sw.bb.90
    i32 2, label %sw.bb.135
    i32 3, label %sw.bb.156
    i32 4, label %sw.bb.218
  ]

sw.bb:                                            ; preds = %if.then.46
  %34 = load i8*, i8** %arg, align 8
  %tobool48 = icmp ne i8* %34, null
  br i1 %tobool48, label %if.end.55, label %if.then.49

if.then.49:                                       ; preds = %sw.bb
  %35 = load i32, i32* %verbose.addr, align 4
  %tobool50 = icmp ne i32 %35, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.49
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i32, i32* %line, align 4
  %38 = load i8*, i8** %name, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.94, i32 0, i32 0), i32 %37, i8* %38)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.49
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* %39)
  %40 = load i8*, i8** %name, align 8
  call void @free(i8* %40) #4
  %41 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %41)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.55:                                        ; preds = %sw.bb
  %42 = load i8*, i8** %name, align 8
  %43 = load i8*, i8** %arg, align 8
  %44 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple56 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %44, i32 0, i32 4
  %45 = load i16, i16* %multiple56, align 2
  %call57 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %42, i8* %43, i32 -1, i16 signext %45)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.55
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call62 = call i32 @fclose(%struct._IO_FILE* %47)
  %48 = load i8*, i8** %name, align 8
  call void @free(i8* %48) #4
  %49 = load i8*, i8** %arg, align 8
  call void @free(i8* %49) #4
  %50 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %50)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.55
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.then.46
  %51 = load i8*, i8** %arg, align 8
  %tobool65 = icmp ne i8* %51, null
  br i1 %tobool65, label %if.end.72, label %if.then.66

if.then.66:                                       ; preds = %sw.bb.64
  %52 = load i32, i32* %verbose.addr, align 4
  %tobool67 = icmp ne i32 %52, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.66
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i32, i32* %line, align 4
  %55 = load i8*, i8** %name, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.94, i32 0, i32 0), i32 %54, i8* %55)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.66
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %56)
  %57 = load i8*, i8** %name, align 8
  call void @free(i8* %57) #4
  %58 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %58)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.72:                                        ; preds = %sw.bb.64
  %59 = load i8*, i8** %arg, align 8
  call void @free(i8* %59) #4
  %arraydecay73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %call74 = call i8* @strstr(i8* %arraydecay73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0)) #5
  store i8* %call74, i8** %arg, align 8
  %60 = load i8*, i8** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8
  %call75 = call noalias i8* @strdup(i8* %incdec.ptr) #4
  store i8* %call75, i8** %arg, align 8
  %61 = load i8*, i8** %arg, align 8
  %tobool76 = icmp ne i8* %61, null
  br i1 %tobool76, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %if.end.72
  %62 = load i8*, i8** %arg, align 8
  %call77 = call i8* @strpbrk(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0)) #5
  store i8* %call77, i8** %c, align 8
  %tobool78 = icmp ne i8* %call77, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true
  %63 = load i8*, i8** %c, align 8
  store i8 0, i8* %63, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %land.lhs.true, %if.end.72
  %64 = load i8*, i8** %arg, align 8
  %tobool81 = icmp ne i8* %64, null
  br i1 %tobool81, label %lor.lhs.false, label %if.then.86

lor.lhs.false:                                    ; preds = %if.end.80
  %65 = load i8*, i8** %name, align 8
  %66 = load i8*, i8** %arg, align 8
  %67 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple82 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %67, i32 0, i32 4
  %68 = load i16, i16* %multiple82, align 2
  %call83 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %65, i8* %66, i32 -1, i16 signext %68)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %lor.lhs.false, %if.end.80
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call88 = call i32 @fclose(%struct._IO_FILE* %70)
  %71 = load i8*, i8** %name, align 8
  call void @free(i8* %71) #4
  %72 = load i8*, i8** %arg, align 8
  call void @free(i8* %72) #4
  %73 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %73)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.then.46
  %74 = load i8*, i8** %arg, align 8
  %tobool91 = icmp ne i8* %74, null
  br i1 %tobool91, label %if.end.98, label %if.then.92

if.then.92:                                       ; preds = %sw.bb.90
  %75 = load i32, i32* %verbose.addr, align 4
  %tobool93 = icmp ne i32 %75, 0
  br i1 %tobool93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.then.92
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = load i32, i32* %line, align 4
  %78 = load i8*, i8** %name, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.94, i32 0, i32 0), i32 %77, i8* %78)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.then.92
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call97 = call i32 @fclose(%struct._IO_FILE* %79)
  %80 = load i8*, i8** %name, align 8
  call void @free(i8* %80) #4
  %81 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %81)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.98:                                        ; preds = %sw.bb.90
  %82 = load i8*, i8** %arg, align 8
  %83 = load i8, i8* %82, align 1
  %conv99 = sext i8 %83 to i32
  %cmp100 = icmp eq i32 %conv99, 39
  br i1 %cmp100, label %if.then.106, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %if.end.98
  %84 = load i8*, i8** %arg, align 8
  %85 = load i8, i8* %84, align 1
  %conv103 = sext i8 %85 to i32
  %cmp104 = icmp eq i32 %conv103, 34
  br i1 %cmp104, label %if.then.106, label %if.end.124

if.then.106:                                      ; preds = %lor.lhs.false.102, %if.end.98
  %86 = load i8*, i8** %arg, align 8
  call void @free(i8* %86) #4
  %arraydecay107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buff, i32 0, i32 0
  %call108 = call i8* @strstr(i8* %arraydecay107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0)) #5
  store i8* %call108, i8** %c, align 8
  %87 = load i8*, i8** %c, align 8
  %add.ptr = getelementptr inbounds i8, i8* %87, i64 2
  %call109 = call noalias i8* @strdup(i8* %add.ptr) #4
  store i8* %call109, i8** %arg, align 8
  %88 = load i8*, i8** %arg, align 8
  %tobool110 = icmp ne i8* %88, null
  br i1 %tobool110, label %if.then.111, label %if.end.123

if.then.111:                                      ; preds = %if.then.106
  %89 = load i8*, i8** %arg, align 8
  %90 = load i8*, i8** %c, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %91 to i32
  %call114 = call i8* @strchr(i8* %89, i32 %conv113) #5
  store i8* %call114, i8** %c, align 8
  %tobool115 = icmp ne i8* %call114, null
  br i1 %tobool115, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %if.then.111
  %92 = load i8*, i8** %c, align 8
  store i8 0, i8* %92, align 1
  br label %if.end.122

if.else:                                          ; preds = %if.then.111
  %93 = load i32, i32* %verbose.addr, align 4
  %tobool117 = icmp ne i32 %93, 0
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.else
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load i32, i32* %line, align 4
  %96 = load i8*, i8** %name, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.97, i32 0, i32 0), i32 %95, i8* %96)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.else
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call121 = call i32 @fclose(%struct._IO_FILE* %97)
  %98 = load i8*, i8** %name, align 8
  call void @free(i8* %98) #4
  %99 = load i8*, i8** %arg, align 8
  call void @free(i8* %99) #4
  %100 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %100)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.122:                                       ; preds = %if.then.116
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.106
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %lor.lhs.false.102
  %101 = load i8*, i8** %arg, align 8
  %tobool125 = icmp ne i8* %101, null
  br i1 %tobool125, label %lor.lhs.false.126, label %if.then.131

lor.lhs.false.126:                                ; preds = %if.end.124
  %102 = load i8*, i8** %name, align 8
  %103 = load i8*, i8** %arg, align 8
  %104 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple127 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %104, i32 0, i32 4
  %105 = load i16, i16* %multiple127, align 2
  %call128 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %102, i8* %103, i32 -1, i16 signext %105)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %lor.lhs.false.126, %if.end.124
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call133 = call i32 @fclose(%struct._IO_FILE* %107)
  %108 = load i8*, i8** %name, align 8
  call void @free(i8* %108) #4
  %109 = load i8*, i8** %arg, align 8
  call void @free(i8* %109) #4
  %110 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %110)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.134:                                       ; preds = %lor.lhs.false.126
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.then.46
  %111 = load i8*, i8** %arg, align 8
  %tobool136 = icmp ne i8* %111, null
  br i1 %tobool136, label %lor.lhs.false.137, label %if.then.140

lor.lhs.false.137:                                ; preds = %sw.bb.135
  %112 = load i8*, i8** %arg, align 8
  %call138 = call i32 @isnumb(i8* %112)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.146, label %if.then.140

if.then.140:                                      ; preds = %lor.lhs.false.137, %sw.bb.135
  %113 = load i32, i32* %verbose.addr, align 4
  %tobool141 = icmp ne i32 %113, 0
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.then.140
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %115 = load i32, i32* %line, align 4
  %116 = load i8*, i8** %name, align 8
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.98, i32 0, i32 0), i32 %115, i8* %116)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.then.140
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call145 = call i32 @fclose(%struct._IO_FILE* %117)
  %118 = load i8*, i8** %name, align 8
  call void @free(i8* %118) #4
  %119 = load i8*, i8** %arg, align 8
  call void @free(i8* %119) #4
  %120 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %120)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.146:                                       ; preds = %lor.lhs.false.137
  %121 = load i8*, i8** %name, align 8
  %122 = load i8*, i8** %arg, align 8
  %call147 = call i32 @atoi(i8* %122) #5
  %123 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple148 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %123, i32 0, i32 4
  %124 = load i16, i16* %multiple148, align 2
  %call149 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %121, i8* null, i32 %call147, i16 signext %124)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.end.155

if.then.152:                                      ; preds = %if.end.146
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call154 = call i32 @fclose(%struct._IO_FILE* %126)
  %127 = load i8*, i8** %name, align 8
  call void @free(i8* %127) #4
  %128 = load i8*, i8** %arg, align 8
  call void @free(i8* %128) #4
  %129 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %129)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.155:                                       ; preds = %if.end.146
  %130 = load i8*, i8** %arg, align 8
  call void @free(i8* %130) #4
  br label %sw.epilog

sw.bb.156:                                        ; preds = %if.then.46
  %131 = load i8*, i8** %arg, align 8
  %tobool157 = icmp ne i8* %131, null
  br i1 %tobool157, label %if.end.164, label %if.then.158

if.then.158:                                      ; preds = %sw.bb.156
  %132 = load i32, i32* %verbose.addr, align 4
  %tobool159 = icmp ne i32 %132, 0
  br i1 %tobool159, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.then.158
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %134 = load i32, i32* %line, align 4
  %135 = load i8*, i8** %name, align 8
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.99, i32 0, i32 0), i32 %134, i8* %135)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.then.158
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call163 = call i32 @fclose(%struct._IO_FILE* %136)
  %137 = load i8*, i8** %name, align 8
  call void @free(i8* %137) #4
  %138 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %138)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.164:                                       ; preds = %sw.bb.156
  %139 = load i8*, i8** %arg, align 8
  %call165 = call i64 @strlen(i8* %139) #5
  %sub = sub i64 %call165, 1
  %140 = load i8*, i8** %arg, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %140, i64 %sub
  %141 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %141 to i32
  %call168 = call i32 @tolower(i32 %conv167) #4
  store i32 %call168, i32* %ctype, align 4
  %142 = load i32, i32* %ctype, align 4
  %cmp169 = icmp eq i32 %142, 109
  br i1 %cmp169, label %if.then.174, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %if.end.164
  %143 = load i32, i32* %ctype, align 4
  %cmp172 = icmp eq i32 %143, 107
  br i1 %cmp172, label %if.then.174, label %if.else.198

if.then.174:                                      ; preds = %lor.lhs.false.171, %if.end.164
  %144 = load i8*, i8** %arg, align 8
  %call175 = call i64 @strlen(i8* %144) #5
  %call176 = call noalias i8* @calloc(i64 %call175, i64 1) #4
  store i8* %call176, i8** %cpy, align 8
  %145 = load i8*, i8** %cpy, align 8
  %146 = load i8*, i8** %arg, align 8
  %147 = load i8*, i8** %arg, align 8
  %call177 = call i64 @strlen(i8* %147) #5
  %sub178 = sub i64 %call177, 1
  %call179 = call i8* @strncpy(i8* %145, i8* %146, i64 %sub178) #4
  %148 = load i8*, i8** %cpy, align 8
  %call180 = call i32 @isnumb(i8* %148)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end.188, label %if.then.182

if.then.182:                                      ; preds = %if.then.174
  %149 = load i32, i32* %verbose.addr, align 4
  %tobool183 = icmp ne i32 %149, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %if.then.182
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %151 = load i32, i32* %line, align 4
  %152 = load i8*, i8** %name, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.100, i32 0, i32 0), i32 %151, i8* %152)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %if.then.182
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call187 = call i32 @fclose(%struct._IO_FILE* %153)
  %154 = load i8*, i8** %name, align 8
  call void @free(i8* %154) #4
  %155 = load i8*, i8** %arg, align 8
  call void @free(i8* %155) #4
  %156 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %156)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.188:                                       ; preds = %if.then.174
  %157 = load i32, i32* %ctype, align 4
  %cmp189 = icmp eq i32 %157, 109
  br i1 %cmp189, label %if.then.191, label %if.else.194

if.then.191:                                      ; preds = %if.end.188
  %158 = load i8*, i8** %cpy, align 8
  %call192 = call i32 @atoi(i8* %158) #5
  %mul = mul nsw i32 %call192, 1024
  %mul193 = mul nsw i32 %mul, 1024
  store i32 %mul193, i32* %calc, align 4
  br label %if.end.197

if.else.194:                                      ; preds = %if.end.188
  %159 = load i8*, i8** %cpy, align 8
  %call195 = call i32 @atoi(i8* %159) #5
  %mul196 = mul nsw i32 %call195, 1024
  store i32 %mul196, i32* %calc, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.then.191
  %160 = load i8*, i8** %cpy, align 8
  call void @free(i8* %160) #4
  br label %if.end.209

if.else.198:                                      ; preds = %lor.lhs.false.171
  %161 = load i8*, i8** %arg, align 8
  %call199 = call i32 @isnumb(i8* %161)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.end.207, label %if.then.201

if.then.201:                                      ; preds = %if.else.198
  %162 = load i32, i32* %verbose.addr, align 4
  %tobool202 = icmp ne i32 %162, 0
  br i1 %tobool202, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.then.201
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %164 = load i32, i32* %line, align 4
  %165 = load i8*, i8** %name, align 8
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.100, i32 0, i32 0), i32 %164, i8* %165)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.then.201
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call206 = call i32 @fclose(%struct._IO_FILE* %166)
  %167 = load i8*, i8** %name, align 8
  call void @free(i8* %167) #4
  %168 = load i8*, i8** %arg, align 8
  call void @free(i8* %168) #4
  %169 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %169)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.207:                                       ; preds = %if.else.198
  %170 = load i8*, i8** %arg, align 8
  %call208 = call i32 @atoi(i8* %170) #5
  store i32 %call208, i32* %calc, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.207, %if.end.197
  %171 = load i8*, i8** %arg, align 8
  call void @free(i8* %171) #4
  %172 = load i8*, i8** %name, align 8
  %173 = load i32, i32* %calc, align 4
  %174 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple210 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %174, i32 0, i32 4
  %175 = load i16, i16* %multiple210, align 2
  %call211 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %172, i8* null, i32 %173, i16 signext %175)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %if.then.214, label %if.end.217

if.then.214:                                      ; preds = %if.end.209
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call216 = call i32 @fclose(%struct._IO_FILE* %177)
  %178 = load i8*, i8** %name, align 8
  call void @free(i8* %178) #4
  %179 = load i8*, i8** %arg, align 8
  call void @free(i8* %179) #4
  %180 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %180)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.217:                                       ; preds = %if.end.209
  br label %sw.epilog

sw.bb.218:                                        ; preds = %if.then.46
  %181 = load i8*, i8** %arg, align 8
  %tobool219 = icmp ne i8* %181, null
  br i1 %tobool219, label %if.end.226, label %if.then.220

if.then.220:                                      ; preds = %sw.bb.218
  %182 = load i32, i32* %verbose.addr, align 4
  %tobool221 = icmp ne i32 %182, 0
  br i1 %tobool221, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %if.then.220
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %184 = load i32, i32* %line, align 4
  %185 = load i8*, i8** %name, align 8
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.101, i32 0, i32 0), i32 %184, i8* %185)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %if.then.220
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call225 = call i32 @fclose(%struct._IO_FILE* %186)
  %187 = load i8*, i8** %name, align 8
  call void @free(i8* %187) #4
  %188 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %188)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.226:                                       ; preds = %sw.bb.218
  %189 = load i8*, i8** %arg, align 8
  %call227 = call i32 @strcasecmp(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0)) #5
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %lor.lhs.false.229, label %if.then.235

lor.lhs.false.229:                                ; preds = %if.end.226
  %190 = load i8*, i8** %arg, align 8
  %call230 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0)) #5
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %lor.lhs.false.232, label %if.then.235

lor.lhs.false.232:                                ; preds = %lor.lhs.false.229
  %191 = load i8*, i8** %arg, align 8
  %call233 = call i32 @strcasecmp(i8* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0)) #5
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.else.236, label %if.then.235

if.then.235:                                      ; preds = %lor.lhs.false.232, %lor.lhs.false.229, %if.end.226
  store i32 1, i32* %val, align 4
  br label %if.end.253

if.else.236:                                      ; preds = %lor.lhs.false.232
  %192 = load i8*, i8** %arg, align 8
  %call237 = call i32 @strcasecmp(i8* %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0)) #5
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %lor.lhs.false.239, label %if.then.245

lor.lhs.false.239:                                ; preds = %if.else.236
  %193 = load i8*, i8** %arg, align 8
  %call240 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0)) #5
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %lor.lhs.false.242, label %if.then.245

lor.lhs.false.242:                                ; preds = %lor.lhs.false.239
  %194 = load i8*, i8** %arg, align 8
  %call243 = call i32 @strcasecmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #5
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %if.else.246, label %if.then.245

if.then.245:                                      ; preds = %lor.lhs.false.242, %lor.lhs.false.239, %if.else.236
  store i32 0, i32* %val, align 4
  br label %if.end.252

if.else.246:                                      ; preds = %lor.lhs.false.242
  %195 = load i32, i32* %verbose.addr, align 4
  %tobool247 = icmp ne i32 %195, 0
  br i1 %tobool247, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %if.else.246
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %197 = load i32, i32* %line, align 4
  %198 = load i8*, i8** %name, align 8
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.101, i32 0, i32 0), i32 %197, i8* %198)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %if.else.246
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call251 = call i32 @fclose(%struct._IO_FILE* %199)
  %200 = load i8*, i8** %name, align 8
  call void @free(i8* %200) #4
  %201 = load i8*, i8** %arg, align 8
  call void @free(i8* %201) #4
  %202 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %202)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.252:                                       ; preds = %if.then.245
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.then.235
  %203 = load i8*, i8** %arg, align 8
  call void @free(i8* %203) #4
  %204 = load i8*, i8** %name, align 8
  %205 = load i32, i32* %val, align 4
  %206 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %multiple254 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %206, i32 0, i32 4
  %207 = load i16, i16* %multiple254, align 2
  %call255 = call i32 @regcfg(%struct.cfgstruct** %copt, i8* %204, i8* null, i32 %205, i16 signext %207)
  %cmp256 = icmp slt i32 %call255, 0
  br i1 %cmp256, label %if.then.258, label %if.end.261

if.then.258:                                      ; preds = %if.end.253
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i32 0, i32 0))
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call260 = call i32 @fclose(%struct._IO_FILE* %209)
  %210 = load i8*, i8** %name, align 8
  call void @free(i8* %210) #4
  %211 = load i8*, i8** %arg, align 8
  call void @free(i8* %211) #4
  %212 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %212)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.261:                                       ; preds = %if.end.253
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.46
  %213 = load i32, i32* %verbose.addr, align 4
  %tobool262 = icmp ne i32 %213, 0
  br i1 %tobool262, label %if.then.263, label %if.end.267

if.then.263:                                      ; preds = %sw.default
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %215 = load i32, i32* %line, align 4
  %216 = load i8*, i8** %name, align 8
  %217 = load %struct.cfgoption*, %struct.cfgoption** %pt, align 8
  %argtype264 = getelementptr inbounds %struct.cfgoption, %struct.cfgoption* %217, i32 0, i32 1
  %218 = load i16, i16* %argtype264, align 2
  %conv265 = zext i16 %218 to i32
  %call266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.108, i32 0, i32 0), i32 %215, i8* %216, i32 %conv265)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.263, %sw.default
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call268 = call i32 @fclose(%struct._IO_FILE* %219)
  %220 = load i8*, i8** %name, align 8
  call void @free(i8* %220) #4
  %221 = load i8*, i8** %arg, align 8
  call void @free(i8* %221) #4
  %222 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %222)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.261, %if.end.217, %if.end.155, %if.end.134, %if.end.89, %if.end.63
  br label %if.end.269

if.end.269:                                       ; preds = %sw.epilog, %if.then.42
  br label %if.end.271

if.else.270:                                      ; preds = %for.cond.37
  br label %for.end.274

if.end.271:                                       ; preds = %if.end.269
  br label %for.inc.272

for.inc.272:                                      ; preds = %if.end.271
  %223 = load i32, i32* %i, align 4
  %inc273 = add nsw i32 %223, 1
  store i32 %inc273, i32* %i, align 4
  br label %for.cond.37

for.end.274:                                      ; preds = %if.else.270
  %224 = load i32, i32* %found, align 4
  %tobool275 = icmp ne i32 %224, 0
  br i1 %tobool275, label %if.end.282, label %if.then.276

if.then.276:                                      ; preds = %for.end.274
  %225 = load i32, i32* %verbose.addr, align 4
  %tobool277 = icmp ne i32 %225, 0
  br i1 %tobool277, label %if.then.278, label %if.end.280

if.then.278:                                      ; preds = %if.then.276
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %227 = load i32, i32* %line, align 4
  %228 = load i8*, i8** %name, align 8
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.109, i32 0, i32 0), i32 %227, i8* %228)
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.278, %if.then.276
  %229 = load i8*, i8** %name, align 8
  call void @free(i8* %229) #4
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call281 = call i32 @fclose(%struct._IO_FILE* %230)
  %231 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %231)
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

if.end.282:                                       ; preds = %for.end.274
  %232 = load i8*, i8** %name, align 8
  call void @free(i8* %232) #4
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.end.30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call284 = call i32 @fclose(%struct._IO_FILE* %233)
  %234 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  store %struct.cfgstruct* %234, %struct.cfgstruct** %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.280, %if.end.267, %if.then.258, %if.end.250, %if.end.224, %if.then.214, %if.end.205, %if.end.186, %if.end.162, %if.then.152, %if.end.144, %if.then.131, %if.end.120, %if.end.96, %if.then.86, %if.end.70, %if.then.60, %if.end.53, %if.end.28, %if.then.11, %if.then.6
  %235 = load %struct.cfgstruct*, %struct.cfgstruct** %retval
  ret %struct.cfgstruct* %235
}

; Function Attrs: nounwind uwtable
define internal i32 @regcfg(%struct.cfgstruct** %copt, i8* %optname, i8* %strarg, i32 %numarg, i16 signext %multiple) #0 {
entry:
  %retval = alloca i32, align 4
  %copt.addr = alloca %struct.cfgstruct**, align 8
  %optname.addr = alloca i8*, align 8
  %strarg.addr = alloca i8*, align 8
  %numarg.addr = alloca i32, align 4
  %multiple.addr = alloca i16, align 2
  %newnode = alloca %struct.cfgstruct*, align 8
  %pt = alloca %struct.cfgstruct*, align 8
  store %struct.cfgstruct** %copt, %struct.cfgstruct*** %copt.addr, align 8
  store i8* %optname, i8** %optname.addr, align 8
  store i8* %strarg, i8** %strarg.addr, align 8
  store i32 %numarg, i32* %numarg.addr, align 4
  store i16 %multiple, i16* %multiple.addr, align 2
  %call = call noalias i8* @malloc(i64 40) #4
  %0 = bitcast i8* %call to %struct.cfgstruct*
  store %struct.cfgstruct* %0, %struct.cfgstruct** %newnode, align 8
  %1 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %tobool = icmp ne %struct.cfgstruct* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %optname.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i8*, i8** %optname.addr, align 8
  %call2 = call noalias i8* @strdup(i8* %3) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ null, %cond.false ]
  %4 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %optname3 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %4, i32 0, i32 0
  store i8* %cond, i8** %optname3, align 8
  %5 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %nextarg = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %5, i32 0, i32 5
  store %struct.cfgstruct* null, %struct.cfgstruct** %nextarg, align 8
  %6 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %next = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %6, i32 0, i32 6
  store %struct.cfgstruct* null, %struct.cfgstruct** %next, align 8
  %7 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %enabled = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %7, i32 0, i32 3
  store i16 0, i16* %enabled, align 2
  %8 = load i16, i16* %multiple.addr, align 2
  %9 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %multiple4 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %9, i32 0, i32 4
  store i16 %8, i16* %multiple4, align 2
  %10 = load i8*, i8** %strarg.addr, align 8
  %tobool5 = icmp ne i8* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %cond.end
  %11 = load i8*, i8** %strarg.addr, align 8
  %12 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %strarg7 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %12, i32 0, i32 1
  store i8* %11, i8** %strarg7, align 8
  %13 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %enabled8 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %13, i32 0, i32 3
  store i16 1, i16* %enabled8, align 2
  br label %if.end.10

if.else:                                          ; preds = %cond.end
  %14 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %strarg9 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %14, i32 0, i32 1
  store i8* null, i8** %strarg9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %15 = load i32, i32* %numarg.addr, align 4
  %16 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %numarg11 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %16, i32 0, i32 2
  store i32 %15, i32* %numarg11, align 4
  %17 = load i32, i32* %numarg.addr, align 4
  %cmp = icmp ne i32 %17, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.10
  %18 = load i32, i32* %numarg.addr, align 4
  %cmp12 = icmp ne i32 %18, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %19 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %enabled14 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %19, i32 0, i32 3
  store i16 1, i16* %enabled14, align 2
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %if.end.10
  %20 = load %struct.cfgstruct**, %struct.cfgstruct*** %copt.addr, align 8
  %21 = load %struct.cfgstruct*, %struct.cfgstruct** %20, align 8
  %22 = load i8*, i8** %optname.addr, align 8
  %call16 = call %struct.cfgstruct* @cfgopt_i(%struct.cfgstruct* %21, i8* %22)
  store %struct.cfgstruct* %call16, %struct.cfgstruct** %pt, align 8
  %tobool17 = icmp ne %struct.cfgstruct* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.else.64

if.then.18:                                       ; preds = %if.end.15
  %23 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %multiple19 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %23, i32 0, i32 4
  %24 = load i16, i16* %multiple19, align 2
  %tobool20 = icmp ne i16 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.else.47

if.then.21:                                       ; preds = %if.then.18
  %25 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %enabled22 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %25, i32 0, i32 3
  %26 = load i16, i16* %enabled22, align 2
  %tobool23 = icmp ne i16 %26, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.then.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.24
  %27 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %nextarg25 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %27, i32 0, i32 5
  %28 = load %struct.cfgstruct*, %struct.cfgstruct** %nextarg25, align 8
  %tobool26 = icmp ne %struct.cfgstruct* %28, null
  br i1 %tobool26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %nextarg27 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %29, i32 0, i32 5
  %30 = load %struct.cfgstruct*, %struct.cfgstruct** %nextarg27, align 8
  store %struct.cfgstruct* %30, %struct.cfgstruct** %pt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %32 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %nextarg28 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %32, i32 0, i32 5
  store %struct.cfgstruct* %31, %struct.cfgstruct** %nextarg28, align 8
  br label %if.end.46

if.else.29:                                       ; preds = %if.then.21
  %33 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %strarg30 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %33, i32 0, i32 1
  %34 = load i8*, i8** %strarg30, align 8
  %tobool31 = icmp ne i8* %34, null
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else.29
  %35 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %strarg33 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %35, i32 0, i32 1
  %36 = load i8*, i8** %strarg33, align 8
  call void @free(i8* %36) #4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else.29
  %37 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %strarg35 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %37, i32 0, i32 1
  %38 = load i8*, i8** %strarg35, align 8
  %39 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %strarg36 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %39, i32 0, i32 1
  store i8* %38, i8** %strarg36, align 8
  %40 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %numarg37 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %40, i32 0, i32 2
  %41 = load i32, i32* %numarg37, align 4
  %42 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %numarg38 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %42, i32 0, i32 2
  store i32 %41, i32* %numarg38, align 4
  %43 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %enabled39 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %43, i32 0, i32 3
  %44 = load i16, i16* %enabled39, align 2
  %45 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %enabled40 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %45, i32 0, i32 3
  store i16 %44, i16* %enabled40, align 2
  %46 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %optname41 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %46, i32 0, i32 0
  %47 = load i8*, i8** %optname41, align 8
  %tobool42 = icmp ne i8* %47, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.34
  %48 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %optname44 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %48, i32 0, i32 0
  %49 = load i8*, i8** %optname44, align 8
  call void @free(i8* %49) #4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.34
  %50 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %51 = bitcast %struct.cfgstruct* %50 to i8*
  call void @free(i8* %51) #4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %while.end
  store i32 3, i32* %retval
  br label %return

if.else.47:                                       ; preds = %if.then.18
  %52 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %strarg48 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %52, i32 0, i32 1
  %53 = load i8*, i8** %strarg48, align 8
  %tobool49 = icmp ne i8* %53, null
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.else.47
  %54 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %strarg51 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %54, i32 0, i32 1
  %55 = load i8*, i8** %strarg51, align 8
  call void @free(i8* %55) #4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.else.47
  %56 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %strarg53 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %56, i32 0, i32 1
  %57 = load i8*, i8** %strarg53, align 8
  %58 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %strarg54 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %58, i32 0, i32 1
  store i8* %57, i8** %strarg54, align 8
  %59 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %numarg55 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %59, i32 0, i32 2
  %60 = load i32, i32* %numarg55, align 4
  %61 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %numarg56 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %61, i32 0, i32 2
  store i32 %60, i32* %numarg56, align 4
  %62 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %enabled57 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %62, i32 0, i32 3
  %63 = load i16, i16* %enabled57, align 2
  %64 = load %struct.cfgstruct*, %struct.cfgstruct** %pt, align 8
  %enabled58 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %64, i32 0, i32 3
  store i16 %63, i16* %enabled58, align 2
  %65 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %optname59 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %65, i32 0, i32 0
  %66 = load i8*, i8** %optname59, align 8
  %tobool60 = icmp ne i8* %66, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.52
  %67 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %optname62 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %67, i32 0, i32 0
  %68 = load i8*, i8** %optname62, align 8
  call void @free(i8* %68) #4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.52
  %69 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %70 = bitcast %struct.cfgstruct* %69 to i8*
  call void @free(i8* %70) #4
  store i32 2, i32* %retval
  br label %return

if.else.64:                                       ; preds = %if.end.15
  %71 = load %struct.cfgstruct**, %struct.cfgstruct*** %copt.addr, align 8
  %72 = load %struct.cfgstruct*, %struct.cfgstruct** %71, align 8
  %73 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %next65 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %73, i32 0, i32 6
  store %struct.cfgstruct* %72, %struct.cfgstruct** %next65, align 8
  %74 = load %struct.cfgstruct*, %struct.cfgstruct** %newnode, align 8
  %75 = load %struct.cfgstruct**, %struct.cfgstruct*** %copt.addr, align 8
  store %struct.cfgstruct* %74, %struct.cfgstruct** %75, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.64, %if.end.63, %if.end.46, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @freecfg(%struct.cfgstruct* %copt) #0 {
entry:
  %copt.addr = alloca %struct.cfgstruct*, align 8
  %handler = alloca %struct.cfgstruct*, align 8
  %arg = alloca %struct.cfgstruct*, align 8
  store %struct.cfgstruct* %copt, %struct.cfgstruct** %copt.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %0 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %tobool = icmp ne %struct.cfgstruct* %0, null
  br i1 %tobool, label %while.body, label %while.end.18

while.body:                                       ; preds = %while.cond
  %1 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %nextarg = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %1, i32 0, i32 5
  %2 = load %struct.cfgstruct*, %struct.cfgstruct** %nextarg, align 8
  store %struct.cfgstruct* %2, %struct.cfgstruct** %arg, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %3 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  %tobool2 = icmp ne %struct.cfgstruct* %3, null
  br i1 %tobool2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %4 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  %strarg = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %4, i32 0, i32 1
  %5 = load i8*, i8** %strarg, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.3
  %6 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  %optname = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %6, i32 0, i32 0
  %7 = load i8*, i8** %optname, align 8
  call void @free(i8* %7) #4
  %8 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  %strarg5 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %8, i32 0, i32 1
  %9 = load i8*, i8** %strarg5, align 8
  call void @free(i8* %9) #4
  %10 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  store %struct.cfgstruct* %10, %struct.cfgstruct** %handler, align 8
  %11 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  %nextarg6 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %11, i32 0, i32 5
  %12 = load %struct.cfgstruct*, %struct.cfgstruct** %nextarg6, align 8
  store %struct.cfgstruct* %12, %struct.cfgstruct** %arg, align 8
  %13 = load %struct.cfgstruct*, %struct.cfgstruct** %handler, align 8
  %14 = bitcast %struct.cfgstruct* %13 to i8*
  call void @free(i8* %14) #4
  br label %if.end

if.else:                                          ; preds = %while.body.3
  %15 = load %struct.cfgstruct*, %struct.cfgstruct** %arg, align 8
  %nextarg7 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %15, i32 0, i32 5
  %16 = load %struct.cfgstruct*, %struct.cfgstruct** %nextarg7, align 8
  store %struct.cfgstruct* %16, %struct.cfgstruct** %arg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %17 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %optname8 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %17, i32 0, i32 0
  %18 = load i8*, i8** %optname8, align 8
  %tobool9 = icmp ne i8* %18, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %while.end
  %19 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %optname11 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %19, i32 0, i32 0
  %20 = load i8*, i8** %optname11, align 8
  call void @free(i8* %20) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %while.end
  %21 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %strarg13 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %21, i32 0, i32 1
  %22 = load i8*, i8** %strarg13, align 8
  %tobool14 = icmp ne i8* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %23 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %strarg16 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %23, i32 0, i32 1
  %24 = load i8*, i8** %strarg16, align 8
  call void @free(i8* %24) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %25 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  store %struct.cfgstruct* %25, %struct.cfgstruct** %handler, align 8
  %26 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %next = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %26, i32 0, i32 6
  %27 = load %struct.cfgstruct*, %struct.cfgstruct** %next, align 8
  store %struct.cfgstruct* %27, %struct.cfgstruct** %copt.addr, align 8
  %28 = load %struct.cfgstruct*, %struct.cfgstruct** %handler, align 8
  %29 = bitcast %struct.cfgstruct* %28 to i8*
  call void @free(i8* %29) #4
  br label %while.cond

while.end.18:                                     ; preds = %while.cond
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @fclose(%struct._IO_FILE*) #2

declare i8* @cli_strtok(i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @isnumb(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.cfgstruct* @cfgopt(%struct.cfgstruct* %copt, i8* %optname) #0 {
entry:
  %retval = alloca %struct.cfgstruct*, align 8
  %copt.addr = alloca %struct.cfgstruct*, align 8
  %optname.addr = alloca i8*, align 8
  store %struct.cfgstruct* %copt, %struct.cfgstruct** %copt.addr, align 8
  store i8* %optname, i8** %optname.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %tobool = icmp ne %struct.cfgstruct* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %optname1 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %1, i32 0, i32 0
  %2 = load i8*, i8** %optname1, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %optname3 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %3, i32 0, i32 0
  %4 = load i8*, i8** %optname3, align 8
  %5 = load i8*, i8** %optname.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #5
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  store %struct.cfgstruct* %6, %struct.cfgstruct** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %7 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %next = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %7, i32 0, i32 6
  %8 = load %struct.cfgstruct*, %struct.cfgstruct** %next, align 8
  store %struct.cfgstruct* %8, %struct.cfgstruct** %copt.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load %struct.cfgstruct*, %struct.cfgstruct** %retval
  ret %struct.cfgstruct* %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.cfgstruct* @cfgopt_i(%struct.cfgstruct* %copt, i8* %optname) #0 {
entry:
  %retval = alloca %struct.cfgstruct*, align 8
  %copt.addr = alloca %struct.cfgstruct*, align 8
  %optname.addr = alloca i8*, align 8
  store %struct.cfgstruct* %copt, %struct.cfgstruct** %copt.addr, align 8
  store i8* %optname, i8** %optname.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %tobool = icmp ne %struct.cfgstruct* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %optname1 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %1, i32 0, i32 0
  %2 = load i8*, i8** %optname1, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %optname3 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %3, i32 0, i32 0
  %4 = load i8*, i8** %optname3, align 8
  %5 = load i8*, i8** %optname.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #5
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  store %struct.cfgstruct* %6, %struct.cfgstruct** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %7 = load %struct.cfgstruct*, %struct.cfgstruct** %copt.addr, align 8
  %next = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %7, i32 0, i32 6
  %8 = load %struct.cfgstruct*, %struct.cfgstruct** %next, align 8
  store %struct.cfgstruct* %8, %struct.cfgstruct** %copt.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.cfgstruct* null, %struct.cfgstruct** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load %struct.cfgstruct*, %struct.cfgstruct** %retval
  ret %struct.cfgstruct* %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
