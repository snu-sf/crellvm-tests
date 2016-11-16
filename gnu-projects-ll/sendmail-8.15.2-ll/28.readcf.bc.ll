; ModuleID = '28.readcf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.rewrite = type { i8**, i8**, %struct.rewrite*, i32 }
%struct.priority = type { i8*, i32 }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.optioninfo = type { i8*, i8, i16 }
%struct.resolverflags = type { i8*, i64 }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.prival = type { i8*, i64 }
%struct.dbsval = type { i8*, i8 }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.3 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.timeoutinfo = type { i8*, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._map = type { %struct._mapclass*, %struct._mapclass*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i64, i64, i32, i32, i32, i16, [12 x %struct._map*], [5 x i16] }
%struct._mapclass = type { i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.queuegrp = type { i8*, i8*, i16, i32, i32, i64, %struct.qpaths_s*, [8 x i32], i16, i32, i32, i32, i32, i64 }
%struct.qpaths_s = type { i8*, i16, i16, i32 }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon.0 }
%struct.anon = type { %struct.in_addr, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.sockaddr = type { i16, [14 x i8] }

@readcf.null_list = internal global [1 x i8*] zeroinitializer, align 8
@FileName = external global i8*, align 8
@LineNumber = external global i32, align 4
@DontLockReadFiles = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cannot open\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cannot fstat\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"not a plain file\00", align 1
@OpMode = external global i8, align 1
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: WARNING: dangerous write permissions\0A\00", align 1
@LogLevel = external global i32, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: WARNING: dangerous write permissions\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"readcf.c\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"missing valid ruleset for \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"invalid rewrite line \22%s\22 (tab expected)\00", align 1
@RewriteRules = external global [200 x %struct.rewrite*], align 16
@ConfigLevel = external global i32, align 4
@TokTypeNoC = external global [0 x i8], align 1
@IntTokenTab = external global [256 x i8], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"$1-$9\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"$:\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"$>\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"$?\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"$.\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"$[\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"$]\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"$(\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"$)\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Inappropriate use of %s on LHS\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"R line: null LHS\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"R line: too many wildcards\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"replacement $%c out of bounds\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"$*\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"$+\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"$-\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"$=\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"$~\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"too many arguments for map lookup\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"cannot nest map lookups\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Inappropriate use of %s on RHS\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"missing map closing token\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"R line: null RHS\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"WARNING: Ruleset %s has multiple definitions\0A\00", align 1
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@SmHeapGroup = external global i32, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"LDAP\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"illegal filename '%s'\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@NumPriorities = external global i32, align 4
@Priorities = external global [25 x %struct.priority], align 16
@.str.37 = private unnamed_addr constant [36 x i8] c"invalid argument to V line: \22%.20s\22\00", align 1
@ColonOkInAddr = external global i32, align 4
@.str.38 = private unnamed_addr constant [33 x i8] c"invalid V line vendor code: \22%s\22\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"unknown configuration line \22%s\22\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"I/O read error\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"hosts\00", align 1
@UseNameServer = external global i32, align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"translate_dollars(\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"  translate_dollars => \00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@makemailer.nextmailer = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [25 x i8] c"name required for mailer\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"mailer %s: `=' expected\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"WARNING: mailer=%s, flag=%c deprecated\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"mailer %s: null end-of-line string\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"mailer %s: null working directory\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"mailer %s: null charset\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"mailer %s: null queue\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"mailer %s: unknown queue %s\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"rfc822\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"-_\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"mailer %s: null user name\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"readcf: mailer U= flag: unknown user %s\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-_.\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"mailer %s: null group name\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"readcf: mailer U= flag: unknown group %s\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"mailer %s: null root directory\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"M%s: unknown mailer equate %c=\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"M%s: A= argument required\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"M%s: P= argument required\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"too many mailers defined (%d max)\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"[TCP]\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"M%s: P=[TCP] must be replaced by P=[IPC]\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"[IPC]\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"M%s: too few parameters for %s mailer\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"M%s: Warning: first argument in %s mailer must be %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"TCP or FILE\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"x-unix\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"[FILE]\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"M%s: too %s parameters for [FILE] mailer\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"few\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"many\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"M%s: first argument in [FILE] mailer must be FILE\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@Mailer = external global [26 x %struct.mailer*], align 16
@munchstring.buf = internal global [2048 x i8] zeroinitializer, align 16
@.str.83 = private unnamed_addr constant [18 x i8] c"\0A----Rule Set %d:\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"\0ALHS:\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"RHS:\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"mailer %d (%s): P=%s S=\00", align 1
@RuleSetNames = external global [200 x i8*], align 16
@.str.87 = private unnamed_addr constant [4 x i8] c"%d/\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"%d R=\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"%s R=\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"M=%ld U=%d:%d F=\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c" L=%d E=\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c" C=%s\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c" T=%s/%s/%s\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"<undefined>\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c" r=%d\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c" A=\00", align 1
@RunAsUid = external global i32, align 4
@.str.100 = private unnamed_addr constant [25 x i8] c"readcf: null option name\00", align 1
@OptionTab = internal global [138 x %struct.optioninfo] [%struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.199, i32 0, i32 0), i8 55, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0), i8 56, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.201, i32 0, i32 0), i8 65, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.202, i32 0, i32 0), i8 97, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.203, i32 0, i32 0), i8 66, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.204, i32 0, i32 0), i8 98, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.205, i32 0, i32 0), i8 67, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.206, i32 0, i32 0), i8 99, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i32 0, i32 0), i8 100, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.208, i32 0, i32 0), i8 69, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i32 0, i32 0), i8 101, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), i8 70, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i32 0, i32 0), i8 102, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.212, i32 0, i32 0), i8 71, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8 103, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.213, i32 0, i32 0), i8 72, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.214, i32 0, i32 0), i8 104, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.215, i32 0, i32 0), i8 73, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.216, i32 0, i32 0), i8 105, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.217, i32 0, i32 0), i8 74, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0), i8 106, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.219, i32 0, i32 0), i8 107, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.220, i32 0, i32 0), i8 75, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.221, i32 0, i32 0), i8 108, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), i8 76, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8 109, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8 77, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0), i8 110, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.225, i32 0, i32 0), i8 111, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.226, i32 0, i32 0), i8 79, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.227, i32 0, i32 0), i8 112, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.228, i32 0, i32 0), i8 80, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), i8 113, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.230, i32 0, i32 0), i8 81, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.231, i32 0, i32 0), i8 82, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.232, i32 0, i32 0), i8 114, i16 2 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.233, i32 0, i32 0), i8 83, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.234, i32 0, i32 0), i8 115, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i8 84, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.236, i32 0, i32 0), i8 116, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i32 0, i32 0), i8 85, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.238, i32 0, i32 0), i8 117, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.239, i32 0, i32 0), i8 86, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.240, i32 0, i32 0), i8 118, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.241, i32 0, i32 0), i8 119, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.242, i32 0, i32 0), i8 120, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.243, i32 0, i32 0), i8 88, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.244, i32 0, i32 0), i8 121, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.245, i32 0, i32 0), i8 89, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.246, i32 0, i32 0), i8 122, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.247, i32 0, i32 0), i8 90, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.248, i32 0, i32 0), i8 -127, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.249, i32 0, i32 0), i8 -126, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.250, i32 0, i32 0), i8 -125, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.251, i32 0, i32 0), i8 -123, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.252, i32 0, i32 0), i8 -122, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i32 0, i32 0), i8 -121, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.254, i32 0, i32 0), i8 -120, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.255, i32 0, i32 0), i8 -119, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.256, i32 0, i32 0), i8 -118, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.257, i32 0, i32 0), i8 -117, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.258, i32 0, i32 0), i8 -116, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.259, i32 0, i32 0), i8 -115, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.260, i32 0, i32 0), i8 -114, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.261, i32 0, i32 0), i8 -113, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i32 0, i32 0), i8 -112, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.263, i32 0, i32 0), i8 -111, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.264, i32 0, i32 0), i8 -110, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.265, i32 0, i32 0), i8 -109, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.266, i32 0, i32 0), i8 -108, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.267, i32 0, i32 0), i8 -107, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.268, i32 0, i32 0), i8 -105, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.269, i32 0, i32 0), i8 -103, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.270, i32 0, i32 0), i8 -102, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.271, i32 0, i32 0), i8 -101, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.272, i32 0, i32 0), i8 -100, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.273, i32 0, i32 0), i8 -99, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.274, i32 0, i32 0), i8 -98, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.275, i32 0, i32 0), i8 -97, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.276, i32 0, i32 0), i8 -96, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.277, i32 0, i32 0), i8 -95, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.278, i32 0, i32 0), i8 -94, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.279, i32 0, i32 0), i8 -93, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.280, i32 0, i32 0), i8 -91, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.281, i32 0, i32 0), i8 -90, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.282, i32 0, i32 0), i8 -89, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.283, i32 0, i32 0), i8 -88, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.284, i32 0, i32 0), i8 -87, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.285, i32 0, i32 0), i8 -86, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.286, i32 0, i32 0), i8 -84, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.287, i32 0, i32 0), i8 -83, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.288, i32 0, i32 0), i8 -82, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.289, i32 0, i32 0), i8 -81, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.290, i32 0, i32 0), i8 -80, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.291, i32 0, i32 0), i8 -79, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.292, i32 0, i32 0), i8 -78, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.293, i32 0, i32 0), i8 -76, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.294, i32 0, i32 0), i8 -75, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.295, i32 0, i32 0), i8 -74, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.296, i32 0, i32 0), i8 -73, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.297, i32 0, i32 0), i8 -72, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.298, i32 0, i32 0), i8 -71, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.299, i32 0, i32 0), i8 -70, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.300, i32 0, i32 0), i8 -69, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.301, i32 0, i32 0), i8 -68, i16 2 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8 -67, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.303, i32 0, i32 0), i8 -66, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.304, i32 0, i32 0), i8 -65, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.305, i32 0, i32 0), i8 -64, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.306, i32 0, i32 0), i8 -63, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i8 -62, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.308, i32 0, i32 0), i8 -61, i16 1 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.309, i32 0, i32 0), i8 -60, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.310, i32 0, i32 0), i8 -59, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.311, i32 0, i32 0), i8 -58, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.312, i32 0, i32 0), i8 -57, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i32 0, i32 0), i8 -56, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.314, i32 0, i32 0), i8 -55, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.315, i32 0, i32 0), i8 -54, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.316, i32 0, i32 0), i8 -53, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.317, i32 0, i32 0), i8 -52, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.318, i32 0, i32 0), i8 -51, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.319, i32 0, i32 0), i8 -50, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.320, i32 0, i32 0), i8 -49, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.321, i32 0, i32 0), i8 -48, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.322, i32 0, i32 0), i8 -47, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.323, i32 0, i32 0), i8 -46, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.324, i32 0, i32 0), i8 -45, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.325, i32 0, i32 0), i8 -44, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.326, i32 0, i32 0), i8 -43, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.327, i32 0, i32 0), i8 -42, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.328, i32 0, i32 0), i8 -40, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.329, i32 0, i32 0), i8 -36, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.330, i32 0, i32 0), i8 -29, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.331, i32 0, i32 0), i8 -28, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.332, i32 0, i32 0), i8 -27, i16 0 }, %struct.optioninfo { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.333, i32 0, i32 0), i8 -20, i16 0 }, %struct.optioninfo zeroinitializer], align 16
@.str.101 = private unnamed_addr constant [31 x i8] c"readcf: unknown option name %s\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"readcf: ambiguous option name %s (matches %s and %s)\00", align 1
@Verbose = external global i32, align 4
@.str.103 = private unnamed_addr constant [38 x i8] c"Option %s used as abbreviation for %s\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"readcf: unknown option name 0x%x\00", align 1
@.str.105 = private unnamed_addr constant [57 x i8] c"setoption: %s does not support suboptions, ignoring .%s\0A\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"setoption %s (%c)%s%s=\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"setoption %s (0x%x)%s%s=\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c".\00", align 1
@StickyOpt = internal global [8 x i32] zeroinitializer, align 16
@.str.110 = private unnamed_addr constant [12 x i8] c" (ignored)\0A\00", align 1
@RealUid = external global i32, align 4
@.str.111 = private unnamed_addr constant [10 x i8] c" (unsafe)\00", align 1
@ExitStat = external global i32, align 4
@SevenBitInput = external global i32, align 4
@MimeMode = external global i32, align 4
@.str.112 = private unnamed_addr constant [22 x i8] c"Unknown 8-bit mode %c\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@SafeAlias = external global i64, align 8
@SpaceSub = external global i8, align 1
@MaxMessageSize = external global i64, align 8
@MinBlocksFree = external global i64, align 8
@NoConnect = external global i32, align 4
@CheckpointInterval = external global i32, align 4
@.str.114 = private unnamed_addr constant [25 x i8] c"Unknown delivery mode %c\00", align 1
@ErrMsgFile = external global i8*, align 8
@FileMode = external global i32, align 4
@SaveFrom = external global i32, align 4
@MatchGecos = external global i32, align 4
@DefGid = external global i32, align 4
@.str.115 = private unnamed_addr constant [36 x i8] c"readcf: option %c: unknown group %s\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"helpfile\00", align 1
@HelpFile = external global i8*, align 8
@MaxHopCount = external global i32, align 4
@.str.117 = private unnamed_addr constant [14 x i8] c"HasWildcardMX\00", align 1
@HasWildcardMX = external global i32, align 4
@.str.118 = private unnamed_addr constant [21 x i8] c"WorkAroundBrokenAAAA\00", align 1
@WorkAroundBrokenAAAA = external global i32, align 4
@ResolverFlags = internal global [12 x %struct.resolverflags] [%struct.resolverflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.334, i32 0, i32 0), i64 2 }, %struct.resolverflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.335, i32 0, i32 0), i64 4 }, %struct.resolverflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.336, i32 0, i32 0), i64 8 }, %struct.resolverflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.337, i32 0, i32 0), i64 16 }, %struct.resolverflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.338, i32 0, i32 0), i64 32 }, %struct.resolverflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.339, i32 0, i32 0), i64 64 }, %struct.resolverflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.340, i32 0, i32 0), i64 128 }, %struct.resolverflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.341, i32 0, i32 0), i64 256 }, %struct.resolverflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.342, i32 0, i32 0), i64 512 }, %struct.resolverflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.343, i32 0, i32 0), i64 8192 }, %struct.resolverflags { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.344, i32 0, i32 0), i64 0 }, %struct.resolverflags zeroinitializer], align 16
@.str.119 = private unnamed_addr constant [39 x i8] c"readcf: I option value %s unrecognized\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"_res.options = %x, HasWildcardMX = %d\0A\00", align 1
@IgnrDot = external global i32, align 4
@SendMIMEErrors = external global i32, align 4
@ForwardPath = external global i8*, align 8
@MaxMciCache = external global i32, align 4
@MciCacheTimeout = external global i64, align 8
@UseErrorsTo = external global i32, align 4
@CurEnv = external global %struct.envelope*, align 8
@MeToo = external global i32, align 4
@CheckAliases = external global i32, align 4
@.str.121 = private unnamed_addr constant [34 x i8] c"too many daemons defined (%d max)\00", align 1
@PrivacyValues = external global [0 x %struct.prival], align 8
@.str.122 = private unnamed_addr constant [33 x i8] c"readcf: Op line: %s unrecognized\00", align 1
@PrivacyFlags = external global i64, align 8
@PostMasterCopy = external global i8*, align 8
@QueueFactor = external global i64, align 8
@.str.123 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@QueueDir = external global i8*, align 8
@Warn_Q_option = external global i32, align 4
@DontPruneRoutes = external global i32, align 4
@.str.124 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@StatFile = external global i8*, align 8
@SuperSafe = external global i32, align 4
@.str.125 = private unnamed_addr constant [10 x i8] c"queuewarn\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"queuereturn\00", align 1
@TimeZoneSpec = external global i8*, align 8
@UdbSpec = external global i8*, align 8
@DefUid = external global i32, align 4
@.str.127 = private unnamed_addr constant [34 x i8] c"readcf: option u: unknown user %s\00", align 1
@DefUser = external global i8*, align 8
@FallbackMX = external global i8*, align 8
@TryNullMXList = external global i32, align 4
@QueueLA = external global i32, align 4
@RefuseLA = external global i32, align 4
@DelayLA = external global i32, align 4
@WkRecipFact = external global i64, align 8
@ForkQueueRuns = external global i32, align 4
@WkClassFact = external global i64, align 8
@WkTimeFact = external global i64, align 8
@QueueSortOrder = external global i32, align 4
@.str.128 = private unnamed_addr constant [30 x i8] c"Invalid queue sort order \22%s\22\00", align 1
@HostsFile = external global i8*, align 8
@MinQueueAge = external global i64, align 8
@MaxQueueAge = external global i64, align 8
@DefaultCharSet = external global i8*, align 8
@ServiceSwitchFile = external global i8*, align 8
@DialDelay = external global i64, align 8
@.str.129 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@NoRecipientAction = external global i32, align 4
@.str.130 = private unnamed_addr constant [7 x i8] c"add-to\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"add-apparently-to\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"add-bcc\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"add-to-undisclosed\00", align 1
@.str.134 = private unnamed_addr constant [30 x i8] c"Invalid NoRecipientAction: %s\00", align 1
@SafeFileEnv = external global i8*, align 8
@MaxQueueRun = external global i32, align 4
@MaxChildren = external global i32, align 4
@MaxQueueChildren = external global i32, align 4
@MaxRunnersPerQueue = external global i32, align 4
@NiceQueueRun = external global i32, align 4
@ShmKey = external global i32, align 4
@ShmKeyFile = external global i8*, align 8
@DontExpandCnames = external global i32, align 4
@.str.135 = private unnamed_addr constant [10 x i8] c"@,;:\5C()[]\00", align 1
@.str.136 = private unnamed_addr constant [44 x i8] c"Warning: MustQuoteChars too long, ignored.\0A\00", align 1
@MustQuoteChars = external global i8*, align 8
@SmtpGreeting = external global i8*, align 8
@UnixFromLine = external global i8*, align 8
@OperatorChars = external global i8*, align 8
@.str.137 = private unnamed_addr constant [103 x i8] c"Warning: OperatorChars is being redefined.\0A         It should only be set before ruleset definitions.\0A\00", align 1
@DontInitGroups = external global i32, align 4
@SingleLineFromHeader = external global i32, align 4
@AllowBogusHELO = external global i32, align 4
@ConnRateThrottle = external global i32, align 4
@DontBlameSendmail = external global [8 x i32], align 16
@DoubleBounceAddr = external global i8*, align 8
@HostStatDir = external global i8*, align 8
@SingleThreadDelivery = external global i32, align 4
@.str.138 = private unnamed_addr constant [42 x i8] c"readcf: option RunAsUser: unknown user %s\00", align 1
@RunAsUserName = external global i8*, align 8
@RunAsGid = external global i32, align 4
@EffGid = external global i32, align 4
@UseMSP = external global i32, align 4
@.str.139 = private unnamed_addr constant [74 x i8] c"WARNING: RunAsUser for MSP ignored, check group ids (egid=%ld, want=%ld)\0A\00", align 1
@.str.140 = private unnamed_addr constant [43 x i8] c"readcf: option RunAsUser: unknown group %s\00", align 1
@.str.141 = private unnamed_addr constant [27 x i8] c"readcf: RunAsUser = %d:%d\0A\00", align 1
@RrtImpliesDsn = external global i32, align 4
@PidFile = external global i8*, align 8
@DontBlameSendmailValues = external global [0 x %struct.dbsval], align 8
@.str.142 = private unnamed_addr constant [50 x i8] c"readcf: DontBlameSendmail option: %s unrecognized\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@DontProbeInterfaces = external global i32, align 4
@MaxRcptPerMsg = external global i32, align 4
@BadRcptThrottle = external global i32, align 4
@DeadLetterDrop = external global i8*, align 8
@MaxAliasRecursion = external global i32, align 4
@ConnectOnlyTo = external global %union.bigsockaddr, align 4
@.str.144 = private unnamed_addr constant [52 x i8] c"readcf: option ConnectOnlyTo: invalid IP address %s\00", align 1
@TrustedUid = external global i32, align 4
@.str.145 = private unnamed_addr constant [44 x i8] c"readcf: option TrustedUser: unknown user %s\00", align 1
@MaxMimeHeaderLength = external global i32, align 4
@MaxMimeFieldLength = external global i32, align 4
@.str.146 = private unnamed_addr constant [70 x i8] c"Warning: MaxMimeHeaderLength: header length limit set lower than 128\0A\00", align 1
@.str.147 = private unnamed_addr constant [68 x i8] c"Warning: MaxMimeHeaderLength: field length limit set lower than 40\0A\00", align 1
@ControlSocketName = external global i8*, align 8
@MaxHeadersLength = external global i32, align 4
@.str.148 = private unnamed_addr constant [67 x i8] c"Warning: MaxHeadersLength: headers length limit set lower than %d\0A\00", align 1
@ProcTitlePrefix = external global i8*, align 8
@.str.149 = private unnamed_addr constant [52 x i8] c"Warning: Option: %s requires SASL support (-DSASL)\0A\00", align 1
@.str.150 = private unnamed_addr constant [42 x i8] c"Warning: Option: %s requires TLS support\0A\00", align 1
@DataFileBufferSize = external global i64, align 8
@XscriptFileBufferSize = external global i64, align 8
@.str.151 = private unnamed_addr constant [55 x i8] c"Warning: Option: %s requires LDAP support (-DLDAPMAP)\0A\00", align 1
@InputFilterList = external global i8*, align 8
@QueueFileMode = external global i32, align 4
@DeliverByMin = external global i64, align 8
@BlankEnvelope = external global %struct.envelope, align 8
@.str.152 = private unnamed_addr constant [15 x i8] c"{daemon_flags}\00", align 1
@FastSplit = external global i32, align 4
@Mbdb = external global i8*, align 8
@SoftBounce = external global i32, align 4
@RejectLogInterval = external global i64, align 8
@RequiresDirfsync = external global i32, align 4
@ConnectionRateWindowSize = external global i32, align 4
@FallbackSmartHost = external global i8*, align 8
@HeloName = external global i8*, align 8
@MaxNOOPCommands = external global i32, align 4
@UseCompressedIPv6Addresses = external global i32, align 4
@.str.153 = private unnamed_addr constant [28 x i8] c"Warning: option %c unknown\0A\00", align 1
@.str.154 = private unnamed_addr constant [30 x i8] c"Warning: option 0x%x unknown\0A\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"setclass(%s, $=%s)\0A\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"setclass(%s, %s)\0A\00", align 1
@.str.157 = private unnamed_addr constant [35 x i8] c"readcf: config K line: no map name\00", align 1
@.str.158 = private unnamed_addr constant [44 x i8] c"readcf: config K line, map %s: no map class\00", align 1
@.str.159 = private unnamed_addr constant [39 x i8] c"readcf: map %s: class %s not available\00", align 1
@.str.160 = private unnamed_addr constant [39 x i8] c"map %s, class %s, flags %lx, file %s,\0A\00", align 1
@.str.161 = private unnamed_addr constant [32 x i8] c"\09app %s, domain %s, rebuild %s\0A\00", align 1
@strtorwset.nextruleset = internal global i32 200, align 4
@.str.162 = private unnamed_addr constant [30 x i8] c"invalid ruleset name: \22%.20s\22\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"bad ruleset %d (%d max)\00", align 1
@.str.164 = private unnamed_addr constant [56 x i8] c"bad ruleset definition \22%s\22 (number required after `=')\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"bad ruleset number %d in \22%s\22 (%d max)\00", align 1
@.str.166 = private unnamed_addr constant [37 x i8] c"%s: too many named rulesets (%d max)\00", align 1
@.str.167 = private unnamed_addr constant [43 x i8] c"%s: ruleset changed value (old %d, new %d)\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c"inittimeouts(%s)\0A\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@TimeOuts = external global %struct.anon.3, align 8
@.str.170 = private unnamed_addr constant [11 x i8] c"Timeouts:\0A\00", align 1
@.str.171 = private unnamed_addr constant [17 x i8] c"  connect = %ld\0A\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"  aconnect = %ld\0A\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"  initial = %ld\0A\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"  helo = %ld\0A\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"  mail = %ld\0A\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"  rcpt = %ld\0A\00", align 1
@.str.177 = private unnamed_addr constant [18 x i8] c"  datainit = %ld\0A\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"  datablock = %ld\0A\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"  datafinal = %ld\0A\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"  rset = %ld\0A\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"  quit = %ld\0A\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"  nextcommand = %ld\0A\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"  miscshort = %ld\0A\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"  ident = %ld\0A\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"  fileopen = %ld\0A\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"  lhlo = %ld\0A\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"  control = %ld\0A\00", align 1
@StickyTimeoutOpt = internal global [8 x i32] zeroinitializer, align 16
@.str.188 = private unnamed_addr constant [26 x i8] c"too many %c lines, %d max\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"fileclass(%s, fmt=%s)\0A\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"fileclass: missing file name\00", align 1
@.str.191 = private unnamed_addr constant [35 x i8] c"fileclass: bogus map specification\00", align 1
@.str.192 = private unnamed_addr constant [36 x i8] c"fileclass: F{%s}: missing map class\00", align 1
@.str.193 = private unnamed_addr constant [41 x i8] c"fileclass: F{%s}: class %s not available\00", align 1
@.str.194 = private unnamed_addr constant [49 x i8] c"fileclass: F{%s}: map class %s, key %s, spec %s\0A\00", align 1
@.str.195 = private unnamed_addr constant [34 x i8] c"fileclass: F{%s}: map open failed\00", align 1
@.str.196 = private unnamed_addr constant [36 x i8] c"fileclass: F{%s}: map lookup failed\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@SmFtStdiofd_def = external global %struct.sm_file, align 8
@.str.198 = private unnamed_addr constant [28 x i8] c"fileclass: cannot open '%s'\00", align 1
@extrquotstr.buf = internal global [2048 x i8] zeroinitializer, align 16
@.str.199 = private unnamed_addr constant [14 x i8] c"SevenBitInput\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"EightBitMode\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"AliasFile\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"AliasWait\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"BlankSub\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"MinFreeBlocks\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"CheckpointInterval\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"HoldExpensive\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"DeliveryMode\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"ErrorHeader\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"ErrorMode\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"TempFileMode\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"SaveFromLine\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"MatchGECOS\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"HelpFile\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"MaxHopCount\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"ResolverOptions\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"IgnoreDots\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"ForwardPath\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"SendMimeErrors\00", align 1
@.str.219 = private unnamed_addr constant [20 x i8] c"ConnectionCacheSize\00", align 1
@.str.220 = private unnamed_addr constant [23 x i8] c"ConnectionCacheTimeout\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"UseErrorsTo\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"LogLevel\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"MeToo\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"CheckAliases\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c"OldStyleHeaders\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"DaemonPortOptions\00", align 1
@.str.227 = private unnamed_addr constant [15 x i8] c"PrivacyOptions\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"PostmasterCopy\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"QueueFactor\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"QueueDirectory\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"DontPruneRoutes\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.233 = private unnamed_addr constant [11 x i8] c"StatusFile\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"SuperSafe\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"QueueTimeout\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"TimeZoneSpec\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"UserDatabaseSpec\00", align 1
@.str.238 = private unnamed_addr constant [12 x i8] c"DefaultUser\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"FallbackMXhost\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"Verbose\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"TryNullMXList\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"QueueLA\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"RefuseLA\00", align 1
@.str.244 = private unnamed_addr constant [16 x i8] c"RecipientFactor\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"ForkEachJob\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"ClassFactor\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"RetryFactor\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"QueueSortOrder\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"HostsFile\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"MinQueueAge\00", align 1
@.str.251 = private unnamed_addr constant [15 x i8] c"DefaultCharSet\00", align 1
@.str.252 = private unnamed_addr constant [18 x i8] c"ServiceSwitchFile\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"DialDelay\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"NoRecipientAction\00", align 1
@.str.255 = private unnamed_addr constant [20 x i8] c"SafeFileEnvironment\00", align 1
@.str.256 = private unnamed_addr constant [15 x i8] c"MaxMessageSize\00", align 1
@.str.257 = private unnamed_addr constant [14 x i8] c"ColonOkInAddr\00", align 1
@.str.258 = private unnamed_addr constant [16 x i8] c"MaxQueueRunSize\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"MaxDaemonChildren\00", align 1
@.str.260 = private unnamed_addr constant [17 x i8] c"DontExpandCnames\00", align 1
@.str.261 = private unnamed_addr constant [15 x i8] c"MustQuoteChars\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"SmtpGreetingMessage\00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"UnixFromLine\00", align 1
@.str.264 = private unnamed_addr constant [14 x i8] c"OperatorChars\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"DontInitGroups\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"SingleLineFromHeader\00", align 1
@.str.267 = private unnamed_addr constant [15 x i8] c"AllowBogusHELO\00", align 1
@.str.268 = private unnamed_addr constant [23 x i8] c"ConnectionRateThrottle\00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"UnsafeGroupWrites\00", align 1
@.str.270 = private unnamed_addr constant [20 x i8] c"DoubleBounceAddress\00", align 1
@.str.271 = private unnamed_addr constant [20 x i8] c"HostStatusDirectory\00", align 1
@.str.272 = private unnamed_addr constant [21 x i8] c"SingleThreadDelivery\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"RunAsUser\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"RrtImpliesDsn\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"PidFile\00", align 1
@.str.276 = private unnamed_addr constant [18 x i8] c"DontBlameSendmail\00", align 1
@.str.277 = private unnamed_addr constant [20 x i8] c"DontProbeInterfaces\00", align 1
@.str.278 = private unnamed_addr constant [24 x i8] c"MaxRecipientsPerMessage\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"DeadLetterDrop\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"MaxAliasRecursion\00", align 1
@.str.281 = private unnamed_addr constant [14 x i8] c"ConnectOnlyTo\00", align 1
@.str.282 = private unnamed_addr constant [12 x i8] c"TrustedUser\00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"MaxMimeHeaderLength\00", align 1
@.str.284 = private unnamed_addr constant [18 x i8] c"ControlSocketName\00", align 1
@.str.285 = private unnamed_addr constant [17 x i8] c"MaxHeadersLength\00", align 1
@.str.286 = private unnamed_addr constant [19 x i8] c"ProcessTitlePrefix\00", align 1
@.str.287 = private unnamed_addr constant [16 x i8] c"DefaultAuthInfo\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"AuthMechanisms\00", align 1
@.str.289 = private unnamed_addr constant [18 x i8] c"ClientPortOptions\00", align 1
@.str.290 = private unnamed_addr constant [19 x i8] c"DataFileBufferSize\00", align 1
@.str.291 = private unnamed_addr constant [22 x i8] c"XscriptFileBufferSize\00", align 1
@.str.292 = private unnamed_addr constant [16 x i8] c"LDAPDefaultSpec\00", align 1
@.str.293 = private unnamed_addr constant [15 x i8] c"ServerCertFile\00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"ServerKeyFile\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"ClientCertFile\00", align 1
@.str.296 = private unnamed_addr constant [14 x i8] c"ClientKeyFile\00", align 1
@.str.297 = private unnamed_addr constant [11 x i8] c"CACertFile\00", align 1
@.str.298 = private unnamed_addr constant [11 x i8] c"CACertPath\00", align 1
@.str.299 = private unnamed_addr constant [13 x i8] c"DHParameters\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"InputMailFilters\00", align 1
@.str.301 = private unnamed_addr constant [7 x i8] c"Milter\00", align 1
@.str.302 = private unnamed_addr constant [12 x i8] c"AuthOptions\00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"QueueFileMode\00", align 1
@.str.304 = private unnamed_addr constant [25 x i8] c"CertFingerprintAlgorithm\00", align 1
@.str.305 = private unnamed_addr constant [11 x i8] c"CipherList\00", align 1
@.str.306 = private unnamed_addr constant [9 x i8] c"RandFile\00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"TLSSrvOptions\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"BadRcptThrottle\00", align 1
@.str.309 = private unnamed_addr constant [13 x i8] c"DeliverByMin\00", align 1
@.str.310 = private unnamed_addr constant [17 x i8] c"MaxQueueChildren\00", align 1
@.str.311 = private unnamed_addr constant [19 x i8] c"MaxRunnersPerQueue\00", align 1
@.str.312 = private unnamed_addr constant [26 x i8] c"DirectSubmissionModifiers\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"NiceQueueRun\00", align 1
@.str.314 = private unnamed_addr constant [16 x i8] c"SharedMemoryKey\00", align 1
@.str.315 = private unnamed_addr constant [12 x i8] c"AuthMaxBits\00", align 1
@.str.316 = private unnamed_addr constant [16 x i8] c"MailboxDatabase\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"UseMSP\00", align 1
@.str.318 = private unnamed_addr constant [8 x i8] c"DelayLA\00", align 1
@.str.319 = private unnamed_addr constant [10 x i8] c"FastSplit\00", align 1
@.str.320 = private unnamed_addr constant [11 x i8] c"SoftBounce\00", align 1
@.str.321 = private unnamed_addr constant [20 x i8] c"SharedMemoryKeyFile\00", align 1
@.str.322 = private unnamed_addr constant [18 x i8] c"RejectLogInterval\00", align 1
@.str.323 = private unnamed_addr constant [17 x i8] c"RequiresDirfsync\00", align 1
@.str.324 = private unnamed_addr constant [25 x i8] c"ConnectionRateWindowSize\00", align 1
@.str.325 = private unnamed_addr constant [8 x i8] c"CRLFile\00", align 1
@.str.326 = private unnamed_addr constant [18 x i8] c"FallbackSmartHost\00", align 1
@.str.327 = private unnamed_addr constant [10 x i8] c"AuthRealm\00", align 1
@.str.328 = private unnamed_addr constant [9 x i8] c"HeloName\00", align 1
@.str.329 = private unnamed_addr constant [16 x i8] c"MaxNOOPCommands\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"ServerSSLOptions\00", align 1
@.str.331 = private unnamed_addr constant [17 x i8] c"ClientSSLOptions\00", align 1
@.str.332 = private unnamed_addr constant [12 x i8] c"MaxQueueAge\00", align 1
@.str.333 = private unnamed_addr constant [27 x i8] c"UseCompressedIPv6Addresses\00", align 1
@.str.334 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"aaonly\00", align 1
@.str.336 = private unnamed_addr constant [6 x i8] c"usevc\00", align 1
@.str.337 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.338 = private unnamed_addr constant [6 x i8] c"igntc\00", align 1
@.str.339 = private unnamed_addr constant [8 x i8] c"recurse\00", align 1
@.str.340 = private unnamed_addr constant [9 x i8] c"defnames\00", align 1
@.str.341 = private unnamed_addr constant [9 x i8] c"stayopen\00", align 1
@.str.342 = private unnamed_addr constant [7 x i8] c"dnsrch\00", align 1
@.str.343 = private unnamed_addr constant [10 x i8] c"use_inet6\00", align 1
@.str.344 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.345 = private unnamed_addr constant [20 x i8] c"settimeout(%s = %s)\00", align 1
@TimeOutTab = internal global [40 x %struct.timeoutinfo] [%struct.timeoutinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.347, i32 0, i32 0), i8 1 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.348, i32 0, i32 0), i8 2 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.349, i32 0, i32 0), i8 3 }, %struct.timeoutinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.350, i32 0, i32 0), i8 4 }, %struct.timeoutinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.351, i32 0, i32 0), i8 5 }, %struct.timeoutinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.352, i32 0, i32 0), i8 6 }, %struct.timeoutinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.353, i32 0, i32 0), i8 7 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.354, i32 0, i32 0), i8 8 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.355, i32 0, i32 0), i8 9 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.356, i32 0, i32 0), i8 10 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.357, i32 0, i32 0), i8 11 }, %struct.timeoutinfo { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.358, i32 0, i32 0), i8 12 }, %struct.timeoutinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.359, i32 0, i32 0), i8 13 }, %struct.timeoutinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.360, i32 0, i32 0), i8 14 }, %struct.timeoutinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.361, i32 0, i32 0), i8 15 }, %struct.timeoutinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8 16 }, %struct.timeoutinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i32 0, i32 0), i8 16 }, %struct.timeoutinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.363, i32 0, i32 0), i8 17 }, %struct.timeoutinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.364, i32 0, i32 0), i8 18 }, %struct.timeoutinfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.365, i32 0, i32 0), i8 19 }, %struct.timeoutinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), i8 20 }, %struct.timeoutinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.366, i32 0, i32 0), i8 20 }, %struct.timeoutinfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.367, i32 0, i32 0), i8 21 }, %struct.timeoutinfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.368, i32 0, i32 0), i8 22 }, %struct.timeoutinfo { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.369, i32 0, i32 0), i8 23 }, %struct.timeoutinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.370, i32 0, i32 0), i8 24 }, %struct.timeoutinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.371, i32 0, i32 0), i8 25 }, %struct.timeoutinfo { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.372, i32 0, i32 0), i8 26 }, %struct.timeoutinfo { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.373, i32 0, i32 0), i8 27 }, %struct.timeoutinfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.374, i32 0, i32 0), i8 28 }, %struct.timeoutinfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.375, i32 0, i32 0), i8 29 }, %struct.timeoutinfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.376, i32 0, i32 0), i8 30 }, %struct.timeoutinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.377, i32 0, i32 0), i8 31 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.378, i32 0, i32 0), i8 32 }, %struct.timeoutinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.379, i32 0, i32 0), i8 33 }, %struct.timeoutinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.380, i32 0, i32 0), i8 34 }, %struct.timeoutinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.381, i32 0, i32 0), i8 35 }, %struct.timeoutinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.382, i32 0, i32 0), i8 36 }, %struct.timeoutinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.383, i32 0, i32 0), i8 37 }, %struct.timeoutinfo zeroinitializer], align 16
@.str.346 = private unnamed_addr constant [31 x i8] c"settimeout: invalid timeout %s\00", align 1
@MciInfoTimeout = external global i64, align 8
@.str.347 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"rcpt\00", align 1
@.str.350 = private unnamed_addr constant [9 x i8] c"datainit\00", align 1
@.str.351 = private unnamed_addr constant [10 x i8] c"datablock\00", align 1
@.str.352 = private unnamed_addr constant [10 x i8] c"datafinal\00", align 1
@.str.353 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.354 = private unnamed_addr constant [5 x i8] c"rset\00", align 1
@.str.355 = private unnamed_addr constant [5 x i8] c"helo\00", align 1
@.str.356 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.358 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.359 = private unnamed_addr constant [9 x i8] c"fileopen\00", align 1
@.str.360 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.361 = private unnamed_addr constant [9 x i8] c"iconnect\00", align 1
@.str.362 = private unnamed_addr constant [12 x i8] c"queuewarn.*\00", align 1
@.str.363 = private unnamed_addr constant [17 x i8] c"queuewarn.normal\00", align 1
@.str.364 = private unnamed_addr constant [17 x i8] c"queuewarn.urgent\00", align 1
@.str.365 = private unnamed_addr constant [21 x i8] c"queuewarn.non-urgent\00", align 1
@.str.366 = private unnamed_addr constant [14 x i8] c"queuereturn.*\00", align 1
@.str.367 = private unnamed_addr constant [19 x i8] c"queuereturn.normal\00", align 1
@.str.368 = private unnamed_addr constant [19 x i8] c"queuereturn.urgent\00", align 1
@.str.369 = private unnamed_addr constant [23 x i8] c"queuereturn.non-urgent\00", align 1
@.str.370 = private unnamed_addr constant [11 x i8] c"hoststatus\00", align 1
@.str.371 = private unnamed_addr constant [17 x i8] c"resolver.retrans\00", align 1
@.str.372 = private unnamed_addr constant [24 x i8] c"resolver.retrans.normal\00", align 1
@.str.373 = private unnamed_addr constant [23 x i8] c"resolver.retrans.first\00", align 1
@.str.374 = private unnamed_addr constant [15 x i8] c"resolver.retry\00", align 1
@.str.375 = private unnamed_addr constant [22 x i8] c"resolver.retry.normal\00", align 1
@.str.376 = private unnamed_addr constant [21 x i8] c"resolver.retry.first\00", align 1
@.str.377 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.378 = private unnamed_addr constant [5 x i8] c"lhlo\00", align 1
@.str.379 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"starttls\00", align 1
@.str.381 = private unnamed_addr constant [9 x i8] c"aconnect\00", align 1
@.str.382 = private unnamed_addr constant [14 x i8] c"queuewarn.dsn\00", align 1
@.str.383 = private unnamed_addr constant [16 x i8] c"queuereturn.dsn\00", align 1

; Function Attrs: nounwind uwtable
define void @readcf(i8* %cfname, i32 %safe, %struct.envelope* %e) #0 {
entry:
  %cfname.addr = alloca i8*, align 8
  %safe.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %cf = alloca %struct.sm_file*, align 8
  %ruleset = alloca i32, align 4
  %q = alloca i8*, align 8
  %rwp = alloca %struct.rewrite*, align 8
  %bp = alloca i8*, align 8
  %ep = alloca i8*, align 8
  %nfuzzy = alloca i32, align 4
  %file = alloca i8*, align 8
  %optional = alloca i32, align 4
  %ok = alloca i32, align 4
  %ismap = alloca i32, align 4
  %mid = alloca i32, align 4
  %p = alloca i8*, align 8
  %sff = alloca i64, align 8
  %statb = alloca %struct.stat, align 8
  %buf = alloca [2048 x i8], align 16
  %bufsize = alloca i32, align 4
  %exbuf = alloca [2048 x i8], align 16
  %pvpbuf = alloca [3048 x i8], align 16
  %nbp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %ap = alloca i8**, align 8
  %botch = alloca i8*, align 8
  %ap164 = alloca i8**, align 8
  %args = alloca i32, align 4
  %endtoken = alloca i32, align 4
  %inmap = alloca i32, align 4
  %botch173 = alloca i8*, align 8
  %wd = alloca i8*, align 8
  %delim = alloca i8, align 1
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp499 = alloca i32, align 4
  %nmaps = alloca i32, align 4
  %maptype = alloca [12 x i8*], align 16
  %mapreturn = alloca [5 x i16], align 2
  %mapno = alloca i32, align 4
  %__s1_len728 = alloca i64, align 8
  %__s2_len730 = alloca i64, align 8
  %tmp731 = alloca i32, align 4
  %__s1737 = alloca i8*, align 8
  %__result741 = alloca i32, align 4
  %tmp779 = alloca i32, align 4
  store i8* %cfname, i8** %cfname.addr, align 8, !tbaa !1
  store i32 %safe, i32* %safe.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sm_file** %cf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ruleset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %ruleset, align 4, !tbaa !5
  %2 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.rewrite** %rwp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.rewrite* null, %struct.rewrite** %rwp, align 8, !tbaa !1
  %4 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %nfuzzy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %optional to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ismap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64 8192, i64* %sff, align 8, !tbaa !7
  %14 = bitcast %struct.stat* %statb to i8*
  call void @llvm.lifetime.start(i64 144, i8* %14) #1
  %15 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %15) #1
  %16 = bitcast i32* %bufsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast [2048 x i8]* %exbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %17) #1
  %18 = bitcast [3048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 3048, i8* %18) #1
  %19 = load i8*, i8** %cfname.addr, align 8, !tbaa !1
  store i8* %19, i8** @FileName, align 8, !tbaa !1
  store i32 0, i32* @LineNumber, align 4, !tbaa !5
  %20 = load i32, i32* @DontLockReadFiles, align 4, !tbaa !5
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i64, i64* %sff, align 8, !tbaa !7
  %or = or i64 %21, 16384
  store i64 %or, i64* %sff, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i8*, i8** %cfname.addr, align 8, !tbaa !1
  %23 = load i64, i64* %sff, align 8, !tbaa !7
  %call = call %struct.sm_file* @safefopen(i8* %22, i32 0, i32 292, i64 %23)
  store %struct.sm_file* %call, %struct.sm_file** %cf, align 8, !tbaa !1
  %24 = load %struct.sm_file*, %struct.sm_file** %cf, align 8, !tbaa !1
  %cmp = icmp eq %struct.sm_file* %24, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  call void @finis(i32 0, i32 1, i32 72)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %25 = load %struct.sm_file*, %struct.sm_file** %cf, align 8, !tbaa !1
  %call3 = call i32 @sm_io_getinfo(%struct.sm_file* %25, i32 3, i8* null)
  %call4 = call i32 @fstat(i32 %call3, %struct.stat* %statb) #1
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  call void @finis(i32 0, i32 1, i32 72)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.2
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 3
  %26 = load i32, i32* %st_mode, align 4, !tbaa !9
  %and = and i32 %26, 61440
  %cmp8 = icmp eq i32 %and, 32768
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  call void @finis(i32 0, i32 1, i32 72)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %27 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv = sext i8 %27 to i32
  %cmp11 = icmp ne i32 %conv, 116
  br i1 %cmp11, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.10
  %st_mode13 = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 3
  %28 = load i32, i32* %st_mode13, align 4, !tbaa !9
  %and14 = and i32 %28, 18
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %land.lhs.true
  %29 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv18 = sext i8 %29 to i32
  %cmp19 = icmp eq i32 %conv18, 100
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %30 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv21 = sext i8 %30 to i32
  %cmp22 = icmp eq i32 %conv21, 105
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %31 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv25 = sext i8 %31 to i32
  %cmp26 = icmp eq i32 %conv25, 67
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false, %if.then.17
  %32 = load i8*, i8** @FileName, align 8, !tbaa !1
  %call29 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %32)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %lor.lhs.false.24
  %33 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %33, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %34 = load i8*, i8** @FileName, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* %34)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.35
  store i32 2048, i32* %bufsize, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %35 = load %struct.sm_file*, %struct.sm_file** %cf, align 8, !tbaa !1
  %call36 = call i8* @fgetfolded(i8* %arraydecay, i32* %bufsize, %struct.sm_file* %35)
  store i8* %call36, i8** %bp, align 8, !tbaa !1
  %cmp37 = icmp ne i8* %call36, null
  br i1 %cmp37, label %while.body, label %while.end.699

while.body:                                       ; preds = %while.cond
  %36 = bitcast i8** %nbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv39 = sext i8 %38 to i32
  %cmp40 = icmp eq i32 %conv39, 35
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %while.body
  %39 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %cmp44 = icmp ne i8* %39, %arraydecay43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.42
  %40 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 223)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.42
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %while.body
  %41 = load i8*, i8** %bp, align 8, !tbaa !1
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  %call49 = call i8* @translate_dollars(i8* %41, i8* %42, i32* %bufsize)
  store i8* %call49, i8** %nbp, align 8, !tbaa !1
  %43 = load i8*, i8** %nbp, align 8, !tbaa !1
  %44 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp50 = icmp ne i8* %43, %44
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.57

land.lhs.true.52:                                 ; preds = %if.end.48
  %45 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %cmp54 = icmp ne i8* %45, %arraydecay53
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.52
  %46 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 230)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.52, %if.end.48
  %47 = load i8*, i8** %nbp, align 8, !tbaa !1
  store i8* %47, i8** %bp, align 8, !tbaa !1
  %call58 = call i32* @__errno_location() #8
  store i32 0, i32* %call58, align 4, !tbaa !5
  %48 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx59, align 1, !tbaa !12
  %conv60 = sext i8 %49 to i32
  switch i32 %conv60, label %sw.default [
    i32 0, label %sw.bb
    i32 35, label %sw.bb
    i32 82, label %sw.bb.61
    i32 83, label %sw.bb.245
    i32 68, label %sw.bb.286
    i32 72, label %sw.bb.294
    i32 67, label %sw.bb.297
    i32 84, label %sw.bb.297
    i32 70, label %sw.bb.369
    i32 77, label %sw.bb.554
    i32 79, label %sw.bb.556
    i32 80, label %sw.bb.560
    i32 81, label %sw.bb.593
    i32 86, label %sw.bb.595
    i32 75, label %sw.bb.678
    i32 69, label %sw.bb.683
    i32 88, label %sw.bb.691
  ]

sw.bb:                                            ; preds = %if.end.57, %if.end.57
  br label %sw.epilog.693

sw.bb.61:                                         ; preds = %if.end.57
  %50 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %50, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.bb.61
  %51 = load i8*, i8** %bp, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* %51)
  br label %sw.epilog.693

if.end.65:                                        ; preds = %sw.bb.61
  %52 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %arrayidx66, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !12
  %conv67 = sext i8 %54 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !12
  %conv70 = sext i8 %56 to i32
  %cmp71 = icmp ne i32 %conv70, 9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %57 = phi i1 [ false, %for.cond ], [ %cmp71, %land.rhs ]
  br i1 %57, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !12
  %conv73 = sext i8 %60 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.end
  %61 = load i8*, i8** %bp, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* %61)
  br label %sw.epilog.693

if.end.77:                                        ; preds = %for.end
  %62 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %cmp78 = icmp eq %struct.rewrite* %62, null
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %if.end.77
  %call81 = call i8* @xalloc_tagged(i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 260)
  %63 = bitcast i8* %call81 to %struct.rewrite*
  store %struct.rewrite* %63, %struct.rewrite** %rwp, align 8, !tbaa !1
  %64 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom = sext i32 %64 to i64
  %arrayidx82 = getelementptr inbounds [200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 %idxprom
  store %struct.rewrite* %63, %struct.rewrite** %arrayidx82, align 8, !tbaa !1
  br label %if.end.85

if.else:                                          ; preds = %if.end.77
  %call83 = call i8* @xalloc_tagged(i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 264)
  %65 = bitcast i8* %call83 to %struct.rewrite*
  %66 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_next = getelementptr inbounds %struct.rewrite, %struct.rewrite* %66, i32 0, i32 2
  store %struct.rewrite* %65, %struct.rewrite** %r_next, align 8, !tbaa !13
  %67 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_next84 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %67, i32 0, i32 2
  %68 = load %struct.rewrite*, %struct.rewrite** %r_next84, align 8, !tbaa !13
  store %struct.rewrite* %68, %struct.rewrite** %rwp, align 8, !tbaa !1
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.80
  %69 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_next86 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %69, i32 0, i32 2
  store %struct.rewrite* null, %struct.rewrite** %r_next86, align 8, !tbaa !13
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %70, align 1, !tbaa !12
  %71 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %71, i64 1
  %arraydecay88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %72 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %arrayidx87, i8* %arraydecay88, i64 2048, %struct.envelope* %72)
  %arraydecay89 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [3048 x i8], [3048 x i8]* %pvpbuf, i32 0, i32 0
  %73 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %73, 9
  %cond = select i1 %cmp91, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @TokTypeNoC, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @IntTokenTab, i32 0, i32 0)
  %call93 = call i8** @prescan(i8* %arraydecay89, i32 9, i8* %arraydecay90, i32 3048, i8** null, i8* %cond, i32 1)
  %74 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs = getelementptr inbounds %struct.rewrite, %struct.rewrite* %74, i32 0, i32 0
  store i8** %call93, i8*** %r_lhs, align 8, !tbaa !15
  store i32 0, i32* %nfuzzy, align 4, !tbaa !5
  %75 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs94 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %75, i32 0, i32 0
  %76 = load i8**, i8*** %r_lhs94, align 8, !tbaa !15
  %cmp95 = icmp ne i8** %76, null
  br i1 %cmp95, label %if.then.97, label %if.else.127

if.then.97:                                       ; preds = %if.end.85
  %77 = bitcast i8*** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs98 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %78, i32 0, i32 0
  %79 = load i8**, i8*** %r_lhs98, align 8, !tbaa !15
  %call99 = call i8** @copyplist(i8** %79, i32 1, %struct.SM_RPOOL_T* null)
  %80 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs100 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %80, i32 0, i32 0
  store i8** %call99, i8*** %r_lhs100, align 8, !tbaa !15
  %81 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs101 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %81, i32 0, i32 0
  %82 = load i8**, i8*** %r_lhs101, align 8, !tbaa !15
  store i8** %82, i8*** %ap, align 8, !tbaa !1
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.124, %if.then.97
  %83 = load i8**, i8*** %ap, align 8, !tbaa !1
  %84 = load i8*, i8** %83, align 8, !tbaa !1
  %cmp103 = icmp ne i8* %84, null
  br i1 %cmp103, label %for.body.105, label %for.end.126

for.body.105:                                     ; preds = %for.cond.102
  %85 = bitcast i8** %botch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i8* null, i8** %botch, align 8, !tbaa !1
  %86 = load i8**, i8*** %ap, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8*, i8** %86, i64 0
  %87 = load i8*, i8** %arrayidx106, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx107, align 1, !tbaa !12
  %conv108 = sext i8 %88 to i32
  %and109 = and i32 %conv108, 255
  switch i32 %and109, label %sw.epilog [
    i32 144, label %sw.bb.110
    i32 145, label %sw.bb.110
    i32 146, label %sw.bb.110
    i32 147, label %sw.bb.110
    i32 148, label %sw.bb.110
    i32 149, label %sw.bb.111
    i32 152, label %sw.bb.112
    i32 153, label %sw.bb.113
    i32 154, label %sw.bb.114
    i32 156, label %sw.bb.115
    i32 157, label %sw.bb.116
    i32 158, label %sw.bb.117
    i32 133, label %sw.bb.118
    i32 134, label %sw.bb.119
  ]

sw.bb.110:                                        ; preds = %for.body.105, %for.body.105, %for.body.105, %for.body.105, %for.body.105
  %89 = load i32, i32* %nfuzzy, align 4, !tbaa !5
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %nfuzzy, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.111:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.112:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.113:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.114:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.115:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.116:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.117:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.118:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.119:                                        ; preds = %for.body.105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8** %botch, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.105, %sw.bb.119, %sw.bb.118, %sw.bb.117, %sw.bb.116, %sw.bb.115, %sw.bb.114, %sw.bb.113, %sw.bb.112, %sw.bb.111, %sw.bb.110
  %90 = load i8*, i8** %botch, align 8, !tbaa !1
  %cmp120 = icmp ne i8* %90, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %sw.epilog
  %91 = load i8*, i8** %botch, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* %91)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %sw.epilog
  %92 = bitcast i8** %botch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %93 = load i8**, i8*** %ap, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %incdec.ptr125, i8*** %ap, align 8, !tbaa !1
  br label %for.cond.102

for.end.126:                                      ; preds = %for.cond.102
  %94 = load i32, i32* @LineNumber, align 4, !tbaa !5
  %95 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_line = getelementptr inbounds %struct.rewrite, %struct.rewrite* %95, i32 0, i32 3
  store i32 %94, i32* %r_line, align 4, !tbaa !16
  %96 = bitcast i8*** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  br label %if.end.129

if.else.127:                                      ; preds = %if.end.85
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  %97 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs128 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %97, i32 0, i32 0
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @readcf.null_list, i32 0, i32 0), i8*** %r_lhs128, align 8, !tbaa !15
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127, %for.end.126
  %98 = load i32, i32* %nfuzzy, align 4, !tbaa !5
  %cmp130 = icmp sgt i32 %98, 9
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.129
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  %99 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs133 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %99, i32 0, i32 0
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @readcf.null_list, i32 0, i32 0), i8*** %r_lhs133, align 8, !tbaa !15
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.129
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.140, %if.end.134
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr136 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr136, i8** %p, align 8, !tbaa !1
  %101 = load i8, i8* %incdec.ptr136, align 1, !tbaa !12
  %conv137 = sext i8 %101 to i32
  %cmp138 = icmp eq i32 %conv137, 9
  br i1 %cmp138, label %while.body.140, label %while.end

while.body.140:                                   ; preds = %while.cond.135
  br label %while.cond.135

while.end:                                        ; preds = %while.cond.135
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %102, i8** %q, align 8, !tbaa !1
  br label %while.cond.141

while.cond.141:                                   ; preds = %while.body.150, %while.end
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !12
  %conv142 = sext i8 %104 to i32
  %cmp143 = icmp ne i32 %conv142, 0
  br i1 %cmp143, label %land.rhs.145, label %land.end.149

land.rhs.145:                                     ; preds = %while.cond.141
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !12
  %conv146 = sext i8 %106 to i32
  %cmp147 = icmp ne i32 %conv146, 9
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.145, %while.cond.141
  %107 = phi i1 [ false, %while.cond.141 ], [ %cmp147, %land.rhs.145 ]
  br i1 %107, label %while.body.150, label %while.end.152

while.body.150:                                   ; preds = %land.end.149
  %108 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr151 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr151, i8** %p, align 8, !tbaa !1
  br label %while.cond.141

while.end.152:                                    ; preds = %land.end.149
  %109 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %109, align 1, !tbaa !12
  %110 = load i8*, i8** %q, align 8, !tbaa !1
  %arraydecay153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %111 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %110, i8* %arraydecay153, i64 2048, %struct.envelope* %111)
  %arraydecay154 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %arraydecay155 = getelementptr inbounds [3048 x i8], [3048 x i8]* %pvpbuf, i32 0, i32 0
  %112 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp156 = icmp sge i32 %112, 9
  %cond158 = select i1 %cmp156, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @TokTypeNoC, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @IntTokenTab, i32 0, i32 0)
  %call159 = call i8** @prescan(i8* %arraydecay154, i32 9, i8* %arraydecay155, i32 3048, i8** null, i8* %cond158, i32 1)
  %113 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs = getelementptr inbounds %struct.rewrite, %struct.rewrite* %113, i32 0, i32 1
  store i8** %call159, i8*** %r_rhs, align 8, !tbaa !17
  %114 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs160 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %114, i32 0, i32 1
  %115 = load i8**, i8*** %r_rhs160, align 8, !tbaa !17
  %cmp161 = icmp ne i8** %115, null
  br i1 %cmp161, label %if.then.163, label %if.else.242

if.then.163:                                      ; preds = %while.end.152
  %116 = bitcast i8*** %ap164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = bitcast i32* %args to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = bitcast i32* %endtoken to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = bitcast i32* %inmap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs165 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %120, i32 0, i32 1
  %121 = load i8**, i8*** %r_rhs165, align 8, !tbaa !17
  %call166 = call i8** @copyplist(i8** %121, i32 1, %struct.SM_RPOOL_T* null)
  %122 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs167 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %122, i32 0, i32 1
  store i8** %call166, i8*** %r_rhs167, align 8, !tbaa !17
  %123 = load i32, i32* %nfuzzy, align 4, !tbaa !5
  %add = add nsw i32 %123, 48
  store i32 %add, i32* %nfuzzy, align 4, !tbaa !5
  store i32 0, i32* %inmap, align 4, !tbaa !5
  store i32 0, i32* %args, align 4, !tbaa !5
  store i32 0, i32* %endtoken, align 4, !tbaa !5
  %124 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs168 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %124, i32 0, i32 1
  %125 = load i8**, i8*** %r_rhs168, align 8, !tbaa !17
  store i8** %125, i8*** %ap164, align 8, !tbaa !1
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.236, %if.then.163
  %126 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %127 = load i8*, i8** %126, align 8, !tbaa !1
  %cmp170 = icmp ne i8* %127, null
  br i1 %cmp170, label %for.body.172, label %for.end.238

for.body.172:                                     ; preds = %for.cond.169
  %128 = bitcast i8** %botch173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  store i8* null, i8** %botch173, align 8, !tbaa !1
  %129 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8*, i8** %129, i64 0
  %130 = load i8*, i8** %arrayidx174, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8, i8* %130, i64 0
  %131 = load i8, i8* %arrayidx175, align 1, !tbaa !12
  %conv176 = sext i8 %131 to i32
  %and177 = and i32 %conv176, 255
  switch i32 %and177, label %sw.epilog.231 [
    i32 149, label %sw.bb.178
    i32 144, label %sw.bb.195
    i32 145, label %sw.bb.196
    i32 146, label %sw.bb.197
    i32 147, label %sw.bb.198
    i32 148, label %sw.bb.199
    i32 151, label %sw.bb.200
    i32 157, label %sw.bb.209
    i32 133, label %sw.bb.210
    i32 158, label %sw.bb.222
    i32 134, label %sw.bb.222
  ]

sw.bb.178:                                        ; preds = %for.body.172
  %132 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8*, i8** %132, i64 0
  %133 = load i8*, i8** %arrayidx179, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i8, i8* %arrayidx180, align 1, !tbaa !12
  %conv181 = sext i8 %134 to i32
  %cmp182 = icmp sle i32 %conv181, 48
  br i1 %cmp182, label %if.then.190, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %sw.bb.178
  %135 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8*, i8** %135, i64 0
  %136 = load i8*, i8** %arrayidx185, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx186, align 1, !tbaa !12
  %conv187 = sext i8 %137 to i32
  %138 = load i32, i32* %nfuzzy, align 4, !tbaa !5
  %cmp188 = icmp sgt i32 %conv187, %138
  br i1 %cmp188, label %if.then.190, label %if.end.194

if.then.190:                                      ; preds = %lor.lhs.false.184, %sw.bb.178
  %139 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i8*, i8** %139, i64 0
  %140 = load i8*, i8** %arrayidx191, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx192, align 1, !tbaa !12
  %conv193 = sext i8 %141 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i32 %conv193)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.190, %lor.lhs.false.184
  br label %sw.epilog.231

sw.bb.195:                                        ; preds = %for.body.172
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8** %botch173, align 8, !tbaa !1
  br label %sw.epilog.231

sw.bb.196:                                        ; preds = %for.body.172
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8** %botch173, align 8, !tbaa !1
  br label %sw.epilog.231

sw.bb.197:                                        ; preds = %for.body.172
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8** %botch173, align 8, !tbaa !1
  br label %sw.epilog.231

sw.bb.198:                                        ; preds = %for.body.172
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8** %botch173, align 8, !tbaa !1
  br label %sw.epilog.231

sw.bb.199:                                        ; preds = %for.body.172
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8** %botch173, align 8, !tbaa !1
  br label %sw.epilog.231

sw.bb.200:                                        ; preds = %for.body.172
  %142 = load i32, i32* %inmap, align 4, !tbaa !5
  %tobool201 = icmp ne i32 %142, 0
  br i1 %tobool201, label %if.end.203, label %if.then.202

if.then.202:                                      ; preds = %sw.bb.200
  br label %sw.epilog.231

if.end.203:                                       ; preds = %sw.bb.200
  %143 = load i32, i32* %args, align 4, !tbaa !5
  %inc204 = add nsw i32 %143, 1
  store i32 %inc204, i32* %args, align 4, !tbaa !5
  %cmp205 = icmp sge i32 %inc204, 10
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.end.203
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.end.203
  br label %sw.epilog.231

sw.bb.209:                                        ; preds = %for.body.172
  store i32 158, i32* %endtoken, align 4, !tbaa !5
  br label %sw.bb.210

sw.bb.210:                                        ; preds = %for.body.172, %sw.bb.209
  %144 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i8*, i8** %144, i64 0
  %145 = load i8*, i8** %arrayidx211, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %145, i64 0
  %146 = load i8, i8* %arrayidx212, align 1, !tbaa !12
  %conv213 = sext i8 %146 to i32
  %and214 = and i32 %conv213, 255
  %cmp215 = icmp eq i32 %and214, 133
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %sw.bb.210
  store i32 134, i32* %endtoken, align 4, !tbaa !5
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %sw.bb.210
  %147 = load i32, i32* %inmap, align 4, !tbaa !5
  %tobool219 = icmp ne i32 %147, 0
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.218
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.218
  store i32 1, i32* %inmap, align 4, !tbaa !5
  store i32 0, i32* %args, align 4, !tbaa !5
  br label %sw.epilog.231

sw.bb.222:                                        ; preds = %for.body.172, %for.body.172
  %148 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8*, i8** %148, i64 0
  %149 = load i8*, i8** %arrayidx223, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx224, align 1, !tbaa !12
  %conv225 = sext i8 %150 to i32
  %and226 = and i32 %conv225, 255
  %151 = load i32, i32* %endtoken, align 4, !tbaa !5
  %cmp227 = icmp ne i32 %and226, %151
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %sw.bb.222
  br label %sw.epilog.231

if.end.230:                                       ; preds = %sw.bb.222
  store i32 0, i32* %inmap, align 4, !tbaa !5
  store i32 0, i32* %endtoken, align 4, !tbaa !5
  br label %sw.epilog.231

sw.epilog.231:                                    ; preds = %for.body.172, %if.end.230, %if.then.229, %if.end.221, %if.end.208, %if.then.202, %sw.bb.199, %sw.bb.198, %sw.bb.197, %sw.bb.196, %sw.bb.195, %if.end.194
  %152 = load i8*, i8** %botch173, align 8, !tbaa !1
  %cmp232 = icmp ne i8* %152, null
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %sw.epilog.231
  %153 = load i8*, i8** %botch173, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8* %153)
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %sw.epilog.231
  %154 = bitcast i8** %botch173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  br label %for.inc.236

for.inc.236:                                      ; preds = %if.end.235
  %155 = load i8**, i8*** %ap164, align 8, !tbaa !1
  %incdec.ptr237 = getelementptr inbounds i8*, i8** %155, i32 1
  store i8** %incdec.ptr237, i8*** %ap164, align 8, !tbaa !1
  br label %for.cond.169

for.end.238:                                      ; preds = %for.cond.169
  %156 = load i32, i32* %inmap, align 4, !tbaa !5
  %tobool239 = icmp ne i32 %156, 0
  br i1 %tobool239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %for.end.238
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %for.end.238
  %157 = bitcast i32* %inmap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %endtoken to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %args to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i8*** %ap164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  br label %if.end.244

if.else.242:                                      ; preds = %while.end.152
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  %161 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs243 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %161, i32 0, i32 1
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @readcf.null_list, i32 0, i32 0), i8*** %r_rhs243, align 8, !tbaa !17
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.242, %if.end.241
  br label %sw.epilog.693

sw.bb.245:                                        ; preds = %if.end.57
  %162 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %162, i64 1
  %arraydecay247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %163 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %arrayidx246, i8* %arraydecay247, i64 2048, %struct.envelope* %163)
  %arraydecay248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %call249 = call i32 @strtorwset(i8* %arraydecay248, i8** null, i32 1)
  store i32 %call249, i32* %ruleset, align 4, !tbaa !5
  %164 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp250 = icmp slt i32 %164, 0
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %sw.bb.245
  br label %sw.epilog.693

if.end.253:                                       ; preds = %sw.bb.245
  %165 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom254 = sext i32 %165 to i64
  %arrayidx255 = getelementptr inbounds [200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 %idxprom254
  %166 = load %struct.rewrite*, %struct.rewrite** %arrayidx255, align 8, !tbaa !1
  store %struct.rewrite* %166, %struct.rewrite** %rwp, align 8, !tbaa !1
  %167 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %cmp256 = icmp ne %struct.rewrite* %167, null
  br i1 %cmp256, label %if.then.258, label %if.end.285

if.then.258:                                      ; preds = %if.end.253
  %168 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv259 = sext i8 %168 to i32
  %cmp260 = icmp eq i32 %conv259, 116
  br i1 %cmp260, label %if.then.266, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.then.258
  %169 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv263 = sext i8 %169 to i32
  %cmp264 = icmp eq i32 %conv263, 67
  br i1 %cmp264, label %if.then.266, label %if.end.269

if.then.266:                                      ; preds = %lor.lhs.false.262, %if.then.258
  %170 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %170, i64 1
  %call268 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0), i8* %arrayidx267)
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.266, %lor.lhs.false.262
  %171 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv270 = zext i8 %171 to i32
  %cmp271 = icmp sge i32 %conv270, 1
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.277

land.lhs.true.273:                                ; preds = %if.end.269
  %172 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool274 = icmp ne i32 %172, 0
  br i1 %tobool274, label %if.end.277, label %if.then.275

if.then.275:                                      ; preds = %land.lhs.true.273
  %173 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i8, i8* %173, i64 1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0), i8* %arrayidx276)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.275, %land.lhs.true.273, %if.end.269
  br label %while.cond.278

while.cond.278:                                   ; preds = %while.body.282, %if.end.277
  %174 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_next279 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %174, i32 0, i32 2
  %175 = load %struct.rewrite*, %struct.rewrite** %r_next279, align 8, !tbaa !13
  %cmp280 = icmp ne %struct.rewrite* %175, null
  br i1 %cmp280, label %while.body.282, label %while.end.284

while.body.282:                                   ; preds = %while.cond.278
  %176 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_next283 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %176, i32 0, i32 2
  %177 = load %struct.rewrite*, %struct.rewrite** %r_next283, align 8, !tbaa !13
  store %struct.rewrite* %177, %struct.rewrite** %rwp, align 8, !tbaa !1
  br label %while.cond.278

while.end.284:                                    ; preds = %while.cond.278
  br label %if.end.285

if.end.285:                                       ; preds = %while.end.284, %if.end.253
  br label %sw.epilog.693

sw.bb.286:                                        ; preds = %if.end.57
  %178 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds i8, i8* %178, i64 1
  %call288 = call i32 @macid_parse(i8* %arrayidx287, i8** %ep)
  store i32 %call288, i32* %mid, align 4, !tbaa !5
  %179 = load i32, i32* %mid, align 4, !tbaa !5
  %cmp289 = icmp eq i32 %179, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %sw.bb.286
  br label %sw.epilog.693

if.end.292:                                       ; preds = %sw.bb.286
  %180 = load i8*, i8** %ep, align 8, !tbaa !1
  %call293 = call i8* @munchstring(i8* %180, i8** null, i32 0)
  store i8* %call293, i8** %p, align 8, !tbaa !1
  %181 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %181, i32 0, i32 46
  %182 = load i32, i32* %mid, align 4, !tbaa !5
  %183 = load i8*, i8** %p, align 8, !tbaa !1
  %184 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %182, i8* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 545, i32 %184)
  br label %sw.epilog.693

sw.bb.294:                                        ; preds = %if.end.57
  %185 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds i8, i8* %185, i64 1
  %186 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call296 = call i64 @chompheader(i8* %arrayidx295, i32 1, %struct.header** null, %struct.envelope* %186)
  br label %sw.epilog.693

sw.bb.297:                                        ; preds = %if.end.57, %if.end.57
  %187 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i8, i8* %187, i64 0
  %188 = load i8, i8* %arrayidx298, align 1, !tbaa !12
  %conv299 = sext i8 %188 to i32
  %cmp300 = icmp eq i32 %conv299, 67
  br i1 %cmp300, label %if.then.302, label %if.else.311

if.then.302:                                      ; preds = %sw.bb.297
  %189 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %189, i64 1
  %call304 = call i32 @macid_parse(i8* %arrayidx303, i8** %ep)
  store i32 %call304, i32* %mid, align 4, !tbaa !5
  %190 = load i32, i32* %mid, align 4, !tbaa !5
  %cmp305 = icmp eq i32 %190, 0
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.then.302
  br label %sw.epilog.693

if.end.308:                                       ; preds = %if.then.302
  %191 = load i8*, i8** %ep, align 8, !tbaa !1
  %arraydecay309 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %192 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %191, i8* %arraydecay309, i64 2048, %struct.envelope* %192)
  %arraydecay310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  store i8* %arraydecay310, i8** %p, align 8, !tbaa !1
  br label %if.end.313

if.else.311:                                      ; preds = %sw.bb.297
  store i32 116, i32* %mid, align 4, !tbaa !5
  %193 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %arrayidx312, i8** %p, align 8, !tbaa !1
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.311, %if.end.308
  br label %while.cond.314

while.cond.314:                                   ; preds = %if.end.367, %if.end.313
  %194 = load i8*, i8** %p, align 8, !tbaa !1
  %195 = load i8, i8* %194, align 1, !tbaa !12
  %conv315 = sext i8 %195 to i32
  %cmp316 = icmp ne i32 %conv315, 0
  br i1 %cmp316, label %while.body.318, label %while.end.368

while.body.318:                                   ; preds = %while.cond.314
  %196 = bitcast i8** %wd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  call void @llvm.lifetime.start(i64 1, i8* %delim) #1
  br label %while.cond.319

while.cond.319:                                   ; preds = %while.body.337, %while.body.318
  %197 = load i8*, i8** %p, align 8, !tbaa !1
  %198 = load i8, i8* %197, align 1, !tbaa !12
  %conv320 = sext i8 %198 to i32
  %cmp321 = icmp ne i32 %conv320, 0
  br i1 %cmp321, label %land.lhs.true.323, label %land.end.336

land.lhs.true.323:                                ; preds = %while.cond.319
  %199 = load i8*, i8** %p, align 8, !tbaa !1
  %200 = load i8, i8* %199, align 1, !tbaa !12
  %conv324 = sext i8 %200 to i32
  %and325 = and i32 %conv324, -128
  %cmp326 = icmp eq i32 %and325, 0
  br i1 %cmp326, label %land.rhs.328, label %land.end.336

land.rhs.328:                                     ; preds = %land.lhs.true.323
  %201 = load i8*, i8** %p, align 8, !tbaa !1
  %202 = load i8, i8* %201, align 1, !tbaa !12
  %conv329 = sext i8 %202 to i32
  %idxprom330 = sext i32 %conv329 to i64
  %call331 = call i16** @__ctype_b_loc() #8
  %203 = load i16*, i16** %call331, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i16, i16* %203, i64 %idxprom330
  %204 = load i16, i16* %arrayidx332, align 2, !tbaa !18
  %conv333 = zext i16 %204 to i32
  %and334 = and i32 %conv333, 8192
  %tobool335 = icmp ne i32 %and334, 0
  br label %land.end.336

land.end.336:                                     ; preds = %land.rhs.328, %land.lhs.true.323, %while.cond.319
  %205 = phi i1 [ false, %land.lhs.true.323 ], [ false, %while.cond.319 ], [ %tobool335, %land.rhs.328 ]
  br i1 %205, label %while.body.337, label %while.end.339

while.body.337:                                   ; preds = %land.end.336
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr338 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr338, i8** %p, align 8, !tbaa !1
  br label %while.cond.319

while.end.339:                                    ; preds = %land.end.336
  %207 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %207, i8** %wd, align 8, !tbaa !1
  br label %while.cond.340

while.cond.340:                                   ; preds = %while.body.359, %while.end.339
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !12
  %conv341 = sext i8 %209 to i32
  %cmp342 = icmp ne i32 %conv341, 0
  br i1 %cmp342, label %land.rhs.344, label %land.end.358

land.rhs.344:                                     ; preds = %while.cond.340
  %210 = load i8*, i8** %p, align 8, !tbaa !1
  %211 = load i8, i8* %210, align 1, !tbaa !12
  %conv345 = sext i8 %211 to i32
  %and346 = and i32 %conv345, -128
  %cmp347 = icmp eq i32 %and346, 0
  br i1 %cmp347, label %land.rhs.349, label %land.end.357

land.rhs.349:                                     ; preds = %land.rhs.344
  %212 = load i8*, i8** %p, align 8, !tbaa !1
  %213 = load i8, i8* %212, align 1, !tbaa !12
  %conv350 = sext i8 %213 to i32
  %idxprom351 = sext i32 %conv350 to i64
  %call352 = call i16** @__ctype_b_loc() #8
  %214 = load i16*, i16** %call352, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds i16, i16* %214, i64 %idxprom351
  %215 = load i16, i16* %arrayidx353, align 2, !tbaa !18
  %conv354 = zext i16 %215 to i32
  %and355 = and i32 %conv354, 8192
  %tobool356 = icmp ne i32 %and355, 0
  br label %land.end.357

land.end.357:                                     ; preds = %land.rhs.349, %land.rhs.344
  %216 = phi i1 [ false, %land.rhs.344 ], [ %tobool356, %land.rhs.349 ]
  %lnot = xor i1 %216, true
  br label %land.end.358

land.end.358:                                     ; preds = %land.end.357, %while.cond.340
  %217 = phi i1 [ false, %while.cond.340 ], [ %lnot, %land.end.357 ]
  br i1 %217, label %while.body.359, label %while.end.361

while.body.359:                                   ; preds = %land.end.358
  %218 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr360 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr360, i8** %p, align 8, !tbaa !1
  br label %while.cond.340

while.end.361:                                    ; preds = %land.end.358
  %219 = load i8*, i8** %p, align 8, !tbaa !1
  %220 = load i8, i8* %219, align 1, !tbaa !12
  store i8 %220, i8* %delim, align 1, !tbaa !12
  %221 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %221, align 1, !tbaa !12
  %222 = load i8*, i8** %wd, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i8, i8* %222, i64 0
  %223 = load i8, i8* %arrayidx362, align 1, !tbaa !12
  %conv363 = sext i8 %223 to i32
  %cmp364 = icmp ne i32 %conv363, 0
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %while.end.361
  %224 = load i32, i32* %mid, align 4, !tbaa !5
  %225 = load i8*, i8** %wd, align 8, !tbaa !1
  call void @setclass(i32 %224, i8* %225)
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.366, %while.end.361
  %226 = load i8, i8* %delim, align 1, !tbaa !12
  %227 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %226, i8* %227, align 1, !tbaa !12
  call void @llvm.lifetime.end(i64 1, i8* %delim) #1
  %228 = bitcast i8** %wd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  br label %while.cond.314

while.end.368:                                    ; preds = %while.cond.314
  br label %sw.epilog.693

sw.bb.369:                                        ; preds = %if.end.57
  %229 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i8, i8* %229, i64 1
  %call371 = call i32 @macid_parse(i8* %arrayidx370, i8** %ep)
  store i32 %call371, i32* %mid, align 4, !tbaa !5
  %230 = load i32, i32* %mid, align 4, !tbaa !5
  %cmp372 = icmp eq i32 %230, 0
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %sw.bb.369
  br label %sw.epilog.693

if.end.375:                                       ; preds = %sw.bb.369
  %231 = load i8*, i8** %ep, align 8, !tbaa !1
  store i8* %231, i8** %p, align 8, !tbaa !1
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.body.390, %if.end.375
  %232 = load i8*, i8** %p, align 8, !tbaa !1
  %233 = load i8, i8* %232, align 1, !tbaa !12
  %conv377 = sext i8 %233 to i32
  %and378 = and i32 %conv377, -128
  %cmp379 = icmp eq i32 %and378, 0
  br i1 %cmp379, label %land.rhs.381, label %land.end.389

land.rhs.381:                                     ; preds = %for.cond.376
  %234 = load i8*, i8** %p, align 8, !tbaa !1
  %235 = load i8, i8* %234, align 1, !tbaa !12
  %conv382 = sext i8 %235 to i32
  %idxprom383 = sext i32 %conv382 to i64
  %call384 = call i16** @__ctype_b_loc() #8
  %236 = load i16*, i16** %call384, align 8, !tbaa !1
  %arrayidx385 = getelementptr inbounds i16, i16* %236, i64 %idxprom383
  %237 = load i16, i16* %arrayidx385, align 2, !tbaa !18
  %conv386 = zext i16 %237 to i32
  %and387 = and i32 %conv386, 8192
  %tobool388 = icmp ne i32 %and387, 0
  br label %land.end.389

land.end.389:                                     ; preds = %land.rhs.381, %for.cond.376
  %238 = phi i1 [ false, %for.cond.376 ], [ %tobool388, %land.rhs.381 ]
  br i1 %238, label %for.body.390, label %for.end.392

for.body.390:                                     ; preds = %land.end.389
  %239 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr391 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr391, i8** %p, align 8, !tbaa !1
  br label %for.cond.376

for.end.392:                                      ; preds = %land.end.389
  %240 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx393 = getelementptr inbounds i8, i8* %240, i64 0
  %241 = load i8, i8* %arrayidx393, align 1, !tbaa !12
  %conv394 = sext i8 %241 to i32
  %cmp395 = icmp eq i32 %conv394, 45
  br i1 %cmp395, label %land.lhs.true.397, label %if.else.443

land.lhs.true.397:                                ; preds = %for.end.392
  %242 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx398 = getelementptr inbounds i8, i8* %242, i64 1
  %243 = load i8, i8* %arrayidx398, align 1, !tbaa !12
  %conv399 = sext i8 %243 to i32
  %cmp400 = icmp eq i32 %conv399, 111
  br i1 %cmp400, label %if.then.402, label %if.else.443

if.then.402:                                      ; preds = %land.lhs.true.397
  store i32 1, i32* %optional, align 4, !tbaa !5
  br label %while.cond.403

while.cond.403:                                   ; preds = %while.body.423, %if.then.402
  %244 = load i8*, i8** %p, align 8, !tbaa !1
  %245 = load i8, i8* %244, align 1, !tbaa !12
  %conv404 = sext i8 %245 to i32
  %cmp405 = icmp ne i32 %conv404, 0
  br i1 %cmp405, label %land.rhs.407, label %land.end.422

land.rhs.407:                                     ; preds = %while.cond.403
  %246 = load i8*, i8** %p, align 8, !tbaa !1
  %247 = load i8, i8* %246, align 1, !tbaa !12
  %conv408 = sext i8 %247 to i32
  %and409 = and i32 %conv408, -128
  %cmp410 = icmp eq i32 %and409, 0
  br i1 %cmp410, label %land.rhs.412, label %land.end.420

land.rhs.412:                                     ; preds = %land.rhs.407
  %248 = load i8*, i8** %p, align 8, !tbaa !1
  %249 = load i8, i8* %248, align 1, !tbaa !12
  %conv413 = sext i8 %249 to i32
  %idxprom414 = sext i32 %conv413 to i64
  %call415 = call i16** @__ctype_b_loc() #8
  %250 = load i16*, i16** %call415, align 8, !tbaa !1
  %arrayidx416 = getelementptr inbounds i16, i16* %250, i64 %idxprom414
  %251 = load i16, i16* %arrayidx416, align 2, !tbaa !18
  %conv417 = zext i16 %251 to i32
  %and418 = and i32 %conv417, 8192
  %tobool419 = icmp ne i32 %and418, 0
  br label %land.end.420

land.end.420:                                     ; preds = %land.rhs.412, %land.rhs.407
  %252 = phi i1 [ false, %land.rhs.407 ], [ %tobool419, %land.rhs.412 ]
  %lnot421 = xor i1 %252, true
  br label %land.end.422

land.end.422:                                     ; preds = %land.end.420, %while.cond.403
  %253 = phi i1 [ false, %while.cond.403 ], [ %lnot421, %land.end.420 ]
  br i1 %253, label %while.body.423, label %while.end.425

while.body.423:                                   ; preds = %land.end.422
  %254 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr424 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr424, i8** %p, align 8, !tbaa !1
  br label %while.cond.403

while.end.425:                                    ; preds = %land.end.422
  br label %while.cond.426

while.cond.426:                                   ; preds = %while.body.440, %while.end.425
  %255 = load i8*, i8** %p, align 8, !tbaa !1
  %256 = load i8, i8* %255, align 1, !tbaa !12
  %conv427 = sext i8 %256 to i32
  %and428 = and i32 %conv427, -128
  %cmp429 = icmp eq i32 %and428, 0
  br i1 %cmp429, label %land.rhs.431, label %land.end.439

land.rhs.431:                                     ; preds = %while.cond.426
  %257 = load i8*, i8** %p, align 8, !tbaa !1
  %258 = load i8, i8* %257, align 1, !tbaa !12
  %conv432 = sext i8 %258 to i32
  %idxprom433 = sext i32 %conv432 to i64
  %call434 = call i16** @__ctype_b_loc() #8
  %259 = load i16*, i16** %call434, align 8, !tbaa !1
  %arrayidx435 = getelementptr inbounds i16, i16* %259, i64 %idxprom433
  %260 = load i16, i16* %arrayidx435, align 2, !tbaa !18
  %conv436 = zext i16 %260 to i32
  %and437 = and i32 %conv436, 8192
  %tobool438 = icmp ne i32 %and437, 0
  br label %land.end.439

land.end.439:                                     ; preds = %land.rhs.431, %while.cond.426
  %261 = phi i1 [ false, %while.cond.426 ], [ %tobool438, %land.rhs.431 ]
  br i1 %261, label %while.body.440, label %while.end.442

while.body.440:                                   ; preds = %land.end.439
  %262 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr441 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr441, i8** %p, align 8, !tbaa !1
  br label %while.cond.426

while.end.442:                                    ; preds = %land.end.439
  br label %if.end.444

if.else.443:                                      ; preds = %land.lhs.true.397, %for.end.392
  store i32 0, i32* %optional, align 4, !tbaa !5
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.443, %while.end.442
  store i32 0, i32* %ismap, align 4, !tbaa !5
  %263 = load i8*, i8** %p, align 8, !tbaa !1
  %264 = load i8, i8* %263, align 1, !tbaa !12
  %conv445 = sext i8 %264 to i32
  %cmp446 = icmp eq i32 %conv445, 47
  br i1 %cmp446, label %if.end.514, label %land.lhs.true.448

land.lhs.true.448:                                ; preds = %if.end.444
  %265 = load i8*, i8** %p, align 8, !tbaa !1
  %266 = load i8, i8* %265, align 1, !tbaa !12
  %conv449 = sext i8 %266 to i32
  %cmp450 = icmp ne i32 %conv449, 124
  br i1 %cmp450, label %land.lhs.true.452, label %if.end.514

land.lhs.true.452:                                ; preds = %land.lhs.true.448
  %267 = load i8*, i8** %p, align 8, !tbaa !1
  %call453 = call i8* @strchr(i8* %267, i32 64) #1
  store i8* %call453, i8** %q, align 8, !tbaa !1
  %cmp454 = icmp ne i8* %call453, null
  br i1 %cmp454, label %if.then.456, label %if.end.514

if.then.456:                                      ; preds = %land.lhs.true.452
  %268 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr457 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %incdec.ptr457, i8** %q, align 8, !tbaa !1
  %269 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %269) #1
  %270 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %270) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.33 to i64)), i64 1), label %land.lhs.true.458, label %cond.false

land.lhs.true.458:                                ; preds = %if.then.456
  store i64 4, i64* %__s2_len, align 8, !tbaa !7
  %271 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp459 = icmp ult i64 %271, 4
  br i1 %cmp459, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.458
  %272 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #1
  %273 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %273, i8** %__s1, align 8, !tbaa !1
  %274 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  %275 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx463 = getelementptr inbounds i8, i8* %275, i64 0
  %276 = load i8, i8* %arrayidx463, align 1, !tbaa !12
  %conv464 = zext i8 %276 to i32
  %277 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), align 1, !tbaa !12
  %conv465 = zext i8 %277 to i32
  %sub = sub nsw i32 %conv464, %conv465
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %278 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp466 = icmp ugt i64 %278, 0
  br i1 %cmp466, label %land.lhs.true.468, label %if.end.498

land.lhs.true.468:                                ; preds = %cond.true
  %279 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp469 = icmp eq i32 %279, 0
  br i1 %cmp469, label %if.then.471, label %if.end.498

if.then.471:                                      ; preds = %land.lhs.true.468
  %280 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds i8, i8* %280, i64 1
  %281 = load i8, i8* %arrayidx472, align 1, !tbaa !12
  %conv473 = zext i8 %281 to i32
  %282 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i64 1), align 1, !tbaa !12
  %conv474 = zext i8 %282 to i32
  %sub475 = sub nsw i32 %conv473, %conv474
  store i32 %sub475, i32* %__result, align 4, !tbaa !5
  %283 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp476 = icmp ugt i64 %283, 1
  br i1 %cmp476, label %land.lhs.true.478, label %if.end.497

land.lhs.true.478:                                ; preds = %if.then.471
  %284 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp479 = icmp eq i32 %284, 0
  br i1 %cmp479, label %if.then.481, label %if.end.497

if.then.481:                                      ; preds = %land.lhs.true.478
  %285 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx482 = getelementptr inbounds i8, i8* %285, i64 2
  %286 = load i8, i8* %arrayidx482, align 1, !tbaa !12
  %conv483 = zext i8 %286 to i32
  %287 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i64 2), align 1, !tbaa !12
  %conv484 = zext i8 %287 to i32
  %sub485 = sub nsw i32 %conv483, %conv484
  store i32 %sub485, i32* %__result, align 4, !tbaa !5
  %288 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp486 = icmp ugt i64 %288, 2
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.496

land.lhs.true.488:                                ; preds = %if.then.481
  %289 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp489 = icmp eq i32 %289, 0
  br i1 %cmp489, label %if.then.491, label %if.end.496

if.then.491:                                      ; preds = %land.lhs.true.488
  %290 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i8, i8* %290, i64 3
  %291 = load i8, i8* %arrayidx492, align 1, !tbaa !12
  %conv493 = zext i8 %291 to i32
  %292 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i64 3), align 1, !tbaa !12
  %conv494 = zext i8 %292 to i32
  %sub495 = sub nsw i32 %conv493, %conv494
  store i32 %sub495, i32* %__result, align 4, !tbaa !5
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.491, %land.lhs.true.488, %if.then.481
  br label %if.end.497

if.end.497:                                       ; preds = %if.end.496, %land.lhs.true.478, %if.then.471
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %land.lhs.true.468, %cond.true
  %293 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %293, i32* %tmp499, !tbaa !5
  %294 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = load i32, i32* %tmp499, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.458, %if.then.456
  %297 = load i8*, i8** %q, align 8, !tbaa !1
  %call500 = call i32 @strcmp(i8* %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.498
  %cond501 = phi i32 [ %296, %if.end.498 ], [ %call500, %cond.false ]
  store i32 %cond501, i32* %tmp, !tbaa !5
  %298 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = load i32, i32* %tmp, !tbaa !5
  %cmp502 = icmp eq i32 %300, 0
  br i1 %cmp502, label %if.then.512, label %lor.lhs.false.504

lor.lhs.false.504:                                ; preds = %cond.end
  %301 = load i8*, i8** %q, align 8, !tbaa !1
  %302 = load i8, i8* %301, align 1, !tbaa !12
  %conv505 = sext i8 %302 to i32
  %cmp506 = icmp ne i32 %conv505, 58
  br i1 %cmp506, label %land.lhs.true.508, label %if.end.513

land.lhs.true.508:                                ; preds = %lor.lhs.false.504
  %303 = load i8*, i8** %q, align 8, !tbaa !1
  %call509 = call i8* @strchr(i8* %303, i32 58) #1
  %cmp510 = icmp ne i8* %call509, null
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %land.lhs.true.508, %cond.end
  store i32 1, i32* %ismap, align 4, !tbaa !5
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.512, %land.lhs.true.508, %lor.lhs.false.504
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %land.lhs.true.452, %land.lhs.true.448, %if.end.444
  %304 = load i32, i32* %ismap, align 4, !tbaa !5
  %tobool515 = icmp ne i32 %304, 0
  br i1 %tobool515, label %if.then.516, label %if.else.517

if.then.516:                                      ; preds = %if.end.514
  %305 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %305, i8** %file, align 8, !tbaa !1
  br label %if.end.522

if.else.517:                                      ; preds = %if.end.514
  %306 = load i8*, i8** %p, align 8, !tbaa !1
  %call518 = call i8* @extrquotstr(i8* %306, i8** %q, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i32* %ok)
  store i8* %call518, i8** %file, align 8, !tbaa !1
  %307 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool519 = icmp ne i32 %307, 0
  br i1 %tobool519, label %if.end.521, label %if.then.520

if.then.520:                                      ; preds = %if.else.517
  %308 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* %308)
  br label %sw.epilog.693

if.end.521:                                       ; preds = %if.else.517
  br label %if.end.522

if.end.522:                                       ; preds = %if.end.521, %if.then.516
  %309 = load i8*, i8** %file, align 8, !tbaa !1
  %310 = load i8, i8* %309, align 1, !tbaa !12
  %conv523 = sext i8 %310 to i32
  %cmp524 = icmp eq i32 %conv523, 124
  br i1 %cmp524, label %if.then.528, label %lor.lhs.false.526

lor.lhs.false.526:                                ; preds = %if.end.522
  %311 = load i32, i32* %ismap, align 4, !tbaa !5
  %tobool527 = icmp ne i32 %311, 0
  br i1 %tobool527, label %if.then.528, label %if.else.529

if.then.528:                                      ; preds = %lor.lhs.false.526, %if.end.522
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.553

if.else.529:                                      ; preds = %lor.lhs.false.526
  %312 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %312, i8** %p, align 8, !tbaa !1
  %313 = load i8*, i8** %p, align 8, !tbaa !1
  %314 = load i8, i8* %313, align 1, !tbaa !12
  %conv530 = sext i8 %314 to i32
  %cmp531 = icmp eq i32 %conv530, 0
  br i1 %cmp531, label %if.then.533, label %if.else.534

if.then.533:                                      ; preds = %if.else.529
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.552

if.else.534:                                      ; preds = %if.else.529
  %315 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %315, align 1, !tbaa !12
  br label %while.cond.535

while.cond.535:                                   ; preds = %while.body.550, %if.else.534
  %316 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr536 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %incdec.ptr536, i8** %p, align 8, !tbaa !1
  %317 = load i8, i8* %incdec.ptr536, align 1, !tbaa !12
  %conv537 = sext i8 %317 to i32
  %and538 = and i32 %conv537, -128
  %cmp539 = icmp eq i32 %and538, 0
  br i1 %cmp539, label %land.rhs.541, label %land.end.549

land.rhs.541:                                     ; preds = %while.cond.535
  %318 = load i8*, i8** %p, align 8, !tbaa !1
  %319 = load i8, i8* %318, align 1, !tbaa !12
  %conv542 = sext i8 %319 to i32
  %idxprom543 = sext i32 %conv542 to i64
  %call544 = call i16** @__ctype_b_loc() #8
  %320 = load i16*, i16** %call544, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds i16, i16* %320, i64 %idxprom543
  %321 = load i16, i16* %arrayidx545, align 2, !tbaa !18
  %conv546 = zext i16 %321 to i32
  %and547 = and i32 %conv546, 8192
  %tobool548 = icmp ne i32 %and547, 0
  br label %land.end.549

land.end.549:                                     ; preds = %land.rhs.541, %while.cond.535
  %322 = phi i1 [ false, %while.cond.535 ], [ %tobool548, %land.rhs.541 ]
  br i1 %322, label %while.body.550, label %while.end.551

while.body.550:                                   ; preds = %land.end.549
  br label %while.cond.535

while.end.551:                                    ; preds = %land.end.549
  br label %if.end.552

if.end.552:                                       ; preds = %while.end.551, %if.then.533
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.552, %if.then.528
  %323 = load i32, i32* %mid, align 4, !tbaa !5
  %324 = load i8*, i8** %file, align 8, !tbaa !1
  %325 = load i8*, i8** %p, align 8, !tbaa !1
  %326 = load i32, i32* %ismap, align 4, !tbaa !5
  %327 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %328 = load i32, i32* %optional, align 4, !tbaa !5
  call void @fileclass(i32 %323, i8* %324, i8* %325, i32 %326, i32 %327, i32 %328)
  br label %sw.epilog.693

sw.bb.554:                                        ; preds = %if.end.57
  %329 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx555 = getelementptr inbounds i8, i8* %329, i64 1
  call void @makemailer(i8* %arrayidx555)
  br label %sw.epilog.693

sw.bb.556:                                        ; preds = %if.end.57
  %330 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds i8, i8* %330, i64 1
  %331 = load i8, i8* %arrayidx557, align 1, !tbaa !12
  %conv558 = sext i8 %331 to i32
  %332 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx559 = getelementptr inbounds i8, i8* %332, i64 2
  %333 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %334 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @setoption(i32 %conv558, i8* %arrayidx559, i32 %333, i32 0, %struct.envelope* %334)
  br label %sw.epilog.693

sw.bb.560:                                        ; preds = %if.end.57
  %335 = load i32, i32* @NumPriorities, align 4, !tbaa !5
  %cmp561 = icmp sge i32 %335, 25
  br i1 %cmp561, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %sw.bb.560
  call void @toomany(i32 80, i32 25)
  br label %sw.epilog.693

if.end.564:                                       ; preds = %sw.bb.560
  %336 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx565 = getelementptr inbounds i8, i8* %336, i64 1
  store i8* %arrayidx565, i8** %p, align 8, !tbaa !1
  br label %for.cond.566

for.cond.566:                                     ; preds = %for.inc.576, %if.end.564
  %337 = load i8*, i8** %p, align 8, !tbaa !1
  %338 = load i8, i8* %337, align 1, !tbaa !12
  %conv567 = sext i8 %338 to i32
  %cmp568 = icmp ne i32 %conv567, 0
  br i1 %cmp568, label %land.rhs.570, label %land.end.574

land.rhs.570:                                     ; preds = %for.cond.566
  %339 = load i8*, i8** %p, align 8, !tbaa !1
  %340 = load i8, i8* %339, align 1, !tbaa !12
  %conv571 = sext i8 %340 to i32
  %cmp572 = icmp ne i32 %conv571, 61
  br label %land.end.574

land.end.574:                                     ; preds = %land.rhs.570, %for.cond.566
  %341 = phi i1 [ false, %for.cond.566 ], [ %cmp572, %land.rhs.570 ]
  br i1 %341, label %for.body.575, label %for.end.578

for.body.575:                                     ; preds = %land.end.574
  br label %for.inc.576

for.inc.576:                                      ; preds = %for.body.575
  %342 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr577 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %incdec.ptr577, i8** %p, align 8, !tbaa !1
  br label %for.cond.566

for.end.578:                                      ; preds = %land.end.574
  %343 = load i8*, i8** %p, align 8, !tbaa !1
  %344 = load i8, i8* %343, align 1, !tbaa !12
  %conv579 = sext i8 %344 to i32
  %cmp580 = icmp eq i32 %conv579, 0
  br i1 %cmp580, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %for.end.578
  br label %badline

if.end.583:                                       ; preds = %for.end.578
  %345 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %345, align 1, !tbaa !12
  %346 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds i8, i8* %346, i64 1
  %call585 = call i8* @newstr(i8* %arrayidx584)
  %347 = load i32, i32* @NumPriorities, align 4, !tbaa !5
  %idxprom586 = sext i32 %347 to i64
  %arrayidx587 = getelementptr inbounds [25 x %struct.priority], [25 x %struct.priority]* @Priorities, i32 0, i64 %idxprom586
  %pri_name = getelementptr inbounds %struct.priority, %struct.priority* %arrayidx587, i32 0, i32 0
  store i8* %call585, i8** %pri_name, align 8, !tbaa !20
  %348 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr588 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %incdec.ptr588, i8** %p, align 8, !tbaa !1
  %call589 = call i32 @atoi(i8* %incdec.ptr588) #9
  %349 = load i32, i32* @NumPriorities, align 4, !tbaa !5
  %idxprom590 = sext i32 %349 to i64
  %arrayidx591 = getelementptr inbounds [25 x %struct.priority], [25 x %struct.priority]* @Priorities, i32 0, i64 %idxprom590
  %pri_val = getelementptr inbounds %struct.priority, %struct.priority* %arrayidx591, i32 0, i32 1
  store i32 %call589, i32* %pri_val, align 4, !tbaa !22
  %350 = load i32, i32* @NumPriorities, align 4, !tbaa !5
  %inc592 = add nsw i32 %350, 1
  store i32 %inc592, i32* @NumPriorities, align 4, !tbaa !5
  br label %sw.epilog.693

sw.bb.593:                                        ; preds = %if.end.57
  %351 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds i8, i8* %351, i64 1
  call void @makequeue(i8* %arrayidx594, i32 1)
  br label %sw.epilog.693

sw.bb.595:                                        ; preds = %if.end.57
  %352 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx596 = getelementptr inbounds i8, i8* %352, i64 1
  store i8* %arrayidx596, i8** %p, align 8, !tbaa !1
  br label %for.cond.597

for.cond.597:                                     ; preds = %for.inc.612, %sw.bb.595
  %353 = load i8*, i8** %p, align 8, !tbaa !1
  %354 = load i8, i8* %353, align 1, !tbaa !12
  %conv598 = sext i8 %354 to i32
  %and599 = and i32 %conv598, -128
  %cmp600 = icmp eq i32 %and599, 0
  br i1 %cmp600, label %land.rhs.602, label %land.end.610

land.rhs.602:                                     ; preds = %for.cond.597
  %355 = load i8*, i8** %p, align 8, !tbaa !1
  %356 = load i8, i8* %355, align 1, !tbaa !12
  %conv603 = sext i8 %356 to i32
  %idxprom604 = sext i32 %conv603 to i64
  %call605 = call i16** @__ctype_b_loc() #8
  %357 = load i16*, i16** %call605, align 8, !tbaa !1
  %arrayidx606 = getelementptr inbounds i16, i16* %357, i64 %idxprom604
  %358 = load i16, i16* %arrayidx606, align 2, !tbaa !18
  %conv607 = zext i16 %358 to i32
  %and608 = and i32 %conv607, 8192
  %tobool609 = icmp ne i32 %and608, 0
  br label %land.end.610

land.end.610:                                     ; preds = %land.rhs.602, %for.cond.597
  %359 = phi i1 [ false, %for.cond.597 ], [ %tobool609, %land.rhs.602 ]
  br i1 %359, label %for.body.611, label %for.end.614

for.body.611:                                     ; preds = %land.end.610
  br label %for.inc.612

for.inc.612:                                      ; preds = %for.body.611
  %360 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr613 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %incdec.ptr613, i8** %p, align 8, !tbaa !1
  br label %for.cond.597

for.end.614:                                      ; preds = %land.end.610
  %361 = load i8*, i8** %p, align 8, !tbaa !1
  %362 = load i8, i8* %361, align 1, !tbaa !12
  %conv615 = sext i8 %362 to i32
  %and616 = and i32 %conv615, -128
  %cmp617 = icmp eq i32 %and616, 0
  br i1 %cmp617, label %lor.lhs.false.619, label %if.then.627

lor.lhs.false.619:                                ; preds = %for.end.614
  %363 = load i8*, i8** %p, align 8, !tbaa !1
  %364 = load i8, i8* %363, align 1, !tbaa !12
  %conv620 = sext i8 %364 to i32
  %idxprom621 = sext i32 %conv620 to i64
  %call622 = call i16** @__ctype_b_loc() #8
  %365 = load i16*, i16** %call622, align 8, !tbaa !1
  %arrayidx623 = getelementptr inbounds i16, i16* %365, i64 %idxprom621
  %366 = load i16, i16* %arrayidx623, align 2, !tbaa !18
  %conv624 = zext i16 %366 to i32
  %and625 = and i32 %conv624, 2048
  %tobool626 = icmp ne i32 %and625, 0
  br i1 %tobool626, label %if.end.629, label %if.then.627

if.then.627:                                      ; preds = %lor.lhs.false.619, %for.end.614
  %367 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx628 = getelementptr inbounds i8, i8* %367, i64 1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0), i8* %arrayidx628)
  br label %sw.epilog.693

if.end.629:                                       ; preds = %lor.lhs.false.619
  %368 = load i8*, i8** %p, align 8, !tbaa !1
  %call630 = call i64 @strtol(i8* %368, i8** %ep, i32 10) #1
  %conv631 = trunc i64 %call630 to i32
  store i32 %conv631, i32* @ConfigLevel, align 4, !tbaa !5
  %369 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp632 = icmp sge i32 %369, 5
  br i1 %cmp632, label %if.then.634, label %if.end.646

if.then.634:                                      ; preds = %if.end.629
  %370 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call635 = call i8* @macvalue(i32 119, %struct.envelope* %370)
  store i8* %call635, i8** %p, align 8, !tbaa !1
  %371 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp636 = icmp ne i8* %371, null
  br i1 %cmp636, label %land.lhs.true.638, label %if.end.645

land.lhs.true.638:                                ; preds = %if.then.634
  %372 = load i8*, i8** %p, align 8, !tbaa !1
  %call639 = call i8* @strchr(i8* %372, i32 46) #1
  store i8* %call639, i8** %p, align 8, !tbaa !1
  %cmp640 = icmp ne i8* %call639, null
  br i1 %cmp640, label %if.then.642, label %if.end.645

if.then.642:                                      ; preds = %land.lhs.true.638
  %373 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %373, align 1, !tbaa !12
  %374 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro643 = getelementptr inbounds %struct.envelope, %struct.envelope* %374, i32 0, i32 46
  %375 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call644 = call i8* @macvalue(i32 119, %struct.envelope* %375)
  %376 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro643, i32 1, i32 119, i8* %call644, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 717, i32 %376)
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.642, %land.lhs.true.638, %if.then.634
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.end.629
  %377 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp647 = icmp sge i32 %377, 6
  br i1 %cmp647, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %if.end.646
  store i32 0, i32* @ColonOkInAddr, align 4, !tbaa !5
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.649, %if.end.646
  %378 = load i8*, i8** %ep, align 8, !tbaa !1
  %incdec.ptr651 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %incdec.ptr651, i8** %ep, align 8, !tbaa !1
  %379 = load i8, i8* %378, align 1, !tbaa !12
  %conv652 = sext i8 %379 to i32
  %cmp653 = icmp eq i32 %conv652, 47
  br i1 %cmp653, label %if.then.655, label %if.end.677

if.then.655:                                      ; preds = %if.end.650
  %380 = load i8*, i8** %ep, align 8, !tbaa !1
  store i8* %380, i8** %p, align 8, !tbaa !1
  br label %for.cond.656

for.cond.656:                                     ; preds = %for.body.670, %if.then.655
  %381 = load i8*, i8** %p, align 8, !tbaa !1
  %382 = load i8, i8* %381, align 1, !tbaa !12
  %conv657 = sext i8 %382 to i32
  %and658 = and i32 %conv657, -128
  %cmp659 = icmp eq i32 %and658, 0
  br i1 %cmp659, label %land.rhs.661, label %land.end.669

land.rhs.661:                                     ; preds = %for.cond.656
  %383 = load i8*, i8** %p, align 8, !tbaa !1
  %384 = load i8, i8* %383, align 1, !tbaa !12
  %conv662 = sext i8 %384 to i32
  %idxprom663 = sext i32 %conv662 to i64
  %call664 = call i16** @__ctype_b_loc() #8
  %385 = load i16*, i16** %call664, align 8, !tbaa !1
  %arrayidx665 = getelementptr inbounds i16, i16* %385, i64 %idxprom663
  %386 = load i16, i16* %arrayidx665, align 2, !tbaa !18
  %conv666 = zext i16 %386 to i32
  %and667 = and i32 %conv666, 1024
  %tobool668 = icmp ne i32 %and667, 0
  br label %land.end.669

land.end.669:                                     ; preds = %land.rhs.661, %for.cond.656
  %387 = phi i1 [ false, %for.cond.656 ], [ %tobool668, %land.rhs.661 ]
  br i1 %387, label %for.body.670, label %for.end.672

for.body.670:                                     ; preds = %land.end.669
  %388 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr671 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %incdec.ptr671, i8** %p, align 8, !tbaa !1
  br label %for.cond.656

for.end.672:                                      ; preds = %land.end.669
  %389 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %389, align 1, !tbaa !12
  %390 = load i8*, i8** %ep, align 8, !tbaa !1
  %call673 = call i32 @setvendor(i8* %390)
  %tobool674 = icmp ne i32 %call673, 0
  br i1 %tobool674, label %if.end.676, label %if.then.675

if.then.675:                                      ; preds = %for.end.672
  %391 = load i8*, i8** %ep, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i8* %391)
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.675, %for.end.672
  br label %if.end.677

if.end.677:                                       ; preds = %if.end.676, %if.end.650
  br label %sw.epilog.693

sw.bb.678:                                        ; preds = %if.end.57
  %392 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx679 = getelementptr inbounds i8, i8* %392, i64 1
  %arraydecay680 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %393 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %arrayidx679, i8* %arraydecay680, i64 2048, %struct.envelope* %393)
  %arraydecay681 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %call682 = call %struct._map* @makemapentry(i8* %arraydecay681)
  br label %sw.epilog.693

sw.bb.683:                                        ; preds = %if.end.57
  %394 = load i8*, i8** %bp, align 8, !tbaa !1
  %call684 = call i8* @strchr(i8* %394, i32 61) #1
  store i8* %call684, i8** %p, align 8, !tbaa !1
  %395 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp685 = icmp ne i8* %395, null
  br i1 %cmp685, label %if.then.687, label %if.end.689

if.then.687:                                      ; preds = %sw.bb.683
  %396 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr688 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %incdec.ptr688, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %396, align 1, !tbaa !12
  br label %if.end.689

if.end.689:                                       ; preds = %if.then.687, %sw.bb.683
  %397 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx690 = getelementptr inbounds i8, i8* %397, i64 1
  %398 = load i8*, i8** %p, align 8, !tbaa !1
  call void @sm_setuserenv(i8* %arrayidx690, i8* %398)
  br label %sw.epilog.693

sw.bb.691:                                        ; preds = %if.end.57
  %399 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx692 = getelementptr inbounds i8, i8* %399, i64 1
  call void @milter_setup(i8* %arrayidx692)
  br label %sw.epilog.693

sw.default:                                       ; preds = %if.end.57
  br label %badline

badline:                                          ; preds = %sw.default, %if.then.582
  %400 = load i8*, i8** %bp, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i8* %400)
  br label %sw.epilog.693

sw.epilog.693:                                    ; preds = %badline, %sw.bb.691, %if.end.689, %sw.bb.678, %if.end.677, %if.then.627, %sw.bb.593, %if.end.583, %if.then.563, %sw.bb.556, %sw.bb.554, %if.end.553, %if.then.520, %if.then.374, %while.end.368, %if.then.307, %sw.bb.294, %if.end.292, %if.then.291, %if.end.285, %if.then.252, %if.end.244, %if.then.76, %if.then.64, %sw.bb
  %401 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay694 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %cmp695 = icmp ne i8* %401, %arraydecay694
  br i1 %cmp695, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %sw.epilog.693
  %402 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %402, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 768)
  br label %if.end.698

if.end.698:                                       ; preds = %if.then.697, %sw.epilog.693
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.698, %if.end.47
  %403 = bitcast i8** %nbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %403) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.699:                                    ; preds = %while.cond
  %404 = load %struct.sm_file*, %struct.sm_file** %cf, align 8, !tbaa !1
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %404, i32 0, i32 4
  %405 = load i64, i64* %f_flags, align 8, !tbaa !23
  %and700 = and i64 %405, 256
  %cmp701 = icmp ne i64 %and700, 0
  br i1 %cmp701, label %if.then.703, label %if.end.704

if.then.703:                                      ; preds = %while.end.699
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0))
  call void @finis(i32 0, i32 1, i32 72)
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.703, %while.end.699
  %406 = load %struct.sm_file*, %struct.sm_file** %cf, align 8, !tbaa !1
  %call705 = call i32 @sm_io_close(%struct.sm_file* %406, i32 -2)
  store i8* null, i8** @FileName, align 8, !tbaa !1
  call void @inithostmaps()
  call void @initdaemon()
  %407 = bitcast i32* %nmaps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %407) #1
  %408 = bitcast [12 x i8*]* %maptype to i8*
  call void @llvm.lifetime.start(i64 96, i8* %408) #1
  %409 = bitcast [5 x i16]* %mapreturn to i8*
  call void @llvm.lifetime.start(i64 10, i8* %409) #1
  %arraydecay709 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i32 0
  %arraydecay710 = getelementptr inbounds [5 x i16], [5 x i16]* %mapreturn, i32 0, i32 0
  %call711 = call i32 @switch_map_find(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8** %arraydecay709, i16* %arraydecay710)
  store i32 %call711, i32* %nmaps, align 4, !tbaa !5
  store i32 0, i32* @UseNameServer, align 4, !tbaa !5
  %410 = load i32, i32* %nmaps, align 4, !tbaa !5
  %cmp712 = icmp sgt i32 %410, 0
  br i1 %cmp712, label %land.lhs.true.714, label %if.end.793

land.lhs.true.714:                                ; preds = %if.end.704
  %411 = load i32, i32* %nmaps, align 4, !tbaa !5
  %cmp715 = icmp sle i32 %411, 12
  br i1 %cmp715, label %if.then.717, label %if.end.793

if.then.717:                                      ; preds = %land.lhs.true.714
  %412 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %412) #1
  store i32 0, i32* %mapno, align 4, !tbaa !5
  br label %for.cond.719

for.cond.719:                                     ; preds = %for.inc.790, %if.then.717
  %413 = load i32, i32* %mapno, align 4, !tbaa !5
  %414 = load i32, i32* %nmaps, align 4, !tbaa !5
  %cmp720 = icmp slt i32 %413, %414
  br i1 %cmp720, label %land.rhs.722, label %land.end.725

land.rhs.722:                                     ; preds = %for.cond.719
  %415 = load i32, i32* @UseNameServer, align 4, !tbaa !5
  %tobool723 = icmp ne i32 %415, 0
  %lnot724 = xor i1 %tobool723, true
  br label %land.end.725

land.end.725:                                     ; preds = %land.rhs.722, %for.cond.719
  %416 = phi i1 [ false, %for.cond.719 ], [ %lnot724, %land.rhs.722 ]
  br i1 %416, label %for.body.726, label %for.end.792

for.body.726:                                     ; preds = %land.end.725
  %417 = bitcast i64* %__s1_len728 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %417) #1
  %418 = bitcast i64* %__s2_len730 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %418) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.42 to i64)), i64 1), label %land.lhs.true.732, label %cond.false.780

land.lhs.true.732:                                ; preds = %for.body.726
  store i64 3, i64* %__s2_len730, align 8, !tbaa !7
  %419 = load i64, i64* %__s2_len730, align 8, !tbaa !7
  %cmp733 = icmp ult i64 %419, 4
  br i1 %cmp733, label %cond.true.735, label %cond.false.780

cond.true.735:                                    ; preds = %land.lhs.true.732
  %420 = bitcast i8** %__s1737 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %420) #1
  %421 = load i32, i32* %mapno, align 4, !tbaa !5
  %idxprom738 = sext i32 %421 to i64
  %arrayidx739 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom738
  %422 = load i8*, i8** %arrayidx739, align 8, !tbaa !1
  store i8* %422, i8** %__s1737, align 8, !tbaa !1
  %423 = bitcast i32* %__result741 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  %424 = load i8*, i8** %__s1737, align 8, !tbaa !1
  %arrayidx742 = getelementptr inbounds i8, i8* %424, i64 0
  %425 = load i8, i8* %arrayidx742, align 1, !tbaa !12
  %conv743 = zext i8 %425 to i32
  %426 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), align 1, !tbaa !12
  %conv744 = zext i8 %426 to i32
  %sub745 = sub nsw i32 %conv743, %conv744
  store i32 %sub745, i32* %__result741, align 4, !tbaa !5
  %427 = load i64, i64* %__s2_len730, align 8, !tbaa !7
  %cmp746 = icmp ugt i64 %427, 0
  br i1 %cmp746, label %land.lhs.true.748, label %if.end.778

land.lhs.true.748:                                ; preds = %cond.true.735
  %428 = load i32, i32* %__result741, align 4, !tbaa !5
  %cmp749 = icmp eq i32 %428, 0
  br i1 %cmp749, label %if.then.751, label %if.end.778

if.then.751:                                      ; preds = %land.lhs.true.748
  %429 = load i8*, i8** %__s1737, align 8, !tbaa !1
  %arrayidx752 = getelementptr inbounds i8, i8* %429, i64 1
  %430 = load i8, i8* %arrayidx752, align 1, !tbaa !12
  %conv753 = zext i8 %430 to i32
  %431 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i64 1), align 1, !tbaa !12
  %conv754 = zext i8 %431 to i32
  %sub755 = sub nsw i32 %conv753, %conv754
  store i32 %sub755, i32* %__result741, align 4, !tbaa !5
  %432 = load i64, i64* %__s2_len730, align 8, !tbaa !7
  %cmp756 = icmp ugt i64 %432, 1
  br i1 %cmp756, label %land.lhs.true.758, label %if.end.777

land.lhs.true.758:                                ; preds = %if.then.751
  %433 = load i32, i32* %__result741, align 4, !tbaa !5
  %cmp759 = icmp eq i32 %433, 0
  br i1 %cmp759, label %if.then.761, label %if.end.777

if.then.761:                                      ; preds = %land.lhs.true.758
  %434 = load i8*, i8** %__s1737, align 8, !tbaa !1
  %arrayidx762 = getelementptr inbounds i8, i8* %434, i64 2
  %435 = load i8, i8* %arrayidx762, align 1, !tbaa !12
  %conv763 = zext i8 %435 to i32
  %436 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i64 2), align 1, !tbaa !12
  %conv764 = zext i8 %436 to i32
  %sub765 = sub nsw i32 %conv763, %conv764
  store i32 %sub765, i32* %__result741, align 4, !tbaa !5
  %437 = load i64, i64* %__s2_len730, align 8, !tbaa !7
  %cmp766 = icmp ugt i64 %437, 2
  br i1 %cmp766, label %land.lhs.true.768, label %if.end.776

land.lhs.true.768:                                ; preds = %if.then.761
  %438 = load i32, i32* %__result741, align 4, !tbaa !5
  %cmp769 = icmp eq i32 %438, 0
  br i1 %cmp769, label %if.then.771, label %if.end.776

if.then.771:                                      ; preds = %land.lhs.true.768
  %439 = load i8*, i8** %__s1737, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds i8, i8* %439, i64 3
  %440 = load i8, i8* %arrayidx772, align 1, !tbaa !12
  %conv773 = zext i8 %440 to i32
  %441 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i64 3), align 1, !tbaa !12
  %conv774 = zext i8 %441 to i32
  %sub775 = sub nsw i32 %conv773, %conv774
  store i32 %sub775, i32* %__result741, align 4, !tbaa !5
  br label %if.end.776

if.end.776:                                       ; preds = %if.then.771, %land.lhs.true.768, %if.then.761
  br label %if.end.777

if.end.777:                                       ; preds = %if.end.776, %land.lhs.true.758, %if.then.751
  br label %if.end.778

if.end.778:                                       ; preds = %if.end.777, %land.lhs.true.748, %cond.true.735
  %442 = load i32, i32* %__result741, align 4, !tbaa !5
  store i32 %442, i32* %tmp779, !tbaa !5
  %443 = bitcast i32* %__result741 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #1
  %444 = bitcast i8** %__s1737 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = load i32, i32* %tmp779, !tbaa !5
  br label %cond.end.784

cond.false.780:                                   ; preds = %land.lhs.true.732, %for.body.726
  %446 = load i32, i32* %mapno, align 4, !tbaa !5
  %idxprom781 = sext i32 %446 to i64
  %arrayidx782 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom781
  %447 = load i8*, i8** %arrayidx782, align 8, !tbaa !1
  %call783 = call i32 @strcmp(i8* %447, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)) #1
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.false.780, %if.end.778
  %cond785 = phi i32 [ %445, %if.end.778 ], [ %call783, %cond.false.780 ]
  store i32 %cond785, i32* %tmp731, !tbaa !5
  %448 = bitcast i64* %__s2_len730 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %448) #1
  %449 = bitcast i64* %__s1_len728 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %449) #1
  %450 = load i32, i32* %tmp731, !tbaa !5
  %cmp786 = icmp eq i32 %450, 0
  br i1 %cmp786, label %if.then.788, label %if.end.789

if.then.788:                                      ; preds = %cond.end.784
  store i32 1, i32* @UseNameServer, align 4, !tbaa !5
  br label %if.end.789

if.end.789:                                       ; preds = %if.then.788, %cond.end.784
  br label %for.inc.790

for.inc.790:                                      ; preds = %if.end.789
  %451 = load i32, i32* %mapno, align 4, !tbaa !5
  %inc791 = add nsw i32 %451, 1
  store i32 %inc791, i32* %mapno, align 4, !tbaa !5
  br label %for.cond.719

for.end.792:                                      ; preds = %land.end.725
  %452 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  br label %if.end.793

if.end.793:                                       ; preds = %for.end.792, %land.lhs.true.714, %if.end.704
  %453 = bitcast [5 x i16]* %mapreturn to i8*
  call void @llvm.lifetime.end(i64 10, i8* %453) #1
  %454 = bitcast [12 x i8*]* %maptype to i8*
  call void @llvm.lifetime.end(i64 96, i8* %454) #1
  %455 = bitcast i32* %nmaps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #1
  %456 = bitcast [3048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 3048, i8* %456) #1
  %457 = bitcast [2048 x i8]* %exbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %457) #1
  %458 = bitcast i32* %bufsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %458) #1
  %459 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %459) #1
  %460 = bitcast %struct.stat* %statb to i8*
  call void @llvm.lifetime.end(i64 144, i8* %460) #1
  %461 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %461) #1
  %462 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %462) #1
  %463 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %463) #1
  %464 = bitcast i32* %ismap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %464) #1
  %465 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %465) #1
  %466 = bitcast i32* %optional to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
  %467 = bitcast i8** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %467) #1
  %468 = bitcast i32* %nfuzzy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %469) #1
  %470 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #1
  %471 = bitcast %struct.rewrite** %rwp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %471) #1
  %472 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %472) #1
  %473 = bitcast i32* %ruleset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast %struct.sm_file** %cf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.sm_file* @safefopen(i8*, i32, i32, i64) #2

declare void @syserr(i8*, ...) #2

declare void @finis(i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat(i32 %__fd, %struct.stat* nonnull %__statbuf) #3 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !5
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !5
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* %1) #1
  ret i32 %call
}

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare i8* @fgetfolded(i8*, i32*, %struct.sm_file*) #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @translate_dollars(i8* %ibp, i8* %obp, i32* %bsp) #0 {
entry:
  %ibp.addr = alloca i8*, align 8
  %obp.addr = alloca i8*, align 8
  %bsp.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %ep = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %ibp, i8** %ibp.addr, align 8, !tbaa !1
  store i8* %obp, i8** %obp.addr, align 8, !tbaa !1
  store i32* %bsp, i32** %bsp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 53
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %5 = load i8*, i8** %ibp.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call, i8* %5)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** %ibp.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %obp.addr, align 8, !tbaa !1
  %8 = load i32*, i32** %bsp.addr, align 8, !tbaa !1
  %call2 = call i8* @quote_internal_chars(i8* %6, i8* %7, i32* %8)
  store i8* %call2, i8** %bp, align 8, !tbaa !1
  %9 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8* %9, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !12
  %conv3 = sext i8 %11 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !12
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 35
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.47

land.lhs.true.9:                                  ; preds = %for.body
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp10 = icmp ugt i8* %14, %15
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.47

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %16 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %16, 3
  br i1 %cmp13, label %if.then.15, label %if.end.47

if.then.15:                                       ; preds = %land.lhs.true.12
  %17 = bitcast i8** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv16 = sext i8 %19 to i32
  %and = and i32 %conv16, 255
  switch i32 %and, label %sw.default [
    i32 129, label %sw.bb
    i32 92, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.then.15
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.15
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %call19 = call i64 @strlen(i8* %23) #9
  %call20 = call i64 @sm_strlcpy(i8* %21, i8* %add.ptr, i64 %call19)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.default
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !12
  %conv21 = sext i8 %25 to i32
  %and22 = and i32 %conv21, -128
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %land.lhs.true.25, label %land.end

land.lhs.true.25:                                 ; preds = %while.cond
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %conv26 = sext i8 %27 to i32
  %idxprom = sext i32 %conv26 to i64
  %call27 = call i16** @__ctype_b_loc() #8
  %28 = load i16*, i16** %call27, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %28, i64 %idxprom
  %29 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv28 = zext i16 %29 to i32
  %and29 = and i32 %conv28, 8192
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %land.end

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !12
  %conv32 = sext i8 %31 to i32
  %cmp33 = icmp ne i32 %conv32, 10
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.31
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp35 = icmp ugt i8* %32, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.31, %land.lhs.true.25, %while.cond
  %34 = phi i1 [ false, %land.lhs.true.31 ], [ false, %land.lhs.true.25 ], [ false, %while.cond ], [ %cmp35, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr38, i8** %p, align 8, !tbaa !1
  %call39 = call i8* @strchr(i8* %incdec.ptr38, i32 10) #1
  store i8* %call39, i8** %e, align 8, !tbaa !1
  %cmp40 = icmp ne i8* %call39, null
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %while.end
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8*, i8** %e, align 8, !tbaa !1
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %call43 = call i64 @strlen(i8* %39) #9
  %call44 = call i64 @sm_strlcpy(i8* %37, i8* %38, i64 %call43)
  br label %if.end.46

if.else:                                          ; preds = %while.end
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %incdec.ptr45, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %40, align 1, !tbaa !12
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.42
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.46, %sw.bb.18, %sw.bb
  %41 = bitcast i8** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %for.inc

if.end.47:                                        ; preds = %land.lhs.true.12, %land.lhs.true.9, %for.body
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !12
  %conv48 = sext i8 %43 to i32
  %cmp49 = icmp ne i32 %conv48, 36
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx51, align 1, !tbaa !12
  %conv52 = sext i8 %45 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false, %if.end.47
  br label %for.inc

if.end.56:                                        ; preds = %lor.lhs.false
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx57, align 1, !tbaa !12
  %conv58 = sext i8 %47 to i32
  %cmp59 = icmp eq i32 %conv58, 36
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.end.56
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %call63 = call i64 @strlen(i8* %50) #9
  %call64 = call i64 @sm_strlcpy(i8* %48, i8* %add.ptr62, i64 %call63)
  br label %for.inc

if.end.65:                                        ; preds = %if.end.56
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr66 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr66, i8** %p, align 8, !tbaa !1
  store i8 -127, i8* %51, align 1, !tbaa !12
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !12
  %conv67 = sext i8 %53 to i32
  %cmp68 = icmp eq i32 %conv67, 61
  br i1 %cmp68, label %if.then.82, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.end.65
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !12
  %conv71 = sext i8 %55 to i32
  %cmp72 = icmp eq i32 %conv71, 126
  br i1 %cmp72, label %if.then.82, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.70
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !12
  %conv75 = sext i8 %57 to i32
  %cmp76 = icmp eq i32 %conv75, 38
  br i1 %cmp76, label %if.then.82, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.74
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !12
  %conv79 = sext i8 %59 to i32
  %cmp80 = icmp eq i32 %conv79, 63
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %lor.lhs.false.78, %lor.lhs.false.74, %lor.lhs.false.70, %if.end.65
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr83, i8** %p, align 8, !tbaa !1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %lor.lhs.false.78
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %call85 = call i32 @macid_parse(i8* %61, i8** %ep)
  %conv86 = trunc i32 %call85 to i8
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %conv86, i8* %62, align 1, !tbaa !12
  %63 = load i8*, i8** %ep, align 8, !tbaa !1
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr87 = getelementptr inbounds i8, i8* %64, i64 1
  %cmp88 = icmp ne i8* %63, %add.ptr87
  br i1 %cmp88, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %if.end.84
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr91 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8*, i8** %ep, align 8, !tbaa !1
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %67, i64 1
  %call93 = call i64 @strlen(i8* %add.ptr92) #9
  %call94 = call i64 @sm_strlcpy(i8* %add.ptr91, i8* %66, i64 %call93)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %if.end.84
  br label %for.inc

for.inc:                                          ; preds = %if.end.95, %if.then.61, %if.then.55, %sw.epilog
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr96 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr96, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.97

while.cond.97:                                    ; preds = %while.body.115, %for.end
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %incdec.ptr98, i8** %p, align 8, !tbaa !1
  %70 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp99 = icmp ugt i8* %incdec.ptr98, %70
  br i1 %cmp99, label %land.lhs.true.101, label %land.end.114

land.lhs.true.101:                                ; preds = %while.cond.97
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !12
  %conv102 = sext i8 %72 to i32
  %and103 = and i32 %conv102, -128
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %land.rhs.106, label %land.end.114

land.rhs.106:                                     ; preds = %land.lhs.true.101
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !12
  %conv107 = sext i8 %74 to i32
  %idxprom108 = sext i32 %conv107 to i64
  %call109 = call i16** @__ctype_b_loc() #8
  %75 = load i16*, i16** %call109, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i16, i16* %75, i64 %idxprom108
  %76 = load i16, i16* %arrayidx110, align 2, !tbaa !18
  %conv111 = zext i16 %76 to i32
  %and112 = and i32 %conv111, 8192
  %tobool113 = icmp ne i32 %and112, 0
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.106, %land.lhs.true.101, %while.cond.97
  %77 = phi i1 [ false, %land.lhs.true.101 ], [ false, %while.cond.97 ], [ %tobool113, %land.rhs.106 ]
  br i1 %77, label %while.body.115, label %while.end.116

while.body.115:                                   ; preds = %land.end.114
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %78, align 1, !tbaa !12
  br label %while.cond.97

while.end.116:                                    ; preds = %land.end.114
  %79 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv117 = zext i8 %79 to i32
  %cmp118 = icmp sge i32 %conv117, 53
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.124

land.lhs.true.120:                                ; preds = %while.end.116
  %80 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool121 = icmp ne i32 %80, 0
  br i1 %tobool121, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %land.lhs.true.120
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0))
  %call123 = call %struct.sm_file* @sm_debug_file()
  %81 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call123, i8* %81)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %land.lhs.true.120, %while.end.116
  %82 = load i8*, i8** %bp, align 8, !tbaa !1
  %83 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  ret i8* %82
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @xalloc_tagged(i32, i8*, i32) #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

declare i8** @prescan(i8*, i32, i8*, i32, i8**, i8*, i32) #2

declare i8** @copyplist(i8**, i32, %struct.SM_RPOOL_T*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @strtorwset(i8* %p, i8** %endp, i32 %stabmode) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  %stabmode.addr = alloca i32, align 4
  %ruleset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.symtab*, align 8
  %delim = alloca i8, align 1
  %q = alloca i8*, align 8
  %h = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  store i32 %stabmode, i32* %stabmode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ruleset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !12
  %conv2 = sext i8 %4 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #8
  %5 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv3 = zext i16 %6 to i32
  %and4 = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !12
  %conv5 = sext i8 %10 to i32
  %and6 = and i32 %conv5, -128
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.162, i32 0, i32 0), i8* %11)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end:                                           ; preds = %while.end
  %12 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !12
  %conv9 = sext i8 %13 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %call11 = call i16** @__ctype_b_loc() #8
  %14 = load i16*, i16** %call11, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %14, i64 %idxprom10
  %15 = load i16, i16* %arrayidx12, align 2, !tbaa !18
  %conv13 = zext i16 %15 to i32
  %and14 = and i32 %conv13, 2048
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %16 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %17 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %call17 = call i64 @strtol(i8* %16, i8** %17, i32 10) #1
  %conv18 = trunc i64 %call17 to i32
  store i32 %conv18, i32* %ruleset, align 4, !tbaa !5
  %18 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp19 = icmp sge i32 %18, 100
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %19 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %19, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.then.16
  %20 = load i32, i32* %ruleset, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.163, i32 0, i32 0), i32 %20, i32 100)
  store i32 -1, i32* %ruleset, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.lhs.false
  br label %if.end.225

if.else:                                          ; preds = %if.end
  %21 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  call void @llvm.lifetime.start(i64 1, i8* %delim) #1
  %22 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i8* null, i8** %q, align 8, !tbaa !1
  %23 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %23, i8** %q, align 8, !tbaa !1
  br label %while.cond.25

while.cond.25:                                    ; preds = %while.body.45, %if.else
  %24 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !12
  %conv26 = sext i8 %25 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %land.lhs.true, label %land.end.44

land.lhs.true:                                    ; preds = %while.cond.25
  %26 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %conv29 = sext i8 %27 to i32
  %and30 = and i32 %conv29, -128
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %land.rhs.33, label %land.end.44

land.rhs.33:                                      ; preds = %land.lhs.true
  %28 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !12
  %conv34 = sext i8 %29 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %call36 = call i16** @__ctype_b_loc() #8
  %30 = load i16*, i16** %call36, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i16, i16* %30, i64 %idxprom35
  %31 = load i16, i16* %arrayidx37, align 2, !tbaa !18
  %conv38 = zext i16 %31 to i32
  %and39 = and i32 %conv38, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.33
  %32 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !12
  %conv41 = sext i8 %33 to i32
  %cmp42 = icmp eq i32 %conv41, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.33
  %34 = phi i1 [ true, %land.rhs.33 ], [ %cmp42, %lor.rhs ]
  br label %land.end.44

land.end.44:                                      ; preds = %lor.end, %land.lhs.true, %while.cond.25
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.25 ], [ %34, %lor.end ]
  br i1 %35, label %while.body.45, label %while.end.47

while.body.45:                                    ; preds = %land.end.44
  %36 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr46, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.25

while.end.47:                                     ; preds = %land.end.44
  %37 = load i8*, i8** %q, align 8, !tbaa !1
  %38 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %cmp48 = icmp eq i8* %37, %38
  br i1 %cmp48, label %if.then.63, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %while.end.47
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !12
  %conv51 = sext i8 %40 to i32
  %and52 = and i32 %conv51, -128
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %land.lhs.true.55, label %if.then.63

land.lhs.true.55:                                 ; preds = %lor.lhs.false.50
  %41 = load i8*, i8** %q, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !12
  %conv56 = sext i8 %42 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %call58 = call i16** @__ctype_b_loc() #8
  %43 = load i16*, i16** %call58, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i16, i16* %43, i64 %idxprom57
  %44 = load i16, i16* %arrayidx59, align 2, !tbaa !18
  %conv60 = zext i16 %44 to i32
  %and61 = and i32 %conv60, 1024
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.55, %lor.lhs.false.50, %while.end.47
  %45 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.162, i32 0, i32 0), i8* %45)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %land.lhs.true.55
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.79, %if.end.64
  %46 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !12
  %conv66 = sext i8 %47 to i32
  %and67 = and i32 %conv66, -128
  %cmp68 = icmp eq i32 %and67, 0
  br i1 %cmp68, label %land.rhs.70, label %land.end.78

land.rhs.70:                                      ; preds = %while.cond.65
  %48 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !12
  %conv71 = sext i8 %49 to i32
  %idxprom72 = sext i32 %conv71 to i64
  %call73 = call i16** @__ctype_b_loc() #8
  %50 = load i16*, i16** %call73, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i16, i16* %50, i64 %idxprom72
  %51 = load i16, i16* %arrayidx74, align 2, !tbaa !18
  %conv75 = zext i16 %51 to i32
  %and76 = and i32 %conv75, 8192
  %tobool77 = icmp ne i32 %and76, 0
  br label %land.end.78

land.end.78:                                      ; preds = %land.rhs.70, %while.cond.65
  %52 = phi i1 [ false, %while.cond.65 ], [ %tobool77, %land.rhs.70 ]
  br i1 %52, label %while.body.79, label %while.end.81

while.body.79:                                    ; preds = %land.end.78
  %53 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr80, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %53, align 1, !tbaa !12
  br label %while.cond.65

while.end.81:                                     ; preds = %land.end.78
  %54 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !12
  store i8 %55, i8* %delim, align 1, !tbaa !12
  %56 = load i8, i8* %delim, align 1, !tbaa !12
  %conv82 = sext i8 %56 to i32
  %cmp83 = icmp ne i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %while.end.81
  %57 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %57, align 1, !tbaa !12
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %while.end.81
  %58 = load i8*, i8** %q, align 8, !tbaa !1
  %59 = load i32, i32* %stabmode.addr, align 4, !tbaa !5
  %call87 = call %struct.symtab* @stab(i8* %58, i32 10, i32 %59)
  store %struct.symtab* %call87, %struct.symtab** %s, align 8, !tbaa !1
  %60 = load i8, i8* %delim, align 1, !tbaa !12
  %conv88 = sext i8 %60 to i32
  %cmp89 = icmp ne i32 %conv88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.86
  %61 = load i8, i8* %delim, align 1, !tbaa !12
  %62 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 %61, i8* %62, align 1, !tbaa !12
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.86
  %63 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp93 = icmp eq %struct.symtab* %63, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.92
  %64 = load i32, i32* %stabmode.addr, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %64, 1
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.145

land.lhs.true.99:                                 ; preds = %if.end.96
  %65 = load i8, i8* %delim, align 1, !tbaa !12
  %conv100 = sext i8 %65 to i32
  %cmp101 = icmp eq i32 %conv100, 61
  br i1 %cmp101, label %if.then.103, label %if.else.145

if.then.103:                                      ; preds = %land.lhs.true.99
  br label %while.cond.104

while.cond.104:                                   ; preds = %while.body.119, %if.then.103
  %66 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr105, i8** %p.addr, align 8, !tbaa !1
  %67 = load i8, i8* %incdec.ptr105, align 1, !tbaa !12
  %conv106 = sext i8 %67 to i32
  %and107 = and i32 %conv106, -128
  %cmp108 = icmp eq i32 %and107, 0
  br i1 %cmp108, label %land.rhs.110, label %land.end.118

land.rhs.110:                                     ; preds = %while.cond.104
  %68 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !12
  %conv111 = sext i8 %69 to i32
  %idxprom112 = sext i32 %conv111 to i64
  %call113 = call i16** @__ctype_b_loc() #8
  %70 = load i16*, i16** %call113, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i16, i16* %70, i64 %idxprom112
  %71 = load i16, i16* %arrayidx114, align 2, !tbaa !18
  %conv115 = zext i16 %71 to i32
  %and116 = and i32 %conv115, 8192
  %tobool117 = icmp ne i32 %and116, 0
  br label %land.end.118

land.end.118:                                     ; preds = %land.rhs.110, %while.cond.104
  %72 = phi i1 [ false, %while.cond.104 ], [ %tobool117, %land.rhs.110 ]
  br i1 %72, label %while.body.119, label %while.end.120

while.body.119:                                   ; preds = %land.end.118
  br label %while.cond.104

while.end.120:                                    ; preds = %land.end.118
  %73 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !12
  %conv121 = sext i8 %74 to i32
  %and122 = and i32 %conv121, -128
  %cmp123 = icmp eq i32 %and122, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.then.133

land.lhs.true.125:                                ; preds = %while.end.120
  %75 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !12
  %conv126 = sext i8 %76 to i32
  %idxprom127 = sext i32 %conv126 to i64
  %call128 = call i16** @__ctype_b_loc() #8
  %77 = load i16*, i16** %call128, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i16, i16* %77, i64 %idxprom127
  %78 = load i16, i16* %arrayidx129, align 2, !tbaa !18
  %conv130 = zext i16 %78 to i32
  %and131 = and i32 %conv130, 2048
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.else.134, label %if.then.133

if.then.133:                                      ; preds = %land.lhs.true.125, %while.end.120
  %79 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.164, i32 0, i32 0), i8* %79)
  store i32 -1, i32* %ruleset, align 4, !tbaa !5
  br label %if.end.144

if.else.134:                                      ; preds = %land.lhs.true.125
  %80 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %81 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %call135 = call i64 @strtol(i8* %80, i8** %81, i32 10) #1
  %conv136 = trunc i64 %call135 to i32
  store i32 %conv136, i32* %ruleset, align 4, !tbaa !5
  %82 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp137 = icmp sge i32 %82, 100
  br i1 %cmp137, label %if.then.142, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.else.134
  %83 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %83, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %lor.lhs.false.139, %if.else.134
  %84 = load i32, i32* %ruleset, align 4, !tbaa !5
  %85 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.165, i32 0, i32 0), i32 %84, i8* %85, i32 100)
  store i32 -1, i32* %ruleset, align 4, !tbaa !5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %lor.lhs.false.139
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.133
  br label %if.end.161

if.else.145:                                      ; preds = %land.lhs.true.99, %if.end.96
  %86 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %cmp146 = icmp ne i8** %86, null
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.else.145
  %87 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %88 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  store i8* %87, i8** %88, align 8, !tbaa !1
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.else.145
  %89 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %89, i32 0, i32 3
  %sv_ruleset = bitcast %union.anon* %s_value to i32*
  %90 = load i32, i32* %sv_ruleset, align 4, !tbaa !5
  %cmp150 = icmp sge i32 %90, 0
  br i1 %cmp150, label %if.then.152, label %if.else.155

if.then.152:                                      ; preds = %if.end.149
  %91 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value153 = getelementptr inbounds %struct.symtab, %struct.symtab* %91, i32 0, i32 3
  %sv_ruleset154 = bitcast %union.anon* %s_value153 to i32*
  %92 = load i32, i32* %sv_ruleset154, align 4, !tbaa !5
  store i32 %92, i32* %ruleset, align 4, !tbaa !5
  br label %if.end.160

if.else.155:                                      ; preds = %if.end.149
  %93 = load i32, i32* @strtorwset.nextruleset, align 4, !tbaa !5
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* @strtorwset.nextruleset, align 4, !tbaa !5
  store i32 %dec, i32* %ruleset, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %dec, 100
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.else.155
  %94 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.166, i32 0, i32 0), i8* %94, i32 100)
  store i32 -1, i32* %ruleset, align 4, !tbaa !5
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.else.155
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.152
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.end.144
  %95 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value162 = getelementptr inbounds %struct.symtab, %struct.symtab* %95, i32 0, i32 3
  %sv_ruleset163 = bitcast %union.anon* %s_value162 to i32*
  %96 = load i32, i32* %sv_ruleset163, align 4, !tbaa !5
  %cmp164 = icmp sge i32 %96, 0
  br i1 %cmp164, label %land.lhs.true.166, label %if.else.179

land.lhs.true.166:                                ; preds = %if.end.161
  %97 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp167 = icmp sge i32 %97, 0
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.179

land.lhs.true.169:                                ; preds = %land.lhs.true.166
  %98 = load i32, i32* %ruleset, align 4, !tbaa !5
  %99 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value170 = getelementptr inbounds %struct.symtab, %struct.symtab* %99, i32 0, i32 3
  %sv_ruleset171 = bitcast %union.anon* %s_value170 to i32*
  %100 = load i32, i32* %sv_ruleset171, align 4, !tbaa !5
  %cmp172 = icmp ne i32 %98, %100
  br i1 %cmp172, label %if.then.174, label %if.else.179

if.then.174:                                      ; preds = %land.lhs.true.169
  %101 = load i8*, i8** %q, align 8, !tbaa !1
  %102 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value175 = getelementptr inbounds %struct.symtab, %struct.symtab* %102, i32 0, i32 3
  %sv_ruleset176 = bitcast %union.anon* %s_value175 to i32*
  %103 = load i32, i32* %sv_ruleset176, align 4, !tbaa !5
  %104 = load i32, i32* %ruleset, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i32 0, i32 0), i8* %101, i32 %103, i32 %104)
  %105 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value177 = getelementptr inbounds %struct.symtab, %struct.symtab* %105, i32 0, i32 3
  %sv_ruleset178 = bitcast %union.anon* %s_value177 to i32*
  %106 = load i32, i32* %sv_ruleset178, align 4, !tbaa !5
  store i32 %106, i32* %ruleset, align 4, !tbaa !5
  br label %if.end.186

if.else.179:                                      ; preds = %land.lhs.true.169, %land.lhs.true.166, %if.end.161
  %107 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp180 = icmp sge i32 %107, 0
  br i1 %cmp180, label %if.then.182, label %if.end.185

if.then.182:                                      ; preds = %if.else.179
  %108 = load i32, i32* %ruleset, align 4, !tbaa !5
  %109 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value183 = getelementptr inbounds %struct.symtab, %struct.symtab* %109, i32 0, i32 3
  %sv_ruleset184 = bitcast %union.anon* %s_value183 to i32*
  store i32 %108, i32* %sv_ruleset184, align 4, !tbaa !5
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.182, %if.else.179
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.174
  %110 = load i32, i32* %stabmode.addr, align 4, !tbaa !5
  %cmp187 = icmp eq i32 %110, 1
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.222

land.lhs.true.189:                                ; preds = %if.end.186
  %111 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp190 = icmp sge i32 %111, 0
  br i1 %cmp190, label %if.then.192, label %if.end.222

if.then.192:                                      ; preds = %land.lhs.true.189
  %112 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  store i8* null, i8** %h, align 8, !tbaa !1
  %113 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom193 = sext i32 %113 to i64
  %arrayidx194 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom193
  %114 = load i8*, i8** %arrayidx194, align 8, !tbaa !1
  %cmp195 = icmp ne i8* %114, null
  br i1 %cmp195, label %if.then.197, label %if.end.200

if.then.197:                                      ; preds = %if.then.192
  %115 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom198 = sext i32 %115 to i64
  %arrayidx199 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom198
  %116 = load i8*, i8** %arrayidx199, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 4806)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.197, %if.then.192
  %117 = load i8, i8* %delim, align 1, !tbaa !12
  %conv201 = sext i8 %117 to i32
  %cmp202 = icmp ne i32 %conv201, 0
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.210

land.lhs.true.204:                                ; preds = %if.end.200
  %118 = load i8*, i8** %q, align 8, !tbaa !1
  %119 = load i8, i8* %delim, align 1, !tbaa !12
  %conv205 = sext i8 %119 to i32
  %call206 = call i8* @strchr(i8* %118, i32 %conv205) #1
  store i8* %call206, i8** %h, align 8, !tbaa !1
  %cmp207 = icmp ne i8* %call206, null
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %land.lhs.true.204
  %120 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 0, i8* %120, align 1, !tbaa !12
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %land.lhs.true.204, %if.end.200
  %121 = load i8*, i8** %q, align 8, !tbaa !1
  %call211 = call i8* @newstr(i8* %121)
  %122 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom212 = sext i32 %122 to i64
  %arrayidx213 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom212
  store i8* %call211, i8** %arrayidx213, align 8, !tbaa !1
  %123 = load i8, i8* %delim, align 1, !tbaa !12
  %conv214 = sext i8 %123 to i32
  %cmp215 = icmp eq i32 %conv214, 47
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.221

land.lhs.true.217:                                ; preds = %if.end.210
  %124 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp218 = icmp ne i8* %124, null
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %land.lhs.true.217
  %125 = load i8, i8* %delim, align 1, !tbaa !12
  %126 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 %125, i8* %126, align 1, !tbaa !12
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %land.lhs.true.217, %if.end.210
  %127 = bitcast i8** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %land.lhs.true.189, %if.end.186
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.222, %if.then.95, %if.then.63
  %128 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  call void @llvm.lifetime.end(i64 1, i8* %delim) #1
  %129 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.226 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.225

if.end.225:                                       ; preds = %cleanup.cont, %if.end.24
  %130 = load i32, i32* %ruleset, align 4, !tbaa !5
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

cleanup.226:                                      ; preds = %if.end.225, %cleanup, %if.then
  %131 = bitcast i32* %ruleset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132
}

declare void @sm_dprintf(i8*, ...) #2

declare i32 @macid_parse(i8*, i8**) #2

; Function Attrs: nounwind uwtable
define i8* @munchstring(i8* %p, i8** %delimptr, i32 %delim) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %delimptr.addr = alloca i8**, align 8
  %delim.addr = alloca i32, align 4
  %q = alloca i8*, align 8
  %backslash = alloca i32, align 4
  %quotemode = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8** %delimptr, i8*** %delimptr.addr, align 8, !tbaa !1
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !5
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %backslash, align 4, !tbaa !5
  %2 = bitcast i32* %quotemode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %quotemode, align 4, !tbaa !5
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @munchstring.buf, i32 0, i32 0), i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !12
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %5, getelementptr inbounds ([2048 x i8], [2048 x i8]* @munchstring.buf, i32 0, i64 2047)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %backslash, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %backslash, align 4, !tbaa !5
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !12
  %conv4 = sext i8 %9 to i32
  switch i32 %conv4, label %sw.epilog [
    i32 114, label %sw.bb
    i32 110, label %sw.bb.5
    i32 102, label %sw.bb.7
    i32 98, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 13, i8* %10, align 1, !tbaa !12
  br label %for.inc

sw.bb.5:                                          ; preds = %if.then
  %11 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %11, align 1, !tbaa !12
  br label %for.inc

sw.bb.7:                                          ; preds = %if.then
  %12 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %q, align 8, !tbaa !1
  store i8 12, i8* %12, align 1, !tbaa !12
  br label %for.inc

sw.bb.9:                                          ; preds = %if.then
  %13 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr10, i8** %q, align 8, !tbaa !1
  store i8 8, i8* %13, align 1, !tbaa !12
  br label %for.inc

sw.epilog:                                        ; preds = %if.then
  %14 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !12
  %16 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr11, i8** %q, align 8, !tbaa !1
  store i8 %15, i8* %16, align 1, !tbaa !12
  br label %if.end.32

if.else:                                          ; preds = %for.body
  %17 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !12
  %conv12 = sext i8 %18 to i32
  %cmp13 = icmp eq i32 %conv12, 92
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  store i32 1, i32* %backslash, align 4, !tbaa !5
  br label %if.end.31

if.else.16:                                       ; preds = %if.else
  %19 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !12
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 34
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.16
  %21 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quotemode, align 4, !tbaa !5
  br label %if.end.30

if.else.22:                                       ; preds = %if.else.16
  %22 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.22
  %23 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !12
  %conv24 = sext i8 %24 to i32
  %25 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp25 = icmp ne i32 %conv24, %25
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %lor.lhs.false, %if.else.22
  %26 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr28, i8** %q, align 8, !tbaa !1
  store i8 %27, i8* %28, align 1, !tbaa !12
  br label %if.end

if.else.29:                                       ; preds = %lor.lhs.false
  br label %for.end

if.end:                                           ; preds = %if.then.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.15
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  %29 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr33, i8** %p.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.else.29, %land.end
  %30 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %cmp34 = icmp ne i8** %30, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.end
  %31 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %32 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  store i8* %31, i8** %32, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %for.end
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr38, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %33, align 1, !tbaa !12
  %34 = bitcast i32* %quotemode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @munchstring.buf, i32 0, i32 0)
}

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i64 @chompheader(i8*, i32, %struct.header**, %struct.envelope*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define void @setclass(i32 %class, i8* %str) #0 {
entry:
  %class.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %s = alloca %struct.symtab*, align 8
  %mid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %class, i32* %class.addr, align 4, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 255
  %cmp = icmp eq i32 %and, 147
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i32 @macid_parse(i8* %5, i8** null)
  store i32 %call, i32* %mid, align 4, !tbaa !5
  %6 = load i32, i32* %mid, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp sge i32 %conv5, 8
  br i1 %cmp6, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %class.addr, align 4, !tbaa !5
  %call9 = call i8* @macname(i32 %9)
  %10 = load i32, i32* %mid, align 4, !tbaa !5
  %call10 = call i8* @macname(i32 %10)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.155, i32 0, i32 0), i8* %call9, i8* %call10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  %11 = load i32, i32* %mid, align 4, !tbaa !5
  %12 = load i32, i32* %class.addr, align 4, !tbaa !5
  call void @copy_class(i32 %11, i32 %12)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.4
  %13 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.else:                                          ; preds = %entry
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp sge i32 %conv12, 8
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %if.else
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %16 = load i32, i32* %class.addr, align 4, !tbaa !5
  %call18 = call i8* @macname(i32 %16)
  %17 = load i8*, i8** %str.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0), i8* %call18, i8* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true.15, %if.else
  %18 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call20 = call %struct.symtab* @stab(i8* %18, i32 1, i32 1)
  store %struct.symtab* %call20, %struct.symtab** %s, align 8, !tbaa !1
  %19 = load i32, i32* %class.addr, align 4, !tbaa !5
  %and21 = and i32 %19, 255
  %conv22 = trunc i32 %and21 to i8
  %conv23 = zext i8 %conv22 to i64
  %rem = urem i64 %conv23, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %20 = load i32, i32* %class.addr, align 4, !tbaa !5
  %and24 = and i32 %20, 255
  %conv25 = trunc i32 %and24 to i8
  %conv26 = zext i8 %conv25 to i64
  %div = udiv i64 %conv26, 32
  %and27 = and i64 %div, 7
  %21 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %21, i32 0, i32 3
  %sv_class = bitcast %union.anon* %s_value to [8 x i32]*
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %sv_class, i32 0, i64 %and27
  %22 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %or = or i32 %22, %shl
  store i32 %or, i32* %arrayidx28, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.19, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.29, %cleanup
  %23 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %cleanup.dest.31 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.31, label %unreachable [
    i32 0, label %cleanup.cont.32
    i32 1, label %cleanup.cont.32
  ]

cleanup.cont.32:                                  ; preds = %cleanup.30, %cleanup.30
  ret void

unreachable:                                      ; preds = %cleanup.30
  unreachable
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @extrquotstr(i8* %p, i8** %delimptr, i8* %delimbuf, i32* %st) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %delimptr.addr = alloca i8**, align 8
  %delimbuf.addr = alloca i8*, align 8
  %st.addr = alloca i32*, align 8
  %q = alloca i8*, align 8
  %backslash = alloca i32, align 4
  %quotemode = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8** %delimptr, i8*** %delimptr.addr, align 8, !tbaa !1
  store i8* %delimbuf, i8** %delimbuf.addr, align 8, !tbaa !1
  store i32* %st, i32** %st.addr, align 8, !tbaa !1
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %backslash, align 4, !tbaa !5
  %2 = bitcast i32* %quotemode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %quotemode, align 4, !tbaa !5
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @extrquotstr.buf, i32 0, i32 0), i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !12
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %5, getelementptr inbounds ([2048 x i8], [2048 x i8]* @extrquotstr.buf, i32 0, i64 2047)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %backslash, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  store i32 0, i32* %backslash, align 4, !tbaa !5
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !12
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %10 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 92, i8* %10, align 1, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !12
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.8
  store i32 1, i32* %backslash, align 4, !tbaa !5
  br label %if.end.28

if.else:                                          ; preds = %if.end.8
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !12
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 34
  br i1 %cmp14, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %15 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool17, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quotemode, align 4, !tbaa !5
  br label %if.end.27

if.else.18:                                       ; preds = %if.else
  %16 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %17 = load i8*, i8** %delimbuf.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %conv20 = sext i8 %19 to i32
  %call = call i8* @strchr(i8* %17, i32 %conv20) #1
  %cmp21 = icmp eq i8* %call, null
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %lor.lhs.false, %if.else.18
  %20 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !12
  %22 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr24, i8** %q, align 8, !tbaa !1
  store i8 %21, i8* %22, align 1, !tbaa !12
  br label %if.end.26

if.else.25:                                       ; preds = %lor.lhs.false
  br label %for.end

if.end.26:                                        ; preds = %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.16
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %23 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr29, i8** %p.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.else.25, %land.end
  %24 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %cmp30 = icmp ne i8** %24, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  %25 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %26 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  store i8* %25, i8** %26, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.end
  %27 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %27, align 1, !tbaa !12
  %28 = load i32*, i32** %st.addr, align 8, !tbaa !1
  %cmp35 = icmp ne i32* %28, null
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.33
  %29 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %29, 0
  br i1 %tobool38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.37
  %30 = load i32, i32* %backslash, align 4, !tbaa !5
  %tobool39 = icmp ne i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.37
  %31 = phi i1 [ true, %if.then.37 ], [ %tobool39, %lor.rhs ]
  %lnot40 = xor i1 %31, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %32 = load i32*, i32** %st.addr, align 8, !tbaa !1
  store i32 %lnot.ext41, i32* %32, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %lor.end, %if.end.33
  %33 = bitcast i32* %quotemode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @extrquotstr.buf, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal void @fileclass(i32 %class, i8* %filename, i8* %fmt, i32 %ismap, i32 %safe, i32 %optional) #0 {
entry:
  %class.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %ismap.addr = alloca i32, align 4
  %safe.addr = alloca i32, align 4
  %optional.addr = alloca i32, align 4
  %f = alloca %struct.sm_file*, align 8
  %sff = alloca i64, align 8
  %pid = alloca i32, align 4
  %p = alloca i8*, align 8
  %buf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  %key = alloca i8*, align 8
  %mn = alloca i8*, align 8
  %cl = alloca i8*, align 8
  %spec = alloca i8*, align 8
  %mapclass = alloca %struct.symtab*, align 8
  %map = alloca %struct._map, align 8
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %argv = alloca [257 x i8*], align 16
  %wordbuf = alloca [2049 x i8], align 16
  store i32 %class, i32* %class.addr, align 4, !tbaa !5
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  store i32 %ismap, i32* %ismap.addr, align 4, !tbaa !5
  store i32 %safe, i32* %safe.addr, align 4, !tbaa !5
  store i32 %optional, i32* %optional.addr, align 4, !tbaa !5
  %0 = bitcast %struct.sm_file** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.189, i32 0, i32 0), i8* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !12
  %conv2 = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.190, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %ismap.addr, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else.82

if.then.7:                                        ; preds = %if.else
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  %13 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %mn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %cl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i8** %spec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.symtab** %mapclass to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct._map* %map to i8*
  call void @llvm.lifetime.start(i64 256, i8* %18) #1
  %19 = load i32, i32* %class.addr, align 4, !tbaa !5
  %call = call i8* @macname(i32 %19)
  %call8 = call i8* @newstr(i8* %call)
  store i8* %call8, i8** %mn, align 8, !tbaa !1
  %20 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  store i8* %20, i8** %key, align 8, !tbaa !1
  %21 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call9 = call i8* @strchr(i8* %21, i32 64) #1
  store i8* %call9, i8** %p, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.191, i32 0, i32 0))
  %22 = load i8*, i8** %mn, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1031)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.7
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %23, align 1, !tbaa !12
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %24, i8** %cl, align 8, !tbaa !1
  %25 = load i8*, i8** %cl, align 8, !tbaa !1
  %call14 = call i8* @strchr(i8* %25, i32 58) #1
  store i8* %call14, i8** %spec, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %26 = load i8*, i8** %mn, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.192, i32 0, i32 0), i8* %26)
  %27 = load i8*, i8** %mn, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1085)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %28 = load i8*, i8** %spec, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr19, i8** %spec, align 8, !tbaa !1
  store i8 0, i8* %28, align 1, !tbaa !12
  %29 = load i8*, i8** %cl, align 8, !tbaa !1
  %call20 = call %struct.symtab* @stab(i8* %29, i32 5, i32 0)
  store %struct.symtab* %call20, %struct.symtab** %mapclass, align 8, !tbaa !1
  %30 = load %struct.symtab*, %struct.symtab** %mapclass, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.symtab* %30, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %31 = load i8*, i8** %mn, align 8, !tbaa !1
  %32 = load i8*, i8** %cl, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.193, i32 0, i32 0), i8* %31, i8* %32)
  %33 = load i8*, i8** %mn, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1097)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.18
  %34 = bitcast %struct._map* %map to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 256, i32 8, i1 false)
  %35 = load %struct.symtab*, %struct.symtab** %mapclass, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %35, i32 0, i32 3
  %sv_mapclass = bitcast %union.anon* %s_value to %struct._mapclass*
  %map_class = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 0
  store %struct._mapclass* %sv_mapclass, %struct._mapclass** %map_class, align 8, !tbaa !26
  %36 = load i8*, i8** %mn, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 2
  store i8* %36, i8** %map_mname, align 8, !tbaa !28
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 3
  %37 = load i64, i64* %map_mflags, align 8, !tbaa !29
  %or = or i64 %37, 4194304
  store i64 %or, i64* %map_mflags, align 8, !tbaa !29
  %38 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv25 = zext i8 %38 to i32
  %cmp26 = icmp sge i32 %conv25, 5
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %if.end.24
  %39 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %39, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  %40 = load i8*, i8** %mn, align 8, !tbaa !1
  %41 = load i8*, i8** %cl, align 8, !tbaa !1
  %42 = load i8*, i8** %key, align 8, !tbaa !1
  %43 = load i8*, i8** %spec, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.194, i32 0, i32 0), i8* %40, i8* %41, i8* %42, i8* %43)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.28, %if.end.24
  %map_class32 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 0
  %44 = load %struct._mapclass*, %struct._mapclass** %map_class32, align 8, !tbaa !26
  %map_parse = getelementptr inbounds %struct._mapclass, %struct._mapclass* %44, i32 0, i32 3
  %45 = load i32 (%struct._map*, i8*)*, i32 (%struct._map*, i8*)** %map_parse, align 8, !tbaa !30
  %46 = load i8*, i8** %spec, align 8, !tbaa !1
  %call33 = call i32 %45(%struct._map* %map, i8* %46)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.31
  %47 = load i8*, i8** %mn, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1114)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.31
  %map_mflags37 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 3
  %48 = load i64, i64* %map_mflags37, align 8, !tbaa !29
  %or38 = or i64 %48, 1
  store i64 %or38, i64* %map_mflags37, align 8, !tbaa !29
  %map_class39 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 0
  %49 = load %struct._mapclass*, %struct._mapclass** %map_class39, align 8, !tbaa !26
  %map_open = getelementptr inbounds %struct._mapclass, %struct._mapclass* %49, i32 0, i32 6
  %50 = load i32 (%struct._map*, i32)*, i32 (%struct._map*, i32)** %map_open, align 8, !tbaa !32
  %call40 = call i32 %50(%struct._map* %map, i32 0)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.end.36
  %map_mflags43 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 3
  %51 = load i64, i64* %map_mflags43, align 8, !tbaa !29
  %or44 = or i64 %51, 32
  store i64 %or44, i64* %map_mflags43, align 8, !tbaa !29
  %call45 = call i32 @getpid() #1
  %map_pid = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 20
  store i32 %call45, i32* %map_pid, align 4, !tbaa !33
  br label %if.end.54

if.else.46:                                       ; preds = %if.end.36
  %52 = load i32, i32* %optional.addr, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %52, 0
  br i1 %tobool47, label %if.end.53, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %if.else.46
  %map_mflags49 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 3
  %53 = load i64, i64* %map_mflags49, align 8, !tbaa !29
  %and = and i64 %53, 4
  %cmp50 = icmp ne i64 %and, 0
  br i1 %cmp50, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.48
  %54 = load i8*, i8** %mn, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.195, i32 0, i32 0), i8* %54)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true.48, %if.else.46
  %55 = load i8*, i8** %mn, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1131)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.then.42
  %map_class55 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 0
  %56 = load %struct._mapclass*, %struct._mapclass** %map_class55, align 8, !tbaa !26
  %map_lookup = getelementptr inbounds %struct._mapclass, %struct._mapclass* %56, i32 0, i32 4
  %57 = load i8* (%struct._map*, i8*, i8**, i32*)*, i8* (%struct._map*, i8*, i8**, i32*)** %map_lookup, align 8, !tbaa !34
  %58 = load i8*, i8** %key, align 8, !tbaa !1
  %call56 = call i8* %57(%struct._map* %map, i8* %58, i8** null, i32* %status)
  store i8* %call56, i8** %p, align 8, !tbaa !1
  %59 = load i32, i32* %status, align 4, !tbaa !5
  %cmp57 = icmp ne i32 %59, 0
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.66

land.lhs.true.59:                                 ; preds = %if.end.54
  %60 = load i32, i32* %status, align 4, !tbaa !5
  %cmp60 = icmp ne i32 %60, 68
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %land.lhs.true.59
  %61 = load i32, i32* %optional.addr, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %61, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.then.62
  %62 = load i8*, i8** %mn, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.196, i32 0, i32 0), i8* %62)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.then.62
  store i8* null, i8** %p, align 8, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true.59, %if.end.54
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp67 = icmp ne i8* %63, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  %64 = load i32, i32* %class.addr, align 4, !tbaa !5
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  call void @parse_class_words(i32 %64, i8* %65)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.66
  %map_mflags71 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 3
  %66 = load i64, i64* %map_mflags71, align 8, !tbaa !29
  %or72 = or i64 %66, 16777216
  store i64 %or72, i64* %map_mflags71, align 8, !tbaa !29
  %map_class73 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 0
  %67 = load %struct._mapclass*, %struct._mapclass** %map_class73, align 8, !tbaa !26
  %map_close = getelementptr inbounds %struct._mapclass, %struct._mapclass* %67, i32 0, i32 7
  %68 = load void (%struct._map*)*, void (%struct._map*)** %map_close, align 8, !tbaa !35
  call void %68(%struct._map* %map)
  %map_mflags74 = getelementptr inbounds %struct._map, %struct._map* %map, i32 0, i32 3
  %69 = load i64, i64* %map_mflags74, align 8, !tbaa !29
  %and75 = and i64 %69, -16777313
  store i64 %and75, i64* %map_mflags74, align 8, !tbaa !29
  %70 = load i8*, i8** %mn, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1153)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.70, %if.end.53, %if.then.35, %if.then.23, %if.then.17, %if.then.12
  %71 = bitcast %struct._map* %map to i8*
  call void @llvm.lifetime.end(i64 256, i8* %71) #1
  %72 = bitcast %struct.symtab** %mapclass to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %spec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %cl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i8** %mn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %cleanup.165

if.else.82:                                       ; preds = %if.else
  %78 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv83 = sext i8 %79 to i32
  %cmp84 = icmp eq i32 %conv83, 124
  br i1 %cmp84, label %if.then.86, label %if.else.104

if.then.86:                                       ; preds = %if.else.82
  %80 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast [257 x i8*]* %argv to i8*
  call void @llvm.lifetime.start(i64 2056, i8* %82) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %83 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %83, i64 1
  %call88 = call i8* @strtok(i8* %arrayidx87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i32 0, i32 0)) #1
  store i8* %call88, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.86
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp89 = icmp ne i8* %84, null
  br i1 %cmp89, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %85, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %86 = phi i1 [ false, %for.cond ], [ %cmp91, %land.rhs ]
  br i1 %86, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %88 to i64
  %arrayidx93 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom
  store i8* %87, i8** %arrayidx93, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call94 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i32 0, i32 0)) #1
  store i8* %call94, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %89 to i64
  %arrayidx96 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom95
  store i8* null, i8** %arrayidx96, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i32 0
  %90 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call97 = call i32 @prog_open(i8** %arraydecay, i32* %fd, %struct.envelope* %90)
  store i32 %call97, i32* %pid, align 4, !tbaa !5
  %91 = load i32, i32* %pid, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %91, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %for.end
  store %struct.sm_file* null, %struct.sm_file** %f, align 8, !tbaa !1
  br label %if.end.103

if.else.101:                                      ; preds = %for.end
  %92 = bitcast i32* %fd to i8*
  %call102 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %92, i32 2, i8* null)
  store %struct.sm_file* %call102, %struct.sm_file** %f, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.100
  %93 = bitcast [257 x i8*]* %argv to i8*
  call void @llvm.lifetime.end(i64 2056, i8* %93) #1
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  br label %if.end.130

if.else.104:                                      ; preds = %if.else.82
  store i32 -1, i32* %pid, align 4, !tbaa !5
  store i64 128, i64* %sff, align 8, !tbaa !7
  %96 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and105 = and i32 %96, 8388608
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %if.else.104
  %97 = load i64, i64* %sff, align 8, !tbaa !7
  %or108 = or i64 %97, 256
  store i64 %or108, i64* %sff, align 8, !tbaa !7
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.else.104
  %98 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and110 = and i32 %98, 1024
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.end.114, label %if.then.112

if.then.112:                                      ; preds = %if.end.109
  %99 = load i64, i64* %sff, align 8, !tbaa !7
  %or113 = or i64 %99, 1024
  store i64 %or113, i64* %sff, align 8, !tbaa !7
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.109
  %100 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool115 = icmp ne i32 %100, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.end.114
  %101 = load i64, i64* %sff, align 8, !tbaa !7
  %or117 = or i64 %101, 8192
  store i64 %or117, i64* %sff, align 8, !tbaa !7
  br label %if.end.124

if.else.118:                                      ; preds = %if.end.114
  %102 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %102, 0
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.else.118
  %103 = load i64, i64* %sff, align 8, !tbaa !7
  %or122 = or i64 %103, 4
  store i64 %or122, i64* %sff, align 8, !tbaa !7
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.else.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.116
  %104 = load i32, i32* @DontLockReadFiles, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %104, 0
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.124
  %105 = load i64, i64* %sff, align 8, !tbaa !7
  %or127 = or i64 %105, 16384
  store i64 %or127, i64* %sff, align 8, !tbaa !7
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.124
  %106 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %107 = load i64, i64* %sff, align 8, !tbaa !7
  %call129 = call %struct.sm_file* @safefopen(i8* %106, i32 0, i32 0, i64 %107)
  store %struct.sm_file* %call129, %struct.sm_file** %f, align 8, !tbaa !1
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.128, %if.end.103
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131
  %108 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %cmp133 = icmp eq %struct.sm_file* %108, null
  br i1 %cmp133, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.132
  %109 = load i32, i32* %optional.addr, align 4, !tbaa !5
  %tobool136 = icmp ne i32 %109, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %if.then.135
  %110 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.198, i32 0, i32 0), i8* %110)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

if.end.139:                                       ; preds = %if.end.132
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup.158, %if.end.139
  %111 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %arraydecay140 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call141 = call i32 @sm_io_fgets(%struct.sm_file* %111, i32 -2, i8* %arraydecay140, i32 2048)
  %cmp142 = icmp sge i32 %call141, 0
  br i1 %cmp142, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %112 = bitcast [2049 x i8]* %wordbuf to i8*
  call void @llvm.lifetime.start(i64 2049, i8* %112) #1
  %arrayidx144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %113 = load i8, i8* %arrayidx144, align 1, !tbaa !12
  %conv145 = sext i8 %113 to i32
  %cmp146 = icmp eq i32 %conv145, 35
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %while.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.158

if.end.149:                                       ; preds = %while.body
  %arraydecay150 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %114 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay151 = getelementptr inbounds [2049 x i8], [2049 x i8]* %wordbuf, i32 0, i32 0
  %call152 = call i32 (i8*, i8*, ...) @sm_io_sscanf(i8* %arraydecay150, i8* %114, i8* %arraydecay151)
  %cmp153 = icmp ne i32 %call152, 1
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.149
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.158

if.end.156:                                       ; preds = %if.end.149
  %arraydecay157 = getelementptr inbounds [2049 x i8], [2049 x i8]* %wordbuf, i32 0, i32 0
  store i8* %arraydecay157, i8** %p, align 8, !tbaa !1
  %115 = load i32, i32* %class.addr, align 4, !tbaa !5
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  call void @parse_class_words(i32 %115, i8* %116)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.158

cleanup.158:                                      ; preds = %if.end.156, %if.then.155, %if.then.148
  %117 = bitcast [2049 x i8]* %wordbuf to i8*
  call void @llvm.lifetime.end(i64 2049, i8* %117) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup.158
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %118 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %call159 = call i32 @sm_io_close(%struct.sm_file* %118, i32 -2)
  %119 = load i32, i32* %pid, align 4, !tbaa !5
  %cmp160 = icmp sgt i32 %119, 0
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %while.end
  %120 = load i32, i32* %pid, align 4, !tbaa !5
  %call163 = call i32 @waitfor(i32 %120)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.162, %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.165

cleanup.165:                                      ; preds = %if.end.164, %if.end.138, %cleanup, %if.then.5
  %121 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %121) #1
  %122 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.sm_file** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %cleanup.dest.170 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.170, label %unreachable [
    i32 0, label %cleanup.cont.171
    i32 1, label %cleanup.cont.171
  ]

cleanup.cont.171:                                 ; preds = %cleanup.165, %cleanup.165
  ret void

unreachable:                                      ; preds = %cleanup.165, %cleanup.158
  unreachable
}

; Function Attrs: nounwind uwtable
define void @makemailer(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %m = alloca %struct.mailer*, align 8
  %s = alloca %struct.symtab*, align 8
  %i = alloca i32, align 4
  %fcode = alloca i8, align 1
  %endp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %delimptr = alloca i8*, align 8
  %q = alloca i8*, align 8
  %pw = alloca %struct.passwd*, align 8
  %q378 = alloca i8*, align 8
  %q441 = alloca i8*, align 8
  %gr = alloca %struct.group*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp588 = alloca i32, align 4
  %__s1_len597 = alloca i64, align 8
  %__s2_len599 = alloca i64, align 8
  %tmp600 = alloca i32, align 4
  %__s1606 = alloca i8*, align 8
  %__result609 = alloca i32, align 4
  %tmp647 = alloca i32, align 4
  %__s1_len677 = alloca i64, align 8
  %__s2_len679 = alloca i64, align 8
  %tmp680 = alloca i32, align 4
  %__s1686 = alloca i8*, align 8
  %__result690 = alloca i32, align 4
  %tmp728 = alloca i32, align 4
  %__s1_len739 = alloca i64, align 8
  %__s2_len741 = alloca i64, align 8
  %tmp742 = alloca i32, align 4
  %__s1748 = alloca i8*, align 8
  %__result752 = alloca i32, align 4
  %tmp790 = alloca i32, align 4
  %__s1_len826 = alloca i64, align 8
  %__s2_len828 = alloca i64, align 8
  %tmp829 = alloca i32, align 4
  %__s1835 = alloca i8*, align 8
  %__result839 = alloca i32, align 4
  %tmp877 = alloca i32, align 4
  %__s1_len894 = alloca i64, align 8
  %__s2_len896 = alloca i64, align 8
  %tmp897 = alloca i32, align 4
  %__s1903 = alloca i8*, align 8
  %__result906 = alloca i32, align 4
  %tmp944 = alloca i32, align 4
  %__s1_len982 = alloca i64, align 8
  %__s2_len984 = alloca i64, align 8
  %tmp985 = alloca i32, align 4
  %__s1991 = alloca i8*, align 8
  %__result995 = alloca i32, align 4
  %tmp1033 = alloca i32, align 4
  %pp = alloca i8**, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %fcode) #1
  %4 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %call = call i8* @xalloc_tagged(i32 168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1394)
  %5 = bitcast i8* %call to %struct.mailer*
  store %struct.mailer* %5, %struct.mailer** %m, align 8, !tbaa !1
  %6 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %7 = bitcast %struct.mailer* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 168, i32 1, i1 false)
  %call1 = call i32* @__errno_location() #8
  store i32 0, i32* %call1, align 4, !tbaa !5
  %8 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %8, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !12
  %conv = sext i8 %10 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end.14

land.lhs.true:                                    ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !12
  %conv3 = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv3, 44
  br i1 %cmp4, label %land.rhs, label %land.end.14

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !12
  %conv6 = sext i8 %14 to i32
  %and = and i32 %conv6, -128
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %land.rhs
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !12
  %conv10 = sext i8 %16 to i32
  %idxprom = sext i32 %conv10 to i64
  %call11 = call i16** @__ctype_b_loc() #8
  %17 = load i16*, i16** %call11, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv12 = zext i16 %18 to i32
  %and13 = and i32 %conv12, 8192
  %tobool = icmp ne i32 %and13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %land.rhs
  %19 = phi i1 [ false, %land.rhs ], [ %tobool, %land.rhs.9 ]
  %lnot = xor i1 %19, true
  br label %land.end.14

land.end.14:                                      ; preds = %land.end, %land.lhs.true, %for.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end.14
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !12
  %conv15 = sext i8 %23 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %24, align 1, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %25 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx19, align 1, !tbaa !12
  %conv20 = sext i8 %26 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.24:                                        ; preds = %if.end
  %27 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call25 = call i8* @newstr(i8* %27)
  %28 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %28, i32 0, i32 0
  store i8* %call25, i8** %m_name, align 8, !tbaa !36
  %29 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_qgrp = getelementptr inbounds %struct.mailer, %struct.mailer* %29, i32 0, i32 24
  store i16 -1, i16* %m_qgrp, align 2, !tbaa !38
  %30 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_uid = getelementptr inbounds %struct.mailer, %struct.mailer* %30, i32 0, i32 19
  store i32 -1, i32* %m_uid, align 4, !tbaa !39
  %31 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_gid = getelementptr inbounds %struct.mailer, %struct.mailer* %31, i32 0, i32 20
  store i32 -1, i32* %m_gid, align 4, !tbaa !40
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.503, %if.end.24
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !12
  %conv26 = sext i8 %33 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %while.body, label %while.end.504

while.body:                                       ; preds = %while.cond
  %34 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.51, %while.body
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !12
  %conv30 = sext i8 %36 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %land.rhs.33, label %land.end.50

land.rhs.33:                                      ; preds = %while.cond.29
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !12
  %conv34 = sext i8 %38 to i32
  %cmp35 = icmp eq i32 %conv34, 44
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.33
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !12
  %conv37 = sext i8 %40 to i32
  %and38 = and i32 %conv37, -128
  %cmp39 = icmp eq i32 %and38, 0
  br i1 %cmp39, label %land.rhs.41, label %land.end.49

land.rhs.41:                                      ; preds = %lor.rhs
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !12
  %conv42 = sext i8 %42 to i32
  %idxprom43 = sext i32 %conv42 to i64
  %call44 = call i16** @__ctype_b_loc() #8
  %43 = load i16*, i16** %call44, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %43, i64 %idxprom43
  %44 = load i16, i16* %arrayidx45, align 2, !tbaa !18
  %conv46 = zext i16 %44 to i32
  %and47 = and i32 %conv46, 8192
  %tobool48 = icmp ne i32 %and47, 0
  br label %land.end.49

land.end.49:                                      ; preds = %land.rhs.41, %lor.rhs
  %45 = phi i1 [ false, %lor.rhs ], [ %tobool48, %land.rhs.41 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.49, %land.rhs.33
  %46 = phi i1 [ true, %land.rhs.33 ], [ %45, %land.end.49 ]
  br label %land.end.50

land.end.50:                                      ; preds = %lor.end, %while.cond.29
  %47 = phi i1 [ false, %while.cond.29 ], [ %46, %lor.end ]
  br i1 %47, label %while.body.51, label %while.end

while.body.51:                                    ; preds = %land.end.50
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8, !tbaa !1
  br label %while.cond.29

while.end:                                        ; preds = %land.end.50
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !12
  store i8 %50, i8* %fcode, align 1, !tbaa !12
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.66, %while.end
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !12
  %conv54 = sext i8 %52 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %land.end.65

land.lhs.true.57:                                 ; preds = %while.cond.53
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !12
  %conv58 = sext i8 %54 to i32
  %cmp59 = icmp ne i32 %conv58, 61
  br i1 %cmp59, label %land.rhs.61, label %land.end.65

land.rhs.61:                                      ; preds = %land.lhs.true.57
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !12
  %conv62 = sext i8 %56 to i32
  %cmp63 = icmp ne i32 %conv62, 44
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.61, %land.lhs.true.57, %while.cond.53
  %57 = phi i1 [ false, %land.lhs.true.57 ], [ false, %while.cond.53 ], [ %cmp63, %land.rhs.61 ]
  br i1 %57, label %while.body.66, label %while.end.68

while.body.66:                                    ; preds = %land.end.65
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr67, i8** %p, align 8, !tbaa !1
  br label %while.cond.53

while.end.68:                                     ; preds = %land.end.65
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !12
  %conv70 = sext i8 %60 to i32
  %cmp71 = icmp ne i32 %conv70, 61
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %while.end.68
  %61 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name74 = getelementptr inbounds %struct.mailer, %struct.mailer* %61, i32 0, i32 0
  %62 = load i8*, i8** %m_name74, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i8* %62)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.501

if.end.75:                                        ; preds = %while.end.68
  br label %while.cond.76

while.cond.76:                                    ; preds = %while.body.90, %if.end.75
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !12
  %conv77 = sext i8 %64 to i32
  %and78 = and i32 %conv77, -128
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %land.rhs.81, label %land.end.89

land.rhs.81:                                      ; preds = %while.cond.76
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !12
  %conv82 = sext i8 %66 to i32
  %idxprom83 = sext i32 %conv82 to i64
  %call84 = call i16** @__ctype_b_loc() #8
  %67 = load i16*, i16** %call84, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i16, i16* %67, i64 %idxprom83
  %68 = load i16, i16* %arrayidx85, align 2, !tbaa !18
  %conv86 = zext i16 %68 to i32
  %and87 = and i32 %conv86, 8192
  %tobool88 = icmp ne i32 %and87, 0
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.81, %while.cond.76
  %69 = phi i1 [ false, %while.cond.76 ], [ %tobool88, %land.rhs.81 ]
  br i1 %69, label %while.body.90, label %while.end.92

while.body.90:                                    ; preds = %land.end.89
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr91 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr91, i8** %p, align 8, !tbaa !1
  br label %while.cond.76

while.end.92:                                     ; preds = %land.end.89
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %call93 = call i8* @munchstring(i8* %71, i8** %delimptr, i32 44)
  store i8* %call93, i8** %p, align 8, !tbaa !1
  %72 = load i8, i8* %fcode, align 1, !tbaa !12
  %conv94 = sext i8 %72 to i32
  switch i32 %conv94, label %sw.default [
    i32 80, label %sw.bb
    i32 70, label %sw.bb.101
    i32 83, label %sw.bb.141
    i32 82, label %sw.bb.141
    i32 69, label %sw.bb.175
    i32 65, label %sw.bb.184
    i32 77, label %sw.bb.191
    i32 109, label %sw.bb.193
    i32 114, label %sw.bb.195
    i32 76, label %sw.bb.197
    i32 78, label %sw.bb.205
    i32 68, label %sw.bb.208
    i32 67, label %sw.bb.217
    i32 81, label %sw.bb.226
    i32 84, label %sw.bb.241
    i32 85, label %sw.bb.298
    i32 87, label %sw.bb.488
    i32 47, label %sw.bb.490
  ]

sw.bb:                                            ; preds = %while.end.92
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !12
  %conv95 = sext i8 %74 to i32
  %cmp96 = icmp ne i32 %conv95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %sw.bb
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %call99 = call i8* @newstr(i8* %75)
  %76 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer = getelementptr inbounds %struct.mailer, %struct.mailer* %76, i32 0, i32 1
  store i8* %call99, i8** %m_mailer, align 8, !tbaa !41
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %sw.bb
  br label %sw.epilog

sw.bb.101:                                        ; preds = %while.end.92
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.138, %sw.bb.101
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !12
  %conv103 = sext i8 %78 to i32
  %cmp104 = icmp ne i32 %conv103, 0
  br i1 %cmp104, label %for.body.106, label %for.end.140

for.body.106:                                     ; preds = %for.cond.102
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !12
  %conv107 = sext i8 %80 to i32
  %and108 = and i32 %conv107, -128
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %land.lhs.true.111, label %if.then.119

land.lhs.true.111:                                ; preds = %for.body.106
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !12
  %conv112 = sext i8 %82 to i32
  %idxprom113 = sext i32 %conv112 to i64
  %call114 = call i16** @__ctype_b_loc() #8
  %83 = load i16*, i16** %call114, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i16, i16* %83, i64 %idxprom113
  %84 = load i16, i16* %arrayidx115, align 2, !tbaa !18
  %conv116 = zext i16 %84 to i32
  %and117 = and i32 %conv116, 8192
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.end.137, label %if.then.119

if.then.119:                                      ; preds = %land.lhs.true.111, %for.body.106
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !12
  %conv120 = sext i8 %86 to i32
  %cmp121 = icmp eq i32 %conv120, 73
  br i1 %cmp121, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %if.then.119
  %87 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name124 = getelementptr inbounds %struct.mailer, %struct.mailer* %87, i32 0, i32 0
  %88 = load i8*, i8** %m_name124, align 8, !tbaa !36
  %89 = load i8*, i8** %p, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !12
  %conv125 = sext i8 %90 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i32 0, i32 0), i8* %88, i32 %conv125)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %if.then.119
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !12
  %conv127 = sext i8 %92 to i32
  %and128 = and i32 %conv127, 255
  %conv129 = trunc i32 %and128 to i8
  %conv130 = zext i8 %conv129 to i64
  %rem = urem i64 %conv130, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %94 = load i8, i8* %93, align 1, !tbaa !12
  %conv131 = sext i8 %94 to i32
  %and132 = and i32 %conv131, 255
  %conv133 = trunc i32 %and132 to i8
  %conv134 = zext i8 %conv133 to i64
  %div = udiv i64 %conv134, 32
  %and135 = and i64 %div, 7
  %95 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %95, i32 0, i32 5
  %arrayidx136 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 %and135
  %96 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %or = or i32 %96, %shl
  store i32 %or, i32* %arrayidx136, align 4, !tbaa !5
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.126, %land.lhs.true.111
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %97 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr139 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr139, i8** %p, align 8, !tbaa !1
  br label %for.cond.102

for.end.140:                                      ; preds = %for.cond.102
  br label %sw.epilog

sw.bb.141:                                        ; preds = %while.end.92, %while.end.92
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %call142 = call i32 @strtorwset(i8* %98, i8** %endp, i32 1)
  store i32 %call142, i32* %i, align 4, !tbaa !5
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %cmp143 = icmp slt i32 %99, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %sw.bb.141
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.501

if.end.146:                                       ; preds = %sw.bb.141
  %100 = load i8, i8* %fcode, align 1, !tbaa !12
  %conv147 = sext i8 %100 to i32
  %cmp148 = icmp eq i32 %conv147, 83
  br i1 %cmp148, label %if.then.150, label %if.else

if.then.150:                                      ; preds = %if.end.146
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %conv151 = trunc i32 %101 to i16
  %102 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_se_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %102, i32 0, i32 10
  store i16 %conv151, i16* %m_se_rwset, align 2, !tbaa !42
  %103 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_sh_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %103, i32 0, i32 9
  store i16 %conv151, i16* %m_sh_rwset, align 2, !tbaa !43
  br label %if.end.153

if.else:                                          ; preds = %if.end.146
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %conv152 = trunc i32 %104 to i16
  %105 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_re_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %105, i32 0, i32 12
  store i16 %conv152, i16* %m_re_rwset, align 2, !tbaa !44
  %106 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_rh_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %106, i32 0, i32 11
  store i16 %conv152, i16* %m_rh_rwset, align 2, !tbaa !45
  br label %if.end.153

if.end.153:                                       ; preds = %if.else, %if.then.150
  %107 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8* %107, i8** %p, align 8, !tbaa !1
  %108 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr154, i8** %p, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !12
  %conv155 = sext i8 %109 to i32
  %cmp156 = icmp eq i32 %conv155, 47
  br i1 %cmp156, label %if.then.158, label %if.end.174

if.then.158:                                      ; preds = %if.end.153
  %110 = load i8*, i8** %p, align 8, !tbaa !1
  %call159 = call i32 @strtorwset(i8* %110, i8** null, i32 1)
  store i32 %call159, i32* %i, align 4, !tbaa !5
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %111, 0
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.then.158
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.501

if.end.163:                                       ; preds = %if.then.158
  %112 = load i8, i8* %fcode, align 1, !tbaa !12
  %conv164 = sext i8 %112 to i32
  %cmp165 = icmp eq i32 %conv164, 83
  br i1 %cmp165, label %if.then.167, label %if.else.170

if.then.167:                                      ; preds = %if.end.163
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %conv168 = trunc i32 %113 to i16
  %114 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_sh_rwset169 = getelementptr inbounds %struct.mailer, %struct.mailer* %114, i32 0, i32 9
  store i16 %conv168, i16* %m_sh_rwset169, align 2, !tbaa !43
  br label %if.end.173

if.else.170:                                      ; preds = %if.end.163
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %conv171 = trunc i32 %115 to i16
  %116 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_rh_rwset172 = getelementptr inbounds %struct.mailer, %struct.mailer* %116, i32 0, i32 11
  store i16 %conv171, i16* %m_rh_rwset172, align 2, !tbaa !45
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.then.167
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.153
  br label %sw.epilog

sw.bb.175:                                        ; preds = %while.end.92
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %118 = load i8, i8* %117, align 1, !tbaa !12
  %conv176 = sext i8 %118 to i32
  %cmp177 = icmp eq i32 %conv176, 0
  br i1 %cmp177, label %if.then.179, label %if.else.181

if.then.179:                                      ; preds = %sw.bb.175
  %119 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name180 = getelementptr inbounds %struct.mailer, %struct.mailer* %119, i32 0, i32 0
  %120 = load i8*, i8** %m_name180, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* %120)
  br label %if.end.183

if.else.181:                                      ; preds = %sw.bb.175
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %call182 = call i8* @newstr(i8* %121)
  %122 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_eol = getelementptr inbounds %struct.mailer, %struct.mailer* %122, i32 0, i32 13
  store i8* %call182, i8** %m_eol, align 8, !tbaa !46
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.181, %if.then.179
  br label %sw.epilog

sw.bb.184:                                        ; preds = %while.end.92
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %124 = load i8, i8* %123, align 1, !tbaa !12
  %conv185 = sext i8 %124 to i32
  %cmp186 = icmp ne i32 %conv185, 0
  br i1 %cmp186, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %sw.bb.184
  %125 = load i8*, i8** %p, align 8, !tbaa !1
  %call189 = call i8** @makeargv(i8* %125)
  %126 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv = getelementptr inbounds %struct.mailer, %struct.mailer* %126, i32 0, i32 8
  store i8** %call189, i8*** %m_argv, align 8, !tbaa !47
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %sw.bb.184
  br label %sw.epilog

sw.bb.191:                                        ; preds = %while.end.92
  %127 = load i8*, i8** %p, align 8, !tbaa !1
  %call192 = call i64 @atol(i8* %127) #9
  %128 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_maxsize = getelementptr inbounds %struct.mailer, %struct.mailer* %128, i32 0, i32 14
  store i64 %call192, i64* %m_maxsize, align 8, !tbaa !48
  br label %sw.epilog

sw.bb.193:                                        ; preds = %while.end.92
  %129 = load i8*, i8** %p, align 8, !tbaa !1
  %call194 = call i32 @atoi(i8* %129) #9
  %130 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_maxdeliveries = getelementptr inbounds %struct.mailer, %struct.mailer* %130, i32 0, i32 16
  store i32 %call194, i32* %m_maxdeliveries, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.195:                                        ; preds = %while.end.92
  %131 = load i8*, i8** %p, align 8, !tbaa !1
  %call196 = call i32 @atoi(i8* %131) #9
  %132 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_maxrcpt = getelementptr inbounds %struct.mailer, %struct.mailer* %132, i32 0, i32 23
  store i32 %call196, i32* %m_maxrcpt, align 4, !tbaa !50
  br label %sw.epilog

sw.bb.197:                                        ; preds = %while.end.92
  %133 = load i8*, i8** %p, align 8, !tbaa !1
  %call198 = call i32 @atoi(i8* %133) #9
  %134 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_linelimit = getelementptr inbounds %struct.mailer, %struct.mailer* %134, i32 0, i32 15
  store i32 %call198, i32* %m_linelimit, align 4, !tbaa !51
  %135 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_linelimit199 = getelementptr inbounds %struct.mailer, %struct.mailer* %135, i32 0, i32 15
  %136 = load i32, i32* %m_linelimit199, align 4, !tbaa !51
  %cmp200 = icmp slt i32 %136, 0
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %sw.bb.197
  %137 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_linelimit203 = getelementptr inbounds %struct.mailer, %struct.mailer* %137, i32 0, i32 15
  store i32 0, i32* %m_linelimit203, align 4, !tbaa !51
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %sw.bb.197
  br label %sw.epilog

sw.bb.205:                                        ; preds = %while.end.92
  %138 = load i8*, i8** %p, align 8, !tbaa !1
  %call206 = call i32 @atoi(i8* %138) #9
  %conv207 = trunc i32 %call206 to i16
  %139 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_nice = getelementptr inbounds %struct.mailer, %struct.mailer* %139, i32 0, i32 7
  store i16 %conv207, i16* %m_nice, align 2, !tbaa !52
  br label %sw.epilog

sw.bb.208:                                        ; preds = %while.end.92
  %140 = load i8*, i8** %p, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !12
  %conv209 = sext i8 %141 to i32
  %cmp210 = icmp eq i32 %conv209, 0
  br i1 %cmp210, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %sw.bb.208
  %142 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name213 = getelementptr inbounds %struct.mailer, %struct.mailer* %142, i32 0, i32 0
  %143 = load i8*, i8** %m_name213, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0), i8* %143)
  br label %if.end.216

if.else.214:                                      ; preds = %sw.bb.208
  %144 = load i8*, i8** %p, align 8, !tbaa !1
  %call215 = call i8* @newstr(i8* %144)
  %145 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_execdir = getelementptr inbounds %struct.mailer, %struct.mailer* %145, i32 0, i32 17
  store i8* %call215, i8** %m_execdir, align 8, !tbaa !53
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.214, %if.then.212
  br label %sw.epilog

sw.bb.217:                                        ; preds = %while.end.92
  %146 = load i8*, i8** %p, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !12
  %conv218 = sext i8 %147 to i32
  %cmp219 = icmp eq i32 %conv218, 0
  br i1 %cmp219, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %sw.bb.217
  %148 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name222 = getelementptr inbounds %struct.mailer, %struct.mailer* %148, i32 0, i32 0
  %149 = load i8*, i8** %m_name222, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* %149)
  br label %if.end.225

if.else.223:                                      ; preds = %sw.bb.217
  %150 = load i8*, i8** %p, align 8, !tbaa !1
  %call224 = call i8* @newstr(i8* %150)
  %151 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_defcharset = getelementptr inbounds %struct.mailer, %struct.mailer* %151, i32 0, i32 21
  store i8* %call224, i8** %m_defcharset, align 8, !tbaa !54
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %if.then.221
  br label %sw.epilog

sw.bb.226:                                        ; preds = %while.end.92
  %152 = load i8*, i8** %p, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !12
  %conv227 = sext i8 %153 to i32
  %cmp228 = icmp eq i32 %conv227, 0
  br i1 %cmp228, label %if.then.230, label %if.end.232

if.then.230:                                      ; preds = %sw.bb.226
  %154 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name231 = getelementptr inbounds %struct.mailer, %struct.mailer* %154, i32 0, i32 0
  %155 = load i8*, i8** %m_name231, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i8* %155)
  br label %sw.epilog

if.end.232:                                       ; preds = %sw.bb.226
  %156 = load i8*, i8** %p, align 8, !tbaa !1
  %call233 = call %struct.symtab* @stab(i8* %156, i32 15, i32 0)
  store %struct.symtab* %call233, %struct.symtab** %s, align 8, !tbaa !1
  %157 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp234 = icmp eq %struct.symtab* %157, null
  br i1 %cmp234, label %if.then.236, label %if.else.238

if.then.236:                                      ; preds = %if.end.232
  %158 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name237 = getelementptr inbounds %struct.mailer, %struct.mailer* %158, i32 0, i32 0
  %159 = load i8*, i8** %m_name237, align 8, !tbaa !36
  %160 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i32 0, i32 0), i8* %159, i8* %160)
  br label %if.end.240

if.else.238:                                      ; preds = %if.end.232
  %161 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %161, i32 0, i32 3
  %sv_queue = bitcast %union.anon* %s_value to %struct.queuegrp**
  %162 = load %struct.queuegrp*, %struct.queuegrp** %sv_queue, align 8, !tbaa !1
  %qg_index = getelementptr inbounds %struct.queuegrp, %struct.queuegrp* %162, i32 0, i32 2
  %163 = load i16, i16* %qg_index, align 2, !tbaa !55
  %164 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_qgrp239 = getelementptr inbounds %struct.mailer, %struct.mailer* %164, i32 0, i32 24
  store i16 %163, i16* %m_qgrp239, align 2, !tbaa !38
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.238, %if.then.236
  br label %sw.epilog

sw.bb.241:                                        ; preds = %while.end.92
  %165 = load i8*, i8** %p, align 8, !tbaa !1
  %call242 = call i8* @newstr(i8* %165)
  %166 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mtatype = getelementptr inbounds %struct.mailer, %struct.mailer* %166, i32 0, i32 2
  store i8* %call242, i8** %m_mtatype, align 8, !tbaa !57
  %167 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mtatype243 = getelementptr inbounds %struct.mailer, %struct.mailer* %167, i32 0, i32 2
  %168 = load i8*, i8** %m_mtatype243, align 8, !tbaa !57
  %call244 = call i8* @strchr(i8* %168, i32 47) #1
  store i8* %call244, i8** %p, align 8, !tbaa !1
  %169 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp245 = icmp ne i8* %169, null
  br i1 %cmp245, label %if.then.247, label %if.end.254

if.then.247:                                      ; preds = %sw.bb.241
  %170 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr248 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr248, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %170, align 1, !tbaa !12
  %171 = load i8*, i8** %p, align 8, !tbaa !1
  %172 = load i8, i8* %171, align 1, !tbaa !12
  %conv249 = sext i8 %172 to i32
  %cmp250 = icmp eq i32 %conv249, 0
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %if.then.247
  store i8* null, i8** %p, align 8, !tbaa !1
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %if.then.247
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %sw.bb.241
  %173 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mtatype255 = getelementptr inbounds %struct.mailer, %struct.mailer* %173, i32 0, i32 2
  %174 = load i8*, i8** %m_mtatype255, align 8, !tbaa !57
  %175 = load i8, i8* %174, align 1, !tbaa !12
  %conv256 = sext i8 %175 to i32
  %cmp257 = icmp eq i32 %conv256, 0
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %if.end.254
  %176 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mtatype260 = getelementptr inbounds %struct.mailer, %struct.mailer* %176, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8** %m_mtatype260, align 8, !tbaa !57
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %if.end.254
  %177 = load i8*, i8** %p, align 8, !tbaa !1
  %178 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_addrtype = getelementptr inbounds %struct.mailer, %struct.mailer* %178, i32 0, i32 3
  store i8* %177, i8** %m_addrtype, align 8, !tbaa !58
  %179 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp262 = icmp ne i8* %179, null
  br i1 %cmp262, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.end.261
  %180 = load i8*, i8** %p, align 8, !tbaa !1
  %call265 = call i8* @strchr(i8* %180, i32 47) #1
  store i8* %call265, i8** %p, align 8, !tbaa !1
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %if.end.261
  %181 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp267 = icmp ne i8* %181, null
  br i1 %cmp267, label %if.then.269, label %if.end.276

if.then.269:                                      ; preds = %if.end.266
  %182 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr270 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr270, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %182, align 1, !tbaa !12
  %183 = load i8*, i8** %p, align 8, !tbaa !1
  %184 = load i8, i8* %183, align 1, !tbaa !12
  %conv271 = sext i8 %184 to i32
  %cmp272 = icmp eq i32 %conv271, 0
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.then.269
  store i8* null, i8** %p, align 8, !tbaa !1
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.then.269
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.266
  %185 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_addrtype277 = getelementptr inbounds %struct.mailer, %struct.mailer* %185, i32 0, i32 3
  %186 = load i8*, i8** %m_addrtype277, align 8, !tbaa !58
  %cmp278 = icmp eq i8* %186, null
  br i1 %cmp278, label %if.then.284, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.276
  %187 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_addrtype280 = getelementptr inbounds %struct.mailer, %struct.mailer* %187, i32 0, i32 3
  %188 = load i8*, i8** %m_addrtype280, align 8, !tbaa !58
  %189 = load i8, i8* %188, align 1, !tbaa !12
  %conv281 = sext i8 %189 to i32
  %cmp282 = icmp eq i32 %conv281, 0
  br i1 %cmp282, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %lor.lhs.false, %if.end.276
  %190 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_addrtype285 = getelementptr inbounds %struct.mailer, %struct.mailer* %190, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8** %m_addrtype285, align 8, !tbaa !58
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %lor.lhs.false
  %191 = load i8*, i8** %p, align 8, !tbaa !1
  %192 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype = getelementptr inbounds %struct.mailer, %struct.mailer* %192, i32 0, i32 4
  store i8* %191, i8** %m_diagtype, align 8, !tbaa !59
  %193 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype287 = getelementptr inbounds %struct.mailer, %struct.mailer* %193, i32 0, i32 4
  %194 = load i8*, i8** %m_diagtype287, align 8, !tbaa !59
  %cmp288 = icmp eq i8* %194, null
  br i1 %cmp288, label %if.then.295, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %if.end.286
  %195 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype291 = getelementptr inbounds %struct.mailer, %struct.mailer* %195, i32 0, i32 4
  %196 = load i8*, i8** %m_diagtype291, align 8, !tbaa !59
  %197 = load i8, i8* %196, align 1, !tbaa !12
  %conv292 = sext i8 %197 to i32
  %cmp293 = icmp eq i32 %conv292, 0
  br i1 %cmp293, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %lor.lhs.false.290, %if.end.286
  %198 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype296 = getelementptr inbounds %struct.mailer, %struct.mailer* %198, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8** %m_diagtype296, align 8, !tbaa !59
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %lor.lhs.false.290
  br label %sw.epilog

sw.bb.298:                                        ; preds = %while.end.92
  %199 = load i8*, i8** %p, align 8, !tbaa !1
  %200 = load i8, i8* %199, align 1, !tbaa !12
  %conv299 = sext i8 %200 to i32
  %and300 = and i32 %conv299, -128
  %cmp301 = icmp eq i32 %and300, 0
  br i1 %cmp301, label %land.lhs.true.303, label %if.else.377

land.lhs.true.303:                                ; preds = %sw.bb.298
  %201 = load i8*, i8** %p, align 8, !tbaa !1
  %202 = load i8, i8* %201, align 1, !tbaa !12
  %conv304 = sext i8 %202 to i32
  %idxprom305 = sext i32 %conv304 to i64
  %call306 = call i16** @__ctype_b_loc() #8
  %203 = load i16*, i16** %call306, align 8, !tbaa !1
  %arrayidx307 = getelementptr inbounds i16, i16* %203, i64 %idxprom305
  %204 = load i16, i16* %arrayidx307, align 2, !tbaa !18
  %conv308 = zext i16 %204 to i32
  %and309 = and i32 %conv308, 2048
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.else.377, label %if.then.311

if.then.311:                                      ; preds = %land.lhs.true.303
  %205 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #1
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %206, i8** %q, align 8, !tbaa !1
  %207 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  br label %while.cond.312

while.cond.312:                                   ; preds = %while.body.336, %if.then.311
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !12
  %conv313 = sext i8 %209 to i32
  %cmp314 = icmp ne i32 %conv313, 0
  br i1 %cmp314, label %land.lhs.true.316, label %land.end.335

land.lhs.true.316:                                ; preds = %while.cond.312
  %210 = load i8*, i8** %p, align 8, !tbaa !1
  %211 = load i8, i8* %210, align 1, !tbaa !12
  %conv317 = sext i8 %211 to i32
  %and318 = and i32 %conv317, -128
  %cmp319 = icmp eq i32 %and318, 0
  br i1 %cmp319, label %land.rhs.321, label %land.end.335

land.rhs.321:                                     ; preds = %land.lhs.true.316
  %212 = load i8*, i8** %p, align 8, !tbaa !1
  %213 = load i8, i8* %212, align 1, !tbaa !12
  %conv322 = sext i8 %213 to i32
  %idxprom323 = sext i32 %conv322 to i64
  %call324 = call i16** @__ctype_b_loc() #8
  %214 = load i16*, i16** %call324, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i16, i16* %214, i64 %idxprom323
  %215 = load i16, i16* %arrayidx325, align 2, !tbaa !18
  %conv326 = zext i16 %215 to i32
  %and327 = and i32 %conv326, 8
  %tobool328 = icmp ne i32 %and327, 0
  br i1 %tobool328, label %lor.end.334, label %lor.rhs.329

lor.rhs.329:                                      ; preds = %land.rhs.321
  %216 = load i8*, i8** %p, align 8, !tbaa !1
  %217 = load i8, i8* %216, align 1, !tbaa !12
  %conv330 = sext i8 %217 to i32
  %call331 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i32 %conv330) #1
  %cmp332 = icmp ne i8* %call331, null
  br label %lor.end.334

lor.end.334:                                      ; preds = %lor.rhs.329, %land.rhs.321
  %218 = phi i1 [ true, %land.rhs.321 ], [ %cmp332, %lor.rhs.329 ]
  br label %land.end.335

land.end.335:                                     ; preds = %lor.end.334, %land.lhs.true.316, %while.cond.312
  %219 = phi i1 [ false, %land.lhs.true.316 ], [ false, %while.cond.312 ], [ %218, %lor.end.334 ]
  br i1 %219, label %while.body.336, label %while.end.338

while.body.336:                                   ; preds = %land.end.335
  %220 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr337 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr337, i8** %p, align 8, !tbaa !1
  br label %while.cond.312

while.end.338:                                    ; preds = %land.end.335
  br label %while.cond.339

while.cond.339:                                   ; preds = %while.body.353, %while.end.338
  %221 = load i8*, i8** %p, align 8, !tbaa !1
  %222 = load i8, i8* %221, align 1, !tbaa !12
  %conv340 = sext i8 %222 to i32
  %and341 = and i32 %conv340, -128
  %cmp342 = icmp eq i32 %and341, 0
  br i1 %cmp342, label %land.rhs.344, label %land.end.352

land.rhs.344:                                     ; preds = %while.cond.339
  %223 = load i8*, i8** %p, align 8, !tbaa !1
  %224 = load i8, i8* %223, align 1, !tbaa !12
  %conv345 = sext i8 %224 to i32
  %idxprom346 = sext i32 %conv345 to i64
  %call347 = call i16** @__ctype_b_loc() #8
  %225 = load i16*, i16** %call347, align 8, !tbaa !1
  %arrayidx348 = getelementptr inbounds i16, i16* %225, i64 %idxprom346
  %226 = load i16, i16* %arrayidx348, align 2, !tbaa !18
  %conv349 = zext i16 %226 to i32
  %and350 = and i32 %conv349, 8192
  %tobool351 = icmp ne i32 %and350, 0
  br label %land.end.352

land.end.352:                                     ; preds = %land.rhs.344, %while.cond.339
  %227 = phi i1 [ false, %while.cond.339 ], [ %tobool351, %land.rhs.344 ]
  br i1 %227, label %while.body.353, label %while.end.355

while.body.353:                                   ; preds = %land.end.352
  %228 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr354 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr354, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %228, align 1, !tbaa !12
  br label %while.cond.339

while.end.355:                                    ; preds = %land.end.352
  %229 = load i8*, i8** %p, align 8, !tbaa !1
  %230 = load i8, i8* %229, align 1, !tbaa !12
  %conv356 = sext i8 %230 to i32
  %cmp357 = icmp ne i32 %conv356, 0
  br i1 %cmp357, label %if.then.359, label %if.end.361

if.then.359:                                      ; preds = %while.end.355
  %231 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr360 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr360, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %231, align 1, !tbaa !12
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.359, %while.end.355
  %232 = load i8*, i8** %q, align 8, !tbaa !1
  %233 = load i8, i8* %232, align 1, !tbaa !12
  %conv362 = sext i8 %233 to i32
  %cmp363 = icmp eq i32 %conv362, 0
  br i1 %cmp363, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.end.361
  %234 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name366 = getelementptr inbounds %struct.mailer, %struct.mailer* %234, i32 0, i32 0
  %235 = load i8*, i8** %m_name366, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0), i8* %235)
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

if.end.367:                                       ; preds = %if.end.361
  %236 = load i8*, i8** %q, align 8, !tbaa !1
  %call368 = call %struct.passwd* @sm_getpwnam(i8* %236)
  store %struct.passwd* %call368, %struct.passwd** %pw, align 8, !tbaa !1
  %237 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp369 = icmp eq %struct.passwd* %237, null
  br i1 %cmp369, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %if.end.367
  %238 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0), i8* %238)
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

if.else.372:                                      ; preds = %if.end.367
  %239 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %239, i32 0, i32 2
  %240 = load i32, i32* %pw_uid, align 4, !tbaa !60
  %241 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_uid373 = getelementptr inbounds %struct.mailer, %struct.mailer* %241, i32 0, i32 19
  store i32 %240, i32* %m_uid373, align 4, !tbaa !39
  %242 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %242, i32 0, i32 3
  %243 = load i32, i32* %pw_gid, align 4, !tbaa !62
  %244 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_gid374 = getelementptr inbounds %struct.mailer, %struct.mailer* %244, i32 0, i32 20
  store i32 %243, i32* %m_gid374, align 4, !tbaa !40
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.372
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.375, %if.then.371, %if.then.365
  %245 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 13, label %sw.epilog
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.405

if.else.377:                                      ; preds = %land.lhs.true.303, %sw.bb.298
  %247 = bitcast i8** %q378 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #1
  %248 = load i8*, i8** %p, align 8, !tbaa !1
  %call379 = call i64 @strtol(i8* %248, i8** %q378, i32 0) #1
  %conv380 = trunc i64 %call379 to i32
  %249 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_uid381 = getelementptr inbounds %struct.mailer, %struct.mailer* %249, i32 0, i32 19
  store i32 %conv380, i32* %m_uid381, align 4, !tbaa !39
  %250 = load i8*, i8** %q378, align 8, !tbaa !1
  store i8* %250, i8** %p, align 8, !tbaa !1
  br label %while.cond.382

while.cond.382:                                   ; preds = %while.body.396, %if.else.377
  %251 = load i8*, i8** %p, align 8, !tbaa !1
  %252 = load i8, i8* %251, align 1, !tbaa !12
  %conv383 = sext i8 %252 to i32
  %and384 = and i32 %conv383, -128
  %cmp385 = icmp eq i32 %and384, 0
  br i1 %cmp385, label %land.rhs.387, label %land.end.395

land.rhs.387:                                     ; preds = %while.cond.382
  %253 = load i8*, i8** %p, align 8, !tbaa !1
  %254 = load i8, i8* %253, align 1, !tbaa !12
  %conv388 = sext i8 %254 to i32
  %idxprom389 = sext i32 %conv388 to i64
  %call390 = call i16** @__ctype_b_loc() #8
  %255 = load i16*, i16** %call390, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds i16, i16* %255, i64 %idxprom389
  %256 = load i16, i16* %arrayidx391, align 2, !tbaa !18
  %conv392 = zext i16 %256 to i32
  %and393 = and i32 %conv392, 8192
  %tobool394 = icmp ne i32 %and393, 0
  br label %land.end.395

land.end.395:                                     ; preds = %land.rhs.387, %while.cond.382
  %257 = phi i1 [ false, %while.cond.382 ], [ %tobool394, %land.rhs.387 ]
  br i1 %257, label %while.body.396, label %while.end.398

while.body.396:                                   ; preds = %land.end.395
  %258 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr397 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %incdec.ptr397, i8** %p, align 8, !tbaa !1
  br label %while.cond.382

while.end.398:                                    ; preds = %land.end.395
  %259 = load i8*, i8** %p, align 8, !tbaa !1
  %260 = load i8, i8* %259, align 1, !tbaa !12
  %conv399 = sext i8 %260 to i32
  %cmp400 = icmp ne i32 %conv399, 0
  br i1 %cmp400, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %while.end.398
  %261 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr403 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr403, i8** %p, align 8, !tbaa !1
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.402, %while.end.398
  %262 = bitcast i8** %q378 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %cleanup.cont
  br label %while.cond.406

while.cond.406:                                   ; preds = %while.body.420, %if.end.405
  %263 = load i8*, i8** %p, align 8, !tbaa !1
  %264 = load i8, i8* %263, align 1, !tbaa !12
  %conv407 = sext i8 %264 to i32
  %and408 = and i32 %conv407, -128
  %cmp409 = icmp eq i32 %and408, 0
  br i1 %cmp409, label %land.rhs.411, label %land.end.419

land.rhs.411:                                     ; preds = %while.cond.406
  %265 = load i8*, i8** %p, align 8, !tbaa !1
  %266 = load i8, i8* %265, align 1, !tbaa !12
  %conv412 = sext i8 %266 to i32
  %idxprom413 = sext i32 %conv412 to i64
  %call414 = call i16** @__ctype_b_loc() #8
  %267 = load i16*, i16** %call414, align 8, !tbaa !1
  %arrayidx415 = getelementptr inbounds i16, i16* %267, i64 %idxprom413
  %268 = load i16, i16* %arrayidx415, align 2, !tbaa !18
  %conv416 = zext i16 %268 to i32
  %and417 = and i32 %conv416, 8192
  %tobool418 = icmp ne i32 %and417, 0
  br label %land.end.419

land.end.419:                                     ; preds = %land.rhs.411, %while.cond.406
  %269 = phi i1 [ false, %while.cond.406 ], [ %tobool418, %land.rhs.411 ]
  br i1 %269, label %while.body.420, label %while.end.422

while.body.420:                                   ; preds = %land.end.419
  %270 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr421 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr421, i8** %p, align 8, !tbaa !1
  br label %while.cond.406

while.end.422:                                    ; preds = %land.end.419
  %271 = load i8*, i8** %p, align 8, !tbaa !1
  %272 = load i8, i8* %271, align 1, !tbaa !12
  %conv423 = sext i8 %272 to i32
  %cmp424 = icmp eq i32 %conv423, 0
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %while.end.422
  br label %sw.epilog

if.end.427:                                       ; preds = %while.end.422
  %273 = load i8*, i8** %p, align 8, !tbaa !1
  %274 = load i8, i8* %273, align 1, !tbaa !12
  %conv428 = sext i8 %274 to i32
  %and429 = and i32 %conv428, -128
  %cmp430 = icmp eq i32 %and429, 0
  br i1 %cmp430, label %land.lhs.true.432, label %if.else.483

land.lhs.true.432:                                ; preds = %if.end.427
  %275 = load i8*, i8** %p, align 8, !tbaa !1
  %276 = load i8, i8* %275, align 1, !tbaa !12
  %conv433 = sext i8 %276 to i32
  %idxprom434 = sext i32 %conv433 to i64
  %call435 = call i16** @__ctype_b_loc() #8
  %277 = load i16*, i16** %call435, align 8, !tbaa !1
  %arrayidx436 = getelementptr inbounds i16, i16* %277, i64 %idxprom434
  %278 = load i16, i16* %arrayidx436, align 2, !tbaa !18
  %conv437 = zext i16 %278 to i32
  %and438 = and i32 %conv437, 2048
  %tobool439 = icmp ne i32 %and438, 0
  br i1 %tobool439, label %if.else.483, label %if.then.440

if.then.440:                                      ; preds = %land.lhs.true.432
  %279 = bitcast i8** %q441 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  %280 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %280, i8** %q441, align 8, !tbaa !1
  %281 = bitcast %struct.group** %gr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %281) #1
  br label %while.cond.442

while.cond.442:                                   ; preds = %while.body.462, %if.then.440
  %282 = load i8*, i8** %p, align 8, !tbaa !1
  %283 = load i8, i8* %282, align 1, !tbaa !12
  %conv443 = sext i8 %283 to i32
  %and444 = and i32 %conv443, -128
  %cmp445 = icmp eq i32 %and444, 0
  br i1 %cmp445, label %land.rhs.447, label %land.end.461

land.rhs.447:                                     ; preds = %while.cond.442
  %284 = load i8*, i8** %p, align 8, !tbaa !1
  %285 = load i8, i8* %284, align 1, !tbaa !12
  %conv448 = sext i8 %285 to i32
  %idxprom449 = sext i32 %conv448 to i64
  %call450 = call i16** @__ctype_b_loc() #8
  %286 = load i16*, i16** %call450, align 8, !tbaa !1
  %arrayidx451 = getelementptr inbounds i16, i16* %286, i64 %idxprom449
  %287 = load i16, i16* %arrayidx451, align 2, !tbaa !18
  %conv452 = zext i16 %287 to i32
  %and453 = and i32 %conv452, 8
  %tobool454 = icmp ne i32 %and453, 0
  br i1 %tobool454, label %lor.end.460, label %lor.rhs.455

lor.rhs.455:                                      ; preds = %land.rhs.447
  %288 = load i8*, i8** %p, align 8, !tbaa !1
  %289 = load i8, i8* %288, align 1, !tbaa !12
  %conv456 = sext i8 %289 to i32
  %call457 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 %conv456) #1
  %cmp458 = icmp ne i8* %call457, null
  br label %lor.end.460

lor.end.460:                                      ; preds = %lor.rhs.455, %land.rhs.447
  %290 = phi i1 [ true, %land.rhs.447 ], [ %cmp458, %lor.rhs.455 ]
  br label %land.end.461

land.end.461:                                     ; preds = %lor.end.460, %while.cond.442
  %291 = phi i1 [ false, %while.cond.442 ], [ %290, %lor.end.460 ]
  br i1 %291, label %while.body.462, label %while.end.464

while.body.462:                                   ; preds = %land.end.461
  %292 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr463 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr463, i8** %p, align 8, !tbaa !1
  br label %while.cond.442

while.end.464:                                    ; preds = %land.end.461
  %293 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr465 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr465, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %293, align 1, !tbaa !12
  %294 = load i8*, i8** %q441, align 8, !tbaa !1
  %295 = load i8, i8* %294, align 1, !tbaa !12
  %conv466 = sext i8 %295 to i32
  %cmp467 = icmp eq i32 %conv466, 0
  br i1 %cmp467, label %if.then.469, label %if.end.471

if.then.469:                                      ; preds = %while.end.464
  %296 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name470 = getelementptr inbounds %struct.mailer, %struct.mailer* %296, i32 0, i32 0
  %297 = load i8*, i8** %m_name470, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i8* %297)
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.479

if.end.471:                                       ; preds = %while.end.464
  %298 = load i8*, i8** %q441, align 8, !tbaa !1
  %call472 = call %struct.group* @getgrnam(i8* %298)
  store %struct.group* %call472, %struct.group** %gr, align 8, !tbaa !1
  %299 = load %struct.group*, %struct.group** %gr, align 8, !tbaa !1
  %cmp473 = icmp eq %struct.group* %299, null
  br i1 %cmp473, label %if.then.475, label %if.else.476

if.then.475:                                      ; preds = %if.end.471
  %300 = load i8*, i8** %q441, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %300)
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.479

if.else.476:                                      ; preds = %if.end.471
  %301 = load %struct.group*, %struct.group** %gr, align 8, !tbaa !1
  %gr_gid = getelementptr inbounds %struct.group, %struct.group* %301, i32 0, i32 2
  %302 = load i32, i32* %gr_gid, align 4, !tbaa !63
  %303 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_gid477 = getelementptr inbounds %struct.mailer, %struct.mailer* %303, i32 0, i32 20
  store i32 %302, i32* %m_gid477, align 4, !tbaa !40
  br label %if.end.478

if.end.478:                                       ; preds = %if.else.476
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.479

cleanup.479:                                      ; preds = %if.end.478, %if.then.475, %if.then.469
  %304 = bitcast %struct.group** %gr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i8** %q441 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %cleanup.dest.481 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.481, label %unreachable [
    i32 0, label %cleanup.cont.482
    i32 13, label %sw.epilog
  ]

cleanup.cont.482:                                 ; preds = %cleanup.479
  br label %if.end.487

if.else.483:                                      ; preds = %land.lhs.true.432, %if.end.427
  %306 = load i8*, i8** %p, align 8, !tbaa !1
  %call484 = call i64 @strtol(i8* %306, i8** null, i32 0) #1
  %conv485 = trunc i64 %call484 to i32
  %307 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_gid486 = getelementptr inbounds %struct.mailer, %struct.mailer* %307, i32 0, i32 20
  store i32 %conv485, i32* %m_gid486, align 4, !tbaa !40
  br label %if.end.487

if.end.487:                                       ; preds = %if.else.483, %cleanup.cont.482
  br label %sw.epilog

sw.bb.488:                                        ; preds = %while.end.92
  %308 = load i8*, i8** %p, align 8, !tbaa !1
  %call489 = call i64 @convtime(i8* %308, i32 115)
  %309 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_wait = getelementptr inbounds %struct.mailer, %struct.mailer* %309, i32 0, i32 22
  store i64 %call489, i64* %m_wait, align 8, !tbaa !65
  br label %sw.epilog

sw.bb.490:                                        ; preds = %while.end.92
  %310 = load i8*, i8** %p, align 8, !tbaa !1
  %311 = load i8, i8* %310, align 1, !tbaa !12
  %conv491 = sext i8 %311 to i32
  %cmp492 = icmp eq i32 %conv491, 0
  br i1 %cmp492, label %if.then.494, label %if.else.496

if.then.494:                                      ; preds = %sw.bb.490
  %312 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name495 = getelementptr inbounds %struct.mailer, %struct.mailer* %312, i32 0, i32 0
  %313 = load i8*, i8** %m_name495, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i8* %313)
  br label %if.end.498

if.else.496:                                      ; preds = %sw.bb.490
  %314 = load i8*, i8** %p, align 8, !tbaa !1
  %call497 = call i8* @newstr(i8* %314)
  %315 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_rootdir = getelementptr inbounds %struct.mailer, %struct.mailer* %315, i32 0, i32 18
  store i8* %call497, i8** %m_rootdir, align 8, !tbaa !66
  br label %if.end.498

if.end.498:                                       ; preds = %if.else.496, %if.then.494
  br label %sw.epilog

sw.default:                                       ; preds = %while.end.92
  %316 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name499 = getelementptr inbounds %struct.mailer, %struct.mailer* %316, i32 0, i32 0
  %317 = load i8*, i8** %m_name499, align 8, !tbaa !36
  %318 = load i8, i8* %fcode, align 1, !tbaa !12
  %conv500 = sext i8 %318 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0), i8* %317, i32 %conv500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.498, %sw.bb.488, %if.end.487, %cleanup.479, %if.then.426, %cleanup, %if.end.297, %if.end.240, %if.then.230, %if.end.225, %if.end.216, %sw.bb.205, %if.end.204, %sw.bb.195, %sw.bb.193, %sw.bb.191, %if.end.190, %if.end.183, %if.end.174, %for.end.140, %if.end.100
  %319 = load i8*, i8** %delimptr, align 8, !tbaa !1
  store i8* %319, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.501

cleanup.501:                                      ; preds = %sw.epilog, %if.then.162, %if.then.145, %if.then.73
  %320 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %cleanup.dest.502 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.502, label %cleanup.1110 [
    i32 0, label %cleanup.cont.503
  ]

cleanup.cont.503:                                 ; preds = %cleanup.501
  br label %while.cond

while.end.504:                                    ; preds = %while.cond
  %321 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv505 = getelementptr inbounds %struct.mailer, %struct.mailer* %321, i32 0, i32 8
  %322 = load i8**, i8*** %m_argv505, align 8, !tbaa !47
  %cmp506 = icmp eq i8** %322, null
  br i1 %cmp506, label %if.then.508, label %if.end.510

if.then.508:                                      ; preds = %while.end.504
  %323 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name509 = getelementptr inbounds %struct.mailer, %struct.mailer* %323, i32 0, i32 0
  %324 = load i8*, i8** %m_name509, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* %324)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.510:                                       ; preds = %while.end.504
  %325 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer511 = getelementptr inbounds %struct.mailer, %struct.mailer* %325, i32 0, i32 1
  %326 = load i8*, i8** %m_mailer511, align 8, !tbaa !41
  %cmp512 = icmp eq i8* %326, null
  br i1 %cmp512, label %if.then.514, label %if.end.516

if.then.514:                                      ; preds = %if.end.510
  %327 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name515 = getelementptr inbounds %struct.mailer, %struct.mailer* %327, i32 0, i32 0
  %328 = load i8*, i8** %m_name515, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* %328)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.516:                                       ; preds = %if.end.510
  %329 = load i32, i32* @makemailer.nextmailer, align 4, !tbaa !5
  %cmp517 = icmp sge i32 %329, 25
  br i1 %cmp517, label %if.then.519, label %if.end.520

if.then.519:                                      ; preds = %if.end.516
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i32 25)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.520:                                       ; preds = %if.end.516
  %330 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_maxrcpt521 = getelementptr inbounds %struct.mailer, %struct.mailer* %330, i32 0, i32 23
  %331 = load i32, i32* %m_maxrcpt521, align 4, !tbaa !50
  %cmp522 = icmp sle i32 %331, 0
  br i1 %cmp522, label %if.then.524, label %if.end.526

if.then.524:                                      ; preds = %if.end.520
  %332 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_maxrcpt525 = getelementptr inbounds %struct.mailer, %struct.mailer* %332, i32 0, i32 23
  store i32 100, i32* %m_maxrcpt525, align 4, !tbaa !50
  br label %if.end.526

if.end.526:                                       ; preds = %if.then.524, %if.end.520
  %333 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags527 = getelementptr inbounds %struct.mailer, %struct.mailer* %333, i32 0, i32 5
  %arrayidx528 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags527, i32 0, i64 2
  %334 = load i32, i32* %arrayidx528, align 4, !tbaa !5
  %and529 = and i32 %334, 4096
  %tobool530 = icmp ne i32 %and529, 0
  br i1 %tobool530, label %if.then.531, label %if.end.545

if.then.531:                                      ; preds = %if.end.526
  %335 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_linelimit532 = getelementptr inbounds %struct.mailer, %struct.mailer* %335, i32 0, i32 15
  %336 = load i32, i32* %m_linelimit532, align 4, !tbaa !51
  %cmp533 = icmp eq i32 %336, 0
  br i1 %cmp533, label %if.then.535, label %if.end.537

if.then.535:                                      ; preds = %if.then.531
  %337 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_linelimit536 = getelementptr inbounds %struct.mailer, %struct.mailer* %337, i32 0, i32 15
  store i32 990, i32* %m_linelimit536, align 4, !tbaa !51
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.535, %if.then.531
  %338 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp538 = icmp slt i32 %338, 2
  br i1 %cmp538, label %if.then.540, label %if.end.544

if.then.540:                                      ; preds = %if.end.537
  %339 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags541 = getelementptr inbounds %struct.mailer, %struct.mailer* %339, i32 0, i32 5
  %arrayidx542 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags541, i32 0, i64 1
  %340 = load i32, i32* %arrayidx542, align 4, !tbaa !5
  %or543 = or i32 %340, 8388608
  store i32 %or543, i32* %arrayidx542, align 4, !tbaa !5
  br label %if.end.544

if.end.544:                                       ; preds = %if.then.540, %if.end.537
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %if.end.526
  %341 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %341) #1
  %342 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %342) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.68 to i64)), i64 1), label %land.lhs.true.546, label %cond.false

land.lhs.true.546:                                ; preds = %if.end.545
  store i64 5, i64* %__s2_len, align 8, !tbaa !7
  %343 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp547 = icmp ult i64 %343, 4
  br i1 %cmp547, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.546
  %344 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %344) #1
  %345 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer550 = getelementptr inbounds %struct.mailer, %struct.mailer* %345, i32 0, i32 1
  %346 = load i8*, i8** %m_mailer550, align 8, !tbaa !41
  store i8* %346, i8** %__s1, align 8, !tbaa !1
  %347 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %347) #1
  %348 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx552 = getelementptr inbounds i8, i8* %348, i64 0
  %349 = load i8, i8* %arrayidx552, align 1, !tbaa !12
  %conv553 = zext i8 %349 to i32
  %350 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), align 1, !tbaa !12
  %conv554 = zext i8 %350 to i32
  %sub = sub nsw i32 %conv553, %conv554
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %351 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp555 = icmp ugt i64 %351, 0
  br i1 %cmp555, label %land.lhs.true.557, label %if.end.587

land.lhs.true.557:                                ; preds = %cond.true
  %352 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp558 = icmp eq i32 %352, 0
  br i1 %cmp558, label %if.then.560, label %if.end.587

if.then.560:                                      ; preds = %land.lhs.true.557
  %353 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds i8, i8* %353, i64 1
  %354 = load i8, i8* %arrayidx561, align 1, !tbaa !12
  %conv562 = zext i8 %354 to i32
  %355 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i64 1), align 1, !tbaa !12
  %conv563 = zext i8 %355 to i32
  %sub564 = sub nsw i32 %conv562, %conv563
  store i32 %sub564, i32* %__result, align 4, !tbaa !5
  %356 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp565 = icmp ugt i64 %356, 1
  br i1 %cmp565, label %land.lhs.true.567, label %if.end.586

land.lhs.true.567:                                ; preds = %if.then.560
  %357 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp568 = icmp eq i32 %357, 0
  br i1 %cmp568, label %if.then.570, label %if.end.586

if.then.570:                                      ; preds = %land.lhs.true.567
  %358 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx571 = getelementptr inbounds i8, i8* %358, i64 2
  %359 = load i8, i8* %arrayidx571, align 1, !tbaa !12
  %conv572 = zext i8 %359 to i32
  %360 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i64 2), align 1, !tbaa !12
  %conv573 = zext i8 %360 to i32
  %sub574 = sub nsw i32 %conv572, %conv573
  store i32 %sub574, i32* %__result, align 4, !tbaa !5
  %361 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp575 = icmp ugt i64 %361, 2
  br i1 %cmp575, label %land.lhs.true.577, label %if.end.585

land.lhs.true.577:                                ; preds = %if.then.570
  %362 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp578 = icmp eq i32 %362, 0
  br i1 %cmp578, label %if.then.580, label %if.end.585

if.then.580:                                      ; preds = %land.lhs.true.577
  %363 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx581 = getelementptr inbounds i8, i8* %363, i64 3
  %364 = load i8, i8* %arrayidx581, align 1, !tbaa !12
  %conv582 = zext i8 %364 to i32
  %365 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i64 3), align 1, !tbaa !12
  %conv583 = zext i8 %365 to i32
  %sub584 = sub nsw i32 %conv582, %conv583
  store i32 %sub584, i32* %__result, align 4, !tbaa !5
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.580, %land.lhs.true.577, %if.then.570
  br label %if.end.586

if.end.586:                                       ; preds = %if.end.585, %land.lhs.true.567, %if.then.560
  br label %if.end.587

if.end.587:                                       ; preds = %if.end.586, %land.lhs.true.557, %cond.true
  %366 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %366, i32* %tmp588, !tbaa !5
  %367 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = load i32, i32* %tmp588, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.546, %if.end.545
  %370 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer589 = getelementptr inbounds %struct.mailer, %struct.mailer* %370, i32 0, i32 1
  %371 = load i8*, i8** %m_mailer589, align 8, !tbaa !41
  %call590 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.587
  %cond = phi i32 [ %369, %if.end.587 ], [ %call590, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %372 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  %373 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = load i32, i32* %tmp, !tbaa !5
  %cmp591 = icmp eq i32 %374, 0
  br i1 %cmp591, label %if.then.593, label %if.end.595

if.then.593:                                      ; preds = %cond.end
  %375 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name594 = getelementptr inbounds %struct.mailer, %struct.mailer* %375, i32 0, i32 0
  %376 = load i8*, i8** %m_name594, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i32 0, i32 0), i8* %376)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.595:                                       ; preds = %cond.end
  %377 = bitcast i64* %__s1_len597 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %377) #1
  %378 = bitcast i64* %__s2_len599 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %378) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.70 to i64)), i64 1), label %land.lhs.true.601, label %cond.false.648

land.lhs.true.601:                                ; preds = %if.end.595
  store i64 5, i64* %__s2_len599, align 8, !tbaa !7
  %379 = load i64, i64* %__s2_len599, align 8, !tbaa !7
  %cmp602 = icmp ult i64 %379, 4
  br i1 %cmp602, label %cond.true.604, label %cond.false.648

cond.true.604:                                    ; preds = %land.lhs.true.601
  %380 = bitcast i8** %__s1606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %380) #1
  %381 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer607 = getelementptr inbounds %struct.mailer, %struct.mailer* %381, i32 0, i32 1
  %382 = load i8*, i8** %m_mailer607, align 8, !tbaa !41
  store i8* %382, i8** %__s1606, align 8, !tbaa !1
  %383 = bitcast i32* %__result609 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %383) #1
  %384 = load i8*, i8** %__s1606, align 8, !tbaa !1
  %arrayidx610 = getelementptr inbounds i8, i8* %384, i64 0
  %385 = load i8, i8* %arrayidx610, align 1, !tbaa !12
  %conv611 = zext i8 %385 to i32
  %386 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), align 1, !tbaa !12
  %conv612 = zext i8 %386 to i32
  %sub613 = sub nsw i32 %conv611, %conv612
  store i32 %sub613, i32* %__result609, align 4, !tbaa !5
  %387 = load i64, i64* %__s2_len599, align 8, !tbaa !7
  %cmp614 = icmp ugt i64 %387, 0
  br i1 %cmp614, label %land.lhs.true.616, label %if.end.646

land.lhs.true.616:                                ; preds = %cond.true.604
  %388 = load i32, i32* %__result609, align 4, !tbaa !5
  %cmp617 = icmp eq i32 %388, 0
  br i1 %cmp617, label %if.then.619, label %if.end.646

if.then.619:                                      ; preds = %land.lhs.true.616
  %389 = load i8*, i8** %__s1606, align 8, !tbaa !1
  %arrayidx620 = getelementptr inbounds i8, i8* %389, i64 1
  %390 = load i8, i8* %arrayidx620, align 1, !tbaa !12
  %conv621 = zext i8 %390 to i32
  %391 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i64 1), align 1, !tbaa !12
  %conv622 = zext i8 %391 to i32
  %sub623 = sub nsw i32 %conv621, %conv622
  store i32 %sub623, i32* %__result609, align 4, !tbaa !5
  %392 = load i64, i64* %__s2_len599, align 8, !tbaa !7
  %cmp624 = icmp ugt i64 %392, 1
  br i1 %cmp624, label %land.lhs.true.626, label %if.end.645

land.lhs.true.626:                                ; preds = %if.then.619
  %393 = load i32, i32* %__result609, align 4, !tbaa !5
  %cmp627 = icmp eq i32 %393, 0
  br i1 %cmp627, label %if.then.629, label %if.end.645

if.then.629:                                      ; preds = %land.lhs.true.626
  %394 = load i8*, i8** %__s1606, align 8, !tbaa !1
  %arrayidx630 = getelementptr inbounds i8, i8* %394, i64 2
  %395 = load i8, i8* %arrayidx630, align 1, !tbaa !12
  %conv631 = zext i8 %395 to i32
  %396 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i64 2), align 1, !tbaa !12
  %conv632 = zext i8 %396 to i32
  %sub633 = sub nsw i32 %conv631, %conv632
  store i32 %sub633, i32* %__result609, align 4, !tbaa !5
  %397 = load i64, i64* %__s2_len599, align 8, !tbaa !7
  %cmp634 = icmp ugt i64 %397, 2
  br i1 %cmp634, label %land.lhs.true.636, label %if.end.644

land.lhs.true.636:                                ; preds = %if.then.629
  %398 = load i32, i32* %__result609, align 4, !tbaa !5
  %cmp637 = icmp eq i32 %398, 0
  br i1 %cmp637, label %if.then.639, label %if.end.644

if.then.639:                                      ; preds = %land.lhs.true.636
  %399 = load i8*, i8** %__s1606, align 8, !tbaa !1
  %arrayidx640 = getelementptr inbounds i8, i8* %399, i64 3
  %400 = load i8, i8* %arrayidx640, align 1, !tbaa !12
  %conv641 = zext i8 %400 to i32
  %401 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i64 3), align 1, !tbaa !12
  %conv642 = zext i8 %401 to i32
  %sub643 = sub nsw i32 %conv641, %conv642
  store i32 %sub643, i32* %__result609, align 4, !tbaa !5
  br label %if.end.644

if.end.644:                                       ; preds = %if.then.639, %land.lhs.true.636, %if.then.629
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644, %land.lhs.true.626, %if.then.619
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %land.lhs.true.616, %cond.true.604
  %402 = load i32, i32* %__result609, align 4, !tbaa !5
  store i32 %402, i32* %tmp647, !tbaa !5
  %403 = bitcast i32* %__result609 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i8** %__s1606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #1
  %405 = load i32, i32* %tmp647, !tbaa !5
  br label %cond.end.651

cond.false.648:                                   ; preds = %land.lhs.true.601, %if.end.595
  %406 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer649 = getelementptr inbounds %struct.mailer, %struct.mailer* %406, i32 0, i32 1
  %407 = load i8*, i8** %m_mailer649, align 8, !tbaa !41
  %call650 = call i32 @strcmp(i8* %407, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #1
  br label %cond.end.651

cond.end.651:                                     ; preds = %cond.false.648, %if.end.646
  %cond652 = phi i32 [ %405, %if.end.646 ], [ %call650, %cond.false.648 ]
  store i32 %cond652, i32* %tmp600, !tbaa !5
  %408 = bitcast i64* %__s2_len599 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #1
  %409 = bitcast i64* %__s1_len597 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #1
  %410 = load i32, i32* %tmp600, !tbaa !5
  %cmp653 = icmp eq i32 %410, 0
  br i1 %cmp653, label %if.then.655, label %if.else.892

if.then.655:                                      ; preds = %cond.end.651
  %411 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv656 = getelementptr inbounds %struct.mailer, %struct.mailer* %411, i32 0, i32 8
  %412 = load i8**, i8*** %m_argv656, align 8, !tbaa !47
  %arrayidx657 = getelementptr inbounds i8*, i8** %412, i64 0
  %413 = load i8*, i8** %arrayidx657, align 8, !tbaa !1
  %cmp658 = icmp eq i8* %413, null
  br i1 %cmp658, label %if.then.672, label %lor.lhs.false.660

lor.lhs.false.660:                                ; preds = %if.then.655
  %414 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv661 = getelementptr inbounds %struct.mailer, %struct.mailer* %414, i32 0, i32 8
  %415 = load i8**, i8*** %m_argv661, align 8, !tbaa !47
  %arrayidx662 = getelementptr inbounds i8*, i8** %415, i64 1
  %416 = load i8*, i8** %arrayidx662, align 8, !tbaa !1
  %cmp663 = icmp eq i8* %416, null
  br i1 %cmp663, label %if.then.672, label %lor.lhs.false.665

lor.lhs.false.665:                                ; preds = %lor.lhs.false.660
  %417 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv666 = getelementptr inbounds %struct.mailer, %struct.mailer* %417, i32 0, i32 8
  %418 = load i8**, i8*** %m_argv666, align 8, !tbaa !47
  %arrayidx667 = getelementptr inbounds i8*, i8** %418, i64 1
  %419 = load i8*, i8** %arrayidx667, align 8, !tbaa !1
  %arrayidx668 = getelementptr inbounds i8, i8* %419, i64 0
  %420 = load i8, i8* %arrayidx668, align 1, !tbaa !12
  %conv669 = sext i8 %420 to i32
  %cmp670 = icmp eq i32 %conv669, 0
  br i1 %cmp670, label %if.then.672, label %if.end.675

if.then.672:                                      ; preds = %lor.lhs.false.665, %lor.lhs.false.660, %if.then.655
  %421 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name673 = getelementptr inbounds %struct.mailer, %struct.mailer* %421, i32 0, i32 0
  %422 = load i8*, i8** %m_name673, align 8, !tbaa !36
  %423 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer674 = getelementptr inbounds %struct.mailer, %struct.mailer* %423, i32 0, i32 1
  %424 = load i8*, i8** %m_mailer674, align 8, !tbaa !41
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i32 0, i32 0), i8* %422, i8* %424)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.675:                                       ; preds = %lor.lhs.false.665
  %425 = bitcast i64* %__s1_len677 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %425) #1
  %426 = bitcast i64* %__s2_len679 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %426) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.72 to i64)), i64 1), label %land.lhs.true.681, label %cond.false.729

land.lhs.true.681:                                ; preds = %if.end.675
  store i64 3, i64* %__s2_len679, align 8, !tbaa !7
  %427 = load i64, i64* %__s2_len679, align 8, !tbaa !7
  %cmp682 = icmp ult i64 %427, 4
  br i1 %cmp682, label %cond.true.684, label %cond.false.729

cond.true.684:                                    ; preds = %land.lhs.true.681
  %428 = bitcast i8** %__s1686 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %428) #1
  %429 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv687 = getelementptr inbounds %struct.mailer, %struct.mailer* %429, i32 0, i32 8
  %430 = load i8**, i8*** %m_argv687, align 8, !tbaa !47
  %arrayidx688 = getelementptr inbounds i8*, i8** %430, i64 0
  %431 = load i8*, i8** %arrayidx688, align 8, !tbaa !1
  store i8* %431, i8** %__s1686, align 8, !tbaa !1
  %432 = bitcast i32* %__result690 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %432) #1
  %433 = load i8*, i8** %__s1686, align 8, !tbaa !1
  %arrayidx691 = getelementptr inbounds i8, i8* %433, i64 0
  %434 = load i8, i8* %arrayidx691, align 1, !tbaa !12
  %conv692 = zext i8 %434 to i32
  %435 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), align 1, !tbaa !12
  %conv693 = zext i8 %435 to i32
  %sub694 = sub nsw i32 %conv692, %conv693
  store i32 %sub694, i32* %__result690, align 4, !tbaa !5
  %436 = load i64, i64* %__s2_len679, align 8, !tbaa !7
  %cmp695 = icmp ugt i64 %436, 0
  br i1 %cmp695, label %land.lhs.true.697, label %if.end.727

land.lhs.true.697:                                ; preds = %cond.true.684
  %437 = load i32, i32* %__result690, align 4, !tbaa !5
  %cmp698 = icmp eq i32 %437, 0
  br i1 %cmp698, label %if.then.700, label %if.end.727

if.then.700:                                      ; preds = %land.lhs.true.697
  %438 = load i8*, i8** %__s1686, align 8, !tbaa !1
  %arrayidx701 = getelementptr inbounds i8, i8* %438, i64 1
  %439 = load i8, i8* %arrayidx701, align 1, !tbaa !12
  %conv702 = zext i8 %439 to i32
  %440 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i64 1), align 1, !tbaa !12
  %conv703 = zext i8 %440 to i32
  %sub704 = sub nsw i32 %conv702, %conv703
  store i32 %sub704, i32* %__result690, align 4, !tbaa !5
  %441 = load i64, i64* %__s2_len679, align 8, !tbaa !7
  %cmp705 = icmp ugt i64 %441, 1
  br i1 %cmp705, label %land.lhs.true.707, label %if.end.726

land.lhs.true.707:                                ; preds = %if.then.700
  %442 = load i32, i32* %__result690, align 4, !tbaa !5
  %cmp708 = icmp eq i32 %442, 0
  br i1 %cmp708, label %if.then.710, label %if.end.726

if.then.710:                                      ; preds = %land.lhs.true.707
  %443 = load i8*, i8** %__s1686, align 8, !tbaa !1
  %arrayidx711 = getelementptr inbounds i8, i8* %443, i64 2
  %444 = load i8, i8* %arrayidx711, align 1, !tbaa !12
  %conv712 = zext i8 %444 to i32
  %445 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i64 2), align 1, !tbaa !12
  %conv713 = zext i8 %445 to i32
  %sub714 = sub nsw i32 %conv712, %conv713
  store i32 %sub714, i32* %__result690, align 4, !tbaa !5
  %446 = load i64, i64* %__s2_len679, align 8, !tbaa !7
  %cmp715 = icmp ugt i64 %446, 2
  br i1 %cmp715, label %land.lhs.true.717, label %if.end.725

land.lhs.true.717:                                ; preds = %if.then.710
  %447 = load i32, i32* %__result690, align 4, !tbaa !5
  %cmp718 = icmp eq i32 %447, 0
  br i1 %cmp718, label %if.then.720, label %if.end.725

if.then.720:                                      ; preds = %land.lhs.true.717
  %448 = load i8*, i8** %__s1686, align 8, !tbaa !1
  %arrayidx721 = getelementptr inbounds i8, i8* %448, i64 3
  %449 = load i8, i8* %arrayidx721, align 1, !tbaa !12
  %conv722 = zext i8 %449 to i32
  %450 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i64 3), align 1, !tbaa !12
  %conv723 = zext i8 %450 to i32
  %sub724 = sub nsw i32 %conv722, %conv723
  store i32 %sub724, i32* %__result690, align 4, !tbaa !5
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.720, %land.lhs.true.717, %if.then.710
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725, %land.lhs.true.707, %if.then.700
  br label %if.end.727

if.end.727:                                       ; preds = %if.end.726, %land.lhs.true.697, %cond.true.684
  %451 = load i32, i32* %__result690, align 4, !tbaa !5
  store i32 %451, i32* %tmp728, !tbaa !5
  %452 = bitcast i32* %__result690 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast i8** %__s1686 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %453) #1
  %454 = load i32, i32* %tmp728, !tbaa !5
  br label %cond.end.733

cond.false.729:                                   ; preds = %land.lhs.true.681, %if.end.675
  %455 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv730 = getelementptr inbounds %struct.mailer, %struct.mailer* %455, i32 0, i32 8
  %456 = load i8**, i8*** %m_argv730, align 8, !tbaa !47
  %arrayidx731 = getelementptr inbounds i8*, i8** %456, i64 0
  %457 = load i8*, i8** %arrayidx731, align 8, !tbaa !1
  %call732 = call i32 @strcmp(i8* %457, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)) #1
  br label %cond.end.733

cond.end.733:                                     ; preds = %cond.false.729, %if.end.727
  %cond734 = phi i32 [ %454, %if.end.727 ], [ %call732, %cond.false.729 ]
  store i32 %cond734, i32* %tmp680, !tbaa !5
  %458 = bitcast i64* %__s2_len679 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %458) #1
  %459 = bitcast i64* %__s1_len677 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %459) #1
  %460 = load i32, i32* %tmp680, !tbaa !5
  %cmp735 = icmp ne i32 %460, 0
  br i1 %cmp735, label %land.lhs.true.737, label %if.end.803

land.lhs.true.737:                                ; preds = %cond.end.733
  %461 = bitcast i64* %__s1_len739 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %461) #1
  %462 = bitcast i64* %__s2_len741 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %462) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.73 to i64)), i64 1), label %land.lhs.true.743, label %cond.false.791

land.lhs.true.743:                                ; preds = %land.lhs.true.737
  store i64 4, i64* %__s2_len741, align 8, !tbaa !7
  %463 = load i64, i64* %__s2_len741, align 8, !tbaa !7
  %cmp744 = icmp ult i64 %463, 4
  br i1 %cmp744, label %cond.true.746, label %cond.false.791

cond.true.746:                                    ; preds = %land.lhs.true.743
  %464 = bitcast i8** %__s1748 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %464) #1
  %465 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv749 = getelementptr inbounds %struct.mailer, %struct.mailer* %465, i32 0, i32 8
  %466 = load i8**, i8*** %m_argv749, align 8, !tbaa !47
  %arrayidx750 = getelementptr inbounds i8*, i8** %466, i64 0
  %467 = load i8*, i8** %arrayidx750, align 8, !tbaa !1
  store i8* %467, i8** %__s1748, align 8, !tbaa !1
  %468 = bitcast i32* %__result752 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %468) #1
  %469 = load i8*, i8** %__s1748, align 8, !tbaa !1
  %arrayidx753 = getelementptr inbounds i8, i8* %469, i64 0
  %470 = load i8, i8* %arrayidx753, align 1, !tbaa !12
  %conv754 = zext i8 %470 to i32
  %471 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), align 1, !tbaa !12
  %conv755 = zext i8 %471 to i32
  %sub756 = sub nsw i32 %conv754, %conv755
  store i32 %sub756, i32* %__result752, align 4, !tbaa !5
  %472 = load i64, i64* %__s2_len741, align 8, !tbaa !7
  %cmp757 = icmp ugt i64 %472, 0
  br i1 %cmp757, label %land.lhs.true.759, label %if.end.789

land.lhs.true.759:                                ; preds = %cond.true.746
  %473 = load i32, i32* %__result752, align 4, !tbaa !5
  %cmp760 = icmp eq i32 %473, 0
  br i1 %cmp760, label %if.then.762, label %if.end.789

if.then.762:                                      ; preds = %land.lhs.true.759
  %474 = load i8*, i8** %__s1748, align 8, !tbaa !1
  %arrayidx763 = getelementptr inbounds i8, i8* %474, i64 1
  %475 = load i8, i8* %arrayidx763, align 1, !tbaa !12
  %conv764 = zext i8 %475 to i32
  %476 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 1), align 1, !tbaa !12
  %conv765 = zext i8 %476 to i32
  %sub766 = sub nsw i32 %conv764, %conv765
  store i32 %sub766, i32* %__result752, align 4, !tbaa !5
  %477 = load i64, i64* %__s2_len741, align 8, !tbaa !7
  %cmp767 = icmp ugt i64 %477, 1
  br i1 %cmp767, label %land.lhs.true.769, label %if.end.788

land.lhs.true.769:                                ; preds = %if.then.762
  %478 = load i32, i32* %__result752, align 4, !tbaa !5
  %cmp770 = icmp eq i32 %478, 0
  br i1 %cmp770, label %if.then.772, label %if.end.788

if.then.772:                                      ; preds = %land.lhs.true.769
  %479 = load i8*, i8** %__s1748, align 8, !tbaa !1
  %arrayidx773 = getelementptr inbounds i8, i8* %479, i64 2
  %480 = load i8, i8* %arrayidx773, align 1, !tbaa !12
  %conv774 = zext i8 %480 to i32
  %481 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 2), align 1, !tbaa !12
  %conv775 = zext i8 %481 to i32
  %sub776 = sub nsw i32 %conv774, %conv775
  store i32 %sub776, i32* %__result752, align 4, !tbaa !5
  %482 = load i64, i64* %__s2_len741, align 8, !tbaa !7
  %cmp777 = icmp ugt i64 %482, 2
  br i1 %cmp777, label %land.lhs.true.779, label %if.end.787

land.lhs.true.779:                                ; preds = %if.then.772
  %483 = load i32, i32* %__result752, align 4, !tbaa !5
  %cmp780 = icmp eq i32 %483, 0
  br i1 %cmp780, label %if.then.782, label %if.end.787

if.then.782:                                      ; preds = %land.lhs.true.779
  %484 = load i8*, i8** %__s1748, align 8, !tbaa !1
  %arrayidx783 = getelementptr inbounds i8, i8* %484, i64 3
  %485 = load i8, i8* %arrayidx783, align 1, !tbaa !12
  %conv784 = zext i8 %485 to i32
  %486 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 3), align 1, !tbaa !12
  %conv785 = zext i8 %486 to i32
  %sub786 = sub nsw i32 %conv784, %conv785
  store i32 %sub786, i32* %__result752, align 4, !tbaa !5
  br label %if.end.787

if.end.787:                                       ; preds = %if.then.782, %land.lhs.true.779, %if.then.772
  br label %if.end.788

if.end.788:                                       ; preds = %if.end.787, %land.lhs.true.769, %if.then.762
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %land.lhs.true.759, %cond.true.746
  %487 = load i32, i32* %__result752, align 4, !tbaa !5
  store i32 %487, i32* %tmp790, !tbaa !5
  %488 = bitcast i32* %__result752 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %489 = bitcast i8** %__s1748 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %489) #1
  %490 = load i32, i32* %tmp790, !tbaa !5
  br label %cond.end.795

cond.false.791:                                   ; preds = %land.lhs.true.743, %land.lhs.true.737
  %491 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv792 = getelementptr inbounds %struct.mailer, %struct.mailer* %491, i32 0, i32 8
  %492 = load i8**, i8*** %m_argv792, align 8, !tbaa !47
  %arrayidx793 = getelementptr inbounds i8*, i8** %492, i64 0
  %493 = load i8*, i8** %arrayidx793, align 8, !tbaa !1
  %call794 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #1
  br label %cond.end.795

cond.end.795:                                     ; preds = %cond.false.791, %if.end.789
  %cond796 = phi i32 [ %490, %if.end.789 ], [ %call794, %cond.false.791 ]
  store i32 %cond796, i32* %tmp742, !tbaa !5
  %494 = bitcast i64* %__s2_len741 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %494) #1
  %495 = bitcast i64* %__s1_len739 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %495) #1
  %496 = load i32, i32* %tmp742, !tbaa !5
  %cmp797 = icmp ne i32 %496, 0
  br i1 %cmp797, label %if.then.799, label %if.end.803

if.then.799:                                      ; preds = %cond.end.795
  %497 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name800 = getelementptr inbounds %struct.mailer, %struct.mailer* %497, i32 0, i32 0
  %498 = load i8*, i8** %m_name800, align 8, !tbaa !36
  %499 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer801 = getelementptr inbounds %struct.mailer, %struct.mailer* %499, i32 0, i32 1
  %500 = load i8*, i8** %m_mailer801, align 8, !tbaa !41
  %call802 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.74, i32 0, i32 0), i8* %498, i8* %500, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.803

if.end.803:                                       ; preds = %if.then.799, %cond.end.795, %cond.end.733
  %501 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mtatype804 = getelementptr inbounds %struct.mailer, %struct.mailer* %501, i32 0, i32 2
  %502 = load i8*, i8** %m_mtatype804, align 8, !tbaa !57
  %cmp805 = icmp eq i8* %502, null
  br i1 %cmp805, label %if.then.807, label %if.end.809

if.then.807:                                      ; preds = %if.end.803
  %503 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mtatype808 = getelementptr inbounds %struct.mailer, %struct.mailer* %503, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8** %m_mtatype808, align 8, !tbaa !57
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.807, %if.end.803
  %504 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_addrtype810 = getelementptr inbounds %struct.mailer, %struct.mailer* %504, i32 0, i32 3
  %505 = load i8*, i8** %m_addrtype810, align 8, !tbaa !58
  %cmp811 = icmp eq i8* %505, null
  br i1 %cmp811, label %if.then.813, label %if.end.815

if.then.813:                                      ; preds = %if.end.809
  %506 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_addrtype814 = getelementptr inbounds %struct.mailer, %struct.mailer* %506, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8** %m_addrtype814, align 8, !tbaa !58
  br label %if.end.815

if.end.815:                                       ; preds = %if.then.813, %if.end.809
  %507 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype816 = getelementptr inbounds %struct.mailer, %struct.mailer* %507, i32 0, i32 4
  %508 = load i8*, i8** %m_diagtype816, align 8, !tbaa !59
  %cmp817 = icmp eq i8* %508, null
  br i1 %cmp817, label %if.then.819, label %if.end.891

if.then.819:                                      ; preds = %if.end.815
  %509 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv820 = getelementptr inbounds %struct.mailer, %struct.mailer* %509, i32 0, i32 8
  %510 = load i8**, i8*** %m_argv820, align 8, !tbaa !47
  %arrayidx821 = getelementptr inbounds i8*, i8** %510, i64 0
  %511 = load i8*, i8** %arrayidx821, align 8, !tbaa !1
  %cmp822 = icmp ne i8* %511, null
  br i1 %cmp822, label %land.lhs.true.824, label %if.else.888

land.lhs.true.824:                                ; preds = %if.then.819
  %512 = bitcast i64* %__s1_len826 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %512) #1
  %513 = bitcast i64* %__s2_len828 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %513) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.73 to i64)), i64 1), label %land.lhs.true.830, label %cond.false.878

land.lhs.true.830:                                ; preds = %land.lhs.true.824
  store i64 4, i64* %__s2_len828, align 8, !tbaa !7
  %514 = load i64, i64* %__s2_len828, align 8, !tbaa !7
  %cmp831 = icmp ult i64 %514, 4
  br i1 %cmp831, label %cond.true.833, label %cond.false.878

cond.true.833:                                    ; preds = %land.lhs.true.830
  %515 = bitcast i8** %__s1835 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %515) #1
  %516 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv836 = getelementptr inbounds %struct.mailer, %struct.mailer* %516, i32 0, i32 8
  %517 = load i8**, i8*** %m_argv836, align 8, !tbaa !47
  %arrayidx837 = getelementptr inbounds i8*, i8** %517, i64 0
  %518 = load i8*, i8** %arrayidx837, align 8, !tbaa !1
  store i8* %518, i8** %__s1835, align 8, !tbaa !1
  %519 = bitcast i32* %__result839 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %519) #1
  %520 = load i8*, i8** %__s1835, align 8, !tbaa !1
  %arrayidx840 = getelementptr inbounds i8, i8* %520, i64 0
  %521 = load i8, i8* %arrayidx840, align 1, !tbaa !12
  %conv841 = zext i8 %521 to i32
  %522 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), align 1, !tbaa !12
  %conv842 = zext i8 %522 to i32
  %sub843 = sub nsw i32 %conv841, %conv842
  store i32 %sub843, i32* %__result839, align 4, !tbaa !5
  %523 = load i64, i64* %__s2_len828, align 8, !tbaa !7
  %cmp844 = icmp ugt i64 %523, 0
  br i1 %cmp844, label %land.lhs.true.846, label %if.end.876

land.lhs.true.846:                                ; preds = %cond.true.833
  %524 = load i32, i32* %__result839, align 4, !tbaa !5
  %cmp847 = icmp eq i32 %524, 0
  br i1 %cmp847, label %if.then.849, label %if.end.876

if.then.849:                                      ; preds = %land.lhs.true.846
  %525 = load i8*, i8** %__s1835, align 8, !tbaa !1
  %arrayidx850 = getelementptr inbounds i8, i8* %525, i64 1
  %526 = load i8, i8* %arrayidx850, align 1, !tbaa !12
  %conv851 = zext i8 %526 to i32
  %527 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 1), align 1, !tbaa !12
  %conv852 = zext i8 %527 to i32
  %sub853 = sub nsw i32 %conv851, %conv852
  store i32 %sub853, i32* %__result839, align 4, !tbaa !5
  %528 = load i64, i64* %__s2_len828, align 8, !tbaa !7
  %cmp854 = icmp ugt i64 %528, 1
  br i1 %cmp854, label %land.lhs.true.856, label %if.end.875

land.lhs.true.856:                                ; preds = %if.then.849
  %529 = load i32, i32* %__result839, align 4, !tbaa !5
  %cmp857 = icmp eq i32 %529, 0
  br i1 %cmp857, label %if.then.859, label %if.end.875

if.then.859:                                      ; preds = %land.lhs.true.856
  %530 = load i8*, i8** %__s1835, align 8, !tbaa !1
  %arrayidx860 = getelementptr inbounds i8, i8* %530, i64 2
  %531 = load i8, i8* %arrayidx860, align 1, !tbaa !12
  %conv861 = zext i8 %531 to i32
  %532 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 2), align 1, !tbaa !12
  %conv862 = zext i8 %532 to i32
  %sub863 = sub nsw i32 %conv861, %conv862
  store i32 %sub863, i32* %__result839, align 4, !tbaa !5
  %533 = load i64, i64* %__s2_len828, align 8, !tbaa !7
  %cmp864 = icmp ugt i64 %533, 2
  br i1 %cmp864, label %land.lhs.true.866, label %if.end.874

land.lhs.true.866:                                ; preds = %if.then.859
  %534 = load i32, i32* %__result839, align 4, !tbaa !5
  %cmp867 = icmp eq i32 %534, 0
  br i1 %cmp867, label %if.then.869, label %if.end.874

if.then.869:                                      ; preds = %land.lhs.true.866
  %535 = load i8*, i8** %__s1835, align 8, !tbaa !1
  %arrayidx870 = getelementptr inbounds i8, i8* %535, i64 3
  %536 = load i8, i8* %arrayidx870, align 1, !tbaa !12
  %conv871 = zext i8 %536 to i32
  %537 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 3), align 1, !tbaa !12
  %conv872 = zext i8 %537 to i32
  %sub873 = sub nsw i32 %conv871, %conv872
  store i32 %sub873, i32* %__result839, align 4, !tbaa !5
  br label %if.end.874

if.end.874:                                       ; preds = %if.then.869, %land.lhs.true.866, %if.then.859
  br label %if.end.875

if.end.875:                                       ; preds = %if.end.874, %land.lhs.true.856, %if.then.849
  br label %if.end.876

if.end.876:                                       ; preds = %if.end.875, %land.lhs.true.846, %cond.true.833
  %538 = load i32, i32* %__result839, align 4, !tbaa !5
  store i32 %538, i32* %tmp877, !tbaa !5
  %539 = bitcast i32* %__result839 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %539) #1
  %540 = bitcast i8** %__s1835 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %540) #1
  %541 = load i32, i32* %tmp877, !tbaa !5
  br label %cond.end.882

cond.false.878:                                   ; preds = %land.lhs.true.830, %land.lhs.true.824
  %542 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv879 = getelementptr inbounds %struct.mailer, %struct.mailer* %542, i32 0, i32 8
  %543 = load i8**, i8*** %m_argv879, align 8, !tbaa !47
  %arrayidx880 = getelementptr inbounds i8*, i8** %543, i64 0
  %544 = load i8*, i8** %arrayidx880, align 8, !tbaa !1
  %call881 = call i32 @strcmp(i8* %544, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #1
  br label %cond.end.882

cond.end.882:                                     ; preds = %cond.false.878, %if.end.876
  %cond883 = phi i32 [ %541, %if.end.876 ], [ %call881, %cond.false.878 ]
  store i32 %cond883, i32* %tmp829, !tbaa !5
  %545 = bitcast i64* %__s2_len828 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %545) #1
  %546 = bitcast i64* %__s1_len826 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %546) #1
  %547 = load i32, i32* %tmp829, !tbaa !5
  %cmp884 = icmp eq i32 %547, 0
  br i1 %cmp884, label %if.then.886, label %if.else.888

if.then.886:                                      ; preds = %cond.end.882
  %548 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype887 = getelementptr inbounds %struct.mailer, %struct.mailer* %548, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8** %m_diagtype887, align 8, !tbaa !59
  br label %if.end.890

if.else.888:                                      ; preds = %cond.end.882, %if.then.819
  %549 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_diagtype889 = getelementptr inbounds %struct.mailer, %struct.mailer* %549, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8** %m_diagtype889, align 8, !tbaa !59
  br label %if.end.890

if.end.890:                                       ; preds = %if.else.888, %if.then.886
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %if.end.815
  br label %if.end.1047

if.else.892:                                      ; preds = %cond.end.651
  %550 = bitcast i64* %__s1_len894 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %550) #1
  %551 = bitcast i64* %__s2_len896 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %551) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.77 to i64)), i64 1), label %land.lhs.true.898, label %cond.false.945

land.lhs.true.898:                                ; preds = %if.else.892
  store i64 6, i64* %__s2_len896, align 8, !tbaa !7
  %552 = load i64, i64* %__s2_len896, align 8, !tbaa !7
  %cmp899 = icmp ult i64 %552, 4
  br i1 %cmp899, label %cond.true.901, label %cond.false.945

cond.true.901:                                    ; preds = %land.lhs.true.898
  %553 = bitcast i8** %__s1903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %553) #1
  %554 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer904 = getelementptr inbounds %struct.mailer, %struct.mailer* %554, i32 0, i32 1
  %555 = load i8*, i8** %m_mailer904, align 8, !tbaa !41
  store i8* %555, i8** %__s1903, align 8, !tbaa !1
  %556 = bitcast i32* %__result906 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %556) #1
  %557 = load i8*, i8** %__s1903, align 8, !tbaa !1
  %arrayidx907 = getelementptr inbounds i8, i8* %557, i64 0
  %558 = load i8, i8* %arrayidx907, align 1, !tbaa !12
  %conv908 = zext i8 %558 to i32
  %559 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), align 1, !tbaa !12
  %conv909 = zext i8 %559 to i32
  %sub910 = sub nsw i32 %conv908, %conv909
  store i32 %sub910, i32* %__result906, align 4, !tbaa !5
  %560 = load i64, i64* %__s2_len896, align 8, !tbaa !7
  %cmp911 = icmp ugt i64 %560, 0
  br i1 %cmp911, label %land.lhs.true.913, label %if.end.943

land.lhs.true.913:                                ; preds = %cond.true.901
  %561 = load i32, i32* %__result906, align 4, !tbaa !5
  %cmp914 = icmp eq i32 %561, 0
  br i1 %cmp914, label %if.then.916, label %if.end.943

if.then.916:                                      ; preds = %land.lhs.true.913
  %562 = load i8*, i8** %__s1903, align 8, !tbaa !1
  %arrayidx917 = getelementptr inbounds i8, i8* %562, i64 1
  %563 = load i8, i8* %arrayidx917, align 1, !tbaa !12
  %conv918 = zext i8 %563 to i32
  %564 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i64 1), align 1, !tbaa !12
  %conv919 = zext i8 %564 to i32
  %sub920 = sub nsw i32 %conv918, %conv919
  store i32 %sub920, i32* %__result906, align 4, !tbaa !5
  %565 = load i64, i64* %__s2_len896, align 8, !tbaa !7
  %cmp921 = icmp ugt i64 %565, 1
  br i1 %cmp921, label %land.lhs.true.923, label %if.end.942

land.lhs.true.923:                                ; preds = %if.then.916
  %566 = load i32, i32* %__result906, align 4, !tbaa !5
  %cmp924 = icmp eq i32 %566, 0
  br i1 %cmp924, label %if.then.926, label %if.end.942

if.then.926:                                      ; preds = %land.lhs.true.923
  %567 = load i8*, i8** %__s1903, align 8, !tbaa !1
  %arrayidx927 = getelementptr inbounds i8, i8* %567, i64 2
  %568 = load i8, i8* %arrayidx927, align 1, !tbaa !12
  %conv928 = zext i8 %568 to i32
  %569 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i64 2), align 1, !tbaa !12
  %conv929 = zext i8 %569 to i32
  %sub930 = sub nsw i32 %conv928, %conv929
  store i32 %sub930, i32* %__result906, align 4, !tbaa !5
  %570 = load i64, i64* %__s2_len896, align 8, !tbaa !7
  %cmp931 = icmp ugt i64 %570, 2
  br i1 %cmp931, label %land.lhs.true.933, label %if.end.941

land.lhs.true.933:                                ; preds = %if.then.926
  %571 = load i32, i32* %__result906, align 4, !tbaa !5
  %cmp934 = icmp eq i32 %571, 0
  br i1 %cmp934, label %if.then.936, label %if.end.941

if.then.936:                                      ; preds = %land.lhs.true.933
  %572 = load i8*, i8** %__s1903, align 8, !tbaa !1
  %arrayidx937 = getelementptr inbounds i8, i8* %572, i64 3
  %573 = load i8, i8* %arrayidx937, align 1, !tbaa !12
  %conv938 = zext i8 %573 to i32
  %574 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i64 3), align 1, !tbaa !12
  %conv939 = zext i8 %574 to i32
  %sub940 = sub nsw i32 %conv938, %conv939
  store i32 %sub940, i32* %__result906, align 4, !tbaa !5
  br label %if.end.941

if.end.941:                                       ; preds = %if.then.936, %land.lhs.true.933, %if.then.926
  br label %if.end.942

if.end.942:                                       ; preds = %if.end.941, %land.lhs.true.923, %if.then.916
  br label %if.end.943

if.end.943:                                       ; preds = %if.end.942, %land.lhs.true.913, %cond.true.901
  %575 = load i32, i32* %__result906, align 4, !tbaa !5
  store i32 %575, i32* %tmp944, !tbaa !5
  %576 = bitcast i32* %__result906 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %576) #1
  %577 = bitcast i8** %__s1903 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %577) #1
  %578 = load i32, i32* %tmp944, !tbaa !5
  br label %cond.end.948

cond.false.945:                                   ; preds = %land.lhs.true.898, %if.else.892
  %579 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mailer946 = getelementptr inbounds %struct.mailer, %struct.mailer* %579, i32 0, i32 1
  %580 = load i8*, i8** %m_mailer946, align 8, !tbaa !41
  %call947 = call i32 @strcmp(i8* %580, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0)) #1
  br label %cond.end.948

cond.end.948:                                     ; preds = %cond.false.945, %if.end.943
  %cond949 = phi i32 [ %578, %if.end.943 ], [ %call947, %cond.false.945 ]
  store i32 %cond949, i32* %tmp897, !tbaa !5
  %581 = bitcast i64* %__s2_len896 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %581) #1
  %582 = bitcast i64* %__s1_len894 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %582) #1
  %583 = load i32, i32* %tmp897, !tbaa !5
  %cmp950 = icmp eq i32 %583, 0
  br i1 %cmp950, label %if.then.952, label %if.end.1046

if.then.952:                                      ; preds = %cond.end.948
  %584 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv953 = getelementptr inbounds %struct.mailer, %struct.mailer* %584, i32 0, i32 8
  %585 = load i8**, i8*** %m_argv953, align 8, !tbaa !47
  %arrayidx954 = getelementptr inbounds i8*, i8** %585, i64 0
  %586 = load i8*, i8** %arrayidx954, align 8, !tbaa !1
  %cmp955 = icmp eq i8* %586, null
  br i1 %cmp955, label %if.then.967, label %lor.lhs.false.957

lor.lhs.false.957:                                ; preds = %if.then.952
  %587 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv958 = getelementptr inbounds %struct.mailer, %struct.mailer* %587, i32 0, i32 8
  %588 = load i8**, i8*** %m_argv958, align 8, !tbaa !47
  %arrayidx959 = getelementptr inbounds i8*, i8** %588, i64 1
  %589 = load i8*, i8** %arrayidx959, align 8, !tbaa !1
  %cmp960 = icmp eq i8* %589, null
  br i1 %cmp960, label %if.then.967, label %lor.lhs.false.962

lor.lhs.false.962:                                ; preds = %lor.lhs.false.957
  %590 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv963 = getelementptr inbounds %struct.mailer, %struct.mailer* %590, i32 0, i32 8
  %591 = load i8**, i8*** %m_argv963, align 8, !tbaa !47
  %arrayidx964 = getelementptr inbounds i8*, i8** %591, i64 2
  %592 = load i8*, i8** %arrayidx964, align 8, !tbaa !1
  %cmp965 = icmp ne i8* %592, null
  br i1 %cmp965, label %if.then.967, label %if.else.980

if.then.967:                                      ; preds = %lor.lhs.false.962, %lor.lhs.false.957, %if.then.952
  %593 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name968 = getelementptr inbounds %struct.mailer, %struct.mailer* %593, i32 0, i32 0
  %594 = load i8*, i8** %m_name968, align 8, !tbaa !36
  %595 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv969 = getelementptr inbounds %struct.mailer, %struct.mailer* %595, i32 0, i32 8
  %596 = load i8**, i8*** %m_argv969, align 8, !tbaa !47
  %arrayidx970 = getelementptr inbounds i8*, i8** %596, i64 0
  %597 = load i8*, i8** %arrayidx970, align 8, !tbaa !1
  %cmp971 = icmp eq i8* %597, null
  br i1 %cmp971, label %lor.end.978, label %lor.rhs.973

lor.rhs.973:                                      ; preds = %if.then.967
  %598 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv974 = getelementptr inbounds %struct.mailer, %struct.mailer* %598, i32 0, i32 8
  %599 = load i8**, i8*** %m_argv974, align 8, !tbaa !47
  %arrayidx975 = getelementptr inbounds i8*, i8** %599, i64 1
  %600 = load i8*, i8** %arrayidx975, align 8, !tbaa !1
  %cmp976 = icmp eq i8* %600, null
  br label %lor.end.978

lor.end.978:                                      ; preds = %lor.rhs.973, %if.then.967
  %601 = phi i1 [ true, %if.then.967 ], [ %cmp976, %lor.rhs.973 ]
  %cond979 = select i1 %601, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i32 0, i32 0), i8* %594, i8* %cond979)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.else.980:                                      ; preds = %lor.lhs.false.962
  %602 = bitcast i64* %__s1_len982 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %602) #1
  %603 = bitcast i64* %__s2_len984 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %603) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.73 to i64)), i64 1), label %land.lhs.true.986, label %cond.false.1034

land.lhs.true.986:                                ; preds = %if.else.980
  store i64 4, i64* %__s2_len984, align 8, !tbaa !7
  %604 = load i64, i64* %__s2_len984, align 8, !tbaa !7
  %cmp987 = icmp ult i64 %604, 4
  br i1 %cmp987, label %cond.true.989, label %cond.false.1034

cond.true.989:                                    ; preds = %land.lhs.true.986
  %605 = bitcast i8** %__s1991 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %605) #1
  %606 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv992 = getelementptr inbounds %struct.mailer, %struct.mailer* %606, i32 0, i32 8
  %607 = load i8**, i8*** %m_argv992, align 8, !tbaa !47
  %arrayidx993 = getelementptr inbounds i8*, i8** %607, i64 0
  %608 = load i8*, i8** %arrayidx993, align 8, !tbaa !1
  store i8* %608, i8** %__s1991, align 8, !tbaa !1
  %609 = bitcast i32* %__result995 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %609) #1
  %610 = load i8*, i8** %__s1991, align 8, !tbaa !1
  %arrayidx996 = getelementptr inbounds i8, i8* %610, i64 0
  %611 = load i8, i8* %arrayidx996, align 1, !tbaa !12
  %conv997 = zext i8 %611 to i32
  %612 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), align 1, !tbaa !12
  %conv998 = zext i8 %612 to i32
  %sub999 = sub nsw i32 %conv997, %conv998
  store i32 %sub999, i32* %__result995, align 4, !tbaa !5
  %613 = load i64, i64* %__s2_len984, align 8, !tbaa !7
  %cmp1000 = icmp ugt i64 %613, 0
  br i1 %cmp1000, label %land.lhs.true.1002, label %if.end.1032

land.lhs.true.1002:                               ; preds = %cond.true.989
  %614 = load i32, i32* %__result995, align 4, !tbaa !5
  %cmp1003 = icmp eq i32 %614, 0
  br i1 %cmp1003, label %if.then.1005, label %if.end.1032

if.then.1005:                                     ; preds = %land.lhs.true.1002
  %615 = load i8*, i8** %__s1991, align 8, !tbaa !1
  %arrayidx1006 = getelementptr inbounds i8, i8* %615, i64 1
  %616 = load i8, i8* %arrayidx1006, align 1, !tbaa !12
  %conv1007 = zext i8 %616 to i32
  %617 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 1), align 1, !tbaa !12
  %conv1008 = zext i8 %617 to i32
  %sub1009 = sub nsw i32 %conv1007, %conv1008
  store i32 %sub1009, i32* %__result995, align 4, !tbaa !5
  %618 = load i64, i64* %__s2_len984, align 8, !tbaa !7
  %cmp1010 = icmp ugt i64 %618, 1
  br i1 %cmp1010, label %land.lhs.true.1012, label %if.end.1031

land.lhs.true.1012:                               ; preds = %if.then.1005
  %619 = load i32, i32* %__result995, align 4, !tbaa !5
  %cmp1013 = icmp eq i32 %619, 0
  br i1 %cmp1013, label %if.then.1015, label %if.end.1031

if.then.1015:                                     ; preds = %land.lhs.true.1012
  %620 = load i8*, i8** %__s1991, align 8, !tbaa !1
  %arrayidx1016 = getelementptr inbounds i8, i8* %620, i64 2
  %621 = load i8, i8* %arrayidx1016, align 1, !tbaa !12
  %conv1017 = zext i8 %621 to i32
  %622 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 2), align 1, !tbaa !12
  %conv1018 = zext i8 %622 to i32
  %sub1019 = sub nsw i32 %conv1017, %conv1018
  store i32 %sub1019, i32* %__result995, align 4, !tbaa !5
  %623 = load i64, i64* %__s2_len984, align 8, !tbaa !7
  %cmp1020 = icmp ugt i64 %623, 2
  br i1 %cmp1020, label %land.lhs.true.1022, label %if.end.1030

land.lhs.true.1022:                               ; preds = %if.then.1015
  %624 = load i32, i32* %__result995, align 4, !tbaa !5
  %cmp1023 = icmp eq i32 %624, 0
  br i1 %cmp1023, label %if.then.1025, label %if.end.1030

if.then.1025:                                     ; preds = %land.lhs.true.1022
  %625 = load i8*, i8** %__s1991, align 8, !tbaa !1
  %arrayidx1026 = getelementptr inbounds i8, i8* %625, i64 3
  %626 = load i8, i8* %arrayidx1026, align 1, !tbaa !12
  %conv1027 = zext i8 %626 to i32
  %627 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i64 3), align 1, !tbaa !12
  %conv1028 = zext i8 %627 to i32
  %sub1029 = sub nsw i32 %conv1027, %conv1028
  store i32 %sub1029, i32* %__result995, align 4, !tbaa !5
  br label %if.end.1030

if.end.1030:                                      ; preds = %if.then.1025, %land.lhs.true.1022, %if.then.1015
  br label %if.end.1031

if.end.1031:                                      ; preds = %if.end.1030, %land.lhs.true.1012, %if.then.1005
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.end.1031, %land.lhs.true.1002, %cond.true.989
  %628 = load i32, i32* %__result995, align 4, !tbaa !5
  store i32 %628, i32* %tmp1033, !tbaa !5
  %629 = bitcast i32* %__result995 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %629) #1
  %630 = bitcast i8** %__s1991 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %630) #1
  %631 = load i32, i32* %tmp1033, !tbaa !5
  br label %cond.end.1038

cond.false.1034:                                  ; preds = %land.lhs.true.986, %if.else.980
  %632 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv1035 = getelementptr inbounds %struct.mailer, %struct.mailer* %632, i32 0, i32 8
  %633 = load i8**, i8*** %m_argv1035, align 8, !tbaa !47
  %arrayidx1036 = getelementptr inbounds i8*, i8** %633, i64 0
  %634 = load i8*, i8** %arrayidx1036, align 8, !tbaa !1
  %call1037 = call i32 @strcmp(i8* %634, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #1
  br label %cond.end.1038

cond.end.1038:                                    ; preds = %cond.false.1034, %if.end.1032
  %cond1039 = phi i32 [ %631, %if.end.1032 ], [ %call1037, %cond.false.1034 ]
  store i32 %cond1039, i32* %tmp985, !tbaa !5
  %635 = bitcast i64* %__s2_len984 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %635) #1
  %636 = bitcast i64* %__s1_len982 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %636) #1
  %637 = load i32, i32* %tmp985, !tbaa !5
  %cmp1040 = icmp ne i32 %637, 0
  br i1 %cmp1040, label %if.then.1042, label %if.end.1044

if.then.1042:                                     ; preds = %cond.end.1038
  %638 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name1043 = getelementptr inbounds %struct.mailer, %struct.mailer* %638, i32 0, i32 0
  %639 = load i8*, i8** %m_name1043, align 8, !tbaa !36
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.81, i32 0, i32 0), i8* %639)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1110

if.end.1044:                                      ; preds = %cond.end.1038
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.end.1044
  br label %if.end.1046

if.end.1046:                                      ; preds = %if.end.1045, %cond.end.948
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.end.1046, %if.end.891
  %640 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_eol1048 = getelementptr inbounds %struct.mailer, %struct.mailer* %640, i32 0, i32 13
  %641 = load i8*, i8** %m_eol1048, align 8, !tbaa !46
  %cmp1049 = icmp eq i8* %641, null
  br i1 %cmp1049, label %if.then.1051, label %if.end.1090

if.then.1051:                                     ; preds = %if.end.1047
  %642 = bitcast i8*** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %642) #1
  %643 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_argv1053 = getelementptr inbounds %struct.mailer, %struct.mailer* %643, i32 0, i32 8
  %644 = load i8**, i8*** %m_argv1053, align 8, !tbaa !47
  store i8** %644, i8*** %pp, align 8, !tbaa !1
  br label %for.cond.1054

for.cond.1054:                                    ; preds = %for.inc.1080, %if.then.1051
  %645 = load i8**, i8*** %pp, align 8, !tbaa !1
  %646 = load i8*, i8** %645, align 8, !tbaa !1
  %cmp1055 = icmp ne i8* %646, null
  br i1 %cmp1055, label %for.body.1057, label %for.end.1082

for.body.1057:                                    ; preds = %for.cond.1054
  %647 = load i8**, i8*** %pp, align 8, !tbaa !1
  %648 = load i8*, i8** %647, align 8, !tbaa !1
  store i8* %648, i8** %p, align 8, !tbaa !1
  br label %for.cond.1058

for.cond.1058:                                    ; preds = %if.end.1073, %for.body.1057
  %649 = load i8*, i8** %p, align 8, !tbaa !1
  %650 = load i8, i8* %649, align 1, !tbaa !12
  %conv1059 = sext i8 %650 to i32
  %cmp1060 = icmp ne i32 %conv1059, 0
  br i1 %cmp1060, label %for.body.1062, label %for.end.1074

for.body.1062:                                    ; preds = %for.cond.1058
  %651 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1063 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %incdec.ptr1063, i8** %p, align 8, !tbaa !1
  %652 = load i8, i8* %651, align 1, !tbaa !12
  %conv1064 = sext i8 %652 to i32
  %and1065 = and i32 %conv1064, 255
  %cmp1066 = icmp eq i32 %and1065, 129
  br i1 %cmp1066, label %land.lhs.true.1068, label %if.end.1073

land.lhs.true.1068:                               ; preds = %for.body.1062
  %653 = load i8*, i8** %p, align 8, !tbaa !1
  %654 = load i8, i8* %653, align 1, !tbaa !12
  %conv1069 = sext i8 %654 to i32
  %cmp1070 = icmp eq i32 %conv1069, 117
  br i1 %cmp1070, label %if.then.1072, label %if.end.1073

if.then.1072:                                     ; preds = %land.lhs.true.1068
  br label %for.end.1074

if.end.1073:                                      ; preds = %land.lhs.true.1068, %for.body.1062
  br label %for.cond.1058

for.end.1074:                                     ; preds = %if.then.1072, %for.cond.1058
  %655 = load i8*, i8** %p, align 8, !tbaa !1
  %656 = load i8, i8* %655, align 1, !tbaa !12
  %conv1075 = sext i8 %656 to i32
  %cmp1076 = icmp ne i32 %conv1075, 0
  br i1 %cmp1076, label %if.then.1078, label %if.end.1079

if.then.1078:                                     ; preds = %for.end.1074
  br label %for.end.1082

if.end.1079:                                      ; preds = %for.end.1074
  br label %for.inc.1080

for.inc.1080:                                     ; preds = %if.end.1079
  %657 = load i8**, i8*** %pp, align 8, !tbaa !1
  %incdec.ptr1081 = getelementptr inbounds i8*, i8** %657, i32 1
  store i8** %incdec.ptr1081, i8*** %pp, align 8, !tbaa !1
  br label %for.cond.1054

for.end.1082:                                     ; preds = %if.then.1078, %for.cond.1054
  %658 = load i8**, i8*** %pp, align 8, !tbaa !1
  %659 = load i8*, i8** %658, align 8, !tbaa !1
  %cmp1083 = icmp eq i8* %659, null
  br i1 %cmp1083, label %if.then.1085, label %if.else.1087

if.then.1085:                                     ; preds = %for.end.1082
  %660 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_eol1086 = getelementptr inbounds %struct.mailer, %struct.mailer* %660, i32 0, i32 13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i8** %m_eol1086, align 8, !tbaa !46
  br label %if.end.1089

if.else.1087:                                     ; preds = %for.end.1082
  %661 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_eol1088 = getelementptr inbounds %struct.mailer, %struct.mailer* %661, i32 0, i32 13
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8** %m_eol1088, align 8, !tbaa !46
  br label %if.end.1089

if.end.1089:                                      ; preds = %if.else.1087, %if.then.1085
  %662 = bitcast i8*** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %662) #1
  br label %if.end.1090

if.end.1090:                                      ; preds = %if.end.1089, %if.end.1047
  %663 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name1091 = getelementptr inbounds %struct.mailer, %struct.mailer* %663, i32 0, i32 0
  %664 = load i8*, i8** %m_name1091, align 8, !tbaa !36
  %call1092 = call %struct.symtab* @stab(i8* %664, i32 3, i32 1)
  store %struct.symtab* %call1092, %struct.symtab** %s, align 8, !tbaa !1
  %665 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value1093 = getelementptr inbounds %struct.symtab, %struct.symtab* %665, i32 0, i32 3
  %sv_mailer = bitcast %union.anon* %s_value1093 to %struct.mailer**
  %666 = load %struct.mailer*, %struct.mailer** %sv_mailer, align 8, !tbaa !1
  %cmp1094 = icmp ne %struct.mailer* %666, null
  br i1 %cmp1094, label %if.then.1096, label %if.else.1102

if.then.1096:                                     ; preds = %if.end.1090
  %667 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value1097 = getelementptr inbounds %struct.symtab, %struct.symtab* %667, i32 0, i32 3
  %sv_mailer1098 = bitcast %union.anon* %s_value1097 to %struct.mailer**
  %668 = load %struct.mailer*, %struct.mailer** %sv_mailer1098, align 8, !tbaa !1
  %m_mno = getelementptr inbounds %struct.mailer, %struct.mailer* %668, i32 0, i32 6
  %669 = load i16, i16* %m_mno, align 2, !tbaa !67
  %conv1099 = sext i16 %669 to i32
  store i32 %conv1099, i32* %i, align 4, !tbaa !5
  %670 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value1100 = getelementptr inbounds %struct.symtab, %struct.symtab* %670, i32 0, i32 3
  %sv_mailer1101 = bitcast %union.anon* %s_value1100 to %struct.mailer**
  %671 = load %struct.mailer*, %struct.mailer** %sv_mailer1101, align 8, !tbaa !1
  %672 = bitcast %struct.mailer* %671 to i8*
  call void @sm_free_tagged(i8* %672, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1823)
  br label %if.end.1103

if.else.1102:                                     ; preds = %if.end.1090
  %673 = load i32, i32* @makemailer.nextmailer, align 4, !tbaa !5
  %inc = add nsw i32 %673, 1
  store i32 %inc, i32* @makemailer.nextmailer, align 4, !tbaa !5
  store i32 %673, i32* %i, align 4, !tbaa !5
  br label %if.end.1103

if.end.1103:                                      ; preds = %if.else.1102, %if.then.1096
  %674 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %675 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value1104 = getelementptr inbounds %struct.symtab, %struct.symtab* %675, i32 0, i32 3
  %sv_mailer1105 = bitcast %union.anon* %s_value1104 to %struct.mailer**
  store %struct.mailer* %674, %struct.mailer** %sv_mailer1105, align 8, !tbaa !1
  %676 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1106 = sext i32 %676 to i64
  %arrayidx1107 = getelementptr inbounds [26 x %struct.mailer*], [26 x %struct.mailer*]* @Mailer, i32 0, i64 %idxprom1106
  store %struct.mailer* %674, %struct.mailer** %arrayidx1107, align 8, !tbaa !1
  %677 = load i32, i32* %i, align 4, !tbaa !5
  %conv1108 = trunc i32 %677 to i16
  %678 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mno1109 = getelementptr inbounds %struct.mailer, %struct.mailer* %678, i32 0, i32 6
  store i16 %conv1108, i16* %m_mno1109, align 2, !tbaa !67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1110

cleanup.1110:                                     ; preds = %if.end.1103, %if.then.1042, %lor.end.978, %if.then.672, %if.then.593, %if.then.519, %if.then.514, %if.then.508, %cleanup.501, %if.then.23
  %679 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %679) #1
  call void @llvm.lifetime.end(i64 1, i8* %fcode) #1
  %680 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %680) #1
  %681 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %681) #1
  %682 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %682) #1
  %683 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %683) #1
  %cleanup.dest.1116 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1116, label %unreachable [
    i32 0, label %cleanup.cont.1117
    i32 1, label %cleanup.cont.1117
  ]

cleanup.cont.1117:                                ; preds = %cleanup.1110, %cleanup.1110
  ret void

unreachable:                                      ; preds = %cleanup.1110, %cleanup.479, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @setoption(i32 %opt, i8* %val, i32 %safe, i32 %sticky, %struct.envelope* %e) #0 {
entry:
  %opt.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %safe.addr = alloca i32, align 4
  %sticky.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %o = alloca %struct.optioninfo*, align 8
  %subopt = alloca i8*, align 8
  %mid = alloca i32, align 4
  %can_setuid = alloca i32, align 4
  %ep = alloca i8*, align 8
  %buf = alloca [50 x i8], align 16
  %newval = alloca i8*, align 8
  %exbuf = alloca [2048 x i8], align 16
  %sel = alloca %struct.optioninfo*, align 8
  %cleanup.dest.slot = alloca i32
  %oldVerbose = alloca i32, align 4
  %dp = alloca i32, align 4
  %al = alloca i8*, align 8
  %gr = alloca %struct.group*, align 8
  %clearmode = alloca i32, align 4
  %q = alloca i8*, align 8
  %rfp = alloca %struct.resolverflags*, align 8
  %pv = alloca %struct.prival*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res644 = alloca i32, align 4
  %tmp649 = alloca i32, align 4
  %pw = alloca %struct.passwd*, align 8
  %pw959 = alloca %struct.passwd*, align 8
  %runasgid = alloca i32, align 4
  %gr1034 = alloca %struct.group*, align 8
  %_newval = alloca i8*, align 8
  %dbs = alloca %struct.dbsval*, align 8
  %_newval1194 = alloca i8*, align 8
  %pw1232 = alloca %struct.passwd*, align 8
  %_newval1295 = alloca i8*, align 8
  %_newval1316 = alloca i8*, align 8
  %m = alloca [8 x i32], align 16
  store i32 %opt, i32* %opt.addr, align 4, !tbaa !5
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  store i32 %safe, i32* %safe.addr, align 4, !tbaa !5
  store i32 %sticky, i32* %sticky.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.optioninfo** %o to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %subopt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %can_setuid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %can_setuid, align 4, !tbaa !5
  %6 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %7) #1
  %8 = bitcast i8** %newval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [2048 x i8]* %exbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %9) #1
  %call = call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4, !tbaa !5
  %10 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %10, 32
  br i1 %cmp1, label %if.then, label %if.else.90

if.then:                                          ; preds = %entry
  %11 = bitcast %struct.optioninfo** %sel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call3 = call i8* @strchr(i8* %12, i32 61) #1
  store i8* %call3, i8** %p, align 8, !tbaa !1
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %14 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call7 = call i64 @strlen(i8* %14) #9
  %15 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %call7
  store i8* %arrayidx, i8** %p, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv8 = sext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv8, 32
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.16, %while.end
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %incdec.ptr12, align 1, !tbaa !12
  %conv13 = sext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 32
  br i1 %cmp14, label %while.body.16, label %while.end.17

while.body.16:                                    ; preds = %while.cond.11
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %20, align 1, !tbaa !12
  br label %while.cond.11

while.end.17:                                     ; preds = %while.cond.11
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %cmp18 = icmp eq i8* %21, %22
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end.17
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %while.end.17
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !12
  %conv22 = sext i8 %24 to i32
  %cmp23 = icmp eq i32 %conv22, 61
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %25, align 1, !tbaa !12
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.21
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.32, %if.end.27
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %conv29 = sext i8 %27 to i32
  %cmp30 = icmp eq i32 %conv29, 32
  br i1 %cmp30, label %while.body.32, label %while.end.34

while.body.32:                                    ; preds = %while.cond.28
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8, !tbaa !1
  br label %while.cond.28

while.end.34:                                     ; preds = %while.cond.28
  %29 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call35 = call i8* @strchr(i8* %29, i32 46) #1
  store i8* %call35, i8** %subopt, align 8, !tbaa !1
  %30 = load i8*, i8** %subopt, align 8, !tbaa !1
  %cmp36 = icmp ne i8* %30, null
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %while.end.34
  %31 = load i8*, i8** %subopt, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr39, i8** %subopt, align 8, !tbaa !1
  store i8 0, i8* %31, align 1, !tbaa !12
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %while.end.34
  store %struct.optioninfo* null, %struct.optioninfo** %sel, align 8, !tbaa !1
  store %struct.optioninfo* getelementptr inbounds ([138 x %struct.optioninfo], [138 x %struct.optioninfo]* @OptionTab, i32 0, i32 0), %struct.optioninfo** %o, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %32 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %32, i32 0, i32 0
  %33 = load i8*, i8** %o_name, align 8, !tbaa !68
  %cmp41 = icmp ne i8* %33, null
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name43 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %34, i32 0, i32 0
  %35 = load i8*, i8** %o_name43, align 8, !tbaa !68
  %36 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call44 = call i64 @strlen(i8* %37) #9
  %call45 = call i32 @sm_strncasecmp(i8* %35, i8* %36, i64 %call44)
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body
  br label %for.inc

if.end.49:                                        ; preds = %for.body
  %38 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name50 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %38, i32 0, i32 0
  %39 = load i8*, i8** %o_name50, align 8, !tbaa !68
  %call51 = call i64 @strlen(i8* %39) #9
  %40 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call52 = call i64 @strlen(i8* %40) #9
  %cmp53 = icmp eq i64 %call51, %call52
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  store %struct.optioninfo* null, %struct.optioninfo** %sel, align 8, !tbaa !1
  br label %for.end

if.end.56:                                        ; preds = %if.end.49
  %41 = load %struct.optioninfo*, %struct.optioninfo** %sel, align 8, !tbaa !1
  %cmp57 = icmp ne %struct.optioninfo* %41, null
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  br label %for.end

if.end.60:                                        ; preds = %if.end.56
  %42 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  store %struct.optioninfo* %42, %struct.optioninfo** %sel, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.60, %if.then.48
  %43 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %43, i32 1
  store %struct.optioninfo* %incdec.ptr61, %struct.optioninfo** %o, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.59, %if.then.55, %for.cond
  %44 = load %struct.optioninfo*, %struct.optioninfo** %sel, align 8, !tbaa !1
  %cmp62 = icmp ne %struct.optioninfo* %44, null
  br i1 %cmp62, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %45 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name64 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %45, i32 0, i32 0
  %46 = load i8*, i8** %o_name64, align 8, !tbaa !68
  %cmp65 = icmp eq i8* %46, null
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %land.lhs.true
  %47 = load %struct.optioninfo*, %struct.optioninfo** %sel, align 8, !tbaa !1
  store %struct.optioninfo* %47, %struct.optioninfo** %o, align 8, !tbaa !1
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true, %for.end
  %48 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name68 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %48, i32 0, i32 0
  %49 = load i8*, i8** %o_name68, align 8, !tbaa !68
  %cmp69 = icmp eq i8* %49, null
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else
  %50 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0), i8* %50)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.72:                                       ; preds = %if.else
  %51 = load %struct.optioninfo*, %struct.optioninfo** %sel, align 8, !tbaa !1
  %cmp73 = icmp ne %struct.optioninfo* %51, null
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.else.72
  %52 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %53 = load %struct.optioninfo*, %struct.optioninfo** %sel, align 8, !tbaa !1
  %o_name76 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %53, i32 0, i32 0
  %54 = load i8*, i8** %o_name76, align 8, !tbaa !68
  %55 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name77 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %55, i32 0, i32 0
  %56 = load i8*, i8** %o_name77, align 8, !tbaa !68
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.102, i32 0, i32 0), i8* %52, i8* %54, i8* %56)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.else.72
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.67
  %57 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call81 = call i64 @strlen(i8* %57) #9
  %58 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name82 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %58, i32 0, i32 0
  %59 = load i8*, i8** %o_name82, align 8, !tbaa !68
  %call83 = call i64 @strlen(i8* %59) #9
  %cmp84 = icmp ne i64 %call81, %call83
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.80
  %60 = bitcast i32* %oldVerbose to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* @Verbose, align 4, !tbaa !5
  store i32 %61, i32* %oldVerbose, align 4, !tbaa !5
  store i32 1, i32* @Verbose, align 4, !tbaa !5
  %62 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %63 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name87 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %63, i32 0, i32 0
  %64 = load i8*, i8** %o_name87, align 8, !tbaa !68
  call void (i8*, ...) @message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.103, i32 0, i32 0), i8* %62, i8* %64)
  %65 = load i32, i32* %oldVerbose, align 4, !tbaa !5
  store i32 %65, i32* @Verbose, align 4, !tbaa !5
  %66 = bitcast i32* %oldVerbose to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.80
  %67 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_code = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %67, i32 0, i32 1
  %68 = load i8, i8* %o_code, align 1, !tbaa !70
  %conv89 = zext i8 %68 to i32
  store i32 %conv89, i32* %opt.addr, align 4, !tbaa !5
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %69, i8** %val.addr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.75, %if.then.71, %if.then.20
  %70 = bitcast %struct.optioninfo** %sel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1445 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.110

if.else.90:                                       ; preds = %entry
  store %struct.optioninfo* getelementptr inbounds ([138 x %struct.optioninfo], [138 x %struct.optioninfo]* @OptionTab, i32 0, i32 0), %struct.optioninfo** %o, align 8, !tbaa !1
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.102, %if.else.90
  %71 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name92 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %71, i32 0, i32 0
  %72 = load i8*, i8** %o_name92, align 8, !tbaa !68
  %cmp93 = icmp ne i8* %72, null
  br i1 %cmp93, label %for.body.95, label %for.end.104

for.body.95:                                      ; preds = %for.cond.91
  %73 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_code96 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %73, i32 0, i32 1
  %74 = load i8, i8* %o_code96, align 1, !tbaa !70
  %conv97 = zext i8 %74 to i32
  %75 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %conv97, %75
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.body.95
  br label %for.end.104

if.end.101:                                       ; preds = %for.body.95
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %76 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %76, i32 1
  store %struct.optioninfo* %incdec.ptr103, %struct.optioninfo** %o, align 8, !tbaa !1
  br label %for.cond.91

for.end.104:                                      ; preds = %if.then.100, %for.cond.91
  %77 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name105 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %77, i32 0, i32 0
  %78 = load i8*, i8** %o_name105, align 8, !tbaa !68
  %cmp106 = icmp eq i8* %78, null
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %for.end.104
  %79 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %and = and i32 %79, 255
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.104, i32 0, i32 0), i32 %and)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1445

if.end.109:                                       ; preds = %for.end.104
  store i8* null, i8** %subopt, align 8, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %cleanup.cont
  %80 = load i8*, i8** %subopt, align 8, !tbaa !1
  %cmp111 = icmp ne i8* %80, null
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.129

land.lhs.true.113:                                ; preds = %if.end.110
  %81 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_flags = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %81, i32 0, i32 2
  %82 = load i16, i16* %o_flags, align 2, !tbaa !71
  %conv114 = zext i16 %82 to i32
  %and115 = and i32 %conv114, 2
  %cmp116 = icmp ne i32 %and115, 0
  br i1 %cmp116, label %if.end.129, label %if.then.118

if.then.118:                                      ; preds = %land.lhs.true.113
  %83 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv119 = zext i8 %83 to i32
  %cmp120 = icmp sge i32 %conv119, 1
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.128

land.lhs.true.122:                                ; preds = %if.then.118
  %84 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %84, 0
  br i1 %tobool, label %if.end.128, label %if.then.123

if.then.123:                                      ; preds = %land.lhs.true.122
  %85 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name124 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %85, i32 0, i32 0
  %86 = load i8*, i8** %o_name124, align 8, !tbaa !68
  %cmp125 = icmp eq i8* %86, null
  br i1 %cmp125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.123
  br label %cond.end

cond.false:                                       ; preds = %if.then.123
  %87 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name127 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %87, i32 0, i32 0
  %88 = load i8*, i8** %o_name127, align 8, !tbaa !68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %cond.true ], [ %88, %cond.false ]
  %89 = load i8*, i8** %subopt, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.105, i32 0, i32 0), i8* %cond, i8* %89)
  br label %if.end.128

if.end.128:                                       ; preds = %cond.end, %land.lhs.true.122, %if.then.118
  store i8* null, i8** %subopt, align 8, !tbaa !1
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %land.lhs.true.113, %if.end.110
  %90 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv130 = zext i8 %90 to i32
  %cmp131 = icmp sge i32 %conv130, 1
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.163

land.lhs.true.133:                                ; preds = %if.end.129
  %91 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool134 = icmp ne i32 %91, 0
  br i1 %tobool134, label %if.end.163, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.133
  %92 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %and136 = and i32 %92, -128
  %cmp137 = icmp eq i32 %and136, 0
  br i1 %cmp137, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.135
  %93 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %idxprom = sext i32 %93 to i64
  %call139 = call i16** @__ctype_b_loc() #8
  %94 = load i16*, i16** %call139, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i16, i16* %94, i64 %idxprom
  %95 = load i16, i16* %arrayidx140, align 2, !tbaa !18
  %conv141 = zext i16 %95 to i32
  %and142 = and i32 %conv141, 16384
  %tobool143 = icmp ne i32 %and142, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.135
  %96 = phi i1 [ false, %if.then.135 ], [ %tobool143, %land.rhs ]
  %cond144 = select i1 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i32 0, i32 0)
  %97 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name145 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %97, i32 0, i32 0
  %98 = load i8*, i8** %o_name145, align 8, !tbaa !68
  %cmp146 = icmp eq i8* %98, null
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %land.end
  br label %cond.end.151

cond.false.149:                                   ; preds = %land.end
  %99 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name150 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %99, i32 0, i32 0
  %100 = load i8*, i8** %o_name150, align 8, !tbaa !68
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.149, %cond.true.148
  %cond152 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %cond.true.148 ], [ %100, %cond.false.149 ]
  %101 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %102 = load i8*, i8** %subopt, align 8, !tbaa !1
  %cmp153 = icmp eq i8* %102, null
  %cond155 = select i1 %cmp153, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0)
  %103 = load i8*, i8** %subopt, align 8, !tbaa !1
  %cmp156 = icmp eq i8* %103, null
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %cond.end.151
  br label %cond.end.160

cond.false.159:                                   ; preds = %cond.end.151
  %104 = load i8*, i8** %subopt, align 8, !tbaa !1
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.158
  %cond161 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.true.158 ], [ %104, %cond.false.159 ]
  call void (i8*, ...) @sm_dprintf(i8* %cond144, i8* %cond152, i32 %101, i8* %cond155, i8* %cond161)
  %call162 = call %struct.sm_file* @sm_debug_file()
  %105 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call162, i8* %105)
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end.160, %land.lhs.true.133, %if.end.129
  %106 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  %tobool164 = icmp ne i32 %106, 0
  br i1 %tobool164, label %if.end.182, label %land.lhs.true.165

land.lhs.true.165:                                ; preds = %if.end.163
  %107 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %conv166 = trunc i32 %107 to i8
  %conv167 = zext i8 %conv166 to i64
  %div = udiv i64 %conv167, 32
  %and168 = and i64 %div, 7
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* @StickyOpt, i32 0, i64 %and168
  %108 = load i32, i32* %arrayidx169, align 4, !tbaa !5
  %109 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %conv170 = trunc i32 %109 to i8
  %conv171 = zext i8 %conv170 to i64
  %rem = urem i64 %conv171, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and172 = and i32 %108, %shl
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.182

if.then.174:                                      ; preds = %land.lhs.true.165
  %110 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv175 = zext i8 %110 to i32
  %cmp176 = icmp sge i32 %conv175, 1
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.181

land.lhs.true.178:                                ; preds = %if.then.174
  %111 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool179 = icmp ne i32 %111, 0
  br i1 %tobool179, label %if.end.181, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.178
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %land.lhs.true.178, %if.then.174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1445

if.end.182:                                       ; preds = %land.lhs.true.165, %if.end.163
  %112 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool183 = icmp ne i32 %112, 0
  br i1 %tobool183, label %if.end.188, label %land.lhs.true.184

land.lhs.true.184:                                ; preds = %if.end.182
  %113 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp185 = icmp eq i32 %113, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %land.lhs.true.184
  store i32 1, i32* %safe.addr, align 4, !tbaa !5
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.187, %land.lhs.true.184, %if.end.182
  %114 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool189 = icmp ne i32 %114, 0
  br i1 %tobool189, label %if.end.225, label %land.lhs.true.190

land.lhs.true.190:                                ; preds = %if.end.188
  %115 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_flags191 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %115, i32 0, i32 2
  %116 = load i16, i16* %o_flags191, align 2, !tbaa !71
  %conv192 = zext i16 %116 to i32
  %and193 = and i32 %conv192, 1
  %cmp194 = icmp ne i32 %and193, 0
  br i1 %cmp194, label %if.end.225, label %if.then.196

if.then.196:                                      ; preds = %land.lhs.true.190
  %117 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %cmp197 = icmp ne i32 %117, 77
  br i1 %cmp197, label %if.then.208, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.196
  %118 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx199, align 1, !tbaa !12
  %conv200 = sext i8 %119 to i32
  %cmp201 = icmp ne i32 %conv200, 114
  br i1 %cmp201, label %land.lhs.true.203, label %if.end.224

land.lhs.true.203:                                ; preds = %lor.lhs.false
  %120 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx204, align 1, !tbaa !12
  %conv205 = sext i8 %121 to i32
  %cmp206 = icmp ne i32 %conv205, 115
  br i1 %cmp206, label %if.then.208, label %if.end.224

if.then.208:                                      ; preds = %land.lhs.true.203, %if.then.196
  %122 = bitcast i32* %dp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv209 = zext i8 %123 to i32
  %cmp210 = icmp sge i32 %conv209, 1
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.215

land.lhs.true.212:                                ; preds = %if.then.208
  %124 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool213 = icmp ne i32 %124, 0
  br i1 %tobool213, label %if.end.215, label %if.then.214

if.then.214:                                      ; preds = %land.lhs.true.212
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %land.lhs.true.212, %if.then.208
  %call216 = call i32 @drop_privileges(i32 1)
  store i32 %call216, i32* %dp, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.215
  %125 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp217 = icmp eq i32 %125, 0
  br i1 %cmp217, label %if.then.222, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %do.body
  %126 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp220 = icmp eq i32 %126, 75
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %lor.lhs.false.219, %do.body
  %127 = load i32, i32* %dp, align 4, !tbaa !5
  store i32 %127, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %lor.lhs.false.219
  br label %do.cond

do.cond:                                          ; preds = %if.end.223
  br label %do.end

do.end:                                           ; preds = %do.cond
  %128 = bitcast i32* %dp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  br label %if.end.224

if.end.224:                                       ; preds = %do.end, %land.lhs.true.203, %lor.lhs.false
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %land.lhs.true.190, %if.end.188
  %129 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv226 = zext i8 %129 to i32
  %cmp227 = icmp sge i32 %conv226, 1
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.232

land.lhs.true.229:                                ; preds = %if.end.225
  %130 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool230 = icmp ne i32 %130, 0
  br i1 %tobool230, label %if.end.232, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.229
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %land.lhs.true.229, %if.end.225
  %131 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %and233 = and i32 %131, 255
  switch i32 %and233, label %sw.default.1403 [
    i32 55, label %sw.bb
    i32 56, label %sw.bb.235
    i32 65, label %sw.bb.241
    i32 97, label %sw.bb.249
    i32 66, label %sw.bb.258
    i32 98, label %sw.bb.265
    i32 99, label %sw.bb.274
    i32 67, label %sw.bb.276
    i32 100, label %sw.bb.285
    i32 69, label %sw.bb.293
    i32 101, label %sw.bb.300
    i32 70, label %sw.bb.305
    i32 102, label %sw.bb.308
    i32 71, label %sw.bb.310
    i32 103, label %sw.bb.312
    i32 72, label %sw.bb.335
    i32 104, label %sw.bb.344
    i32 73, label %sw.bb.346
    i32 105, label %sw.bb.464
    i32 106, label %sw.bb.466
    i32 74, label %sw.bb.468
    i32 107, label %sw.bb.470
    i32 75, label %sw.bb.476
    i32 108, label %sw.bb.478
    i32 76, label %sw.bb.480
    i32 77, label %sw.bb.489
    i32 109, label %sw.bb.501
    i32 110, label %sw.bb.503
    i32 79, label %sw.bb.505
    i32 111, label %sw.bb.510
    i32 112, label %sw.bb.519
    i32 80, label %sw.bb.597
    i32 113, label %sw.bb.599
    i32 81, label %sw.bb.602
    i32 82, label %sw.bb.617
    i32 114, label %sw.bb.619
    i32 83, label %sw.bb.625
    i32 115, label %sw.bb.634
    i32 84, label %sw.bb.659
    i32 116, label %sw.bb.666
    i32 85, label %sw.bb.668
    i32 117, label %sw.bb.670
    i32 86, label %sw.bb.725
    i32 118, label %sw.bb.733
    i32 119, label %sw.bb.737
    i32 120, label %sw.bb.739
    i32 88, label %sw.bb.741
    i32 205, label %sw.bb.743
    i32 121, label %sw.bb.745
    i32 89, label %sw.bb.748
    i32 122, label %sw.bb.750
    i32 90, label %sw.bb.753
    i32 129, label %sw.bb.756
    i32 130, label %sw.bb.767
    i32 131, label %sw.bb.769
    i32 229, label %sw.bb.771
    i32 133, label %sw.bb.773
    i32 134, label %sw.bb.776
    i32 135, label %sw.bb.778
    i32 136, label %sw.bb.780
    i32 137, label %sw.bb.811
    i32 138, label %sw.bb.836
    i32 139, label %sw.bb.838
    i32 140, label %sw.bb.840
    i32 141, label %sw.bb.842
    i32 197, label %sw.bb.844
    i32 198, label %sw.bb.846
    i32 200, label %sw.bb.848
    i32 201, label %sw.bb.850
    i32 208, label %sw.bb.853
    i32 142, label %sw.bb.860
    i32 143, label %sw.bb.862
    i32 144, label %sw.bb.876
    i32 145, label %sw.bb.879
    i32 146, label %sw.bb.882
    i32 147, label %sw.bb.890
    i32 148, label %sw.bb.892
    i32 149, label %sw.bb.894
    i32 151, label %sw.bb.896
    i32 153, label %sw.bb.898
    i32 154, label %sw.bb.905
    i32 155, label %sw.bb.907
    i32 156, label %sw.bb.915
    i32 157, label %sw.bb.917
    i32 158, label %sw.bb.1066
    i32 159, label %sw.bb.1068
    i32 160, label %sw.bb.1078
    i32 161, label %sw.bb.1175
    i32 162, label %sw.bb.1187
    i32 195, label %sw.bb.1189
    i32 163, label %sw.bb.1191
    i32 165, label %sw.bb.1202
    i32 166, label %sw.bb.1204
    i32 167, label %sw.bb.1215
    i32 168, label %sw.bb.1244
    i32 169, label %sw.bb.1292
    i32 170, label %sw.bb.1303
    i32 172, label %sw.bb.1313
    i32 173, label %sw.bb.1324
    i32 174, label %sw.bb.1324
    i32 214, label %sw.bb.1324
    i32 189, label %sw.bb.1324
    i32 202, label %sw.bb.1324
    i32 180, label %sw.bb.1334
    i32 181, label %sw.bb.1334
    i32 182, label %sw.bb.1334
    i32 183, label %sw.bb.1334
    i32 184, label %sw.bb.1334
    i32 185, label %sw.bb.1334
    i32 186, label %sw.bb.1334
    i32 227, label %sw.bb.1334
    i32 228, label %sw.bb.1334
    i32 192, label %sw.bb.1334
    i32 212, label %sw.bb.1334
    i32 193, label %sw.bb.1334
    i32 175, label %sw.bb.1344
    i32 176, label %sw.bb.1345
    i32 177, label %sw.bb.1348
    i32 178, label %sw.bb.1351
    i32 187, label %sw.bb.1361
    i32 188, label %sw.bb.1363
    i32 190, label %sw.bb.1364
    i32 196, label %sw.bb.1367
    i32 199, label %sw.bb.1369
    i32 206, label %sw.bb.1374
    i32 203, label %sw.bb.1376
    i32 204, label %sw.bb.1378
    i32 207, label %sw.bb.1380
    i32 209, label %sw.bb.1382
    i32 210, label %sw.bb.1384
    i32 211, label %sw.bb.1386
    i32 213, label %sw.bb.1389
    i32 216, label %sw.bb.1397
    i32 220, label %sw.bb.1399
    i32 236, label %sw.bb.1401
  ]

sw.bb:                                            ; preds = %if.end.232
  %132 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call234 = call i32 @atobool(i8* %132)
  store i32 %call234, i32* @SevenBitInput, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.235:                                        ; preds = %if.end.232
  %133 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %134 = load i8, i8* %133, align 1, !tbaa !12
  %conv236 = sext i8 %134 to i32
  switch i32 %conv236, label %sw.default [
    i32 112, label %sw.bb.237
    i32 109, label %sw.bb.238
    i32 115, label %sw.bb.239
  ]

sw.bb.237:                                        ; preds = %sw.bb.235
  store i32 3, i32* @MimeMode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.238:                                        ; preds = %sw.bb.235
  store i32 5, i32* @MimeMode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.239:                                        ; preds = %sw.bb.235
  store i32 1, i32* @MimeMode, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.235
  %135 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !12
  %conv240 = sext i8 %136 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.112, i32 0, i32 0), i32 %conv240)
  call void @finis(i32 0, i32 1, i32 64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.239, %sw.bb.238, %sw.bb.237
  br label %sw.epilog.1424

sw.bb.241:                                        ; preds = %if.end.232
  %137 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i8, i8* %137, i64 0
  %138 = load i8, i8* %arrayidx242, align 1, !tbaa !12
  %conv243 = sext i8 %138 to i32
  %cmp244 = icmp eq i32 %conv243, 0
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %sw.bb.241
  %139 = bitcast i8** %al to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8** %al, align 8, !tbaa !1
  %140 = load i8*, i8** %al, align 8, !tbaa !1
  call void @setalias(i8* %140)
  %141 = bitcast i8** %al to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  br label %if.end.248

if.else.247:                                      ; preds = %sw.bb.241
  %142 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void @setalias(i8* %142)
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.247, %if.then.246
  br label %sw.epilog.1424

sw.bb.249:                                        ; preds = %if.end.232
  %143 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %143, i64 0
  %144 = load i8, i8* %arrayidx250, align 1, !tbaa !12
  %conv251 = sext i8 %144 to i32
  %cmp252 = icmp eq i32 %conv251, 0
  br i1 %cmp252, label %if.then.254, label %if.else.255

if.then.254:                                      ; preds = %sw.bb.249
  store i64 300, i64* @SafeAlias, align 8, !tbaa !7
  br label %if.end.257

if.else.255:                                      ; preds = %sw.bb.249
  %145 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call256 = call i64 @convtime(i8* %145, i32 109)
  store i64 %call256, i64* @SafeAlias, align 8, !tbaa !7
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.255, %if.then.254
  br label %sw.epilog.1424

sw.bb.258:                                        ; preds = %if.end.232
  %146 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i8, i8* %146, i64 0
  %147 = load i8, i8* %arrayidx259, align 1, !tbaa !12
  store i8 %147, i8* @SpaceSub, align 1, !tbaa !12
  %148 = load i8, i8* @SpaceSub, align 1, !tbaa !12
  %conv260 = sext i8 %148 to i32
  %cmp261 = icmp eq i32 %conv260, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %sw.bb.258
  store i8 32, i8* @SpaceSub, align 1, !tbaa !12
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %sw.bb.258
  br label %sw.epilog.1424

sw.bb.265:                                        ; preds = %if.end.232
  %149 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call266 = call i8* @strchr(i8* %149, i32 47) #1
  store i8* %call266, i8** %p, align 8, !tbaa !1
  %150 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp267 = icmp ne i8* %150, null
  br i1 %cmp267, label %if.then.269, label %if.end.272

if.then.269:                                      ; preds = %sw.bb.265
  %151 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr270 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr270, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %151, align 1, !tbaa !12
  %152 = load i8*, i8** %p, align 8, !tbaa !1
  %call271 = call i64 @atol(i8* %152) #9
  store i64 %call271, i64* @MaxMessageSize, align 8, !tbaa !7
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.269, %sw.bb.265
  %153 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call273 = call i64 @atol(i8* %153) #9
  store i64 %call273, i64* @MinBlocksFree, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.274:                                        ; preds = %if.end.232
  %154 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call275 = call i32 @atobool(i8* %154)
  store i32 %call275, i32* @NoConnect, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.276:                                        ; preds = %if.end.232
  %155 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool277 = icmp ne i32 %155, 0
  br i1 %tobool277, label %if.then.282, label %lor.lhs.false.278

lor.lhs.false.278:                                ; preds = %sw.bb.276
  %156 = load i32, i32* @CheckpointInterval, align 4, !tbaa !5
  %157 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call279 = call i32 @atoi(i8* %157) #9
  %cmp280 = icmp sgt i32 %156, %call279
  br i1 %cmp280, label %if.then.282, label %if.end.284

if.then.282:                                      ; preds = %lor.lhs.false.278, %sw.bb.276
  %158 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call283 = call i32 @atoi(i8* %158) #9
  store i32 %call283, i32* @CheckpointInterval, align 4, !tbaa !5
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.282, %lor.lhs.false.278
  br label %sw.epilog.1424

sw.bb.285:                                        ; preds = %if.end.232
  %159 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !12
  %conv286 = sext i8 %160 to i32
  switch i32 %conv286, label %sw.default.290 [
    i32 0, label %sw.bb.287
    i32 113, label %sw.bb.288
    i32 100, label %sw.bb.288
    i32 105, label %sw.bb.288
    i32 98, label %sw.bb.288
  ]

sw.bb.287:                                        ; preds = %sw.bb.285
  %161 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @set_delivery_mode(i32 105, %struct.envelope* %161)
  br label %sw.epilog.292

sw.bb.288:                                        ; preds = %sw.bb.285, %sw.bb.285, %sw.bb.285, %sw.bb.285
  %162 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %163 = load i8, i8* %162, align 1, !tbaa !12
  %conv289 = sext i8 %163 to i32
  %164 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @set_delivery_mode(i32 %conv289, %struct.envelope* %164)
  br label %sw.epilog.292

sw.default.290:                                   ; preds = %sw.bb.285
  %165 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %166 = load i8, i8* %165, align 1, !tbaa !12
  %conv291 = sext i8 %166 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), i32 %conv291)
  call void @finis(i32 0, i32 1, i32 64)
  br label %sw.epilog.292

sw.epilog.292:                                    ; preds = %sw.default.290, %sw.bb.288, %sw.bb.287
  br label %sw.epilog.1424

sw.bb.293:                                        ; preds = %if.end.232
  %167 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %168 = load i8, i8* %167, align 1, !tbaa !12
  %conv294 = sext i8 %168 to i32
  %cmp295 = icmp ne i32 %conv294, 0
  br i1 %cmp295, label %if.then.297, label %if.end.299

if.then.297:                                      ; preds = %sw.bb.293
  %169 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call298 = call i8* @newstr(i8* %169)
  store i8* %call298, i8** @ErrMsgFile, align 8, !tbaa !1
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.297, %sw.bb.293
  br label %sw.epilog.1424

sw.bb.300:                                        ; preds = %if.end.232
  %170 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %171 = load i8, i8* %170, align 1, !tbaa !12
  %conv301 = sext i8 %171 to i32
  switch i32 %conv301, label %sw.epilog.304 [
    i32 113, label %sw.bb.302
    i32 109, label %sw.bb.302
    i32 101, label %sw.bb.302
    i32 119, label %sw.bb.302
    i32 112, label %sw.bb.302
  ]

sw.bb.302:                                        ; preds = %sw.bb.300, %sw.bb.300, %sw.bb.300, %sw.bb.300, %sw.bb.300
  %172 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %173 = load i8, i8* %172, align 1, !tbaa !12
  %conv303 = sext i8 %173 to i16
  %174 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errormode = getelementptr inbounds %struct.envelope, %struct.envelope* %174, i32 0, i32 17
  store i16 %conv303, i16* %e_errormode, align 2, !tbaa !72
  br label %sw.epilog.304

sw.epilog.304:                                    ; preds = %sw.bb.300, %sw.bb.302
  br label %sw.epilog.1424

sw.bb.305:                                        ; preds = %if.end.232
  %175 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call306 = call i32 @atooct(i8* %175)
  %and307 = and i32 %call306, 511
  store i32 %and307, i32* @FileMode, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.308:                                        ; preds = %if.end.232
  %176 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call309 = call i32 @atobool(i8* %176)
  store i32 %call309, i32* @SaveFrom, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.310:                                        ; preds = %if.end.232
  %177 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call311 = call i32 @atobool(i8* %177)
  store i32 %call311, i32* @MatchGecos, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.312:                                        ; preds = %if.end.232
  br label %g_opt

g_opt:                                            ; preds = %if.end.724, %sw.bb.312
  %178 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %179 = load i8, i8* %178, align 1, !tbaa !12
  %conv313 = sext i8 %179 to i32
  %and314 = and i32 %conv313, -128
  %cmp315 = icmp eq i32 %and314, 0
  br i1 %cmp315, label %land.lhs.true.317, label %if.else.327

land.lhs.true.317:                                ; preds = %g_opt
  %180 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %181 = load i8, i8* %180, align 1, !tbaa !12
  %conv318 = sext i8 %181 to i32
  %idxprom319 = sext i32 %conv318 to i64
  %call320 = call i16** @__ctype_b_loc() #8
  %182 = load i16*, i16** %call320, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds i16, i16* %182, i64 %idxprom319
  %183 = load i16, i16* %arrayidx321, align 2, !tbaa !18
  %conv322 = zext i16 %183 to i32
  %and323 = and i32 %conv322, 2048
  %tobool324 = icmp ne i32 %and323, 0
  br i1 %tobool324, label %if.then.325, label %if.else.327

if.then.325:                                      ; preds = %land.lhs.true.317
  %184 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call326 = call i32 @atoi(i8* %184) #9
  store i32 %call326, i32* @DefGid, align 4, !tbaa !5
  br label %if.end.334

if.else.327:                                      ; preds = %land.lhs.true.317, %g_opt
  %185 = bitcast %struct.group** %gr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  store i32 -1, i32* @DefGid, align 4, !tbaa !5
  %186 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call328 = call %struct.group* @getgrnam(i8* %186)
  store %struct.group* %call328, %struct.group** %gr, align 8, !tbaa !1
  %187 = load %struct.group*, %struct.group** %gr, align 8, !tbaa !1
  %cmp329 = icmp eq %struct.group* %187, null
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %if.else.327
  %188 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %189 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i32 0, i32 0), i32 %188, i8* %189)
  br label %if.end.333

if.else.332:                                      ; preds = %if.else.327
  %190 = load %struct.group*, %struct.group** %gr, align 8, !tbaa !1
  %gr_gid = getelementptr inbounds %struct.group, %struct.group* %190, i32 0, i32 2
  %191 = load i32, i32* %gr_gid, align 4, !tbaa !63
  store i32 %191, i32* @DefGid, align 4, !tbaa !5
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.332, %if.then.331
  %192 = bitcast %struct.group** %gr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.325
  br label %sw.epilog.1424

sw.bb.335:                                        ; preds = %if.end.232
  %193 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i8, i8* %193, i64 0
  %194 = load i8, i8* %arrayidx336, align 1, !tbaa !12
  %conv337 = sext i8 %194 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %if.then.340, label %if.else.341

if.then.340:                                      ; preds = %sw.bb.335
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i8** @HelpFile, align 8, !tbaa !1
  br label %if.end.343

if.else.341:                                      ; preds = %sw.bb.335
  %195 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call342 = call i8* @newstr(i8* %195)
  store i8* %call342, i8** @HelpFile, align 8, !tbaa !1
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.341, %if.then.340
  br label %sw.epilog.1424

sw.bb.344:                                        ; preds = %if.end.232
  %196 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call345 = call i32 @atoi(i8* %196) #9
  store i32 %call345, i32* @MaxHopCount, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.346:                                        ; preds = %if.end.232
  %197 = load i8*, i8** %val.addr, align 8, !tbaa !1
  store i8* %197, i8** %p, align 8, !tbaa !1
  br label %for.cond.347

for.cond.347:                                     ; preds = %cleanup.cont.452, %cleanup.448, %sw.bb.346
  %198 = load i8*, i8** %p, align 8, !tbaa !1
  %199 = load i8, i8* %198, align 1, !tbaa !12
  %conv348 = sext i8 %199 to i32
  %cmp349 = icmp ne i32 %conv348, 0
  br i1 %cmp349, label %for.body.351, label %for.end.453

for.body.351:                                     ; preds = %for.cond.347
  %200 = bitcast i32* %clearmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  %201 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #1
  %202 = bitcast %struct.resolverflags** %rfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  br label %while.cond.352

while.cond.352:                                   ; preds = %while.body.356, %for.body.351
  %203 = load i8*, i8** %p, align 8, !tbaa !1
  %204 = load i8, i8* %203, align 1, !tbaa !12
  %conv353 = sext i8 %204 to i32
  %cmp354 = icmp eq i32 %conv353, 32
  br i1 %cmp354, label %while.body.356, label %while.end.358

while.body.356:                                   ; preds = %while.cond.352
  %205 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr357 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr357, i8** %p, align 8, !tbaa !1
  br label %while.cond.352

while.end.358:                                    ; preds = %while.cond.352
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  %207 = load i8, i8* %206, align 1, !tbaa !12
  %conv359 = sext i8 %207 to i32
  %cmp360 = icmp eq i32 %conv359, 0
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %while.end.358
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.448

if.end.363:                                       ; preds = %while.end.358
  store i32 0, i32* %clearmode, align 4, !tbaa !5
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !12
  %conv364 = sext i8 %209 to i32
  %cmp365 = icmp eq i32 %conv364, 45
  br i1 %cmp365, label %if.then.367, label %if.else.368

if.then.367:                                      ; preds = %if.end.363
  store i32 1, i32* %clearmode, align 4, !tbaa !5
  br label %if.end.375

if.else.368:                                      ; preds = %if.end.363
  %210 = load i8*, i8** %p, align 8, !tbaa !1
  %211 = load i8, i8* %210, align 1, !tbaa !12
  %conv369 = sext i8 %211 to i32
  %cmp370 = icmp ne i32 %conv369, 43
  br i1 %cmp370, label %if.then.372, label %if.end.374

if.then.372:                                      ; preds = %if.else.368
  %212 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr373 = getelementptr inbounds i8, i8* %212, i32 -1
  store i8* %incdec.ptr373, i8** %p, align 8, !tbaa !1
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.372, %if.else.368
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.367
  %213 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr376 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr376, i8** %p, align 8, !tbaa !1
  %214 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %214, i8** %q, align 8, !tbaa !1
  br label %while.cond.377

while.cond.377:                                   ; preds = %while.body.396, %if.end.375
  %215 = load i8*, i8** %p, align 8, !tbaa !1
  %216 = load i8, i8* %215, align 1, !tbaa !12
  %conv378 = sext i8 %216 to i32
  %cmp379 = icmp ne i32 %conv378, 0
  br i1 %cmp379, label %land.rhs.381, label %land.end.395

land.rhs.381:                                     ; preds = %while.cond.377
  %217 = load i8*, i8** %p, align 8, !tbaa !1
  %218 = load i8, i8* %217, align 1, !tbaa !12
  %conv382 = sext i8 %218 to i32
  %and383 = and i32 %conv382, -128
  %cmp384 = icmp eq i32 %and383, 0
  br i1 %cmp384, label %land.rhs.386, label %land.end.394

land.rhs.386:                                     ; preds = %land.rhs.381
  %219 = load i8*, i8** %p, align 8, !tbaa !1
  %220 = load i8, i8* %219, align 1, !tbaa !12
  %conv387 = sext i8 %220 to i32
  %idxprom388 = sext i32 %conv387 to i64
  %call389 = call i16** @__ctype_b_loc() #8
  %221 = load i16*, i16** %call389, align 8, !tbaa !1
  %arrayidx390 = getelementptr inbounds i16, i16* %221, i64 %idxprom388
  %222 = load i16, i16* %arrayidx390, align 2, !tbaa !18
  %conv391 = zext i16 %222 to i32
  %and392 = and i32 %conv391, 8192
  %tobool393 = icmp ne i32 %and392, 0
  br label %land.end.394

land.end.394:                                     ; preds = %land.rhs.386, %land.rhs.381
  %223 = phi i1 [ false, %land.rhs.381 ], [ %tobool393, %land.rhs.386 ]
  %lnot = xor i1 %223, true
  br label %land.end.395

land.end.395:                                     ; preds = %land.end.394, %while.cond.377
  %224 = phi i1 [ false, %while.cond.377 ], [ %lnot, %land.end.394 ]
  br i1 %224, label %while.body.396, label %while.end.398

while.body.396:                                   ; preds = %land.end.395
  %225 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr397 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr397, i8** %p, align 8, !tbaa !1
  br label %while.cond.377

while.end.398:                                    ; preds = %land.end.395
  %226 = load i8*, i8** %p, align 8, !tbaa !1
  %227 = load i8, i8* %226, align 1, !tbaa !12
  %conv399 = sext i8 %227 to i32
  %cmp400 = icmp ne i32 %conv399, 0
  br i1 %cmp400, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %while.end.398
  %228 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr403 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr403, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %228, align 1, !tbaa !12
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.402, %while.end.398
  %229 = load i8*, i8** %q, align 8, !tbaa !1
  %call405 = call i32 @sm_strcasecmp(i8* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0))
  %cmp406 = icmp eq i32 %call405, 0
  br i1 %cmp406, label %if.then.408, label %if.end.411

if.then.408:                                      ; preds = %if.end.404
  %230 = load i32, i32* %clearmode, align 4, !tbaa !5
  %tobool409 = icmp ne i32 %230, 0
  %lnot410 = xor i1 %tobool409, true
  %lnot.ext = zext i1 %lnot410 to i32
  store i32 %lnot.ext, i32* @HasWildcardMX, align 4, !tbaa !5
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.448

if.end.411:                                       ; preds = %if.end.404
  %231 = load i8*, i8** %q, align 8, !tbaa !1
  %call412 = call i32 @sm_strcasecmp(i8* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0))
  %cmp413 = icmp eq i32 %call412, 0
  br i1 %cmp413, label %if.then.415, label %if.end.419

if.then.415:                                      ; preds = %if.end.411
  %232 = load i32, i32* %clearmode, align 4, !tbaa !5
  %tobool416 = icmp ne i32 %232, 0
  %lnot417 = xor i1 %tobool416, true
  %lnot.ext418 = zext i1 %lnot417 to i32
  store i32 %lnot.ext418, i32* @WorkAroundBrokenAAAA, align 4, !tbaa !5
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.448

if.end.419:                                       ; preds = %if.end.411
  store %struct.resolverflags* getelementptr inbounds ([12 x %struct.resolverflags], [12 x %struct.resolverflags]* @ResolverFlags, i32 0, i32 0), %struct.resolverflags** %rfp, align 8, !tbaa !1
  br label %for.cond.420

for.cond.420:                                     ; preds = %for.inc.430, %if.end.419
  %233 = load %struct.resolverflags*, %struct.resolverflags** %rfp, align 8, !tbaa !1
  %rf_name = getelementptr inbounds %struct.resolverflags, %struct.resolverflags* %233, i32 0, i32 0
  %234 = load i8*, i8** %rf_name, align 8, !tbaa !78
  %cmp421 = icmp ne i8* %234, null
  br i1 %cmp421, label %for.body.423, label %for.end.432

for.body.423:                                     ; preds = %for.cond.420
  %235 = load i8*, i8** %q, align 8, !tbaa !1
  %236 = load %struct.resolverflags*, %struct.resolverflags** %rfp, align 8, !tbaa !1
  %rf_name424 = getelementptr inbounds %struct.resolverflags, %struct.resolverflags* %236, i32 0, i32 0
  %237 = load i8*, i8** %rf_name424, align 8, !tbaa !78
  %call425 = call i32 @sm_strcasecmp(i8* %235, i8* %237)
  %cmp426 = icmp eq i32 %call425, 0
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %for.body.423
  br label %for.end.432

if.end.429:                                       ; preds = %for.body.423
  br label %for.inc.430

for.inc.430:                                      ; preds = %if.end.429
  %238 = load %struct.resolverflags*, %struct.resolverflags** %rfp, align 8, !tbaa !1
  %incdec.ptr431 = getelementptr inbounds %struct.resolverflags, %struct.resolverflags* %238, i32 1
  store %struct.resolverflags* %incdec.ptr431, %struct.resolverflags** %rfp, align 8, !tbaa !1
  br label %for.cond.420

for.end.432:                                      ; preds = %if.then.428, %for.cond.420
  %239 = load %struct.resolverflags*, %struct.resolverflags** %rfp, align 8, !tbaa !1
  %rf_name433 = getelementptr inbounds %struct.resolverflags, %struct.resolverflags* %239, i32 0, i32 0
  %240 = load i8*, i8** %rf_name433, align 8, !tbaa !78
  %cmp434 = icmp eq i8* %240, null
  br i1 %cmp434, label %if.then.436, label %if.else.437

if.then.436:                                      ; preds = %for.end.432
  %241 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.119, i32 0, i32 0), i8* %241)
  br label %if.end.447

if.else.437:                                      ; preds = %for.end.432
  %242 = load i32, i32* %clearmode, align 4, !tbaa !5
  %tobool438 = icmp ne i32 %242, 0
  br i1 %tobool438, label %if.then.439, label %if.else.442

if.then.439:                                      ; preds = %if.else.437
  %243 = load %struct.resolverflags*, %struct.resolverflags** %rfp, align 8, !tbaa !1
  %rf_bits = getelementptr inbounds %struct.resolverflags, %struct.resolverflags* %243, i32 0, i32 1
  %244 = load i64, i64* %rf_bits, align 8, !tbaa !80
  %neg = xor i64 %244, -1
  %call440 = call %struct.__res_state* @__res_state() #8
  %options = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call440, i32 0, i32 2
  %245 = load i64, i64* %options, align 8, !tbaa !81
  %and441 = and i64 %245, %neg
  store i64 %and441, i64* %options, align 8, !tbaa !81
  br label %if.end.446

if.else.442:                                      ; preds = %if.else.437
  %246 = load %struct.resolverflags*, %struct.resolverflags** %rfp, align 8, !tbaa !1
  %rf_bits443 = getelementptr inbounds %struct.resolverflags, %struct.resolverflags* %246, i32 0, i32 1
  %247 = load i64, i64* %rf_bits443, align 8, !tbaa !80
  %call444 = call %struct.__res_state* @__res_state() #8
  %options445 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call444, i32 0, i32 2
  %248 = load i64, i64* %options445, align 8, !tbaa !81
  %or = or i64 %248, %247
  store i64 %or, i64* %options445, align 8, !tbaa !81
  br label %if.end.446

if.end.446:                                       ; preds = %if.else.442, %if.then.439
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.then.436
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.448

cleanup.448:                                      ; preds = %if.end.447, %if.then.415, %if.then.408, %if.then.362
  %249 = bitcast %struct.resolverflags** %rfp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast i32* %clearmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %cleanup.dest.451 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.451, label %unreachable [
    i32 0, label %cleanup.cont.452
    i32 21, label %for.end.453
    i32 22, label %for.cond.347
  ]

cleanup.cont.452:                                 ; preds = %cleanup.448
  br label %for.cond.347

for.end.453:                                      ; preds = %cleanup.448, %for.cond.347
  %252 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !12
  %conv454 = zext i8 %252 to i32
  %cmp455 = icmp sge i32 %conv454, 2
  br i1 %cmp455, label %land.lhs.true.457, label %if.end.463

land.lhs.true.457:                                ; preds = %for.end.453
  %253 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool458 = icmp ne i32 %253, 0
  br i1 %tobool458, label %if.end.463, label %if.then.459

if.then.459:                                      ; preds = %land.lhs.true.457
  %call460 = call %struct.__res_state* @__res_state() #8
  %options461 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call460, i32 0, i32 2
  %254 = load i64, i64* %options461, align 8, !tbaa !81
  %conv462 = trunc i64 %254 to i32
  %255 = load i32, i32* @HasWildcardMX, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.120, i32 0, i32 0), i32 %conv462, i32 %255)
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.459, %land.lhs.true.457, %for.end.453
  br label %sw.epilog.1424

sw.bb.464:                                        ; preds = %if.end.232
  %256 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call465 = call i32 @atobool(i8* %256)
  store i32 %call465, i32* @IgnrDot, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.466:                                        ; preds = %if.end.232
  %257 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call467 = call i32 @atobool(i8* %257)
  store i32 %call467, i32* @SendMIMEErrors, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.468:                                        ; preds = %if.end.232
  %258 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call469 = call i8* @newstr(i8* %258)
  store i8* %call469, i8** @ForwardPath, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.470:                                        ; preds = %if.end.232
  %259 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call471 = call i32 @atoi(i8* %259) #9
  store i32 %call471, i32* @MaxMciCache, align 4, !tbaa !5
  %260 = load i32, i32* @MaxMciCache, align 4, !tbaa !5
  %cmp472 = icmp slt i32 %260, 0
  br i1 %cmp472, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %sw.bb.470
  store i32 0, i32* @MaxMciCache, align 4, !tbaa !5
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.474, %sw.bb.470
  br label %sw.epilog.1424

sw.bb.476:                                        ; preds = %if.end.232
  %261 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call477 = call i64 @convtime(i8* %261, i32 109)
  store i64 %call477, i64* @MciCacheTimeout, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.478:                                        ; preds = %if.end.232
  %262 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call479 = call i32 @atobool(i8* %262)
  store i32 %call479, i32* @UseErrorsTo, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.480:                                        ; preds = %if.end.232
  %263 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool481 = icmp ne i32 %263, 0
  br i1 %tobool481, label %if.then.486, label %lor.lhs.false.482

lor.lhs.false.482:                                ; preds = %sw.bb.480
  %264 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %265 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call483 = call i32 @atoi(i8* %265) #9
  %cmp484 = icmp slt i32 %264, %call483
  br i1 %cmp484, label %if.then.486, label %if.end.488

if.then.486:                                      ; preds = %lor.lhs.false.482, %sw.bb.480
  %266 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call487 = call i32 @atoi(i8* %266) #9
  store i32 %call487, i32* @LogLevel, align 4, !tbaa !5
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.486, %lor.lhs.false.482
  br label %sw.epilog.1424

sw.bb.489:                                        ; preds = %if.end.232
  store i32 0, i32* %sticky.addr, align 4, !tbaa !5
  %267 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call490 = call i32 @macid_parse(i8* %267, i8** %ep)
  store i32 %call490, i32* %mid, align 4, !tbaa !5
  %268 = load i32, i32* %mid, align 4, !tbaa !5
  %cmp491 = icmp eq i32 %268, 0
  br i1 %cmp491, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %sw.bb.489
  br label %sw.epilog.1424

if.end.494:                                       ; preds = %sw.bb.489
  %269 = load i8*, i8** %ep, align 8, !tbaa !1
  %call495 = call i8* @newstr(i8* %269)
  store i8* %call495, i8** %p, align 8, !tbaa !1
  %270 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool496 = icmp ne i32 %270, 0
  br i1 %tobool496, label %if.end.500, label %if.then.497

if.then.497:                                      ; preds = %if.end.494
  %271 = load i8*, i8** %p, align 8, !tbaa !1
  %272 = load i8*, i8** %p, align 8, !tbaa !1
  %273 = load i8*, i8** %p, align 8, !tbaa !1
  %call498 = call i64 @strlen(i8* %273) #9
  %add = add i64 %call498, 1
  %conv499 = trunc i64 %add to i32
  call void @cleanstrcpy(i8* %271, i8* %272, i32 %conv499)
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.497, %if.end.494
  %274 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %274, i32 0, i32 46
  %275 = load i32, i32* %mid, align 4, !tbaa !5
  %276 = load i8*, i8** %p, align 8, !tbaa !1
  %277 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %275, i8* %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 3373, i32 %277)
  br label %sw.epilog.1424

sw.bb.501:                                        ; preds = %if.end.232
  %278 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call502 = call i32 @atobool(i8* %278)
  store i32 %call502, i32* @MeToo, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.503:                                        ; preds = %if.end.232
  %279 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call504 = call i32 @atobool(i8* %279)
  store i32 %call504, i32* @CheckAliases, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.505:                                        ; preds = %if.end.232
  %280 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call506 = call i32 @setdaemonoptions(i8* %280)
  %tobool507 = icmp ne i32 %call506, 0
  br i1 %tobool507, label %if.end.509, label %if.then.508

if.then.508:                                      ; preds = %sw.bb.505
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.121, i32 0, i32 0), i32 10)
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.508, %sw.bb.505
  br label %sw.epilog.1424

sw.bb.510:                                        ; preds = %if.end.232
  %281 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call511 = call i32 @atobool(i8* %281)
  %tobool512 = icmp ne i32 %call511, 0
  br i1 %tobool512, label %if.then.513, label %if.else.515

if.then.513:                                      ; preds = %sw.bb.510
  %282 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %282, i32 0, i32 11
  %283 = load i64, i64* %e_flags, align 8, !tbaa !83
  %or514 = or i64 %283, 1
  store i64 %or514, i64* %e_flags, align 8, !tbaa !83
  br label %if.end.518

if.else.515:                                      ; preds = %sw.bb.510
  %284 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_flags516 = getelementptr inbounds %struct.envelope, %struct.envelope* %284, i32 0, i32 11
  %285 = load i64, i64* %e_flags516, align 8, !tbaa !83
  %and517 = and i64 %285, -2
  store i64 %and517, i64* %e_flags516, align 8, !tbaa !83
  br label %if.end.518

if.end.518:                                       ; preds = %if.else.515, %if.then.513
  br label %sw.epilog.1424

sw.bb.519:                                        ; preds = %if.end.232
  %286 = load i8*, i8** %val.addr, align 8, !tbaa !1
  store i8* %286, i8** %p, align 8, !tbaa !1
  br label %for.cond.520

for.cond.520:                                     ; preds = %cleanup.cont.595, %sw.bb.519
  %287 = bitcast %struct.prival** %pv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #1
  br label %while.cond.521

while.cond.521:                                   ; preds = %while.body.542, %for.cond.520
  %288 = load i8*, i8** %p, align 8, !tbaa !1
  %289 = load i8, i8* %288, align 1, !tbaa !12
  %conv522 = sext i8 %289 to i32
  %and523 = and i32 %conv522, -128
  %cmp524 = icmp eq i32 %and523, 0
  br i1 %cmp524, label %land.rhs.526, label %land.end.541

land.rhs.526:                                     ; preds = %while.cond.521
  %290 = load i8*, i8** %p, align 8, !tbaa !1
  %291 = load i8, i8* %290, align 1, !tbaa !12
  %conv527 = sext i8 %291 to i32
  %idxprom528 = sext i32 %conv527 to i64
  %call529 = call i16** @__ctype_b_loc() #8
  %292 = load i16*, i16** %call529, align 8, !tbaa !1
  %arrayidx530 = getelementptr inbounds i16, i16* %292, i64 %idxprom528
  %293 = load i16, i16* %arrayidx530, align 2, !tbaa !18
  %conv531 = zext i16 %293 to i32
  %and532 = and i32 %conv531, 8192
  %tobool533 = icmp ne i32 %and532, 0
  br i1 %tobool533, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.526
  %294 = load i8*, i8** %p, align 8, !tbaa !1
  %295 = load i8, i8* %294, align 1, !tbaa !12
  %conv534 = sext i8 %295 to i32
  %idxprom535 = sext i32 %conv534 to i64
  %call536 = call i16** @__ctype_b_loc() #8
  %296 = load i16*, i16** %call536, align 8, !tbaa !1
  %arrayidx537 = getelementptr inbounds i16, i16* %296, i64 %idxprom535
  %297 = load i16, i16* %arrayidx537, align 2, !tbaa !18
  %conv538 = zext i16 %297 to i32
  %and539 = and i32 %conv538, 4
  %tobool540 = icmp ne i32 %and539, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.526
  %298 = phi i1 [ true, %land.rhs.526 ], [ %tobool540, %lor.rhs ]
  br label %land.end.541

land.end.541:                                     ; preds = %lor.end, %while.cond.521
  %299 = phi i1 [ false, %while.cond.521 ], [ %298, %lor.end ]
  br i1 %299, label %while.body.542, label %while.end.544

while.body.542:                                   ; preds = %land.end.541
  %300 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr543 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %incdec.ptr543, i8** %p, align 8, !tbaa !1
  br label %while.cond.521

while.end.544:                                    ; preds = %land.end.541
  %301 = load i8*, i8** %p, align 8, !tbaa !1
  %302 = load i8, i8* %301, align 1, !tbaa !12
  %conv545 = sext i8 %302 to i32
  %cmp546 = icmp eq i32 %conv545, 0
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %while.end.544
  store i32 30, i32* %cleanup.dest.slot
  br label %cleanup.593

if.end.549:                                       ; preds = %while.end.544
  %303 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %303, i8** %val.addr, align 8, !tbaa !1
  br label %while.cond.550

while.cond.550:                                   ; preds = %while.body.564, %if.end.549
  %304 = load i8*, i8** %p, align 8, !tbaa !1
  %305 = load i8, i8* %304, align 1, !tbaa !12
  %conv551 = sext i8 %305 to i32
  %and552 = and i32 %conv551, -128
  %cmp553 = icmp eq i32 %and552, 0
  br i1 %cmp553, label %land.rhs.555, label %land.end.563

land.rhs.555:                                     ; preds = %while.cond.550
  %306 = load i8*, i8** %p, align 8, !tbaa !1
  %307 = load i8, i8* %306, align 1, !tbaa !12
  %conv556 = sext i8 %307 to i32
  %idxprom557 = sext i32 %conv556 to i64
  %call558 = call i16** @__ctype_b_loc() #8
  %308 = load i16*, i16** %call558, align 8, !tbaa !1
  %arrayidx559 = getelementptr inbounds i16, i16* %308, i64 %idxprom557
  %309 = load i16, i16* %arrayidx559, align 2, !tbaa !18
  %conv560 = zext i16 %309 to i32
  %and561 = and i32 %conv560, 8
  %tobool562 = icmp ne i32 %and561, 0
  br label %land.end.563

land.end.563:                                     ; preds = %land.rhs.555, %while.cond.550
  %310 = phi i1 [ false, %while.cond.550 ], [ %tobool562, %land.rhs.555 ]
  br i1 %310, label %while.body.564, label %while.end.566

while.body.564:                                   ; preds = %land.end.563
  %311 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr565 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %incdec.ptr565, i8** %p, align 8, !tbaa !1
  br label %while.cond.550

while.end.566:                                    ; preds = %land.end.563
  %312 = load i8*, i8** %p, align 8, !tbaa !1
  %313 = load i8, i8* %312, align 1, !tbaa !12
  %conv567 = sext i8 %313 to i32
  %cmp568 = icmp ne i32 %conv567, 0
  br i1 %cmp568, label %if.then.570, label %if.end.572

if.then.570:                                      ; preds = %while.end.566
  %314 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr571 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %incdec.ptr571, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %314, align 1, !tbaa !12
  br label %if.end.572

if.end.572:                                       ; preds = %if.then.570, %while.end.566
  store %struct.prival* getelementptr inbounds ([0 x %struct.prival], [0 x %struct.prival]* @PrivacyValues, i32 0, i32 0), %struct.prival** %pv, align 8, !tbaa !1
  br label %for.cond.573

for.cond.573:                                     ; preds = %for.inc.583, %if.end.572
  %315 = load %struct.prival*, %struct.prival** %pv, align 8, !tbaa !1
  %pv_name = getelementptr inbounds %struct.prival, %struct.prival* %315, i32 0, i32 0
  %316 = load i8*, i8** %pv_name, align 8, !tbaa !84
  %cmp574 = icmp ne i8* %316, null
  br i1 %cmp574, label %for.body.576, label %for.end.585

for.body.576:                                     ; preds = %for.cond.573
  %317 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %318 = load %struct.prival*, %struct.prival** %pv, align 8, !tbaa !1
  %pv_name577 = getelementptr inbounds %struct.prival, %struct.prival* %318, i32 0, i32 0
  %319 = load i8*, i8** %pv_name577, align 8, !tbaa !84
  %call578 = call i32 @sm_strcasecmp(i8* %317, i8* %319)
  %cmp579 = icmp eq i32 %call578, 0
  br i1 %cmp579, label %if.then.581, label %if.end.582

if.then.581:                                      ; preds = %for.body.576
  br label %for.end.585

if.end.582:                                       ; preds = %for.body.576
  br label %for.inc.583

for.inc.583:                                      ; preds = %if.end.582
  %320 = load %struct.prival*, %struct.prival** %pv, align 8, !tbaa !1
  %incdec.ptr584 = getelementptr inbounds %struct.prival, %struct.prival* %320, i32 1
  store %struct.prival* %incdec.ptr584, %struct.prival** %pv, align 8, !tbaa !1
  br label %for.cond.573

for.end.585:                                      ; preds = %if.then.581, %for.cond.573
  %321 = load %struct.prival*, %struct.prival** %pv, align 8, !tbaa !1
  %pv_name586 = getelementptr inbounds %struct.prival, %struct.prival* %321, i32 0, i32 0
  %322 = load i8*, i8** %pv_name586, align 8, !tbaa !84
  %cmp587 = icmp eq i8* %322, null
  br i1 %cmp587, label %if.then.589, label %if.else.590

if.then.589:                                      ; preds = %for.end.585
  %323 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.122, i32 0, i32 0), i8* %323)
  br label %if.end.592

if.else.590:                                      ; preds = %for.end.585
  %324 = load %struct.prival*, %struct.prival** %pv, align 8, !tbaa !1
  %pv_flag = getelementptr inbounds %struct.prival, %struct.prival* %324, i32 0, i32 1
  %325 = load i64, i64* %pv_flag, align 8, !tbaa !86
  %326 = load i64, i64* @PrivacyFlags, align 8, !tbaa !7
  %or591 = or i64 %326, %325
  store i64 %or591, i64* @PrivacyFlags, align 8, !tbaa !7
  br label %if.end.592

if.end.592:                                       ; preds = %if.else.590, %if.then.589
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.593

cleanup.593:                                      ; preds = %if.end.592, %if.then.548
  %327 = bitcast %struct.prival** %pv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %cleanup.dest.594 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.594, label %unreachable [
    i32 0, label %cleanup.cont.595
    i32 30, label %for.end.596
  ]

cleanup.cont.595:                                 ; preds = %cleanup.593
  br label %for.cond.520

for.end.596:                                      ; preds = %cleanup.593
  store i32 0, i32* %sticky.addr, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.597:                                        ; preds = %if.end.232
  %328 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call598 = call i8* @newstr(i8* %328)
  store i8* %call598, i8** @PostMasterCopy, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.599:                                        ; preds = %if.end.232
  %329 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call600 = call i32 @atoi(i8* %329) #9
  %conv601 = sext i32 %call600 to i64
  store i64 %conv601, i64* @QueueFactor, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.602:                                        ; preds = %if.end.232
  %330 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds i8, i8* %330, i64 0
  %331 = load i8, i8* %arrayidx603, align 1, !tbaa !12
  %conv604 = sext i8 %331 to i32
  %cmp605 = icmp eq i32 %conv604, 0
  br i1 %cmp605, label %if.then.607, label %if.else.608

if.then.607:                                      ; preds = %sw.bb.602
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), i8** @QueueDir, align 8, !tbaa !1
  br label %if.end.610

if.else.608:                                      ; preds = %sw.bb.602
  %332 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call609 = call i8* @newstr(i8* %332)
  store i8* %call609, i8** @QueueDir, align 8, !tbaa !1
  br label %if.end.610

if.end.610:                                       ; preds = %if.else.608, %if.then.607
  %333 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp611 = icmp ne i32 %333, 0
  br i1 %cmp611, label %land.lhs.true.613, label %if.end.616

land.lhs.true.613:                                ; preds = %if.end.610
  %334 = load i32, i32* %safe.addr, align 4, !tbaa !5
  %tobool614 = icmp ne i32 %334, 0
  br i1 %tobool614, label %if.end.616, label %if.then.615

if.then.615:                                      ; preds = %land.lhs.true.613
  store i32 1, i32* @Warn_Q_option, align 4, !tbaa !5
  br label %if.end.616

if.end.616:                                       ; preds = %if.then.615, %land.lhs.true.613, %if.end.610
  br label %sw.epilog.1424

sw.bb.617:                                        ; preds = %if.end.232
  %335 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call618 = call i32 @atobool(i8* %335)
  store i32 %call618, i32* @DontPruneRoutes, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.619:                                        ; preds = %if.end.232
  %336 = load i8*, i8** %subopt, align 8, !tbaa !1
  %cmp620 = icmp eq i8* %336, null
  br i1 %cmp620, label %if.then.622, label %if.else.623

if.then.622:                                      ; preds = %sw.bb.619
  %337 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %338 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  call void @inittimeouts(i8* %337, i32 %338)
  br label %if.end.624

if.else.623:                                      ; preds = %sw.bb.619
  %339 = load i8*, i8** %subopt, align 8, !tbaa !1
  %340 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %341 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  call void @settimeout(i8* %339, i8* %340, i32 %341)
  br label %if.end.624

if.end.624:                                       ; preds = %if.else.623, %if.then.622
  br label %sw.epilog.1424

sw.bb.625:                                        ; preds = %if.end.232
  %342 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx626 = getelementptr inbounds i8, i8* %342, i64 0
  %343 = load i8, i8* %arrayidx626, align 1, !tbaa !12
  %conv627 = sext i8 %343 to i32
  %cmp628 = icmp eq i32 %conv627, 0
  br i1 %cmp628, label %if.then.630, label %if.else.631

if.then.630:                                      ; preds = %sw.bb.625
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8** @StatFile, align 8, !tbaa !1
  br label %if.end.633

if.else.631:                                      ; preds = %sw.bb.625
  %344 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call632 = call i8* @newstr(i8* %344)
  store i8* %call632, i8** @StatFile, align 8, !tbaa !1
  br label %if.end.633

if.end.633:                                       ; preds = %if.else.631, %if.then.630
  br label %sw.epilog.1424

sw.bb.634:                                        ; preds = %if.end.232
  %345 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %345) #1
  %346 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %347 = load i8, i8* %346, align 1, !tbaa !12
  %conv635 = sext i8 %347 to i32
  %idxprom636 = sext i32 %conv635 to i64
  %call637 = call i32** @__ctype_tolower_loc() #8
  %348 = load i32*, i32** %call637, align 8, !tbaa !1
  %arrayidx638 = getelementptr inbounds i32, i32* %348, i64 %idxprom636
  %349 = load i32, i32* %arrayidx638, align 4, !tbaa !5
  store i32 %349, i32* %__res, align 4, !tbaa !5
  %350 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %350, i32* %tmp, !tbaa !5
  %351 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = load i32, i32* %tmp, !tbaa !5
  %cmp639 = icmp eq i32 %352, 105
  br i1 %cmp639, label %if.then.641, label %if.else.642

if.then.641:                                      ; preds = %sw.bb.634
  store i32 1, i32* @SuperSafe, align 4, !tbaa !5
  br label %if.end.658

if.else.642:                                      ; preds = %sw.bb.634
  %353 = bitcast i32* %__res644 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %353) #1
  %354 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %355 = load i8, i8* %354, align 1, !tbaa !12
  %conv645 = sext i8 %355 to i32
  %idxprom646 = sext i32 %conv645 to i64
  %call647 = call i32** @__ctype_tolower_loc() #8
  %356 = load i32*, i32** %call647, align 8, !tbaa !1
  %arrayidx648 = getelementptr inbounds i32, i32* %356, i64 %idxprom646
  %357 = load i32, i32* %arrayidx648, align 4, !tbaa !5
  store i32 %357, i32* %__res644, align 4, !tbaa !5
  %358 = load i32, i32* %__res644, align 4, !tbaa !5
  store i32 %358, i32* %tmp649, !tbaa !5
  %359 = bitcast i32* %__res644 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = load i32, i32* %tmp649, !tbaa !5
  %cmp650 = icmp eq i32 %360, 112
  br i1 %cmp650, label %if.then.652, label %if.else.653

if.then.652:                                      ; preds = %if.else.642
  store i32 3, i32* @SuperSafe, align 4, !tbaa !5
  br label %if.end.657

if.else.653:                                      ; preds = %if.else.642
  %361 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call654 = call i32 @atobool(i8* %361)
  %tobool655 = icmp ne i32 %call654, 0
  %cond656 = select i1 %tobool655, i32 2, i32 0
  store i32 %cond656, i32* @SuperSafe, align 4, !tbaa !5
  br label %if.end.657

if.end.657:                                       ; preds = %if.else.653, %if.then.652
  br label %if.end.658

if.end.658:                                       ; preds = %if.end.657, %if.then.641
  br label %sw.epilog.1424

sw.bb.659:                                        ; preds = %if.end.232
  %362 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call660 = call i8* @strchr(i8* %362, i32 47) #1
  store i8* %call660, i8** %p, align 8, !tbaa !1
  %363 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp661 = icmp ne i8* %363, null
  br i1 %cmp661, label %if.then.663, label %if.end.665

if.then.663:                                      ; preds = %sw.bb.659
  %364 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr664 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %incdec.ptr664, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %364, align 1, !tbaa !12
  %365 = load i8*, i8** %p, align 8, !tbaa !1
  %366 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  call void @settimeout(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* %365, i32 %366)
  br label %if.end.665

if.end.665:                                       ; preds = %if.then.663, %sw.bb.659
  %367 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %368 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  call void @settimeout(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), i8* %367, i32 %368)
  br label %sw.epilog.1424

sw.bb.666:                                        ; preds = %if.end.232
  %369 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call667 = call i8* @newstr(i8* %369)
  store i8* %call667, i8** @TimeZoneSpec, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.668:                                        ; preds = %if.end.232
  %370 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call669 = call i8* @newstr(i8* %370)
  store i8* %call669, i8** @UdbSpec, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.670:                                        ; preds = %if.end.232
  %371 = load i8*, i8** %val.addr, align 8, !tbaa !1
  store i8* %371, i8** %p, align 8, !tbaa !1
  br label %for.cond.671

for.cond.671:                                     ; preds = %for.inc.690, %sw.bb.670
  %372 = load i8*, i8** %p, align 8, !tbaa !1
  %373 = load i8, i8* %372, align 1, !tbaa !12
  %conv672 = sext i8 %373 to i32
  %cmp673 = icmp ne i32 %conv672, 0
  br i1 %cmp673, label %for.body.675, label %for.end.692

for.body.675:                                     ; preds = %for.cond.671
  %374 = load i8*, i8** %p, align 8, !tbaa !1
  %375 = load i8, i8* %374, align 1, !tbaa !12
  %conv676 = sext i8 %375 to i32
  %cmp677 = icmp eq i32 %conv676, 46
  br i1 %cmp677, label %if.then.687, label %lor.lhs.false.679

lor.lhs.false.679:                                ; preds = %for.body.675
  %376 = load i8*, i8** %p, align 8, !tbaa !1
  %377 = load i8, i8* %376, align 1, !tbaa !12
  %conv680 = sext i8 %377 to i32
  %cmp681 = icmp eq i32 %conv680, 47
  br i1 %cmp681, label %if.then.687, label %lor.lhs.false.683

lor.lhs.false.683:                                ; preds = %lor.lhs.false.679
  %378 = load i8*, i8** %p, align 8, !tbaa !1
  %379 = load i8, i8* %378, align 1, !tbaa !12
  %conv684 = sext i8 %379 to i32
  %cmp685 = icmp eq i32 %conv684, 58
  br i1 %cmp685, label %if.then.687, label %if.end.689

if.then.687:                                      ; preds = %lor.lhs.false.683, %lor.lhs.false.679, %for.body.675
  %380 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr688 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %incdec.ptr688, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %380, align 1, !tbaa !12
  br label %for.end.692

if.end.689:                                       ; preds = %lor.lhs.false.683
  br label %for.inc.690

for.inc.690:                                      ; preds = %if.end.689
  %381 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr691 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %incdec.ptr691, i8** %p, align 8, !tbaa !1
  br label %for.cond.671

for.end.692:                                      ; preds = %if.then.687, %for.cond.671
  %382 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %383 = load i8, i8* %382, align 1, !tbaa !12
  %conv693 = sext i8 %383 to i32
  %and694 = and i32 %conv693, -128
  %cmp695 = icmp eq i32 %and694, 0
  br i1 %cmp695, label %land.lhs.true.697, label %if.else.707

land.lhs.true.697:                                ; preds = %for.end.692
  %384 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %385 = load i8, i8* %384, align 1, !tbaa !12
  %conv698 = sext i8 %385 to i32
  %idxprom699 = sext i32 %conv698 to i64
  %call700 = call i16** @__ctype_b_loc() #8
  %386 = load i16*, i16** %call700, align 8, !tbaa !1
  %arrayidx701 = getelementptr inbounds i16, i16* %386, i64 %idxprom699
  %387 = load i16, i16* %arrayidx701, align 2, !tbaa !18
  %conv702 = zext i16 %387 to i32
  %and703 = and i32 %conv702, 2048
  %tobool704 = icmp ne i32 %and703, 0
  br i1 %tobool704, label %if.then.705, label %if.else.707

if.then.705:                                      ; preds = %land.lhs.true.697
  %388 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call706 = call i32 @atoi(i8* %388) #9
  store i32 %call706, i32* @DefUid, align 4, !tbaa !5
  call void @setdefuser()
  br label %if.end.719

if.else.707:                                      ; preds = %land.lhs.true.697, %for.end.692
  %389 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %389) #1
  store i32 -1, i32* @DefUid, align 4, !tbaa !5
  %390 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call709 = call %struct.passwd* @sm_getpwnam(i8* %390)
  store %struct.passwd* %call709, %struct.passwd** %pw, align 8, !tbaa !1
  %391 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp710 = icmp eq %struct.passwd* %391, null
  br i1 %cmp710, label %if.then.712, label %if.else.713

if.then.712:                                      ; preds = %if.else.707
  %392 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.127, i32 0, i32 0), i8* %392)
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.716

if.else.713:                                      ; preds = %if.else.707
  %393 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %393, i32 0, i32 2
  %394 = load i32, i32* %pw_uid, align 4, !tbaa !60
  store i32 %394, i32* @DefUid, align 4, !tbaa !5
  %395 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %395, i32 0, i32 3
  %396 = load i32, i32* %pw_gid, align 4, !tbaa !62
  store i32 %396, i32* @DefGid, align 4, !tbaa !5
  %397 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %397, i32 0, i32 0
  %398 = load i8*, i8** %pw_name, align 8, !tbaa !87
  %call714 = call i8* @newstr(i8* %398)
  store i8* %call714, i8** @DefUser, align 8, !tbaa !1
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.713
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.716

cleanup.716:                                      ; preds = %if.end.715, %if.then.712
  %399 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #1
  %cleanup.dest.717 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.717, label %unreachable [
    i32 0, label %cleanup.cont.718
    i32 16, label %sw.epilog.1424
  ]

cleanup.cont.718:                                 ; preds = %cleanup.716
  br label %if.end.719

if.end.719:                                       ; preds = %cleanup.cont.718, %if.then.705
  %400 = load i8*, i8** %p, align 8, !tbaa !1
  %401 = load i8, i8* %400, align 1, !tbaa !12
  %conv720 = sext i8 %401 to i32
  %cmp721 = icmp eq i32 %conv720, 0
  br i1 %cmp721, label %if.then.723, label %if.end.724

if.then.723:                                      ; preds = %if.end.719
  br label %sw.epilog.1424

if.end.724:                                       ; preds = %if.end.719
  %402 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %402, i8** %val.addr, align 8, !tbaa !1
  br label %g_opt

sw.bb.725:                                        ; preds = %if.end.232
  %403 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx726 = getelementptr inbounds i8, i8* %403, i64 0
  %404 = load i8, i8* %arrayidx726, align 1, !tbaa !12
  %conv727 = sext i8 %404 to i32
  %cmp728 = icmp ne i32 %conv727, 0
  br i1 %cmp728, label %if.then.730, label %if.end.732

if.then.730:                                      ; preds = %sw.bb.725
  %405 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call731 = call i8* @newstr(i8* %405)
  store i8* %call731, i8** @FallbackMX, align 8, !tbaa !1
  br label %if.end.732

if.end.732:                                       ; preds = %if.then.730, %sw.bb.725
  br label %sw.epilog.1424

sw.bb.733:                                        ; preds = %if.end.232
  %406 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call734 = call i32 @atobool(i8* %406)
  %tobool735 = icmp ne i32 %call734, 0
  %cond736 = select i1 %tobool735, i32 1, i32 0
  store i32 %cond736, i32* @Verbose, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.737:                                        ; preds = %if.end.232
  %407 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call738 = call i32 @atobool(i8* %407)
  store i32 %call738, i32* @TryNullMXList, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.739:                                        ; preds = %if.end.232
  %408 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call740 = call i32 @atoi(i8* %408) #9
  store i32 %call740, i32* @QueueLA, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.741:                                        ; preds = %if.end.232
  %409 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call742 = call i32 @atoi(i8* %409) #9
  store i32 %call742, i32* @RefuseLA, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.743:                                        ; preds = %if.end.232
  %410 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call744 = call i32 @atoi(i8* %410) #9
  store i32 %call744, i32* @DelayLA, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.745:                                        ; preds = %if.end.232
  %411 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call746 = call i32 @atoi(i8* %411) #9
  %conv747 = sext i32 %call746 to i64
  store i64 %conv747, i64* @WkRecipFact, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.748:                                        ; preds = %if.end.232
  %412 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call749 = call i32 @atobool(i8* %412)
  store i32 %call749, i32* @ForkQueueRuns, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.750:                                        ; preds = %if.end.232
  %413 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call751 = call i32 @atoi(i8* %413) #9
  %conv752 = sext i32 %call751 to i64
  store i64 %conv752, i64* @WkClassFact, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.753:                                        ; preds = %if.end.232
  %414 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call754 = call i32 @atoi(i8* %414) #9
  %conv755 = sext i32 %call754 to i64
  store i64 %conv755, i64* @WkTimeFact, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.756:                                        ; preds = %if.end.232
  %415 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %416 = load i8, i8* %415, align 1, !tbaa !12
  %conv757 = sext i8 %416 to i32
  switch i32 %conv757, label %sw.default.765 [
    i32 102, label %sw.bb.758
    i32 70, label %sw.bb.758
    i32 104, label %sw.bb.759
    i32 72, label %sw.bb.759
    i32 109, label %sw.bb.760
    i32 77, label %sw.bb.760
    i32 112, label %sw.bb.761
    i32 80, label %sw.bb.761
    i32 116, label %sw.bb.762
    i32 84, label %sw.bb.762
    i32 114, label %sw.bb.763
    i32 82, label %sw.bb.763
    i32 110, label %sw.bb.764
    i32 78, label %sw.bb.764
  ]

sw.bb.758:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 3, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.bb.759:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 1, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.bb.760:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 5, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.bb.761:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 0, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.bb.762:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 2, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.bb.763:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 4, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.bb.764:                                        ; preds = %sw.bb.756, %sw.bb.756
  store i32 6, i32* @QueueSortOrder, align 4, !tbaa !5
  br label %sw.epilog.766

sw.default.765:                                   ; preds = %sw.bb.756
  %417 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.128, i32 0, i32 0), i8* %417)
  br label %sw.epilog.766

sw.epilog.766:                                    ; preds = %sw.default.765, %sw.bb.764, %sw.bb.763, %sw.bb.762, %sw.bb.761, %sw.bb.760, %sw.bb.759, %sw.bb.758
  br label %sw.epilog.1424

sw.bb.767:                                        ; preds = %if.end.232
  %418 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call768 = call i8* @newstr(i8* %418)
  store i8* %call768, i8** @HostsFile, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.769:                                        ; preds = %if.end.232
  %419 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call770 = call i64 @convtime(i8* %419, i32 109)
  store i64 %call770, i64* @MinQueueAge, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.771:                                        ; preds = %if.end.232
  %420 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call772 = call i64 @convtime(i8* %420, i32 109)
  store i64 %call772, i64* @MaxQueueAge, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.773:                                        ; preds = %if.end.232
  %421 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call774 = call i8* @denlstring(i8* %421, i32 1, i32 1)
  %call775 = call i8* @newstr(i8* %call774)
  store i8* %call775, i8** @DefaultCharSet, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.776:                                        ; preds = %if.end.232
  %422 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call777 = call i8* @newstr(i8* %422)
  store i8* %call777, i8** @ServiceSwitchFile, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.778:                                        ; preds = %if.end.232
  %423 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call779 = call i64 @convtime(i8* %423, i32 115)
  store i64 %call779, i64* @DialDelay, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.780:                                        ; preds = %if.end.232
  %424 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call781 = call i32 @sm_strcasecmp(i8* %424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0))
  %cmp782 = icmp eq i32 %call781, 0
  br i1 %cmp782, label %if.then.784, label %if.else.785

if.then.784:                                      ; preds = %sw.bb.780
  store i32 0, i32* @NoRecipientAction, align 4, !tbaa !5
  br label %if.end.810

if.else.785:                                      ; preds = %sw.bb.780
  %425 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call786 = call i32 @sm_strcasecmp(i8* %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0))
  %cmp787 = icmp eq i32 %call786, 0
  br i1 %cmp787, label %if.then.789, label %if.else.790

if.then.789:                                      ; preds = %if.else.785
  store i32 1, i32* @NoRecipientAction, align 4, !tbaa !5
  br label %if.end.809

if.else.790:                                      ; preds = %if.else.785
  %426 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call791 = call i32 @sm_strcasecmp(i8* %426, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.131, i32 0, i32 0))
  %cmp792 = icmp eq i32 %call791, 0
  br i1 %cmp792, label %if.then.794, label %if.else.795

if.then.794:                                      ; preds = %if.else.790
  store i32 2, i32* @NoRecipientAction, align 4, !tbaa !5
  br label %if.end.808

if.else.795:                                      ; preds = %if.else.790
  %427 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call796 = call i32 @sm_strcasecmp(i8* %427, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0))
  %cmp797 = icmp eq i32 %call796, 0
  br i1 %cmp797, label %if.then.799, label %if.else.800

if.then.799:                                      ; preds = %if.else.795
  store i32 3, i32* @NoRecipientAction, align 4, !tbaa !5
  br label %if.end.807

if.else.800:                                      ; preds = %if.else.795
  %428 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call801 = call i32 @sm_strcasecmp(i8* %428, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i32 0, i32 0))
  %cmp802 = icmp eq i32 %call801, 0
  br i1 %cmp802, label %if.then.804, label %if.else.805

if.then.804:                                      ; preds = %if.else.800
  store i32 4, i32* @NoRecipientAction, align 4, !tbaa !5
  br label %if.end.806

if.else.805:                                      ; preds = %if.else.800
  %429 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.134, i32 0, i32 0), i8* %429)
  br label %if.end.806

if.end.806:                                       ; preds = %if.else.805, %if.then.804
  br label %if.end.807

if.end.807:                                       ; preds = %if.end.806, %if.then.799
  br label %if.end.808

if.end.808:                                       ; preds = %if.end.807, %if.then.794
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %if.then.789
  br label %if.end.810

if.end.810:                                       ; preds = %if.end.809, %if.then.784
  br label %sw.epilog.1424

sw.bb.811:                                        ; preds = %if.end.232
  %430 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %431 = load i8, i8* %430, align 1, !tbaa !12
  %conv812 = sext i8 %431 to i32
  %cmp813 = icmp eq i32 %conv812, 0
  br i1 %cmp813, label %if.then.815, label %if.end.816

if.then.815:                                      ; preds = %sw.bb.811
  br label %sw.epilog.1424

if.end.816:                                       ; preds = %sw.bb.811
  %432 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %433 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call817 = call i64 @strlen(i8* %433) #9
  %add.ptr = getelementptr inbounds i8, i8* %432, i64 %call817
  %add.ptr818 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr818, i8** %p, align 8, !tbaa !1
  br label %while.cond.819

while.cond.819:                                   ; preds = %while.body.827, %if.end.816
  %434 = load i8*, i8** %p, align 8, !tbaa !1
  %435 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %cmp820 = icmp uge i8* %434, %435
  br i1 %cmp820, label %land.rhs.822, label %land.end.826

land.rhs.822:                                     ; preds = %while.cond.819
  %436 = load i8*, i8** %p, align 8, !tbaa !1
  %437 = load i8, i8* %436, align 1, !tbaa !12
  %conv823 = sext i8 %437 to i32
  %cmp824 = icmp eq i32 %conv823, 47
  br label %land.end.826

land.end.826:                                     ; preds = %land.rhs.822, %while.cond.819
  %438 = phi i1 [ false, %while.cond.819 ], [ %cmp824, %land.rhs.822 ]
  br i1 %438, label %while.body.827, label %while.end.829

while.body.827:                                   ; preds = %land.end.826
  %439 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr828 = getelementptr inbounds i8, i8* %439, i32 -1
  store i8* %incdec.ptr828, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %439, align 1, !tbaa !12
  br label %while.cond.819

while.end.829:                                    ; preds = %land.end.826
  %440 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %441 = load i8, i8* %440, align 1, !tbaa !12
  %conv830 = sext i8 %441 to i32
  %cmp831 = icmp eq i32 %conv830, 0
  br i1 %cmp831, label %if.then.833, label %if.end.834

if.then.833:                                      ; preds = %while.end.829
  br label %sw.epilog.1424

if.end.834:                                       ; preds = %while.end.829
  %442 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call835 = call i8* @newstr(i8* %442)
  store i8* %call835, i8** @SafeFileEnv, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.836:                                        ; preds = %if.end.232
  %443 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call837 = call i64 @atol(i8* %443) #9
  store i64 %call837, i64* @MaxMessageSize, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.838:                                        ; preds = %if.end.232
  %444 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call839 = call i32 @atobool(i8* %444)
  store i32 %call839, i32* @ColonOkInAddr, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.840:                                        ; preds = %if.end.232
  %445 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call841 = call i32 @atoi(i8* %445) #9
  store i32 %call841, i32* @MaxQueueRun, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.842:                                        ; preds = %if.end.232
  %446 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call843 = call i32 @atoi(i8* %446) #9
  store i32 %call843, i32* @MaxChildren, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.844:                                        ; preds = %if.end.232
  %447 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call845 = call i32 @atoi(i8* %447) #9
  store i32 %call845, i32* @MaxQueueChildren, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.846:                                        ; preds = %if.end.232
  %448 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call847 = call i32 @atoi(i8* %448) #9
  store i32 %call847, i32* @MaxRunnersPerQueue, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.848:                                        ; preds = %if.end.232
  %449 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call849 = call i32 @atoi(i8* %449) #9
  store i32 %call849, i32* @NiceQueueRun, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.850:                                        ; preds = %if.end.232
  %450 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call851 = call i64 @atol(i8* %450) #9
  %conv852 = trunc i64 %call851 to i32
  store i32 %conv852, i32* @ShmKey, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.853:                                        ; preds = %if.end.232
  %451 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %452 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %451, i8* %arraydecay, i64 2048, %struct.envelope* %452)
  %arraydecay854 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exbuf, i32 0, i32 0
  %call855 = call i8* @sm_pstrdup_x(i8* %arraydecay854)
  store i8* %call855, i8** %newval, align 8, !tbaa !1
  %453 = load i8*, i8** @ShmKeyFile, align 8, !tbaa !1
  %cmp856 = icmp ne i8* %453, null
  br i1 %cmp856, label %if.then.858, label %if.end.859

if.then.858:                                      ; preds = %sw.bb.853
  %454 = load i8*, i8** @ShmKeyFile, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %454, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 3755)
  br label %if.end.859

if.end.859:                                       ; preds = %if.then.858, %sw.bb.853
  %455 = load i8*, i8** %newval, align 8, !tbaa !1
  store i8* %455, i8** @ShmKeyFile, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.860:                                        ; preds = %if.end.232
  %456 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call861 = call i32 @atobool(i8* %456)
  store i32 %call861, i32* @DontExpandCnames, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.862:                                        ; preds = %if.end.232
  %arraydecay863 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call864 = call i64 @sm_strlcpy(i8* %arraydecay863, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i64 50)
  %457 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call865 = call i64 @strlen(i8* %457) #9
  %cmp866 = icmp ult i64 %call865, 40
  br i1 %cmp866, label %if.then.868, label %if.else.871

if.then.868:                                      ; preds = %sw.bb.862
  %arraydecay869 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %458 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call870 = call i64 @sm_strlcat(i8* %arraydecay869, i8* %458, i64 50)
  br label %if.end.873

if.else.871:                                      ; preds = %sw.bb.862
  %call872 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.136, i32 0, i32 0))
  br label %if.end.873

if.end.873:                                       ; preds = %if.else.871, %if.then.868
  %arraydecay874 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call875 = call i8* @newstr(i8* %arraydecay874)
  store i8* %call875, i8** @MustQuoteChars, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.876:                                        ; preds = %if.end.232
  %459 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call877 = call i8* @munchstring(i8* %459, i8** null, i32 0)
  %call878 = call i8* @newstr(i8* %call877)
  store i8* %call878, i8** @SmtpGreeting, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.879:                                        ; preds = %if.end.232
  %460 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call880 = call i8* @munchstring(i8* %460, i8** null, i32 0)
  %call881 = call i8* @newstr(i8* %call880)
  store i8* %call881, i8** @UnixFromLine, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.882:                                        ; preds = %if.end.232
  %461 = load i8*, i8** @OperatorChars, align 8, !tbaa !1
  %cmp883 = icmp ne i8* %461, null
  br i1 %cmp883, label %if.then.885, label %if.end.887

if.then.885:                                      ; preds = %sw.bb.882
  %call886 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.137, i32 0, i32 0))
  br label %if.end.887

if.end.887:                                       ; preds = %if.then.885, %sw.bb.882
  %462 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call888 = call i8* @munchstring(i8* %462, i8** null, i32 0)
  %call889 = call i8* @newstr(i8* %call888)
  store i8* %call889, i8** @OperatorChars, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.890:                                        ; preds = %if.end.232
  %463 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call891 = call i32 @atobool(i8* %463)
  store i32 %call891, i32* @DontInitGroups, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.892:                                        ; preds = %if.end.232
  %464 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call893 = call i32 @atobool(i8* %464)
  store i32 %call893, i32* @SingleLineFromHeader, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.894:                                        ; preds = %if.end.232
  %465 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call895 = call i32 @atobool(i8* %465)
  store i32 %call895, i32* @AllowBogusHELO, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.896:                                        ; preds = %if.end.232
  %466 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call897 = call i32 @atoi(i8* %466) #9
  store i32 %call897, i32* @ConnRateThrottle, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.898:                                        ; preds = %if.end.232
  %467 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call899 = call i32 @atobool(i8* %467)
  %tobool900 = icmp ne i32 %call899, 0
  br i1 %tobool900, label %if.end.904, label %if.then.901

if.then.901:                                      ; preds = %sw.bb.898
  %468 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %or902 = or i32 %468, 8
  store i32 %or902, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %469 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %or903 = or i32 %469, 16
  store i32 %or903, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  br label %if.end.904

if.end.904:                                       ; preds = %if.then.901, %sw.bb.898
  br label %sw.epilog.1424

sw.bb.905:                                        ; preds = %if.end.232
  %470 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call906 = call i8* @newstr(i8* %470)
  store i8* %call906, i8** @DoubleBounceAddr, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.907:                                        ; preds = %if.end.232
  %471 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx908 = getelementptr inbounds i8, i8* %471, i64 0
  %472 = load i8, i8* %arrayidx908, align 1, !tbaa !12
  %conv909 = sext i8 %472 to i32
  %cmp910 = icmp ne i32 %conv909, 0
  br i1 %cmp910, label %if.then.912, label %if.end.914

if.then.912:                                      ; preds = %sw.bb.907
  %473 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call913 = call i8* @newstr(i8* %473)
  store i8* %call913, i8** @HostStatDir, align 8, !tbaa !1
  br label %if.end.914

if.end.914:                                       ; preds = %if.then.912, %sw.bb.907
  br label %sw.epilog.1424

sw.bb.915:                                        ; preds = %if.end.232
  %474 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call916 = call i32 @atobool(i8* %474)
  store i32 %call916, i32* @SingleThreadDelivery, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.917:                                        ; preds = %if.end.232
  %475 = load i8*, i8** %val.addr, align 8, !tbaa !1
  store i8* %475, i8** %p, align 8, !tbaa !1
  br label %for.cond.918

for.cond.918:                                     ; preds = %for.inc.937, %sw.bb.917
  %476 = load i8*, i8** %p, align 8, !tbaa !1
  %477 = load i8, i8* %476, align 1, !tbaa !12
  %conv919 = sext i8 %477 to i32
  %cmp920 = icmp ne i32 %conv919, 0
  br i1 %cmp920, label %for.body.922, label %for.end.939

for.body.922:                                     ; preds = %for.cond.918
  %478 = load i8*, i8** %p, align 8, !tbaa !1
  %479 = load i8, i8* %478, align 1, !tbaa !12
  %conv923 = sext i8 %479 to i32
  %cmp924 = icmp eq i32 %conv923, 46
  br i1 %cmp924, label %if.then.934, label %lor.lhs.false.926

lor.lhs.false.926:                                ; preds = %for.body.922
  %480 = load i8*, i8** %p, align 8, !tbaa !1
  %481 = load i8, i8* %480, align 1, !tbaa !12
  %conv927 = sext i8 %481 to i32
  %cmp928 = icmp eq i32 %conv927, 47
  br i1 %cmp928, label %if.then.934, label %lor.lhs.false.930

lor.lhs.false.930:                                ; preds = %lor.lhs.false.926
  %482 = load i8*, i8** %p, align 8, !tbaa !1
  %483 = load i8, i8* %482, align 1, !tbaa !12
  %conv931 = sext i8 %483 to i32
  %cmp932 = icmp eq i32 %conv931, 58
  br i1 %cmp932, label %if.then.934, label %if.end.936

if.then.934:                                      ; preds = %lor.lhs.false.930, %lor.lhs.false.926, %for.body.922
  %484 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr935 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %incdec.ptr935, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %484, align 1, !tbaa !12
  br label %for.end.939

if.end.936:                                       ; preds = %lor.lhs.false.930
  br label %for.inc.937

for.inc.937:                                      ; preds = %if.end.936
  %485 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr938 = getelementptr inbounds i8, i8* %485, i32 1
  store i8* %incdec.ptr938, i8** %p, align 8, !tbaa !1
  br label %for.cond.918

for.end.939:                                      ; preds = %if.then.934, %for.cond.918
  %486 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %487 = load i8, i8* %486, align 1, !tbaa !12
  %conv940 = sext i8 %487 to i32
  %and941 = and i32 %conv940, -128
  %cmp942 = icmp eq i32 %and941, 0
  br i1 %cmp942, label %land.lhs.true.944, label %if.else.957

land.lhs.true.944:                                ; preds = %for.end.939
  %488 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %489 = load i8, i8* %488, align 1, !tbaa !12
  %conv945 = sext i8 %489 to i32
  %idxprom946 = sext i32 %conv945 to i64
  %call947 = call i16** @__ctype_b_loc() #8
  %490 = load i16*, i16** %call947, align 8, !tbaa !1
  %arrayidx948 = getelementptr inbounds i16, i16* %490, i64 %idxprom946
  %491 = load i16, i16* %arrayidx948, align 2, !tbaa !18
  %conv949 = zext i16 %491 to i32
  %and950 = and i32 %conv949, 2048
  %tobool951 = icmp ne i32 %and950, 0
  br i1 %tobool951, label %if.then.952, label %if.else.957

if.then.952:                                      ; preds = %land.lhs.true.944
  %492 = load i32, i32* %can_setuid, align 4, !tbaa !5
  %tobool953 = icmp ne i32 %492, 0
  br i1 %tobool953, label %if.then.954, label %if.end.956

if.then.954:                                      ; preds = %if.then.952
  %493 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call955 = call i32 @atoi(i8* %493) #9
  store i32 %call955, i32* @RunAsUid, align 4, !tbaa !5
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.954, %if.then.952
  br label %if.end.999

if.else.957:                                      ; preds = %land.lhs.true.944, %for.end.939
  %494 = bitcast %struct.passwd** %pw959 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %494) #1
  %495 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call960 = call %struct.passwd* @sm_getpwnam(i8* %495)
  store %struct.passwd* %call960, %struct.passwd** %pw959, align 8, !tbaa !1
  %496 = load %struct.passwd*, %struct.passwd** %pw959, align 8, !tbaa !1
  %cmp961 = icmp eq %struct.passwd* %496, null
  br i1 %cmp961, label %if.then.963, label %if.else.964

if.then.963:                                      ; preds = %if.else.957
  %497 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.138, i32 0, i32 0), i8* %497)
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.996

if.else.964:                                      ; preds = %if.else.957
  %498 = load i32, i32* %can_setuid, align 4, !tbaa !5
  %tobool965 = icmp ne i32 %498, 0
  br i1 %tobool965, label %if.then.966, label %if.else.975

if.then.966:                                      ; preds = %if.else.964
  %499 = load i8*, i8** %p, align 8, !tbaa !1
  %500 = load i8, i8* %499, align 1, !tbaa !12
  %conv967 = sext i8 %500 to i32
  %cmp968 = icmp eq i32 %conv967, 0
  br i1 %cmp968, label %if.then.970, label %if.end.972

if.then.970:                                      ; preds = %if.then.966
  %501 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call971 = call i8* @newstr(i8* %501)
  store i8* %call971, i8** @RunAsUserName, align 8, !tbaa !1
  br label %if.end.972

if.end.972:                                       ; preds = %if.then.970, %if.then.966
  %502 = load %struct.passwd*, %struct.passwd** %pw959, align 8, !tbaa !1
  %pw_uid973 = getelementptr inbounds %struct.passwd, %struct.passwd* %502, i32 0, i32 2
  %503 = load i32, i32* %pw_uid973, align 4, !tbaa !60
  store i32 %503, i32* @RunAsUid, align 4, !tbaa !5
  %504 = load %struct.passwd*, %struct.passwd** %pw959, align 8, !tbaa !1
  %pw_gid974 = getelementptr inbounds %struct.passwd, %struct.passwd* %504, i32 0, i32 3
  %505 = load i32, i32* %pw_gid974, align 4, !tbaa !62
  store i32 %505, i32* @RunAsGid, align 4, !tbaa !5
  br label %if.end.994

if.else.975:                                      ; preds = %if.else.964
  %506 = load i32, i32* @EffGid, align 4, !tbaa !5
  %507 = load %struct.passwd*, %struct.passwd** %pw959, align 8, !tbaa !1
  %pw_gid976 = getelementptr inbounds %struct.passwd, %struct.passwd* %507, i32 0, i32 3
  %508 = load i32, i32* %pw_gid976, align 4, !tbaa !62
  %cmp977 = icmp eq i32 %506, %508
  br i1 %cmp977, label %if.then.979, label %if.else.981

if.then.979:                                      ; preds = %if.else.975
  %509 = load %struct.passwd*, %struct.passwd** %pw959, align 8, !tbaa !1
  %pw_gid980 = getelementptr inbounds %struct.passwd, %struct.passwd* %509, i32 0, i32 3
  %510 = load i32, i32* %pw_gid980, align 4, !tbaa !62
  store i32 %510, i32* @RunAsGid, align 4, !tbaa !5
  br label %if.end.993

if.else.981:                                      ; preds = %if.else.975
  %511 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool982 = icmp ne i32 %511, 0
  br i1 %tobool982, label %land.lhs.true.983, label %if.end.992

land.lhs.true.983:                                ; preds = %if.else.981
  %512 = load i8*, i8** %p, align 8, !tbaa !1
  %513 = load i8, i8* %512, align 1, !tbaa !12
  %conv984 = sext i8 %513 to i32
  %cmp985 = icmp eq i32 %conv984, 0
  br i1 %cmp985, label %if.then.987, label %if.end.992

if.then.987:                                      ; preds = %land.lhs.true.983
  %514 = load i32, i32* @EffGid, align 4, !tbaa !5
  %conv988 = zext i32 %514 to i64
  %515 = load %struct.passwd*, %struct.passwd** %pw959, align 8, !tbaa !1
  %pw_gid989 = getelementptr inbounds %struct.passwd, %struct.passwd* %515, i32 0, i32 3
  %516 = load i32, i32* %pw_gid989, align 4, !tbaa !62
  %conv990 = zext i32 %516 to i64
  %call991 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.139, i32 0, i32 0), i64 %conv988, i64 %conv990)
  br label %if.end.992

if.end.992:                                       ; preds = %if.then.987, %land.lhs.true.983, %if.else.981
  br label %if.end.993

if.end.993:                                       ; preds = %if.end.992, %if.then.979
  br label %if.end.994

if.end.994:                                       ; preds = %if.end.993, %if.end.972
  br label %if.end.995

if.end.995:                                       ; preds = %if.end.994
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.996

cleanup.996:                                      ; preds = %if.end.995, %if.then.963
  %517 = bitcast %struct.passwd** %pw959 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %517) #1
  %cleanup.dest.997 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.997, label %unreachable [
    i32 0, label %cleanup.cont.998
    i32 16, label %sw.epilog.1424
  ]

cleanup.cont.998:                                 ; preds = %cleanup.996
  br label %if.end.999

if.end.999:                                       ; preds = %cleanup.cont.998, %if.end.956
  %518 = load i8*, i8** %p, align 8, !tbaa !1
  %519 = load i8, i8* %518, align 1, !tbaa !12
  %conv1000 = sext i8 %519 to i32
  %cmp1001 = icmp ne i32 %conv1000, 0
  br i1 %cmp1001, label %if.then.1003, label %if.end.1058

if.then.1003:                                     ; preds = %if.end.999
  %520 = load i8*, i8** %p, align 8, !tbaa !1
  %521 = load i8, i8* %520, align 1, !tbaa !12
  %conv1004 = sext i8 %521 to i32
  %and1005 = and i32 %conv1004, -128
  %cmp1006 = icmp eq i32 %and1005, 0
  br i1 %cmp1006, label %land.lhs.true.1008, label %if.else.1032

land.lhs.true.1008:                               ; preds = %if.then.1003
  %522 = load i8*, i8** %p, align 8, !tbaa !1
  %523 = load i8, i8* %522, align 1, !tbaa !12
  %conv1009 = sext i8 %523 to i32
  %idxprom1010 = sext i32 %conv1009 to i64
  %call1011 = call i16** @__ctype_b_loc() #8
  %524 = load i16*, i16** %call1011, align 8, !tbaa !1
  %arrayidx1012 = getelementptr inbounds i16, i16* %524, i64 %idxprom1010
  %525 = load i16, i16* %arrayidx1012, align 2, !tbaa !18
  %conv1013 = zext i16 %525 to i32
  %and1014 = and i32 %conv1013, 2048
  %tobool1015 = icmp ne i32 %and1014, 0
  br i1 %tobool1015, label %if.then.1016, label %if.else.1032

if.then.1016:                                     ; preds = %land.lhs.true.1008
  %526 = bitcast i32* %runasgid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %526) #1
  %527 = load i8*, i8** %p, align 8, !tbaa !1
  %call1018 = call i32 @atoi(i8* %527) #9
  store i32 %call1018, i32* %runasgid, align 4, !tbaa !5
  %528 = load i32, i32* %can_setuid, align 4, !tbaa !5
  %tobool1019 = icmp ne i32 %528, 0
  br i1 %tobool1019, label %if.then.1023, label %lor.lhs.false.1020

lor.lhs.false.1020:                               ; preds = %if.then.1016
  %529 = load i32, i32* @EffGid, align 4, !tbaa !5
  %530 = load i32, i32* %runasgid, align 4, !tbaa !5
  %cmp1021 = icmp eq i32 %529, %530
  br i1 %cmp1021, label %if.then.1023, label %if.else.1024

if.then.1023:                                     ; preds = %lor.lhs.false.1020, %if.then.1016
  %531 = load i32, i32* %runasgid, align 4, !tbaa !5
  store i32 %531, i32* @RunAsGid, align 4, !tbaa !5
  br label %if.end.1031

if.else.1024:                                     ; preds = %lor.lhs.false.1020
  %532 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool1025 = icmp ne i32 %532, 0
  br i1 %tobool1025, label %if.then.1026, label %if.end.1030

if.then.1026:                                     ; preds = %if.else.1024
  %533 = load i32, i32* @EffGid, align 4, !tbaa !5
  %conv1027 = zext i32 %533 to i64
  %534 = load i32, i32* %runasgid, align 4, !tbaa !5
  %conv1028 = zext i32 %534 to i64
  %call1029 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.139, i32 0, i32 0), i64 %conv1027, i64 %conv1028)
  br label %if.end.1030

if.end.1030:                                      ; preds = %if.then.1026, %if.else.1024
  br label %if.end.1031

if.end.1031:                                      ; preds = %if.end.1030, %if.then.1023
  %535 = bitcast i32* %runasgid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %535) #1
  br label %if.end.1057

if.else.1032:                                     ; preds = %land.lhs.true.1008, %if.then.1003
  %536 = bitcast %struct.group** %gr1034 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %536) #1
  %537 = load i8*, i8** %p, align 8, !tbaa !1
  %call1035 = call %struct.group* @getgrnam(i8* %537)
  store %struct.group* %call1035, %struct.group** %gr1034, align 8, !tbaa !1
  %538 = load %struct.group*, %struct.group** %gr1034, align 8, !tbaa !1
  %cmp1036 = icmp eq %struct.group* %538, null
  br i1 %cmp1036, label %if.then.1038, label %if.else.1039

if.then.1038:                                     ; preds = %if.else.1032
  %539 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.140, i32 0, i32 0), i8* %539)
  br label %if.end.1056

if.else.1039:                                     ; preds = %if.else.1032
  %540 = load i32, i32* %can_setuid, align 4, !tbaa !5
  %tobool1040 = icmp ne i32 %540, 0
  br i1 %tobool1040, label %if.then.1045, label %lor.lhs.false.1041

lor.lhs.false.1041:                               ; preds = %if.else.1039
  %541 = load i32, i32* @EffGid, align 4, !tbaa !5
  %542 = load %struct.group*, %struct.group** %gr1034, align 8, !tbaa !1
  %gr_gid1042 = getelementptr inbounds %struct.group, %struct.group* %542, i32 0, i32 2
  %543 = load i32, i32* %gr_gid1042, align 4, !tbaa !63
  %cmp1043 = icmp eq i32 %541, %543
  br i1 %cmp1043, label %if.then.1045, label %if.else.1047

if.then.1045:                                     ; preds = %lor.lhs.false.1041, %if.else.1039
  %544 = load %struct.group*, %struct.group** %gr1034, align 8, !tbaa !1
  %gr_gid1046 = getelementptr inbounds %struct.group, %struct.group* %544, i32 0, i32 2
  %545 = load i32, i32* %gr_gid1046, align 4, !tbaa !63
  store i32 %545, i32* @RunAsGid, align 4, !tbaa !5
  br label %if.end.1055

if.else.1047:                                     ; preds = %lor.lhs.false.1041
  %546 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool1048 = icmp ne i32 %546, 0
  br i1 %tobool1048, label %if.then.1049, label %if.end.1054

if.then.1049:                                     ; preds = %if.else.1047
  %547 = load i32, i32* @EffGid, align 4, !tbaa !5
  %conv1050 = zext i32 %547 to i64
  %548 = load %struct.group*, %struct.group** %gr1034, align 8, !tbaa !1
  %gr_gid1051 = getelementptr inbounds %struct.group, %struct.group* %548, i32 0, i32 2
  %549 = load i32, i32* %gr_gid1051, align 4, !tbaa !63
  %conv1052 = zext i32 %549 to i64
  %call1053 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.139, i32 0, i32 0), i64 %conv1050, i64 %conv1052)
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.then.1049, %if.else.1047
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.end.1054, %if.then.1045
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.end.1055, %if.then.1038
  %550 = bitcast %struct.group** %gr1034 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %550) #1
  br label %if.end.1057

if.end.1057:                                      ; preds = %if.end.1056, %if.end.1031
  br label %if.end.1058

if.end.1058:                                      ; preds = %if.end.1057, %if.end.999
  %551 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 47), align 1, !tbaa !12
  %conv1059 = zext i8 %551 to i32
  %cmp1060 = icmp sge i32 %conv1059, 5
  br i1 %cmp1060, label %land.lhs.true.1062, label %if.end.1065

land.lhs.true.1062:                               ; preds = %if.end.1058
  %552 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool1063 = icmp ne i32 %552, 0
  br i1 %tobool1063, label %if.end.1065, label %if.then.1064

if.then.1064:                                     ; preds = %land.lhs.true.1062
  %553 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %554 = load i32, i32* @RunAsGid, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.141, i32 0, i32 0), i32 %553, i32 %554)
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.then.1064, %land.lhs.true.1062, %if.end.1058
  br label %sw.epilog.1424

sw.bb.1066:                                       ; preds = %if.end.232
  %555 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1067 = call i32 @atobool(i8* %555)
  store i32 %call1067, i32* @RrtImpliesDsn, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1068:                                       ; preds = %if.end.232
  br label %do.body.1069

do.body.1069:                                     ; preds = %sw.bb.1068
  %556 = bitcast i8** %_newval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %556) #1
  %557 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1071 = call i8* @sm_pstrdup_x(i8* %557)
  store i8* %call1071, i8** %_newval, align 8, !tbaa !1
  %558 = load i8*, i8** @PidFile, align 8, !tbaa !1
  %cmp1072 = icmp ne i8* %558, null
  br i1 %cmp1072, label %if.then.1074, label %if.end.1075

if.then.1074:                                     ; preds = %do.body.1069
  %559 = load i8*, i8** @PidFile, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %559, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 3935)
  br label %if.end.1075

if.end.1075:                                      ; preds = %if.then.1074, %do.body.1069
  %560 = load i8*, i8** %_newval, align 8, !tbaa !1
  store i8* %560, i8** @PidFile, align 8, !tbaa !1
  %561 = bitcast i8** %_newval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  br label %do.cond.1076

do.cond.1076:                                     ; preds = %if.end.1075
  br label %do.end.1077

do.end.1077:                                      ; preds = %do.cond.1076
  br label %sw.epilog.1424

sw.bb.1078:                                       ; preds = %if.end.232
  %562 = load i8*, i8** %val.addr, align 8, !tbaa !1
  store i8* %562, i8** %p, align 8, !tbaa !1
  br label %for.cond.1079

for.cond.1079:                                    ; preds = %cleanup.cont.1173, %sw.bb.1078
  %563 = bitcast %struct.dbsval** %dbs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %563) #1
  br label %while.cond.1081

while.cond.1081:                                  ; preds = %while.body.1104, %for.cond.1079
  %564 = load i8*, i8** %p, align 8, !tbaa !1
  %565 = load i8, i8* %564, align 1, !tbaa !12
  %conv1082 = sext i8 %565 to i32
  %and1083 = and i32 %conv1082, -128
  %cmp1084 = icmp eq i32 %and1083, 0
  br i1 %cmp1084, label %land.rhs.1086, label %land.end.1103

land.rhs.1086:                                    ; preds = %while.cond.1081
  %566 = load i8*, i8** %p, align 8, !tbaa !1
  %567 = load i8, i8* %566, align 1, !tbaa !12
  %conv1087 = sext i8 %567 to i32
  %idxprom1088 = sext i32 %conv1087 to i64
  %call1089 = call i16** @__ctype_b_loc() #8
  %568 = load i16*, i16** %call1089, align 8, !tbaa !1
  %arrayidx1090 = getelementptr inbounds i16, i16* %568, i64 %idxprom1088
  %569 = load i16, i16* %arrayidx1090, align 2, !tbaa !18
  %conv1091 = zext i16 %569 to i32
  %and1092 = and i32 %conv1091, 8192
  %tobool1093 = icmp ne i32 %and1092, 0
  br i1 %tobool1093, label %lor.end.1102, label %lor.rhs.1094

lor.rhs.1094:                                     ; preds = %land.rhs.1086
  %570 = load i8*, i8** %p, align 8, !tbaa !1
  %571 = load i8, i8* %570, align 1, !tbaa !12
  %conv1095 = sext i8 %571 to i32
  %idxprom1096 = sext i32 %conv1095 to i64
  %call1097 = call i16** @__ctype_b_loc() #8
  %572 = load i16*, i16** %call1097, align 8, !tbaa !1
  %arrayidx1098 = getelementptr inbounds i16, i16* %572, i64 %idxprom1096
  %573 = load i16, i16* %arrayidx1098, align 2, !tbaa !18
  %conv1099 = zext i16 %573 to i32
  %and1100 = and i32 %conv1099, 4
  %tobool1101 = icmp ne i32 %and1100, 0
  br label %lor.end.1102

lor.end.1102:                                     ; preds = %lor.rhs.1094, %land.rhs.1086
  %574 = phi i1 [ true, %land.rhs.1086 ], [ %tobool1101, %lor.rhs.1094 ]
  br label %land.end.1103

land.end.1103:                                    ; preds = %lor.end.1102, %while.cond.1081
  %575 = phi i1 [ false, %while.cond.1081 ], [ %574, %lor.end.1102 ]
  br i1 %575, label %while.body.1104, label %while.end.1106

while.body.1104:                                  ; preds = %land.end.1103
  %576 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1105 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %incdec.ptr1105, i8** %p, align 8, !tbaa !1
  br label %while.cond.1081

while.end.1106:                                   ; preds = %land.end.1103
  %577 = load i8*, i8** %p, align 8, !tbaa !1
  %578 = load i8, i8* %577, align 1, !tbaa !12
  %conv1107 = sext i8 %578 to i32
  %cmp1108 = icmp eq i32 %conv1107, 0
  br i1 %cmp1108, label %if.then.1110, label %if.end.1111

if.then.1110:                                     ; preds = %while.end.1106
  store i32 50, i32* %cleanup.dest.slot
  br label %cleanup.1171

if.end.1111:                                      ; preds = %while.end.1106
  %579 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %579, i8** %val.addr, align 8, !tbaa !1
  br label %while.cond.1112

while.cond.1112:                                  ; preds = %while.body.1126, %if.end.1111
  %580 = load i8*, i8** %p, align 8, !tbaa !1
  %581 = load i8, i8* %580, align 1, !tbaa !12
  %conv1113 = sext i8 %581 to i32
  %and1114 = and i32 %conv1113, -128
  %cmp1115 = icmp eq i32 %and1114, 0
  br i1 %cmp1115, label %land.rhs.1117, label %land.end.1125

land.rhs.1117:                                    ; preds = %while.cond.1112
  %582 = load i8*, i8** %p, align 8, !tbaa !1
  %583 = load i8, i8* %582, align 1, !tbaa !12
  %conv1118 = sext i8 %583 to i32
  %idxprom1119 = sext i32 %conv1118 to i64
  %call1120 = call i16** @__ctype_b_loc() #8
  %584 = load i16*, i16** %call1120, align 8, !tbaa !1
  %arrayidx1121 = getelementptr inbounds i16, i16* %584, i64 %idxprom1119
  %585 = load i16, i16* %arrayidx1121, align 2, !tbaa !18
  %conv1122 = zext i16 %585 to i32
  %and1123 = and i32 %conv1122, 8
  %tobool1124 = icmp ne i32 %and1123, 0
  br label %land.end.1125

land.end.1125:                                    ; preds = %land.rhs.1117, %while.cond.1112
  %586 = phi i1 [ false, %while.cond.1112 ], [ %tobool1124, %land.rhs.1117 ]
  br i1 %586, label %while.body.1126, label %while.end.1128

while.body.1126:                                  ; preds = %land.end.1125
  %587 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1127 = getelementptr inbounds i8, i8* %587, i32 1
  store i8* %incdec.ptr1127, i8** %p, align 8, !tbaa !1
  br label %while.cond.1112

while.end.1128:                                   ; preds = %land.end.1125
  %588 = load i8*, i8** %p, align 8, !tbaa !1
  %589 = load i8, i8* %588, align 1, !tbaa !12
  %conv1129 = sext i8 %589 to i32
  %cmp1130 = icmp ne i32 %conv1129, 0
  br i1 %cmp1130, label %if.then.1132, label %if.end.1134

if.then.1132:                                     ; preds = %while.end.1128
  %590 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1133 = getelementptr inbounds i8, i8* %590, i32 1
  store i8* %incdec.ptr1133, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %590, align 1, !tbaa !12
  br label %if.end.1134

if.end.1134:                                      ; preds = %if.then.1132, %while.end.1128
  store %struct.dbsval* getelementptr inbounds ([0 x %struct.dbsval], [0 x %struct.dbsval]* @DontBlameSendmailValues, i32 0, i32 0), %struct.dbsval** %dbs, align 8, !tbaa !1
  br label %for.cond.1135

for.cond.1135:                                    ; preds = %for.inc.1145, %if.end.1134
  %591 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %dbs_name = getelementptr inbounds %struct.dbsval, %struct.dbsval* %591, i32 0, i32 0
  %592 = load i8*, i8** %dbs_name, align 8, !tbaa !88
  %cmp1136 = icmp ne i8* %592, null
  br i1 %cmp1136, label %for.body.1138, label %for.end.1147

for.body.1138:                                    ; preds = %for.cond.1135
  %593 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %594 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %dbs_name1139 = getelementptr inbounds %struct.dbsval, %struct.dbsval* %594, i32 0, i32 0
  %595 = load i8*, i8** %dbs_name1139, align 8, !tbaa !88
  %call1140 = call i32 @sm_strcasecmp(i8* %593, i8* %595)
  %cmp1141 = icmp eq i32 %call1140, 0
  br i1 %cmp1141, label %if.then.1143, label %if.end.1144

if.then.1143:                                     ; preds = %for.body.1138
  br label %for.end.1147

if.end.1144:                                      ; preds = %for.body.1138
  br label %for.inc.1145

for.inc.1145:                                     ; preds = %if.end.1144
  %596 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %incdec.ptr1146 = getelementptr inbounds %struct.dbsval, %struct.dbsval* %596, i32 1
  store %struct.dbsval* %incdec.ptr1146, %struct.dbsval** %dbs, align 8, !tbaa !1
  br label %for.cond.1135

for.end.1147:                                     ; preds = %if.then.1143, %for.cond.1135
  %597 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %dbs_name1148 = getelementptr inbounds %struct.dbsval, %struct.dbsval* %597, i32 0, i32 0
  %598 = load i8*, i8** %dbs_name1148, align 8, !tbaa !88
  %cmp1149 = icmp eq i8* %598, null
  br i1 %cmp1149, label %if.then.1151, label %if.else.1152

if.then.1151:                                     ; preds = %for.end.1147
  %599 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.142, i32 0, i32 0), i8* %599)
  br label %if.end.1170

if.else.1152:                                     ; preds = %for.end.1147
  %600 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %dbs_flag = getelementptr inbounds %struct.dbsval, %struct.dbsval* %600, i32 0, i32 1
  %601 = load i8, i8* %dbs_flag, align 1, !tbaa !90
  %conv1153 = zext i8 %601 to i32
  %cmp1154 = icmp eq i32 %conv1153, 0
  br i1 %cmp1154, label %if.then.1156, label %if.else.1157

if.then.1156:                                     ; preds = %if.else.1152
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @DontBlameSendmail to i8*), i8 0, i64 32, i32 1, i1 false)
  br label %if.end.1169

if.else.1157:                                     ; preds = %if.else.1152
  %602 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %dbs_flag1158 = getelementptr inbounds %struct.dbsval, %struct.dbsval* %602, i32 0, i32 1
  %603 = load i8, i8* %dbs_flag1158, align 1, !tbaa !90
  %conv1159 = zext i8 %603 to i64
  %rem1160 = urem i64 %conv1159, 32
  %sh_prom1161 = trunc i64 %rem1160 to i32
  %shl1162 = shl i32 1, %sh_prom1161
  %604 = load %struct.dbsval*, %struct.dbsval** %dbs, align 8, !tbaa !1
  %dbs_flag1163 = getelementptr inbounds %struct.dbsval, %struct.dbsval* %604, i32 0, i32 1
  %605 = load i8, i8* %dbs_flag1163, align 1, !tbaa !90
  %conv1164 = zext i8 %605 to i64
  %div1165 = udiv i64 %conv1164, 32
  %and1166 = and i64 %div1165, 7
  %arrayidx1167 = getelementptr inbounds [8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 %and1166
  %606 = load i32, i32* %arrayidx1167, align 4, !tbaa !5
  %or1168 = or i32 %606, %shl1162
  store i32 %or1168, i32* %arrayidx1167, align 4, !tbaa !5
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.else.1157, %if.then.1156
  br label %if.end.1170

if.end.1170:                                      ; preds = %if.end.1169, %if.then.1151
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1171

cleanup.1171:                                     ; preds = %if.end.1170, %if.then.1110
  %607 = bitcast %struct.dbsval** %dbs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %607) #1
  %cleanup.dest.1172 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1172, label %unreachable [
    i32 0, label %cleanup.cont.1173
    i32 50, label %for.end.1174
  ]

cleanup.cont.1173:                                ; preds = %cleanup.1171
  br label %for.cond.1079

for.end.1174:                                     ; preds = %cleanup.1171
  store i32 0, i32* %sticky.addr, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1175:                                       ; preds = %if.end.232
  %608 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1176 = call i32 @sm_strcasecmp(i8* %608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0))
  %cmp1177 = icmp eq i32 %call1176, 0
  br i1 %cmp1177, label %if.then.1179, label %if.else.1180

if.then.1179:                                     ; preds = %sw.bb.1175
  store i32 2, i32* @DontProbeInterfaces, align 4, !tbaa !5
  br label %if.end.1186

if.else.1180:                                     ; preds = %sw.bb.1175
  %609 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1181 = call i32 @atobool(i8* %609)
  %tobool1182 = icmp ne i32 %call1181, 0
  br i1 %tobool1182, label %if.then.1183, label %if.else.1184

if.then.1183:                                     ; preds = %if.else.1180
  store i32 0, i32* @DontProbeInterfaces, align 4, !tbaa !5
  br label %if.end.1185

if.else.1184:                                     ; preds = %if.else.1180
  store i32 1, i32* @DontProbeInterfaces, align 4, !tbaa !5
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.else.1184, %if.then.1183
  br label %if.end.1186

if.end.1186:                                      ; preds = %if.end.1185, %if.then.1179
  br label %sw.epilog.1424

sw.bb.1187:                                       ; preds = %if.end.232
  %610 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1188 = call i32 @atoi(i8* %610) #9
  store i32 %call1188, i32* @MaxRcptPerMsg, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1189:                                       ; preds = %if.end.232
  %611 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1190 = call i32 @atoi(i8* %611) #9
  store i32 %call1190, i32* @BadRcptThrottle, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1191:                                       ; preds = %if.end.232
  br label %do.body.1192

do.body.1192:                                     ; preds = %sw.bb.1191
  %612 = bitcast i8** %_newval1194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %612) #1
  %613 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1195 = call i8* @sm_pstrdup_x(i8* %613)
  store i8* %call1195, i8** %_newval1194, align 8, !tbaa !1
  %614 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  %cmp1196 = icmp ne i8* %614, null
  br i1 %cmp1196, label %if.then.1198, label %if.end.1199

if.then.1198:                                     ; preds = %do.body.1192
  %615 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %615, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 3996)
  br label %if.end.1199

if.end.1199:                                      ; preds = %if.then.1198, %do.body.1192
  %616 = load i8*, i8** %_newval1194, align 8, !tbaa !1
  store i8* %616, i8** @DeadLetterDrop, align 8, !tbaa !1
  %617 = bitcast i8** %_newval1194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %617) #1
  br label %do.cond.1200

do.cond.1200:                                     ; preds = %if.end.1199
  br label %do.end.1201

do.end.1201:                                      ; preds = %do.cond.1200
  br label %sw.epilog.1424

sw.bb.1202:                                       ; preds = %if.end.232
  %618 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1203 = call i32 @atoi(i8* %618) #9
  store i32 %call1203, i32* @MaxAliasRecursion, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1204:                                       ; preds = %if.end.232
  store i16 0, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @ConnectOnlyTo to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !91
  %619 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1205 = call i32 @inet_addr(i8* %619) #1
  store i32 %call1205, i32* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @ConnectOnlyTo, i32 0, i32 0, i32 2, i32 0), align 4, !tbaa !93
  %620 = load i32, i32* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @ConnectOnlyTo, i32 0, i32 0, i32 2, i32 0), align 4, !tbaa !93
  %cmp1206 = icmp ne i32 %620, -1
  br i1 %cmp1206, label %if.then.1208, label %if.end.1209

if.then.1208:                                     ; preds = %sw.bb.1204
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @ConnectOnlyTo to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !91
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.then.1208, %sw.bb.1204
  %621 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @ConnectOnlyTo to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !91
  %conv1210 = zext i16 %621 to i32
  %cmp1211 = icmp eq i32 %conv1210, 0
  br i1 %cmp1211, label %if.then.1213, label %if.end.1214

if.then.1213:                                     ; preds = %if.end.1209
  %622 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.144, i32 0, i32 0), i8* %622)
  br label %sw.epilog.1424

if.end.1214:                                      ; preds = %if.end.1209
  br label %sw.epilog.1424

sw.bb.1215:                                       ; preds = %if.end.232
  %623 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %624 = load i8, i8* %623, align 1, !tbaa !12
  %conv1216 = sext i8 %624 to i32
  %and1217 = and i32 %conv1216, -128
  %cmp1218 = icmp eq i32 %and1217, 0
  br i1 %cmp1218, label %land.lhs.true.1220, label %if.else.1230

land.lhs.true.1220:                               ; preds = %sw.bb.1215
  %625 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %626 = load i8, i8* %625, align 1, !tbaa !12
  %conv1221 = sext i8 %626 to i32
  %idxprom1222 = sext i32 %conv1221 to i64
  %call1223 = call i16** @__ctype_b_loc() #8
  %627 = load i16*, i16** %call1223, align 8, !tbaa !1
  %arrayidx1224 = getelementptr inbounds i16, i16* %627, i64 %idxprom1222
  %628 = load i16, i16* %arrayidx1224, align 2, !tbaa !18
  %conv1225 = zext i16 %628 to i32
  %and1226 = and i32 %conv1225, 2048
  %tobool1227 = icmp ne i32 %and1226, 0
  br i1 %tobool1227, label %if.then.1228, label %if.else.1230

if.then.1228:                                     ; preds = %land.lhs.true.1220
  %629 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1229 = call i32 @atoi(i8* %629) #9
  store i32 %call1229, i32* @TrustedUid, align 4, !tbaa !5
  br label %if.end.1243

if.else.1230:                                     ; preds = %land.lhs.true.1220, %sw.bb.1215
  %630 = bitcast %struct.passwd** %pw1232 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %630) #1
  store i32 0, i32* @TrustedUid, align 4, !tbaa !5
  %631 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1233 = call %struct.passwd* @sm_getpwnam(i8* %631)
  store %struct.passwd* %call1233, %struct.passwd** %pw1232, align 8, !tbaa !1
  %632 = load %struct.passwd*, %struct.passwd** %pw1232, align 8, !tbaa !1
  %cmp1234 = icmp eq %struct.passwd* %632, null
  br i1 %cmp1234, label %if.then.1236, label %if.else.1237

if.then.1236:                                     ; preds = %if.else.1230
  %633 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.145, i32 0, i32 0), i8* %633)
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.1240

if.else.1237:                                     ; preds = %if.else.1230
  %634 = load %struct.passwd*, %struct.passwd** %pw1232, align 8, !tbaa !1
  %pw_uid1238 = getelementptr inbounds %struct.passwd, %struct.passwd* %634, i32 0, i32 2
  %635 = load i32, i32* %pw_uid1238, align 4, !tbaa !60
  store i32 %635, i32* @TrustedUid, align 4, !tbaa !5
  br label %if.end.1239

if.end.1239:                                      ; preds = %if.else.1237
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1240

cleanup.1240:                                     ; preds = %if.end.1239, %if.then.1236
  %636 = bitcast %struct.passwd** %pw1232 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %636) #1
  %cleanup.dest.1241 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1241, label %unreachable [
    i32 0, label %cleanup.cont.1242
    i32 16, label %sw.epilog.1424
  ]

cleanup.cont.1242:                                ; preds = %cleanup.1240
  br label %if.end.1243

if.end.1243:                                      ; preds = %cleanup.cont.1242, %if.then.1228
  br label %sw.epilog.1424

sw.bb.1244:                                       ; preds = %if.end.232
  %637 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1245 = call i8* @strchr(i8* %637, i32 47) #1
  store i8* %call1245, i8** %p, align 8, !tbaa !1
  %638 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp1246 = icmp ne i8* %638, null
  br i1 %cmp1246, label %if.then.1248, label %if.end.1250

if.then.1248:                                     ; preds = %sw.bb.1244
  %639 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1249 = getelementptr inbounds i8, i8* %639, i32 1
  store i8* %incdec.ptr1249, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %639, align 1, !tbaa !12
  br label %if.end.1250

if.end.1250:                                      ; preds = %if.then.1248, %sw.bb.1244
  %640 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1251 = call i32 @atoi(i8* %640) #9
  store i32 %call1251, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  %641 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp1252 = icmp ne i8* %641, null
  br i1 %cmp1252, label %land.lhs.true.1254, label %if.else.1260

land.lhs.true.1254:                               ; preds = %if.end.1250
  %642 = load i8*, i8** %p, align 8, !tbaa !1
  %643 = load i8, i8* %642, align 1, !tbaa !12
  %conv1255 = sext i8 %643 to i32
  %cmp1256 = icmp ne i32 %conv1255, 0
  br i1 %cmp1256, label %if.then.1258, label %if.else.1260

if.then.1258:                                     ; preds = %land.lhs.true.1254
  %644 = load i8*, i8** %p, align 8, !tbaa !1
  %call1259 = call i32 @atoi(i8* %644) #9
  store i32 %call1259, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  br label %if.end.1262

if.else.1260:                                     ; preds = %land.lhs.true.1254, %if.end.1250
  %645 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  %div1261 = sdiv i32 %645, 2
  store i32 %div1261, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  br label %if.end.1262

if.end.1262:                                      ; preds = %if.else.1260, %if.then.1258
  %646 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  %cmp1263 = icmp sle i32 %646, 0
  br i1 %cmp1263, label %if.then.1265, label %if.else.1266

if.then.1265:                                     ; preds = %if.end.1262
  store i32 0, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  br label %if.end.1272

if.else.1266:                                     ; preds = %if.end.1262
  %647 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  %cmp1267 = icmp slt i32 %647, 128
  br i1 %cmp1267, label %if.then.1269, label %if.end.1271

if.then.1269:                                     ; preds = %if.else.1266
  %call1270 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.146, i32 0, i32 0))
  br label %if.end.1271

if.end.1271:                                      ; preds = %if.then.1269, %if.else.1266
  br label %if.end.1272

if.end.1272:                                      ; preds = %if.end.1271, %if.then.1265
  %648 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  %cmp1273 = icmp sle i32 %648, 0
  br i1 %cmp1273, label %if.then.1275, label %if.else.1276

if.then.1275:                                     ; preds = %if.end.1272
  store i32 0, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  br label %if.end.1282

if.else.1276:                                     ; preds = %if.end.1272
  %649 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  %cmp1277 = icmp slt i32 %649, 40
  br i1 %cmp1277, label %if.then.1279, label %if.end.1281

if.then.1279:                                     ; preds = %if.else.1276
  %call1280 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.147, i32 0, i32 0))
  br label %if.end.1281

if.end.1281:                                      ; preds = %if.then.1279, %if.else.1276
  br label %if.end.1282

if.end.1282:                                      ; preds = %if.end.1281, %if.then.1275
  %650 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  %cmp1283 = icmp sgt i32 %650, 0
  br i1 %cmp1283, label %if.then.1285, label %if.end.1286

if.then.1285:                                     ; preds = %if.end.1282
  %651 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  %inc = add nsw i32 %651, 1
  store i32 %inc, i32* @MaxMimeHeaderLength, align 4, !tbaa !5
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.then.1285, %if.end.1282
  %652 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  %cmp1287 = icmp sgt i32 %652, 0
  br i1 %cmp1287, label %if.then.1289, label %if.end.1291

if.then.1289:                                     ; preds = %if.end.1286
  %653 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  %inc1290 = add nsw i32 %653, 1
  store i32 %inc1290, i32* @MaxMimeFieldLength, align 4, !tbaa !5
  br label %if.end.1291

if.end.1291:                                      ; preds = %if.then.1289, %if.end.1286
  br label %sw.epilog.1424

sw.bb.1292:                                       ; preds = %if.end.232
  br label %do.body.1293

do.body.1293:                                     ; preds = %sw.bb.1292
  %654 = bitcast i8** %_newval1295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %654) #1
  %655 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1296 = call i8* @sm_pstrdup_x(i8* %655)
  store i8* %call1296, i8** %_newval1295, align 8, !tbaa !1
  %656 = load i8*, i8** @ControlSocketName, align 8, !tbaa !1
  %cmp1297 = icmp ne i8* %656, null
  br i1 %cmp1297, label %if.then.1299, label %if.end.1300

if.then.1299:                                     ; preds = %do.body.1293
  %657 = load i8*, i8** @ControlSocketName, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %657, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 4103)
  br label %if.end.1300

if.end.1300:                                      ; preds = %if.then.1299, %do.body.1293
  %658 = load i8*, i8** %_newval1295, align 8, !tbaa !1
  store i8* %658, i8** @ControlSocketName, align 8, !tbaa !1
  %659 = bitcast i8** %_newval1295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %659) #1
  br label %do.cond.1301

do.cond.1301:                                     ; preds = %if.end.1300
  br label %do.end.1302

do.end.1302:                                      ; preds = %do.cond.1301
  br label %sw.epilog.1424

sw.bb.1303:                                       ; preds = %if.end.232
  %660 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1304 = call i32 @atoi(i8* %660) #9
  store i32 %call1304, i32* @MaxHeadersLength, align 4, !tbaa !5
  %661 = load i32, i32* @MaxHeadersLength, align 4, !tbaa !5
  %cmp1305 = icmp sgt i32 %661, 0
  br i1 %cmp1305, label %land.lhs.true.1307, label %if.end.1312

land.lhs.true.1307:                               ; preds = %sw.bb.1303
  %662 = load i32, i32* @MaxHeadersLength, align 4, !tbaa !5
  %cmp1308 = icmp slt i32 %662, 16384
  br i1 %cmp1308, label %if.then.1310, label %if.end.1312

if.then.1310:                                     ; preds = %land.lhs.true.1307
  %call1311 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.148, i32 0, i32 0), i32 16384)
  br label %if.end.1312

if.end.1312:                                      ; preds = %if.then.1310, %land.lhs.true.1307, %sw.bb.1303
  br label %sw.epilog.1424

sw.bb.1313:                                       ; preds = %if.end.232
  br label %do.body.1314

do.body.1314:                                     ; preds = %sw.bb.1313
  %663 = bitcast i8** %_newval1316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %663) #1
  %664 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1317 = call i8* @sm_pstrdup_x(i8* %664)
  store i8* %call1317, i8** %_newval1316, align 8, !tbaa !1
  %665 = load i8*, i8** @ProcTitlePrefix, align 8, !tbaa !1
  %cmp1318 = icmp ne i8* %665, null
  br i1 %cmp1318, label %if.then.1320, label %if.end.1321

if.then.1320:                                     ; preds = %do.body.1314
  %666 = load i8*, i8** @ProcTitlePrefix, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %666, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 4117)
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.then.1320, %do.body.1314
  %667 = load i8*, i8** %_newval1316, align 8, !tbaa !1
  store i8* %667, i8** @ProcTitlePrefix, align 8, !tbaa !1
  %668 = bitcast i8** %_newval1316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %668) #1
  br label %do.cond.1322

do.cond.1322:                                     ; preds = %if.end.1321
  br label %do.end.1323

do.end.1323:                                      ; preds = %do.cond.1322
  br label %sw.epilog.1424

sw.bb.1324:                                       ; preds = %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232
  %669 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name1325 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %669, i32 0, i32 0
  %670 = load i8*, i8** %o_name1325, align 8, !tbaa !68
  %cmp1326 = icmp eq i8* %670, null
  br i1 %cmp1326, label %cond.true.1328, label %cond.false.1329

cond.true.1328:                                   ; preds = %sw.bb.1324
  br label %cond.end.1331

cond.false.1329:                                  ; preds = %sw.bb.1324
  %671 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name1330 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %671, i32 0, i32 0
  %672 = load i8*, i8** %o_name1330, align 8, !tbaa !68
  br label %cond.end.1331

cond.end.1331:                                    ; preds = %cond.false.1329, %cond.true.1328
  %cond1332 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %cond.true.1328 ], [ %672, %cond.false.1329 ]
  %call1333 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.149, i32 0, i32 0), i8* %cond1332)
  br label %sw.epilog.1424

sw.bb.1334:                                       ; preds = %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232, %if.end.232
  %673 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name1335 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %673, i32 0, i32 0
  %674 = load i8*, i8** %o_name1335, align 8, !tbaa !68
  %cmp1336 = icmp eq i8* %674, null
  br i1 %cmp1336, label %cond.true.1338, label %cond.false.1339

cond.true.1338:                                   ; preds = %sw.bb.1334
  br label %cond.end.1341

cond.false.1339:                                  ; preds = %sw.bb.1334
  %675 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name1340 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %675, i32 0, i32 0
  %676 = load i8*, i8** %o_name1340, align 8, !tbaa !68
  br label %cond.end.1341

cond.end.1341:                                    ; preds = %cond.false.1339, %cond.true.1338
  %cond1342 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %cond.true.1338 ], [ %676, %cond.false.1339 ]
  %call1343 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.150, i32 0, i32 0), i8* %cond1342)
  br label %sw.epilog.1424

sw.bb.1344:                                       ; preds = %if.end.232
  %677 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void @setclientoptions(i8* %677)
  br label %sw.epilog.1424

sw.bb.1345:                                       ; preds = %if.end.232
  %678 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1346 = call i32 @atoi(i8* %678) #9
  %conv1347 = sext i32 %call1346 to i64
  store i64 %conv1347, i64* @DataFileBufferSize, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.1348:                                       ; preds = %if.end.232
  %679 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1349 = call i32 @atoi(i8* %679) #9
  %conv1350 = sext i32 %call1349 to i64
  store i64 %conv1350, i64* @XscriptFileBufferSize, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.1351:                                       ; preds = %if.end.232
  %680 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name1352 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %680, i32 0, i32 0
  %681 = load i8*, i8** %o_name1352, align 8, !tbaa !68
  %cmp1353 = icmp eq i8* %681, null
  br i1 %cmp1353, label %cond.true.1355, label %cond.false.1356

cond.true.1355:                                   ; preds = %sw.bb.1351
  br label %cond.end.1358

cond.false.1356:                                  ; preds = %sw.bb.1351
  %682 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_name1357 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %682, i32 0, i32 0
  %683 = load i8*, i8** %o_name1357, align 8, !tbaa !68
  br label %cond.end.1358

cond.end.1358:                                    ; preds = %cond.false.1356, %cond.true.1355
  %cond1359 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %cond.true.1355 ], [ %683, %cond.false.1356 ]
  %call1360 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.151, i32 0, i32 0), i8* %cond1359)
  br label %sw.epilog.1424

sw.bb.1361:                                       ; preds = %if.end.232
  %684 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1362 = call i8* @newstr(i8* %684)
  store i8* %call1362, i8** @InputFilterList, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.1363:                                       ; preds = %if.end.232
  %685 = load i8*, i8** %subopt, align 8, !tbaa !1
  %686 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %687 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  call void @milter_set_option(i8* %685, i8* %686, i32 %687)
  br label %sw.epilog.1424

sw.bb.1364:                                       ; preds = %if.end.232
  %688 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1365 = call i32 @atooct(i8* %688)
  %and1366 = and i32 %call1365, 511
  store i32 %and1366, i32* @QueueFileMode, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1367:                                       ; preds = %if.end.232
  %689 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1368 = call i64 @convtime(i8* %689, i32 115)
  store i64 %call1368, i64* @DeliverByMin, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.1369:                                       ; preds = %if.end.232
  %690 = bitcast [8 x i32]* %m to i8*
  call void @llvm.lifetime.start(i64 32, i8* %690) #1
  %call1371 = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0), i8** null)
  %691 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arraydecay1372 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i32 0
  %call1373 = call i8* @getmodifiers(i8* %691, i32* %arraydecay1372)
  %692 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call1371, i8* %call1373, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 4427, i32 %692)
  %693 = bitcast [8 x i32]* %m to i8*
  call void @llvm.lifetime.end(i64 32, i8* %693) #1
  br label %sw.epilog.1424

sw.bb.1374:                                       ; preds = %if.end.232
  %694 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1375 = call i32 @atoi(i8* %694) #9
  store i32 %call1375, i32* @FastSplit, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1376:                                       ; preds = %if.end.232
  %695 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1377 = call i8* @newstr(i8* %695)
  store i8* %call1377, i8** @Mbdb, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.1378:                                       ; preds = %if.end.232
  %696 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1379 = call i32 @atobool(i8* %696)
  store i32 %call1379, i32* @UseMSP, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1380:                                       ; preds = %if.end.232
  %697 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1381 = call i32 @atobool(i8* %697)
  store i32 %call1381, i32* @SoftBounce, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1382:                                       ; preds = %if.end.232
  %698 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1383 = call i64 @convtime(i8* %698, i32 104)
  store i64 %call1383, i64* @RejectLogInterval, align 8, !tbaa !7
  br label %sw.epilog.1424

sw.bb.1384:                                       ; preds = %if.end.232
  %699 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1385 = call i32 @atobool(i8* %699)
  store i32 %call1385, i32* @RequiresDirfsync, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1386:                                       ; preds = %if.end.232
  %700 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1387 = call i64 @convtime(i8* %700, i32 115)
  %conv1388 = trunc i64 %call1387 to i32
  store i32 %conv1388, i32* @ConnectionRateWindowSize, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1389:                                       ; preds = %if.end.232
  %701 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %arrayidx1390 = getelementptr inbounds i8, i8* %701, i64 0
  %702 = load i8, i8* %arrayidx1390, align 1, !tbaa !12
  %conv1391 = sext i8 %702 to i32
  %cmp1392 = icmp ne i32 %conv1391, 0
  br i1 %cmp1392, label %if.then.1394, label %if.end.1396

if.then.1394:                                     ; preds = %sw.bb.1389
  %703 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1395 = call i8* @newstr(i8* %703)
  store i8* %call1395, i8** @FallbackSmartHost, align 8, !tbaa !1
  br label %if.end.1396

if.end.1396:                                      ; preds = %if.then.1394, %sw.bb.1389
  br label %sw.epilog.1424

sw.bb.1397:                                       ; preds = %if.end.232
  %704 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1398 = call i8* @newstr(i8* %704)
  store i8* %call1398, i8** @HeloName, align 8, !tbaa !1
  br label %sw.epilog.1424

sw.bb.1399:                                       ; preds = %if.end.232
  %705 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1400 = call i32 @atoi(i8* %705) #9
  store i32 %call1400, i32* @MaxNOOPCommands, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.bb.1401:                                       ; preds = %if.end.232
  %706 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call1402 = call i32 @atobool(i8* %706)
  store i32 %call1402, i32* @UseCompressedIPv6Addresses, align 4, !tbaa !5
  br label %sw.epilog.1424

sw.default.1403:                                  ; preds = %if.end.232
  %707 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv1404 = zext i8 %707 to i32
  %cmp1405 = icmp sge i32 %conv1404, 1
  br i1 %cmp1405, label %land.lhs.true.1407, label %if.end.1423

land.lhs.true.1407:                               ; preds = %sw.default.1403
  %708 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool1408 = icmp ne i32 %708, 0
  br i1 %tobool1408, label %if.end.1423, label %if.then.1409

if.then.1409:                                     ; preds = %land.lhs.true.1407
  %709 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %and1410 = and i32 %709, -128
  %cmp1411 = icmp eq i32 %and1410, 0
  br i1 %cmp1411, label %land.lhs.true.1413, label %if.else.1421

land.lhs.true.1413:                               ; preds = %if.then.1409
  %710 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %idxprom1414 = sext i32 %710 to i64
  %call1415 = call i16** @__ctype_b_loc() #8
  %711 = load i16*, i16** %call1415, align 8, !tbaa !1
  %arrayidx1416 = getelementptr inbounds i16, i16* %711, i64 %idxprom1414
  %712 = load i16, i16* %arrayidx1416, align 2, !tbaa !18
  %conv1417 = zext i16 %712 to i32
  %and1418 = and i32 %conv1417, 16384
  %tobool1419 = icmp ne i32 %and1418, 0
  br i1 %tobool1419, label %if.then.1420, label %if.else.1421

if.then.1420:                                     ; preds = %land.lhs.true.1413
  %713 = load i32, i32* %opt.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.153, i32 0, i32 0), i32 %713)
  br label %if.end.1422

if.else.1421:                                     ; preds = %land.lhs.true.1413, %if.then.1409
  %714 = load i32, i32* %opt.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.154, i32 0, i32 0), i32 %714)
  br label %if.end.1422

if.end.1422:                                      ; preds = %if.else.1421, %if.then.1420
  br label %if.end.1423

if.end.1423:                                      ; preds = %if.end.1422, %land.lhs.true.1407, %sw.default.1403
  br label %sw.epilog.1424

sw.epilog.1424:                                   ; preds = %if.end.1423, %sw.bb.1401, %sw.bb.1399, %sw.bb.1397, %if.end.1396, %sw.bb.1386, %sw.bb.1384, %sw.bb.1382, %sw.bb.1380, %sw.bb.1378, %sw.bb.1376, %sw.bb.1374, %sw.bb.1369, %sw.bb.1367, %sw.bb.1364, %sw.bb.1363, %sw.bb.1361, %cond.end.1358, %sw.bb.1348, %sw.bb.1345, %sw.bb.1344, %cond.end.1341, %cond.end.1331, %do.end.1323, %if.end.1312, %do.end.1302, %if.end.1291, %if.end.1243, %cleanup.1240, %if.end.1214, %if.then.1213, %sw.bb.1202, %do.end.1201, %sw.bb.1189, %sw.bb.1187, %if.end.1186, %for.end.1174, %do.end.1077, %sw.bb.1066, %if.end.1065, %cleanup.996, %sw.bb.915, %if.end.914, %sw.bb.905, %if.end.904, %sw.bb.896, %sw.bb.894, %sw.bb.892, %sw.bb.890, %if.end.887, %sw.bb.879, %sw.bb.876, %if.end.873, %sw.bb.860, %if.end.859, %sw.bb.850, %sw.bb.848, %sw.bb.846, %sw.bb.844, %sw.bb.842, %sw.bb.840, %sw.bb.838, %sw.bb.836, %if.end.834, %if.then.833, %if.then.815, %if.end.810, %sw.bb.778, %sw.bb.776, %sw.bb.773, %sw.bb.771, %sw.bb.769, %sw.bb.767, %sw.epilog.766, %sw.bb.753, %sw.bb.750, %sw.bb.748, %sw.bb.745, %sw.bb.743, %sw.bb.741, %sw.bb.739, %sw.bb.737, %sw.bb.733, %if.end.732, %if.then.723, %cleanup.716, %sw.bb.668, %sw.bb.666, %if.end.665, %if.end.658, %if.end.633, %if.end.624, %sw.bb.617, %if.end.616, %sw.bb.599, %sw.bb.597, %for.end.596, %if.end.518, %if.end.509, %sw.bb.503, %sw.bb.501, %if.end.500, %if.then.493, %if.end.488, %sw.bb.478, %sw.bb.476, %if.end.475, %sw.bb.468, %sw.bb.466, %sw.bb.464, %if.end.463, %sw.bb.344, %if.end.343, %if.end.334, %sw.bb.310, %sw.bb.308, %sw.bb.305, %sw.epilog.304, %if.end.299, %sw.epilog.292, %if.end.284, %sw.bb.274, %if.end.272, %if.end.264, %if.end.257, %if.end.248, %sw.epilog, %sw.bb
  %715 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  %tobool1425 = icmp ne i32 %715, 0
  br i1 %tobool1425, label %land.lhs.true.1426, label %if.end.1444

land.lhs.true.1426:                               ; preds = %sw.epilog.1424
  %716 = load %struct.optioninfo*, %struct.optioninfo** %o, align 8, !tbaa !1
  %o_flags1427 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %716, i32 0, i32 2
  %717 = load i16, i16* %o_flags1427, align 2, !tbaa !71
  %conv1428 = zext i16 %717 to i32
  %and1429 = and i32 %conv1428, 2
  %cmp1430 = icmp ne i32 %and1429, 0
  br i1 %cmp1430, label %if.end.1444, label %if.then.1432

if.then.1432:                                     ; preds = %land.lhs.true.1426
  %718 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %conv1433 = trunc i32 %718 to i8
  %conv1434 = zext i8 %conv1433 to i64
  %rem1435 = urem i64 %conv1434, 32
  %sh_prom1436 = trunc i64 %rem1435 to i32
  %shl1437 = shl i32 1, %sh_prom1436
  %719 = load i32, i32* %opt.addr, align 4, !tbaa !5
  %conv1438 = trunc i32 %719 to i8
  %conv1439 = zext i8 %conv1438 to i64
  %div1440 = udiv i64 %conv1439, 32
  %and1441 = and i64 %div1440, 7
  %arrayidx1442 = getelementptr inbounds [8 x i32], [8 x i32]* @StickyOpt, i32 0, i64 %and1441
  %720 = load i32, i32* %arrayidx1442, align 4, !tbaa !5
  %or1443 = or i32 %720, %shl1437
  store i32 %or1443, i32* %arrayidx1442, align 4, !tbaa !5
  br label %if.end.1444

if.end.1444:                                      ; preds = %if.then.1432, %land.lhs.true.1426, %sw.epilog.1424
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1445

cleanup.1445:                                     ; preds = %if.end.1444, %if.end.181, %if.then.108, %cleanup
  %721 = bitcast [2048 x i8]* %exbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %721) #1
  %722 = bitcast i8** %newval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %722) #1
  %723 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %723) #1
  %724 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %724) #1
  %725 = bitcast i32* %can_setuid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %725) #1
  %726 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %726) #1
  %727 = bitcast i8** %subopt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %727) #1
  %728 = bitcast %struct.optioninfo** %o to i8*
  call void @llvm.lifetime.end(i64 8, i8* %728) #1
  %729 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %729) #1
  %cleanup.dest.1454 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1454, label %unreachable [
    i32 0, label %cleanup.cont.1455
    i32 1, label %cleanup.cont.1455
  ]

cleanup.cont.1455:                                ; preds = %cleanup.1445, %cleanup.1445
  ret void

unreachable:                                      ; preds = %cleanup.1445, %cleanup.1240, %cleanup.1171, %cleanup.996, %cleanup.716, %cleanup.593, %cleanup.448
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @toomany(i32 %id, i32 %maxcnt) #0 {
entry:
  %id.addr = alloca i32, align 4
  %maxcnt.addr = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4, !tbaa !5
  store i32 %maxcnt, i32* %maxcnt.addr, align 4, !tbaa !5
  %0 = load i32, i32* %id.addr, align 4, !tbaa !5
  %1 = load i32, i32* %maxcnt.addr, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.188, i32 0, i32 0), i32 %0, i32 %1)
  ret void
}

declare i8* @newstr(i8*) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #6 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare void @makequeue(i8*, i32) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

declare i8* @macvalue(i32, %struct.envelope*) #2

declare i32 @setvendor(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._map* @makemapentry(i8* %line) #0 {
entry:
  %retval = alloca %struct._map*, align 8
  %line.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %mapname = alloca i8*, align 8
  %classname = alloca i8*, align 8
  %s = alloca %struct.symtab*, align 8
  %class = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %mapname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %classname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.symtab** %class to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %5, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !12
  %conv = sext i8 %7 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !12
  %conv2 = sext i8 %9 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #8
  %10 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv3 = zext i16 %11 to i32
  %and4 = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !12
  %conv5 = sext i8 %15 to i32
  %and6 = and i32 %conv5, -128
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.end
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !12
  %conv9 = sext i8 %17 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %call11 = call i16** @__ctype_b_loc() #8
  %18 = load i16*, i16** %call11, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %18, i64 %idxprom10
  %19 = load i16, i16* %arrayidx12, align 2, !tbaa !18
  %conv13 = zext i16 %19 to i32
  %and14 = and i32 %conv13, 8
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.157, i32 0, i32 0))
  store %struct._map* null, %struct._map** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %20, i8** %mapname, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8, !tbaa !1
  %22 = load i8, i8* %incdec.ptr16, align 1, !tbaa !12
  %conv17 = sext i8 %22 to i32
  %and18 = and i32 %conv17, -128
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %land.lhs.true.21, label %lor.lhs.false

land.lhs.true.21:                                 ; preds = %while.cond
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !12
  %conv22 = sext i8 %24 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %call24 = call i16** @__ctype_b_loc() #8
  %25 = load i16*, i16** %call24, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %25, i64 %idxprom23
  %26 = load i16, i16* %arrayidx25, align 2, !tbaa !18
  %conv26 = zext i16 %26 to i32
  %and27 = and i32 %conv26, 8
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.21, %while.cond
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !12
  %conv29 = sext i8 %28 to i32
  %cmp30 = icmp eq i32 %conv29, 95
  br i1 %cmp30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !12
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp eq i32 %conv32, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true.21
  %31 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true.21 ], [ %cmp33, %lor.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !12
  %conv35 = sext i8 %33 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %while.end
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %34, align 1, !tbaa !12
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %while.end
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.55, %if.end.40
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !12
  %conv42 = sext i8 %36 to i32
  %and43 = and i32 %conv42, -128
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %land.rhs.46, label %land.end.54

land.rhs.46:                                      ; preds = %while.cond.41
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !12
  %conv47 = sext i8 %38 to i32
  %idxprom48 = sext i32 %conv47 to i64
  %call49 = call i16** @__ctype_b_loc() #8
  %39 = load i16*, i16** %call49, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %39, i64 %idxprom48
  %40 = load i16, i16* %arrayidx50, align 2, !tbaa !18
  %conv51 = zext i16 %40 to i32
  %and52 = and i32 %conv51, 8192
  %tobool53 = icmp ne i32 %and52, 0
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.46, %while.cond.41
  %41 = phi i1 [ false, %while.cond.41 ], [ %tobool53, %land.rhs.46 ]
  br i1 %41, label %while.body.55, label %while.end.57

while.body.55:                                    ; preds = %land.end.54
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr56, i8** %p, align 8, !tbaa !1
  br label %while.cond.41

while.end.57:                                     ; preds = %land.end.54
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !12
  %conv58 = sext i8 %44 to i32
  %and59 = and i32 %conv58, -128
  %cmp60 = icmp eq i32 %and59, 0
  br i1 %cmp60, label %land.lhs.true.62, label %if.then.70

land.lhs.true.62:                                 ; preds = %while.end.57
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !12
  %conv63 = sext i8 %46 to i32
  %idxprom64 = sext i32 %conv63 to i64
  %call65 = call i16** @__ctype_b_loc() #8
  %47 = load i16*, i16** %call65, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i16, i16* %47, i64 %idxprom64
  %48 = load i16, i16* %arrayidx66, align 2, !tbaa !18
  %conv67 = zext i16 %48 to i32
  %and68 = and i32 %conv67, 8
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.62, %while.end.57
  %49 = load i8*, i8** %mapname, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.158, i32 0, i32 0), i8* %49)
  store %struct._map* null, %struct._map** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %land.lhs.true.62
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %50, i8** %classname, align 8, !tbaa !1
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.87, %if.end.71
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8, !tbaa !1
  %52 = load i8, i8* %incdec.ptr73, align 1, !tbaa !12
  %conv74 = sext i8 %52 to i32
  %and75 = and i32 %conv74, -128
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %land.rhs.78, label %land.end.86

land.rhs.78:                                      ; preds = %while.cond.72
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !12
  %conv79 = sext i8 %54 to i32
  %idxprom80 = sext i32 %conv79 to i64
  %call81 = call i16** @__ctype_b_loc() #8
  %55 = load i16*, i16** %call81, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %55, i64 %idxprom80
  %56 = load i16, i16* %arrayidx82, align 2, !tbaa !18
  %conv83 = zext i16 %56 to i32
  %and84 = and i32 %conv83, 8
  %tobool85 = icmp ne i32 %and84, 0
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.78, %while.cond.72
  %57 = phi i1 [ false, %while.cond.72 ], [ %tobool85, %land.rhs.78 ]
  br i1 %57, label %while.body.87, label %while.end.88

while.body.87:                                    ; preds = %land.end.86
  br label %while.cond.72

while.end.88:                                     ; preds = %land.end.86
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !12
  %conv89 = sext i8 %59 to i32
  %cmp90 = icmp ne i32 %conv89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %while.end.88
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr93 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr93, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %60, align 1, !tbaa !12
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %while.end.88
  br label %while.cond.95

while.cond.95:                                    ; preds = %while.body.109, %if.end.94
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !12
  %conv96 = sext i8 %62 to i32
  %and97 = and i32 %conv96, -128
  %cmp98 = icmp eq i32 %and97, 0
  br i1 %cmp98, label %land.rhs.100, label %land.end.108

land.rhs.100:                                     ; preds = %while.cond.95
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !12
  %conv101 = sext i8 %64 to i32
  %idxprom102 = sext i32 %conv101 to i64
  %call103 = call i16** @__ctype_b_loc() #8
  %65 = load i16*, i16** %call103, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i16, i16* %65, i64 %idxprom102
  %66 = load i16, i16* %arrayidx104, align 2, !tbaa !18
  %conv105 = zext i16 %66 to i32
  %and106 = and i32 %conv105, 8192
  %tobool107 = icmp ne i32 %and106, 0
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.100, %while.cond.95
  %67 = phi i1 [ false, %while.cond.95 ], [ %tobool107, %land.rhs.100 ]
  br i1 %67, label %while.body.109, label %while.end.111

while.body.109:                                   ; preds = %land.end.108
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr110 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr110, i8** %p, align 8, !tbaa !1
  br label %while.cond.95

while.end.111:                                    ; preds = %land.end.108
  %69 = load i8*, i8** %classname, align 8, !tbaa !1
  %call112 = call %struct.symtab* @stab(i8* %69, i32 5, i32 0)
  store %struct.symtab* %call112, %struct.symtab** %class, align 8, !tbaa !1
  %70 = load %struct.symtab*, %struct.symtab** %class, align 8, !tbaa !1
  %cmp113 = icmp eq %struct.symtab* %70, null
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.end.111
  %71 = load i8*, i8** %mapname, align 8, !tbaa !1
  %72 = load i8*, i8** %classname, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.159, i32 0, i32 0), i8* %71, i8* %72)
  store %struct._map* null, %struct._map** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %while.end.111
  %73 = load i8*, i8** %mapname, align 8, !tbaa !1
  %call117 = call %struct.symtab* @stab(i8* %73, i32 6, i32 1)
  store %struct.symtab* %call117, %struct.symtab** %s, align 8, !tbaa !1
  %74 = load %struct.symtab*, %struct.symtab** %class, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %74, i32 0, i32 3
  %sv_mapclass = bitcast %union.anon* %s_value to %struct._mapclass*
  %75 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value118 = getelementptr inbounds %struct.symtab, %struct.symtab* %75, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value118 to %struct._map*
  %map_class = getelementptr inbounds %struct._map, %struct._map* %sv_map, i32 0, i32 0
  store %struct._mapclass* %sv_mapclass, %struct._mapclass** %map_class, align 8, !tbaa !26
  %76 = load i8*, i8** %mapname, align 8, !tbaa !1
  %call119 = call i8* @newstr(i8* %76)
  %77 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value120 = getelementptr inbounds %struct.symtab, %struct.symtab* %77, i32 0, i32 3
  %sv_map121 = bitcast %union.anon* %s_value120 to %struct._map*
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %sv_map121, i32 0, i32 2
  store i8* %call119, i8** %map_mname, align 8, !tbaa !28
  %78 = load %struct.symtab*, %struct.symtab** %class, align 8, !tbaa !1
  %s_value122 = getelementptr inbounds %struct.symtab, %struct.symtab* %78, i32 0, i32 3
  %sv_mapclass123 = bitcast %union.anon* %s_value122 to %struct._mapclass*
  %map_parse = getelementptr inbounds %struct._mapclass, %struct._mapclass* %sv_mapclass123, i32 0, i32 3
  %79 = load i32 (%struct._map*, i8*)*, i32 (%struct._map*, i8*)** %map_parse, align 8, !tbaa !30
  %80 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value124 = getelementptr inbounds %struct.symtab, %struct.symtab* %80, i32 0, i32 3
  %sv_map125 = bitcast %union.anon* %s_value124 to %struct._map*
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %call126 = call i32 %79(%struct._map* %sv_map125, i8* %81)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.end.116
  %82 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value129 = getelementptr inbounds %struct.symtab, %struct.symtab* %82, i32 0, i32 3
  %sv_map130 = bitcast %union.anon* %s_value129 to %struct._map*
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %sv_map130, i32 0, i32 3
  %83 = load i64, i64* %map_mflags, align 8, !tbaa !29
  %or = or i64 %83, 1
  store i64 %or, i64* %map_mflags, align 8, !tbaa !29
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.end.116
  %84 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv132 = zext i8 %84 to i32
  %cmp133 = icmp sge i32 %conv132, 5
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.155

land.lhs.true.135:                                ; preds = %if.end.131
  %85 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool136 = icmp ne i32 %85, 0
  br i1 %tobool136, label %if.end.155, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.135
  %86 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value138 = getelementptr inbounds %struct.symtab, %struct.symtab* %86, i32 0, i32 3
  %sv_map139 = bitcast %union.anon* %s_value138 to %struct._map*
  %map_mname140 = getelementptr inbounds %struct._map, %struct._map* %sv_map139, i32 0, i32 2
  %87 = load i8*, i8** %map_mname140, align 8, !tbaa !28
  %88 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value141 = getelementptr inbounds %struct.symtab, %struct.symtab* %88, i32 0, i32 3
  %sv_map142 = bitcast %union.anon* %s_value141 to %struct._map*
  %map_class143 = getelementptr inbounds %struct._map, %struct._map* %sv_map142, i32 0, i32 0
  %89 = load %struct._mapclass*, %struct._mapclass** %map_class143, align 8, !tbaa !26
  %map_cname = getelementptr inbounds %struct._mapclass, %struct._mapclass* %89, i32 0, i32 0
  %90 = load i8*, i8** %map_cname, align 8, !tbaa !96
  %91 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value144 = getelementptr inbounds %struct.symtab, %struct.symtab* %91, i32 0, i32 3
  %sv_map145 = bitcast %union.anon* %s_value144 to %struct._map*
  %map_mflags146 = getelementptr inbounds %struct._map, %struct._map* %sv_map145, i32 0, i32 3
  %92 = load i64, i64* %map_mflags146, align 8, !tbaa !29
  %93 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value147 = getelementptr inbounds %struct.symtab, %struct.symtab* %93, i32 0, i32 3
  %sv_map148 = bitcast %union.anon* %s_value147 to %struct._map*
  %map_file = getelementptr inbounds %struct._map, %struct._map* %sv_map148, i32 0, i32 4
  %94 = load i8*, i8** %map_file, align 8, !tbaa !97
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.160, i32 0, i32 0), i8* %87, i8* %90, i64 %92, i8* %94)
  %95 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value149 = getelementptr inbounds %struct.symtab, %struct.symtab* %95, i32 0, i32 3
  %sv_map150 = bitcast %union.anon* %s_value149 to %struct._map*
  %map_app = getelementptr inbounds %struct._map, %struct._map* %sv_map150, i32 0, i32 13
  %96 = load i8*, i8** %map_app, align 8, !tbaa !98
  %97 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value151 = getelementptr inbounds %struct.symtab, %struct.symtab* %97, i32 0, i32 3
  %sv_map152 = bitcast %union.anon* %s_value151 to %struct._map*
  %map_domain = getelementptr inbounds %struct._map, %struct._map* %sv_map152, i32 0, i32 15
  %98 = load i8*, i8** %map_domain, align 8, !tbaa !99
  %99 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value153 = getelementptr inbounds %struct.symtab, %struct.symtab* %99, i32 0, i32 3
  %sv_map154 = bitcast %union.anon* %s_value153 to %struct._map*
  %map_rebuild = getelementptr inbounds %struct._map, %struct._map* %sv_map154, i32 0, i32 16
  %100 = load i8*, i8** %map_rebuild, align 8, !tbaa !100
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.161, i32 0, i32 0), i8* %96, i8* %98, i8* %100)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.end.131
  %101 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value156 = getelementptr inbounds %struct.symtab, %struct.symtab* %101, i32 0, i32 3
  %sv_map157 = bitcast %union.anon* %s_value156 to %struct._map*
  store %struct._map* %sv_map157, %struct._map** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.155, %if.then.115, %if.then.70, %if.then
  %102 = bitcast %struct.symtab** %class to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i8** %classname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i8** %mapname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = load %struct._map*, %struct._map** %retval
  ret %struct._map* %107
}

declare void @sm_setuserenv(i8*, i8*) #2

declare void @milter_setup(i8*) #2

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

declare void @inithostmaps() #2

declare void @initdaemon() #2

declare i32 @switch_map_find(i8*, i8**, i16*) #2

declare void @xputs(%struct.sm_file*, i8*) #2

declare %struct.sm_file* @sm_debug_file() #2

declare i8* @quote_internal_chars(i8*, i8*, i32*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i8** @makeargv(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %q = alloca i8*, align 8
  %i = alloca i32, align 4
  %avp = alloca i8**, align 8
  %argv = alloca [257 x i8*], align 16
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [257 x i8*]* %argv to i8*
  call void @llvm.lifetime.start(i64 2056, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end.35, %entry
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !12
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end.39

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %8, i8** %q, align 8, !tbaa !1
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.18, %while.body
  %9 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !12
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %land.rhs.8, label %land.end.17

land.rhs.8:                                       ; preds = %while.cond.4
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !12
  %conv9 = sext i8 %12 to i32
  %and = and i32 %conv9, -128
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %land.rhs.12, label %land.end.16

land.rhs.12:                                      ; preds = %land.rhs.8
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !12
  %conv13 = sext i8 %14 to i32
  %idxprom = sext i32 %conv13 to i64
  %call = call i16** @__ctype_b_loc() #8
  %15 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv14 = zext i16 %16 to i32
  %and15 = and i32 %conv14, 8192
  %tobool = icmp ne i32 %and15, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.12, %land.rhs.8
  %17 = phi i1 [ false, %land.rhs.8 ], [ %tobool, %land.rhs.12 ]
  %lnot = xor i1 %17, true
  br label %land.end.17

land.end.17:                                      ; preds = %land.end.16, %while.cond.4
  %18 = phi i1 [ false, %while.cond.4 ], [ %lnot, %land.end.16 ]
  br i1 %18, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %land.end.17
  %19 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.4

while.end:                                        ; preds = %land.end.17
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.33, %while.end
  %20 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !12
  %conv20 = sext i8 %21 to i32
  %and21 = and i32 %conv20, -128
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %land.rhs.24, label %land.end.32

land.rhs.24:                                      ; preds = %while.cond.19
  %22 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !12
  %conv25 = sext i8 %23 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #8
  %24 = load i16*, i16** %call27, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %24, i64 %idxprom26
  %25 = load i16, i16* %arrayidx28, align 2, !tbaa !18
  %conv29 = zext i16 %25 to i32
  %and30 = and i32 %conv29, 8192
  %tobool31 = icmp ne i32 %and30, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.24, %while.cond.19
  %26 = phi i1 [ false, %while.cond.19 ], [ %tobool31, %land.rhs.24 ]
  br i1 %26, label %while.body.33, label %while.end.35

while.body.33:                                    ; preds = %land.end.32
  %27 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %27, align 1, !tbaa !12
  br label %while.cond.19

while.end.35:                                     ; preds = %land.end.32
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %call36 = call i8* @newstr(i8* %28)
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom37
  store i8* %call36, i8** %arrayidx38, align 8, !tbaa !1
  br label %while.cond

while.end.39:                                     ; preds = %land.end
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %30, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %30 to i64
  %arrayidx42 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom41
  store i8* null, i8** %arrayidx42, align 8, !tbaa !1
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %conv43 = sext i32 %31 to i64
  %mul = mul i64 8, %conv43
  %conv44 = trunc i64 %mul to i32
  %call45 = call i8* @xalloc_tagged(i32 %conv44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 2000)
  %32 = bitcast i8* %call45 to i8**
  store i8** %32, i8*** %avp, align 8, !tbaa !1
  %33 = load i8**, i8*** %avp, align 8, !tbaa !1
  %34 = bitcast i8** %33 to i8*
  %arraydecay = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i32 0
  %35 = bitcast i8** %arraydecay to i8*
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %conv46 = sext i32 %36 to i64
  %mul47 = mul i64 8, %conv46
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %34, i8* %35, i64 %mul47, i32 1, i1 false)
  %37 = load i8**, i8*** %avp, align 8, !tbaa !1
  %38 = bitcast [257 x i8*]* %argv to i8*
  call void @llvm.lifetime.end(i64 2056, i8* %38) #1
  %39 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret i8** %37
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i64 @atol(i8* nonnull %__nptr) #6 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  ret i64 %call
}

declare %struct.symtab* @stab(i8*, i32, i32) #2

declare %struct.passwd* @sm_getpwnam(i8*) #2

declare %struct.group* @getgrnam(i8*) #2

declare i64 @convtime(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @printrules() #0 {
entry:
  %rwp = alloca %struct.rewrite*, align 8
  %ruleset = alloca i32, align 4
  %0 = bitcast %struct.rewrite** %rwp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ruleset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %ruleset, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %2 = load i32, i32* %ruleset, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 %idxprom
  %4 = load %struct.rewrite*, %struct.rewrite** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.rewrite* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.8

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %ruleset, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i32 %5)
  %6 = load i32, i32* %ruleset, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 %idxprom2
  %7 = load %struct.rewrite*, %struct.rewrite** %arrayidx3, align 8, !tbaa !1
  store %struct.rewrite* %7, %struct.rewrite** %rwp, align 8, !tbaa !1
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.end
  %8 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.rewrite* %8, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %9 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_lhs = getelementptr inbounds %struct.rewrite, %struct.rewrite* %9, i32 0, i32 0
  %10 = load i8**, i8*** %r_lhs, align 8, !tbaa !15
  call void @printav(%struct.sm_file* %call, i8** %10)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0))
  %call7 = call %struct.sm_file* @sm_debug_file()
  %11 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_rhs = getelementptr inbounds %struct.rewrite, %struct.rewrite* %11, i32 0, i32 1
  %12 = load i8**, i8*** %r_rhs, align 8, !tbaa !17
  call void @printav(%struct.sm_file* %call7, i8** %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %13 = load %struct.rewrite*, %struct.rewrite** %rwp, align 8, !tbaa !1
  %r_next = getelementptr inbounds %struct.rewrite, %struct.rewrite* %13, i32 0, i32 2
  %14 = load %struct.rewrite*, %struct.rewrite** %r_next, align 8, !tbaa !13
  store %struct.rewrite* %14, %struct.rewrite** %rwp, align 8, !tbaa !1
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end, %if.then
  %15 = load i32, i32* %ruleset, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ruleset, align 4, !tbaa !5
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %16 = bitcast i32* %ruleset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.rewrite** %rwp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

declare void @printav(%struct.sm_file*, i8**) #2

; Function Attrs: nounwind uwtable
define void @printmailer(%struct.sm_file* %fp, %struct.mailer* %m) #0 {
entry:
  %fp.addr = alloca %struct.sm_file*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %j = alloca i32, align 4
  %a = alloca i8**, align 8
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %2 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno = getelementptr inbounds %struct.mailer, %struct.mailer* %2, i32 0, i32 6
  %3 = load i16, i16* %m_mno, align 2, !tbaa !67
  %conv = sext i16 %3 to i32
  %4 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %4, i32 0, i32 0
  %5 = load i8*, i8** %m_name, align 8, !tbaa !36
  %6 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mailer = getelementptr inbounds %struct.mailer, %struct.mailer* %6, i32 0, i32 1
  %7 = load i8*, i8** %m_mailer, align 8, !tbaa !41
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %1, i32 -2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0), i32 %conv, i8* %5, i8* %7)
  %8 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_se_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %8, i32 0, i32 10
  %9 = load i16, i16* %m_se_rwset, align 2, !tbaa !42
  %idxprom = sext i16 %9 to i64
  %arrayidx = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %12 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_se_rwset2 = getelementptr inbounds %struct.mailer, %struct.mailer* %12, i32 0, i32 10
  %13 = load i16, i16* %m_se_rwset2, align 2, !tbaa !42
  %conv3 = sext i16 %13 to i32
  %call4 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %11, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 %conv3)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %15 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_se_rwset5 = getelementptr inbounds %struct.mailer, %struct.mailer* %15, i32 0, i32 10
  %16 = load i16, i16* %m_se_rwset5, align 2, !tbaa !42
  %idxprom6 = sext i16 %16 to i64
  %arrayidx7 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom6
  %17 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %call8 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %14, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_sh_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %18, i32 0, i32 9
  %19 = load i16, i16* %m_sh_rwset, align 2, !tbaa !43
  %idxprom9 = sext i16 %19 to i64
  %arrayidx10 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom9
  %20 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %20, null
  br i1 %cmp11, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.end
  %21 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %22 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_sh_rwset14 = getelementptr inbounds %struct.mailer, %struct.mailer* %22, i32 0, i32 9
  %23 = load i16, i16* %m_sh_rwset14, align 2, !tbaa !43
  %conv15 = sext i16 %23 to i32
  %call16 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %21, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 %conv15)
  br label %if.end.22

if.else.17:                                       ; preds = %if.end
  %24 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %25 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_sh_rwset18 = getelementptr inbounds %struct.mailer, %struct.mailer* %25, i32 0, i32 9
  %26 = load i16, i16* %m_sh_rwset18, align 2, !tbaa !43
  %idxprom19 = sext i16 %26 to i64
  %arrayidx20 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom19
  %27 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  %call21 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %24, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8* %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.17, %if.then.13
  %28 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_re_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %28, i32 0, i32 12
  %29 = load i16, i16* %m_re_rwset, align 2, !tbaa !44
  %idxprom23 = sext i16 %29 to i64
  %arrayidx24 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom23
  %30 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %30, null
  br i1 %cmp25, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %if.end.22
  %31 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %32 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_re_rwset28 = getelementptr inbounds %struct.mailer, %struct.mailer* %32, i32 0, i32 12
  %33 = load i16, i16* %m_re_rwset28, align 2, !tbaa !44
  %conv29 = sext i16 %33 to i32
  %call30 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %31, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 %conv29)
  br label %if.end.36

if.else.31:                                       ; preds = %if.end.22
  %34 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %35 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_re_rwset32 = getelementptr inbounds %struct.mailer, %struct.mailer* %35, i32 0, i32 12
  %36 = load i16, i16* %m_re_rwset32, align 2, !tbaa !44
  %idxprom33 = sext i16 %36 to i64
  %arrayidx34 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom33
  %37 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %call35 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %34, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i8* %37)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.27
  %38 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_rh_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %38, i32 0, i32 11
  %39 = load i16, i16* %m_rh_rwset, align 2, !tbaa !45
  %idxprom37 = sext i16 %39 to i64
  %arrayidx38 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom37
  %40 = load i8*, i8** %arrayidx38, align 8, !tbaa !1
  %cmp39 = icmp eq i8* %40, null
  br i1 %cmp39, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.end.36
  %41 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %42 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_rh_rwset42 = getelementptr inbounds %struct.mailer, %struct.mailer* %42, i32 0, i32 11
  %43 = load i16, i16* %m_rh_rwset42, align 2, !tbaa !45
  %conv43 = sext i16 %43 to i32
  %call44 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %41, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 %conv43)
  br label %if.end.50

if.else.45:                                       ; preds = %if.end.36
  %44 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %45 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_rh_rwset46 = getelementptr inbounds %struct.mailer, %struct.mailer* %45, i32 0, i32 11
  %46 = load i16, i16* %m_rh_rwset46, align 2, !tbaa !45
  %idxprom47 = sext i16 %46 to i64
  %arrayidx48 = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom47
  %47 = load i8*, i8** %arrayidx48, align 8, !tbaa !1
  %call49 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %44, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* %47)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %if.then.41
  %48 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %49 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_maxsize = getelementptr inbounds %struct.mailer, %struct.mailer* %49, i32 0, i32 14
  %50 = load i64, i64* %m_maxsize, align 8, !tbaa !48
  %51 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_uid = getelementptr inbounds %struct.mailer, %struct.mailer* %51, i32 0, i32 19
  %52 = load i32, i32* %m_uid, align 4, !tbaa !39
  %53 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_gid = getelementptr inbounds %struct.mailer, %struct.mailer* %53, i32 0, i32 20
  %54 = load i32, i32* %m_gid, align 4, !tbaa !40
  %call51 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %48, i32 -2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0), i64 %50, i32 %52, i32 %54)
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %55 = load i32, i32* %j, align 4, !tbaa !5
  %cmp52 = icmp sle i32 %55, 127
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %j, align 4, !tbaa !5
  %conv54 = trunc i32 %56 to i8
  %conv55 = zext i8 %conv54 to i64
  %div = udiv i64 %conv55, 32
  %and = and i64 %div, 7
  %57 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %57, i32 0, i32 5
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 %and
  %58 = load i32, i32* %arrayidx56, align 4, !tbaa !5
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %conv57 = trunc i32 %59 to i8
  %conv58 = zext i8 %conv57 to i64
  %rem = urem i64 %conv58, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and59 = and i32 %58, %shl
  %tobool = icmp ne i32 %and59, 0
  br i1 %tobool, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %for.body
  %60 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %61 = load i32, i32* %j, align 4, !tbaa !5
  %call61 = call i32 @sm_io_putc(%struct.sm_file* %60, i32 -2, i32 %61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %62 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %64 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_linelimit = getelementptr inbounds %struct.mailer, %struct.mailer* %64, i32 0, i32 15
  %65 = load i32, i32* %m_linelimit, align 4, !tbaa !51
  %call63 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %63, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i32 %65)
  %66 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %67 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_eol = getelementptr inbounds %struct.mailer, %struct.mailer* %67, i32 0, i32 13
  %68 = load i8*, i8** %m_eol, align 8, !tbaa !46
  call void @xputs(%struct.sm_file* %66, i8* %68)
  %69 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_defcharset = getelementptr inbounds %struct.mailer, %struct.mailer* %69, i32 0, i32 21
  %70 = load i8*, i8** %m_defcharset, align 8, !tbaa !54
  %cmp64 = icmp ne i8* %70, null
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %for.end
  %71 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %72 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_defcharset67 = getelementptr inbounds %struct.mailer, %struct.mailer* %72, i32 0, i32 21
  %73 = load i8*, i8** %m_defcharset67, align 8, !tbaa !54
  %call68 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %71, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* %73)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %for.end
  %74 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %75 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mtatype = getelementptr inbounds %struct.mailer, %struct.mailer* %75, i32 0, i32 2
  %76 = load i8*, i8** %m_mtatype, align 8, !tbaa !57
  %cmp70 = icmp eq i8* %76, null
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.69
  br label %cond.end

cond.false:                                       ; preds = %if.end.69
  %77 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mtatype72 = getelementptr inbounds %struct.mailer, %struct.mailer* %77, i32 0, i32 2
  %78 = load i8*, i8** %m_mtatype72, align 8, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), %cond.true ], [ %78, %cond.false ]
  %79 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_addrtype = getelementptr inbounds %struct.mailer, %struct.mailer* %79, i32 0, i32 3
  %80 = load i8*, i8** %m_addrtype, align 8, !tbaa !58
  %cmp73 = icmp eq i8* %80, null
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.end
  %81 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_addrtype77 = getelementptr inbounds %struct.mailer, %struct.mailer* %81, i32 0, i32 3
  %82 = load i8*, i8** %m_addrtype77, align 8, !tbaa !58
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), %cond.true.75 ], [ %82, %cond.false.76 ]
  %83 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_diagtype = getelementptr inbounds %struct.mailer, %struct.mailer* %83, i32 0, i32 4
  %84 = load i8*, i8** %m_diagtype, align 8, !tbaa !59
  %cmp80 = icmp eq i8* %84, null
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end.78
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.end.78
  %85 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_diagtype84 = getelementptr inbounds %struct.mailer, %struct.mailer* %85, i32 0, i32 4
  %86 = load i8*, i8** %m_diagtype84, align 8, !tbaa !59
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.82
  %cond86 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), %cond.true.82 ], [ %86, %cond.false.83 ]
  %call87 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %74, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8* %cond, i8* %cond79, i8* %cond86)
  %87 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %88 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_maxrcpt = getelementptr inbounds %struct.mailer, %struct.mailer* %88, i32 0, i32 23
  %89 = load i32, i32* %m_maxrcpt, align 4, !tbaa !50
  %call88 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %87, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i32 %89)
  %90 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_argv = getelementptr inbounds %struct.mailer, %struct.mailer* %90, i32 0, i32 8
  %91 = load i8**, i8*** %m_argv, align 8, !tbaa !47
  %cmp89 = icmp ne i8** %91, null
  br i1 %cmp89, label %if.then.91, label %if.end.102

if.then.91:                                       ; preds = %cond.end.85
  %92 = bitcast i8*** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_argv92 = getelementptr inbounds %struct.mailer, %struct.mailer* %93, i32 0, i32 8
  %94 = load i8**, i8*** %m_argv92, align 8, !tbaa !47
  store i8** %94, i8*** %a, align 8, !tbaa !1
  %95 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call93 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %95, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.then.91
  %96 = load i8**, i8*** %a, align 8, !tbaa !1
  %97 = load i8*, i8** %96, align 8, !tbaa !1
  %cmp94 = icmp ne i8* %97, null
  br i1 %cmp94, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %98 = load i8**, i8*** %a, align 8, !tbaa !1
  %99 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_argv96 = getelementptr inbounds %struct.mailer, %struct.mailer* %99, i32 0, i32 8
  %100 = load i8**, i8*** %m_argv96, align 8, !tbaa !47
  %cmp97 = icmp ne i8** %98, %100
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %while.body
  %101 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call100 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %101, i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %while.body
  %102 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %103 = load i8**, i8*** %a, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %incdec.ptr, i8*** %a, align 8, !tbaa !1
  %104 = load i8*, i8** %103, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %102, i8* %104)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %105 = bitcast i8*** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  br label %if.end.102

if.end.102:                                       ; preds = %while.end, %cond.end.85
  %106 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call103 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %106, i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  %107 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  ret void
}

declare i32 @sm_io_putc(%struct.sm_file*, i32, i32) #2

declare i32 @sm_strncasecmp(i8*, i8*, i64) #2

declare void @message(i8*, ...) #2

declare i32 @drop_privileges(i32) #2

declare i32 @atobool(i8*) #2

declare void @setalias(i8*) #2

declare void @set_delivery_mode(i32, %struct.envelope*) #2

declare i32 @atooct(i8*) #2

declare i32 @sm_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #4

declare void @cleanstrcpy(i8*, i8*, i32) #2

declare i32 @setdaemonoptions(i8*) #2

; Function Attrs: nounwind uwtable
define void @inittimeouts(i8* %val, i32 %sticky) #0 {
entry:
  %val.addr = alloca i8*, align 8
  %sticky.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %q = alloca i8*, align 8
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  store i32 %sticky, i32* %sticky.addr, align 4, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i8*, i8** %val.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), %cond.true ], [ %4, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.168, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %5 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  store i64 0, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 8), align 8, !tbaa !101
  store i64 0, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 9), align 8, !tbaa !103
  store i64 0, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 7), align 8, !tbaa !104
  store i64 300, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 0), align 8, !tbaa !105
  store i64 300, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 11), align 8, !tbaa !106
  store i64 600, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  store i64 3600, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 2), align 8, !tbaa !108
  store i64 300, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 3), align 8, !tbaa !109
  store i64 3600, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 4), align 8, !tbaa !110
  store i64 3600, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 5), align 8, !tbaa !111
  store i64 300, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 10), align 8, !tbaa !112
  store i64 120, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 12), align 8, !tbaa !113
  store i64 3600, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 6), align 8, !tbaa !114
  store i64 120, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 13), align 8, !tbaa !115
  store i64 5, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 14), align 8, !tbaa !116
  store i64 60, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 15), align 8, !tbaa !117
  store i64 120, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 16), align 8, !tbaa !118
  store i64 120, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 17), align 8, !tbaa !119
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv7 = zext i8 %6 to i32
  %cmp8 = icmp sge i32 %conv7, 5
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.13

land.lhs.true.10:                                 ; preds = %if.then.6
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i32 0, i32 0))
  %8 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 8), align 8, !tbaa !101
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.171, i32 0, i32 0), i64 %8)
  %9 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 9), align 8, !tbaa !103
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.172, i32 0, i32 0), i64 %9)
  %10 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 0), align 8, !tbaa !105
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i64 %10)
  %11 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 11), align 8, !tbaa !106
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.174, i32 0, i32 0), i64 %11)
  %12 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.175, i32 0, i32 0), i64 %12)
  %13 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 2), align 8, !tbaa !108
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.176, i32 0, i32 0), i64 %13)
  %14 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 3), align 8, !tbaa !109
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.177, i32 0, i32 0), i64 %14)
  %15 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 4), align 8, !tbaa !110
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.178, i32 0, i32 0), i64 %15)
  %16 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 5), align 8, !tbaa !111
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.179, i32 0, i32 0), i64 %16)
  %17 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 10), align 8, !tbaa !112
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.180, i32 0, i32 0), i64 %17)
  %18 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 12), align 8, !tbaa !113
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i64 %18)
  %19 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 6), align 8, !tbaa !114
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i32 0, i32 0), i64 %19)
  %20 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 13), align 8, !tbaa !115
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i32 0, i32 0), i64 %20)
  %21 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 14), align 8, !tbaa !116
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.184, i32 0, i32 0), i64 %21)
  %22 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 15), align 8, !tbaa !117
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.185, i32 0, i32 0), i64 %22)
  %23 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 17), align 8, !tbaa !119
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i64 %23)
  %24 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 16), align 8, !tbaa !118
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.187, i32 0, i32 0), i64 %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.then.6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.14:                                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %25 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %conv15 = sext i8 %26 to i32
  %and = and i32 %conv15, -128
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !12
  %conv18 = sext i8 %28 to i32
  %idxprom = sext i32 %conv18 to i64
  %call = call i16** @__ctype_b_loc() #8
  %29 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %29, i64 %idxprom
  %30 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv19 = zext i16 %30 to i32
  %and20 = and i32 %conv19, 8192
  %tobool21 = icmp ne i32 %and20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %tobool21, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %val.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !12
  %conv22 = sext i8 %34 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.end
  br label %for.end.77

if.end.26:                                        ; preds = %while.end
  %35 = load i8*, i8** %val.addr, align 8, !tbaa !1
  store i8* %35, i8** %p, align 8, !tbaa !1
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end.26
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !12
  %conv28 = sext i8 %37 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %land.rhs.31, label %land.end.35

land.rhs.31:                                      ; preds = %for.cond.27
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !12
  %conv32 = sext i8 %39 to i32
  %cmp33 = icmp ne i32 %conv32, 44
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.31, %for.cond.27
  %40 = phi i1 [ false, %for.cond.27 ], [ %cmp33, %land.rhs.31 ]
  br i1 %40, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8, !tbaa !1
  br label %for.cond.27

for.end:                                          ; preds = %land.end.35
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !12
  %conv37 = sext i8 %43 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %for.end
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr41, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %44, align 1, !tbaa !12
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %for.end
  %45 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !12
  %conv43 = sext i8 %46 to i32
  %and44 = and i32 %conv43, -128
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %if.end.42
  %47 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !12
  %conv48 = sext i8 %48 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %call50 = call i16** @__ctype_b_loc() #8
  %49 = load i16*, i16** %call50, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %49, i64 %idxprom49
  %50 = load i16, i16* %arrayidx51, align 2, !tbaa !18
  %conv52 = zext i16 %50 to i32
  %and53 = and i32 %conv52, 2048
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %land.lhs.true.47
  %51 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call56 = call i64 @convtime(i8* %51, i32 109)
  store i64 %call56, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  %52 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  store i64 %52, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 2), align 8, !tbaa !108
  %53 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  store i64 %53, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 3), align 8, !tbaa !109
  %54 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  store i64 %54, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 4), align 8, !tbaa !110
  %55 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  store i64 %55, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 5), align 8, !tbaa !111
  %56 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  store i64 %56, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 6), align 8, !tbaa !114
  %57 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %57, 0
  br i1 %tobool57, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.then.55
  %58 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %or = or i32 %58, 4
  store i32 %or, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %59 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %or59 = or i32 %59, 8
  store i32 %or59, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %60 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %or60 = or i32 %60, 16
  store i32 %or60, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %61 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %or61 = or i32 %61, 32
  store i32 %or61, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %62 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %or62 = or i32 %62, 64
  store i32 %or62, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %63 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  %or63 = or i32 %63, 128
  store i32 %or63, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 0), align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.then.55
  br label %for.inc.76

if.else:                                          ; preds = %land.lhs.true.47, %if.end.42
  %64 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call65 = call i8* @strchr(i8* %65, i32 58) #1
  store i8* %call65, i8** %q, align 8, !tbaa !1
  %66 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp66 = icmp eq i8* %66, null
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.73

land.lhs.true.68:                                 ; preds = %if.else
  %67 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call69 = call i8* @strchr(i8* %67, i32 61) #1
  store i8* %call69, i8** %q, align 8, !tbaa !1
  %cmp70 = icmp eq i8* %call69, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %land.lhs.true.68, %if.else
  %68 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr74, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %68, align 1, !tbaa !12
  %69 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %q, align 8, !tbaa !1
  %71 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  call void @settimeout(i8* %69, i8* %70, i32 %71)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72
  %72 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc.76
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.75

if.end.75:                                        ; preds = %cleanup.cont
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %cleanup, %if.end.64
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %73, i8** %val.addr, align 8, !tbaa !1
  br label %for.cond

for.end.77:                                       ; preds = %if.then.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %for.end.77, %if.end.13
  %74 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %cleanup.dest.79 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.79, label %unreachable [
    i32 0, label %cleanup.cont.80
    i32 1, label %cleanup.cont.80
  ]

cleanup.cont.80:                                  ; preds = %cleanup.78, %cleanup.78
  ret void

unreachable:                                      ; preds = %cleanup.78, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @settimeout(i8* %name, i8* %val, i32 %sticky) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %sticky.addr = alloca i32, align 4
  %to = alloca %struct.timeoutinfo*, align 8
  %i = alloca i32, align 4
  %addopts = alloca i32, align 4
  %toval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  store i32 %sticky, i32* %sticky.addr, align 4, !tbaa !5
  %0 = bitcast %struct.timeoutinfo** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %addopts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %toval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.345, i32 0, i32 0), i8* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store %struct.timeoutinfo* getelementptr inbounds ([40 x %struct.timeoutinfo], [40 x %struct.timeoutinfo]* @TimeOutTab, i32 0, i32 0), %struct.timeoutinfo** %to, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_name = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %8, i32 0, i32 0
  %9 = load i8*, i8** %to_name, align 8, !tbaa !120
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_name4 = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %to_name4, align 8, !tbaa !120
  %12 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i32 @sm_strcasecmp(i8* %11, i8* %12)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %for.end

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %13 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %13, i32 1
  store %struct.timeoutinfo* %incdec.ptr, %struct.timeoutinfo** %to, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  %14 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_name9 = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %14, i32 0, i32 0
  %15 = load i8*, i8** %to_name9, align 8, !tbaa !120
  %cmp10 = icmp eq i8* %15, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.end
  %call13 = call i32* @__errno_location() #8
  store i32 0, i32* %call13, align 4, !tbaa !5
  %16 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.346, i32 0, i32 0), i8* %16)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.end
  %17 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %if.end.30, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %if.end.14
  %18 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_code = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %18, i32 0, i32 1
  %19 = load i8, i8* %to_code, align 1, !tbaa !122
  %conv17 = zext i8 %19 to i64
  %div = udiv i64 %conv17, 32
  %and = and i64 %div, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 %and
  %20 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %21 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_code18 = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %21, i32 0, i32 1
  %22 = load i8, i8* %to_code18, align 1, !tbaa !122
  %conv19 = zext i8 %22 to i64
  %rem = urem i64 %conv19, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and20 = and i32 %20, %shl
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %land.lhs.true.16
  %23 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv23 = zext i8 %23 to i32
  %cmp24 = icmp sge i32 %conv23, 2
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.29

land.lhs.true.26:                                 ; preds = %if.then.22
  %24 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %24, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.26
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.26, %if.then.22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %land.lhs.true.16, %if.end.14
  %25 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !12
  %conv31 = zext i8 %25 to i32
  %cmp32 = icmp sge i32 %conv31, 2
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.37

land.lhs.true.34:                                 ; preds = %if.end.30
  %26 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.34
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.34, %if.end.30
  %27 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call38 = call i64 @convtime(i8* %27, i32 109)
  store i64 %call38, i64* %toval, align 8, !tbaa !7
  store i32 0, i32* %addopts, align 4, !tbaa !5
  %28 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_code39 = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %28, i32 0, i32 1
  %29 = load i8, i8* %to_code39, align 1, !tbaa !122
  %conv40 = zext i8 %29 to i32
  switch i32 %conv40, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.41
    i32 3, label %sw.bb.42
    i32 4, label %sw.bb.43
    i32 5, label %sw.bb.44
    i32 6, label %sw.bb.45
    i32 7, label %sw.bb.46
    i32 8, label %sw.bb.47
    i32 9, label %sw.bb.48
    i32 10, label %sw.bb.49
    i32 11, label %sw.bb.50
    i32 12, label %sw.bb.51
    i32 13, label %sw.bb.52
    i32 14, label %sw.bb.53
    i32 15, label %sw.bb.54
    i32 35, label %sw.bb.55
    i32 16, label %sw.bb.56
    i32 17, label %sw.bb.58
    i32 18, label %sw.bb.60
    i32 19, label %sw.bb.62
    i32 36, label %sw.bb.64
    i32 20, label %sw.bb.66
    i32 21, label %sw.bb.68
    i32 22, label %sw.bb.70
    i32 23, label %sw.bb.72
    i32 37, label %sw.bb.74
    i32 24, label %sw.bb.76
    i32 25, label %sw.bb.77
    i32 28, label %sw.bb.79
    i32 26, label %sw.bb.81
    i32 29, label %sw.bb.83
    i32 27, label %sw.bb.85
    i32 30, label %sw.bb.87
    i32 31, label %sw.bb.89
    i32 32, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %if.end.37
  %30 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %30, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 0), align 8, !tbaa !105
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.37
  %31 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %31, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 1), align 8, !tbaa !107
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.37
  %32 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %32, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 2), align 8, !tbaa !108
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.37
  %33 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %33, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 3), align 8, !tbaa !109
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.37
  %34 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %34, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 4), align 8, !tbaa !110
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.37
  %35 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %35, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 5), align 8, !tbaa !111
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.37
  %36 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %36, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 6), align 8, !tbaa !114
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.37
  %37 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %37, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 10), align 8, !tbaa !112
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.37
  %38 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %38, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 11), align 8, !tbaa !106
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.37
  %39 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %39, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 12), align 8, !tbaa !113
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.37
  %40 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %40, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 13), align 8, !tbaa !115
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.37
  %41 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %41, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 14), align 8, !tbaa !116
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.37
  %42 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %42, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 15), align 8, !tbaa !117
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.37
  %43 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %43, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 8), align 8, !tbaa !101
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.37
  %44 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %44, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 7), align 8, !tbaa !104
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.37
  %45 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %45, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 9), align 8, !tbaa !103
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.37
  %46 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call57 = call i64 @convtime(i8* %46, i32 104)
  store i64 %call57, i64* %toval, align 8, !tbaa !7
  %47 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %47, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 0), align 8, !tbaa !7
  %48 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %48, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 1), align 8, !tbaa !7
  %49 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %49, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 2), align 8, !tbaa !7
  %50 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %50, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 3), align 8, !tbaa !7
  store i32 2, i32* %addopts, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.37
  %51 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call59 = call i64 @convtime(i8* %51, i32 104)
  store i64 %call59, i64* %toval, align 8, !tbaa !7
  %52 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %52, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 0), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.37
  %53 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call61 = call i64 @convtime(i8* %53, i32 104)
  store i64 %call61, i64* %toval, align 8, !tbaa !7
  %54 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %54, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 1), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.37
  %55 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call63 = call i64 @convtime(i8* %55, i32 104)
  store i64 %call63, i64* %toval, align 8, !tbaa !7
  %56 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %56, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 2), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.37
  %57 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call65 = call i64 @convtime(i8* %57, i32 104)
  store i64 %call65, i64* %toval, align 8, !tbaa !7
  %58 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %58, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 19, i64 3), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end.37
  %59 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call67 = call i64 @convtime(i8* %59, i32 100)
  store i64 %call67, i64* %toval, align 8, !tbaa !7
  %60 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %60, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 0), align 8, !tbaa !7
  %61 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %61, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 1), align 8, !tbaa !7
  %62 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %62, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 2), align 8, !tbaa !7
  %63 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %63, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 3), align 8, !tbaa !7
  store i32 2, i32* %addopts, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end.37
  %64 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call69 = call i64 @convtime(i8* %64, i32 100)
  store i64 %call69, i64* %toval, align 8, !tbaa !7
  %65 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %65, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 0), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.37
  %66 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call71 = call i64 @convtime(i8* %66, i32 100)
  store i64 %call71, i64* %toval, align 8, !tbaa !7
  %67 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %67, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 1), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.37
  %68 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call73 = call i64 @convtime(i8* %68, i32 100)
  store i64 %call73, i64* %toval, align 8, !tbaa !7
  %69 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %69, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 2), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.37
  %70 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call75 = call i64 @convtime(i8* %70, i32 100)
  store i64 %call75, i64* %toval, align 8, !tbaa !7
  %71 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %71, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 18, i64 3), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end.37
  %72 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %72, i64* @MciInfoTimeout, align 8, !tbaa !7
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.37
  %73 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call78 = call i64 @convtime(i8* %73, i32 115)
  store i64 %call78, i64* %toval, align 8, !tbaa !7
  %74 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %74, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 20, i64 2), align 8, !tbaa !7
  %75 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %75, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 20, i64 0), align 8, !tbaa !7
  %76 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %76, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 20, i64 1), align 8, !tbaa !7
  store i32 2, i32* %addopts, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.37
  %77 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call80 = call i32 @atoi(i8* %77) #9
  store i32 %call80, i32* %i, align 4, !tbaa !5
  %78 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %78, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 21, i64 2), align 4, !tbaa !5
  %79 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %79, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 21, i64 0), align 4, !tbaa !5
  %80 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %80, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 21, i64 1), align 4, !tbaa !5
  store i32 2, i32* %addopts, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.37
  %81 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call82 = call i64 @convtime(i8* %81, i32 115)
  store i64 %call82, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 20, i64 1), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.37
  %82 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call84 = call i32 @atoi(i8* %82) #9
  store i32 %call84, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 21, i64 1), align 4, !tbaa !5
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.37
  %83 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call86 = call i64 @convtime(i8* %83, i32 115)
  store i64 %call86, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 20, i64 0), align 8, !tbaa !7
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.37
  %84 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call88 = call i32 @atoi(i8* %84) #9
  store i32 %call88, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 21, i64 0), align 4, !tbaa !5
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.37
  %85 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %85, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 16), align 8, !tbaa !118
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.end.37
  %86 = load i64, i64* %toval, align 8, !tbaa !7
  store i64 %86, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @TimeOuts, i32 0, i32 17), align 8, !tbaa !119
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.37
  %87 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.346, i32 0, i32 0), i8* %87)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.90, %sw.bb.89, %sw.bb.87, %sw.bb.85, %sw.bb.83, %sw.bb.81, %sw.bb.79, %sw.bb.77, %sw.bb.76, %sw.bb.74, %sw.bb.72, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.55, %sw.bb.54, %sw.bb.53, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb.49, %sw.bb.48, %sw.bb.47, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb
  %88 = load i32, i32* %sticky.addr, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %88, 0
  br i1 %tobool91, label %if.then.92, label %if.end.114

if.then.92:                                       ; preds = %sw.epilog
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.112, %if.then.92
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %90 = load i32, i32* %addopts, align 4, !tbaa !5
  %cmp94 = icmp sle i32 %89, %90
  br i1 %cmp94, label %for.body.96, label %for.end.113

for.body.96:                                      ; preds = %for.cond.93
  %91 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_code97 = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %91, i32 0, i32 1
  %92 = load i8, i8* %to_code97, align 1, !tbaa !122
  %conv98 = zext i8 %92 to i32
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %conv98, %93
  %conv99 = trunc i32 %add to i8
  %conv100 = zext i8 %conv99 to i64
  %rem101 = urem i64 %conv100, 32
  %sh_prom102 = trunc i64 %rem101 to i32
  %shl103 = shl i32 1, %sh_prom102
  %94 = load %struct.timeoutinfo*, %struct.timeoutinfo** %to, align 8, !tbaa !1
  %to_code104 = getelementptr inbounds %struct.timeoutinfo, %struct.timeoutinfo* %94, i32 0, i32 1
  %95 = load i8, i8* %to_code104, align 1, !tbaa !122
  %conv105 = zext i8 %95 to i32
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %add106 = add nsw i32 %conv105, %96
  %conv107 = trunc i32 %add106 to i8
  %conv108 = zext i8 %conv107 to i64
  %div109 = udiv i64 %conv108, 32
  %and110 = and i64 %div109, 7
  %arrayidx111 = getelementptr inbounds [8 x i32], [8 x i32]* @StickyTimeoutOpt, i32 0, i64 %and110
  %97 = load i32, i32* %arrayidx111, align 4, !tbaa !5
  %or = or i32 %97, %shl103
  store i32 %or, i32* %arrayidx111, align 4, !tbaa !5
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.96
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.93

for.end.113:                                      ; preds = %for.cond.93
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.114, %if.end.29, %if.then.12
  %99 = bitcast i64* %toval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %addopts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.timeoutinfo** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #4

declare void @setdefuser() #2

declare i8* @denlstring(i8*, i32, i32) #2

declare i8* @sm_pstrdup_x(i8*) #2

declare i64 @sm_strlcat(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #5

declare void @setclientoptions(i8*) #2

declare void @milter_set_option(i8*, i8*, i32) #2

declare i8* @getmodifiers(i8*, i32*) #2

declare i8* @macname(i32) #2

declare void @copy_class(i32, i32) #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) #5

; Function Attrs: nounwind
declare i32 @getpid() #5

; Function Attrs: nounwind uwtable
define internal void @parse_class_words(i32 %class, i8* %line) #0 {
entry:
  %class.addr = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %class, i32* %class.addr, align 4, !tbaa !5
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.44

while.body:                                       ; preds = %land.end
  %4 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.12, %while.body
  %5 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !12
  %conv4 = sext i8 %6 to i32
  %and = and i32 %conv4, -128
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %land.rhs.7, label %land.end.11

land.rhs.7:                                       ; preds = %while.cond.3
  %7 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !12
  %conv8 = sext i8 %8 to i32
  %idxprom = sext i32 %conv8 to i64
  %call = call i16** @__ctype_b_loc() #8
  %9 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv9 = zext i16 %10 to i32
  %and10 = and i32 %conv9, 8192
  %tobool = icmp ne i32 %and10, 0
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.7, %while.cond.3
  %11 = phi i1 [ false, %while.cond.3 ], [ %tobool, %land.rhs.7 ]
  br i1 %11, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %land.end.11
  %12 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8, !tbaa !1
  br label %while.cond.3

while.end:                                        ; preds = %land.end.11
  %13 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !12
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %15 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %15, i8** %q, align 8, !tbaa !1
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.35, %if.end
  %16 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !12
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %land.rhs.20, label %land.end.34

land.rhs.20:                                      ; preds = %while.cond.16
  %18 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %conv21 = sext i8 %19 to i32
  %and22 = and i32 %conv21, -128
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %land.rhs.25, label %land.end.33

land.rhs.25:                                      ; preds = %land.rhs.20
  %20 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !12
  %conv26 = sext i8 %21 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #8
  %22 = load i16*, i16** %call28, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %22, i64 %idxprom27
  %23 = load i16, i16* %arrayidx29, align 2, !tbaa !18
  %conv30 = zext i16 %23 to i32
  %and31 = and i32 %conv30, 8192
  %tobool32 = icmp ne i32 %and31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.25, %land.rhs.20
  %24 = phi i1 [ false, %land.rhs.20 ], [ %tobool32, %land.rhs.25 ]
  %lnot = xor i1 %24, true
  br label %land.end.34

land.end.34:                                      ; preds = %land.end.33, %while.cond.16
  %25 = phi i1 [ false, %while.cond.16 ], [ %lnot, %land.end.33 ]
  br i1 %25, label %while.body.35, label %while.end.37

while.body.35:                                    ; preds = %land.end.34
  %26 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr36, i8** %line.addr, align 8, !tbaa !1
  br label %while.cond.16

while.end.37:                                     ; preds = %land.end.34
  %27 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !12
  %conv38 = sext i8 %28 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %while.end.37
  %29 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr42, i8** %line.addr, align 8, !tbaa !1
  store i8 0, i8* %29, align 1, !tbaa !12
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %while.end.37
  %30 = load i32, i32* %class.addr, align 4, !tbaa !5
  %31 = load i8*, i8** %q, align 8, !tbaa !1
  call void @setclass(i32 %30, i8* %31)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then
  %32 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.44
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.44:                                     ; preds = %cleanup, %land.end
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #5

declare i32 @prog_open(i8**, i32*, %struct.envelope*) #2

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #2

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #2

declare i32 @sm_io_sscanf(i8*, i8*, ...) #2

declare i32 @waitfor(i32) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 24}
!10 = !{!"stat", !8, i64 0, !8, i64 8, !8, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !11, i64 72, !11, i64 88, !11, i64 104, !3, i64 120}
!11 = !{!"timespec", !8, i64 0, !8, i64 8}
!12 = !{!3, !3, i64 0}
!13 = !{!14, !2, i64 16}
!14 = !{!"rewrite", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!15 = !{!14, !2, i64 0}
!16 = !{!14, !6, i64 24}
!17 = !{!14, !2, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !3, i64 0}
!20 = !{!21, !2, i64 0}
!21 = !{!"priority", !2, i64 0, !6, i64 8}
!22 = !{!21, !6, i64 8}
!23 = !{!24, !8, i64 24}
!24 = !{!"sm_file", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !8, i64 24, !19, i64 32, !25, i64 40, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !25, i64 168, !2, i64 184, !6, i64 192, !3, i64 196, !3, i64 199, !6, i64 200, !8, i64 208, !6, i64 216}
!25 = !{!"smbuf", !2, i64 0, !6, i64 8}
!26 = !{!27, !2, i64 0}
!27 = !{!"_map", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72, !3, i64 73, !3, i64 74, !3, i64 75, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !8, i64 112, !8, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !19, i64 140, !3, i64 144, !3, i64 240}
!28 = !{!27, !2, i64 16}
!29 = !{!27, !8, i64 24}
!30 = !{!31, !2, i64 24}
!31 = !{!"_mapclass", !2, i64 0, !2, i64 8, !19, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!32 = !{!31, !2, i64 48}
!33 = !{!27, !6, i64 132}
!34 = !{!31, !2, i64 32}
!35 = !{!31, !2, i64 56}
!36 = !{!37, !2, i64 0}
!37 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !19, i64 72, !19, i64 74, !2, i64 80, !19, i64 88, !19, i64 90, !19, i64 92, !19, i64 94, !2, i64 96, !8, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !8, i64 152, !6, i64 160, !19, i64 164}
!38 = !{!37, !19, i64 164}
!39 = !{!37, !6, i64 136}
!40 = !{!37, !6, i64 140}
!41 = !{!37, !2, i64 8}
!42 = !{!37, !19, i64 90}
!43 = !{!37, !19, i64 88}
!44 = !{!37, !19, i64 94}
!45 = !{!37, !19, i64 92}
!46 = !{!37, !2, i64 96}
!47 = !{!37, !2, i64 80}
!48 = !{!37, !8, i64 104}
!49 = !{!37, !6, i64 116}
!50 = !{!37, !6, i64 160}
!51 = !{!37, !6, i64 112}
!52 = !{!37, !19, i64 74}
!53 = !{!37, !2, i64 120}
!54 = !{!37, !2, i64 144}
!55 = !{!56, !19, i64 16}
!56 = !{!"queuegrp", !2, i64 0, !2, i64 8, !19, i64 16, !6, i64 20, !6, i64 24, !8, i64 32, !2, i64 40, !3, i64 48, !19, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !8, i64 104}
!57 = !{!37, !2, i64 16}
!58 = !{!37, !2, i64 24}
!59 = !{!37, !2, i64 32}
!60 = !{!61, !6, i64 16}
!61 = !{!"passwd", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !2, i64 40}
!62 = !{!61, !6, i64 20}
!63 = !{!64, !6, i64 16}
!64 = !{!"group", !2, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!65 = !{!37, !8, i64 152}
!66 = !{!37, !2, i64 128}
!67 = !{!37, !19, i64 72}
!68 = !{!69, !2, i64 0}
!69 = !{!"optioninfo", !2, i64 0, !3, i64 8, !19, i64 10}
!70 = !{!69, !3, i64 8}
!71 = !{!69, !19, i64 10}
!72 = !{!73, !19, i64 292}
!73 = !{!"envelope", !2, i64 0, !8, i64 8, !8, i64 16, !2, i64 24, !74, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !8, i64 256, !2, i64 264, !8, i64 272, !6, i64 280, !19, i64 284, !19, i64 286, !19, i64 288, !19, i64 290, !19, i64 292, !19, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !8, i64 456, !6, i64 464, !8, i64 472, !8, i64 480, !75, i64 488, !2, i64 2576, !2, i64 2584, !76, i64 2592, !8, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!74 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !19, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!75 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!76 = !{!"sm_timers", !77, i64 0}
!77 = !{!"_timer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!78 = !{!79, !2, i64 0}
!79 = !{!"resolverflags", !2, i64 0, !8, i64 8}
!80 = !{!79, !8, i64 8}
!81 = !{!82, !8, i64 8}
!82 = !{!"__res_state", !6, i64 0, !6, i64 4, !8, i64 8, !6, i64 16, !3, i64 20, !19, i64 68, !3, i64 72, !3, i64 128, !8, i64 384, !6, i64 392, !6, i64 392, !6, i64 393, !6, i64 393, !3, i64 396, !2, i64 480, !2, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !3, i64 512}
!83 = !{!73, !8, i64 272}
!84 = !{!85, !2, i64 0}
!85 = !{!"prival", !2, i64 0, !8, i64 8}
!86 = !{!85, !8, i64 8}
!87 = !{!61, !2, i64 0}
!88 = !{!89, !2, i64 0}
!89 = !{!"dbsval", !2, i64 0, !3, i64 8}
!90 = !{!89, !3, i64 8}
!91 = !{!92, !19, i64 0}
!92 = !{!"sockaddr", !19, i64 0, !3, i64 2}
!93 = !{!94, !6, i64 4}
!94 = !{!"sockaddr_in", !19, i64 0, !19, i64 2, !95, i64 4, !3, i64 8}
!95 = !{!"in_addr", !6, i64 0}
!96 = !{!31, !2, i64 0}
!97 = !{!27, !2, i64 32}
!98 = !{!27, !2, i64 80}
!99 = !{!27, !2, i64 96}
!100 = !{!27, !2, i64 104}
!101 = !{!102, !8, i64 64}
!102 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !3, i64 144, !3, i64 208, !3, i64 272, !3, i64 296}
!103 = !{!102, !8, i64 72}
!104 = !{!102, !8, i64 56}
!105 = !{!102, !8, i64 0}
!106 = !{!102, !8, i64 88}
!107 = !{!102, !8, i64 8}
!108 = !{!102, !8, i64 16}
!109 = !{!102, !8, i64 24}
!110 = !{!102, !8, i64 32}
!111 = !{!102, !8, i64 40}
!112 = !{!102, !8, i64 80}
!113 = !{!102, !8, i64 96}
!114 = !{!102, !8, i64 48}
!115 = !{!102, !8, i64 104}
!116 = !{!102, !8, i64 112}
!117 = !{!102, !8, i64 120}
!118 = !{!102, !8, i64 128}
!119 = !{!102, !8, i64 136}
!120 = !{!121, !2, i64 0}
!121 = !{!"timeoutinfo", !2, i64 0, !3, i64 8}
!122 = !{!121, !3, i64 8}
