; ModuleID = '12.parseaddr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.rewrite = type { i8**, i8**, %struct.rewrite*, i32 }
%struct.qflags = type { i8*, i64 }
%struct.sm_exc_handler = type { %struct.sm_exc*, [1 x %struct.__jmp_buf_tag], %struct.sm_exc_handler*, i32 }
%struct.sm_exc = type { i8*, i64, %struct.sm_exc_type*, %union.sm_val* }
%struct.sm_exc_type = type { i8*, i8*, i8*, void (%struct.sm_exc*, %struct.sm_file*)*, i8* }
%union.sm_val = type { i64 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.errcodes = type { i8*, i32 }
%struct.match = type { i8**, i8**, i8** }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }
%struct._map = type { %struct._mapclass*, %struct._mapclass*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i64, i64, i32, i32, i32, i16, [12 x %struct._map*], [5 x i16] }
%struct._mapclass = type { i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0A--parseaddr(%s)\0A\00", align 1
@ExtTokenTab = global [256 x i8] c"\01\01\01\01\01\01\01\01\01\03\03\03\03\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\02\01\01\01\01\01\03\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"parseaddr-->NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"parseaddr-->bad address\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"parseaddr-->bad q_user\0A\00", align 1
@OpMode = external global i8, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"queuegroup\00", align 1
@LogLevel = external global i32, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"can't find queue group name %s, selection ignored\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"queue group name %s -> %d\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Transient parse error -- message queued for future delivery\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Deferring message until queue run\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"parseaddr: queueing message\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"4.4.3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"parseaddr-->\00", align 1
@EightBitAddrOK = external global i32, align 4
@ExitStat = external global i32, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"553 5.1.0 Address \22%s\22 too long (%d bytes max)\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"501 5.1.3 8-bit character in mailbox address \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"501 5.1.7 8-bit character in mailbox address \22%s\22\00", align 1
@IntTokenTab = global [256 x i8] c"\01\01\01\01\01\01\01\01\01\03\03\03\03\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\02\01\01\01\01\01\03\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\04\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04", align 16
@MimeTokenTab = global [256 x i8] c"\05\05\05\05\05\05\05\05\05\03\03\03\03\03\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\03\01\02\01\01\01\01\01\03\03\01\01\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\04", align 16
@TokTypeNoC = global [256 x i8] c"\01\01\01\01\01\01\01\01\01\03\03\03\03\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\02\01\01\01\01\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\04\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04", align 16
@CurEnv = external global %struct.envelope*, align 8
@prescan.av = internal global [1001 x i8*] zeroinitializer, align 16
@prescan.firsttime = internal global i32 1, align 4
@OperatorChars = external global i8*, align 8
@ConfigLevel = external global i32, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c".:@[]\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"()<>,;\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"prescan: \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"553 5.1.1 Address too long\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"553 Unbalanced '\22'\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"553 Unbalanced '('\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"553 Unbalanced '<'\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"c=%c, s=%d; \00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"553 Unbalanced ')'\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"553 Unbalanced '>'\00", align 1
@StateTab = internal global [6 x [6 x i16]] [[6 x i16] [i16 32, i16 33, i16 34, i16 51, i16 36, i16 53], [6 x i16] [i16 32, i16 1, i16 34, i16 51, i16 36, i16 53], [6 x i16] [i16 2, i16 2, i16 0, i16 2, i16 2, i16 2], [6 x i16] [i16 0, i16 1, i16 2, i16 19, i16 4, i16 53], [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 53], [6 x i16] [i16 32, i16 33, i16 34, i16 51, i16 36, i16 21]], align 16
@.str.27 = private unnamed_addr constant [9 x i8] c"ns=%02o\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"553 Illegal character %c\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"553 Illegal character 0x%02x\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tok=\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"553 5.1.0 prescan: too many tokens\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"553 5.1.0 prescan: token too long\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"prescan==>\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"prescan: null leading token\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"554 5.3.5 rewrite: illegal ruleset number %d\00", align 1
@RuleSetNames = external global [200 x i8*], align 16
@.str.36 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"rewrite: ruleset \00", align 1
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.38 = private unnamed_addr constant [20 x i8] c"%s%-16.16s   input:\00", align 1
@MaxRuleRecursion = external global i32, align 4
@.str.39 = private unnamed_addr constant [50 x i8] c"rewrite: excessive recursion (max %d), ruleset %s\00", align 1
@RewriteRules = external global [200 x %struct.rewrite*], align 16
@.str.40 = private unnamed_addr constant [28 x i8] c"-----trying rule (line %d):\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"-----trying rule:\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"554 5.3.5 Infinite loop in ruleset %s, rule %d\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"workspace: \00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"ADVANCE rp=\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c", ap=\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"EXTEND  rp=\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"CLMATCH\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"rewrite: LHS $&{%s} => \22%s\22\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"BACKUP  rp=\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"----- rule fails\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"-----rule matches:\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"554 5.3.5 rewrite: ruleset %s: replacement $%c out of bounds\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"$%c:\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c" %p=\22\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"554 5.3.0 rewrite: expansion too long\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"rewrite: expansion too long, ruleset=%s, ruleno=%d\00", align 1
@rewrite.pvpb1_size = internal global i64 0, align 8
@rewrite.pvpb1 = internal global i8** null, align 8
@.str.59 = private unnamed_addr constant [29 x i8] c"rewrite: RHS $&{%s} => \22%s\22\0A\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"parseaddr.c\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c" ... %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c" ... DONE\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"554 5.3.0 rewrite: missing mapname\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"SM_ASSERT(0) failed\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"554 5.3.0 rewrite: map %s not found\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"554 5.3.0 rewrite: missing key for map %s\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"rewritten as:\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"%s%-16.16s returns:\00", align 1
@discardmailer = internal global %struct.mailer zeroinitializer, align 8
@.str.70 = private unnamed_addr constant [10 x i8] c"*discard*\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@discardargv = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* null], align 16
@errormailer = internal global %struct.mailer zeroinitializer, align 8
@.str.72 = private unnamed_addr constant [8 x i8] c"*error*\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@errorargv = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* null], align 16
@.str.74 = private unnamed_addr constant [16 x i8] c"cataddr(%d) <==\00", align 1
@SpaceSub = external global i8, align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"  cataddr => %s\0A\00", align 1
@ProgMailer = external global %struct.mailer*, align 8
@.str.76 = private unnamed_addr constant [8 x i8] c"[NULL]\0A\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"%p=\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"%s:\0A\09mailer %d (%s), host `%s'\0A\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"\09user `%s', ruser `%s'\0A\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"\09state=\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"DONTSEND\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"BADADDR\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"QUEUEUP\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"RETRY\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"SENT\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"VERIFIED\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"EXPANDED\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"SENDER\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"CLONED\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"DISCARDED\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"REPLACED\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"REMOVED\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"DUPLICATE\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"INCLUDED\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c", next=%p, alias %p, uid %d, gid %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"\09flags=%lx<\00", align 1
@AddressFlags = internal global [23 x %struct.qflags] [%struct.qflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i64 1 }, %struct.qflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0), i64 2 }, %struct.qflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0), i64 4 }, %struct.qflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i32 0, i32 0), i64 8 }, %struct.qflags { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i32 0, i32 0), i64 16 }, %struct.qflags { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.186, i32 0, i32 0), i64 32 }, %struct.qflags { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.187, i32 0, i32 0), i64 64 }, %struct.qflags { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i32 0, i32 0), i64 128 }, %struct.qflags { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i64 256 }, %struct.qflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0), i64 512 }, %struct.qflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0), i64 1024 }, %struct.qflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.192, i32 0, i32 0), i64 2048 }, %struct.qflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i32 0, i32 0), i64 4096 }, %struct.qflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.194, i32 0, i32 0), i64 8192 }, %struct.qflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.195, i32 0, i32 0), i64 1073741824 }, %struct.qflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i64 16384 }, %struct.qflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), i64 32768 }, %struct.qflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.198, i32 0, i32 0), i64 65536 }, %struct.qflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.199, i32 0, i32 0), i64 131072 }, %struct.qflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i64 262144 }, %struct.qflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i32 0, i32 0), i64 524288 }, %struct.qflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.202, i32 0, i32 0), i64 2147483648 }, %struct.qflags zeroinitializer], align 16
@.str.100 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"\09owner=%s, home=\22%s\22, fullname=\22%s\22\0A\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"\09orcpt=\22%s\22, statmta=%s, status=%s\0A\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"\09finalrcpt=\22%s\22\0A\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"\09rstatus=\22%s\22\0A\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"\09statdate=%s\0A\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@remotename.buf = internal global [257 x i8] zeroinitializer, align 16
@.str.110 = private unnamed_addr constant [12 x i8] c"remotename(\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"{addr_type}\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.113 = private unnamed_addr constant [3 x i8] c"\81g\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"553 5.1.0 remotename: too many tokens\00", align 1
@SmExcHandler = external global %struct.sm_exc_handler*, align 8
@.str.116 = private unnamed_addr constant [5 x i8] c"<\81g>\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"SM_ASSERT(SmExcHandler == &_h) failed\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"remotename => `\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"', stat=%d\0A\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"maplocaluser: \00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"maplocaluser: cannot prescan %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"e r\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"maplocaluser: rewrite tempfail\0A\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"maplocaluser: doesn't resolve\0A\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"E:mta.quickabort\00", align 1
@EtypeQuickAbort = external constant %struct.sm_exc_type, align 8
@.str.126 = private unnamed_addr constant [33 x i8] c"maplocaluser: address unchanged\0A\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"maplocaluser: QS_REPLACED \00", align 1
@QuickAbort = external global i32, align 4
@SuprErrs = external global i32, align 4
@.str.128 = private unnamed_addr constant [21 x i8] c"rscheck(%s, %s, %s)\0A\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"rscheck: cannot prescan input\0A\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"rscheck: discard mailer selected\0A\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"quarantine\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"{quarantine}\00", align 1
@LogUsrErrs = external global i32, align 4
@rscheck.logged = internal global i32 0, align 4
@.str.136 = private unnamed_addr constant [10 x i8] c", arg2=%s\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c", relay=%s\00", align 1
@.str.138 = private unnamed_addr constant [31 x i8] c"ruleset=%s, arg1=%s%s, discard\00", align 1
@.str.139 = private unnamed_addr constant [37 x i8] c"ruleset=%s, arg1=%s%s, quarantine=%s\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"ruleset=%s, arg1=%s%s, reject=%s\00", align 1
@MsgBuf = external global [0 x i8], align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"rscap(%s, %s, %s)\0A\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"SM_REQUIRE(pvp != NULL) failed\00", align 1
@.str.143 = private unnamed_addr constant [29 x i8] c"rscap: cannot prescan input\0A\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"too long\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"non-printable character\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"trailing \5C character\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"8-bit character\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"unbalanced quote\00", align 1
@.str.149 = private unnamed_addr constant [52 x i8] c"501 5.1.3 Syntax error in mailbox address \22%s\22 (%s)\00", align 1
@.str.150 = private unnamed_addr constant [52 x i8] c"501 5.1.7 Syntax error in mailbox address \22%s\22 (%s)\00", align 1
@.str.151 = private unnamed_addr constant [31 x i8] c"allocaddr(flags=%x, paddr=%s)\0A\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"554 5.3.5 Unknown ruleset %s\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"-----skip subr %s (%d)\0A\00", align 1
@.str.154 = private unnamed_addr constant [45 x i8] c"554 5.3.0 Too many subroutine calls (%d max)\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"map_lookup(%s, %s) => DEFERRED\0A\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"map_lookup(%s, \00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c", %%%d=%s\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c") => \00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"NOT FOUND\00", align 1
@.str.161 = private unnamed_addr constant [39 x i8] c"map_lookup(%s, %s) tempfail: errno=%d\0A\00", align 1
@.str.162 = private unnamed_addr constant [33 x i8] c"%.80s map: lookup (%s): deferred\00", align 1
@map_lookup.rwbuf = internal global i8* null, align 8
@map_lookup.rwbuflen = internal global i64 0, align 8
@.str.163 = private unnamed_addr constant [37 x i8] c"map_lookup tempfail: returning \22%s\22\0A\00", align 1
@buildaddr.ubuf = internal global [258 x i8] zeroinitializer, align 16
@.str.164 = private unnamed_addr constant [25 x i8] c"buildaddr, flags=%x, tv=\00", align 1
@DefaultNotify = external global i32, align 4
@.str.165 = private unnamed_addr constant [49 x i8] c"554 5.3.5 buildaddr: no mailer in parsed address\00", align 1
@.str.166 = private unnamed_addr constant [29 x i8] c"554 5.3.5 buildaddr: no user\00", align 1
@ErrorCodes = internal global [9 x %struct.errcodes] [%struct.errcodes { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0), i32 64 }, %struct.errcodes { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i32 67 }, %struct.errcodes { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i32 68 }, %struct.errcodes { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0), i32 69 }, %struct.errcodes { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 70 }, %struct.errcodes { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.178, i32 0, i32 0), i32 75 }, %struct.errcodes { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i32 76 }, %struct.errcodes { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i32 78 }, %struct.errcodes { i8* null, i32 69 }], align 16
@.str.167 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"553 5.3.0 %s\00", align 1
@Mailer = external global [26 x %struct.mailer*], align 16
@.str.169 = private unnamed_addr constant [39 x i8] c"554 5.3.5 buildaddr: unknown mailer %s\00", align 1
@.str.170 = private unnamed_addr constant [29 x i8] c"554 5.3.5 buildaddr: no host\00", align 1
@FileMailer = external global %struct.mailer*, align 8
@.str.171 = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@InclMailer = external global %struct.mailer*, align 8
@.str.172 = private unnamed_addr constant [14 x i8] c"buildaddr => \00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"nouser\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"nohost\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"unavailable\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"tempfail\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"QGOODUID\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"QPRIMARY\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"QNOTREMOTE\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"QSELFREF\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"QBOGUSSHELL\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"QUNSAFEADDR\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"QPINGONSUCCESS\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"QPINGONFAILURE\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"QPINGONDELAY\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"QHASNOTIFY\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"QRELAYED\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"QEXPANDED\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"QDELIVERED\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"QDELAYED\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"QTHISPASS\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"QALIAS\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"QBYTRACE\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"QBYNDELAY\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"QBYNRELAY\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"QINTBCC\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"QDYNMAILER\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"QRCPTOK\00", align 1

; Function Attrs: nounwind uwtable
define %struct.address* @parseaddr(i8* %addr, %struct.address* %a, i32 %flags, i32 %delim, i8** %delimptr, %struct.envelope* %e, i32 %isrcpt) #0 {
entry:
  %retval = alloca %struct.address*, align 8
  %addr.addr = alloca i8*, align 8
  %a.addr = alloca %struct.address*, align 8
  %flags.addr = alloca i32, align 4
  %delim.addr = alloca i32, align 4
  %delimptr.addr = alloca i8**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %isrcpt.addr = alloca i32, align 4
  %pvp = alloca i8**, align 8
  %delimptrbuf = alloca i8*, align 8
  %qup = alloca i32, align 4
  %pvpbuf = alloca [1256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %savec = alloca i8, align 1
  %r = alloca i32, align 4
  %msg = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !5
  store i8** %delimptr, i8*** %delimptr.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %isrcpt, i32* %isrcpt.addr, align 4, !tbaa !5
  %0 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %delimptrbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %qup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %3) #1
  %4 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 3
  store i8* %4, i8** %e_to, align 8, !tbaa !7
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv = zext i8 %6 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8** %9, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8** %delimptrbuf, i8*** %delimptr.addr, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %10 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %11 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %12 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %call = call i8** @prescan(i8* %10, i32 %11, i8* %arraydecay, i32 1256, i8** %12, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ExtTokenTab, i32 0, i32 0), i32 0)
  store i8** %call, i8*** %pvp, align 8, !tbaa !1
  %13 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp6 = icmp eq i8** %13, null
  br i1 %cmp6, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end.5
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp sge i32 %conv9, 1
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %if.then.8
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %if.then.8
  store %struct.address* null, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.5
  %16 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %17 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %17, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %18 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %18, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %19, %cond.false ]
  %20 = load i32, i32* %isrcpt.addr, align 4, !tbaa !5
  %call19 = call i32 @invalidaddr(i8* %16, i8* %cond, i32 %20)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %cond.end
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv22 = zext i8 %21 to i32
  %cmp23 = icmp sge i32 %conv22, 1
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.28

land.lhs.true.25:                                 ; preds = %if.then.21
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.25
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.25, %if.then.21
  store %struct.address* null, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %cond.end
  %23 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and = and i32 %23, 32
  %cmp30 = icmp ne i32 %and, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.48

land.lhs.true.32:                                 ; preds = %if.end.29
  %24 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %cmp33 = icmp ne i8* %24, null
  br i1 %cmp33, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %land.lhs.true.32
  call void @llvm.lifetime.start(i64 1, i8* %savec) #1
  %25 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %25, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !15
  store i8 %27, i8* %savec, align 1, !tbaa !15
  %28 = load i8, i8* %savec, align 1, !tbaa !15
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  %29 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %29, align 8, !tbaa !1
  store i8 0, i8* %30, align 1, !tbaa !15
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.35
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 52
  %32 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %33 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call41 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %32, i8* %33)
  store i8* %call41, i8** %addr.addr, align 8, !tbaa !1
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to42 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 3
  store i8* %call41, i8** %e_to42, align 8, !tbaa !7
  %35 = load i8, i8* %savec, align 1, !tbaa !15
  %conv43 = sext i8 %35 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.40
  %36 = load i8, i8* %savec, align 1, !tbaa !15
  %37 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %37, align 8, !tbaa !1
  store i8 %36, i8* %38, align 1, !tbaa !15
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.40
  call void @llvm.lifetime.end(i64 1, i8* %savec) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true.32, %if.end.29
  store i32 0, i32* %qup, align 4, !tbaa !5
  %39 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call49 = call i32 @rewrite(i8** %39, i32 3, i32 0, %struct.envelope* %40, i32 1000)
  %cmp50 = icmp eq i32 %call49, 75
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.48
  store i32 1, i32* %qup, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.48
  %41 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call54 = call i32 @rewrite(i8** %41, i32 0, i32 0, %struct.envelope* %42, i32 1000)
  %cmp55 = icmp eq i32 %call54, 75
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  store i32 1, i32* %qup, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.53
  %43 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %44 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %45 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call59 = call %struct.address* @buildaddr(i8** %43, %struct.address* %44, i32 %45, %struct.envelope* %46)
  store %struct.address* %call59, %struct.address** %a.addr, align 8, !tbaa !1
  %47 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %47, i32 0, i32 1
  %48 = load i8*, i8** %q_user, align 8, !tbaa !17
  %49 = load i32, i32* %isrcpt.addr, align 4, !tbaa !5
  %call60 = call i32 @hasctrlchar(i8* %48, i32 %49, i32 1)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.58
  %50 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv63 = zext i8 %50 to i32
  %cmp64 = icmp sge i32 %conv63, 1
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.69

land.lhs.true.66:                                 ; preds = %if.then.62
  %51 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool67 = icmp ne i32 %51, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %land.lhs.true.66, %if.then.62
  %52 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %52, i32 0, i32 21
  store i16 2, i16* %q_state, align 2, !tbaa !18
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.58
  %53 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %54 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %55 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %56 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @allocaddr(%struct.address* %53, i32 %54, i8* %55, %struct.envelope* %56)
  %57 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state71 = getelementptr inbounds %struct.address, %struct.address* %57, i32 0, i32 21
  %58 = load i16, i16* %q_state71, align 2, !tbaa !18
  %conv72 = sext i16 %58 to i32
  %cmp73 = icmp eq i32 %conv72, 2
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.70
  %59 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %59, i32 0, i32 0
  %60 = load i8*, i8** %q_paddr, align 8, !tbaa !19
  %61 = load i32, i32* %isrcpt.addr, align 4, !tbaa !5
  %call76 = call i32 @hasctrlchar(i8* %60, i32 %61, i32 0)
  %62 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %62, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.end.70
  %63 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_qgrp = getelementptr inbounds %struct.address, %struct.address* %63, i32 0, i32 23
  %64 = load i32, i32* %q_qgrp, align 4, !tbaa !20
  %cmp78 = icmp eq i32 %64, -3
  br i1 %cmp78, label %land.lhs.true.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.77
  %65 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_qgrp80 = getelementptr inbounds %struct.address, %struct.address* %65, i32 0, i32 23
  %66 = load i32, i32* %q_qgrp80, align 4, !tbaa !20
  %cmp81 = icmp eq i32 %66, -2
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.150

land.lhs.true.83:                                 ; preds = %lor.lhs.false, %if.end.77
  %67 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and84 = and i32 %67, 67
  %cmp85 = icmp ne i32 %and84, 0
  br i1 %cmp85, label %if.end.150, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %land.lhs.true.83
  %68 = load i8, i8* @OpMode, align 1, !tbaa !15
  %conv88 = sext i8 %68 to i32
  %cmp89 = icmp ne i32 %conv88, 105
  br i1 %cmp89, label %if.then.91, label %if.end.150

if.then.91:                                       ; preds = %land.lhs.true.87
  %69 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user92 = getelementptr inbounds %struct.address, %struct.address* %70, i32 0, i32 1
  %71 = load i8*, i8** %q_user92, align 8, !tbaa !17
  %72 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %arraydecay93 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call94 = call i32 @rscap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* %71, i8* null, %struct.envelope* %72, i8*** %pvp, i8* %arraydecay93, i32 1256)
  store i32 %call94, i32* %r, align 4, !tbaa !5
  %73 = load i32, i32* %r, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %73, 0
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.149

land.lhs.true.97:                                 ; preds = %if.then.91
  %74 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp98 = icmp ne i8** %74, null
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.149

land.lhs.true.100:                                ; preds = %land.lhs.true.97
  %75 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %75, i64 0
  %76 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp101 = icmp ne i8* %76, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.149

land.lhs.true.103:                                ; preds = %land.lhs.true.100
  %77 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8*, i8** %77, i64 0
  %78 = load i8*, i8** %arrayidx104, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx105, align 1, !tbaa !15
  %conv106 = sext i8 %79 to i32
  %and107 = and i32 %conv106, 255
  %cmp108 = icmp eq i32 %and107, 150
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.149

land.lhs.true.110:                                ; preds = %land.lhs.true.103
  %80 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8*, i8** %80, i64 1
  %81 = load i8*, i8** %arrayidx111, align 8, !tbaa !1
  %cmp112 = icmp ne i8* %81, null
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.149

land.lhs.true.114:                                ; preds = %land.lhs.true.110
  %82 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8*, i8** %82, i64 1
  %83 = load i8*, i8** %arrayidx115, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx116, align 1, !tbaa !15
  %conv117 = sext i8 %84 to i32
  %cmp118 = icmp ne i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.149

if.then.120:                                      ; preds = %land.lhs.true.114
  %85 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8*, i8** %85, i64 1
  %86 = load i8*, i8** %arrayidx121, align 8, !tbaa !1
  %call122 = call i32 @name2qid(i8* %86)
  store i32 %call122, i32* %r, align 4, !tbaa !5
  %87 = load i32, i32* %r, align 4, !tbaa !5
  %cmp123 = icmp eq i32 %87, -1
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.130

land.lhs.true.125:                                ; preds = %if.then.120
  %88 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp126 = icmp sgt i32 %88, 10
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %land.lhs.true.125
  %89 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8*, i8** %89, i64 1
  %90 = load i8*, i8** %arrayidx129, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %90)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %land.lhs.true.125, %if.then.120
  %91 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv131 = zext i8 %91 to i32
  %cmp132 = icmp sge i32 %conv131, 4
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.141

land.lhs.true.134:                                ; preds = %if.end.130
  %92 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool135 = icmp ne i32 %92, 0
  br i1 %tobool135, label %if.end.141, label %land.lhs.true.136

land.lhs.true.136:                                ; preds = %land.lhs.true.134
  %93 = load i32, i32* %r, align 4, !tbaa !5
  %cmp137 = icmp ne i32 %93, -1
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %land.lhs.true.136
  %94 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i8*, i8** %94, i64 1
  %95 = load i8*, i8** %arrayidx140, align 8, !tbaa !1
  %96 = load i32, i32* %r, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %95, i32 %96)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %land.lhs.true.136, %land.lhs.true.134, %if.end.130
  %97 = load i32, i32* %r, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %97, -1
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %if.end.141
  br label %cond.end.146

cond.false.145:                                   ; preds = %if.end.141
  %98 = load i32, i32* %r, align 4, !tbaa !5
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.144
  %cond147 = phi i32 [ -2, %cond.true.144 ], [ %98, %cond.false.145 ]
  %99 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_qgrp148 = getelementptr inbounds %struct.address, %struct.address* %99, i32 0, i32 23
  store i32 %cond147, i32* %q_qgrp148, align 4, !tbaa !20
  br label %if.end.149

if.end.149:                                       ; preds = %cond.end.146, %land.lhs.true.114, %land.lhs.true.110, %land.lhs.true.103, %land.lhs.true.100, %land.lhs.true.97, %if.then.91
  %100 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.87, %land.lhs.true.83, %lor.lhs.false
  %101 = load i32, i32* %qup, align 4, !tbaa !5
  %tobool151 = icmp ne i32 %101, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.182

land.lhs.true.152:                                ; preds = %if.end.150
  %102 = load i8, i8* @OpMode, align 1, !tbaa !15
  %conv153 = sext i8 %102 to i32
  %cmp154 = icmp ne i32 %conv153, 105
  br i1 %cmp154, label %if.then.156, label %if.end.182

if.then.156:                                      ; preds = %land.lhs.true.152
  %103 = bitcast i8** %msg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i8** %msg, align 8, !tbaa !1
  %104 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %104, i32 0, i32 16
  %105 = load i16, i16* %e_sendmode, align 2, !tbaa !21
  %conv157 = sext i16 %105 to i32
  %cmp158 = icmp eq i32 %conv157, 100
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.156
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8** %msg, align 8, !tbaa !1
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.then.156
  %106 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv162 = zext i8 %106 to i32
  %cmp163 = icmp sge i32 %conv162, 1
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.168

land.lhs.true.165:                                ; preds = %if.end.161
  %107 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool166 = icmp ne i32 %107, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %land.lhs.true.165
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %land.lhs.true.165, %if.end.161
  %108 = load i8*, i8** %msg, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %108)
  %109 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %109, i32 0, i32 34
  %110 = load i8*, i8** %e_message, align 8, !tbaa !22
  %cmp169 = icmp eq i8* %110, null
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.180

land.lhs.true.171:                                ; preds = %if.end.168
  %111 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode172 = getelementptr inbounds %struct.envelope, %struct.envelope* %111, i32 0, i32 16
  %112 = load i16, i16* %e_sendmode172, align 2, !tbaa !21
  %conv173 = sext i16 %112 to i32
  %cmp174 = icmp ne i32 %conv173, 100
  br i1 %cmp174, label %if.then.176, label %if.end.180

if.then.176:                                      ; preds = %land.lhs.true.171
  %113 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool177 = getelementptr inbounds %struct.envelope, %struct.envelope* %113, i32 0, i32 52
  %114 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool177, align 8, !tbaa !16
  %115 = load i8*, i8** %msg, align 8, !tbaa !1
  %call178 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %114, i8* %115)
  %116 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message179 = getelementptr inbounds %struct.envelope, %struct.envelope* %116, i32 0, i32 34
  store i8* %call178, i8** %e_message179, align 8, !tbaa !22
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.176, %land.lhs.true.171, %if.end.168
  %117 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state181 = getelementptr inbounds %struct.address, %struct.address* %117, i32 0, i32 21
  store i16 3, i16* %q_state181, align 2, !tbaa !18
  %118 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %118, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %q_status, align 8, !tbaa !23
  %119 = bitcast i8** %msg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.180, %land.lhs.true.152, %if.end.150
  %120 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 20), align 1, !tbaa !15
  %conv183 = zext i8 %120 to i32
  %cmp184 = icmp sge i32 %conv183, 1
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.190

land.lhs.true.186:                                ; preds = %if.end.182
  %121 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool187 = icmp ne i32 %121, 0
  br i1 %tobool187, label %if.end.190, label %if.then.188

if.then.188:                                      ; preds = %land.lhs.true.186
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  %call189 = call %struct.sm_file* @sm_debug_file()
  %122 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call189, %struct.address* %122, i32 0)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %land.lhs.true.186, %if.end.182
  %123 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %123, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.190, %if.then.75, %if.end.28, %if.end.15
  %124 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %124) #1
  %125 = bitcast i32* %qup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i8** %delimptrbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = load %struct.address*, %struct.address** %retval
  ret %struct.address* %128
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sm_dprintf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8** @prescan(i8* %addr, i32 %delim, i8* %pvpbuf, i32 %pvpbsize, i8** %delimptr, i8* %toktab, i32 %ignore) #0 {
entry:
  %retval = alloca i8**, align 8
  %addr.addr = alloca i8*, align 8
  %delim.addr = alloca i32, align 4
  %pvpbuf.addr = alloca i8*, align 8
  %pvpbsize.addr = alloca i32, align 4
  %delimptr.addr = alloca i8**, align 8
  %toktab.addr = alloca i8*, align 8
  %ignore.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i32, align 4
  %avp = alloca i8**, align 8
  %bslashmode = alloca i32, align 4
  %route_syntax = alloca i32, align 4
  %cmntcnt = alloca i32, align 4
  %anglecnt = alloca i32, align 4
  %tok = alloca i8*, align 8
  %state = alloca i32, align 4
  %newstate = alloca i32, align 4
  %saveto = alloca i8*, align 8
  %obuf = alloca [50 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %ptr = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !5
  store i8* %pvpbuf, i8** %pvpbuf.addr, align 8, !tbaa !1
  store i32 %pvpbsize, i32* %pvpbsize.addr, align 4, !tbaa !5
  store i8** %delimptr, i8*** %delimptr.addr, align 8, !tbaa !1
  store i8* %toktab, i8** %toktab.addr, align 8, !tbaa !1
  store i32 %ignore, i32* %ignore.addr, align 4, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %bslashmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %route_syntax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %cmntcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %anglecnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %tok to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %newstate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %saveto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 3
  %13 = load i8*, i8** %e_to, align 8, !tbaa !7
  store i8* %13, i8** %saveto, align 8, !tbaa !1
  %14 = load i32, i32* @prescan.firsttime, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.49

if.then:                                          ; preds = %entry
  %15 = bitcast [50 x i8]* %obuf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %15) #1
  store i32 0, i32* @prescan.firsttime, align 4, !tbaa !5
  %16 = load i8*, i8** @OperatorChars, align 8, !tbaa !1
  %cmp = icmp eq i8* %16, null
  br i1 %cmp, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.then
  %17 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %17, 7
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  %18 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call = call i8* @macvalue(i32 111, %struct.envelope* %18)
  store i8* %call, i8** @OperatorChars, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then.1
  %19 = load i8*, i8** @OperatorChars, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %19, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** @OperatorChars, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then
  %20 = load i8*, i8** @OperatorChars, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %obuf, i32 0, i32 0
  %21 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  call void @expand(i8* %20, i8* %arraydecay, i64 41, %struct.envelope* %21)
  %arraydecay8 = getelementptr inbounds [50 x i8], [50 x i8]* %obuf, i32 0, i32 0
  %call9 = call i64 @sm_strlcat(i8* %arraydecay8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 50)
  %arraydecay10 = getelementptr inbounds [50 x i8], [50 x i8]* %obuf, i32 0, i32 0
  store i8* %arraydecay10, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !15
  %conv = sext i8 %23 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !15
  %conv13 = sext i8 %25 to i32
  %and = and i32 %conv13, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @IntTokenTab, i32 0, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv14 = zext i8 %26 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %for.body
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %conv18 = sext i8 %28 to i32
  %and19 = and i32 %conv18, 255
  %idxprom20 = sext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @IntTokenTab, i32 0, i64 %idxprom20
  store i8 0, i8* %arrayidx21, align 1, !tbaa !15
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %for.body
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !15
  %conv23 = sext i8 %30 to i32
  %and24 = and i32 %conv23, 255
  %idxprom25 = sext i32 %and24 to i64
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* @ExtTokenTab, i32 0, i64 %idxprom25
  %31 = load i8, i8* %arrayidx26, align 1, !tbaa !15
  %conv27 = zext i8 %31 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.22
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !15
  %conv31 = sext i8 %33 to i32
  %and32 = and i32 %conv31, 255
  %idxprom33 = sext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* @ExtTokenTab, i32 0, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1, !tbaa !15
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.22
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !15
  %conv36 = sext i8 %35 to i32
  %and37 = and i32 %conv36, 255
  %idxprom38 = sext i32 %and37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @TokTypeNoC, i32 0, i64 %idxprom38
  %36 = load i8, i8* %arrayidx39, align 1, !tbaa !15
  %conv40 = zext i8 %36 to i32
  %cmp41 = icmp eq i32 %conv40, 1
  br i1 %cmp41, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.35
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !15
  %conv44 = sext i8 %38 to i32
  %and45 = and i32 %conv44, 255
  %idxprom46 = sext i32 %and45 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @TokTypeNoC, i32 0, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1, !tbaa !15
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = bitcast [50 x i8]* %obuf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %40) #1
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %entry
  %41 = load i8*, i8** %toktab.addr, align 8, !tbaa !1
  %cmp50 = icmp eq i8* %41, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ExtTokenTab, i32 0, i32 0), i8** %toktab.addr, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.49
  %call54 = call i32* @__errno_location() #9
  store i32 0, i32* %call54, align 4, !tbaa !5
  %42 = load i8*, i8** %pvpbuf.addr, align 8, !tbaa !1
  store i8* %42, i8** %q, align 8, !tbaa !1
  store i32 0, i32* %bslashmode, align 4, !tbaa !5
  store i32 0, i32* %route_syntax, align 4, !tbaa !5
  store i32 0, i32* %cmntcnt, align 4, !tbaa !5
  store i32 0, i32* %anglecnt, align 4, !tbaa !5
  store i8** getelementptr inbounds ([1001 x i8*], [1001 x i8*]* @prescan.av, i32 0, i32 0), i8*** %avp, align 8, !tbaa !1
  store i32 1, i32* %state, align 4, !tbaa !5
  store i32 -1, i32* %c, align 4, !tbaa !5
  %43 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8* %43, i8** %p, align 8, !tbaa !1
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to55 = getelementptr inbounds %struct.envelope, %struct.envelope* %45, i32 0, i32 3
  store i8* %44, i8** %e_to55, align 8, !tbaa !7
  %46 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 22), align 1, !tbaa !15
  %conv56 = zext i8 %46 to i32
  %cmp57 = icmp sge i32 %conv56, 11
  br i1 %cmp57, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end.53
  %47 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool59 = icmp ne i32 %47, 0
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %call61 = call %struct.sm_file* @sm_debug_file()
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call61, i8* %48)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %land.lhs.true, %if.end.53
  br label %do.body

do.body:                                          ; preds = %land.end.378, %if.end.62
  %49 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %49, i8** %tok, align 8, !tbaa !1
  br label %for.cond.63

for.cond.63:                                      ; preds = %if.end.340, %if.then.285, %if.end.183, %if.then.170, %do.body
  %50 = load i32, i32* %c, align 4, !tbaa !5
  %cmp64 = icmp ne i32 %50, -1
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.108

land.lhs.true.66:                                 ; preds = %for.cond.63
  %51 = load i32, i32* %bslashmode, align 4, !tbaa !5
  %tobool67 = icmp ne i32 %51, 0
  br i1 %tobool67, label %if.end.108, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  %53 = load i32, i32* %pvpbsize.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %53, 5
  %idxprom69 = sext i32 %sub to i64
  %54 = load i8*, i8** %pvpbuf.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %54, i64 %idxprom69
  %cmp71 = icmp uge i8* %52, %arrayidx70
  br i1 %cmp71, label %if.then.73, label %if.end.90

if.then.73:                                       ; preds = %if.then.68
  br label %addrtoolong

addrtoolong:                                      ; preds = %if.then.350, %if.then.182, %if.then.73
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  %55 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call74 = call i64 @strlen(i8* %55) #10
  %cmp75 = icmp ugt i64 %call74, 256
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %addrtoolong
  %56 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %56, i64 256
  store i8 0, i8* %arrayidx78, align 1, !tbaa !15
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %addrtoolong
  br label %returnnull

returnnull:                                       ; preds = %if.then.367, %if.then.363, %if.end.79
  %57 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %cmp80 = icmp ne i8** %57, null
  br i1 %cmp80, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %returnnull
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %cmp83 = icmp ugt i8* %58, %59
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.82
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr86, i8** %p, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.82
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  store i8* %61, i8** %62, align 8, !tbaa !1
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %returnnull
  %63 = load i8*, i8** %saveto, align 8, !tbaa !1
  %64 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to89 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 3
  store i8* %63, i8** %e_to89, align 8, !tbaa !7
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.then.68
  %65 = load i32, i32* %c, align 4, !tbaa !5
  %conv91 = trunc i32 %65 to i8
  %conv92 = sext i8 %conv91 to i32
  %cmp93 = icmp eq i32 %conv92, -1
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.105

land.lhs.true.95:                                 ; preds = %if.end.90
  %66 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 82), align 1, !tbaa !15
  %conv96 = zext i8 %66 to i32
  %cmp97 = icmp sge i32 %conv96, 101
  br i1 %cmp97, label %land.lhs.true.99, label %land.lhs.true.101

land.lhs.true.99:                                 ; preds = %land.lhs.true.95
  %67 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool100 = icmp ne i32 %67, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.105

land.lhs.true.101:                                ; preds = %land.lhs.true.99, %land.lhs.true.95
  %68 = load i32, i32* @EightBitAddrOK, align 4, !tbaa !5
  %tobool102 = icmp ne i32 %68, 0
  br i1 %tobool102, label %if.end.105, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true.101
  %69 = load i32, i32* %c, align 4, !tbaa !5
  %and104 = and i32 %69, 127
  store i32 %and104, i32* %c, align 4, !tbaa !5
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %land.lhs.true.101, %land.lhs.true.99, %if.end.90
  %70 = load i32, i32* %c, align 4, !tbaa !5
  %conv106 = trunc i32 %70 to i8
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr107, i8** %q, align 8, !tbaa !1
  store i8 %conv106, i8* %71, align 1, !tbaa !15
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.105, %land.lhs.true.66, %for.cond.63
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr109, i8** %p, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !15
  %conv110 = sext i8 %73 to i32
  %and111 = and i32 %conv110, 255
  store i32 %and111, i32* %c, align 4, !tbaa !5
  %74 = load i32, i32* %c, align 4, !tbaa !5
  %cmp112 = icmp eq i32 %74, 0
  br i1 %cmp112, label %if.then.114, label %if.else.134

if.then.114:                                      ; preds = %if.end.108
  %75 = load i32, i32* %ignore.addr, align 4, !tbaa !5
  %tobool115 = icmp ne i32 %75, 0
  br i1 %tobool115, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %if.then.114
  br label %for.end.341

if.else:                                          ; preds = %if.then.114
  %76 = load i32, i32* %state, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %76, 2
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.else
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  store i32 34, i32* %c, align 4, !tbaa !5
  br label %if.end.131

if.else.120:                                      ; preds = %if.else
  %77 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp121 = icmp sgt i32 %77, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.else.120
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0))
  store i32 41, i32* %c, align 4, !tbaa !5
  br label %if.end.130

if.else.124:                                      ; preds = %if.else.120
  %78 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %cmp125 = icmp sgt i32 %78, 0
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.else.124
  store i32 62, i32* %c, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.129

if.else.128:                                      ; preds = %if.else.124
  br label %for.end.341

if.end.129:                                       ; preds = %if.then.127
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.123
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.119
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr133, i8** %p, align 8, !tbaa !1
  br label %if.end.158

if.else.134:                                      ; preds = %if.end.108
  %80 = load i32, i32* %c, align 4, !tbaa !5
  %81 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp135 = icmp eq i32 %80, %81
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.157

land.lhs.true.137:                                ; preds = %if.else.134
  %82 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp138 = icmp sle i32 %82, 0
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.157

land.lhs.true.140:                                ; preds = %land.lhs.true.137
  %83 = load i32, i32* %state, align 4, !tbaa !5
  %cmp141 = icmp ne i32 %83, 2
  br i1 %cmp141, label %if.then.143, label %if.end.157

if.then.143:                                      ; preds = %land.lhs.true.140
  %84 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %cmp144 = icmp sle i32 %84, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.then.143
  br label %for.end.341

if.end.147:                                       ; preds = %if.then.143
  %85 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp148 = icmp eq i32 %85, 44
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.156

land.lhs.true.150:                                ; preds = %if.end.147
  %86 = load i32, i32* %route_syntax, align 4, !tbaa !5
  %tobool151 = icmp ne i32 %86, 0
  br i1 %tobool151, label %if.end.156, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %land.lhs.true.150
  %87 = load i32, i32* %ignore.addr, align 4, !tbaa !5
  %tobool153 = icmp ne i32 %87, 0
  br i1 %tobool153, label %if.end.156, label %if.then.154

if.then.154:                                      ; preds = %land.lhs.true.152
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  store i32 62, i32* %c, align 4, !tbaa !5
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr155 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %incdec.ptr155, i8** %p, align 8, !tbaa !1
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %land.lhs.true.152, %land.lhs.true.150, %if.end.147
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %land.lhs.true.140, %land.lhs.true.137, %if.else.134
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.132
  %89 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 22), align 1, !tbaa !15
  %conv159 = zext i8 %89 to i32
  %cmp160 = icmp sge i32 %conv159, 101
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.165

land.lhs.true.162:                                ; preds = %if.end.158
  %90 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool163 = icmp ne i32 %90, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %land.lhs.true.162
  %91 = load i32, i32* %c, align 4, !tbaa !5
  %92 = load i32, i32* %state, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 %91, i32 %92)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %land.lhs.true.162, %if.end.158
  %93 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %93, align 1, !tbaa !15
  %94 = load i32, i32* %bslashmode, align 4, !tbaa !5
  %tobool166 = icmp ne i32 %94, 0
  br i1 %tobool166, label %if.then.167, label %if.end.187

if.then.167:                                      ; preds = %if.end.165
  store i32 0, i32* %bslashmode, align 4, !tbaa !5
  %95 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp168 = icmp sgt i32 %95, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.then.167
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %for.cond.63

if.else.171:                                      ; preds = %if.then.167
  %96 = load i32, i32* %c, align 4, !tbaa !5
  %cmp172 = icmp ne i32 %96, 33
  br i1 %cmp172, label %if.then.176, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.171
  %97 = load i32, i32* %state, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %97, 2
  br i1 %cmp174, label %if.then.176, label %if.end.185

if.then.176:                                      ; preds = %lor.lhs.false, %if.else.171
  %98 = load i8*, i8** %q, align 8, !tbaa !1
  %99 = load i32, i32* %pvpbsize.addr, align 4, !tbaa !5
  %sub177 = sub nsw i32 %99, 5
  %idxprom178 = sext i32 %sub177 to i64
  %100 = load i8*, i8** %pvpbuf.addr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %100, i64 %idxprom178
  %cmp180 = icmp uge i8* %98, %arrayidx179
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.176
  br label %addrtoolong

if.end.183:                                       ; preds = %if.then.176
  %101 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr184, i8** %q, align 8, !tbaa !1
  store i8 92, i8* %101, align 1, !tbaa !15
  br label %for.cond.63

if.end.185:                                       ; preds = %lor.lhs.false
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end.165
  %102 = load i32, i32* %c, align 4, !tbaa !5
  %cmp188 = icmp eq i32 %102, 92
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.end.187
  store i32 1, i32* %bslashmode, align 4, !tbaa !5
  br label %if.end.282

if.else.191:                                      ; preds = %if.end.187
  %103 = load i32, i32* %state, align 4, !tbaa !5
  %cmp192 = icmp eq i32 %103, 2
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %if.else.191
  br label %if.end.281

if.else.195:                                      ; preds = %if.else.191
  %104 = load i32, i32* %c, align 4, !tbaa !5
  %cmp196 = icmp eq i32 %104, 40
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.204

land.lhs.true.198:                                ; preds = %if.else.195
  %105 = load i8*, i8** %toktab.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %105, i64 40
  %106 = load i8, i8* %arrayidx199, align 1, !tbaa !15
  %conv200 = zext i8 %106 to i32
  %cmp201 = icmp eq i32 %conv200, 3
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %land.lhs.true.198
  %107 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %cmntcnt, align 4, !tbaa !5
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.280

if.else.204:                                      ; preds = %land.lhs.true.198, %if.else.195
  %108 = load i32, i32* %c, align 4, !tbaa !5
  %cmp205 = icmp eq i32 %108, 41
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.221

land.lhs.true.207:                                ; preds = %if.else.204
  %109 = load i8*, i8** %toktab.addr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %109, i64 40
  %110 = load i8, i8* %arrayidx208, align 1, !tbaa !15
  %conv209 = zext i8 %110 to i32
  %cmp210 = icmp eq i32 %conv209, 3
  br i1 %cmp210, label %if.then.212, label %if.else.221

if.then.212:                                      ; preds = %land.lhs.true.207
  %111 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp213 = icmp sle i32 %111, 0
  br i1 %cmp213, label %if.then.215, label %if.else.219

if.then.215:                                      ; preds = %if.then.212
  %112 = load i32, i32* %ignore.addr, align 4, !tbaa !5
  %tobool216 = icmp ne i32 %112, 0
  br i1 %tobool216, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %if.then.215
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %if.then.215
  br label %if.end.220

if.else.219:                                      ; preds = %if.then.212
  %113 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %dec = add nsw i32 %113, -1
  store i32 %dec, i32* %cmntcnt, align 4, !tbaa !5
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.219, %if.end.218
  br label %if.end.279

if.else.221:                                      ; preds = %land.lhs.true.207, %if.else.204
  %114 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp222 = icmp sgt i32 %114, 0
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %if.else.221
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.278

if.else.225:                                      ; preds = %if.else.221
  %115 = load i32, i32* %c, align 4, !tbaa !5
  %cmp226 = icmp eq i32 %115, 60
  br i1 %cmp226, label %if.then.228, label %if.else.247

if.then.228:                                      ; preds = %if.else.225
  %116 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %117, i8** %ptr, align 8, !tbaa !1
  %118 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %inc229 = add nsw i32 %118, 1
  store i32 %inc229, i32* %anglecnt, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.228
  %119 = load i8*, i8** %ptr, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !15
  %conv230 = sext i8 %120 to i32
  %and231 = and i32 %conv230, -128
  %cmp232 = icmp eq i32 %and231, 0
  br i1 %cmp232, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %121 = load i8*, i8** %ptr, align 8, !tbaa !1
  %122 = load i8, i8* %121, align 1, !tbaa !15
  %conv234 = sext i8 %122 to i32
  %idxprom235 = sext i32 %conv234 to i64
  %call236 = call i16** @__ctype_b_loc() #9
  %123 = load i16*, i16** %call236, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i16, i16* %123, i64 %idxprom235
  %124 = load i16, i16* %arrayidx237, align 2, !tbaa !24
  %conv238 = zext i16 %124 to i32
  %and239 = and i32 %conv238, 8192
  %tobool240 = icmp ne i32 %and239, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %125 = phi i1 [ false, %while.cond ], [ %tobool240, %land.rhs ]
  br i1 %125, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %126 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr241 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr241, i8** %ptr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %127 = load i8*, i8** %ptr, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !15
  %conv242 = sext i8 %128 to i32
  %cmp243 = icmp eq i32 %conv242, 64
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %while.end
  store i32 1, i32* %route_syntax, align 4, !tbaa !5
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.245, %while.end
  %129 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  br label %if.end.277

if.else.247:                                      ; preds = %if.else.225
  %130 = load i32, i32* %c, align 4, !tbaa !5
  %cmp248 = icmp eq i32 %130, 62
  br i1 %cmp248, label %if.then.250, label %if.else.260

if.then.250:                                      ; preds = %if.else.247
  %131 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %cmp251 = icmp sle i32 %131, 0
  br i1 %cmp251, label %if.then.253, label %if.else.257

if.then.253:                                      ; preds = %if.then.250
  %132 = load i32, i32* %ignore.addr, align 4, !tbaa !5
  %tobool254 = icmp ne i32 %132, 0
  br i1 %tobool254, label %if.end.256, label %if.then.255

if.then.255:                                      ; preds = %if.then.253
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.255, %if.then.253
  br label %if.end.259

if.else.257:                                      ; preds = %if.then.250
  %133 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %dec258 = add nsw i32 %133, -1
  store i32 %dec258, i32* %anglecnt, align 4, !tbaa !5
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.257, %if.end.256
  store i32 0, i32* %route_syntax, align 4, !tbaa !5
  br label %if.end.276

if.else.260:                                      ; preds = %if.else.247
  %134 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp261 = icmp eq i32 %134, 32
  br i1 %cmp261, label %land.lhs.true.263, label %if.end.275

land.lhs.true.263:                                ; preds = %if.else.260
  %135 = load i32, i32* %c, align 4, !tbaa !5
  %and264 = and i32 %135, -128
  %cmp265 = icmp eq i32 %and264, 0
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.275

land.lhs.true.267:                                ; preds = %land.lhs.true.263
  %136 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom268 = sext i32 %136 to i64
  %call269 = call i16** @__ctype_b_loc() #9
  %137 = load i16*, i16** %call269, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds i16, i16* %137, i64 %idxprom268
  %138 = load i16, i16* %arrayidx270, align 2, !tbaa !24
  %conv271 = zext i16 %138 to i32
  %and272 = and i32 %conv271, 8192
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %land.lhs.true.267
  store i32 32, i32* %c, align 4, !tbaa !5
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %land.lhs.true.267, %land.lhs.true.263, %if.else.260
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.259
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.246
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.224
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.end.220
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.203
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.194
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.190
  %139 = load i32, i32* %c, align 4, !tbaa !5
  %cmp283 = icmp eq i32 %139, -1
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.282
  br label %for.cond.63

if.end.286:                                       ; preds = %if.end.282
  %140 = load i32, i32* %c, align 4, !tbaa !5
  %141 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp287 = icmp eq i32 %140, %141
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.296

land.lhs.true.289:                                ; preds = %if.end.286
  %142 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %cmp290 = icmp sle i32 %142, 0
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.296

land.lhs.true.292:                                ; preds = %land.lhs.true.289
  %143 = load i32, i32* %state, align 4, !tbaa !5
  %cmp293 = icmp ne i32 %143, 2
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %land.lhs.true.292
  br label %for.end.341

if.end.296:                                       ; preds = %land.lhs.true.292, %land.lhs.true.289, %if.end.286
  %144 = load i32, i32* %c, align 4, !tbaa !5
  %and297 = and i32 %144, 255
  %idxprom298 = sext i32 %and297 to i64
  %145 = load i8*, i8** %toktab.addr, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds i8, i8* %145, i64 %idxprom298
  %146 = load i8, i8* %arrayidx299, align 1, !tbaa !15
  %idxprom300 = zext i8 %146 to i64
  %147 = load i32, i32* %state, align 4, !tbaa !5
  %idxprom301 = sext i32 %147 to i64
  %arrayidx302 = getelementptr inbounds [6 x [6 x i16]], [6 x [6 x i16]]* @StateTab, i32 0, i64 %idxprom301
  %arrayidx303 = getelementptr inbounds [6 x i16], [6 x i16]* %arrayidx302, i32 0, i64 %idxprom300
  %148 = load i16, i16* %arrayidx303, align 2, !tbaa !24
  %conv304 = sext i16 %148 to i32
  store i32 %conv304, i32* %newstate, align 4, !tbaa !5
  %149 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 22), align 1, !tbaa !15
  %conv305 = zext i8 %149 to i32
  %cmp306 = icmp sge i32 %conv305, 101
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.311

land.lhs.true.308:                                ; preds = %if.end.296
  %150 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool309 = icmp ne i32 %150, 0
  br i1 %tobool309, label %if.end.311, label %if.then.310

if.then.310:                                      ; preds = %land.lhs.true.308
  %151 = load i32, i32* %newstate, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %151)
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.310, %land.lhs.true.308, %if.end.296
  %152 = load i32, i32* %newstate, align 4, !tbaa !5
  %and312 = and i32 %152, 15
  store i32 %and312, i32* %state, align 4, !tbaa !5
  %153 = load i32, i32* %state, align 4, !tbaa !5
  %cmp313 = icmp eq i32 %153, 5
  br i1 %cmp313, label %if.then.315, label %if.end.330

if.then.315:                                      ; preds = %if.end.311
  %154 = load i32, i32* %c, align 4, !tbaa !5
  %and316 = and i32 %154, -128
  %cmp317 = icmp eq i32 %and316, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.else.327

land.lhs.true.319:                                ; preds = %if.then.315
  %155 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom320 = sext i32 %155 to i64
  %call321 = call i16** @__ctype_b_loc() #9
  %156 = load i16*, i16** %call321, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i16, i16* %156, i64 %idxprom320
  %157 = load i16, i16* %arrayidx322, align 2, !tbaa !24
  %conv323 = zext i16 %157 to i32
  %and324 = and i32 %conv323, 16384
  %tobool325 = icmp ne i32 %and324, 0
  br i1 %tobool325, label %if.then.326, label %if.else.327

if.then.326:                                      ; preds = %land.lhs.true.319
  %158 = load i32, i32* %c, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i32 %158)
  br label %if.end.329

if.else.327:                                      ; preds = %land.lhs.true.319, %if.then.315
  %159 = load i32, i32* %c, align 4, !tbaa !5
  %and328 = and i32 %159, 255
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i32 %and328)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.327, %if.then.326
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.311
  %160 = load i32, i32* %newstate, align 4, !tbaa !5
  %and331 = and i32 %160, 16
  %cmp332 = icmp ne i32 %and331, 0
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.330
  store i32 -1, i32* %c, align 4, !tbaa !5
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %if.end.330
  %161 = load i32, i32* %newstate, align 4, !tbaa !5
  %and336 = and i32 %161, 32
  %cmp337 = icmp ne i32 %and336, 0
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.end.335
  br label %for.end.341

if.end.340:                                       ; preds = %if.end.335
  br label %for.cond.63

for.end.341:                                      ; preds = %if.then.339, %if.then.295, %if.then.146, %if.else.128, %if.then.116
  %162 = load i8*, i8** %tok, align 8, !tbaa !1
  %163 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp342 = icmp ne i8* %162, %163
  br i1 %cmp342, label %if.then.344, label %if.end.370

if.then.344:                                      ; preds = %for.end.341
  %164 = load i8*, i8** %q, align 8, !tbaa !1
  %165 = load i32, i32* %pvpbsize.addr, align 4, !tbaa !5
  %sub345 = sub nsw i32 %165, 5
  %idxprom346 = sext i32 %sub345 to i64
  %166 = load i8*, i8** %pvpbuf.addr, align 8, !tbaa !1
  %arrayidx347 = getelementptr inbounds i8, i8* %166, i64 %idxprom346
  %cmp348 = icmp uge i8* %164, %arrayidx347
  br i1 %cmp348, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.then.344
  br label %addrtoolong

if.end.351:                                       ; preds = %if.then.344
  %167 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr352 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr352, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %167, align 1, !tbaa !15
  %168 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 22), align 1, !tbaa !15
  %conv353 = zext i8 %168 to i32
  %cmp354 = icmp sge i32 %conv353, 36
  br i1 %cmp354, label %land.lhs.true.356, label %if.end.360

land.lhs.true.356:                                ; preds = %if.end.351
  %169 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool357 = icmp ne i32 %169, 0
  br i1 %tobool357, label %if.end.360, label %if.then.358

if.then.358:                                      ; preds = %land.lhs.true.356
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %call359 = call %struct.sm_file* @sm_debug_file()
  %170 = load i8*, i8** %tok, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call359, i8* %170)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %land.lhs.true.356, %if.end.351
  %171 = load i8**, i8*** %avp, align 8, !tbaa !1
  %cmp361 = icmp uge i8** %171, getelementptr inbounds ([1001 x i8*], [1001 x i8*]* @prescan.av, i32 0, i64 1000)
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.end.360
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0))
  br label %returnnull

if.end.364:                                       ; preds = %if.end.360
  %172 = load i8*, i8** %q, align 8, !tbaa !1
  %173 = load i8*, i8** %tok, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %172 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %173 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp365 = icmp sgt i64 %sub.ptr.sub, 256
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.end.364
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0))
  br label %returnnull

if.end.368:                                       ; preds = %if.end.364
  %174 = load i8*, i8** %tok, align 8, !tbaa !1
  %175 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr369 = getelementptr inbounds i8*, i8** %175, i32 1
  store i8** %incdec.ptr369, i8*** %avp, align 8, !tbaa !1
  store i8* %174, i8** %175, align 8, !tbaa !1
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.368, %for.end.341
  br label %do.cond

do.cond:                                          ; preds = %if.end.370
  %176 = load i32, i32* %c, align 4, !tbaa !5
  %cmp371 = icmp ne i32 %176, 0
  br i1 %cmp371, label %land.rhs.373, label %land.end.378

land.rhs.373:                                     ; preds = %do.cond
  %177 = load i32, i32* %c, align 4, !tbaa !5
  %178 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp374 = icmp ne i32 %177, %178
  br i1 %cmp374, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.373
  %179 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %cmp376 = icmp sgt i32 %179, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.373
  %180 = phi i1 [ true, %land.rhs.373 ], [ %cmp376, %lor.rhs ]
  br label %land.end.378

land.end.378:                                     ; preds = %lor.end, %do.cond
  %181 = phi i1 [ false, %do.cond ], [ %180, %lor.end ]
  br i1 %181, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.378
  %182 = load i8**, i8*** %avp, align 8, !tbaa !1
  store i8* null, i8** %182, align 8, !tbaa !1
  %183 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %cmp379 = icmp ne i8** %183, null
  br i1 %cmp379, label %if.then.381, label %if.end.387

if.then.381:                                      ; preds = %do.end
  %184 = load i8*, i8** %p, align 8, !tbaa !1
  %185 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %cmp382 = icmp ugt i8* %184, %185
  br i1 %cmp382, label %if.then.384, label %if.end.386

if.then.384:                                      ; preds = %if.then.381
  %186 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr385 = getelementptr inbounds i8, i8* %186, i32 -1
  store i8* %incdec.ptr385, i8** %p, align 8, !tbaa !1
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.384, %if.then.381
  %187 = load i8*, i8** %p, align 8, !tbaa !1
  %188 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  store i8* %187, i8** %188, align 8, !tbaa !1
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %do.end
  %189 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 22), align 1, !tbaa !15
  %conv388 = zext i8 %189 to i32
  %cmp389 = icmp sge i32 %conv388, 12
  br i1 %cmp389, label %land.lhs.true.391, label %if.end.395

land.lhs.true.391:                                ; preds = %if.end.387
  %190 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool392 = icmp ne i32 %190, 0
  br i1 %tobool392, label %if.end.395, label %if.then.393

if.then.393:                                      ; preds = %land.lhs.true.391
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
  %call394 = call %struct.sm_file* @sm_debug_file()
  call void @printav(%struct.sm_file* %call394, i8** getelementptr inbounds ([1001 x i8*], [1001 x i8*]* @prescan.av, i32 0, i32 0))
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.393, %land.lhs.true.391, %if.end.387
  %191 = load i8*, i8** %saveto, align 8, !tbaa !1
  %192 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to396 = getelementptr inbounds %struct.envelope, %struct.envelope* %192, i32 0, i32 3
  store i8* %191, i8** %e_to396, align 8, !tbaa !7
  %193 = load i8*, i8** getelementptr inbounds ([1001 x i8*], [1001 x i8*]* @prescan.av, i32 0, i64 0), align 8, !tbaa !1
  %cmp397 = icmp eq i8* %193, null
  br i1 %cmp397, label %if.then.399, label %if.end.407

if.then.399:                                      ; preds = %if.end.395
  %194 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 22), align 1, !tbaa !15
  %conv400 = zext i8 %194 to i32
  %cmp401 = icmp sge i32 %conv400, 1
  br i1 %cmp401, label %land.lhs.true.403, label %if.end.406

land.lhs.true.403:                                ; preds = %if.then.399
  %195 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool404 = icmp ne i32 %195, 0
  br i1 %tobool404, label %if.end.406, label %if.then.405

if.then.405:                                      ; preds = %land.lhs.true.403
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.405, %land.lhs.true.403, %if.then.399
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.407:                                       ; preds = %if.end.395
  store i8** getelementptr inbounds ([1001 x i8*], [1001 x i8*]* @prescan.av, i32 0, i32 0), i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.407, %if.end.406, %if.end.88
  %196 = bitcast i8** %saveto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %newstate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %state to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i8** %tok to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i32* %anglecnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %cmntcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %route_syntax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %bslashmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = load i8**, i8*** %retval
  ret i8** %208
}

; Function Attrs: nounwind uwtable
define i32 @invalidaddr(i8* %addr, i8* %delimptr, i32 %isrcpt) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %delimptr.addr = alloca i8*, align 8
  %isrcpt.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %savedelim = alloca i8, align 1
  %b = alloca i8*, align 8
  %len = alloca i32, align 4
  %saved = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  store i8* %delimptr, i8** %delimptr.addr, align 8, !tbaa !1
  store i32 %isrcpt, i32* %isrcpt.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %savedelim) #1
  store i8 0, i8* %savedelim, align 1, !tbaa !15
  %1 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8* %2, i8** %b, align 8, !tbaa !1
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %len, align 4, !tbaa !5
  %4 = load i8*, i8** %delimptr.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %delimptr.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !15
  store i8 %6, i8* %savedelim, align 1, !tbaa !15
  %7 = load i8, i8* %savedelim, align 1, !tbaa !15
  %conv = sext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i8*, i8** %delimptr.addr, align 8, !tbaa !1
  store i8 0, i8* %8, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !15
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* @EightBitAddrOK, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %12 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %conv8 = sext i8 %13 to i32
  %and = and i32 %conv8, 224
  %cmp9 = icmp eq i32 %and, 128
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %14 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %15 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %15, 75
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %do.body
  store i32 64, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %result, align 4, !tbaa !5
  %16 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8 63, i8* %16, align 1, !tbaa !15
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %land.lhs.true, %for.body
  %17 = load i32, i32* %len, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %len, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %inc, 255
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  call void @llvm.lifetime.start(i64 1, i8* %saved) #1
  %18 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !15
  store i8 %19, i8* %saved, align 1, !tbaa !15
  %20 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8 0, i8* %20, align 1, !tbaa !15
  %21 = load i8*, i8** %b, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* %21, i32 255)
  %22 = load i8, i8* %saved, align 1, !tbaa !15
  %23 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8 %22, i8* %23, align 1, !tbaa !15
  store i32 1, i32* %result, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  call void @llvm.lifetime.end(i64 1, i8* %saved) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup [
    i32 7, label %delim
  ]

if.end.22:                                        ; preds = %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %24 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %addr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %result, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %for.end
  %26 = load i32, i32* %isrcpt.addr, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.24
  %27 = load i8*, i8** %b, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i8* %27)
  br label %if.end.27

if.else:                                          ; preds = %if.then.24
  %28 = load i8*, i8** %b, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i8* %28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.end
  br label %delim

delim:                                            ; preds = %if.end.28, %if.then.21
  %29 = load i8*, i8** %delimptr.addr, align 8, !tbaa !1
  %cmp29 = icmp ne i8* %29, null
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %delim
  %30 = load i8, i8* %savedelim, align 1, !tbaa !15
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.31
  %31 = load i8, i8* %savedelim, align 1, !tbaa !15
  %32 = load i8*, i8** %delimptr.addr, align 8, !tbaa !1
  store i8 %31, i8* %32, align 1, !tbaa !15
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.31, %delim
  %33 = load i32, i32* %result, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.21
  %34 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  call void @llvm.lifetime.end(i64 1, i8* %savedelim) #1
  %36 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @rewrite(i8** %pvp, i32 %ruleset, i32 %reclevel, %struct.envelope* %e, i32 %maxatom) #0 {
entry:
  %retval = alloca i32, align 4
  %pvp.addr = alloca i8**, align 8
  %ruleset.addr = alloca i32, align 4
  %reclevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %maxatom.addr = alloca i32, align 4
  %ap = alloca i8*, align 8
  %rp = alloca i8*, align 8
  %rulename = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %avp = alloca i8**, align 8
  %rvp = alloca i8**, align 8
  %mlp = alloca %struct.match*, align 8
  %rwr = alloca %struct.rewrite*, align 8
  %ruleno = alloca i32, align 4
  %rstat = alloca i32, align 4
  %loopcount = alloca i32, align 4
  %mlist = alloca [9 x %struct.match], align 16
  %npvp = alloca [1001 x i8*], align 16
  %buf = alloca [2048 x i8], align 16
  %name = alloca [6 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %status = alloca i32, align 4
  %m = alloca %struct.match*, align 8
  %pp = alloca i8**, align 8
  %mval = alloca i8*, align 8
  %xpvp = alloca i8**, align 8
  %trsize = alloca i64, align 8
  %pvpbuf = alloca [1256 x i8], align 16
  %hbrvp = alloca i8**, align 8
  %xpvp481 = alloca i8**, align 8
  %trsize482 = alloca i64, align 8
  %replac = alloca i8*, align 8
  %endtoken = alloca i32, align 4
  %external = alloca i32, align 4
  %map = alloca %struct.symtab*, align 8
  %mapname = alloca i8*, align 8
  %key_rvp = alloca i8**, align 8
  %arg_rvp = alloca i8**, align 8
  %default_rvp = alloca i8**, align 8
  %cbuf = alloca [1024 x i8], align 16
  %pvpb1 = alloca [1001 x i8*], align 16
  %argvect = alloca [10 x i8*], align 16
  %pvpbuf483 = alloca [1256 x i8], align 16
  %nullpvp = alloca [1 x i8*], align 8
  %nodetype = alloca i32, align 4
  store i8** %pvp, i8*** %pvp.addr, align 8, !tbaa !1
  store i32 %ruleset, i32* %ruleset.addr, align 4, !tbaa !5
  store i32 %reclevel, i32* %reclevel.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %maxatom, i32* %maxatom.addr, align 4, !tbaa !5
  %0 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %rulename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8*** %rvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.match** %mlp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.rewrite** %rwr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %ruleno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %rstat, align 4, !tbaa !5
  %10 = bitcast i32* %loopcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [9 x %struct.match]* %mlist to i8*
  call void @llvm.lifetime.start(i64 216, i8* %11) #1
  %12 = bitcast [1001 x i8*]* %npvp to i8*
  call void @llvm.lifetime.start(i64 8008, i8* %12) #1
  %13 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %13) #1
  %14 = bitcast [6 x i8]* %name to i8*
  call void @llvm.lifetime.start(i64 6, i8* %14) #1
  %15 = load i32, i32* %ruleset.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load i32, i32* %ruleset.addr, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %16, 200
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %17 = load i32, i32* %ruleset.addr, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0), i32 %17)
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.746

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, i32* %ruleset.addr, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [200 x i8*], [200 x i8*]* @RuleSetNames, i32 0, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %19, i8** %rulename, align 8, !tbaa !1
  %20 = load i8*, i8** %rulename, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %20, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %name, i32 0, i32 0
  %21 = load i32, i32* %ruleset.addr, align 4, !tbaa !5
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 %21)
  %arraydecay4 = getelementptr inbounds [6 x i8], [6 x i8]* %name, i32 0, i32 0
  store i8* %arraydecay4, i8** %rulename, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %22 = load i8, i8* @OpMode, align 1, !tbaa !15
  %conv = sext i8 %22 to i32
  %cmp6 = icmp eq i32 %conv, 116
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %prefix, align 8, !tbaa !1
  br label %if.end.9

if.else:                                          ; preds = %if.end.5
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i8** %prefix, align 8, !tbaa !1
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %23 = load i8, i8* @OpMode, align 1, !tbaa !15
  %conv10 = sext i8 %23 to i32
  %cmp11 = icmp eq i32 %conv10, 116
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.9
  %24 = load i8*, i8** %prefix, align 8, !tbaa !1
  %25 = load i8*, i8** %rulename, align 8, !tbaa !1
  %call14 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* %24, i8* %25)
  %26 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i8** %26)
  br label %if.end.22

if.else.15:                                       ; preds = %if.end.9
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv16 = zext i8 %27 to i32
  %cmp17 = icmp sge i32 %conv16, 1
  br i1 %cmp17, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.else.15
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  %29 = load i8*, i8** %prefix, align 8, !tbaa !1
  %30 = load i8*, i8** %rulename, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* %29, i8* %30)
  %call20 = call %struct.sm_file* @sm_debug_file()
  %31 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call20, i8** %31)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %if.else.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.13
  %32 = load i32, i32* %reclevel.addr, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %reclevel.addr, align 4, !tbaa !5
  %33 = load i32, i32* @MaxRuleRecursion, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %32, %33
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %34 = load i32, i32* @MaxRuleRecursion, align 4, !tbaa !5
  %35 = load i8*, i8** %rulename, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 %34, i8* %35)
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.746

if.end.26:                                        ; preds = %if.end.22
  %36 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %cmp27 = icmp eq i8** %36, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.746

if.end.30:                                        ; preds = %if.end.26
  %37 = load i32, i32* %maxatom.addr, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %37, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  store i32 64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.746

if.end.34:                                        ; preds = %if.end.30
  store i32 1, i32* %ruleno, align 4, !tbaa !5
  store i32 0, i32* %loopcount, align 4, !tbaa !5
  %38 = load i32, i32* %ruleset.addr, align 4, !tbaa !5
  %idxprom35 = sext i32 %38 to i64
  %arrayidx36 = getelementptr inbounds [200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 %idxprom35
  %39 = load %struct.rewrite*, %struct.rewrite** %arrayidx36, align 8, !tbaa !1
  store %struct.rewrite* %39, %struct.rewrite** %rwr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.729, %cleanup.727, %if.end.34
  %40 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.rewrite* %40, null
  br i1 %cmp37, label %for.body, label %for.end.730

for.body:                                         ; preds = %for.cond
  %41 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8*, i8** %42, i64 0
  %43 = load i8*, i8** %arrayidx39, align 8, !tbaa !1
  %cmp40 = icmp ne i8* %43, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.49

land.lhs.true.42:                                 ; preds = %for.body
  %44 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8*, i8** %44, i64 0
  %45 = load i8*, i8** %arrayidx43, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx44, align 1, !tbaa !15
  %conv45 = sext i8 %46 to i32
  %and = and i32 %conv45, 255
  %cmp46 = icmp eq i32 %and, 150
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.42
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.727

if.end.49:                                        ; preds = %land.lhs.true.42, %for.body
  %47 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv50 = zext i8 %47 to i32
  %cmp51 = icmp sge i32 %conv50, 12
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.65

land.lhs.true.53:                                 ; preds = %if.end.49
  %48 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %48, 0
  br i1 %tobool54, label %if.end.65, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %49 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv56 = zext i8 %49 to i32
  %cmp57 = icmp sge i32 %conv56, 15
  br i1 %cmp57, label %land.lhs.true.59, label %if.else.62

land.lhs.true.59:                                 ; preds = %if.then.55
  %50 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool60 = icmp ne i32 %50, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.59
  %51 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %r_line = getelementptr inbounds %struct.rewrite, %struct.rewrite* %51, i32 0, i32 3
  %52 = load i32, i32* %r_line, align 4, !tbaa !25
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i32 %52)
  br label %if.end.63

if.else.62:                                       ; preds = %land.lhs.true.59, %if.then.55
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  %call64 = call %struct.sm_file* @sm_debug_file()
  %53 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %r_lhs = getelementptr inbounds %struct.rewrite, %struct.rewrite* %53, i32 0, i32 0
  %54 = load i8**, i8*** %r_lhs, align 8, !tbaa !27
  call void @printav(%struct.sm_file* %call64, i8** %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %land.lhs.true.53, %if.end.49
  %arraydecay66 = getelementptr inbounds [9 x %struct.match], [9 x %struct.match]* %mlist, i32 0, i32 0
  store %struct.match* %arraydecay66, %struct.match** %mlp, align 8, !tbaa !1
  %55 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %r_lhs67 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %55, i32 0, i32 0
  %56 = load i8**, i8*** %r_lhs67, align 8, !tbaa !27
  store i8** %56, i8*** %rvp, align 8, !tbaa !1
  %57 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  store i8** %57, i8*** %avp, align 8, !tbaa !1
  %58 = load i32, i32* %loopcount, align 4, !tbaa !5
  %inc68 = add nsw i32 %58, 1
  store i32 %inc68, i32* %loopcount, align 4, !tbaa !5
  %cmp69 = icmp sgt i32 %inc68, 100
  br i1 %cmp69, label %if.then.71, label %if.end.80

if.then.71:                                       ; preds = %if.end.65
  %59 = load i8*, i8** %rulename, align 8, !tbaa !1
  %60 = load i32, i32* %ruleno, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i8* %59, i32 %60)
  %61 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv72 = zext i8 %61 to i32
  %cmp73 = icmp sge i32 %conv72, 1
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %if.then.71
  %62 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %62, 0
  br i1 %tobool76, label %if.end.79, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.75
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0))
  %call78 = call %struct.sm_file* @sm_debug_file()
  %63 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call78, i8** %63)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %land.lhs.true.75, %if.then.71
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.727

if.end.80:                                        ; preds = %if.end.65
  br label %while.cond

while.cond:                                       ; preds = %if.end.263, %sw.epilog, %if.end.80
  %64 = load i8**, i8*** %avp, align 8, !tbaa !1
  %65 = load i8*, i8** %64, align 8, !tbaa !1
  store i8* %65, i8** %ap, align 8, !tbaa !1
  %cmp81 = icmp ne i8* %65, null
  br i1 %cmp81, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %66 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %67 = load i8*, i8** %66, align 8, !tbaa !1
  %cmp83 = icmp ne i8* %67, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %68 = phi i1 [ true, %while.cond ], [ %cmp83, %lor.rhs ]
  br i1 %68, label %while.body, label %while.end.264

while.body:                                       ; preds = %lor.end
  %69 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %70 = load i8*, i8** %69, align 8, !tbaa !1
  store i8* %70, i8** %rp, align 8, !tbaa !1
  %71 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv85 = zext i8 %71 to i32
  %cmp86 = icmp sge i32 %conv85, 35
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.93

land.lhs.true.88:                                 ; preds = %while.body
  %72 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %72, 0
  br i1 %tobool89, label %if.end.93, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.88
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0))
  %call91 = call %struct.sm_file* @sm_debug_file()
  %73 = load i8*, i8** %rp, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call91, i8* %73)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %call92 = call %struct.sm_file* @sm_debug_file()
  %74 = load i8*, i8** %ap, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call92, i8* %74)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %land.lhs.true.88, %while.body
  %75 = load i8*, i8** %rp, align 8, !tbaa !1
  %cmp94 = icmp eq i8* %75, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %backup

if.end.97:                                        ; preds = %if.end.93
  %76 = load i8*, i8** %ap, align 8, !tbaa !1
  %cmp98 = icmp eq i8* %76, null
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.113

land.lhs.true.100:                                ; preds = %if.end.97
  %77 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx101, align 1, !tbaa !15
  %conv102 = sext i8 %78 to i32
  %and103 = and i32 %conv102, 255
  %cmp104 = icmp ne i32 %and103, 144
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.113

land.lhs.true.106:                                ; preds = %land.lhs.true.100
  %79 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx107, align 1, !tbaa !15
  %conv108 = sext i8 %80 to i32
  %and109 = and i32 %conv108, 255
  %cmp110 = icmp ne i32 %and109, 151
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %land.lhs.true.106
  br label %backup

if.end.113:                                       ; preds = %land.lhs.true.106, %land.lhs.true.100, %if.end.97
  %81 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx114, align 1, !tbaa !15
  %conv115 = sext i8 %82 to i32
  %and116 = and i32 %conv115, 255
  switch i32 %and116, label %sw.default [
    i32 147, label %sw.bb
    i32 148, label %sw.bb.148
    i32 146, label %sw.bb.155
    i32 145, label %sw.bb.155
    i32 144, label %sw.bb.161
    i32 151, label %sw.epilog
    i32 130, label %sw.bb.166
  ]

sw.bb:                                            ; preds = %if.end.113
  %83 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %84 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_pattern = getelementptr inbounds %struct.match, %struct.match* %84, i32 0, i32 2
  store i8** %83, i8*** %match_pattern, align 8, !tbaa !28
  %85 = load i8**, i8*** %avp, align 8, !tbaa !1
  %86 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_first = getelementptr inbounds %struct.match, %struct.match* %86, i32 0, i32 0
  store i8** %85, i8*** %match_first, align 8, !tbaa !30
  br label %extendclass

extendclass:                                      ; preds = %if.then.255, %if.end.138, %sw.bb
  %87 = load i8**, i8*** %avp, align 8, !tbaa !1
  %88 = load i8*, i8** %87, align 8, !tbaa !1
  store i8* %88, i8** %ap, align 8, !tbaa !1
  %89 = load i8*, i8** %ap, align 8, !tbaa !1
  %cmp117 = icmp eq i8* %89, null
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %extendclass
  br label %backup

if.end.120:                                       ; preds = %extendclass
  %90 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %incdec.ptr, i8*** %avp, align 8, !tbaa !1
  %91 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last = getelementptr inbounds %struct.match, %struct.match* %91, i32 0, i32 1
  store i8** %90, i8*** %match_last, align 8, !tbaa !31
  %92 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_first121 = getelementptr inbounds %struct.match, %struct.match* %92, i32 0, i32 0
  %93 = load i8**, i8*** %match_first121, align 8, !tbaa !30
  %94 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last122 = getelementptr inbounds %struct.match, %struct.match* %94, i32 0, i32 1
  %95 = load i8**, i8*** %match_last122, align 8, !tbaa !31
  %arraydecay123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @cataddr(i8** %93, i8** %95, i8* %arraydecay123, i32 2048, i32 0, i32 1)
  %arraydecay124 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %96 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx125, align 1, !tbaa !15
  %conv126 = sext i8 %97 to i32
  %call127 = call i32 @wordinclass(i8* %arraydecay124, i32 %conv126)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end.139, label %if.then.129

if.then.129:                                      ; preds = %if.end.120
  %98 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv130 = zext i8 %98 to i32
  %cmp131 = icmp sge i32 %conv130, 36
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.138

land.lhs.true.133:                                ; preds = %if.then.129
  %99 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool134 = icmp ne i32 %99, 0
  br i1 %tobool134, label %if.end.138, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.133
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0))
  %call136 = call %struct.sm_file* @sm_debug_file()
  %100 = load i8*, i8** %rp, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call136, i8* %100)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %call137 = call %struct.sm_file* @sm_debug_file()
  %101 = load i8*, i8** %ap, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call137, i8* %101)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %land.lhs.true.133, %if.then.129
  br label %extendclass

if.end.139:                                       ; preds = %if.end.120
  %102 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv140 = zext i8 %102 to i32
  %cmp141 = icmp sge i32 %conv140, 36
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.146

land.lhs.true.143:                                ; preds = %if.end.139
  %103 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool144 = icmp ne i32 %103, 0
  br i1 %tobool144, label %if.end.146, label %if.then.145

if.then.145:                                      ; preds = %land.lhs.true.143
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %land.lhs.true.143, %if.end.139
  %104 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds %struct.match, %struct.match* %104, i32 1
  store %struct.match* %incdec.ptr147, %struct.match** %mlp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.end.113
  %105 = load i8*, i8** %ap, align 8, !tbaa !1
  %106 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx149, align 1, !tbaa !15
  %conv150 = sext i8 %107 to i32
  %call151 = call i32 @wordinclass(i8* %105, i32 %conv150)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %sw.bb.148
  br label %backup

if.end.154:                                       ; preds = %sw.bb.148
  br label %sw.bb.155

sw.bb.155:                                        ; preds = %if.end.113, %if.end.113, %if.end.154
  %108 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %109 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_pattern156 = getelementptr inbounds %struct.match, %struct.match* %109, i32 0, i32 2
  store i8** %108, i8*** %match_pattern156, align 8, !tbaa !28
  %110 = load i8**, i8*** %avp, align 8, !tbaa !1
  %111 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_first157 = getelementptr inbounds %struct.match, %struct.match* %111, i32 0, i32 0
  store i8** %110, i8*** %match_first157, align 8, !tbaa !30
  %112 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %incdec.ptr158, i8*** %avp, align 8, !tbaa !1
  %113 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last159 = getelementptr inbounds %struct.match, %struct.match* %113, i32 0, i32 1
  store i8** %112, i8*** %match_last159, align 8, !tbaa !31
  %114 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %incdec.ptr160 = getelementptr inbounds %struct.match, %struct.match* %114, i32 1
  store %struct.match* %incdec.ptr160, %struct.match** %mlp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.161:                                        ; preds = %if.end.113
  %115 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %116 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_pattern162 = getelementptr inbounds %struct.match, %struct.match* %116, i32 0, i32 2
  store i8** %115, i8*** %match_pattern162, align 8, !tbaa !28
  %117 = load i8**, i8*** %avp, align 8, !tbaa !1
  %118 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_first163 = getelementptr inbounds %struct.match, %struct.match* %118, i32 0, i32 0
  store i8** %117, i8*** %match_first163, align 8, !tbaa !30
  %119 = load i8**, i8*** %avp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8*, i8** %119, i64 -1
  %120 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last164 = getelementptr inbounds %struct.match, %struct.match* %120, i32 0, i32 1
  store i8** %add.ptr, i8*** %match_last164, align 8, !tbaa !31
  %121 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %incdec.ptr165 = getelementptr inbounds %struct.match, %struct.match* %121, i32 1
  store %struct.match* %incdec.ptr165, %struct.match** %mlp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.113
  %122 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx167, align 1, !tbaa !15
  %conv168 = sext i8 %123 to i32
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call169 = call i8* @macvalue(i32 %conv168, %struct.envelope* %124)
  store i8* %call169, i8** %ap, align 8, !tbaa !1
  %125 = load i8**, i8*** %avp, align 8, !tbaa !1
  %126 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_first170 = getelementptr inbounds %struct.match, %struct.match* %126, i32 0, i32 0
  store i8** %125, i8*** %match_first170, align 8, !tbaa !30
  %127 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv171 = zext i8 %127 to i32
  %cmp172 = icmp sge i32 %conv171, 2
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.182

land.lhs.true.174:                                ; preds = %sw.bb.166
  %128 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool175 = icmp ne i32 %128, 0
  br i1 %tobool175, label %if.end.182, label %if.then.176

if.then.176:                                      ; preds = %land.lhs.true.174
  %129 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %129, i64 1
  %130 = load i8, i8* %arrayidx177, align 1, !tbaa !15
  %conv178 = sext i8 %130 to i32
  %call179 = call i8* @macname(i32 %conv178)
  %131 = load i8*, i8** %ap, align 8, !tbaa !1
  %cmp180 = icmp eq i8* %131, null
  br i1 %cmp180, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.176
  br label %cond.end

cond.false:                                       ; preds = %if.then.176
  %132 = load i8*, i8** %ap, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %cond.true ], [ %132, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i8* %call179, i8* %cond)
  br label %if.end.182

if.end.182:                                       ; preds = %cond.end, %land.lhs.true.174, %sw.bb.166
  %133 = load i8*, i8** %ap, align 8, !tbaa !1
  %cmp183 = icmp eq i8* %133, null
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.182
  br label %sw.epilog

if.end.186:                                       ; preds = %if.end.182
  br label %while.cond.187

while.cond.187:                                   ; preds = %if.end.201, %if.end.186
  %134 = load i8*, i8** %ap, align 8, !tbaa !1
  %135 = load i8, i8* %134, align 1, !tbaa !15
  %conv188 = sext i8 %135 to i32
  %cmp189 = icmp ne i32 %conv188, 0
  br i1 %cmp189, label %while.body.191, label %while.end

while.body.191:                                   ; preds = %while.cond.187
  %136 = load i8**, i8*** %avp, align 8, !tbaa !1
  %137 = load i8*, i8** %136, align 8, !tbaa !1
  %cmp192 = icmp eq i8* %137, null
  br i1 %cmp192, label %if.then.199, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %while.body.191
  %138 = load i8*, i8** %ap, align 8, !tbaa !1
  %139 = load i8**, i8*** %avp, align 8, !tbaa !1
  %140 = load i8*, i8** %139, align 8, !tbaa !1
  %141 = load i8**, i8*** %avp, align 8, !tbaa !1
  %142 = load i8*, i8** %141, align 8, !tbaa !1
  %call195 = call i64 @strlen(i8* %142) #10
  %call196 = call i32 @sm_strncasecmp(i8* %138, i8* %140, i64 %call195)
  %cmp197 = icmp ne i32 %call196, 0
  br i1 %cmp197, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %lor.lhs.false.194, %while.body.191
  %143 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_first200 = getelementptr inbounds %struct.match, %struct.match* %143, i32 0, i32 0
  %144 = load i8**, i8*** %match_first200, align 8, !tbaa !30
  store i8** %144, i8*** %avp, align 8, !tbaa !1
  br label %backup

if.end.201:                                       ; preds = %lor.lhs.false.194
  %145 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr202 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %incdec.ptr202, i8*** %avp, align 8, !tbaa !1
  %146 = load i8*, i8** %145, align 8, !tbaa !1
  %call203 = call i64 @strlen(i8* %146) #10
  %147 = load i8*, i8** %ap, align 8, !tbaa !1
  %add.ptr204 = getelementptr inbounds i8, i8* %147, i64 %call203
  store i8* %add.ptr204, i8** %ap, align 8, !tbaa !1
  br label %while.cond.187

while.end:                                        ; preds = %while.cond.187
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.113
  %148 = load i8*, i8** %rp, align 8, !tbaa !1
  %149 = load i8*, i8** %ap, align 8, !tbaa !1
  %call205 = call i32 @sm_strcasecmp(i8* %148, i8* %149)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %sw.default
  br label %backup

if.end.208:                                       ; preds = %sw.default
  %150 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr209 = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %incdec.ptr209, i8*** %avp, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.208, %while.end, %if.then.185, %if.end.113, %sw.bb.161, %sw.bb.155, %if.end.146
  %151 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr210 = getelementptr inbounds i8*, i8** %151, i32 1
  store i8** %incdec.ptr210, i8*** %rvp, align 8, !tbaa !1
  br label %while.cond

backup:                                           ; preds = %if.then.207, %if.then.199, %if.then.153, %if.then.119, %if.then.112, %if.then.96
  br label %while.cond.211

while.cond.211:                                   ; preds = %if.end.257, %if.then.231, %backup
  %152 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %incdec.ptr212 = getelementptr inbounds %struct.match, %struct.match* %152, i32 -1
  store %struct.match* %incdec.ptr212, %struct.match** %mlp, align 8, !tbaa !1
  %arraydecay213 = getelementptr inbounds [9 x %struct.match], [9 x %struct.match]* %mlist, i32 0, i32 0
  %cmp214 = icmp uge %struct.match* %incdec.ptr212, %arraydecay213
  br i1 %cmp214, label %while.body.216, label %while.end.258

while.body.216:                                   ; preds = %while.cond.211
  %153 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_pattern217 = getelementptr inbounds %struct.match, %struct.match* %153, i32 0, i32 2
  %154 = load i8**, i8*** %match_pattern217, align 8, !tbaa !28
  store i8** %154, i8*** %rvp, align 8, !tbaa !1
  %155 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %156 = load i8*, i8** %155, align 8, !tbaa !1
  store i8* %156, i8** %rp, align 8, !tbaa !1
  %157 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last218 = getelementptr inbounds %struct.match, %struct.match* %157, i32 0, i32 1
  %158 = load i8**, i8*** %match_last218, align 8, !tbaa !31
  %add.ptr219 = getelementptr inbounds i8*, i8** %158, i64 1
  store i8** %add.ptr219, i8*** %avp, align 8, !tbaa !1
  %159 = load i8**, i8*** %avp, align 8, !tbaa !1
  %160 = load i8*, i8** %159, align 8, !tbaa !1
  store i8* %160, i8** %ap, align 8, !tbaa !1
  %161 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv220 = zext i8 %161 to i32
  %cmp221 = icmp sge i32 %conv220, 36
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.228

land.lhs.true.223:                                ; preds = %while.body.216
  %162 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool224 = icmp ne i32 %162, 0
  br i1 %tobool224, label %if.end.228, label %if.then.225

if.then.225:                                      ; preds = %land.lhs.true.223
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0))
  %call226 = call %struct.sm_file* @sm_debug_file()
  %163 = load i8*, i8** %rp, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call226, i8* %163)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %call227 = call %struct.sm_file* @sm_debug_file()
  %164 = load i8*, i8** %ap, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call227, i8* %164)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.225, %land.lhs.true.223, %while.body.216
  %165 = load i8*, i8** %ap, align 8, !tbaa !1
  %cmp229 = icmp eq i8* %165, null
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.228
  br label %while.cond.211

if.end.232:                                       ; preds = %if.end.228
  %166 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i8, i8* %166, i64 0
  %167 = load i8, i8* %arrayidx233, align 1, !tbaa !15
  %conv234 = sext i8 %167 to i32
  %and235 = and i32 %conv234, 255
  %cmp236 = icmp eq i32 %and235, 145
  br i1 %cmp236, label %if.then.244, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.end.232
  %168 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx239, align 1, !tbaa !15
  %conv240 = sext i8 %169 to i32
  %and241 = and i32 %conv240, 255
  %cmp242 = icmp eq i32 %and241, 144
  br i1 %cmp242, label %if.then.244, label %if.end.249

if.then.244:                                      ; preds = %lor.lhs.false.238, %if.end.232
  %170 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr245 = getelementptr inbounds i8*, i8** %170, i32 1
  store i8** %incdec.ptr245, i8*** %avp, align 8, !tbaa !1
  %171 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last246 = getelementptr inbounds %struct.match, %struct.match* %171, i32 0, i32 1
  store i8** %170, i8*** %match_last246, align 8, !tbaa !31
  %172 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr247 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %incdec.ptr247, i8*** %rvp, align 8, !tbaa !1
  %173 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %incdec.ptr248 = getelementptr inbounds %struct.match, %struct.match* %173, i32 1
  store %struct.match* %incdec.ptr248, %struct.match** %mlp, align 8, !tbaa !1
  br label %while.end.258

if.end.249:                                       ; preds = %lor.lhs.false.238
  %174 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %174, i64 0
  %175 = load i8, i8* %arrayidx250, align 1, !tbaa !15
  %conv251 = sext i8 %175 to i32
  %and252 = and i32 %conv251, 255
  %cmp253 = icmp eq i32 %and252, 147
  br i1 %cmp253, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %if.end.249
  %176 = load i8**, i8*** %avp, align 8, !tbaa !1
  %177 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %match_last256 = getelementptr inbounds %struct.match, %struct.match* %177, i32 0, i32 1
  store i8** %176, i8*** %match_last256, align 8, !tbaa !31
  br label %extendclass

if.end.257:                                       ; preds = %if.end.249
  br label %while.cond.211

while.end.258:                                    ; preds = %if.then.244, %while.cond.211
  %178 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %arraydecay259 = getelementptr inbounds [9 x %struct.match], [9 x %struct.match]* %mlist, i32 0, i32 0
  %cmp260 = icmp ult %struct.match* %178, %arraydecay259
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %while.end.258
  br label %while.end.264

if.end.263:                                       ; preds = %while.end.258
  br label %while.cond

while.end.264:                                    ; preds = %if.then.262, %lor.end
  %179 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %arraydecay265 = getelementptr inbounds [9 x %struct.match], [9 x %struct.match]* %mlist, i32 0, i32 0
  %cmp266 = icmp ult %struct.match* %179, %arraydecay265
  br i1 %cmp266, label %if.then.271, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %while.end.264
  %180 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %181 = load i8*, i8** %180, align 8, !tbaa !1
  %cmp269 = icmp ne i8* %181, null
  br i1 %cmp269, label %if.then.271, label %if.end.280

if.then.271:                                      ; preds = %lor.lhs.false.268, %while.end.264
  %182 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv272 = zext i8 %182 to i32
  %cmp273 = icmp sge i32 %conv272, 10
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.278

land.lhs.true.275:                                ; preds = %if.then.271
  %183 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool276 = icmp ne i32 %183, 0
  br i1 %tobool276, label %if.end.278, label %if.then.277

if.then.277:                                      ; preds = %land.lhs.true.275
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %land.lhs.true.275, %if.then.271
  %184 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %r_next = getelementptr inbounds %struct.rewrite, %struct.rewrite* %184, i32 0, i32 2
  %185 = load %struct.rewrite*, %struct.rewrite** %r_next, align 8, !tbaa !32
  store %struct.rewrite* %185, %struct.rewrite** %rwr, align 8, !tbaa !1
  %186 = load i32, i32* %ruleno, align 4, !tbaa !5
  %inc279 = add nsw i32 %186, 1
  store i32 %inc279, i32* %ruleno, align 4, !tbaa !5
  store i32 0, i32* %loopcount, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.727

if.end.280:                                       ; preds = %lor.lhs.false.268
  %187 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %r_rhs = getelementptr inbounds %struct.rewrite, %struct.rewrite* %187, i32 0, i32 1
  %188 = load i8**, i8*** %r_rhs, align 8, !tbaa !33
  store i8** %188, i8*** %rvp, align 8, !tbaa !1
  %189 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv281 = zext i8 %189 to i32
  %cmp282 = icmp sge i32 %conv281, 12
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.288

land.lhs.true.284:                                ; preds = %if.end.280
  %190 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool285 = icmp ne i32 %190, 0
  br i1 %tobool285, label %if.end.288, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.284
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0))
  %call287 = call %struct.sm_file* @sm_debug_file()
  %191 = load i8**, i8*** %rvp, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call287, i8** %191)
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.286, %land.lhs.true.284, %if.end.280
  %192 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %193 = load i8*, i8** %192, align 8, !tbaa !1
  store i8* %193, i8** %rp, align 8, !tbaa !1
  %194 = load i8*, i8** %rp, align 8, !tbaa !1
  %cmp289 = icmp ne i8* %194, null
  br i1 %cmp289, label %if.then.291, label %if.end.311

if.then.291:                                      ; preds = %if.end.288
  %195 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %195, i64 0
  %196 = load i8, i8* %arrayidx292, align 1, !tbaa !15
  %conv293 = sext i8 %196 to i32
  %and294 = and i32 %conv293, 255
  %cmp295 = icmp eq i32 %and294, 152
  br i1 %cmp295, label %if.then.297, label %if.else.301

if.then.297:                                      ; preds = %if.then.291
  %197 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr298 = getelementptr inbounds i8*, i8** %197, i32 1
  store i8** %incdec.ptr298, i8*** %rvp, align 8, !tbaa !1
  %198 = load %struct.rewrite*, %struct.rewrite** %rwr, align 8, !tbaa !1
  %r_next299 = getelementptr inbounds %struct.rewrite, %struct.rewrite* %198, i32 0, i32 2
  %199 = load %struct.rewrite*, %struct.rewrite** %r_next299, align 8, !tbaa !32
  store %struct.rewrite* %199, %struct.rewrite** %rwr, align 8, !tbaa !1
  %200 = load i32, i32* %ruleno, align 4, !tbaa !5
  %inc300 = add nsw i32 %200, 1
  store i32 %inc300, i32* %ruleno, align 4, !tbaa !5
  store i32 0, i32* %loopcount, align 4, !tbaa !5
  br label %if.end.310

if.else.301:                                      ; preds = %if.then.291
  %201 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8, i8* %201, i64 0
  %202 = load i8, i8* %arrayidx302, align 1, !tbaa !15
  %conv303 = sext i8 %202 to i32
  %and304 = and i32 %conv303, 255
  %cmp305 = icmp eq i32 %and304, 151
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %if.else.301
  %203 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr308 = getelementptr inbounds i8*, i8** %203, i32 1
  store i8** %incdec.ptr308, i8*** %rvp, align 8, !tbaa !1
  store %struct.rewrite* null, %struct.rewrite** %rwr, align 8, !tbaa !1
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.307, %if.else.301
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.297
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.288
  %arraydecay312 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i32 0
  store i8** %arraydecay312, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.472, %if.end.311
  %204 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %205 = load i8*, i8** %204, align 8, !tbaa !1
  %cmp314 = icmp ne i8* %205, null
  br i1 %cmp314, label %for.body.316, label %for.end.474

for.body.316:                                     ; preds = %for.cond.313
  %206 = bitcast %struct.match** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  %207 = bitcast i8*** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  %208 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %209 = load i8*, i8** %208, align 8, !tbaa !1
  store i8* %209, i8** %rp, align 8, !tbaa !1
  %210 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %210, i64 0
  %211 = load i8, i8* %arrayidx317, align 1, !tbaa !15
  %conv318 = sext i8 %211 to i32
  %and319 = and i32 %conv318, 255
  %cmp320 = icmp eq i32 %and319, 149
  br i1 %cmp320, label %if.then.322, label %if.else.369

if.then.322:                                      ; preds = %for.body.316
  %212 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds i8, i8* %212, i64 1
  %213 = load i8, i8* %arrayidx323, align 1, !tbaa !15
  %conv324 = sext i8 %213 to i32
  %sub = sub nsw i32 %conv324, 49
  %idxprom325 = sext i32 %sub to i64
  %arrayidx326 = getelementptr inbounds [9 x %struct.match], [9 x %struct.match]* %mlist, i32 0, i64 %idxprom325
  store %struct.match* %arrayidx326, %struct.match** %m, align 8, !tbaa !1
  %214 = load %struct.match*, %struct.match** %m, align 8, !tbaa !1
  %arraydecay327 = getelementptr inbounds [9 x %struct.match], [9 x %struct.match]* %mlist, i32 0, i32 0
  %cmp328 = icmp ult %struct.match* %214, %arraydecay327
  br i1 %cmp328, label %if.then.333, label %lor.lhs.false.330

lor.lhs.false.330:                                ; preds = %if.then.322
  %215 = load %struct.match*, %struct.match** %m, align 8, !tbaa !1
  %216 = load %struct.match*, %struct.match** %mlp, align 8, !tbaa !1
  %cmp331 = icmp uge %struct.match* %215, %216
  br i1 %cmp331, label %if.then.333, label %if.end.336

if.then.333:                                      ; preds = %lor.lhs.false.330, %if.then.322
  %217 = load i8*, i8** %rulename, align 8, !tbaa !1
  %218 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i8, i8* %218, i64 1
  %219 = load i8, i8* %arrayidx334, align 1, !tbaa !15
  %conv335 = sext i8 %219 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.53, i32 0, i32 0), i8* %217, i32 %conv335)
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.468

if.end.336:                                       ; preds = %lor.lhs.false.330
  %220 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv337 = zext i8 %220 to i32
  %cmp338 = icmp sge i32 %conv337, 15
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.353

land.lhs.true.340:                                ; preds = %if.end.336
  %221 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool341 = icmp ne i32 %221, 0
  br i1 %tobool341, label %if.end.353, label %if.then.342

if.then.342:                                      ; preds = %land.lhs.true.340
  %222 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx343 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %arrayidx343, align 1, !tbaa !15
  %conv344 = sext i8 %223 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 %conv344)
  %224 = load %struct.match*, %struct.match** %m, align 8, !tbaa !1
  %match_first345 = getelementptr inbounds %struct.match, %struct.match* %224, i32 0, i32 0
  %225 = load i8**, i8*** %match_first345, align 8, !tbaa !30
  store i8** %225, i8*** %pp, align 8, !tbaa !1
  br label %while.cond.346

while.cond.346:                                   ; preds = %while.body.350, %if.then.342
  %226 = load i8**, i8*** %pp, align 8, !tbaa !1
  %227 = load %struct.match*, %struct.match** %m, align 8, !tbaa !1
  %match_last347 = getelementptr inbounds %struct.match, %struct.match* %227, i32 0, i32 1
  %228 = load i8**, i8*** %match_last347, align 8, !tbaa !31
  %cmp348 = icmp ule i8** %226, %228
  br i1 %cmp348, label %while.body.350, label %while.end.352

while.body.350:                                   ; preds = %while.cond.346
  %229 = load i8**, i8*** %pp, align 8, !tbaa !1
  %230 = load i8*, i8** %229, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* %230)
  call void @sm_dflush()
  %231 = load i8**, i8*** %pp, align 8, !tbaa !1
  %incdec.ptr351 = getelementptr inbounds i8*, i8** %231, i32 1
  store i8** %incdec.ptr351, i8*** %pp, align 8, !tbaa !1
  %232 = load i8*, i8** %231, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* %232)
  br label %while.cond.346

while.end.352:                                    ; preds = %while.cond.346
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.353

if.end.353:                                       ; preds = %while.end.352, %land.lhs.true.340, %if.end.336
  %233 = load %struct.match*, %struct.match** %m, align 8, !tbaa !1
  %match_first354 = getelementptr inbounds %struct.match, %struct.match* %233, i32 0, i32 0
  %234 = load i8**, i8*** %match_first354, align 8, !tbaa !30
  store i8** %234, i8*** %pp, align 8, !tbaa !1
  br label %while.cond.355

while.cond.355:                                   ; preds = %if.end.365, %if.end.353
  %235 = load i8**, i8*** %pp, align 8, !tbaa !1
  %236 = load %struct.match*, %struct.match** %m, align 8, !tbaa !1
  %match_last356 = getelementptr inbounds %struct.match, %struct.match* %236, i32 0, i32 1
  %237 = load i8**, i8*** %match_last356, align 8, !tbaa !31
  %cmp357 = icmp ule i8** %235, %237
  br i1 %cmp357, label %while.body.359, label %while.end.368

while.body.359:                                   ; preds = %while.cond.355
  %238 = load i8**, i8*** %avp, align 8, !tbaa !1
  %239 = load i32, i32* %maxatom.addr, align 4, !tbaa !5
  %idxprom360 = sext i32 %239 to i64
  %arrayidx361 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i64 %idxprom360
  %cmp362 = icmp uge i8** %238, %arrayidx361
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %while.body.359
  br label %toolong

if.end.365:                                       ; preds = %while.body.359
  %240 = load i8**, i8*** %pp, align 8, !tbaa !1
  %incdec.ptr366 = getelementptr inbounds i8*, i8** %240, i32 1
  store i8** %incdec.ptr366, i8*** %pp, align 8, !tbaa !1
  %241 = load i8*, i8** %240, align 8, !tbaa !1
  %242 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr367 = getelementptr inbounds i8*, i8** %242, i32 1
  store i8** %incdec.ptr367, i8*** %avp, align 8, !tbaa !1
  store i8* %241, i8** %242, align 8, !tbaa !1
  br label %while.cond.355

while.end.368:                                    ; preds = %while.cond.355
  br label %if.end.467

if.else.369:                                      ; preds = %for.body.316
  %243 = load i8**, i8*** %avp, align 8, !tbaa !1
  %244 = load i32, i32* %maxatom.addr, align 4, !tbaa !5
  %idxprom370 = sext i32 %244 to i64
  %arrayidx371 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i64 %idxprom370
  %cmp372 = icmp uge i8** %243, %arrayidx371
  br i1 %cmp372, label %if.then.374, label %if.end.379

if.then.374:                                      ; preds = %if.else.369
  br label %toolong

toolong:                                          ; preds = %cleanup.673, %cleanup, %if.then.374, %if.then.364
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0))
  %245 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp375 = icmp sgt i32 %245, 9
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %toolong
  %246 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %246, i32 0, i32 25
  %247 = load i8*, i8** %e_id, align 8, !tbaa !34
  %248 = load i8*, i8** %rulename, align 8, !tbaa !1
  %249 = load i32, i32* %ruleno, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %247, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.58, i32 0, i32 0), i8* %248, i32 %249)
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %toolong
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.468

if.end.379:                                       ; preds = %if.else.369
  %250 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds i8, i8* %250, i64 0
  %251 = load i8, i8* %arrayidx380, align 1, !tbaa !15
  %conv381 = sext i8 %251 to i32
  %and382 = and i32 %conv381, 255
  %cmp383 = icmp ne i32 %and382, 130
  br i1 %cmp383, label %if.then.385, label %if.else.387

if.then.385:                                      ; preds = %if.end.379
  %252 = load i8*, i8** %rp, align 8, !tbaa !1
  %253 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr386 = getelementptr inbounds i8*, i8** %253, i32 1
  store i8** %incdec.ptr386, i8*** %avp, align 8, !tbaa !1
  store i8* %252, i8** %253, align 8, !tbaa !1
  br label %if.end.466

if.else.387:                                      ; preds = %if.end.379
  %254 = bitcast i8** %mval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx388 = getelementptr inbounds i8, i8* %255, i64 1
  %256 = load i8, i8* %arrayidx388, align 1, !tbaa !15
  %conv389 = sext i8 %256 to i32
  %257 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call390 = call i8* @macvalue(i32 %conv389, %struct.envelope* %257)
  store i8* %call390, i8** %mval, align 8, !tbaa !1
  %258 = bitcast i8*** %xpvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %258) #1
  %259 = bitcast i64* %trsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #1
  store i64 0, i64* %trsize, align 8, !tbaa !35
  %260 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %260) #1
  %261 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv391 = zext i8 %261 to i32
  %cmp392 = icmp sge i32 %conv391, 2
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.406

land.lhs.true.394:                                ; preds = %if.else.387
  %262 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool395 = icmp ne i32 %262, 0
  br i1 %tobool395, label %if.end.406, label %if.then.396

if.then.396:                                      ; preds = %land.lhs.true.394
  %263 = load i8*, i8** %rp, align 8, !tbaa !1
  %arrayidx397 = getelementptr inbounds i8, i8* %263, i64 1
  %264 = load i8, i8* %arrayidx397, align 1, !tbaa !15
  %conv398 = sext i8 %264 to i32
  %call399 = call i8* @macname(i32 %conv398)
  %265 = load i8*, i8** %mval, align 8, !tbaa !1
  %cmp400 = icmp eq i8* %265, null
  br i1 %cmp400, label %cond.true.402, label %cond.false.403

cond.true.402:                                    ; preds = %if.then.396
  br label %cond.end.404

cond.false.403:                                   ; preds = %if.then.396
  %266 = load i8*, i8** %mval, align 8, !tbaa !1
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.false.403, %cond.true.402
  %cond405 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %cond.true.402 ], [ %266, %cond.false.403 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0), i8* %call399, i8* %cond405)
  br label %if.end.406

if.end.406:                                       ; preds = %cond.end.404, %land.lhs.true.394, %if.else.387
  %267 = load i8*, i8** %mval, align 8, !tbaa !1
  %cmp407 = icmp eq i8* %267, null
  br i1 %cmp407, label %if.then.413, label %lor.lhs.false.409

lor.lhs.false.409:                                ; preds = %if.end.406
  %268 = load i8*, i8** %mval, align 8, !tbaa !1
  %269 = load i8, i8* %268, align 1, !tbaa !15
  %conv410 = sext i8 %269 to i32
  %cmp411 = icmp eq i32 %conv410, 0
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %lor.lhs.false.409, %if.end.406
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup

if.end.414:                                       ; preds = %lor.lhs.false.409
  %270 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  store i8** %270, i8*** %xpvp, align 8, !tbaa !1
  br label %for.cond.415

for.cond.415:                                     ; preds = %for.inc, %if.end.414
  %271 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %272 = load i8*, i8** %271, align 8, !tbaa !1
  %cmp416 = icmp ne i8* %272, null
  br i1 %cmp416, label %for.body.418, label %for.end

for.body.418:                                     ; preds = %for.cond.415
  %273 = load i64, i64* %trsize, align 8, !tbaa !35
  %add = add i64 %273, 8
  store i64 %add, i64* %trsize, align 8, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body.418
  %274 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %incdec.ptr419 = getelementptr inbounds i8*, i8** %274, i32 1
  store i8** %incdec.ptr419, i8*** %xpvp, align 8, !tbaa !1
  br label %for.cond.415

for.end:                                          ; preds = %for.cond.415
  %275 = load i64, i64* %trsize, align 8, !tbaa !35
  %276 = load i64, i64* @rewrite.pvpb1_size, align 8, !tbaa !35
  %cmp420 = icmp ugt i64 %275, %276
  br i1 %cmp420, label %if.then.422, label %if.end.428

if.then.422:                                      ; preds = %for.end
  %277 = load i8**, i8*** @rewrite.pvpb1, align 8, !tbaa !1
  %cmp423 = icmp ne i8** %277, null
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.then.422
  %278 = load i8**, i8*** @rewrite.pvpb1, align 8, !tbaa !1
  %279 = bitcast i8** %278 to i8*
  call void @sm_free_tagged(i8* %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1409)
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %if.then.422
  %280 = load i64, i64* %trsize, align 8, !tbaa !35
  %call427 = call i8* @sm_malloc_tagged_x(i64 %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1411, i32 0)
  %281 = bitcast i8* %call427 to i8**
  store i8** %281, i8*** @rewrite.pvpb1, align 8, !tbaa !1
  %282 = load i64, i64* %trsize, align 8, !tbaa !35
  store i64 %282, i64* @rewrite.pvpb1_size, align 8, !tbaa !35
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.426, %for.end
  %283 = load i8**, i8*** @rewrite.pvpb1, align 8, !tbaa !1
  %284 = bitcast i8** %283 to i8*
  %285 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %286 = bitcast i8** %285 to i8*
  %287 = load i64, i64* %trsize, align 8, !tbaa !35
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %284, i8* %286, i64 %287, i32 1, i1 false)
  %288 = load i8*, i8** %mval, align 8, !tbaa !1
  %arraydecay429 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call430 = call i8** @prescan(i8* %288, i32 0, i8* %arraydecay429, i32 1256, i8** null, i8* null, i32 0)
  store i8** %call430, i8*** %xpvp, align 8, !tbaa !1
  %289 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %cmp431 = icmp eq i8** %289, null
  br i1 %cmp431, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %if.end.428
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.434:                                       ; preds = %if.end.428
  br label %while.cond.435

while.cond.435:                                   ; preds = %if.end.453, %if.end.434
  %290 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %291 = load i8*, i8** %290, align 8, !tbaa !1
  %cmp436 = icmp ne i8* %291, null
  br i1 %cmp436, label %while.body.438, label %while.end.455

while.body.438:                                   ; preds = %while.cond.435
  %292 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv439 = zext i8 %292 to i32
  %cmp440 = icmp sge i32 %conv439, 19
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.445

land.lhs.true.442:                                ; preds = %while.body.438
  %293 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool443 = icmp ne i32 %293, 0
  br i1 %tobool443, label %if.end.445, label %if.then.444

if.then.444:                                      ; preds = %land.lhs.true.442
  %294 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %295 = load i8*, i8** %294, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* %295)
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %land.lhs.true.442, %while.body.438
  %296 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %296, i32 0, i32 52
  %297 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %298 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %299 = load i8*, i8** %298, align 8, !tbaa !1
  %call446 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %297, i8* %299)
  %300 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr447 = getelementptr inbounds i8*, i8** %300, i32 1
  store i8** %incdec.ptr447, i8*** %avp, align 8, !tbaa !1
  store i8* %call446, i8** %300, align 8, !tbaa !1
  %301 = load i8**, i8*** %avp, align 8, !tbaa !1
  %302 = load i32, i32* %maxatom.addr, align 4, !tbaa !5
  %idxprom448 = sext i32 %302 to i64
  %arrayidx449 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i64 %idxprom448
  %cmp450 = icmp uge i8** %301, %arrayidx449
  br i1 %cmp450, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %if.end.445
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.453:                                       ; preds = %if.end.445
  %303 = load i8**, i8*** %xpvp, align 8, !tbaa !1
  %incdec.ptr454 = getelementptr inbounds i8*, i8** %303, i32 1
  store i8** %incdec.ptr454, i8*** %xpvp, align 8, !tbaa !1
  br label %while.cond.435

while.end.455:                                    ; preds = %while.cond.435
  %304 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv456 = zext i8 %304 to i32
  %cmp457 = icmp sge i32 %conv456, 19
  br i1 %cmp457, label %land.lhs.true.459, label %if.end.462

land.lhs.true.459:                                ; preds = %while.end.455
  %305 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool460 = icmp ne i32 %305, 0
  br i1 %tobool460, label %if.end.462, label %if.then.461

if.then.461:                                      ; preds = %land.lhs.true.459
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.461, %land.lhs.true.459, %while.end.455
  %306 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %307 = bitcast i8** %306 to i8*
  %308 = load i8**, i8*** @rewrite.pvpb1, align 8, !tbaa !1
  %309 = bitcast i8** %308 to i8*
  %310 = load i64, i64* %trsize, align 8, !tbaa !35
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %307, i8* %309, i64 %310, i32 1, i1 false)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.462, %if.then.452, %if.then.433, %if.then.413
  %311 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %311) #1
  %312 = bitcast i64* %trsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast i8*** %xpvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast i8** %mval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.468 [
    i32 0, label %cleanup.cont
    i32 20, label %toolong
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.466

if.end.466:                                       ; preds = %cleanup.cont, %if.then.385
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %while.end.368
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.468

cleanup.468:                                      ; preds = %if.end.467, %cleanup, %if.end.378, %if.then.333
  %315 = bitcast i8*** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast %struct.match** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %cleanup.dest.470 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.470, label %cleanup.727 [
    i32 0, label %cleanup.cont.471
    i32 15, label %for.inc.472
  ]

cleanup.cont.471:                                 ; preds = %cleanup.468
  br label %for.inc.472

for.inc.472:                                      ; preds = %cleanup.cont.471, %cleanup.468
  %317 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr473 = getelementptr inbounds i8*, i8** %317, i32 1
  store i8** %incdec.ptr473, i8*** %rvp, align 8, !tbaa !1
  br label %for.cond.313

for.end.474:                                      ; preds = %for.cond.313
  %318 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr475 = getelementptr inbounds i8*, i8** %318, i32 1
  store i8** %incdec.ptr475, i8*** %avp, align 8, !tbaa !1
  store i8* null, i8** %318, align 8, !tbaa !1
  %arraydecay476 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i32 0
  store i8** %arraydecay476, i8*** %rvp, align 8, !tbaa !1
  br label %for.cond.477

for.cond.477:                                     ; preds = %for.inc.691, %for.end.474
  %319 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %320 = load i8*, i8** %319, align 8, !tbaa !1
  %cmp478 = icmp ne i8* %320, null
  br i1 %cmp478, label %for.body.480, label %for.end.693

for.body.480:                                     ; preds = %for.cond.477
  %321 = bitcast i8*** %hbrvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %321) #1
  %322 = bitcast i8*** %xpvp481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %322) #1
  %323 = bitcast i64* %trsize482 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %323) #1
  %324 = bitcast i8** %replac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %324) #1
  %325 = bitcast i32* %endtoken to i8*
  call void @llvm.lifetime.start(i64 4, i8* %325) #1
  %326 = bitcast i32* %external to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #1
  %327 = bitcast %struct.symtab** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %327) #1
  %328 = bitcast i8** %mapname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %328) #1
  %329 = bitcast i8*** %key_rvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %329) #1
  %330 = bitcast i8*** %arg_rvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %330) #1
  %331 = bitcast i8*** %default_rvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %331) #1
  %332 = bitcast [1024 x i8]* %cbuf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %332) #1
  %333 = bitcast [1001 x i8*]* %pvpb1 to i8*
  call void @llvm.lifetime.start(i64 8008, i8* %333) #1
  %334 = bitcast [10 x i8*]* %argvect to i8*
  call void @llvm.lifetime.start(i64 80, i8* %334) #1
  %335 = bitcast [1256 x i8]* %pvpbuf483 to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %335) #1
  %336 = bitcast [1 x i8*]* %nullpvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %336) #1
  %337 = load i8**, i8*** %rvp, align 8, !tbaa !1
  store i8** %337, i8*** %hbrvp, align 8, !tbaa !1
  %338 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %arrayidx484 = getelementptr inbounds i8*, i8** %338, i64 0
  %339 = load i8*, i8** %arrayidx484, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds i8, i8* %339, i64 0
  %340 = load i8, i8* %arrayidx485, align 1, !tbaa !15
  %conv486 = sext i8 %340 to i32
  %and487 = and i32 %conv486, 255
  %cmp488 = icmp eq i32 %and487, 157
  br i1 %cmp488, label %if.then.490, label %if.else.491

if.then.490:                                      ; preds = %for.body.480
  store i32 158, i32* %endtoken, align 4, !tbaa !5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8** %mapname, align 8, !tbaa !1
  br label %if.end.506

if.else.491:                                      ; preds = %for.body.480
  %341 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i8*, i8** %341, i64 0
  %342 = load i8*, i8** %arrayidx492, align 8, !tbaa !1
  %arrayidx493 = getelementptr inbounds i8, i8* %342, i64 0
  %343 = load i8, i8* %arrayidx493, align 1, !tbaa !15
  %conv494 = sext i8 %343 to i32
  %and495 = and i32 %conv494, 255
  %cmp496 = icmp eq i32 %and495, 133
  br i1 %cmp496, label %if.then.498, label %if.else.504

if.then.498:                                      ; preds = %if.else.491
  store i32 134, i32* %endtoken, align 4, !tbaa !5
  %344 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr499 = getelementptr inbounds i8*, i8** %344, i32 1
  store i8** %incdec.ptr499, i8*** %rvp, align 8, !tbaa !1
  %345 = load i8*, i8** %incdec.ptr499, align 8, !tbaa !1
  store i8* %345, i8** %mapname, align 8, !tbaa !1
  %346 = load i8*, i8** %mapname, align 8, !tbaa !1
  %cmp500 = icmp eq i8* %346, null
  br i1 %cmp500, label %if.then.502, label %if.end.503

if.then.502:                                      ; preds = %if.then.498
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i32 0, i32 0))
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1490, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0)) #11
  unreachable

if.end.503:                                       ; preds = %if.then.498
  br label %if.end.505

if.else.504:                                      ; preds = %if.else.491
  store i32 28, i32* %cleanup.dest.slot
  br label %cleanup.673

if.end.505:                                       ; preds = %if.end.503
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %if.then.490
  %347 = load i8*, i8** %mapname, align 8, !tbaa !1
  %call507 = call %struct.symtab* @stab(i8* %347, i32 6, i32 0)
  store %struct.symtab* %call507, %struct.symtab** %map, align 8, !tbaa !1
  %348 = load %struct.symtab*, %struct.symtab** %map, align 8, !tbaa !1
  %cmp508 = icmp eq %struct.symtab* %348, null
  br i1 %cmp508, label %if.then.510, label %if.end.511

if.then.510:                                      ; preds = %if.end.506
  %349 = load i8*, i8** %mapname, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0), i8* %349)
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.510, %if.end.506
  %350 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr512 = getelementptr inbounds i8*, i8** %350, i32 1
  store i8** %incdec.ptr512, i8*** %rvp, align 8, !tbaa !1
  store i8** %incdec.ptr512, i8*** %key_rvp, align 8, !tbaa !1
  %351 = load i8**, i8*** %key_rvp, align 8, !tbaa !1
  %cmp513 = icmp eq i8** %351, null
  br i1 %cmp513, label %if.then.515, label %if.end.516

if.then.515:                                      ; preds = %if.end.511
  %352 = load i8*, i8** %mapname, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i32 0, i32 0), i8* %352)
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1514, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0)) #11
  unreachable

if.end.516:                                       ; preds = %if.end.511
  store i8** null, i8*** %default_rvp, align 8, !tbaa !1
  %arraydecay517 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i32 0
  store i8** %arraydecay517, i8*** %arg_rvp, align 8, !tbaa !1
  store i8** null, i8*** %xpvp481, align 8, !tbaa !1
  %arraydecay518 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf483, i32 0, i32 0
  store i8* %arraydecay518, i8** %replac, align 8, !tbaa !1
  br label %while.cond.519

while.cond.519:                                   ; preds = %cleanup.cont.562, %cleanup.560, %if.end.516
  %353 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %354 = load i8*, i8** %353, align 8, !tbaa !1
  %cmp520 = icmp ne i8* %354, null
  br i1 %cmp520, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.519
  %355 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %arrayidx522 = getelementptr inbounds i8*, i8** %355, i64 0
  %356 = load i8*, i8** %arrayidx522, align 8, !tbaa !1
  %arrayidx523 = getelementptr inbounds i8, i8* %356, i64 0
  %357 = load i8, i8* %arrayidx523, align 1, !tbaa !15
  %conv524 = sext i8 %357 to i32
  %and525 = and i32 %conv524, 255
  %358 = load i32, i32* %endtoken, align 4, !tbaa !5
  %cmp526 = icmp ne i32 %and525, %358
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.519
  %359 = phi i1 [ false, %while.cond.519 ], [ %cmp526, %land.rhs ]
  br i1 %359, label %while.body.528, label %while.end.563

while.body.528:                                   ; preds = %land.end
  %360 = bitcast i32* %nodetype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %360) #1
  %361 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %arrayidx529 = getelementptr inbounds i8*, i8** %361, i64 0
  %362 = load i8*, i8** %arrayidx529, align 8, !tbaa !1
  %arrayidx530 = getelementptr inbounds i8, i8* %362, i64 0
  %363 = load i8, i8* %arrayidx530, align 1, !tbaa !15
  %conv531 = sext i8 %363 to i32
  %and532 = and i32 %conv531, 255
  store i32 %and532, i32* %nodetype, align 4, !tbaa !5
  %364 = load i32, i32* %nodetype, align 4, !tbaa !5
  %cmp533 = icmp ne i32 %364, 151
  br i1 %cmp533, label %land.lhs.true.535, label %if.end.540

land.lhs.true.535:                                ; preds = %while.body.528
  %365 = load i32, i32* %nodetype, align 4, !tbaa !5
  %cmp536 = icmp ne i32 %365, 152
  br i1 %cmp536, label %if.then.538, label %if.end.540

if.then.538:                                      ; preds = %land.lhs.true.535
  %366 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr539 = getelementptr inbounds i8*, i8** %366, i32 1
  store i8** %incdec.ptr539, i8*** %rvp, align 8, !tbaa !1
  store i32 29, i32* %cleanup.dest.slot
  br label %cleanup.560

if.end.540:                                       ; preds = %land.lhs.true.535, %while.body.528
  %367 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr541 = getelementptr inbounds i8*, i8** %367, i32 1
  store i8** %incdec.ptr541, i8*** %rvp, align 8, !tbaa !1
  store i8* null, i8** %367, align 8, !tbaa !1
  %368 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %cmp542 = icmp ne i8** %368, null
  br i1 %cmp542, label %if.then.544, label %if.end.556

if.then.544:                                      ; preds = %if.end.540
  %369 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %370 = load i8*, i8** %replac, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf483, i32 0, i64 1256
  %371 = load i8*, i8** %replac, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %arrayidx545 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %371 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv546 = trunc i64 %sub.ptr.sub to i32
  call void @cataddr(i8** %369, i8** null, i8* %370, i32 %conv546, i32 0, i32 0)
  %372 = load i8**, i8*** %arg_rvp, align 8, !tbaa !1
  %arrayidx547 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i64 9
  %cmp548 = icmp ult i8** %372, %arrayidx547
  br i1 %cmp548, label %if.then.550, label %if.end.552

if.then.550:                                      ; preds = %if.then.544
  %373 = load i8*, i8** %replac, align 8, !tbaa !1
  %374 = load i8**, i8*** %arg_rvp, align 8, !tbaa !1
  %incdec.ptr551 = getelementptr inbounds i8*, i8** %374, i32 1
  store i8** %incdec.ptr551, i8*** %arg_rvp, align 8, !tbaa !1
  store i8* %373, i8** %incdec.ptr551, align 8, !tbaa !1
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.550, %if.then.544
  %375 = load i8*, i8** %replac, align 8, !tbaa !1
  %call553 = call i64 @strlen(i8* %375) #10
  %add554 = add i64 %call553, 1
  %376 = load i8*, i8** %replac, align 8, !tbaa !1
  %add.ptr555 = getelementptr inbounds i8, i8* %376, i64 %add554
  store i8* %add.ptr555, i8** %replac, align 8, !tbaa !1
  store i8** null, i8*** %xpvp481, align 8, !tbaa !1
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.552, %if.end.540
  %377 = load i32, i32* %nodetype, align 4, !tbaa !5
  switch i32 %377, label %sw.epilog.559 [
    i32 151, label %sw.bb.557
    i32 152, label %sw.bb.558
  ]

sw.bb.557:                                        ; preds = %if.end.556
  %378 = load i8**, i8*** %rvp, align 8, !tbaa !1
  store i8** %378, i8*** %xpvp481, align 8, !tbaa !1
  br label %sw.epilog.559

sw.bb.558:                                        ; preds = %if.end.556
  %379 = load i8**, i8*** %rvp, align 8, !tbaa !1
  store i8** %379, i8*** %default_rvp, align 8, !tbaa !1
  br label %sw.epilog.559

sw.epilog.559:                                    ; preds = %if.end.556, %sw.bb.558, %sw.bb.557
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.560

cleanup.560:                                      ; preds = %sw.epilog.559, %if.then.538
  %380 = bitcast i32* %nodetype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %cleanup.dest.561 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.561, label %unreachable [
    i32 0, label %cleanup.cont.562
    i32 29, label %while.cond.519
  ]

cleanup.cont.562:                                 ; preds = %cleanup.560
  br label %while.cond.519

while.end.563:                                    ; preds = %land.end
  %381 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %382 = load i8*, i8** %381, align 8, !tbaa !1
  %cmp564 = icmp ne i8* %382, null
  br i1 %cmp564, label %if.then.566, label %if.end.568

if.then.566:                                      ; preds = %while.end.563
  %383 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr567 = getelementptr inbounds i8*, i8** %383, i32 1
  store i8** %incdec.ptr567, i8*** %rvp, align 8, !tbaa !1
  store i8* null, i8** %383, align 8, !tbaa !1
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.566, %while.end.563
  %384 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %cmp569 = icmp ne i8** %384, null
  br i1 %cmp569, label %if.then.571, label %if.end.583

if.then.571:                                      ; preds = %if.end.568
  %385 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %386 = load i8*, i8** %replac, align 8, !tbaa !1
  %arrayidx572 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf483, i32 0, i64 1256
  %387 = load i8*, i8** %replac, align 8, !tbaa !1
  %sub.ptr.lhs.cast573 = ptrtoint i8* %arrayidx572 to i64
  %sub.ptr.rhs.cast574 = ptrtoint i8* %387 to i64
  %sub.ptr.sub575 = sub i64 %sub.ptr.lhs.cast573, %sub.ptr.rhs.cast574
  %conv576 = trunc i64 %sub.ptr.sub575 to i32
  call void @cataddr(i8** %385, i8** null, i8* %386, i32 %conv576, i32 0, i32 0)
  %388 = load i8**, i8*** %arg_rvp, align 8, !tbaa !1
  %arrayidx577 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i64 9
  %cmp578 = icmp ult i8** %388, %arrayidx577
  br i1 %cmp578, label %if.then.580, label %if.end.582

if.then.580:                                      ; preds = %if.then.571
  %389 = load i8*, i8** %replac, align 8, !tbaa !1
  %390 = load i8**, i8*** %arg_rvp, align 8, !tbaa !1
  %incdec.ptr581 = getelementptr inbounds i8*, i8** %390, i32 1
  store i8** %incdec.ptr581, i8*** %arg_rvp, align 8, !tbaa !1
  store i8* %389, i8** %incdec.ptr581, align 8, !tbaa !1
  br label %if.end.582

if.end.582:                                       ; preds = %if.then.580, %if.then.571
  br label %if.end.583

if.end.583:                                       ; preds = %if.end.582, %if.end.568
  %391 = load i8**, i8*** %arg_rvp, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i64 9
  %cmp585 = icmp uge i8** %391, %arrayidx584
  br i1 %cmp585, label %if.then.587, label %if.else.589

if.then.587:                                      ; preds = %if.end.583
  %arrayidx588 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i64 9
  store i8* null, i8** %arrayidx588, align 8, !tbaa !1
  br label %if.end.591

if.else.589:                                      ; preds = %if.end.583
  %392 = load i8**, i8*** %arg_rvp, align 8, !tbaa !1
  %incdec.ptr590 = getelementptr inbounds i8*, i8** %392, i32 1
  store i8** %incdec.ptr590, i8*** %arg_rvp, align 8, !tbaa !1
  store i8* null, i8** %incdec.ptr590, align 8, !tbaa !1
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.589, %if.then.587
  %393 = load i8**, i8*** %avp, align 8, !tbaa !1
  %394 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %sub.ptr.lhs.cast592 = ptrtoint i8** %393 to i64
  %sub.ptr.rhs.cast593 = ptrtoint i8** %394 to i64
  %sub.ptr.sub594 = sub i64 %sub.ptr.lhs.cast592, %sub.ptr.rhs.cast593
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub594, 8
  %add595 = add nsw i64 %sub.ptr.div, 1
  %mul = mul i64 %add595, 8
  store i64 %mul, i64* %trsize482, align 8, !tbaa !35
  %arraydecay596 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %pvpb1, i32 0, i32 0
  %395 = bitcast i8** %arraydecay596 to i8*
  %396 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %397 = bitcast i8** %396 to i8*
  %398 = load i64, i64* %trsize482, align 8, !tbaa !35
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %395, i8* %397, i64 %398, i32 1, i1 false)
  %399 = load i8**, i8*** %key_rvp, align 8, !tbaa !1
  %arraydecay597 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cbuf, i32 0, i32 0
  %400 = load %struct.symtab*, %struct.symtab** %map, align 8, !tbaa !1
  %cmp598 = icmp eq %struct.symtab* %400, null
  br i1 %cmp598, label %cond.true.600, label %cond.false.601

cond.true.600:                                    ; preds = %if.end.591
  br label %cond.end.603

cond.false.601:                                   ; preds = %if.end.591
  %401 = load %struct.symtab*, %struct.symtab** %map, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %401, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value to %struct._map*
  %map_spacesub = getelementptr inbounds %struct._map, %struct._map* %sv_map, i32 0, i32 12
  %402 = load i8, i8* %map_spacesub, align 1, !tbaa !36
  %conv602 = sext i8 %402 to i32
  br label %cond.end.603

cond.end.603:                                     ; preds = %cond.false.601, %cond.true.600
  %cond604 = phi i32 [ 0, %cond.true.600 ], [ %conv602, %cond.false.601 ]
  call void @cataddr(i8** %399, i8** null, i8* %arraydecay597, i32 1024, i32 %cond604, i32 1)
  %arraydecay605 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cbuf, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i64 0
  store i8* %arraydecay605, i8** %arrayidx606, align 8, !tbaa !1
  %403 = load %struct.symtab*, %struct.symtab** %map, align 8, !tbaa !1
  %arraydecay607 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cbuf, i32 0, i32 0
  %arraydecay608 = getelementptr inbounds [10 x i8*], [10 x i8*]* %argvect, i32 0, i32 0
  %404 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call609 = call i8* @map_lookup(%struct.symtab* %403, i8* %arraydecay607, i8** %arraydecay608, i32* %rstat, %struct.envelope* %404)
  store i8* %call609, i8** %replac, align 8, !tbaa !1
  %405 = load i8*, i8** %replac, align 8, !tbaa !1
  %cmp610 = icmp ne i8* %405, null
  %conv611 = zext i1 %cmp610 to i32
  store i32 %conv611, i32* %external, align 4, !tbaa !5
  %406 = load i8*, i8** %replac, align 8, !tbaa !1
  %cmp612 = icmp eq i8* %406, null
  br i1 %cmp612, label %land.lhs.true.614, label %if.end.620

land.lhs.true.614:                                ; preds = %cond.end.603
  %407 = load i8**, i8*** %default_rvp, align 8, !tbaa !1
  %cmp615 = icmp ne i8** %407, null
  br i1 %cmp615, label %if.then.617, label %if.end.620

if.then.617:                                      ; preds = %land.lhs.true.614
  %408 = load i8**, i8*** %default_rvp, align 8, !tbaa !1
  %arraydecay618 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cbuf, i32 0, i32 0
  call void @cataddr(i8** %408, i8** null, i8* %arraydecay618, i32 1024, i32 0, i32 0)
  %arraydecay619 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cbuf, i32 0, i32 0
  store i8* %arraydecay619, i8** %replac, align 8, !tbaa !1
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.617, %land.lhs.true.614, %cond.end.603
  %409 = load i8*, i8** %replac, align 8, !tbaa !1
  %cmp621 = icmp eq i8* %409, null
  br i1 %cmp621, label %if.then.623, label %if.else.624

if.then.623:                                      ; preds = %if.end.620
  %410 = load i8**, i8*** %key_rvp, align 8, !tbaa !1
  store i8** %410, i8*** %xpvp481, align 8, !tbaa !1
  br label %if.end.641

if.else.624:                                      ; preds = %if.end.620
  %411 = load i8*, i8** %replac, align 8, !tbaa !1
  %412 = load i8, i8* %411, align 1, !tbaa !15
  %conv625 = sext i8 %412 to i32
  %cmp626 = icmp eq i32 %conv625, 0
  br i1 %cmp626, label %if.then.628, label %if.else.631

if.then.628:                                      ; preds = %if.else.624
  %arrayidx629 = getelementptr inbounds [1 x i8*], [1 x i8*]* %nullpvp, i32 0, i64 0
  store i8* null, i8** %arrayidx629, align 8, !tbaa !1
  %arraydecay630 = getelementptr inbounds [1 x i8*], [1 x i8*]* %nullpvp, i32 0, i32 0
  store i8** %arraydecay630, i8*** %xpvp481, align 8, !tbaa !1
  br label %if.end.640

if.else.631:                                      ; preds = %if.else.624
  %413 = load i8*, i8** %replac, align 8, !tbaa !1
  %arraydecay632 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf483, i32 0, i32 0
  %414 = load i32, i32* %external, align 4, !tbaa !5
  %tobool633 = icmp ne i32 %414, 0
  %cond634 = select i1 %tobool633, i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @IntTokenTab, i32 0, i32 0)
  %call635 = call i8** @prescan(i8* %413, i32 0, i8* %arraydecay632, i32 1256, i8** null, i8* %cond634, i32 0)
  store i8** %call635, i8*** %xpvp481, align 8, !tbaa !1
  %415 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %cmp636 = icmp eq i8** %415, null
  br i1 %cmp636, label %if.then.638, label %if.end.639

if.then.638:                                      ; preds = %if.else.631
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.673

if.end.639:                                       ; preds = %if.else.631
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.then.628
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.then.623
  %416 = load i8**, i8*** %hbrvp, align 8, !tbaa !1
  store i8** %416, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.642

for.cond.642:                                     ; preds = %for.inc.655, %if.end.641
  %417 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %418 = load i8*, i8** %417, align 8, !tbaa !1
  %cmp643 = icmp ne i8* %418, null
  br i1 %cmp643, label %for.body.645, label %for.end.657

for.body.645:                                     ; preds = %for.cond.642
  %419 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool646 = getelementptr inbounds %struct.envelope, %struct.envelope* %419, i32 0, i32 52
  %420 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool646, align 8, !tbaa !16
  %421 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %422 = load i8*, i8** %421, align 8, !tbaa !1
  %call647 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %420, i8* %422)
  %423 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr648 = getelementptr inbounds i8*, i8** %423, i32 1
  store i8** %incdec.ptr648, i8*** %avp, align 8, !tbaa !1
  store i8* %call647, i8** %423, align 8, !tbaa !1
  %424 = load i8**, i8*** %avp, align 8, !tbaa !1
  %425 = load i32, i32* %maxatom.addr, align 4, !tbaa !5
  %idxprom649 = sext i32 %425 to i64
  %arrayidx650 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i64 %idxprom649
  %cmp651 = icmp uge i8** %424, %arrayidx650
  br i1 %cmp651, label %if.then.653, label %if.end.654

if.then.653:                                      ; preds = %for.body.645
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.673

if.end.654:                                       ; preds = %for.body.645
  br label %for.inc.655

for.inc.655:                                      ; preds = %if.end.654
  %426 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %incdec.ptr656 = getelementptr inbounds i8*, i8** %426, i32 1
  store i8** %incdec.ptr656, i8*** %xpvp481, align 8, !tbaa !1
  br label %for.cond.642

for.end.657:                                      ; preds = %for.cond.642
  %427 = load i8**, i8*** %avp, align 8, !tbaa !1
  %add.ptr658 = getelementptr inbounds i8*, i8** %427, i64 -1
  store i8** %add.ptr658, i8*** %rvp, align 8, !tbaa !1
  %arraydecay659 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %pvpb1, i32 0, i32 0
  store i8** %arraydecay659, i8*** %xpvp481, align 8, !tbaa !1
  br label %for.cond.660

for.cond.660:                                     ; preds = %if.end.671, %for.end.657
  %428 = load i8**, i8*** %xpvp481, align 8, !tbaa !1
  %incdec.ptr661 = getelementptr inbounds i8*, i8** %428, i32 1
  store i8** %incdec.ptr661, i8*** %xpvp481, align 8, !tbaa !1
  %429 = load i8*, i8** %428, align 8, !tbaa !1
  %430 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr662 = getelementptr inbounds i8*, i8** %430, i32 1
  store i8** %incdec.ptr662, i8*** %avp, align 8, !tbaa !1
  store i8* %429, i8** %430, align 8, !tbaa !1
  %cmp663 = icmp ne i8* %429, null
  br i1 %cmp663, label %for.body.665, label %for.end.672

for.body.665:                                     ; preds = %for.cond.660
  %431 = load i8**, i8*** %avp, align 8, !tbaa !1
  %432 = load i32, i32* %maxatom.addr, align 4, !tbaa !5
  %idxprom666 = sext i32 %432 to i64
  %arrayidx667 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i64 %idxprom666
  %cmp668 = icmp uge i8** %431, %arrayidx667
  br i1 %cmp668, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %for.body.665
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.673

if.end.671:                                       ; preds = %for.body.665
  br label %for.cond.660

for.end.672:                                      ; preds = %for.cond.660
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.673

cleanup.673:                                      ; preds = %for.end.672, %if.then.670, %if.then.653, %if.then.638, %if.else.504
  %433 = bitcast [1 x i8*]* %nullpvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  %434 = bitcast [1256 x i8]* %pvpbuf483 to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %434) #1
  %435 = bitcast [10 x i8*]* %argvect to i8*
  call void @llvm.lifetime.end(i64 80, i8* %435) #1
  %436 = bitcast [1001 x i8*]* %pvpb1 to i8*
  call void @llvm.lifetime.end(i64 8008, i8* %436) #1
  %437 = bitcast [1024 x i8]* %cbuf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %437) #1
  %438 = bitcast i8*** %default_rvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %438) #1
  %439 = bitcast i8*** %arg_rvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #1
  %440 = bitcast i8*** %key_rvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %440) #1
  %441 = bitcast i8** %mapname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %441) #1
  %442 = bitcast %struct.symtab** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %442) #1
  %443 = bitcast i32* %external to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #1
  %444 = bitcast i32* %endtoken to i8*
  call void @llvm.lifetime.end(i64 4, i8* %444) #1
  %445 = bitcast i8** %replac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %445) #1
  %446 = bitcast i64* %trsize482 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %446) #1
  %447 = bitcast i8*** %xpvp481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %447) #1
  %448 = bitcast i8*** %hbrvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %448) #1
  %cleanup.dest.689 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.689, label %cleanup.727 [
    i32 0, label %cleanup.cont.690
    i32 28, label %for.inc.691
    i32 20, label %toolong
  ]

cleanup.cont.690:                                 ; preds = %cleanup.673
  br label %for.inc.691

for.inc.691:                                      ; preds = %cleanup.cont.690, %cleanup.673
  %449 = load i8**, i8*** %rvp, align 8, !tbaa !1
  %incdec.ptr692 = getelementptr inbounds i8*, i8** %449, i32 1
  store i8** %incdec.ptr692, i8*** %rvp, align 8, !tbaa !1
  br label %for.cond.477

for.end.693:                                      ; preds = %for.cond.477
  %arraydecay694 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i32 0
  %450 = load i32, i32* %reclevel.addr, align 4, !tbaa !5
  %451 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call695 = call i32 @callsubr(i8** %arraydecay694, i32 %450, %struct.envelope* %451)
  store i32 %call695, i32* %status, align 4, !tbaa !5
  %452 = load i32, i32* %rstat, align 4, !tbaa !5
  %cmp696 = icmp eq i32 %452, 0
  br i1 %cmp696, label %if.then.701, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %for.end.693
  %453 = load i32, i32* %status, align 4, !tbaa !5
  %cmp699 = icmp eq i32 %453, 75
  br i1 %cmp699, label %if.then.701, label %if.end.702

if.then.701:                                      ; preds = %lor.lhs.false.698, %for.end.693
  %454 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %454, i32* %rstat, align 4, !tbaa !5
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.701, %lor.lhs.false.698
  %arraydecay703 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i32 0
  store i8** %arraydecay703, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.704

for.cond.704:                                     ; preds = %for.body.708, %if.end.702
  %455 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr705 = getelementptr inbounds i8*, i8** %455, i32 1
  store i8** %incdec.ptr705, i8*** %avp, align 8, !tbaa !1
  %456 = load i8*, i8** %455, align 8, !tbaa !1
  %cmp706 = icmp ne i8* %456, null
  br i1 %cmp706, label %for.body.708, label %for.end.709

for.body.708:                                     ; preds = %for.cond.704
  br label %for.cond.704

for.end.709:                                      ; preds = %for.cond.704
  %457 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %458 = bitcast i8** %457 to i8*
  %arraydecay710 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i32 0
  %459 = bitcast i8** %arraydecay710 to i8*
  %460 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arraydecay711 = getelementptr inbounds [1001 x i8*], [1001 x i8*]* %npvp, i32 0, i32 0
  %sub.ptr.lhs.cast712 = ptrtoint i8** %460 to i64
  %sub.ptr.rhs.cast713 = ptrtoint i8** %arraydecay711 to i64
  %sub.ptr.sub714 = sub i64 %sub.ptr.lhs.cast712, %sub.ptr.rhs.cast713
  %sub.ptr.div715 = sdiv exact i64 %sub.ptr.sub714, 8
  %conv716 = trunc i64 %sub.ptr.div715 to i32
  %conv717 = sext i32 %conv716 to i64
  %mul718 = mul i64 %conv717, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %458, i8* %459, i64 %mul718, i32 1, i1 false)
  %461 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv719 = zext i8 %461 to i32
  %cmp720 = icmp sge i32 %conv719, 4
  br i1 %cmp720, label %land.lhs.true.722, label %if.end.726

land.lhs.true.722:                                ; preds = %for.end.709
  %462 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool723 = icmp ne i32 %462, 0
  br i1 %tobool723, label %if.end.726, label %if.then.724

if.then.724:                                      ; preds = %land.lhs.true.722
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0))
  %call725 = call %struct.sm_file* @sm_debug_file()
  %463 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call725, i8** %463)
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.724, %land.lhs.true.722, %for.end.709
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.727

cleanup.727:                                      ; preds = %if.end.726, %cleanup.673, %cleanup.468, %if.end.278, %if.end.79, %if.then.48
  %464 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %464) #1
  %cleanup.dest.728 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.728, label %cleanup.746 [
    i32 0, label %cleanup.cont.729
    i32 2, label %for.end.730
    i32 3, label %for.cond
  ]

cleanup.cont.729:                                 ; preds = %cleanup.727
  br label %for.cond

for.end.730:                                      ; preds = %cleanup.727, %for.cond
  %465 = load i8, i8* @OpMode, align 1, !tbaa !15
  %conv731 = sext i8 %465 to i32
  %cmp732 = icmp eq i32 %conv731, 116
  br i1 %cmp732, label %if.then.734, label %if.else.736

if.then.734:                                      ; preds = %for.end.730
  %466 = load i8*, i8** %prefix, align 8, !tbaa !1
  %467 = load i8*, i8** %rulename, align 8, !tbaa !1
  %call735 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i8* %466, i8* %467)
  %468 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i8** %468)
  br label %if.end.745

if.else.736:                                      ; preds = %for.end.730
  %469 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv737 = zext i8 %469 to i32
  %cmp738 = icmp sge i32 %conv737, 1
  br i1 %cmp738, label %land.lhs.true.740, label %if.end.744

land.lhs.true.740:                                ; preds = %if.else.736
  %470 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool741 = icmp ne i32 %470, 0
  br i1 %tobool741, label %if.end.744, label %if.then.742

if.then.742:                                      ; preds = %land.lhs.true.740
  %471 = load i8*, i8** %prefix, align 8, !tbaa !1
  %472 = load i8*, i8** %rulename, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i8* %471, i8* %472)
  %call743 = call %struct.sm_file* @sm_debug_file()
  %473 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call743, i8** %473)
  br label %if.end.744

if.end.744:                                       ; preds = %if.then.742, %land.lhs.true.740, %if.else.736
  br label %if.end.745

if.end.745:                                       ; preds = %if.end.744, %if.then.734
  %474 = load i32, i32* %rstat, align 4, !tbaa !5
  store i32 %474, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.746

cleanup.746:                                      ; preds = %if.end.745, %cleanup.727, %if.then.33, %if.then.29, %if.then.25, %if.then
  %475 = bitcast [6 x i8]* %name to i8*
  call void @llvm.lifetime.end(i64 6, i8* %475) #1
  %476 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %476) #1
  %477 = bitcast [1001 x i8*]* %npvp to i8*
  call void @llvm.lifetime.end(i64 8008, i8* %477) #1
  %478 = bitcast [9 x %struct.match]* %mlist to i8*
  call void @llvm.lifetime.end(i64 216, i8* %478) #1
  %479 = bitcast i32* %loopcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %ruleno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast %struct.rewrite** %rwr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %482) #1
  %483 = bitcast %struct.match** %mlp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %483) #1
  %484 = bitcast i8*** %rvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %484) #1
  %485 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %485) #1
  %486 = bitcast i8** %prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %486) #1
  %487 = bitcast i8** %rulename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %487) #1
  %488 = bitcast i8** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %488) #1
  %489 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %489) #1
  %490 = load i32, i32* %retval
  ret i32 %490

unreachable:                                      ; preds = %cleanup.560
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct.address* @buildaddr(i8** %tv, %struct.address* %a, i32 %flags, %struct.envelope* %e) #0 {
entry:
  %retval = alloca %struct.address*, align 8
  %tv.addr = alloca i8**, align 8
  %a.addr = alloca %struct.address*, align 8
  %flags.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %tempfail = alloca i32, align 4
  %maxatom = alloca i32, align 4
  %mp = alloca %struct.mailer**, align 8
  %m = alloca %struct.mailer*, align 8
  %p = alloca i8*, align 8
  %mname = alloca i8*, align 8
  %hostp = alloca i8**, align 8
  %hbuf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %ep = alloca %struct.errcodes*, align 8
  %fmt = alloca [16 x i8], align 16
  %off = alloca i32, align 4
  store i8** %tv, i8*** %tv.addr, align 8, !tbaa !1
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %tempfail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %tempfail, align 4, !tbaa !5
  %1 = bitcast i32* %maxatom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.mailer*** %mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %mname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8*** %hostp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [257 x i8]* %hbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %7) #1
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 24), align 1, !tbaa !15
  %conv = zext i8 %8 to i32
  %cmp = icmp sge i32 %conv, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %flags.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.164, i32 0, i32 0), i32 %10)
  %call = call %struct.sm_file* @sm_debug_file()
  %11 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call, i8** %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 1000, i32* %maxatom, align 4, !tbaa !5
  %12 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.address* %12, null
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 52
  %14 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %15 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call5 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %14, i64 192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1978, i32 %15)
  %16 = bitcast i8* %call5 to %struct.address*
  store %struct.address* %16, %struct.address** %a.addr, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %18 = bitcast %struct.address* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 192, i32 1, i1 false)
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !15
  %19 = load i32, i32* @DefaultNotify, align 4, !tbaa !5
  %conv7 = sext i32 %19 to i64
  %20 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 5
  %21 = load i64, i64* %q_flags, align 8, !tbaa !38
  %or = or i64 %21, %conv7
  store i64 %or, i64* %q_flags, align 8, !tbaa !38
  %22 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %22, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %23, null
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %24 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %24, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !15
  %conv10 = sext i8 %26 to i32
  %and = and i32 %conv10, 255
  %cmp11 = icmp ne i32 %and, 150
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.6
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.165, i32 0, i32 0))
  br label %badaddr

badaddr:                                          ; preds = %if.then.257, %if.then.248, %if.end.233, %if.then.46, %if.then.13
  %27 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %27, 75
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %badaddr
  %28 = load i32, i32* %tempfail, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false.16, %badaddr
  %29 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %29, i32 0, i32 21
  store i16 3, i16* %q_state, align 2, !tbaa !18
  br label %if.end.20

if.else:                                          ; preds = %lor.lhs.false.16
  %30 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state19 = getelementptr inbounds %struct.address, %struct.address* %30, i32 0, i32 21
  store i16 2, i16* %q_state19, align 2, !tbaa !18
  %31 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %31, i32 0, i32 4
  store %struct.mailer* @errormailer, %struct.mailer** %q_mailer, align 8, !tbaa !39
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %32 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %32, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false
  %33 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr, i8*** %tv.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %incdec.ptr, align 8, !tbaa !1
  store i8* %34, i8** %mname, align 8, !tbaa !1
  %35 = load i32, i32* %maxatom, align 4, !tbaa !5
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %maxatom, align 4, !tbaa !5
  %36 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr22, i8*** %tv.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %incdec.ptr22, align 8, !tbaa !1
  %cmp23 = icmp ne i8* %37, null
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.33

land.lhs.true.25:                                 ; preds = %if.end.21
  %38 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %38, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !15
  %conv26 = sext i8 %40 to i32
  %and27 = and i32 %conv26, 255
  %cmp28 = icmp eq i32 %and27, 151
  br i1 %cmp28, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %land.lhs.true.25
  %41 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %incdec.ptr31, i8*** %tv.addr, align 8, !tbaa !1
  store i8** %incdec.ptr31, i8*** %hostp, align 8, !tbaa !1
  %42 = load i32, i32* %maxatom, align 4, !tbaa !5
  %dec32 = add nsw i32 %42, -1
  store i32 %dec32, i32* %maxatom, align 4, !tbaa !5
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.25, %if.end.21
  store i8** null, i8*** %hostp, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.30
  %43 = load i32, i32* %maxatom, align 4, !tbaa !5
  %dec35 = add nsw i32 %43, -1
  store i32 %dec35, i32* %maxatom, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.34
  %44 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %44, align 8, !tbaa !1
  %cmp36 = icmp ne i8* %45, null
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %46 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %47 = load i8*, i8** %46, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !15
  %conv38 = sext i8 %48 to i32
  %and39 = and i32 %conv38, 255
  %cmp40 = icmp ne i32 %and39, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %cmp40, %land.rhs ]
  br i1 %49, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %50 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %incdec.ptr42, i8*** %tv.addr, align 8, !tbaa !1
  %51 = load i32, i32* %maxatom, align 4, !tbaa !5
  %dec43 = add nsw i32 %51, -1
  store i32 %dec43, i32* %maxatom, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %52 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %53 = load i8*, i8** %52, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %53, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %while.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.166, i32 0, i32 0))
  br label %badaddr

if.end.47:                                        ; preds = %while.end
  %54 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %55 = load i8**, i8*** %hostp, align 8, !tbaa !1
  %cmp48 = icmp eq i8** %54, %55
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.47
  store i8** null, i8*** %hostp, align 8, !tbaa !1
  br label %if.end.56

if.else.51:                                       ; preds = %if.end.47
  %56 = load i8**, i8*** %hostp, align 8, !tbaa !1
  %cmp52 = icmp ne i8** %56, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.51
  %57 = load i8**, i8*** %hostp, align 8, !tbaa !1
  %58 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8*, i8** %58, i64 -1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  call void @cataddr(i8** %57, i8** %add.ptr, i8* %arraydecay, i32 257, i32 0, i32 0)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.else.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.50
  %59 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %incdec.ptr57, i8*** %tv.addr, align 8, !tbaa !1
  call void @cataddr(i8** %incdec.ptr57, i8** null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i32 258, i32 32, i32 0)
  %60 = load i32, i32* %maxatom, align 4, !tbaa !5
  %dec58 = add nsw i32 %60, -1
  store i32 %dec58, i32* %maxatom, align 4, !tbaa !5
  %61 = load i8*, i8** %mname, align 8, !tbaa !1
  %call59 = call i32 @sm_strcasecmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0))
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.234

if.then.62:                                       ; preds = %if.end.56
  %62 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer63 = getelementptr inbounds %struct.address, %struct.address* %62, i32 0, i32 4
  store %struct.mailer* @errormailer, %struct.mailer** %q_mailer63, align 8, !tbaa !39
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool64 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 52
  %64 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool64, align 8, !tbaa !16
  %call65 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %64, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0))
  %65 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %65, i32 0, i32 1
  store i8* %call65, i8** %q_user, align 8, !tbaa !17
  %66 = load i8**, i8*** %hostp, align 8, !tbaa !1
  %cmp66 = icmp ne i8** %66, null
  br i1 %cmp66, label %if.then.68, label %if.else.139

if.then.68:                                       ; preds = %if.then.62
  %67 = bitcast %struct.errcodes** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool69 = getelementptr inbounds %struct.envelope, %struct.envelope* %68, i32 0, i32 52
  %69 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool69, align 8, !tbaa !16
  %arraydecay70 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call71 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %69, i8* %arraydecay70)
  %70 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %70, i32 0, i32 3
  store i8* %call71, i8** %q_host, align 8, !tbaa !40
  %arraydecay72 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call73 = call i8* @strchr(i8* %arraydecay72, i32 46) #1
  %cmp74 = icmp ne i8* %call73, null
  br i1 %cmp74, label %if.then.76, label %if.else.89

if.then.76:                                       ; preds = %if.then.68
  %71 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool77 = getelementptr inbounds %struct.envelope, %struct.envelope* %71, i32 0, i32 52
  %72 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool77, align 8, !tbaa !16
  %arraydecay78 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call79 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %72, i8* %arraydecay78)
  %73 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %73, i32 0, i32 17
  store i8* %call79, i8** %q_status, align 8, !tbaa !23
  br label %do.body

do.body:                                          ; preds = %if.then.76
  %74 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %74, 0
  br i1 %cmp80, label %if.then.85, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %do.body
  %75 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp83 = icmp eq i32 %75, 75
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %lor.lhs.false.82, %do.body
  %arraydecay86 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call87 = call i32 @dsntoexitstat(i8* %arraydecay86)
  store i32 %call87, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %lor.lhs.false.82
  br label %do.cond

do.cond:                                          ; preds = %if.end.88
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.138

if.else.89:                                       ; preds = %if.then.68
  %arrayidx90 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i64 0
  %76 = load i8, i8* %arrayidx90, align 1, !tbaa !15
  %conv91 = sext i8 %76 to i32
  %and92 = and i32 %conv91, -128
  %cmp93 = icmp eq i32 %and92, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.116

land.lhs.true.95:                                 ; preds = %if.else.89
  %arrayidx96 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i64 0
  %77 = load i8, i8* %arrayidx96, align 1, !tbaa !15
  %conv97 = sext i8 %77 to i32
  %idxprom = sext i32 %conv97 to i64
  %call98 = call i16** @__ctype_b_loc() #9
  %78 = load i16*, i16** %call98, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i16, i16* %78, i64 %idxprom
  %79 = load i16, i16* %arrayidx99, align 2, !tbaa !24
  %conv100 = zext i16 %79 to i32
  %and101 = and i32 %conv100, 2048
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.116

if.then.103:                                      ; preds = %land.lhs.true.95
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  %80 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp105 = icmp eq i32 %80, 0
  br i1 %cmp105, label %if.then.110, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %do.body.104
  %81 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp108 = icmp eq i32 %81, 75
  br i1 %cmp108, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %lor.lhs.false.107, %do.body.104
  %arraydecay111 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call112 = call i32 @atoi(i8* %arraydecay111) #10
  store i32 %call112, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %lor.lhs.false.107
  br label %do.cond.114

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  br label %if.end.137

if.else.116:                                      ; preds = %land.lhs.true.95, %if.else.89
  store %struct.errcodes* getelementptr inbounds ([9 x %struct.errcodes], [9 x %struct.errcodes]* @ErrorCodes, i32 0, i32 0), %struct.errcodes** %ep, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.116
  %82 = load %struct.errcodes*, %struct.errcodes** %ep, align 8, !tbaa !1
  %ec_name = getelementptr inbounds %struct.errcodes, %struct.errcodes* %82, i32 0, i32 0
  %83 = load i8*, i8** %ec_name, align 8, !tbaa !41
  %cmp117 = icmp ne i8* %83, null
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load %struct.errcodes*, %struct.errcodes** %ep, align 8, !tbaa !1
  %ec_name119 = getelementptr inbounds %struct.errcodes, %struct.errcodes* %84, i32 0, i32 0
  %85 = load i8*, i8** %ec_name119, align 8, !tbaa !41
  %arraydecay120 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call121 = call i32 @sm_strcasecmp(i8* %85, i8* %arraydecay120)
  %cmp122 = icmp eq i32 %call121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.body
  br label %for.end

if.end.125:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.125
  %86 = load %struct.errcodes*, %struct.errcodes** %ep, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds %struct.errcodes, %struct.errcodes* %86, i32 1
  store %struct.errcodes* %incdec.ptr126, %struct.errcodes** %ep, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.124, %for.cond
  br label %do.body.127

do.body.127:                                      ; preds = %for.end
  %87 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp128 = icmp eq i32 %87, 0
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %do.body.127
  %88 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp131 = icmp eq i32 %88, 75
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.130, %do.body.127
  %89 = load %struct.errcodes*, %struct.errcodes** %ep, align 8, !tbaa !1
  %ec_code = getelementptr inbounds %struct.errcodes, %struct.errcodes* %89, i32 0, i32 1
  %90 = load i32, i32* %ec_code, align 4, !tbaa !43
  store i32 %90, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %lor.lhs.false.130
  br label %do.cond.135

do.cond.135:                                      ; preds = %if.end.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %do.end.115
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %do.end
  %91 = bitcast %struct.errcodes** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  br label %if.end.151

if.else.139:                                      ; preds = %if.then.62
  %92 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host140 = getelementptr inbounds %struct.address, %struct.address* %92, i32 0, i32 3
  store i8* null, i8** %q_host140, align 8, !tbaa !40
  br label %do.body.141

do.body.141:                                      ; preds = %if.else.139
  %93 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %93, 0
  br i1 %cmp142, label %if.then.147, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %do.body.141
  %94 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp145 = icmp eq i32 %94, 75
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false.144, %do.body.141
  store i32 69, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %lor.lhs.false.144
  br label %do.cond.149

do.cond.149:                                      ; preds = %if.end.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %if.end.138
  call void @stripquotes(i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0))
  %95 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 0), align 1, !tbaa !15
  %conv152 = sext i8 %95 to i32
  %and153 = and i32 %conv152, -128
  %cmp154 = icmp eq i32 %and153, 0
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.232

land.lhs.true.156:                                ; preds = %if.end.151
  %96 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 0), align 1, !tbaa !15
  %conv157 = sext i8 %96 to i32
  %idxprom158 = sext i32 %conv157 to i64
  %call159 = call i16** @__ctype_b_loc() #9
  %97 = load i16*, i16** %call159, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i16, i16* %97, i64 %idxprom158
  %98 = load i16, i16* %arrayidx160, align 2, !tbaa !24
  %conv161 = zext i16 %98 to i32
  %and162 = and i32 %conv161, 2048
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.else.232

land.lhs.true.164:                                ; preds = %land.lhs.true.156
  %99 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 1), align 1, !tbaa !15
  %conv165 = sext i8 %99 to i32
  %and166 = and i32 %conv165, -128
  %cmp167 = icmp eq i32 %and166, 0
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.232

land.lhs.true.169:                                ; preds = %land.lhs.true.164
  %100 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 1), align 1, !tbaa !15
  %conv170 = sext i8 %100 to i32
  %idxprom171 = sext i32 %conv170 to i64
  %call172 = call i16** @__ctype_b_loc() #9
  %101 = load i16*, i16** %call172, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i16, i16* %101, i64 %idxprom171
  %102 = load i16, i16* %arrayidx173, align 2, !tbaa !24
  %conv174 = zext i16 %102 to i32
  %and175 = and i32 %conv174, 2048
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %land.lhs.true.177, label %if.else.232

land.lhs.true.177:                                ; preds = %land.lhs.true.169
  %103 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 2), align 1, !tbaa !15
  %conv178 = sext i8 %103 to i32
  %and179 = and i32 %conv178, -128
  %cmp180 = icmp eq i32 %and179, 0
  br i1 %cmp180, label %land.lhs.true.182, label %if.else.232

land.lhs.true.182:                                ; preds = %land.lhs.true.177
  %104 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 2), align 1, !tbaa !15
  %conv183 = sext i8 %104 to i32
  %idxprom184 = sext i32 %conv183 to i64
  %call185 = call i16** @__ctype_b_loc() #9
  %105 = load i16*, i16** %call185, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i16, i16* %105, i64 %idxprom184
  %106 = load i16, i16* %arrayidx186, align 2, !tbaa !24
  %conv187 = zext i16 %106 to i32
  %and188 = and i32 %conv187, 2048
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %land.lhs.true.190, label %if.else.232

land.lhs.true.190:                                ; preds = %land.lhs.true.182
  %107 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 3), align 1, !tbaa !15
  %conv191 = sext i8 %107 to i32
  %cmp192 = icmp eq i32 %conv191, 32
  br i1 %cmp192, label %if.then.194, label %if.else.232

if.then.194:                                      ; preds = %land.lhs.true.190
  %108 = bitcast [16 x i8]* %fmt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %108) #1
  %109 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %call195 = call i32 @isenhsc(i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 4), i32 32)
  store i32 %call195, i32* %off, align 4, !tbaa !5
  %cmp196 = icmp sgt i32 %call195, 0
  br i1 %cmp196, label %if.then.198, label %if.else.202

if.then.198:                                      ; preds = %if.then.194
  %110 = load i32, i32* %off, align 4, !tbaa !5
  %add = add nsw i32 %110, 4
  %idxprom199 = sext i32 %add to i64
  %arrayidx200 = getelementptr inbounds [258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 %idxprom199
  store i8 0, i8* %arrayidx200, align 1, !tbaa !15
  %111 = load i32, i32* %off, align 4, !tbaa !5
  %add201 = add nsw i32 %111, 5
  store i32 %add201, i32* %off, align 4, !tbaa !5
  br label %if.end.203

if.else.202:                                      ; preds = %if.then.194
  store i32 4, i32* %off, align 4, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 3), align 1, !tbaa !15
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.then.198
  %arraydecay204 = getelementptr inbounds [16 x i8], [16 x i8]* %fmt, i32 0, i32 0
  %call205 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay204, i64 16, i32 2, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0))
  %112 = load i32, i32* %off, align 4, !tbaa !5
  %cmp206 = icmp sgt i32 %112, 4
  br i1 %cmp206, label %if.then.208, label %if.else.211

if.then.208:                                      ; preds = %if.end.203
  %arraydecay209 = getelementptr inbounds [16 x i8], [16 x i8]* %fmt, i32 0, i32 0
  %113 = load i32, i32* %off, align 4, !tbaa !5
  %idx.ext = sext i32 %113 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i64 %idx.ext
  call void (i8*, ...) @usrerr(i8* %arraydecay209, i8* %add.ptr210)
  br label %if.end.226

if.else.211:                                      ; preds = %if.end.203
  %arraydecay212 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call213 = call i32 @isenhsc(i8* %arraydecay212, i32 0)
  %cmp214 = icmp sgt i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.else.221

if.then.216:                                      ; preds = %if.else.211
  %arraydecay217 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %arraydecay218 = getelementptr inbounds [16 x i8], [16 x i8]* %fmt, i32 0, i32 0
  %114 = load i32, i32* %off, align 4, !tbaa !5
  %idx.ext219 = sext i32 %114 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i64 %idx.ext219
  call void (i8*, i8*, ...) @usrerrenh(i8* %arraydecay217, i8* %arraydecay218, i8* %add.ptr220)
  br label %if.end.225

if.else.221:                                      ; preds = %if.else.211
  %arraydecay222 = getelementptr inbounds [16 x i8], [16 x i8]* %fmt, i32 0, i32 0
  %115 = load i32, i32* %off, align 4, !tbaa !5
  %idx.ext223 = sext i32 %115 to i64
  %add.ptr224 = getelementptr inbounds i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i64 %idx.ext223
  call void (i8*, ...) @usrerr(i8* %arraydecay222, i8* %add.ptr224)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.221, %if.then.216
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.208
  %116 = load i8, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 0), align 1, !tbaa !15
  %conv227 = sext i8 %116 to i32
  %cmp228 = icmp eq i32 %conv227, 52
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.226
  store i32 1, i32* %tempfail, align 4, !tbaa !5
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.end.226
  %117 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast [16 x i8]* %fmt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %118) #1
  br label %if.end.233

if.else.232:                                      ; preds = %land.lhs.true.190, %land.lhs.true.182, %land.lhs.true.177, %land.lhs.true.169, %land.lhs.true.164, %land.lhs.true.156, %if.end.151
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0))
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.232, %if.end.231
  br label %badaddr

if.end.234:                                       ; preds = %if.end.56
  store %struct.mailer** getelementptr inbounds ([26 x %struct.mailer*], [26 x %struct.mailer*]* @Mailer, i32 0, i32 0), %struct.mailer*** %mp, align 8, !tbaa !1
  br label %for.cond.235

for.cond.235:                                     ; preds = %if.end.244, %if.end.234
  %119 = load %struct.mailer**, %struct.mailer*** %mp, align 8, !tbaa !1
  %incdec.ptr236 = getelementptr inbounds %struct.mailer*, %struct.mailer** %119, i32 1
  store %struct.mailer** %incdec.ptr236, %struct.mailer*** %mp, align 8, !tbaa !1
  %120 = load %struct.mailer*, %struct.mailer** %119, align 8, !tbaa !1
  store %struct.mailer* %120, %struct.mailer** %m, align 8, !tbaa !1
  %cmp237 = icmp ne %struct.mailer* %120, null
  br i1 %cmp237, label %for.body.239, label %for.end.245

for.body.239:                                     ; preds = %for.cond.235
  %121 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %121, i32 0, i32 0
  %122 = load i8*, i8** %m_name, align 8, !tbaa !44
  %123 = load i8*, i8** %mname, align 8, !tbaa !1
  %call240 = call i32 @sm_strcasecmp(i8* %122, i8* %123)
  %cmp241 = icmp eq i32 %call240, 0
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %for.body.239
  br label %for.end.245

if.end.244:                                       ; preds = %for.body.239
  br label %for.cond.235

for.end.245:                                      ; preds = %if.then.243, %for.cond.235
  %124 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %cmp246 = icmp eq %struct.mailer* %124, null
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %for.end.245
  %125 = load i8*, i8** %mname, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.169, i32 0, i32 0), i8* %125)
  br label %badaddr

if.end.249:                                       ; preds = %for.end.245
  %126 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %127 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer250 = getelementptr inbounds %struct.address, %struct.address* %127, i32 0, i32 4
  store %struct.mailer* %126, %struct.mailer** %q_mailer250, align 8, !tbaa !39
  %128 = load i8**, i8*** %hostp, align 8, !tbaa !1
  %cmp251 = icmp eq i8** %128, null
  br i1 %cmp251, label %if.then.253, label %if.else.260

if.then.253:                                      ; preds = %if.end.249
  %129 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %129, i32 0, i32 5
  %arrayidx254 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %130 = load i32, i32* %arrayidx254, align 4, !tbaa !5
  %and255 = and i32 %130, 4096
  %tobool256 = icmp ne i32 %and255, 0
  br i1 %tobool256, label %if.end.258, label %if.then.257

if.then.257:                                      ; preds = %if.then.253
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.170, i32 0, i32 0))
  br label %badaddr

if.end.258:                                       ; preds = %if.then.253
  %131 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host259 = getelementptr inbounds %struct.address, %struct.address* %131, i32 0, i32 3
  store i8* null, i8** %q_host259, align 8, !tbaa !40
  br label %if.end.265

if.else.260:                                      ; preds = %if.end.249
  %132 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool261 = getelementptr inbounds %struct.envelope, %struct.envelope* %132, i32 0, i32 52
  %133 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool261, align 8, !tbaa !16
  %arraydecay262 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call263 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %133, i8* %arraydecay262)
  %134 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host264 = getelementptr inbounds %struct.address, %struct.address* %134, i32 0, i32 3
  store i8* %call263, i8** %q_host264, align 8, !tbaa !40
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.260, %if.end.258
  store i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  %135 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags266 = getelementptr inbounds %struct.mailer, %struct.mailer* %135, i32 0, i32 5
  %arrayidx267 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags266, i32 0, i64 2
  %136 = load i32, i32* %arrayidx267, align 4, !tbaa !5
  %and268 = and i32 %136, 1
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %land.lhs.true.270, label %if.end.280

land.lhs.true.270:                                ; preds = %if.end.265
  %137 = load i8*, i8** %p, align 8, !tbaa !1
  %138 = load i8, i8* %137, align 1, !tbaa !15
  %conv271 = sext i8 %138 to i32
  %cmp272 = icmp eq i32 %conv271, 64
  br i1 %cmp272, label %if.then.274, label %if.end.280

if.then.274:                                      ; preds = %land.lhs.true.270
  %139 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr275 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr275, i8** %p, align 8, !tbaa !1
  %140 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %incdec.ptr276 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %incdec.ptr276, i8*** %tv.addr, align 8, !tbaa !1
  %141 = load i32, i32* %maxatom, align 4, !tbaa !5
  %dec277 = add nsw i32 %141, -1
  store i32 %dec277, i32* %maxatom, align 4, !tbaa !5
  %142 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags278 = getelementptr inbounds %struct.address, %struct.address* %142, i32 0, i32 5
  %143 = load i64, i64* %q_flags278, align 8, !tbaa !38
  %or279 = or i64 %143, 4
  store i64 %or279, i64* %q_flags278, align 8, !tbaa !38
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.274, %land.lhs.true.270, %if.end.265
  %144 = load i8*, i8** %p, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !15
  %conv281 = sext i8 %145 to i32
  %cmp282 = icmp eq i32 %conv281, 34
  br i1 %cmp282, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %if.end.280
  %146 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr285 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr285, i8** %p, align 8, !tbaa !1
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %if.end.280
  %147 = load i8*, i8** %p, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !15
  %conv287 = sext i8 %148 to i32
  %cmp288 = icmp eq i32 %conv287, 124
  br i1 %cmp288, label %land.lhs.true.290, label %if.else.297

land.lhs.true.290:                                ; preds = %if.end.286
  %149 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags291 = getelementptr inbounds %struct.mailer, %struct.mailer* %149, i32 0, i32 5
  %arrayidx292 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags291, i32 0, i64 3
  %150 = load i32, i32* %arrayidx292, align 4, !tbaa !5
  %and293 = and i32 %150, 268435456
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %if.then.295, label %if.else.297

if.then.295:                                      ; preds = %land.lhs.true.290
  %151 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  store %struct.mailer* %151, %struct.mailer** %m, align 8, !tbaa !1
  %152 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer296 = getelementptr inbounds %struct.address, %struct.address* %152, i32 0, i32 4
  store %struct.mailer* %151, %struct.mailer** %q_mailer296, align 8, !tbaa !39
  br label %if.end.329

if.else.297:                                      ; preds = %land.lhs.true.290, %if.end.286
  %153 = load i8*, i8** %p, align 8, !tbaa !1
  %154 = load i8, i8* %153, align 1, !tbaa !15
  %conv298 = sext i8 %154 to i32
  %cmp299 = icmp eq i32 %conv298, 47
  br i1 %cmp299, label %land.lhs.true.301, label %if.else.308

land.lhs.true.301:                                ; preds = %if.else.297
  %155 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags302 = getelementptr inbounds %struct.mailer, %struct.mailer* %155, i32 0, i32 5
  %arrayidx303 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags302, i32 0, i64 1
  %156 = load i32, i32* %arrayidx303, align 4, !tbaa !5
  %and304 = and i32 %156, 32768
  %tobool305 = icmp ne i32 %and304, 0
  br i1 %tobool305, label %if.then.306, label %if.else.308

if.then.306:                                      ; preds = %land.lhs.true.301
  %157 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  store %struct.mailer* %157, %struct.mailer** %m, align 8, !tbaa !1
  %158 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer307 = getelementptr inbounds %struct.address, %struct.address* %158, i32 0, i32 4
  store %struct.mailer* %157, %struct.mailer** %q_mailer307, align 8, !tbaa !39
  br label %if.end.328

if.else.308:                                      ; preds = %land.lhs.true.301, %if.else.297
  %159 = load i8*, i8** %p, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !15
  %conv309 = sext i8 %160 to i32
  %cmp310 = icmp eq i32 %conv309, 58
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.327

land.lhs.true.312:                                ; preds = %if.else.308
  %161 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags313 = getelementptr inbounds %struct.mailer, %struct.mailer* %161, i32 0, i32 5
  %arrayidx314 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags313, i32 0, i64 1
  %162 = load i32, i32* %arrayidx314, align 4, !tbaa !5
  %and315 = and i32 %162, 67108864
  %tobool316 = icmp ne i32 %and315, 0
  br i1 %tobool316, label %if.then.317, label %if.end.327

if.then.317:                                      ; preds = %land.lhs.true.312
  call void @stripquotes(i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0))
  %call318 = call i32 @sm_strncasecmp(i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i64 9)
  %cmp319 = icmp eq i32 %call318, 0
  br i1 %cmp319, label %if.then.321, label %if.end.326

if.then.321:                                      ; preds = %if.then.317
  %163 = load %struct.mailer*, %struct.mailer** @InclMailer, align 8, !tbaa !1
  store %struct.mailer* %163, %struct.mailer** %m, align 8, !tbaa !1
  %164 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer322 = getelementptr inbounds %struct.address, %struct.address* %164, i32 0, i32 4
  store %struct.mailer* %163, %struct.mailer** %q_mailer322, align 8, !tbaa !39
  %165 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool323 = getelementptr inbounds %struct.envelope, %struct.envelope* %165, i32 0, i32 52
  %166 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool323, align 8, !tbaa !16
  %call324 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %166, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i64 9))
  %167 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user325 = getelementptr inbounds %struct.address, %struct.address* %167, i32 0, i32 1
  store i8* %call324, i8** %q_user325, align 8, !tbaa !17
  %168 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %168, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.326:                                       ; preds = %if.then.317
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %land.lhs.true.312, %if.else.308
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.then.306
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.then.295
  %169 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %169, i32 0, i32 46
  %170 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host330 = getelementptr inbounds %struct.address, %struct.address* %170, i32 0, i32 3
  %171 = load i8*, i8** %q_host330, align 8, !tbaa !40
  %172 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 104, i8* %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2165, i32 %172)
  %173 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp331 = icmp sge i32 %173, 10
  br i1 %cmp331, label %if.then.337, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %if.end.329
  %174 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and334 = and i32 %174, 3
  %cmp335 = icmp ne i32 %and334, 0
  br i1 %cmp335, label %if.end.347, label %if.then.337

if.then.337:                                      ; preds = %lor.lhs.false.333, %if.end.329
  %175 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %176 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %177 = load i32, i32* %maxatom, align 4, !tbaa !5
  %call338 = call i32 @rewrite(i8** %175, i32 2, i32 0, %struct.envelope* %176, i32 %177)
  %178 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_re_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %178, i32 0, i32 12
  %179 = load i16, i16* %m_re_rwset, align 2, !tbaa !46
  %conv339 = sext i16 %179 to i32
  %cmp340 = icmp sgt i32 %conv339, 0
  br i1 %cmp340, label %if.then.342, label %if.end.346

if.then.342:                                      ; preds = %if.then.337
  %180 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %181 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_re_rwset343 = getelementptr inbounds %struct.mailer, %struct.mailer* %181, i32 0, i32 12
  %182 = load i16, i16* %m_re_rwset343, align 2, !tbaa !46
  %conv344 = sext i16 %182 to i32
  %183 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %184 = load i32, i32* %maxatom, align 4, !tbaa !5
  %call345 = call i32 @rewrite(i8** %180, i32 %conv344, i32 0, %struct.envelope* %183, i32 %184)
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.342, %if.then.337
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %lor.lhs.false.333
  %185 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  %186 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %187 = load i32, i32* %maxatom, align 4, !tbaa !5
  %call348 = call i32 @rewrite(i8** %185, i32 4, i32 0, %struct.envelope* %186, i32 %187)
  %188 = load i8**, i8*** %tv.addr, align 8, !tbaa !1
  call void @cataddr(i8** %188, i8** null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0), i32 258, i32 0, i32 1)
  %189 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool349 = getelementptr inbounds %struct.envelope, %struct.envelope* %189, i32 0, i32 52
  %190 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool349, align 8, !tbaa !16
  %call350 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %190, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @buildaddr.ubuf, i32 0, i32 0))
  %191 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user351 = getelementptr inbounds %struct.address, %struct.address* %191, i32 0, i32 1
  store i8* %call350, i8** %q_user351, align 8, !tbaa !17
  %192 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host352 = getelementptr inbounds %struct.address, %struct.address* %192, i32 0, i32 3
  %193 = load i8*, i8** %q_host352, align 8, !tbaa !40
  %cmp353 = icmp ne i8* %193, null
  br i1 %cmp353, label %land.lhs.true.355, label %if.end.362

land.lhs.true.355:                                ; preds = %if.end.347
  %194 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags356 = getelementptr inbounds %struct.mailer, %struct.mailer* %194, i32 0, i32 5
  %arrayidx357 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags356, i32 0, i64 3
  %195 = load i32, i32* %arrayidx357, align 4, !tbaa !5
  %and358 = and i32 %195, 256
  %tobool359 = icmp ne i32 %and358, 0
  br i1 %tobool359, label %if.end.362, label %if.then.360

if.then.360:                                      ; preds = %land.lhs.true.355
  %196 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host361 = getelementptr inbounds %struct.address, %struct.address* %196, i32 0, i32 3
  %197 = load i8*, i8** %q_host361, align 8, !tbaa !40
  call void @makelower(i8* %197)
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.360, %land.lhs.true.355, %if.end.347
  %198 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags363 = getelementptr inbounds %struct.mailer, %struct.mailer* %198, i32 0, i32 5
  %arrayidx364 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags363, i32 0, i64 3
  %199 = load i32, i32* %arrayidx364, align 4, !tbaa !5
  %and365 = and i32 %199, 2097152
  %tobool366 = icmp ne i32 %and365, 0
  br i1 %tobool366, label %if.end.369, label %if.then.367

if.then.367:                                      ; preds = %if.end.362
  %200 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user368 = getelementptr inbounds %struct.address, %struct.address* %200, i32 0, i32 1
  %201 = load i8*, i8** %q_user368, align 8, !tbaa !17
  call void @makelower(i8* %201)
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.367, %if.end.362
  %202 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 24), align 1, !tbaa !15
  %conv370 = zext i8 %202 to i32
  %cmp371 = icmp sge i32 %conv370, 6
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.377

land.lhs.true.373:                                ; preds = %if.end.369
  %203 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool374 = icmp ne i32 %203, 0
  br i1 %tobool374, label %if.end.377, label %if.then.375

if.then.375:                                      ; preds = %land.lhs.true.373
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.172, i32 0, i32 0))
  %call376 = call %struct.sm_file* @sm_debug_file()
  %204 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call376, %struct.address* %204, i32 0)
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.375, %land.lhs.true.373, %if.end.369
  %205 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %205, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.377, %if.then.321, %if.end.20
  %206 = bitcast [257 x i8]* %hbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %206) #1
  %207 = bitcast i8*** %hostp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i8** %mname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast %struct.mailer*** %mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i32* %maxatom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %tempfail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = load %struct.address*, %struct.address** %retval
  ret %struct.address* %214
}

; Function Attrs: nounwind uwtable
define internal i32 @hasctrlchar(i8* %addr, i32 %isrcpt, i32 %complain) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %isrcpt.addr = alloca i32, align 4
  %complain.addr = alloca i32, align 4
  %quoted = alloca i32, align 4
  %len = alloca i32, align 4
  %result = alloca i8*, align 8
  %b = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  store i32 %isrcpt, i32* %isrcpt.addr, align 4, !tbaa !5
  store i32 %complain, i32* %complain.addr, align 4, !tbaa !5
  %0 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %quoted, align 4, !tbaa !5
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %len, align 4, !tbaa !5
  %2 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %result, align 8, !tbaa !1
  %3 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8* %4, i8** %b, align 8, !tbaa !1
  %5 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %conv = sext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %len, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %len, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %inc, 255
  br i1 %cmp3, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %for.body
  %9 = load i32, i32* %complain.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.5
  %10 = load i8*, i8** %b, align 8, !tbaa !1
  %call = call i32 @shorten_rfc822_string(i8* %10, i64 255)
  %11 = load i8*, i8** %b, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* %11, i32 255)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0), i8** %result, align 8, !tbaa !1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %for.body
  %12 = load i32, i32* @EightBitAddrOK, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.8
  %13 = load i32, i32* %quoted, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.end.19, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp slt i32 %conv12, 32
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.11
  %16 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 127
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true.11
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.145, i32 0, i32 0), i8** %result, align 8, !tbaa !1
  %18 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8 63, i8* %18, align 1, !tbaa !15
  br label %for.inc

if.end.19:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.end.8
  %19 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !15
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 34
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.19
  %21 = load i32, i32* %quoted, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4, !tbaa !5
  br label %if.end.36

if.else:                                          ; preds = %if.end.19
  %22 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !15
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 92
  br i1 %cmp26, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.else
  %24 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %addr.addr, align 8, !tbaa !1
  %25 = load i8, i8* %incdec.ptr, align 1, !tbaa !15
  %conv29 = sext i8 %25 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.28
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i32 0, i32 0), i8** %result, align 8, !tbaa !1
  %26 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr33, i8** %addr.addr, align 8, !tbaa !1
  store i8 63, i8* %incdec.ptr33, align 1, !tbaa !15
  br label %for.end

if.end.34:                                        ; preds = %if.then.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  %27 = load i32, i32* @EightBitAddrOK, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.end.50, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %if.end.36
  %28 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !15
  %conv39 = sext i8 %29 to i32
  %and = and i32 %conv39, 224
  %cmp40 = icmp eq i32 %and, 128
  br i1 %cmp40, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %land.lhs.true.38
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %30 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %30, 0
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %do.body
  %31 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %31, 75
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.45, %do.body
  store i32 64, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %lor.lhs.false.45
  br label %do.cond

do.cond:                                          ; preds = %if.end.49
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.147, i32 0, i32 0), i8** %result, align 8, !tbaa !1
  %32 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8 63, i8* %32, align 1, !tbaa !15
  br label %for.inc

if.end.50:                                        ; preds = %land.lhs.true.38, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.50, %do.end, %if.then.18
  %33 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr51, i8** %addr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  %34 = load i32, i32* %quoted, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %34, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.end
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.148, i32 0, i32 0), i8** %result, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %for.end
  %35 = load i8*, i8** %result, align 8, !tbaa !1
  %cmp55 = icmp ne i8* %35, null
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.64

land.lhs.true.57:                                 ; preds = %if.end.54
  %36 = load i32, i32* %complain.addr, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %36, 0
  br i1 %tobool58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %land.lhs.true.57
  %37 = load i32, i32* %isrcpt.addr, align 4, !tbaa !5
  %tobool60 = icmp ne i32 %37, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.59
  %38 = load i8*, i8** %b, align 8, !tbaa !1
  %39 = load i8*, i8** %result, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.149, i32 0, i32 0), i8* %38, i8* %39)
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.59
  %40 = load i8*, i8** %b, align 8, !tbaa !1
  %41 = load i8*, i8** %result, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.150, i32 0, i32 0), i8* %40, i8* %41)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true.57, %if.end.54
  %42 = load i8*, i8** %result, align 8, !tbaa !1
  %cmp65 = icmp ne i8* %42, null
  %conv66 = zext i1 %cmp65 to i32
  store i32 %conv66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.6, %if.then
  %43 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal void @allocaddr(%struct.address* %a, i32 %flags, i8* %paddr, %struct.envelope* %e) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  %flags.addr = alloca i32, align 4
  %paddr.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store i8* %paddr, i8** %paddr.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 24), align 1, !tbaa !15
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %3 = load i8*, i8** %paddr.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.151, i32 0, i32 0), i32 %2, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %paddr.addr, align 8, !tbaa !1
  %5 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %5, i32 0, i32 0
  store i8* %4, i8** %q_paddr, align 8, !tbaa !19
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %6, i32 0, i32 1
  %7 = load i8*, i8** %q_user, align 8, !tbaa !17
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user5 = getelementptr inbounds %struct.address, %struct.address* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %q_user5, align 8, !tbaa !17
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %9, i32 0, i32 3
  %10 = load i8*, i8** %q_host, align 8, !tbaa !40
  %cmp7 = icmp eq i8* %10, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %11 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host10 = getelementptr inbounds %struct.address, %struct.address* %11, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %q_host10, align 8, !tbaa !40
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %12 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and = and i32 %12, 16
  %cmp12 = icmp ne i32 %and, 0
  br i1 %cmp12, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.end.11
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 52
  %14 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %15 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host15 = getelementptr inbounds %struct.address, %struct.address* %15, i32 0, i32 3
  %16 = load i8*, i8** %q_host15, align 8, !tbaa !40
  %call = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %14, i8* %16)
  %17 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host16 = getelementptr inbounds %struct.address, %struct.address* %17, i32 0, i32 3
  store i8* %call, i8** %q_host16, align 8, !tbaa !40
  %18 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user17 = getelementptr inbounds %struct.address, %struct.address* %18, i32 0, i32 1
  %19 = load i8*, i8** %q_user17, align 8, !tbaa !17
  %20 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr18 = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 0
  %21 = load i8*, i8** %q_paddr18, align 8, !tbaa !19
  %cmp19 = icmp ne i8* %19, %21
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.14
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool22 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 52
  %23 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool22, align 8, !tbaa !16
  %24 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user23 = getelementptr inbounds %struct.address, %struct.address* %24, i32 0, i32 1
  %25 = load i8*, i8** %q_user23, align 8, !tbaa !17
  %call24 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %23, i8* %25)
  %26 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user25 = getelementptr inbounds %struct.address, %struct.address* %26, i32 0, i32 1
  store i8* %call24, i8** %q_user25, align 8, !tbaa !17
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  %27 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr28 = getelementptr inbounds %struct.address, %struct.address* %27, i32 0, i32 0
  %28 = load i8*, i8** %q_paddr28, align 8, !tbaa !19
  %cmp29 = icmp eq i8* %28, null
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.27
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool32 = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 52
  %30 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool32, align 8, !tbaa !16
  %31 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user33 = getelementptr inbounds %struct.address, %struct.address* %31, i32 0, i32 1
  %32 = load i8*, i8** %q_user33, align 8, !tbaa !17
  %call34 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %30, i8* %32)
  %33 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr35 = getelementptr inbounds %struct.address, %struct.address* %33, i32 0, i32 0
  store i8* %call34, i8** %q_paddr35, align 8, !tbaa !19
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end.27
  %34 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_qgrp = getelementptr inbounds %struct.address, %struct.address* %34, i32 0, i32 23
  store i32 -3, i32* %q_qgrp, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @rscap(i8* %rwset, i8* %p1, i8* %p2, %struct.envelope* %e, i8*** %pvp, i8* %pvpbuf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %rwset.addr = alloca i8*, align 8
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %pvp.addr = alloca i8***, align 8
  %pvpbuf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %bufsize = alloca i64, align 8
  %rstat = alloca i32, align 4
  %rsno = alloca i32, align 4
  %saveQuickAbort = alloca i32, align 4
  %saveSuprErrs = alloca i32, align 4
  %buf0 = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %_h = alloca %struct.sm_exc_handler, align 8
  store i8* %rwset, i8** %rwset.addr, align 8, !tbaa !1
  store i8* %p1, i8** %p1.addr, align 8, !tbaa !1
  store i8* %p2, i8** %p2.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8*** %pvp, i8**** %pvp.addr, align 8, !tbaa !1
  store i8* %pvpbuf, i8** %pvpbuf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %bufsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store volatile i32 0, i32* %rstat, align 4, !tbaa !5
  %3 = bitcast i32* %rsno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %saveQuickAbort to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %5, i32* %saveQuickAbort, align 4, !tbaa !5
  %6 = bitcast i32* %saveSuprErrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* @SuprErrs, align 4, !tbaa !5
  store i32 %7, i32* %saveSuprErrs, align 4, !tbaa !5
  %8 = bitcast [2048 x i8]* %buf0 to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %8) #1
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 48), align 1, !tbaa !15
  %conv = zext i8 %9 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %13, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %cond.true ], [ %14, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i8* %11, i8* %12, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %15 = load i8***, i8**** %pvp.addr, align 8, !tbaa !1
  %cmp4 = icmp ne i8*** %15, null
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3341, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.142, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %16, %if.end
  %17 = phi i1 [ true, %if.end ], [ false, %16 ]
  %lor.ext = zext i1 %17 to i32
  %18 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %call = call i32 @strtorwset(i8* %18, i8** null, i32 0)
  store i32 %call, i32* %rsno, align 4, !tbaa !5
  %19 = load i32, i32* %rsno, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.end
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.end
  %20 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %cmp10 = icmp ne i8* %20, null
  br i1 %cmp10, label %if.then.12, label %if.else.22

if.then.12:                                       ; preds = %if.end.9
  %21 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %21) #10
  %22 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %call14 = call i64 @strlen(i8* %22) #10
  %add = add i64 %call13, %call14
  %add15 = add i64 %add, 2
  store i64 %add15, i64* %bufsize, align 8, !tbaa !35
  %23 = load i64, i64* %bufsize, align 8, !tbaa !35
  %cmp16 = icmp ugt i64 %23, 2048
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.12
  %24 = load i64, i64* %bufsize, align 8, !tbaa !35
  %25 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call19 = call i8* @sm_malloc_tagged_x(i64 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3350, i32 %25)
  store volatile i8* %call19, i8** %buf, align 8, !tbaa !1
  br label %if.end.20

if.else:                                          ; preds = %if.then.12
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf0, i32 0, i32 0
  store volatile i8* %arraydecay, i8** %buf, align 8, !tbaa !1
  store i64 2048, i64* %bufsize, align 8, !tbaa !35
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %26 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %27 = load i64, i64* %bufsize, align 8, !tbaa !35
  %28 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %call21 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* %28, i32 155, i8* %29)
  br label %if.end.33

if.else.22:                                       ; preds = %if.end.9
  %30 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %call23 = call i64 @strlen(i8* %30) #10
  %add24 = add i64 %call23, 1
  store i64 %add24, i64* %bufsize, align 8, !tbaa !35
  %31 = load i64, i64* %bufsize, align 8, !tbaa !35
  %cmp25 = icmp ugt i64 %31, 2048
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.22
  %32 = load i64, i64* %bufsize, align 8, !tbaa !35
  %33 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call28 = call i8* @sm_malloc_tagged_x(i64 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3362, i32 %33)
  store volatile i8* %call28, i8** %buf, align 8, !tbaa !1
  br label %if.end.31

if.else.29:                                       ; preds = %if.else.22
  %arraydecay30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf0, i32 0, i32 0
  store volatile i8* %arraydecay30, i8** %buf, align 8, !tbaa !1
  store i64 2048, i64* %bufsize, align 8, !tbaa !35
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.27
  %34 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %35 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %36 = load i64, i64* %bufsize, align 8, !tbaa !35
  %call32 = call i64 @sm_strlcpy(i8* %34, i8* %35, i64 %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.31, %if.end.20
  %37 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %37) #1
  br label %do.body

do.body:                                          ; preds = %if.end.33
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !47
  %38 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %38, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !49
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !50
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay34 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call35 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay34, i32 0) #12
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.58

if.then.38:                                       ; preds = %do.body
  store i32 1, i32* @SuprErrs, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  %39 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %40 = load i8*, i8** %pvpbuf.addr, align 8, !tbaa !1
  %41 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call39 = call i8** @prescan(i8* %39, i32 0, i8* %40, i32 %41, i8** null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @IntTokenTab, i32 0, i32 0), i32 0)
  %42 = load i8***, i8**** %pvp.addr, align 8, !tbaa !1
  store i8** %call39, i8*** %42, align 8, !tbaa !1
  %43 = load i8***, i8**** %pvp.addr, align 8, !tbaa !1
  %44 = load i8**, i8*** %43, align 8, !tbaa !1
  %cmp40 = icmp ne i8** %44, null
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.38
  %45 = load i8***, i8**** %pvp.addr, align 8, !tbaa !1
  %46 = load i8**, i8*** %45, align 8, !tbaa !1
  %47 = load i32, i32* %rsno, align 4, !tbaa !5
  %48 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %49 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call43 = call i32 @rewrite(i8** %46, i32 %47, i32 0, %struct.envelope* %48, i32 %49)
  store volatile i32 %call43, i32* %rstat, align 4, !tbaa !5
  br label %if.end.52

if.else.44:                                       ; preds = %if.then.38
  %50 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 48), align 1, !tbaa !15
  %conv45 = zext i8 %50 to i32
  %cmp46 = icmp sge i32 %conv45, 2
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.51

land.lhs.true.48:                                 ; preds = %if.else.44
  %51 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %51, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.143, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.48, %if.else.44
  store volatile i32 65, i32* %rstat, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.42
  %52 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp53 = icmp eq %struct.sm_exc_handler* %52, %_h
  br i1 %cmp53, label %lor.end.56, label %lor.rhs.55

lor.rhs.55:                                       ; preds = %if.end.52
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3385, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.56

lor.end.56:                                       ; preds = %53, %if.end.52
  %54 = phi i1 [ true, %if.end.52 ], [ false, %53 ]
  %lor.ext57 = zext i1 %54 to i32
  br label %if.end.58

if.end.58:                                        ; preds = %lor.end.56, %do.body
  %eh_context59 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay60 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context59, i32 0, i32 0
  %call61 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay60, i32 0) #12
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %if.end.58
  %55 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %arraydecay65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf0, i32 0, i32 0
  %cmp66 = icmp ne i8* %55, %arraydecay65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.64
  %56 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3389)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.then.64
  %57 = load i32, i32* %saveSuprErrs, align 4, !tbaa !5
  store i32 %57, i32* @SuprErrs, align 4, !tbaa !5
  %58 = load i32, i32* %saveQuickAbort, align 4, !tbaa !5
  store i32 %58, i32* @QuickAbort, align 4, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !15
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.58
  br label %do.cond

do.cond:                                          ; preds = %if.end.70
  br label %do.end

do.end:                                           ; preds = %do.cond
  %eh_state71 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %59 = load i32, i32* %eh_state71, align 4, !tbaa !50
  %cmp72 = icmp eq i32 %59, 2
  br i1 %cmp72, label %if.then.74, label %if.else.87

if.then.74:                                       ; preds = %do.end
  %60 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp75 = icmp eq %struct.sm_exc_handler* %60, %_h
  br i1 %cmp75, label %lor.end.78, label %lor.rhs.77

lor.rhs.77:                                       ; preds = %if.then.74
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3396, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.78

lor.end.78:                                       ; preds = %61, %if.then.74
  %62 = phi i1 [ true, %if.then.74 ], [ false, %61 ]
  %lor.ext79 = zext i1 %62 to i32
  %eh_parent80 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %63 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent80, align 8, !tbaa !49
  store %struct.sm_exc_handler* %63, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value81 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %64 = load %struct.sm_exc*, %struct.sm_exc** %eh_value81, align 8, !tbaa !47
  %cmp82 = icmp ne %struct.sm_exc* %64, null
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %lor.end.78
  %eh_value85 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %65 = load %struct.sm_exc*, %struct.sm_exc** %eh_value85, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %65) #11
  unreachable

if.end.86:                                        ; preds = %lor.end.78
  br label %if.end.101

if.else.87:                                       ; preds = %do.end
  %eh_state88 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %66 = load i32, i32* %eh_state88, align 4, !tbaa !50
  %cmp89 = icmp eq i32 %66, 0
  br i1 %cmp89, label %if.then.91, label %if.else.98

if.then.91:                                       ; preds = %if.else.87
  %eh_value92 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %67 = load %struct.sm_exc*, %struct.sm_exc** %eh_value92, align 8, !tbaa !47
  %cmp93 = icmp ne %struct.sm_exc* %67, null
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.then.91
  %eh_value96 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %68 = load %struct.sm_exc*, %struct.sm_exc** %eh_value96, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %68) #11
  unreachable

if.end.97:                                        ; preds = %if.then.91
  br label %if.end.100

if.else.98:                                       ; preds = %if.else.87
  %eh_value99 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %69 = load %struct.sm_exc*, %struct.sm_exc** %eh_value99, align 8, !tbaa !47
  call void @sm_exc_free(%struct.sm_exc* %69)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.98, %if.end.97
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.86
  %70 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %70) #1
  %71 = load volatile i32, i32* %rstat, align 4, !tbaa !5
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.101, %if.then.8
  %72 = bitcast [2048 x i8]* %buf0 to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %72) #1
  %73 = bitcast i32* %saveSuprErrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %saveQuickAbort to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %rsno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i64* %bufsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i32 @name2qid(i8*) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare void @message(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @printaddr(%struct.sm_file* %fp, %struct.address* %a, i32 %follow) #0 {
entry:
  %fp.addr = alloca %struct.sm_file*, align 8
  %a.addr = alloca %struct.address*, align 8
  %follow.addr = alloca i32, align 4
  %m = alloca %struct.mailer*, align 8
  %pseudomailer = alloca %struct.mailer, align 8
  %qfp = alloca %struct.qflags*, align 8
  %firstone = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i32 %follow, i32* %follow.addr, align 4, !tbaa !5
  %0 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.mailer* %pseudomailer to i8*
  call void @llvm.lifetime.start(i64 168, i8* %1) #1
  %2 = bitcast %struct.qflags** %qfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %firstone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.address* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %5, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.147, %if.end
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.address* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %8 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %7, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), %struct.address* %8)
  %9 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call3 = call i32 @sm_io_flush(%struct.sm_file* %9, i32 -2)
  %10 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %10, i32 0, i32 4
  %11 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !39
  store %struct.mailer* %11, %struct.mailer** %m, align 8, !tbaa !1
  %12 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.mailer* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  store %struct.mailer* %pseudomailer, %struct.mailer** %m, align 8, !tbaa !1
  %13 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mno = getelementptr inbounds %struct.mailer, %struct.mailer* %13, i32 0, i32 6
  store i16 -1, i16* %m_mno, align 2, !tbaa !51
  %14 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8** %m_name, align 8, !tbaa !44
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.body
  %15 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %16 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %16, i32 0, i32 0
  %17 = load i8*, i8** %q_paddr, align 8, !tbaa !19
  %cmp7 = icmp eq i8* %17, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %18 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr8 = getelementptr inbounds %struct.address, %struct.address* %18, i32 0, i32 0
  %19 = load i8*, i8** %q_paddr8, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), %cond.true ], [ %19, %cond.false ]
  %20 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_mno9 = getelementptr inbounds %struct.mailer, %struct.mailer* %20, i32 0, i32 6
  %21 = load i16, i16* %m_mno9, align 2, !tbaa !51
  %conv = sext i16 %21 to i32
  %22 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_name10 = getelementptr inbounds %struct.mailer, %struct.mailer* %22, i32 0, i32 0
  %23 = load i8*, i8** %m_name10, align 8, !tbaa !44
  %24 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %24, i32 0, i32 3
  %25 = load i8*, i8** %q_host, align 8, !tbaa !40
  %cmp11 = icmp eq i8* %25, null
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  br label %cond.end.16

cond.false.14:                                    ; preds = %cond.end
  %26 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host15 = getelementptr inbounds %struct.address, %struct.address* %26, i32 0, i32 3
  %27 = load i8*, i8** %q_host15, align 8, !tbaa !40
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), %cond.true.13 ], [ %27, %cond.false.14 ]
  %call18 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %15, i32 -2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i32 0, i32 0), i8* %cond, i32 %conv, i8* %23, i8* %cond17)
  %28 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %29 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %29, i32 0, i32 1
  %30 = load i8*, i8** %q_user, align 8, !tbaa !17
  %31 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_ruser = getelementptr inbounds %struct.address, %struct.address* %31, i32 0, i32 2
  %32 = load i8*, i8** %q_ruser, align 8, !tbaa !52
  %cmp19 = icmp eq i8* %32, null
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.16
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end.16
  %33 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_ruser23 = getelementptr inbounds %struct.address, %struct.address* %33, i32 0, i32 2
  %34 = load i8*, i8** %q_ruser23, align 8, !tbaa !52
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), %cond.true.21 ], [ %34, %cond.false.22 ]
  %call26 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %28, i32 -2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i8* %30, i8* %cond25)
  %35 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %35, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0))
  %36 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %36, i32 0, i32 21
  %37 = load i16, i16* %q_state, align 2, !tbaa !18
  %conv28 = sext i16 %37 to i32
  switch i32 %conv28, label %sw.default [
    i32 0, label %sw.bb
    i32 6, label %sw.bb.30
    i32 2, label %sw.bb.32
    i32 3, label %sw.bb.34
    i32 4, label %sw.bb.36
    i32 1, label %sw.bb.38
    i32 5, label %sw.bb.40
    i32 7, label %sw.bb.42
    i32 8, label %sw.bb.44
    i32 9, label %sw.bb.46
    i32 10, label %sw.bb.48
    i32 11, label %sw.bb.50
    i32 12, label %sw.bb.52
    i32 13, label %sw.bb.54
    i32 14, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %cond.end.24
  %38 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call29 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %38, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0))
  br label %sw.epilog

sw.bb.30:                                         ; preds = %cond.end.24
  %39 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call31 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %39, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0))
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end.24
  %40 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call33 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %40, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0))
  br label %sw.epilog

sw.bb.34:                                         ; preds = %cond.end.24
  %41 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %41, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0))
  br label %sw.epilog

sw.bb.36:                                         ; preds = %cond.end.24
  %42 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call37 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %42, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0))
  br label %sw.epilog

sw.bb.38:                                         ; preds = %cond.end.24
  %43 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call39 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %43, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0))
  br label %sw.epilog

sw.bb.40:                                         ; preds = %cond.end.24
  %44 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call41 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %44, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0))
  br label %sw.epilog

sw.bb.42:                                         ; preds = %cond.end.24
  %45 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call43 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %45, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0))
  br label %sw.epilog

sw.bb.44:                                         ; preds = %cond.end.24
  %46 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call45 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %46, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0))
  br label %sw.epilog

sw.bb.46:                                         ; preds = %cond.end.24
  %47 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call47 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %47, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0))
  br label %sw.epilog

sw.bb.48:                                         ; preds = %cond.end.24
  %48 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call49 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %48, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0))
  br label %sw.epilog

sw.bb.50:                                         ; preds = %cond.end.24
  %49 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call51 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %49, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0))
  br label %sw.epilog

sw.bb.52:                                         ; preds = %cond.end.24
  %50 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call53 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %50, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0))
  br label %sw.epilog

sw.bb.54:                                         ; preds = %cond.end.24
  %51 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call55 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %51, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0))
  br label %sw.epilog

sw.bb.56:                                         ; preds = %cond.end.24
  %52 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call57 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %52, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.24
  %53 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %54 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state58 = getelementptr inbounds %struct.address, %struct.address* %54, i32 0, i32 21
  %55 = load i16, i16* %q_state58, align 2, !tbaa !18
  %conv59 = sext i16 %55 to i32
  %call60 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %53, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 %conv59)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb
  %56 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %57 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %57, i32 0, i32 10
  %58 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !53
  %59 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %59, i32 0, i32 11
  %60 = load %struct.address*, %struct.address** %q_alias, align 8, !tbaa !54
  %61 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_uid = getelementptr inbounds %struct.address, %struct.address* %61, i32 0, i32 6
  %62 = load i32, i32* %q_uid, align 4, !tbaa !55
  %63 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_gid = getelementptr inbounds %struct.address, %struct.address* %63, i32 0, i32 7
  %64 = load i32, i32* %q_gid, align 4, !tbaa !56
  %call61 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %56, i32 -2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.98, i32 0, i32 0), %struct.address* %58, %struct.address* %60, i32 %62, i32 %64)
  %65 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %66 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %66, i32 0, i32 5
  %67 = load i64, i64* %q_flags, align 8, !tbaa !38
  %call62 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %65, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i64 %67)
  store i32 1, i32* %firstone, align 4, !tbaa !5
  store %struct.qflags* getelementptr inbounds ([23 x %struct.qflags], [23 x %struct.qflags]* @AddressFlags, i32 0, i32 0), %struct.qflags** %qfp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %68 = load %struct.qflags*, %struct.qflags** %qfp, align 8, !tbaa !1
  %qf_name = getelementptr inbounds %struct.qflags, %struct.qflags* %68, i32 0, i32 0
  %69 = load i8*, i8** %qf_name, align 8, !tbaa !57
  %cmp63 = icmp ne i8* %69, null
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags65 = getelementptr inbounds %struct.address, %struct.address* %70, i32 0, i32 5
  %71 = load i64, i64* %q_flags65, align 8, !tbaa !38
  %72 = load %struct.qflags*, %struct.qflags** %qfp, align 8, !tbaa !1
  %qf_bit = getelementptr inbounds %struct.qflags, %struct.qflags* %72, i32 0, i32 1
  %73 = load i64, i64* %qf_bit, align 8, !tbaa !59
  %and = and i64 %71, %73
  %cmp66 = icmp ne i64 %and, 0
  br i1 %cmp66, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %for.body
  br label %for.inc

if.end.69:                                        ; preds = %for.body
  %74 = load i32, i32* %firstone, align 4, !tbaa !5
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %if.end.69
  %75 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call71 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %75, i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.69
  store i32 0, i32* %firstone, align 4, !tbaa !5
  %76 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %77 = load %struct.qflags*, %struct.qflags** %qfp, align 8, !tbaa !1
  %qf_name73 = getelementptr inbounds %struct.qflags, %struct.qflags* %77, i32 0, i32 0
  %78 = load i8*, i8** %qf_name73, align 8, !tbaa !57
  %call74 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %76, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* %78)
  br label %for.inc

for.inc:                                          ; preds = %if.end.72, %if.then.68
  %79 = load %struct.qflags*, %struct.qflags** %qfp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.qflags, %struct.qflags* %79, i32 1
  store %struct.qflags* %incdec.ptr, %struct.qflags** %qfp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call75 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %80, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0))
  %81 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %82 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_owner = getelementptr inbounds %struct.address, %struct.address* %82, i32 0, i32 12
  %83 = load i8*, i8** %q_owner, align 8, !tbaa !60
  %cmp76 = icmp eq i8* %83, null
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %for.end
  br label %cond.end.81

cond.false.79:                                    ; preds = %for.end
  %84 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_owner80 = getelementptr inbounds %struct.address, %struct.address* %84, i32 0, i32 12
  %85 = load i8*, i8** %q_owner80, align 8, !tbaa !60
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.78
  %cond82 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.78 ], [ %85, %cond.false.79 ]
  %86 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_home = getelementptr inbounds %struct.address, %struct.address* %86, i32 0, i32 8
  %87 = load i8*, i8** %q_home, align 8, !tbaa !61
  %cmp83 = icmp eq i8* %87, null
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.end.81
  br label %cond.end.88

cond.false.86:                                    ; preds = %cond.end.81
  %88 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_home87 = getelementptr inbounds %struct.address, %struct.address* %88, i32 0, i32 8
  %89 = load i8*, i8** %q_home87, align 8, !tbaa !61
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.86, %cond.true.85
  %cond89 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.85 ], [ %89, %cond.false.86 ]
  %90 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_fullname = getelementptr inbounds %struct.address, %struct.address* %90, i32 0, i32 9
  %91 = load i8*, i8** %q_fullname, align 8, !tbaa !62
  %cmp90 = icmp eq i8* %91, null
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.88
  br label %cond.end.95

cond.false.93:                                    ; preds = %cond.end.88
  %92 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_fullname94 = getelementptr inbounds %struct.address, %struct.address* %92, i32 0, i32 9
  %93 = load i8*, i8** %q_fullname94, align 8, !tbaa !62
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.92
  %cond96 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.92 ], [ %93, %cond.false.93 ]
  %call97 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %81, i32 -2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i32 0, i32 0), i8* %cond82, i8* %cond89, i8* %cond96)
  %94 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %95 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_orcpt = getelementptr inbounds %struct.address, %struct.address* %95, i32 0, i32 16
  %96 = load i8*, i8** %q_orcpt, align 8, !tbaa !63
  %cmp98 = icmp eq i8* %96, null
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.end.95
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.end.95
  %97 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_orcpt102 = getelementptr inbounds %struct.address, %struct.address* %97, i32 0, i32 16
  %98 = load i8*, i8** %q_orcpt102, align 8, !tbaa !63
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.100
  %cond104 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.100 ], [ %98, %cond.false.101 ]
  %99 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_statmta = getelementptr inbounds %struct.address, %struct.address* %99, i32 0, i32 20
  %100 = load i8*, i8** %q_statmta, align 8, !tbaa !64
  %cmp105 = icmp eq i8* %100, null
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.end.103
  br label %cond.end.110

cond.false.108:                                   ; preds = %cond.end.103
  %101 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_statmta109 = getelementptr inbounds %struct.address, %struct.address* %101, i32 0, i32 20
  %102 = load i8*, i8** %q_statmta109, align 8, !tbaa !64
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.108, %cond.true.107
  %cond111 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.107 ], [ %102, %cond.false.108 ]
  %103 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %103, i32 0, i32 17
  %104 = load i8*, i8** %q_status, align 8, !tbaa !23
  %cmp112 = icmp eq i8* %104, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.end.110
  br label %cond.end.117

cond.false.115:                                   ; preds = %cond.end.110
  %105 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_status116 = getelementptr inbounds %struct.address, %struct.address* %105, i32 0, i32 17
  %106 = load i8*, i8** %q_status116, align 8, !tbaa !23
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.115, %cond.true.114
  %cond118 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.114 ], [ %106, %cond.false.115 ]
  %call119 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %94, i32 -2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0), i8* %cond104, i8* %cond111, i8* %cond118)
  %107 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %108 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_finalrcpt = getelementptr inbounds %struct.address, %struct.address* %108, i32 0, i32 15
  %109 = load i8*, i8** %q_finalrcpt, align 8, !tbaa !65
  %cmp120 = icmp eq i8* %109, null
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.117
  br label %cond.end.125

cond.false.123:                                   ; preds = %cond.end.117
  %110 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_finalrcpt124 = getelementptr inbounds %struct.address, %struct.address* %110, i32 0, i32 15
  %111 = load i8*, i8** %q_finalrcpt124, align 8, !tbaa !65
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.122
  %cond126 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.122 ], [ %111, %cond.false.123 ]
  %call127 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %107, i32 -2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8* %cond126)
  %112 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %113 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_rstatus = getelementptr inbounds %struct.address, %struct.address* %113, i32 0, i32 18
  %114 = load i8*, i8** %q_rstatus, align 8, !tbaa !66
  %cmp128 = icmp eq i8* %114, null
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.end.125
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.end.125
  %115 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_rstatus132 = getelementptr inbounds %struct.address, %struct.address* %115, i32 0, i32 18
  %116 = load i8*, i8** %q_rstatus132, align 8, !tbaa !66
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.130
  %cond134 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.130 ], [ %116, %cond.false.131 ]
  %call135 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %112, i32 -2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.107, i32 0, i32 0), i8* %cond134)
  %117 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %118 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_statdate = getelementptr inbounds %struct.address, %struct.address* %118, i32 0, i32 19
  %119 = load i64, i64* %q_statdate, align 8, !tbaa !67
  %cmp136 = icmp eq i64 %119, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.end.133
  br label %cond.end.142

cond.false.139:                                   ; preds = %cond.end.133
  %120 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_statdate140 = getelementptr inbounds %struct.address, %struct.address* %120, i32 0, i32 19
  %call141 = call i8* @ctime(i64* %q_statdate140) #1
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.139, %cond.true.138
  %cond143 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), %cond.true.138 ], [ %call141, %cond.false.139 ]
  %call144 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %117, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0), i8* %cond143)
  %121 = load i32, i32* %follow.addr, align 4, !tbaa !5
  %tobool145 = icmp ne i32 %121, 0
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %cond.end.142
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %cond.end.142
  %122 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_next148 = getelementptr inbounds %struct.address, %struct.address* %122, i32 0, i32 10
  %123 = load %struct.address*, %struct.address** %q_next148, align 8, !tbaa !53
  store %struct.address* %123, %struct.address** %a.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.146, %if.then
  %124 = bitcast i32* %firstone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.qflags** %qfp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.mailer* %pseudomailer to i8*
  call void @llvm.lifetime.end(i64 168, i8* %126) #1
  %127 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
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

declare %struct.sm_file* @sm_debug_file() #2

declare void @usrerr(i8*, ...) #2

declare i8* @macvalue(i32, %struct.envelope*) #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

declare i64 @sm_strlcat(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @xputs(%struct.sm_file*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare void @printav(%struct.sm_file*, i8**) #2

declare void @syserr(i8*, ...) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @cataddr(i8** %pvp, i8** %evp, i8* %buf, i32 %sz, i32 %spacesub, i32 %external) #0 {
entry:
  %pvp.addr = alloca i8**, align 8
  %evp.addr = alloca i8**, align 8
  %buf.addr = alloca i8*, align 8
  %sz.addr = alloca i32, align 4
  %spacesub.addr = alloca i32, align 4
  %external.addr = alloca i32, align 4
  %oatomtok = alloca i32, align 4
  %natomtok = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %q = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8** %pvp, i8*** %pvp.addr, align 8, !tbaa !1
  store i8** %evp, i8*** %evp.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %sz, i32* %sz.addr, align 4, !tbaa !5
  store i32 %spacesub, i32* %spacesub.addr, align 4, !tbaa !5
  store i32 %external, i32* %external.addr, align 4, !tbaa !5
  %0 = bitcast i32* %oatomtok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %natomtok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32 0, i32* %natomtok, align 4, !tbaa !5
  store i32 0, i32* %oatomtok, align 4, !tbaa !5
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 59), align 1, !tbaa !15
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 14
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %external.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i32 %5)
  %call = call %struct.sm_file* @sm_debug_file()
  %6 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  call void @printav(%struct.sm_file* %call, i8** %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %sz.addr, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %7, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.5:                                         ; preds = %if.end
  %8 = load i32, i32* %spacesub.addr, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %9 = load i8, i8* @SpaceSub, align 1, !tbaa !15
  %conv9 = sext i8 %9 to i32
  store i32 %conv9, i32* %spacesub.addr, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %10 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %cmp11 = icmp eq i8** %10, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8 0, i8* %11, align 1, !tbaa !15
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end.14:                                        ; preds = %if.end.10
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %12, i8** %p, align 8, !tbaa !1
  %13 = load i32, i32* %sz.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %13, 2
  store i32 %sub, i32* %sz.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.72, %if.end.14
  %14 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %14, align 8, !tbaa !1
  %cmp15 = icmp ne i8* %15, null
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load i32, i32* %sz.addr, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %19, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !15
  %conv19 = sext i8 %21 to i32
  %and = and i32 %conv19, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @IntTokenTab, i32 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %natomtok, align 4, !tbaa !5
  %23 = load i32, i32* %oatomtok, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %23, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.35

land.lhs.true.24:                                 ; preds = %while.body
  %24 = load i32, i32* %natomtok, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.35

land.lhs.true.26:                                 ; preds = %land.lhs.true.24
  %25 = load i32, i32* %spacesub.addr, align 4, !tbaa !5
  %cmp27 = icmp ne i32 %25, 256
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %land.lhs.true.26
  %26 = load i32, i32* %spacesub.addr, align 4, !tbaa !5
  %conv30 = trunc i32 %26 to i8
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv30, i8* %27, align 1, !tbaa !15
  %28 = load i32, i32* %sz.addr, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %sz.addr, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %dec, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.26, %land.lhs.true.24, %while.body
  %29 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %29, align 8, !tbaa !1
  store i8* %30, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end.35
  %31 = load i8*, i8** %q, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !15
  %conv36 = sext i8 %32 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %sz.addr, align 4, !tbaa !5
  %dec39 = add nsw i32 %34, -1
  store i32 %dec39, i32* %sz.addr, align 4, !tbaa !5
  %cmp40 = icmp sle i32 %dec39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %for.body
  %35 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr44, i8** %q, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !15
  %conv45 = sext i8 %36 to i32
  store i32 %conv45, i32* %c, align 4, !tbaa !5
  %conv46 = trunc i32 %conv45 to i8
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8, !tbaa !1
  store i8 %conv46, i8* %37, align 1, !tbaa !15
  %38 = load i32, i32* %c, align 4, !tbaa !5
  %and48 = and i32 %38, 255
  %cmp49 = icmp eq i32 %and48, 255
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.60

land.lhs.true.51:                                 ; preds = %if.end.43
  %39 = load i32, i32* %external.addr, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %39, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %land.lhs.true.51
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !15
  %conv54 = sext i8 %41 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %land.lhs.true.53
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr58, i8** %q, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !15
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8 %43, i8* %arrayidx59, align 1, !tbaa !15
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %land.lhs.true.53, %land.lhs.true.51, %if.end.43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.42
  %45 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %46 = load i32, i32* %sz.addr, align 4, !tbaa !5
  %cmp61 = icmp sle i32 %46, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.64:                                        ; preds = %for.end
  %47 = load i32, i32* %natomtok, align 4, !tbaa !5
  store i32 %47, i32* %oatomtok, align 4, !tbaa !5
  %48 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %incdec.ptr65, i8*** %pvp.addr, align 8, !tbaa !1
  %49 = load i8**, i8*** %evp.addr, align 8, !tbaa !1
  %cmp66 = icmp eq i8** %48, %49
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.64
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.69:                                        ; preds = %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.69, %if.then.68, %if.then.63, %if.then.33
  %50 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest.71 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.71, label %unreachable [
    i32 0, label %cleanup.cont.72
    i32 3, label %while.end
  ]

cleanup.cont.72:                                  ; preds = %cleanup.70
  br label %while.cond

while.end:                                        ; preds = %cleanup.70, %land.end
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %51, align 1, !tbaa !15
  %52 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 59), align 1, !tbaa !15
  %conv73 = zext i8 %52 to i32
  %cmp74 = icmp sge i32 %conv73, 14
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.80

land.lhs.true.76:                                 ; preds = %while.end
  %53 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool77 = icmp ne i32 %53, 0
  br i1 %tobool77, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  %54 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call79 = call i8* @str2prt(i8* %54)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i8* %call79)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %land.lhs.true.76, %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.81

cleanup.81:                                       ; preds = %if.end.80, %if.then.13, %if.then.4
  %55 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %natomtok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %oatomtok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %unreachable [
    i32 0, label %cleanup.cont.85
    i32 1, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.81, %cleanup.81
  ret void

unreachable:                                      ; preds = %cleanup.81, %cleanup.70, %cleanup
  unreachable
}

declare i32 @wordinclass(i8*, i32) #2

declare i8* @macname(i32) #2

declare i32 @sm_strncasecmp(i8*, i8*, i64) #2

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare void @sm_dflush() #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #5

declare %struct.symtab* @stab(i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @map_lookup(%struct.symtab* %smap, i8* %key, i8** %argvect, i32* %pstat, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i8*, align 8
  %smap.addr = alloca %struct.symtab*, align 8
  %key.addr = alloca i8*, align 8
  %argvect.addr = alloca i8**, align 8
  %pstat.addr = alloca i32*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %status = alloca i32, align 4
  %map = alloca %struct._map*, align 8
  %replac = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %mbuf = alloca [320 x i8], align 16
  %i91 = alloca i64, align 8
  store %struct.symtab* %smap, %struct.symtab** %smap.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8** %argvect, i8*** %argvect.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  %1 = bitcast %struct._map** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %replac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.symtab*, %struct.symtab** %smap.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.symtab* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.symtab*, %struct.symtab** %smap.addr, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %4, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value to %struct._map*
  store %struct._map* %sv_map, %struct._map** %map, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %5, i32 0, i32 3
  %6 = load i64, i64* %map_mflags, align 8, !tbaa !68
  %and = and i64 %6, 32
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %do.body
  %7 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %call = call i32 @openmap(%struct._map* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 16
  %9 = load i16, i16* %e_sendmode, align 2, !tbaa !21
  %conv = sext i16 %9 to i32
  %cmp6 = icmp eq i32 %conv, 100
  br i1 %cmp6, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %do.end
  %10 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags8 = getelementptr inbounds %struct._map, %struct._map* %10, i32 0, i32 3
  %11 = load i64, i64* %map_mflags8, align 8, !tbaa !68
  %and9 = and i64 %11, 524288
  %cmp10 = icmp ne i64 %and9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 60), align 1, !tbaa !15
  %conv13 = zext i8 %12 to i32
  %cmp14 = icmp sge i32 %conv13, 1
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.19

land.lhs.true.16:                                 ; preds = %if.then.12
  %13 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  %14 = load %struct.symtab*, %struct.symtab** %smap.addr, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %14, i32 0, i32 0
  %15 = load i8*, i8** %s_name, align 8, !tbaa !69
  %16 = load i8*, i8** %key.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i32 0, i32 0), i8* %15, i8* %16)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.16, %if.then.12
  %17 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %17, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %land.lhs.true, %do.end
  %18 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags21 = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 3
  %19 = load i64, i64* %map_mflags21, align 8, !tbaa !68
  %and22 = and i64 %19, 65536
  %cmp23 = icmp ne i64 %and22, 0
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  %20 = load i8*, i8** %key.addr, align 8, !tbaa !1
  call void @stripquotes(i8* %20)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.20
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 60), align 1, !tbaa !15
  %conv27 = zext i8 %21 to i32
  %cmp28 = icmp sge i32 %conv27, 1
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.46

land.lhs.true.30:                                 ; preds = %if.end.26
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool31 = icmp ne i32 %22, 0
  br i1 %tobool31, label %if.end.46, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %23 = load %struct.symtab*, %struct.symtab** %smap.addr, align 8, !tbaa !1
  %s_name33 = getelementptr inbounds %struct.symtab, %struct.symtab* %23, i32 0, i32 0
  %24 = load i8*, i8** %s_name33, align 8, !tbaa !69
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.156, i32 0, i32 0), i8* %24)
  %call34 = call %struct.sm_file* @sm_debug_file()
  %25 = load i8*, i8** %key.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call34, i8* %25)
  %26 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 60), align 1, !tbaa !15
  %conv35 = zext i8 %26 to i32
  %cmp36 = icmp sge i32 %conv35, 5
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.45

land.lhs.true.38:                                 ; preds = %if.then.32
  %27 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.end.45, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load i8**, i8*** %argvect.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %30, i64 %idxprom
  %31 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp41 = icmp ne i8* %31, null
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argvect.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8*, i8** %34, i64 %idxprom43
  %35 = load i8*, i8** %arrayidx44, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i32 %32, i8* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %land.lhs.true.38, %if.then.32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.30, %if.end.26
  %38 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %38, i32 0, i32 0
  %39 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !71
  %map_lookup = getelementptr inbounds %struct._mapclass, %struct._mapclass* %39, i32 0, i32 4
  %40 = load i8* (%struct._map*, i8*, i8**, i32*)*, i8* (%struct._map*, i8*, i8**, i32*)** %map_lookup, align 8, !tbaa !72
  %41 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %42 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %43 = load i8**, i8*** %argvect.addr, align 8, !tbaa !1
  %call47 = call i8* %40(%struct._map* %41, i8* %42, i8** %43, i32* %status)
  store i8* %call47, i8** %replac, align 8, !tbaa !1
  %44 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 60), align 1, !tbaa !15
  %conv48 = zext i8 %44 to i32
  %cmp49 = icmp sge i32 %conv48, 1
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.56

land.lhs.true.51:                                 ; preds = %if.end.46
  %45 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %45, 0
  br i1 %tobool52, label %if.end.56, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.51
  %46 = load i8*, i8** %replac, align 8, !tbaa !1
  %cmp54 = icmp ne i8* %46, null
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.53
  %47 = load i8*, i8** %replac, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %47, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.160, i32 0, i32 0), %cond.false ]
  %48 = load i32, i32* %status, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i32 0, i32 0), i8* %cond, i32 %48)
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end, %land.lhs.true.51, %if.end.46
  %49 = load i32, i32* %status, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %49, 75
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.84

land.lhs.true.59:                                 ; preds = %if.end.56
  %50 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags60 = getelementptr inbounds %struct._map, %struct._map* %50, i32 0, i32 3
  %51 = load i64, i64* %map_mflags60, align 8, !tbaa !68
  %and61 = and i64 %51, 131072
  %cmp62 = icmp ne i64 %and61, 0
  br i1 %cmp62, label %if.end.84, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.59
  %52 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %52, align 4, !tbaa !5
  %53 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 60), align 1, !tbaa !15
  %conv65 = zext i8 %53 to i32
  %cmp66 = icmp sge i32 %conv65, 1
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.73

land.lhs.true.68:                                 ; preds = %if.then.64
  %54 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool69 = icmp ne i32 %54, 0
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %55 = load %struct.symtab*, %struct.symtab** %smap.addr, align 8, !tbaa !1
  %s_name71 = getelementptr inbounds %struct.symtab, %struct.symtab* %55, i32 0, i32 0
  %56 = load i8*, i8** %s_name71, align 8, !tbaa !69
  %57 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call72 = call i32* @__errno_location() #9
  %58 = load i32, i32* %call72, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.161, i32 0, i32 0), i8* %56, i8* %57, i32 %58)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.then.64
  %59 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %59, i32 0, i32 34
  %60 = load i8*, i8** %e_message, align 8, !tbaa !22
  %cmp74 = icmp eq i8* %60, null
  br i1 %cmp74, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %if.end.73
  %61 = bitcast [320 x i8]* %mbuf to i8*
  call void @llvm.lifetime.start(i64 320, i8* %61) #1
  %arraydecay = getelementptr inbounds [320 x i8], [320 x i8]* %mbuf, i32 0, i32 0
  %62 = load %struct.symtab*, %struct.symtab** %smap.addr, align 8, !tbaa !1
  %s_name77 = getelementptr inbounds %struct.symtab, %struct.symtab* %62, i32 0, i32 0
  %63 = load i8*, i8** %s_name77, align 8, !tbaa !69
  %64 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call78 = call i8* @shortenstring(i8* %64, i64 203)
  %call79 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 320, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i32 0, i32 0), i8* %63, i8* %call78)
  %65 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %65, i32 0, i32 52
  %66 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %arraydecay80 = getelementptr inbounds [320 x i8], [320 x i8]* %mbuf, i32 0, i32 0
  %call81 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %66, i8* %arraydecay80)
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message82 = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 34
  store i8* %call81, i8** %e_message82, align 8, !tbaa !22
  %68 = bitcast [320 x i8]* %mbuf to i8*
  call void @llvm.lifetime.end(i64 320, i8* %68) #1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.76, %if.end.73
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true.59, %if.end.56
  %69 = load i32, i32* %status, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %69, 75
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.114

land.lhs.true.87:                                 ; preds = %if.end.84
  %70 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_tapp = getelementptr inbounds %struct._map, %struct._map* %70, i32 0, i32 14
  %71 = load i8*, i8** %map_tapp, align 8, !tbaa !74
  %cmp88 = icmp ne i8* %71, null
  br i1 %cmp88, label %if.then.90, label %if.end.114

if.then.90:                                       ; preds = %land.lhs.true.87
  %72 = bitcast i64* %i91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call92 = call i64 @strlen(i8* %73) #10
  %74 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_tapp93 = getelementptr inbounds %struct._map, %struct._map* %74, i32 0, i32 14
  %75 = load i8*, i8** %map_tapp93, align 8, !tbaa !74
  %call94 = call i64 @strlen(i8* %75) #10
  %add = add i64 %call92, %call94
  %add95 = add i64 %add, 1
  store i64 %add95, i64* %i91, align 8, !tbaa !35
  %76 = load i64, i64* %i91, align 8, !tbaa !35
  %77 = load i64, i64* @map_lookup.rwbuflen, align 8, !tbaa !35
  %cmp96 = icmp ugt i64 %76, %77
  br i1 %cmp96, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %if.then.90
  %78 = load i8*, i8** @map_lookup.rwbuf, align 8, !tbaa !1
  %cmp99 = icmp ne i8* %78, null
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.98
  %79 = load i8*, i8** @map_lookup.rwbuf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1869)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.then.98
  %80 = load i64, i64* %i91, align 8, !tbaa !35
  store i64 %80, i64* @map_lookup.rwbuflen, align 8, !tbaa !35
  %81 = load i64, i64* @map_lookup.rwbuflen, align 8, !tbaa !35
  %call103 = call i8* @sm_malloc_tagged_x(i64 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 1871, i32 0)
  store i8* %call103, i8** @map_lookup.rwbuf, align 8, !tbaa !1
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.102, %if.then.90
  %82 = load i8*, i8** @map_lookup.rwbuf, align 8, !tbaa !1
  %83 = load i64, i64* @map_lookup.rwbuflen, align 8, !tbaa !35
  %84 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %85 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_tapp105 = getelementptr inbounds %struct._map, %struct._map* %85, i32 0, i32 14
  %86 = load i8*, i8** %map_tapp105, align 8, !tbaa !74
  %call106 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %82, i64 %83, i32 2, i8* %84, i8* %86)
  %87 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 60), align 1, !tbaa !15
  %conv107 = zext i8 %87 to i32
  %cmp108 = icmp sge i32 %conv107, 4
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.113

land.lhs.true.110:                                ; preds = %if.end.104
  %88 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool111 = icmp ne i32 %88, 0
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %land.lhs.true.110
  %89 = load i8*, i8** @map_lookup.rwbuf, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.163, i32 0, i32 0), i8* %89)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %land.lhs.true.110, %if.end.104
  %90 = load i8*, i8** @map_lookup.rwbuf, align 8, !tbaa !1
  store i8* %90, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %91 = bitcast i64* %i91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  br label %cleanup

if.end.114:                                       ; preds = %land.lhs.true.87, %if.end.84
  %92 = load i8*, i8** %replac, align 8, !tbaa !1
  store i8* %92, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.114, %if.end.113, %if.end.19, %if.then.3, %if.then
  %93 = bitcast i8** %replac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct._map** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = load i8*, i8** %retval
  ret i8* %96
}

; Function Attrs: nounwind uwtable
define internal i32 @callsubr(i8** %pvp, i32 %reclevel, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %pvp.addr = alloca i8**, align 8
  %reclevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %avp = alloca i8**, align 8
  %i = alloca i32, align 4
  %subr = alloca i32, align 4
  %j = alloca i32, align 4
  %nsubr = alloca i32, align 4
  %status = alloca i32, align 4
  %rstat = alloca i32, align 4
  %subrnumber = alloca [16 x i32], align 16
  %subrindex = alloca [16 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store i8** %pvp, i8*** %pvp.addr, align 8, !tbaa !1
  store i32 %reclevel, i32* %reclevel.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %subr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %nsubr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %rstat, align 4, !tbaa !5
  %7 = bitcast [16 x i32]* %subrnumber to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast [16 x i32]* %subrindex to i8*
  call void @llvm.lifetime.start(i64 64, i8* %8) #1
  store i32 0, i32* %nsubr, align 4, !tbaa !5
  %9 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  store i8** %9, i8*** %avp, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %entry
  %10 = load i8**, i8*** %avp, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %cmp = icmp ne i8* %11, null
  br i1 %cmp, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx1, align 1, !tbaa !15
  %conv = sext i8 %14 to i32
  %and = and i32 %conv, 255
  %cmp2 = icmp eq i32 %and, 153
  br i1 %cmp2, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.body
  %15 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %16, null
  br i1 %cmp5, label %if.then, label %if.end.47

if.then:                                          ; preds = %land.lhs.true
  %17 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  call void @stripquotes(i8* %18)
  %19 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  %call = call i32 @strtorwset(i8* %20, i8** null, i32 0)
  store i32 %call, i32* %subr, align 4, !tbaa !5
  %21 = load i32, i32* %subr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %22 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8*, i8** %22, i64 1
  %23 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.152, i32 0, i32 0), i8* %23)
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %24 = load i32, i32* %subr, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds [200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 %idxprom
  %25 = load %struct.rewrite*, %struct.rewrite** %arrayidx13, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.rewrite* %25, null
  br i1 %cmp14, label %if.then.16, label %if.end.37

if.then.16:                                       ; preds = %if.end
  %26 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 21), align 1, !tbaa !15
  %conv17 = zext i8 %26 to i32
  %cmp18 = icmp sge i32 %conv17, 3
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.then.16
  %27 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.20
  %28 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8*, i8** %28, i64 1
  %29 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  %30 = load i32, i32* %subr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0), i8* %29, i32 %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.20, %if.then.16
  store i32 2, i32* %i, align 4, !tbaa !5
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end.23
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %31 to i64
  %32 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8*, i8** %32, i64 %idxprom25
  %33 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  %cmp27 = icmp ne i8* %33, null
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.24
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %34 to i64
  %35 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8*, i8** %35, i64 %idxprom30
  %36 = load i8*, i8** %arrayidx31, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %37, 2
  %idxprom32 = sext i32 %sub to i64
  %38 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8*, i8** %38, i64 %idxprom32
  store i8* %36, i8** %arrayidx33, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %sub34 = sub nsw i32 %40, 2
  %idxprom35 = sext i32 %sub34 to i64
  %41 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8*, i8** %41, i64 %idxprom35
  store i8* null, i8** %arrayidx36, align 8, !tbaa !1
  br label %for.inc.48

if.end.37:                                        ; preds = %if.end
  %42 = load i32, i32* %nsubr, align 4, !tbaa !5
  %inc38 = add nsw i32 %42, 1
  store i32 %inc38, i32* %nsubr, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %inc38, 16
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.154, i32 0, i32 0), i32 16)
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.37
  %43 = load i32, i32* %subr, align 4, !tbaa !5
  %44 = load i32, i32* %nsubr, align 4, !tbaa !5
  %idxprom43 = sext i32 %44 to i64
  %arrayidx44 = getelementptr inbounds [16 x i32], [16 x i32]* %subrnumber, i32 0, i64 %idxprom43
  store i32 %43, i32* %arrayidx44, align 4, !tbaa !5
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %46 = load i32, i32* %nsubr, align 4, !tbaa !5
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %subrindex, i32 0, i64 %idxprom45
  store i32 %45, i32* %arrayidx46, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.42, %land.lhs.true, %for.body
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47, %for.end
  %47 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %incdec.ptr, i8*** %avp, align 8, !tbaa !1
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.93, %for.end.50
  %49 = load i32, i32* %nsubr, align 4, !tbaa !5
  %cmp52 = icmp sgt i32 %49, 0
  br i1 %cmp52, label %for.body.54, label %for.end.94

for.body.54:                                      ; preds = %for.cond.51
  %50 = load i32, i32* %nsubr, align 4, !tbaa !5
  %idxprom55 = sext i32 %50 to i64
  %arrayidx56 = getelementptr inbounds [16 x i32], [16 x i32]* %subrnumber, i32 0, i64 %idxprom55
  %51 = load i32, i32* %arrayidx56, align 4, !tbaa !5
  store i32 %51, i32* %subr, align 4, !tbaa !5
  %52 = load i8**, i8*** %pvp.addr, align 8, !tbaa !1
  %53 = load i32, i32* %nsubr, align 4, !tbaa !5
  %idxprom57 = sext i32 %53 to i64
  %arrayidx58 = getelementptr inbounds [16 x i32], [16 x i32]* %subrindex, i32 0, i64 %idxprom57
  %54 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %idx.ext = sext i32 %54 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %52, i64 %idx.ext
  store i8** %add.ptr, i8*** %avp, align 8, !tbaa !1
  store i32 2, i32* %i, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.70, %for.body.54
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %55 to i64
  %56 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8*, i8** %56, i64 %idxprom60
  %57 = load i8*, i8** %arrayidx61, align 8, !tbaa !1
  %cmp62 = icmp ne i8* %57, null
  br i1 %cmp62, label %for.body.64, label %for.end.72

for.body.64:                                      ; preds = %for.cond.59
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %58 to i64
  %59 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8*, i8** %59, i64 %idxprom65
  %60 = load i8*, i8** %arrayidx66, align 8, !tbaa !1
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %sub67 = sub nsw i32 %61, 2
  %idxprom68 = sext i32 %sub67 to i64
  %62 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8*, i8** %62, i64 %idxprom68
  store i8* %60, i8** %arrayidx69, align 8, !tbaa !1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.64
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc71 = add nsw i32 %63, 1
  store i32 %inc71, i32* %i, align 4, !tbaa !5
  br label %for.cond.59

for.end.72:                                       ; preds = %for.cond.59
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %sub73 = sub nsw i32 %64, 2
  %idxprom74 = sext i32 %sub73 to i64
  %65 = load i8**, i8*** %avp, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8*, i8** %65, i64 %idxprom74
  store i8* null, i8** %arrayidx75, align 8, !tbaa !1
  %66 = load i8**, i8*** %avp, align 8, !tbaa !1
  %67 = load i32, i32* %subr, align 4, !tbaa !5
  %68 = load i32, i32* %reclevel.addr, align 4, !tbaa !5
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %70 = load i32, i32* %nsubr, align 4, !tbaa !5
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* %subrindex, i32 0, i64 %idxprom76
  %71 = load i32, i32* %arrayidx77, align 4, !tbaa !5
  %sub78 = sub nsw i32 1000, %71
  %call79 = call i32 @rewrite(i8** %66, i32 %67, i32 %68, %struct.envelope* %69, i32 %sub78)
  store i32 %call79, i32* %status, align 4, !tbaa !5
  %72 = load i32, i32* %status, align 4, !tbaa !5
  %cmp80 = icmp ne i32 %72, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.86

land.lhs.true.82:                                 ; preds = %for.end.72
  %73 = load i32, i32* %status, align 4, !tbaa !5
  %cmp83 = icmp ne i32 %73, 75
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.82
  %74 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %land.lhs.true.82, %for.end.72
  %75 = load i32, i32* %rstat, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %75, 0
  br i1 %cmp87, label %if.then.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.86
  %76 = load i32, i32* %status, align 4, !tbaa !5
  %cmp89 = icmp eq i32 %76, 75
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %lor.lhs.false, %if.end.86
  %77 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %77, i32* %rstat, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %lor.lhs.false
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %78 = load i32, i32* %nsubr, align 4, !tbaa !5
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %nsubr, align 4, !tbaa !5
  br label %for.cond.51

for.end.94:                                       ; preds = %for.cond.51
  %79 = load i32, i32* %rstat, align 4, !tbaa !5
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.94, %if.then.85, %if.then.41, %if.then.11
  %80 = bitcast [16 x i32]* %subrindex to i8*
  call void @llvm.lifetime.end(i64 64, i8* %80) #1
  %81 = bitcast [16 x i32]* %subrnumber to i8*
  call void @llvm.lifetime.end(i64 64, i8* %81) #1
  %82 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %nsubr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %subr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define void @initerrmailers() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.mailer, %struct.mailer* @discardmailer, i32 0, i32 0), align 8, !tbaa !44
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8** getelementptr inbounds (%struct.mailer, %struct.mailer* @discardmailer, i32 0, i32 0), align 8, !tbaa !44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8** getelementptr inbounds (%struct.mailer, %struct.mailer* @discardmailer, i32 0, i32 1), align 8, !tbaa !75
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @discardargv, i32 0, i32 0), i8*** getelementptr inbounds (%struct.mailer, %struct.mailer* @discardmailer, i32 0, i32 8), align 8, !tbaa !76
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.mailer, %struct.mailer* @errormailer, i32 0, i32 0), align 8, !tbaa !44
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i8** getelementptr inbounds (%struct.mailer, %struct.mailer* @errormailer, i32 0, i32 0), align 8, !tbaa !44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8** getelementptr inbounds (%struct.mailer, %struct.mailer* @errormailer, i32 0, i32 1), align 8, !tbaa !75
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @errorargv, i32 0, i32 0), i8*** getelementptr inbounds (%struct.mailer, %struct.mailer* @errormailer, i32 0, i32 8), align 8, !tbaa !76
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare i8* @str2prt(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @sameaddr(%struct.address* %a, %struct.address* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.address*, align 8
  %b.addr = alloca %struct.address*, align 8
  %ca = alloca %struct.address*, align 8
  %cb = alloca %struct.address*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1_len38 = alloca i64, align 8
  %__s2_len40 = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %b, %struct.address** %b.addr, align 8, !tbaa !1
  %0 = bitcast %struct.address** %ca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.address** %cb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %2, i32 0, i32 4
  %3 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !39
  %4 = load %struct.address*, %struct.address** %b.addr, align 8, !tbaa !1
  %q_mailer1 = getelementptr inbounds %struct.address, %struct.address* %4, i32 0, i32 4
  %5 = load %struct.mailer*, %struct.mailer** %q_mailer1, align 8, !tbaa !39
  %cmp = icmp ne %struct.mailer* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer2 = getelementptr inbounds %struct.address, %struct.address* %6, i32 0, i32 4
  %7 = load %struct.mailer*, %struct.mailer** %q_mailer2, align 8, !tbaa !39
  %cmp3 = icmp eq %struct.mailer* %7, @errormailer
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %8 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %10, i32 0, i32 1
  %11 = load i8*, i8** %q_user, align 8, !tbaa !17
  %12 = load %struct.address*, %struct.address** %b.addr, align 8, !tbaa !1
  %q_user6 = getelementptr inbounds %struct.address, %struct.address* %12, i32 0, i32 1
  %13 = load i8*, i8** %q_user6, align 8, !tbaa !17
  %call = call i32 @strcmp(i8* %11, i8* %13) #1
  store i32 %call, i32* %tmp, !tbaa !5
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %tmp, !tbaa !5
  %cmp7 = icmp ne i32 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %17 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer10 = getelementptr inbounds %struct.address, %struct.address* %17, i32 0, i32 4
  %18 = load %struct.mailer*, %struct.mailer** %q_mailer10, align 8, !tbaa !39
  %19 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.mailer* %18, %19
  br i1 %cmp11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.end.9
  %20 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %call13 = call %struct.address* @getctladdr(%struct.address* %20)
  store %struct.address* %call13, %struct.address** %ca, align 8, !tbaa !1
  %21 = load %struct.address*, %struct.address** %b.addr, align 8, !tbaa !1
  %call14 = call %struct.address* @getctladdr(%struct.address* %21)
  store %struct.address* %call14, %struct.address** %cb, align 8, !tbaa !1
  %22 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.address* %22, null
  br i1 %cmp15, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.then.12
  %23 = load %struct.address*, %struct.address** %cb, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.address* %23, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.25

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %24 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %24, i32 0, i32 5
  %25 = load i64, i64* %q_flags, align 8, !tbaa !38
  %26 = load %struct.address*, %struct.address** %cb, align 8, !tbaa !1
  %q_flags18 = getelementptr inbounds %struct.address, %struct.address* %26, i32 0, i32 5
  %27 = load i64, i64* %q_flags18, align 8, !tbaa !38
  %and = and i64 %25, %27
  %and19 = and i64 %and, 1
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %28 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_uid = getelementptr inbounds %struct.address, %struct.address* %28, i32 0, i32 6
  %29 = load i32, i32* %q_uid, align 4, !tbaa !55
  %30 = load %struct.address*, %struct.address** %cb, align 8, !tbaa !1
  %q_uid22 = getelementptr inbounds %struct.address, %struct.address* %30, i32 0, i32 6
  %31 = load i32, i32* %q_uid22, align 4, !tbaa !55
  %cmp23 = icmp ne i32 %29, %31
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true, %if.then.12
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.9
  %32 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %32, i32 0, i32 3
  %33 = load i8*, i8** %q_host, align 8, !tbaa !40
  %34 = load %struct.address*, %struct.address** %b.addr, align 8, !tbaa !1
  %q_host27 = getelementptr inbounds %struct.address, %struct.address* %34, i32 0, i32 3
  %35 = load i8*, i8** %q_host27, align 8, !tbaa !40
  %cmp28 = icmp eq i8* %33, %35
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %36 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host31 = getelementptr inbounds %struct.address, %struct.address* %36, i32 0, i32 3
  %37 = load i8*, i8** %q_host31, align 8, !tbaa !40
  %cmp32 = icmp eq i8* %37, null
  br i1 %cmp32, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %38 = load %struct.address*, %struct.address** %b.addr, align 8, !tbaa !1
  %q_host33 = getelementptr inbounds %struct.address, %struct.address* %38, i32 0, i32 3
  %39 = load i8*, i8** %q_host33, align 8, !tbaa !40
  %cmp34 = icmp eq i8* %39, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %lor.lhs.false
  %40 = bitcast i64* %__s1_len38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast i64* %__s2_len40 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host42 = getelementptr inbounds %struct.address, %struct.address* %42, i32 0, i32 3
  %43 = load i8*, i8** %q_host42, align 8, !tbaa !40
  %44 = load %struct.address*, %struct.address** %b.addr, align 8, !tbaa !1
  %q_host43 = getelementptr inbounds %struct.address, %struct.address* %44, i32 0, i32 3
  %45 = load i8*, i8** %q_host43, align 8, !tbaa !40
  %call44 = call i32 @strcmp(i8* %43, i8* %45) #1
  store i32 %call44, i32* %tmp41, !tbaa !5
  %46 = bitcast i64* %__s2_len40 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i64* %__s1_len38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %tmp41, !tbaa !5
  %cmp45 = icmp ne i32 %48, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.36
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.46, %if.then.35, %if.then.29, %if.then.24, %if.then.8, %if.then.4, %if.then
  %49 = bitcast %struct.address** %cb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.address** %ca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #6

declare %struct.address* @getctladdr(%struct.address*) #2

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #6

; Function Attrs: nounwind uwtable
define i32 @emptyaddr(%struct.address* %a) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__s1_len45 = alloca i64, align 8
  %__s2_len47 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %__s154 = alloca i8*, align 8
  %__result57 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  %0 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %0, i32 0, i32 0
  %1 = load i8*, i8** %q_paddr, align 8, !tbaa !19
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.109 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  store i64 2, i64* %__s2_len, align 8, !tbaa !35
  %4 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp1 = icmp ult i64 %4, 4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr3 = getelementptr inbounds %struct.address, %struct.address* %6, i32 0, i32 0
  %7 = load i8*, i8** %q_paddr3, align 8, !tbaa !19
  store i8* %7, i8** %__s1, align 8, !tbaa !1
  %8 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), align 1, !tbaa !15
  %conv5 = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, %conv5
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %12 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp6 = icmp ugt i64 %12, 0
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.36

land.lhs.true.8:                                  ; preds = %cond.true
  %13 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then, label %if.end.36

if.then:                                          ; preds = %land.lhs.true.8
  %14 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx11, align 1, !tbaa !15
  %conv12 = zext i8 %15 to i32
  %16 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i64 1), align 1, !tbaa !15
  %conv13 = zext i8 %16 to i32
  %sub14 = sub nsw i32 %conv12, %conv13
  store i32 %sub14, i32* %__result, align 4, !tbaa !5
  %17 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp15 = icmp ugt i64 %17, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.35

land.lhs.true.17:                                 ; preds = %if.then
  %18 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %18, 0
  br i1 %cmp18, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %land.lhs.true.17
  %19 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx21, align 1, !tbaa !15
  %conv22 = zext i8 %20 to i32
  %21 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i64 2), align 1, !tbaa !15
  %conv23 = zext i8 %21 to i32
  %sub24 = sub nsw i32 %conv22, %conv23
  store i32 %sub24, i32* %__result, align 4, !tbaa !5
  %22 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp25 = icmp ugt i64 %22, 2
  br i1 %cmp25, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %if.then.20
  %23 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %23, 0
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true.27
  %24 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx31, align 1, !tbaa !15
  %conv32 = zext i8 %25 to i32
  %26 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv33 = zext i8 %26 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  store i32 %sub34, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true.27, %if.then.20
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %land.lhs.true.17, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.8, %cond.true
  %27 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %27, i32* %tmp37, !tbaa !5
  %28 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %tmp37, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %31 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr38 = getelementptr inbounds %struct.address, %struct.address* %31, i32 0, i32 0
  %32 = load i8*, i8** %q_paddr38, align 8, !tbaa !19
  %call = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.36
  %cond = phi i32 [ %30, %if.end.36 ], [ %call, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %33 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %tmp, !tbaa !5
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %lor.end, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %cond.end
  %36 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %36, i32 0, i32 1
  %37 = load i8*, i8** %q_user, align 8, !tbaa !17
  %cmp42 = icmp eq i8* %37, null
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.41
  %38 = bitcast i64* %__s1_len45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast i64* %__s2_len47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.109 to i64)), i64 1), label %land.lhs.true.49, label %cond.false.96

land.lhs.true.49:                                 ; preds = %lor.rhs
  store i64 2, i64* %__s2_len47, align 8, !tbaa !35
  %40 = load i64, i64* %__s2_len47, align 8, !tbaa !35
  %cmp50 = icmp ult i64 %40, 4
  br i1 %cmp50, label %cond.true.52, label %cond.false.96

cond.true.52:                                     ; preds = %land.lhs.true.49
  %41 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user55 = getelementptr inbounds %struct.address, %struct.address* %42, i32 0, i32 1
  %43 = load i8*, i8** %q_user55, align 8, !tbaa !17
  store i8* %43, i8** %__s154, align 8, !tbaa !1
  %44 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx58, align 1, !tbaa !15
  %conv59 = zext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), align 1, !tbaa !15
  %conv60 = zext i8 %47 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  store i32 %sub61, i32* %__result57, align 4, !tbaa !5
  %48 = load i64, i64* %__s2_len47, align 8, !tbaa !35
  %cmp62 = icmp ugt i64 %48, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.94

land.lhs.true.64:                                 ; preds = %cond.true.52
  %49 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %49, 0
  br i1 %cmp65, label %if.then.67, label %if.end.94

if.then.67:                                       ; preds = %land.lhs.true.64
  %50 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx68, align 1, !tbaa !15
  %conv69 = zext i8 %51 to i32
  %52 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i64 1), align 1, !tbaa !15
  %conv70 = zext i8 %52 to i32
  %sub71 = sub nsw i32 %conv69, %conv70
  store i32 %sub71, i32* %__result57, align 4, !tbaa !5
  %53 = load i64, i64* %__s2_len47, align 8, !tbaa !35
  %cmp72 = icmp ugt i64 %53, 1
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %if.then.67
  %54 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %54, 0
  br i1 %cmp75, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %land.lhs.true.74
  %55 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %55, i64 2
  %56 = load i8, i8* %arrayidx78, align 1, !tbaa !15
  %conv79 = zext i8 %56 to i32
  %57 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i64 2), align 1, !tbaa !15
  %conv80 = zext i8 %57 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  store i32 %sub81, i32* %__result57, align 4, !tbaa !5
  %58 = load i64, i64* %__s2_len47, align 8, !tbaa !35
  %cmp82 = icmp ugt i64 %58, 2
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.92

land.lhs.true.84:                                 ; preds = %if.then.77
  %59 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %59, 0
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %land.lhs.true.84
  %60 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %60, i64 3
  %61 = load i8, i8* %arrayidx88, align 1, !tbaa !15
  %conv89 = zext i8 %61 to i32
  %62 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv90 = zext i8 %62 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  store i32 %sub91, i32* %__result57, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.84, %if.then.77
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.74, %if.then.67
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.64, %cond.true.52
  %63 = load i32, i32* %__result57, align 4, !tbaa !5
  store i32 %63, i32* %tmp95, !tbaa !5
  %64 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %tmp95, !tbaa !5
  br label %cond.end.99

cond.false.96:                                    ; preds = %land.lhs.true.49, %lor.rhs
  %67 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user97 = getelementptr inbounds %struct.address, %struct.address* %67, i32 0, i32 1
  %68 = load i8*, i8** %q_user97, align 8, !tbaa !17
  %call98 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0)) #1
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %if.end.94
  %cond100 = phi i32 [ %66, %if.end.94 ], [ %call98, %cond.false.96 ]
  store i32 %cond100, i32* %tmp48, !tbaa !5
  %69 = bitcast i64* %__s2_len47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %__s1_len45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %tmp48, !tbaa !5
  %cmp101 = icmp eq i32 %71, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end.99, %lor.lhs.false.41, %cond.end, %entry
  %72 = phi i1 [ true, %lor.lhs.false.41 ], [ true, %cond.end ], [ true, %entry ], [ %cmp101, %cond.end.99 ]
  %lor.ext = zext i1 %72 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i8* @remotename(i8* %name, %struct.mailer* %m, i32 %flags, i32* %pstat, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %flags.addr = alloca i32, align 4
  %pstat.addr = alloca i32*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %pvp = alloca i8**, align 8
  %fancy = alloca i8*, align 8
  %oldg = alloca i8*, align 8
  %rwset = alloca i32, align 4
  %lbuf = alloca [257 x i8], align 16
  %pvpbuf = alloca [1256 x i8], align 16
  %addrtype = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %pxp = alloca i8**, align 8
  %l = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  %qxq = alloca i8**, align 8
  %_h = alloca %struct.sm_exc_handler, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %fancy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %oldg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %rwset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [257 x i8]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %4) #1
  %5 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %5) #1
  %6 = bitcast [4 x i8]* %addrtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 12), align 1, !tbaa !15
  %conv = zext i8 %7 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call, i8* %9)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and = and i32 %10, 1
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and5 = and i32 %11, 2
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %12 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_sh_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %12, i32 0, i32 9
  %13 = load i16, i16* %m_sh_rwset, align 2, !tbaa !77
  %conv8 = sext i16 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %14 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_se_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %14, i32 0, i32 10
  %15 = load i16, i16* %m_se_rwset, align 2, !tbaa !78
  %conv9 = sext i16 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %conv9, %cond.false ]
  store i32 %cond, i32* %rwset, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %addrtype, i32 0, i64 2
  store i8 115, i8* %arrayidx, align 1, !tbaa !15
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and10 = and i32 %16, 2
  %cmp11 = icmp ne i32 %and10, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %if.else
  %17 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_rh_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %17, i32 0, i32 11
  %18 = load i16, i16* %m_rh_rwset, align 2, !tbaa !79
  %conv14 = sext i16 %18 to i32
  br label %cond.end.17

cond.false.15:                                    ; preds = %if.else
  %19 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_re_rwset = getelementptr inbounds %struct.mailer, %struct.mailer* %19, i32 0, i32 12
  %20 = load i16, i16* %m_re_rwset, align 2, !tbaa !46
  %conv16 = sext i16 %20 to i32
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.13
  %cond18 = phi i32 [ %conv14, %cond.true.13 ], [ %conv16, %cond.false.15 ]
  store i32 %cond18, i32* %rwset, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %addrtype, i32 0, i64 2
  store i8 114, i8* %arrayidx19, align 1, !tbaa !15
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end.17, %cond.end
  %21 = load i32, i32* %rwset, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %21, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %22 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i8* %22, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.20
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %addrtype, i32 0, i64 1
  store i8 32, i8* %arrayidx25, align 1, !tbaa !15
  %arrayidx26 = getelementptr inbounds [4 x i8], [4 x i8]* %addrtype, i32 0, i64 3
  store i8 0, i8* %arrayidx26, align 1, !tbaa !15
  %23 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and27 = and i32 %23, 2
  %cmp28 = icmp ne i32 %and27, 0
  %cond30 = select i1 %cmp28, i32 104, i32 101
  %conv31 = trunc i32 %cond30 to i8
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %addrtype, i32 0, i64 0
  store i8 %conv31, i8* %arrayidx32, align 1, !tbaa !15
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 46
  %call33 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8** null)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %addrtype, i32 0, i32 0
  %25 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call33, i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2692, i32 %25)
  %26 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and34 = and i32 %26, 4
  %cmp35 = icmp ne i32 %and34, 0
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %27 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %27, i32 0, i32 5
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %28 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  %and38 = and i32 %28, 8
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.24
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8** %fancy, align 8, !tbaa !1
  br label %if.end.43

if.else.41:                                       ; preds = %lor.lhs.false
  %29 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call42 = call i8* @crackaddr(i8* %29, %struct.envelope* %30)
  store i8* %call42, i8** %fancy, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  %31 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %arraydecay44 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call45 = call i8** @prescan(i8* %31, i32 0, i8* %arraydecay44, i32 1256, i8** null, i8* null, i32 0)
  store i8** %call45, i8*** %pvp, align 8, !tbaa !1
  %32 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp46 = icmp eq i8** %32, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.43
  %33 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i8* %33, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.43
  %34 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call50 = call i32 @rewrite(i8** %34, i32 3, i32 0, %struct.envelope* %35, i32 1000)
  %cmp51 = icmp eq i32 %call50, 75
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  %36 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %36, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.49
  %37 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and55 = and i32 %37, 8
  %cmp56 = icmp ne i32 %and55, 0
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.137

land.lhs.true.58:                                 ; preds = %if.end.54
  %38 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_fromdomain = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 6
  %39 = load i8**, i8*** %e_fromdomain, align 8, !tbaa !80
  %cmp59 = icmp ne i8** %39, null
  br i1 %cmp59, label %if.then.61, label %if.end.137

if.then.61:                                       ; preds = %land.lhs.true.58
  %40 = bitcast i8*** %pxp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i8**, i8*** %pvp, align 8, !tbaa !1
  store i8** %41, i8*** %pxp, align 8, !tbaa !1
  %42 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 1000, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.61
  %43 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %44 = load i8*, i8** %43, align 8, !tbaa !1
  %cmp62 = icmp ne i8* %44, null
  br i1 %cmp62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %45 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.114 to i64)), i64 1), label %land.lhs.true.64, label %cond.false.107

land.lhs.true.64:                                 ; preds = %land.rhs
  store i64 1, i64* %__s2_len, align 8, !tbaa !35
  %47 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp65 = icmp ult i64 %47, 4
  br i1 %cmp65, label %cond.true.67, label %cond.false.107

cond.true.67:                                     ; preds = %land.lhs.true.64
  %48 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %50 = load i8*, i8** %49, align 8, !tbaa !1
  store i8* %50, i8** %__s1, align 8, !tbaa !1
  %51 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx70, align 1, !tbaa !15
  %conv71 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), align 1, !tbaa !15
  %conv72 = zext i8 %54 to i32
  %sub = sub nsw i32 %conv71, %conv72
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %55 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp73 = icmp ugt i64 %55, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.105

land.lhs.true.75:                                 ; preds = %cond.true.67
  %56 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %56, 0
  br i1 %cmp76, label %if.then.78, label %if.end.105

if.then.78:                                       ; preds = %land.lhs.true.75
  %57 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx79, align 1, !tbaa !15
  %conv80 = zext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i64 1), align 1, !tbaa !15
  %conv81 = zext i8 %59 to i32
  %sub82 = sub nsw i32 %conv80, %conv81
  store i32 %sub82, i32* %__result, align 4, !tbaa !5
  %60 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp83 = icmp ugt i64 %60, 1
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.104

land.lhs.true.85:                                 ; preds = %if.then.78
  %61 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %61, 0
  br i1 %cmp86, label %if.then.88, label %if.end.104

if.then.88:                                       ; preds = %land.lhs.true.85
  %62 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx89, align 1, !tbaa !15
  %conv90 = zext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv91 = zext i8 %64 to i32
  %sub92 = sub nsw i32 %conv90, %conv91
  store i32 %sub92, i32* %__result, align 4, !tbaa !5
  %65 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp93 = icmp ugt i64 %65, 2
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.103

land.lhs.true.95:                                 ; preds = %if.then.88
  %66 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %66, 0
  br i1 %cmp96, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %land.lhs.true.95
  %67 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %67, i64 3
  %68 = load i8, i8* %arrayidx99, align 1, !tbaa !15
  %conv100 = zext i8 %68 to i32
  %69 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv101 = zext i8 %69 to i32
  %sub102 = sub nsw i32 %conv100, %conv101
  store i32 %sub102, i32* %__result, align 4, !tbaa !5
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.98, %land.lhs.true.95, %if.then.88
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.85, %if.then.78
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.75, %cond.true.67
  %70 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %70, i32* %tmp106, !tbaa !5
  %71 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %tmp106, !tbaa !5
  br label %cond.end.109

cond.false.107:                                   ; preds = %land.lhs.true.64, %land.rhs
  %74 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %75 = load i8*, i8** %74, align 8, !tbaa !1
  %call108 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0)) #1
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %if.end.105
  %cond110 = phi i32 [ %73, %if.end.105 ], [ %call108, %cond.false.107 ]
  store i32 %cond110, i32* %tmp, !tbaa !5
  %76 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %tmp, !tbaa !5
  %cmp111 = icmp ne i32 %78, 0
  br label %land.end

land.end:                                         ; preds = %cond.end.109, %while.cond
  %79 = phi i1 [ false, %while.cond ], [ %cmp111, %cond.end.109 ]
  br i1 %79, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %80 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %incdec.ptr, i8*** %pxp, align 8, !tbaa !1
  %81 = load i32, i32* %l, align 4, !tbaa !5
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %82 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %83 = load i8*, i8** %82, align 8, !tbaa !1
  %cmp113 = icmp eq i8* %83, null
  br i1 %cmp113, label %if.then.115, label %if.end.136

if.then.115:                                      ; preds = %while.end
  %84 = bitcast i8*** %qxq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_fromdomain117 = getelementptr inbounds %struct.envelope, %struct.envelope* %85, i32 0, i32 6
  %86 = load i8**, i8*** %e_fromdomain117, align 8, !tbaa !80
  store i8** %86, i8*** %qxq, align 8, !tbaa !1
  br label %while.cond.118

while.cond.118:                                   ; preds = %if.end.129, %if.then.115
  %87 = load i8**, i8*** %qxq, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %incdec.ptr119, i8*** %qxq, align 8, !tbaa !1
  %88 = load i8*, i8** %87, align 8, !tbaa !1
  %89 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %incdec.ptr120, i8*** %pxp, align 8, !tbaa !1
  store i8* %88, i8** %89, align 8, !tbaa !1
  %cmp121 = icmp ne i8* %88, null
  br i1 %cmp121, label %while.body.123, label %while.end.130

while.body.123:                                   ; preds = %while.cond.118
  %90 = load i32, i32* %l, align 4, !tbaa !5
  %dec124 = add nsw i32 %90, -1
  store i32 %dec124, i32* %l, align 4, !tbaa !5
  %cmp125 = icmp sle i32 %dec124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %while.body.123
  %91 = load i8**, i8*** %pxp, align 8, !tbaa !1
  %incdec.ptr128 = getelementptr inbounds i8*, i8** %91, i32 -1
  store i8** %incdec.ptr128, i8*** %pxp, align 8, !tbaa !1
  store i8* null, i8** %incdec.ptr128, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0))
  %92 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 69, i32* %92, align 4, !tbaa !5
  br label %while.end.130

if.end.129:                                       ; preds = %while.body.123
  br label %while.cond.118

while.end.130:                                    ; preds = %if.then.127, %while.cond.118
  %93 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %94 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call131 = call i32 @rewrite(i8** %93, i32 3, i32 0, %struct.envelope* %94, i32 1000)
  %cmp132 = icmp eq i32 %call131, 75
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %while.end.130
  %95 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %95, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %while.end.130
  %96 = bitcast i8*** %qxq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %while.end
  %97 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i8*** %pxp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.58, %if.end.54
  %99 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and138 = and i32 %99, 1
  %cmp139 = icmp ne i32 %and138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.147

if.then.141:                                      ; preds = %if.end.137
  %100 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %101 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call142 = call i32 @rewrite(i8** %100, i32 1, i32 0, %struct.envelope* %101, i32 1000)
  %cmp143 = icmp eq i32 %call142, 75
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.then.141
  %102 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %102, align 4, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.then.141
  br label %if.end.153

if.else.147:                                      ; preds = %if.end.137
  %103 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %104 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call148 = call i32 @rewrite(i8** %103, i32 2, i32 0, %struct.envelope* %104, i32 1000)
  %cmp149 = icmp eq i32 %call148, 75
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.else.147
  %105 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %105, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.else.147
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.146
  %106 = load i32, i32* %rwset, align 4, !tbaa !5
  %cmp154 = icmp sgt i32 %106, 0
  br i1 %cmp154, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %if.end.153
  %107 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %108 = load i32, i32* %rwset, align 4, !tbaa !5
  %109 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call157 = call i32 @rewrite(i8** %107, i32 %108, i32 0, %struct.envelope* %109, i32 1000)
  %cmp158 = icmp eq i32 %call157, 75
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.156
  %110 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %110, align 4, !tbaa !5
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.then.156
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.153
  %111 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %112 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call163 = call i32 @rewrite(i8** %111, i32 4, i32 0, %struct.envelope* %112, i32 1000)
  %cmp164 = icmp eq i32 %call163, 75
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.162
  %113 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %113, align 4, !tbaa !5
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end.162
  %114 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arraydecay168 = getelementptr inbounds [257 x i8], [257 x i8]* %lbuf, i32 0, i32 0
  call void @cataddr(i8** %114, i8** null, i8* %arraydecay168, i32 257, i32 0, i32 0)
  %115 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro169 = getelementptr inbounds %struct.envelope, %struct.envelope* %115, i32 0, i32 46
  %mac_table = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %e_macro169, i32 0, i32 2
  %arrayidx170 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table, i32 0, i64 103
  %116 = load i8*, i8** %arrayidx170, align 8, !tbaa !1
  store i8* %116, i8** %oldg, align 8, !tbaa !1
  %117 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro171 = getelementptr inbounds %struct.envelope, %struct.envelope* %117, i32 0, i32 46
  %arraydecay172 = getelementptr inbounds [257 x i8], [257 x i8]* %lbuf, i32 0, i32 0
  call void @macset(%struct.MACROS_T* %e_macro171, i32 103, i8* %arraydecay172)
  %118 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %118) #1
  br label %do.body

do.body:                                          ; preds = %if.end.167
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !47
  %119 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %119, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !49
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !50
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay174 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call175 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay174, i32 0) #12
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.then.178, label %if.end.192

if.then.178:                                      ; preds = %do.body
  %120 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and179 = and i32 %120, 4
  %cmp180 = icmp ne i32 %and179, 0
  br i1 %cmp180, label %land.lhs.true.182, label %if.else.188

land.lhs.true.182:                                ; preds = %if.then.178
  %arrayidx183 = getelementptr inbounds [257 x i8], [257 x i8]* %lbuf, i32 0, i64 0
  %121 = load i8, i8* %arrayidx183, align 1, !tbaa !15
  %conv184 = sext i8 %121 to i32
  %cmp185 = icmp eq i32 %conv184, 64
  br i1 %cmp185, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %land.lhs.true.182
  %122 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([257 x i8], [257 x i8]* @remotename.buf, i32 0, i32 0), i64 257, %struct.envelope* %122)
  br label %if.end.189

if.else.188:                                      ; preds = %land.lhs.true.182, %if.then.178
  %123 = load i8*, i8** %fancy, align 8, !tbaa !1
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %123, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @remotename.buf, i32 0, i32 0), i64 257, %struct.envelope* %124)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188, %if.then.187
  %125 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp190 = icmp eq %struct.sm_exc_handler* %125, %_h
  br i1 %cmp190, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.189
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2796, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %126, %if.end.189
  %127 = phi i1 [ true, %if.end.189 ], [ false, %126 ]
  %lor.ext = zext i1 %127 to i32
  br label %if.end.192

if.end.192:                                       ; preds = %lor.end, %do.body
  %eh_context193 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay194 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context193, i32 0, i32 0
  %call195 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay194, i32 0) #12
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.end.192
  %128 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro199 = getelementptr inbounds %struct.envelope, %struct.envelope* %128, i32 0, i32 46
  %129 = load i8*, i8** %oldg, align 8, !tbaa !1
  call void @macset(%struct.MACROS_T* %e_macro199, i32 103, i8* %129)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.end.192
  br label %do.cond

do.cond:                                          ; preds = %if.end.200
  br label %do.end

do.end:                                           ; preds = %do.cond
  %eh_state201 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %130 = load i32, i32* %eh_state201, align 4, !tbaa !50
  %cmp202 = icmp eq i32 %130, 2
  br i1 %cmp202, label %if.then.204, label %if.else.217

if.then.204:                                      ; preds = %do.end
  %131 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp205 = icmp eq %struct.sm_exc_handler* %131, %_h
  br i1 %cmp205, label %lor.end.208, label %lor.rhs.207

lor.rhs.207:                                      ; preds = %if.then.204
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2798, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.208

lor.end.208:                                      ; preds = %132, %if.then.204
  %133 = phi i1 [ true, %if.then.204 ], [ false, %132 ]
  %lor.ext209 = zext i1 %133 to i32
  %eh_parent210 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %134 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent210, align 8, !tbaa !49
  store %struct.sm_exc_handler* %134, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value211 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %135 = load %struct.sm_exc*, %struct.sm_exc** %eh_value211, align 8, !tbaa !47
  %cmp212 = icmp ne %struct.sm_exc* %135, null
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %lor.end.208
  %eh_value215 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %136 = load %struct.sm_exc*, %struct.sm_exc** %eh_value215, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %136) #11
  unreachable

if.end.216:                                       ; preds = %lor.end.208
  br label %if.end.231

if.else.217:                                      ; preds = %do.end
  %eh_state218 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %137 = load i32, i32* %eh_state218, align 4, !tbaa !50
  %cmp219 = icmp eq i32 %137, 0
  br i1 %cmp219, label %if.then.221, label %if.else.228

if.then.221:                                      ; preds = %if.else.217
  %eh_value222 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %138 = load %struct.sm_exc*, %struct.sm_exc** %eh_value222, align 8, !tbaa !47
  %cmp223 = icmp ne %struct.sm_exc* %138, null
  br i1 %cmp223, label %if.then.225, label %if.end.227

if.then.225:                                      ; preds = %if.then.221
  %eh_value226 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %139 = load %struct.sm_exc*, %struct.sm_exc** %eh_value226, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %139) #11
  unreachable

if.end.227:                                       ; preds = %if.then.221
  br label %if.end.230

if.else.228:                                      ; preds = %if.else.217
  %eh_value229 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %140 = load %struct.sm_exc*, %struct.sm_exc** %eh_value229, align 8, !tbaa !47
  call void @sm_exc_free(%struct.sm_exc* %140)
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.228, %if.end.227
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.216
  %141 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %141) #1
  %142 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 12), align 1, !tbaa !15
  %conv232 = zext i8 %142 to i32
  %cmp233 = icmp sge i32 %conv232, 1
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.239

land.lhs.true.235:                                ; preds = %if.end.231
  %143 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool236 = icmp ne i32 %143, 0
  br i1 %tobool236, label %if.end.239, label %if.then.237

if.then.237:                                      ; preds = %land.lhs.true.235
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0))
  %call238 = call %struct.sm_file* @sm_debug_file()
  call void @xputs(%struct.sm_file* %call238, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @remotename.buf, i32 0, i32 0))
  %144 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %145 = load i32, i32* %144, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i32 %145)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %land.lhs.true.235, %if.end.231
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @remotename.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.239, %if.then.48, %if.then.23
  %146 = bitcast [4 x i8]* %addrtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %147) #1
  %148 = bitcast [257 x i8]* %lbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %148) #1
  %149 = bitcast i32* %rwset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i8** %oldg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i8** %fancy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = load i8*, i8** %retval
  ret i8* %153
}

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i32 @macid_parse(i8*, i8**) #2

declare i8* @crackaddr(i8*, %struct.envelope*) #2

declare void @macset(%struct.MACROS_T*, i32, i8*) #2

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #7

; Function Attrs: noreturn
declare void @sm_exc_raise_x(%struct.sm_exc*) #5

declare void @sm_exc_free(%struct.sm_exc*) #2

; Function Attrs: nounwind uwtable
define void @maplocaluser(%struct.address* %a, %struct.address** %sendq, i32 %aliaslevel, %struct.envelope* %e) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  %sendq.addr = alloca %struct.address**, align 8
  %aliaslevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %pvp = alloca i8**, align 8
  %a1 = alloca %struct.address*, align 8
  %pvpbuf = alloca [1256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %_h = alloca %struct.sm_exc_handler, align 8
  %exc = alloca %struct.sm_exc*, align 8
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address** %sendq, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store i32 %aliaslevel, i32* %aliaslevel.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.address** %a1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.address* null, %struct.address** %a1, align 8, !tbaa !1
  %2 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %5 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call, %struct.address* %5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %6, i32 0, i32 1
  %7 = load i8*, i8** %q_user, align 8, !tbaa !17
  %arraydecay = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call2 = call i8** @prescan(i8* %7, i32 0, i8* %arraydecay, i32 1256, i8** null, i8* null, i32 0)
  store i8** %call2, i8*** %pvp, align 8, !tbaa !1
  %8 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp3 = icmp eq i8** %8, null
  br i1 %cmp3, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sge i32 %conv6, 9
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.then.5
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.9
  %11 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user12 = getelementptr inbounds %struct.address, %struct.address* %11, i32 0, i32 1
  %12 = load i8*, i8** %q_user12, align 8, !tbaa !17
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i32 0, i32 0), i8* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true.9, %if.then.5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 46
  %14 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %14, i32 0, i32 3
  %15 = load i8*, i8** %q_host, align 8, !tbaa !40
  %16 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 104, i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2853, i32 %16)
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro15 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 46
  %18 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user16 = getelementptr inbounds %struct.address, %struct.address* %18, i32 0, i32 1
  %19 = load i8*, i8** %q_user16, align 8, !tbaa !17
  %20 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro15, i32 2, i32 117, i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2854, i32 %20)
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro17 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 46
  %22 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_home = getelementptr inbounds %struct.address, %struct.address* %22, i32 0, i32 8
  %23 = load i8*, i8** %q_home, align 8, !tbaa !61
  %24 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro17, i32 2, i32 122, i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2855, i32 %24)
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro18 = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 46
  %call19 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8** null)
  %26 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro18, i32 2, i32 %call19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2857, i32 %26)
  %27 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call20 = call i32 @rewrite(i8** %27, i32 5, i32 0, %struct.envelope* %28, i32 1000)
  %cmp21 = icmp eq i32 %call20, 75
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.14
  %29 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv24 = zext i8 %29 to i32
  %cmp25 = icmp sge i32 %conv24, 9
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.30

land.lhs.true.27:                                 ; preds = %if.then.23
  %30 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.then.23
  %31 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %31, i32 0, i32 21
  store i16 3, i16* %q_state, align 2, !tbaa !18
  %32 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %32, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %q_status, align 8, !tbaa !23
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.14
  %33 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp32 = icmp eq i8* %34, null
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %35 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx35, align 1, !tbaa !15
  %conv36 = sext i8 %37 to i32
  %and = and i32 %conv36, 255
  %cmp37 = icmp ne i32 %and, 150
  br i1 %cmp37, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.31
  %38 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv40 = zext i8 %38 to i32
  %cmp41 = icmp sge i32 %conv40, 9
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.46

land.lhs.true.43:                                 ; preds = %if.then.39
  %39 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool44 = icmp ne i32 %39, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.43
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.43, %if.then.39
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %lor.lhs.false
  %40 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %40) #1
  br label %do.body

do.body:                                          ; preds = %if.end.47
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !47
  %41 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %41, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !49
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !50
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay48 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call49 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay48, i32 0) #12
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %do.body
  %42 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %43 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call53 = call %struct.address* @buildaddr(i8** %42, %struct.address* null, i32 0, %struct.envelope* %43)
  store %struct.address* %call53, %struct.address** %a1, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %do.body
  %eh_state55 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %44 = load i32, i32* %eh_state55, align 4, !tbaa !50
  %cmp56 = icmp eq i32 %44, 1
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  br label %do.end

if.end.59:                                        ; preds = %if.end.54
  %eh_state60 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %45 = load i32, i32* %eh_state60, align 4, !tbaa !50
  %cmp61 = icmp eq i32 %45, 2
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.59
  %46 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp64 = icmp eq %struct.sm_exc_handler* %46, %_h
  br i1 %cmp64, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.63
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2875, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %47, %if.then.63
  %48 = phi i1 [ true, %if.then.63 ], [ false, %47 ]
  %lor.ext = zext i1 %48 to i32
  %eh_parent66 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %49 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent66, align 8, !tbaa !49
  store %struct.sm_exc_handler* %49, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  br label %if.end.67

if.end.67:                                        ; preds = %lor.end, %if.end.59
  %eh_value68 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %50 = load %struct.sm_exc*, %struct.sm_exc** %eh_value68, align 8, !tbaa !47
  %call69 = call i32 @sm_exc_match(%struct.sm_exc* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.125, i32 0, i32 0))
  %tobool70 = icmp ne i32 %call69, 0
  %cond = select i1 %tobool70, i32 1, i32 0
  %eh_state71 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 %cond, i32* %eh_state71, align 4, !tbaa !50
  %eh_state72 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %51 = load i32, i32* %eh_state72, align 4, !tbaa !50
  %cmp73 = icmp eq i32 %51, 1
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.67
  %52 = bitcast %struct.sm_exc** %exc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %eh_value76 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %53 = load %struct.sm_exc*, %struct.sm_exc** %eh_value76, align 8, !tbaa !47
  store %struct.sm_exc* %53, %struct.sm_exc** %exc, align 8, !tbaa !1
  %54 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state77 = getelementptr inbounds %struct.address, %struct.address* %54, i32 0, i32 21
  store i16 6, i16* %q_state77, align 2, !tbaa !18
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 2) #11
  unreachable

if.end.78:                                        ; preds = %if.end.67
  br label %do.cond

do.cond:                                          ; preds = %if.end.78
  br label %do.end

do.end:                                           ; preds = %do.cond, %if.then.58
  %eh_state79 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %55 = load i32, i32* %eh_state79, align 4, !tbaa !50
  %cmp80 = icmp eq i32 %55, 2
  br i1 %cmp80, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %do.end
  %56 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp83 = icmp eq %struct.sm_exc_handler* %56, %_h
  br i1 %cmp83, label %lor.end.86, label %lor.rhs.85

lor.rhs.85:                                       ; preds = %if.then.82
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 2884, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.86

lor.end.86:                                       ; preds = %57, %if.then.82
  %58 = phi i1 [ true, %if.then.82 ], [ false, %57 ]
  %lor.ext87 = zext i1 %58 to i32
  %eh_parent88 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %59 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent88, align 8, !tbaa !49
  store %struct.sm_exc_handler* %59, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value89 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %60 = load %struct.sm_exc*, %struct.sm_exc** %eh_value89, align 8, !tbaa !47
  %cmp90 = icmp ne %struct.sm_exc* %60, null
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %lor.end.86
  %eh_value93 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %61 = load %struct.sm_exc*, %struct.sm_exc** %eh_value93, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %61) #11
  unreachable

if.end.94:                                        ; preds = %lor.end.86
  br label %if.end.108

if.else:                                          ; preds = %do.end
  %eh_state95 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %62 = load i32, i32* %eh_state95, align 4, !tbaa !50
  %cmp96 = icmp eq i32 %62, 0
  br i1 %cmp96, label %if.then.98, label %if.else.105

if.then.98:                                       ; preds = %if.else
  %eh_value99 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %63 = load %struct.sm_exc*, %struct.sm_exc** %eh_value99, align 8, !tbaa !47
  %cmp100 = icmp ne %struct.sm_exc* %63, null
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.then.98
  %eh_value103 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %64 = load %struct.sm_exc*, %struct.sm_exc** %eh_value103, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %64) #11
  unreachable

if.end.104:                                       ; preds = %if.then.98
  br label %if.end.107

if.else.105:                                      ; preds = %if.else
  %eh_value106 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %65 = load %struct.sm_exc*, %struct.sm_exc** %eh_value106, align 8, !tbaa !47
  call void @sm_exc_free(%struct.sm_exc* %65)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.end.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.94
  %66 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %66) #1
  %67 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %cmp109 = icmp eq %struct.address* %67, null
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.end.108
  %68 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %69 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %call112 = call i32 @sameaddr(%struct.address* %68, %struct.address* %69)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.122

if.then.114:                                      ; preds = %lor.lhs.false.111, %if.end.108
  %70 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv115 = zext i8 %70 to i32
  %cmp116 = icmp sge i32 %conv115, 9
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.121

land.lhs.true.118:                                ; preds = %if.then.114
  %71 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool119 = icmp ne i32 %71, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %land.lhs.true.118
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %land.lhs.true.118, %if.then.114
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.122:                                       ; preds = %lor.lhs.false.111
  %72 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %72, i32 0, i32 5
  %73 = load i64, i64* %q_flags, align 8, !tbaa !38
  %and123 = and i64 %73, -245747
  store i64 %and123, i64* %q_flags, align 8, !tbaa !38
  %74 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags124 = getelementptr inbounds %struct.address, %struct.address* %74, i32 0, i32 5
  %75 = load i64, i64* %q_flags124, align 8, !tbaa !38
  %and125 = and i64 %75, 245746
  %76 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %q_flags126 = getelementptr inbounds %struct.address, %struct.address* %76, i32 0, i32 5
  %77 = load i64, i64* %q_flags126, align 8, !tbaa !38
  %or = or i64 %77, %and125
  store i64 %or, i64* %q_flags126, align 8, !tbaa !38
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %78, i32 0, i32 52
  %79 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %80 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %80, i32 0, i32 0
  %81 = load i8*, i8** %q_paddr, align 8, !tbaa !19
  %call127 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %79, i8* %81)
  %82 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %q_paddr128 = getelementptr inbounds %struct.address, %struct.address* %82, i32 0, i32 0
  store i8* %call127, i8** %q_paddr128, align 8, !tbaa !19
  %83 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_finalrcpt = getelementptr inbounds %struct.address, %struct.address* %83, i32 0, i32 15
  %84 = load i8*, i8** %q_finalrcpt, align 8, !tbaa !65
  %85 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %q_finalrcpt129 = getelementptr inbounds %struct.address, %struct.address* %85, i32 0, i32 15
  store i8* %84, i8** %q_finalrcpt129, align 8, !tbaa !65
  %86 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_orcpt = getelementptr inbounds %struct.address, %struct.address* %86, i32 0, i32 16
  %87 = load i8*, i8** %q_orcpt, align 8, !tbaa !63
  %88 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %q_orcpt130 = getelementptr inbounds %struct.address, %struct.address* %88, i32 0, i32 16
  store i8* %87, i8** %q_orcpt130, align 8, !tbaa !63
  %89 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_state131 = getelementptr inbounds %struct.address, %struct.address* %89, i32 0, i32 21
  store i16 11, i16* %q_state131, align 2, !tbaa !18
  %90 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv132 = zext i8 %90 to i32
  %cmp133 = icmp sge i32 %conv132, 5
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.139

land.lhs.true.135:                                ; preds = %if.end.122
  %91 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool136 = icmp ne i32 %91, 0
  br i1 %tobool136, label %if.end.139, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.135
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0))
  %call138 = call %struct.sm_file* @sm_debug_file()
  %92 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call138, %struct.address* %92, i32 0)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.end.122
  %93 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %94 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %94, i32 0, i32 11
  store %struct.address* %93, %struct.address** %q_alias, align 8, !tbaa !54
  %95 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %96 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool140 = getelementptr inbounds %struct.envelope, %struct.envelope* %96, i32 0, i32 52
  %97 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool140, align 8, !tbaa !16
  %98 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr141 = getelementptr inbounds %struct.address, %struct.address* %98, i32 0, i32 0
  %99 = load i8*, i8** %q_paddr141, align 8, !tbaa !19
  %call142 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %97, i8* %99)
  %100 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @allocaddr(%struct.address* %95, i32 48, i8* %call142, %struct.envelope* %100)
  %101 = load %struct.address*, %struct.address** %a1, align 8, !tbaa !1
  %102 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %103 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %104 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call143 = call %struct.address* @recipient(%struct.address* %101, %struct.address** %102, i32 %103, %struct.envelope* %104)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.139, %if.end.121, %if.end.46, %if.end.30, %if.end.13
  %105 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %105) #1
  %106 = bitcast %struct.address** %a1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
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

declare i32 @sm_exc_match(%struct.sm_exc*, i8*) #2

; Function Attrs: noreturn
declare void @sm_exc_raisenew_x(%struct.sm_exc_type*, ...) #5

declare %struct.address* @recipient(%struct.address*, %struct.address**, i32, %struct.envelope*) #2

; Function Attrs: nounwind uwtable
define i32 @dequote_init(%struct._map* %map, i8* %args) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %args.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %args, i8** %args.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %args.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 3
  %3 = load i64, i64* %map_mflags, align 8, !tbaa !68
  %or = or i64 %3, 65536
  store i64 %or, i64* %map_mflags, align 8, !tbaa !68
  br label %for.cond

for.cond:                                         ; preds = %if.end.42, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %4 = load i8*, i8** %p, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !15
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %conv2 = sext i8 %7 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv3 = zext i16 %9 to i32
  %and4 = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %conv5 = sext i8 %13 to i32
  %cmp6 = icmp ne i32 %conv5, 45
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8, !tbaa !1
  %15 = load i8, i8* %incdec.ptr8, align 1, !tbaa !15
  %conv9 = sext i8 %15 to i32
  switch i32 %conv9, label %sw.epilog [
    i32 97, label %sw.bb
    i32 68, label %sw.bb.11
    i32 83, label %sw.bb.14
    i32 115, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8, !tbaa !1
  %17 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app = getelementptr inbounds %struct._map, %struct._map* %17, i32 0, i32 13
  store i8* %incdec.ptr10, i8** %map_app, align 8, !tbaa !81
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags12 = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 3
  %19 = load i64, i64* %map_mflags12, align 8, !tbaa !68
  %or13 = or i64 %19, 524288
  store i64 %or13, i64* %map_mflags12, align 8, !tbaa !68
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end, %if.end
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %incdec.ptr15, align 1, !tbaa !15
  %22 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_spacesub = getelementptr inbounds %struct._map, %struct._map* %22, i32 0, i32 12
  store i8 %21, i8* %map_spacesub, align 1, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.14, %sw.bb.11, %sw.bb
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.35, %sw.epilog
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !15
  %conv17 = sext i8 %24 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %land.rhs.20, label %land.end.34

land.rhs.20:                                      ; preds = %while.cond.16
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !15
  %conv21 = sext i8 %26 to i32
  %and22 = and i32 %conv21, -128
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %land.rhs.25, label %land.end.33

land.rhs.25:                                      ; preds = %land.rhs.20
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %conv26 = sext i8 %28 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #9
  %29 = load i16*, i16** %call28, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %29, i64 %idxprom27
  %30 = load i16, i16* %arrayidx29, align 2, !tbaa !24
  %conv30 = zext i16 %30 to i32
  %and31 = and i32 %conv30, 8192
  %tobool32 = icmp ne i32 %and31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.25, %land.rhs.20
  %31 = phi i1 [ false, %land.rhs.20 ], [ %tobool32, %land.rhs.25 ]
  %lnot = xor i1 %31, true
  br label %land.end.34

land.end.34:                                      ; preds = %land.end.33, %while.cond.16
  %32 = phi i1 [ false, %while.cond.16 ], [ %lnot, %land.end.33 ]
  br i1 %32, label %while.body.35, label %while.end.37

while.body.35:                                    ; preds = %land.end.34
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8, !tbaa !1
  br label %while.cond.16

while.end.37:                                     ; preds = %land.end.34
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !15
  %conv38 = sext i8 %35 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %while.end.37
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %36, align 1, !tbaa !15
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %while.end.37
  br label %for.cond

for.end:                                          ; preds = %if.then
  %37 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app43 = getelementptr inbounds %struct._map, %struct._map* %37, i32 0, i32 13
  %38 = load i8*, i8** %map_app43, align 8, !tbaa !81
  %cmp44 = icmp ne i8* %38, null
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %for.end
  %39 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app47 = getelementptr inbounds %struct._map, %struct._map* %39, i32 0, i32 13
  %40 = load i8*, i8** %map_app47, align 8, !tbaa !81
  %call48 = call i8* @newstr(i8* %40)
  %41 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app49 = getelementptr inbounds %struct._map, %struct._map* %41, i32 0, i32 13
  store i8* %call48, i8** %map_app49, align 8, !tbaa !81
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %for.end
  %42 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  ret i32 1
}

declare i8* @newstr(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @dequote_map(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i8, align 1
  %anglecnt = alloca i32, align 4
  %cmntcnt = alloca i32, align 4
  %quotecnt = alloca i32, align 4
  %spacecnt = alloca i32, align 4
  %quotemode = alloca i32, align 4
  %bslashmode = alloca i32, align 4
  %spacesub = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %2 = bitcast i32* %anglecnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %anglecnt, align 4, !tbaa !5
  %3 = bitcast i32* %cmntcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %cmntcnt, align 4, !tbaa !5
  %4 = bitcast i32* %quotecnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %quotecnt, align 4, !tbaa !5
  %5 = bitcast i32* %spacecnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %spacecnt, align 4, !tbaa !5
  %6 = bitcast i32* %quotemode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %quotemode, align 4, !tbaa !5
  %7 = bitcast i32* %bslashmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %bslashmode, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %spacesub) #1
  %8 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_spacesub = getelementptr inbounds %struct._map, %struct._map* %8, i32 0, i32 12
  %9 = load i8, i8* %map_spacesub, align 1, !tbaa !36
  store i8 %9, i8* %spacesub, align 1, !tbaa !15
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i8* %10, i8** %q, align 8, !tbaa !1
  store i8* %10, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.37, %sw.bb.26, %if.then.22, %if.then, %entry
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !15
  store i8 %12, i8* %c, align 1, !tbaa !15
  %conv = sext i8 %12 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %bslashmode, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %bslashmode, align 4, !tbaa !5
  %14 = load i8, i8* %c, align 1, !tbaa !15
  %15 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr2, i8** %q, align 8, !tbaa !1
  store i8 %14, i8* %15, align 1, !tbaa !15
  br label %for.cond

if.end:                                           ; preds = %for.body
  %16 = load i8, i8* %c, align 1, !tbaa !15
  %conv3 = sext i8 %16 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %17 = load i8, i8* %spacesub, align 1, !tbaa !15
  %conv6 = sext i8 %17 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  %18 = load i8, i8* %spacesub, align 1, !tbaa !15
  store i8 %18, i8* %c, align 1, !tbaa !15
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %19 = load i8, i8* %c, align 1, !tbaa !15
  %conv11 = sext i8 %19 to i32
  switch i32 %conv11, label %sw.epilog [
    i32 92, label %sw.bb
    i32 40, label %sw.bb.12
    i32 41, label %sw.bb.13
    i32 32, label %sw.bb.18
    i32 9, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.10
  store i32 1, i32* %bslashmode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.10
  %20 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %cmntcnt, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.10
  %21 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %cmntcnt, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %21, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.bb.13
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %sw.bb.13
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.10, %if.end.10
  %22 = load i32, i32* %spacecnt, align 4, !tbaa !5
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %spacecnt, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %sw.bb.18, %if.end.17, %sw.bb.12, %sw.bb
  %23 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %23, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %sw.epilog
  %24 = load i8, i8* %c, align 1, !tbaa !15
  %25 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr23, i8** %q, align 8, !tbaa !1
  store i8 %24, i8* %25, align 1, !tbaa !15
  br label %for.cond

if.end.24:                                        ; preds = %sw.epilog
  %26 = load i8, i8* %c, align 1, !tbaa !15
  %conv25 = sext i8 %26 to i32
  switch i32 %conv25, label %sw.epilog.37 [
    i32 34, label %sw.bb.26
    i32 60, label %sw.bb.29
    i32 62, label %sw.bb.31
  ]

sw.bb.26:                                         ; preds = %if.end.24
  %27 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %27, 0
  %lnot = xor i1 %tobool27, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quotemode, align 4, !tbaa !5
  %28 = load i32, i32* %quotecnt, align 4, !tbaa !5
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %quotecnt, align 4, !tbaa !5
  br label %for.cond

sw.bb.29:                                         ; preds = %if.end.24
  %29 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %anglecnt, align 4, !tbaa !5
  br label %sw.epilog.37

sw.bb.31:                                         ; preds = %if.end.24
  %30 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %dec32 = add nsw i32 %30, -1
  store i32 %dec32, i32* %anglecnt, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %30, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.31
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %sw.bb.31
  br label %sw.epilog.37

sw.epilog.37:                                     ; preds = %if.end.24, %if.end.36, %sw.bb.29
  %31 = load i8, i8* %c, align 1, !tbaa !15
  %32 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr38, i8** %q, align 8, !tbaa !1
  store i8 %31, i8* %32, align 1, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %anglecnt, align 4, !tbaa !5
  %cmp39 = icmp ne i32 %33, 0
  br i1 %cmp39, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %34 = load i32, i32* %cmntcnt, align 4, !tbaa !5
  %cmp41 = icmp ne i32 %34, 0
  br i1 %cmp41, label %if.then.53, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* %bslashmode, align 4, !tbaa !5
  %tobool44 = icmp ne i32 %35, 0
  br i1 %tobool44, label %if.then.53, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.43
  %36 = load i32, i32* %quotemode, align 4, !tbaa !5
  %tobool46 = icmp ne i32 %36, 0
  br i1 %tobool46, label %if.then.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.45
  %37 = load i32, i32* %quotecnt, align 4, !tbaa !5
  %cmp48 = icmp sle i32 %37, 0
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.47
  %38 = load i32, i32* %spacecnt, align 4, !tbaa !5
  %cmp51 = icmp ne i32 %38, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.47, %lor.lhs.false.45, %lor.lhs.false.43, %lor.lhs.false, %for.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %lor.lhs.false.50
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr55, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %39, align 1, !tbaa !15
  %40 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %42) #10
  %call56 = call i8* @map_rewrite(%struct._map* %40, i8* %41, i64 %call, i8** null)
  store i8* %call56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.53, %if.then.35, %if.then.16
  call void @llvm.lifetime.end(i64 1, i8* %spacesub) #1
  %43 = bitcast i32* %bslashmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %quotemode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %spacecnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %quotecnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %cmntcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %anglecnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %49 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i8*, i8** %retval
  ret i8* %51
}

declare i8* @map_rewrite(%struct._map*, i8*, i64, i8**) #2

; Function Attrs: nounwind uwtable
define i32 @rscheck(i8* %rwset, i8* %p1, i8* %p2, %struct.envelope* %e, i32 %flags, i32 %logl, i8* %host, i8* %logid, %struct.address* %addr, i8** %addrstr) #0 {
entry:
  %retval = alloca i32, align 4
  %rwset.addr = alloca i8*, align 8
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %flags.addr = alloca i32, align 4
  %logl.addr = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %logid.addr = alloca i8*, align 8
  %addr.addr = alloca %struct.address*, align 8
  %addrstr.addr = alloca i8**, align 8
  %buf = alloca i8*, align 8
  %bufsize = alloca i64, align 8
  %saveexitstat = alloca i32, align 4
  %rstat = alloca i32, align 4
  %pvp = alloca i8**, align 8
  %rsno = alloca i32, align 4
  %discard = alloca i32, align 4
  %saveQuickAbort = alloca i32, align 4
  %saveSuprErrs = alloca i32, align 4
  %quarantine = alloca i32, align 4
  %ubuf = alloca [16384 x i8], align 16
  %buf0 = alloca [2048 x i8], align 16
  %pvpbuf = alloca [1256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %_h = alloca %struct.sm_exc_handler, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %__s1_len161 = alloca i64, align 8
  %__s2_len163 = alloca i64, align 8
  %tmp164 = alloca i32, align 4
  %__s1170 = alloca i8*, align 8
  %__result173 = alloca i32, align 4
  %tmp211 = alloca i32, align 4
  %__s1_len222 = alloca i64, align 8
  %__s2_len224 = alloca i64, align 8
  %tmp225 = alloca i32, align 4
  %__s1231 = alloca i8*, align 8
  %__result234 = alloca i32, align 4
  %tmp272 = alloca i32, align 4
  %__s1_len290 = alloca i64, align 8
  %__s2_len292 = alloca i64, align 8
  %tmp293 = alloca i32, align 4
  %__s1299 = alloca i8*, align 8
  %__result302 = alloca i32, align 4
  %tmp340 = alloca i32, align 4
  %__s1_len365 = alloca i64, align 8
  %__s2_len367 = alloca i64, align 8
  %tmp368 = alloca i32, align 4
  %__s1374 = alloca i8*, align 8
  %__result377 = alloca i32, align 4
  %tmp415 = alloca i32, align 4
  %a1 = alloca %struct.address, align 8
  %savelogusrerrs = alloca i32, align 4
  %relay = alloca i8*, align 8
  %p = alloca i8*, align 8
  %lbuf = alloca [2048 x i8], align 16
  store i8* %rwset, i8** %rwset.addr, align 8, !tbaa !1
  store i8* %p1, i8** %p1.addr, align 8, !tbaa !1
  store i8* %p2, i8** %p2.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store i32 %logl, i32* %logl.addr, align 4, !tbaa !5
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store i8* %logid, i8** %logid.addr, align 8, !tbaa !1
  store %struct.address* %addr, %struct.address** %addr.addr, align 8, !tbaa !1
  store i8** %addrstr, i8*** %addrstr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %bufsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %saveexitstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store volatile i32 0, i32* %rstat, align 4, !tbaa !5
  %4 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %rsno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %discard to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store volatile i32 0, i32* %discard, align 4, !tbaa !5
  %7 = bitcast i32* %saveQuickAbort to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %8, i32* %saveQuickAbort, align 4, !tbaa !5
  %9 = bitcast i32* %saveSuprErrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* @SuprErrs, align 4, !tbaa !5
  store i32 %10, i32* %saveSuprErrs, align 4, !tbaa !5
  %11 = bitcast i32* %quarantine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %quarantine, align 4, !tbaa !5
  %12 = bitcast [16384 x i8]* %ubuf to i8*
  call void @llvm.lifetime.start(i64 16384, i8* %12) #1
  %13 = bitcast [2048 x i8]* %buf0 to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %13) #1
  %14 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %14) #1
  %15 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 48), align 1, !tbaa !15
  %conv = zext i8 %15 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %19, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %20 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %cond.true ], [ %20, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0), i8* %17, i8* %18, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %21 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %call = call i32 @strtorwset(i8* %21, i8** null, i32 0)
  store i32 %call, i32* %rsno, align 4, !tbaa !5
  %22 = load i32, i32* %rsno, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %22, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %23 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %cmp8 = icmp ne i8* %23, null
  br i1 %cmp8, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.end.7
  %24 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %call11 = call i64 @strlen(i8* %24) #10
  %25 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %call12 = call i64 @strlen(i8* %25) #10
  %add = add i64 %call11, %call12
  %add13 = add i64 %add, 2
  store i64 %add13, i64* %bufsize, align 8, !tbaa !35
  %26 = load i64, i64* %bufsize, align 8, !tbaa !35
  %cmp14 = icmp ugt i64 %26, 2048
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.10
  %27 = load i64, i64* %bufsize, align 8, !tbaa !35
  %28 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call17 = call i8* @sm_malloc_tagged_x(i64 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3123, i32 %28)
  store volatile i8* %call17, i8** %buf, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %if.then.10
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf0, i32 0, i32 0
  store volatile i8* %arraydecay, i8** %buf, align 8, !tbaa !1
  store i64 2048, i64* %bufsize, align 8, !tbaa !35
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %29 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %30 = load i64, i64* %bufsize, align 8, !tbaa !35
  %31 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %call19 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* %31, i32 155, i8* %32)
  br label %if.end.31

if.else.20:                                       ; preds = %if.end.7
  %33 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %call21 = call i64 @strlen(i8* %33) #10
  %add22 = add i64 %call21, 1
  store i64 %add22, i64* %bufsize, align 8, !tbaa !35
  %34 = load i64, i64* %bufsize, align 8, !tbaa !35
  %cmp23 = icmp ugt i64 %34, 2048
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else.20
  %35 = load i64, i64* %bufsize, align 8, !tbaa !35
  %36 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call26 = call i8* @sm_malloc_tagged_x(i64 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3135, i32 %36)
  store volatile i8* %call26, i8** %buf, align 8, !tbaa !1
  br label %if.end.29

if.else.27:                                       ; preds = %if.else.20
  %arraydecay28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf0, i32 0, i32 0
  store volatile i8* %arraydecay28, i8** %buf, align 8, !tbaa !1
  store i64 2048, i64* %bufsize, align 8, !tbaa !35
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.25
  %37 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %38 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %39 = load i64, i64* %bufsize, align 8, !tbaa !35
  %call30 = call i64 @sm_strlcpy(i8* %37, i8* %38, i64 %39)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end.18
  %40 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %40) #1
  br label %do.body

do.body:                                          ; preds = %if.end.31
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !47
  %41 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %41, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !49
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !50
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay32 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call33 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay32, i32 0) #12
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.520

if.then.36:                                       ; preds = %do.body
  store i32 1, i32* @SuprErrs, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  %42 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %arraydecay37 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %43 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and = and i32 %43, 1
  %cmp38 = icmp ne i32 %and, 0
  %cond40 = select i1 %cmp38, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @IntTokenTab, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @TokTypeNoC, i32 0, i32 0)
  %44 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and41 = and i32 %44, 1
  %cmp42 = icmp ne i32 %and41, 0
  %cond44 = select i1 %cmp42, i32 0, i32 1
  %call45 = call i8** @prescan(i8* %42, i32 0, i8* %arraydecay37, i32 1256, i8** null, i8* %cond40, i32 %cond44)
  store i8** %call45, i8*** %pvp, align 8, !tbaa !1
  %45 = load i32, i32* %saveSuprErrs, align 4, !tbaa !5
  store i32 %45, i32* @SuprErrs, align 4, !tbaa !5
  %46 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp46 = icmp eq i8** %46, null
  br i1 %cmp46, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.then.36
  %47 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 48), align 1, !tbaa !15
  %conv49 = zext i8 %47 to i32
  %cmp50 = icmp sge i32 %conv49, 2
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.55

land.lhs.true.52:                                 ; preds = %if.then.48
  %48 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %48, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.52
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %land.lhs.true.52, %if.then.48
  br label %finis

if.end.56:                                        ; preds = %if.then.36
  %49 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and57 = and i32 %49, 2
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  store i32 1, i32* @SuprErrs, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.56
  %50 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %51 = load i32, i32* %rsno, align 4, !tbaa !5
  %52 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call62 = call i32 @rewrite(i8** %50, i32 %51, i32 0, %struct.envelope* %52, i32 1000)
  %53 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and63 = and i32 %53, 2
  %cmp64 = icmp ne i32 %and63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.61
  %54 = load i32, i32* %saveSuprErrs, align 4, !tbaa !5
  store i32 %54, i32* @SuprErrs, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.61
  %55 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %55, i64 0
  %56 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp68 = icmp ne i8* %56, null
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.93

land.lhs.true.70:                                 ; preds = %if.end.67
  %57 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8*, i8** %57, i64 0
  %58 = load i8*, i8** %arrayidx71, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx72, align 1, !tbaa !15
  %conv73 = sext i8 %59 to i32
  %and74 = and i32 %conv73, 255
  %cmp75 = icmp ne i32 %and74, 150
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.93

land.lhs.true.77:                                 ; preds = %land.lhs.true.70
  %60 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and78 = and i32 %60, 8
  %cmp79 = icmp ne i32 %and78, 0
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.93

land.lhs.true.81:                                 ; preds = %land.lhs.true.77
  %61 = load i8**, i8*** %addrstr.addr, align 8, !tbaa !1
  %cmp82 = icmp ne i8** %61, null
  br i1 %cmp82, label %if.then.84, label %if.end.93

if.then.84:                                       ; preds = %land.lhs.true.81
  %62 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8*, i8** %62, i64 0
  %arraydecay86 = getelementptr inbounds [16384 x i8], [16384 x i8]* %ubuf, i32 0, i32 0
  %63 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and87 = and i32 %63, 16
  %cmp88 = icmp ne i32 %and87, 0
  %cond90 = select i1 %cmp88, i32 256, i32 32
  call void @cataddr(i8** %arrayidx85, i8** null, i8* %arraydecay86, i32 16384, i32 %cond90, i32 1)
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 52
  %65 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %arraydecay91 = getelementptr inbounds [16384 x i8], [16384 x i8]* %ubuf, i32 0, i32 0
  %call92 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %65, i8* %arraydecay91)
  %66 = load i8**, i8*** %addrstr.addr, align 8, !tbaa !1
  store i8* %call92, i8** %66, align 8, !tbaa !1
  br label %finis

if.end.93:                                        ; preds = %land.lhs.true.81, %land.lhs.true.77, %land.lhs.true.70, %if.end.67
  %67 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8*, i8** %67, i64 0
  %68 = load i8*, i8** %arrayidx94, align 8, !tbaa !1
  %cmp95 = icmp eq i8* %68, null
  br i1 %cmp95, label %if.then.219, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.93
  %69 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8*, i8** %69, i64 0
  %70 = load i8*, i8** %arrayidx97, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx98, align 1, !tbaa !15
  %conv99 = sext i8 %71 to i32
  %and100 = and i32 %conv99, 255
  %cmp101 = icmp ne i32 %and100, 150
  br i1 %cmp101, label %if.then.219, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %lor.lhs.false
  %72 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8*, i8** %72, i64 1
  %73 = load i8*, i8** %arrayidx104, align 8, !tbaa !1
  %cmp105 = icmp eq i8* %73, null
  br i1 %cmp105, label %if.then.219, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.103
  %74 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.131 to i64)), i64 1), label %land.lhs.true.108, label %cond.false.152

land.lhs.true.108:                                ; preds = %lor.lhs.false.107
  store i64 5, i64* %__s2_len, align 8, !tbaa !35
  %76 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp109 = icmp ult i64 %76, 4
  br i1 %cmp109, label %cond.true.111, label %cond.false.152

cond.true.111:                                    ; preds = %land.lhs.true.108
  %77 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8*, i8** %78, i64 1
  %79 = load i8*, i8** %arrayidx113, align 8, !tbaa !1
  store i8* %79, i8** %__s1, align 8, !tbaa !1
  %80 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx115, align 1, !tbaa !15
  %conv116 = zext i8 %82 to i32
  %83 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), align 1, !tbaa !15
  %conv117 = zext i8 %83 to i32
  %sub = sub nsw i32 %conv116, %conv117
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %84 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp118 = icmp ugt i64 %84, 0
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.150

land.lhs.true.120:                                ; preds = %cond.true.111
  %85 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp121 = icmp eq i32 %85, 0
  br i1 %cmp121, label %if.then.123, label %if.end.150

if.then.123:                                      ; preds = %land.lhs.true.120
  %86 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx124, align 1, !tbaa !15
  %conv125 = zext i8 %87 to i32
  %88 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 1), align 1, !tbaa !15
  %conv126 = zext i8 %88 to i32
  %sub127 = sub nsw i32 %conv125, %conv126
  store i32 %sub127, i32* %__result, align 4, !tbaa !5
  %89 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp128 = icmp ugt i64 %89, 1
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.149

land.lhs.true.130:                                ; preds = %if.then.123
  %90 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp131 = icmp eq i32 %90, 0
  br i1 %cmp131, label %if.then.133, label %if.end.149

if.then.133:                                      ; preds = %land.lhs.true.130
  %91 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %91, i64 2
  %92 = load i8, i8* %arrayidx134, align 1, !tbaa !15
  %conv135 = zext i8 %92 to i32
  %93 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 2), align 1, !tbaa !15
  %conv136 = zext i8 %93 to i32
  %sub137 = sub nsw i32 %conv135, %conv136
  store i32 %sub137, i32* %__result, align 4, !tbaa !5
  %94 = load i64, i64* %__s2_len, align 8, !tbaa !35
  %cmp138 = icmp ugt i64 %94, 2
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.148

land.lhs.true.140:                                ; preds = %if.then.133
  %95 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %95, 0
  br i1 %cmp141, label %if.then.143, label %if.end.148

if.then.143:                                      ; preds = %land.lhs.true.140
  %96 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %96, i64 3
  %97 = load i8, i8* %arrayidx144, align 1, !tbaa !15
  %conv145 = zext i8 %97 to i32
  %98 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 3), align 1, !tbaa !15
  %conv146 = zext i8 %98 to i32
  %sub147 = sub nsw i32 %conv145, %conv146
  store i32 %sub147, i32* %__result, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.143, %land.lhs.true.140, %if.then.133
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %land.lhs.true.130, %if.then.123
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.120, %cond.true.111
  %99 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %99, i32* %tmp151, !tbaa !5
  %100 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = load i32, i32* %tmp151, !tbaa !5
  br label %cond.end.155

cond.false.152:                                   ; preds = %land.lhs.true.108, %lor.lhs.false.107
  %103 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8*, i8** %103, i64 1
  %104 = load i8*, i8** %arrayidx153, align 8, !tbaa !1
  %call154 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0)) #1
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.152, %if.end.150
  %cond156 = phi i32 [ %102, %if.end.150 ], [ %call154, %cond.false.152 ]
  store i32 %cond156, i32* %tmp, !tbaa !5
  %105 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = load i32, i32* %tmp, !tbaa !5
  %cmp157 = icmp ne i32 %107, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.220

land.lhs.true.159:                                ; preds = %cond.end.155
  %108 = bitcast i64* %__s1_len161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = bitcast i64* %__s2_len163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.132 to i64)), i64 1), label %land.lhs.true.165, label %cond.false.212

land.lhs.true.165:                                ; preds = %land.lhs.true.159
  store i64 7, i64* %__s2_len163, align 8, !tbaa !35
  %110 = load i64, i64* %__s2_len163, align 8, !tbaa !35
  %cmp166 = icmp ult i64 %110, 4
  br i1 %cmp166, label %cond.true.168, label %cond.false.212

cond.true.168:                                    ; preds = %land.lhs.true.165
  %111 = bitcast i8** %__s1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  %112 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8*, i8** %112, i64 1
  %113 = load i8*, i8** %arrayidx171, align 8, !tbaa !1
  store i8* %113, i8** %__s1170, align 8, !tbaa !1
  %114 = bitcast i32* %__result173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = load i8*, i8** %__s1170, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %115, i64 0
  %116 = load i8, i8* %arrayidx174, align 1, !tbaa !15
  %conv175 = zext i8 %116 to i32
  %117 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), align 1, !tbaa !15
  %conv176 = zext i8 %117 to i32
  %sub177 = sub nsw i32 %conv175, %conv176
  store i32 %sub177, i32* %__result173, align 4, !tbaa !5
  %118 = load i64, i64* %__s2_len163, align 8, !tbaa !35
  %cmp178 = icmp ugt i64 %118, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.210

land.lhs.true.180:                                ; preds = %cond.true.168
  %119 = load i32, i32* %__result173, align 4, !tbaa !5
  %cmp181 = icmp eq i32 %119, 0
  br i1 %cmp181, label %if.then.183, label %if.end.210

if.then.183:                                      ; preds = %land.lhs.true.180
  %120 = load i8*, i8** %__s1170, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %120, i64 1
  %121 = load i8, i8* %arrayidx184, align 1, !tbaa !15
  %conv185 = zext i8 %121 to i32
  %122 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 1), align 1, !tbaa !15
  %conv186 = zext i8 %122 to i32
  %sub187 = sub nsw i32 %conv185, %conv186
  store i32 %sub187, i32* %__result173, align 4, !tbaa !5
  %123 = load i64, i64* %__s2_len163, align 8, !tbaa !35
  %cmp188 = icmp ugt i64 %123, 1
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.209

land.lhs.true.190:                                ; preds = %if.then.183
  %124 = load i32, i32* %__result173, align 4, !tbaa !5
  %cmp191 = icmp eq i32 %124, 0
  br i1 %cmp191, label %if.then.193, label %if.end.209

if.then.193:                                      ; preds = %land.lhs.true.190
  %125 = load i8*, i8** %__s1170, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %125, i64 2
  %126 = load i8, i8* %arrayidx194, align 1, !tbaa !15
  %conv195 = zext i8 %126 to i32
  %127 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 2), align 1, !tbaa !15
  %conv196 = zext i8 %127 to i32
  %sub197 = sub nsw i32 %conv195, %conv196
  store i32 %sub197, i32* %__result173, align 4, !tbaa !5
  %128 = load i64, i64* %__s2_len163, align 8, !tbaa !35
  %cmp198 = icmp ugt i64 %128, 2
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.208

land.lhs.true.200:                                ; preds = %if.then.193
  %129 = load i32, i32* %__result173, align 4, !tbaa !5
  %cmp201 = icmp eq i32 %129, 0
  br i1 %cmp201, label %if.then.203, label %if.end.208

if.then.203:                                      ; preds = %land.lhs.true.200
  %130 = load i8*, i8** %__s1170, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = load i8, i8* %arrayidx204, align 1, !tbaa !15
  %conv205 = zext i8 %131 to i32
  %132 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 3), align 1, !tbaa !15
  %conv206 = zext i8 %132 to i32
  %sub207 = sub nsw i32 %conv205, %conv206
  store i32 %sub207, i32* %__result173, align 4, !tbaa !5
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.203, %land.lhs.true.200, %if.then.193
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.190, %if.then.183
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.180, %cond.true.168
  %133 = load i32, i32* %__result173, align 4, !tbaa !5
  store i32 %133, i32* %tmp211, !tbaa !5
  %134 = bitcast i32* %__result173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i8** %__s1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = load i32, i32* %tmp211, !tbaa !5
  br label %cond.end.215

cond.false.212:                                   ; preds = %land.lhs.true.165, %land.lhs.true.159
  %137 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8*, i8** %137, i64 1
  %138 = load i8*, i8** %arrayidx213, align 8, !tbaa !1
  %call214 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0)) #1
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.212, %if.end.210
  %cond216 = phi i32 [ %136, %if.end.210 ], [ %call214, %cond.false.212 ]
  store i32 %cond216, i32* %tmp164, !tbaa !5
  %139 = bitcast i64* %__s2_len163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i64* %__s1_len161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = load i32, i32* %tmp164, !tbaa !5
  %cmp217 = icmp ne i32 %141, 0
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %cond.end.215, %lor.lhs.false.103, %lor.lhs.false, %if.end.93
  br label %finis

if.end.220:                                       ; preds = %cond.end.215, %cond.end.155
  %142 = bitcast i64* %__s1_len222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %143 = bitcast i64* %__s2_len224 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.132 to i64)), i64 1), label %land.lhs.true.226, label %cond.false.273

land.lhs.true.226:                                ; preds = %if.end.220
  store i64 7, i64* %__s2_len224, align 8, !tbaa !35
  %144 = load i64, i64* %__s2_len224, align 8, !tbaa !35
  %cmp227 = icmp ult i64 %144, 4
  br i1 %cmp227, label %cond.true.229, label %cond.false.273

cond.true.229:                                    ; preds = %land.lhs.true.226
  %145 = bitcast i8** %__s1231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #1
  %146 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8*, i8** %146, i64 1
  %147 = load i8*, i8** %arrayidx232, align 8, !tbaa !1
  store i8* %147, i8** %__s1231, align 8, !tbaa !1
  %148 = bitcast i32* %__result234 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = load i8*, i8** %__s1231, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx235, align 1, !tbaa !15
  %conv236 = zext i8 %150 to i32
  %151 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), align 1, !tbaa !15
  %conv237 = zext i8 %151 to i32
  %sub238 = sub nsw i32 %conv236, %conv237
  store i32 %sub238, i32* %__result234, align 4, !tbaa !5
  %152 = load i64, i64* %__s2_len224, align 8, !tbaa !35
  %cmp239 = icmp ugt i64 %152, 0
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.271

land.lhs.true.241:                                ; preds = %cond.true.229
  %153 = load i32, i32* %__result234, align 4, !tbaa !5
  %cmp242 = icmp eq i32 %153, 0
  br i1 %cmp242, label %if.then.244, label %if.end.271

if.then.244:                                      ; preds = %land.lhs.true.241
  %154 = load i8*, i8** %__s1231, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %154, i64 1
  %155 = load i8, i8* %arrayidx245, align 1, !tbaa !15
  %conv246 = zext i8 %155 to i32
  %156 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 1), align 1, !tbaa !15
  %conv247 = zext i8 %156 to i32
  %sub248 = sub nsw i32 %conv246, %conv247
  store i32 %sub248, i32* %__result234, align 4, !tbaa !5
  %157 = load i64, i64* %__s2_len224, align 8, !tbaa !35
  %cmp249 = icmp ugt i64 %157, 1
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.270

land.lhs.true.251:                                ; preds = %if.then.244
  %158 = load i32, i32* %__result234, align 4, !tbaa !5
  %cmp252 = icmp eq i32 %158, 0
  br i1 %cmp252, label %if.then.254, label %if.end.270

if.then.254:                                      ; preds = %land.lhs.true.251
  %159 = load i8*, i8** %__s1231, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %159, i64 2
  %160 = load i8, i8* %arrayidx255, align 1, !tbaa !15
  %conv256 = zext i8 %160 to i32
  %161 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 2), align 1, !tbaa !15
  %conv257 = zext i8 %161 to i32
  %sub258 = sub nsw i32 %conv256, %conv257
  store i32 %sub258, i32* %__result234, align 4, !tbaa !5
  %162 = load i64, i64* %__s2_len224, align 8, !tbaa !35
  %cmp259 = icmp ugt i64 %162, 2
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.269

land.lhs.true.261:                                ; preds = %if.then.254
  %163 = load i32, i32* %__result234, align 4, !tbaa !5
  %cmp262 = icmp eq i32 %163, 0
  br i1 %cmp262, label %if.then.264, label %if.end.269

if.then.264:                                      ; preds = %land.lhs.true.261
  %164 = load i8*, i8** %__s1231, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i8, i8* %164, i64 3
  %165 = load i8, i8* %arrayidx265, align 1, !tbaa !15
  %conv266 = zext i8 %165 to i32
  %166 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i64 3), align 1, !tbaa !15
  %conv267 = zext i8 %166 to i32
  %sub268 = sub nsw i32 %conv266, %conv267
  store i32 %sub268, i32* %__result234, align 4, !tbaa !5
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.264, %land.lhs.true.261, %if.then.254
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %land.lhs.true.251, %if.then.244
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %land.lhs.true.241, %cond.true.229
  %167 = load i32, i32* %__result234, align 4, !tbaa !5
  store i32 %167, i32* %tmp272, !tbaa !5
  %168 = bitcast i32* %__result234 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i8** %__s1231 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = load i32, i32* %tmp272, !tbaa !5
  br label %cond.end.276

cond.false.273:                                   ; preds = %land.lhs.true.226, %if.end.220
  %171 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8*, i8** %171, i64 1
  %172 = load i8*, i8** %arrayidx274, align 8, !tbaa !1
  %call275 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0)) #1
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.273, %if.end.271
  %cond277 = phi i32 [ %170, %if.end.271 ], [ %call275, %cond.false.273 ]
  store i32 %cond277, i32* %tmp225, !tbaa !5
  %173 = bitcast i64* %__s2_len224 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i64* %__s1_len222 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = load i32, i32* %tmp225, !tbaa !5
  %cmp278 = icmp eq i32 %175, 0
  br i1 %cmp278, label %if.then.280, label %if.else.288

if.then.280:                                      ; preds = %cond.end.276
  %176 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 48), align 1, !tbaa !15
  %conv281 = zext i8 %176 to i32
  %cmp282 = icmp sge i32 %conv281, 2
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.287

land.lhs.true.284:                                ; preds = %if.then.280
  %177 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool285 = icmp ne i32 %177, 0
  br i1 %tobool285, label %if.end.287, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.284
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.133, i32 0, i32 0))
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %land.lhs.true.284, %if.then.280
  %178 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %178, i32 0, i32 11
  %179 = load i64, i64* %e_flags, align 8, !tbaa !82
  %or = or i64 %179, 16777216
  store i64 %or, i64* %e_flags, align 8, !tbaa !82
  store volatile i32 1, i32* %discard, align 4, !tbaa !5
  br label %if.end.471

if.else.288:                                      ; preds = %cond.end.276
  %180 = bitcast i64* %__s1_len290 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #1
  %181 = bitcast i64* %__s2_len292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.131 to i64)), i64 1), label %land.lhs.true.294, label %cond.false.341

land.lhs.true.294:                                ; preds = %if.else.288
  store i64 5, i64* %__s2_len292, align 8, !tbaa !35
  %182 = load i64, i64* %__s2_len292, align 8, !tbaa !35
  %cmp295 = icmp ult i64 %182, 4
  br i1 %cmp295, label %cond.true.297, label %cond.false.341

cond.true.297:                                    ; preds = %land.lhs.true.294
  %183 = bitcast i8** %__s1299 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  %184 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8*, i8** %184, i64 1
  %185 = load i8*, i8** %arrayidx300, align 8, !tbaa !1
  store i8* %185, i8** %__s1299, align 8, !tbaa !1
  %186 = bitcast i32* %__result302 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load i8*, i8** %__s1299, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %187, i64 0
  %188 = load i8, i8* %arrayidx303, align 1, !tbaa !15
  %conv304 = zext i8 %188 to i32
  %189 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), align 1, !tbaa !15
  %conv305 = zext i8 %189 to i32
  %sub306 = sub nsw i32 %conv304, %conv305
  store i32 %sub306, i32* %__result302, align 4, !tbaa !5
  %190 = load i64, i64* %__s2_len292, align 8, !tbaa !35
  %cmp307 = icmp ugt i64 %190, 0
  br i1 %cmp307, label %land.lhs.true.309, label %if.end.339

land.lhs.true.309:                                ; preds = %cond.true.297
  %191 = load i32, i32* %__result302, align 4, !tbaa !5
  %cmp310 = icmp eq i32 %191, 0
  br i1 %cmp310, label %if.then.312, label %if.end.339

if.then.312:                                      ; preds = %land.lhs.true.309
  %192 = load i8*, i8** %__s1299, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i8, i8* %192, i64 1
  %193 = load i8, i8* %arrayidx313, align 1, !tbaa !15
  %conv314 = zext i8 %193 to i32
  %194 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 1), align 1, !tbaa !15
  %conv315 = zext i8 %194 to i32
  %sub316 = sub nsw i32 %conv314, %conv315
  store i32 %sub316, i32* %__result302, align 4, !tbaa !5
  %195 = load i64, i64* %__s2_len292, align 8, !tbaa !35
  %cmp317 = icmp ugt i64 %195, 1
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.338

land.lhs.true.319:                                ; preds = %if.then.312
  %196 = load i32, i32* %__result302, align 4, !tbaa !5
  %cmp320 = icmp eq i32 %196, 0
  br i1 %cmp320, label %if.then.322, label %if.end.338

if.then.322:                                      ; preds = %land.lhs.true.319
  %197 = load i8*, i8** %__s1299, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds i8, i8* %197, i64 2
  %198 = load i8, i8* %arrayidx323, align 1, !tbaa !15
  %conv324 = zext i8 %198 to i32
  %199 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 2), align 1, !tbaa !15
  %conv325 = zext i8 %199 to i32
  %sub326 = sub nsw i32 %conv324, %conv325
  store i32 %sub326, i32* %__result302, align 4, !tbaa !5
  %200 = load i64, i64* %__s2_len292, align 8, !tbaa !35
  %cmp327 = icmp ugt i64 %200, 2
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.337

land.lhs.true.329:                                ; preds = %if.then.322
  %201 = load i32, i32* %__result302, align 4, !tbaa !5
  %cmp330 = icmp eq i32 %201, 0
  br i1 %cmp330, label %if.then.332, label %if.end.337

if.then.332:                                      ; preds = %land.lhs.true.329
  %202 = load i8*, i8** %__s1299, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i8, i8* %202, i64 3
  %203 = load i8, i8* %arrayidx333, align 1, !tbaa !15
  %conv334 = zext i8 %203 to i32
  %204 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i64 3), align 1, !tbaa !15
  %conv335 = zext i8 %204 to i32
  %sub336 = sub nsw i32 %conv334, %conv335
  store i32 %sub336, i32* %__result302, align 4, !tbaa !5
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.332, %land.lhs.true.329, %if.then.322
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %land.lhs.true.319, %if.then.312
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %land.lhs.true.309, %cond.true.297
  %205 = load i32, i32* %__result302, align 4, !tbaa !5
  store i32 %205, i32* %tmp340, !tbaa !5
  %206 = bitcast i32* %__result302 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i8** %__s1299 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = load i32, i32* %tmp340, !tbaa !5
  br label %cond.end.344

cond.false.341:                                   ; preds = %land.lhs.true.294, %if.else.288
  %209 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx342 = getelementptr inbounds i8*, i8** %209, i64 1
  %210 = load i8*, i8** %arrayidx342, align 8, !tbaa !1
  %call343 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0)) #1
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.341, %if.end.339
  %cond345 = phi i32 [ %208, %if.end.339 ], [ %call343, %cond.false.341 ]
  store i32 %cond345, i32* %tmp293, !tbaa !5
  %211 = bitcast i64* %__s2_len292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i64* %__s1_len290 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = load i32, i32* %tmp293, !tbaa !5
  %cmp346 = icmp eq i32 %213, 0
  br i1 %cmp346, label %land.lhs.true.348, label %if.else.451

land.lhs.true.348:                                ; preds = %cond.end.344
  %214 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds i8*, i8** %214, i64 2
  %215 = load i8*, i8** %arrayidx349, align 8, !tbaa !1
  %cmp350 = icmp ne i8* %215, null
  br i1 %cmp350, label %land.lhs.true.352, label %if.else.451

land.lhs.true.352:                                ; preds = %land.lhs.true.348
  %216 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds i8*, i8** %216, i64 2
  %217 = load i8*, i8** %arrayidx353, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i8, i8* %217, i64 0
  %218 = load i8, i8* %arrayidx354, align 1, !tbaa !15
  %conv355 = sext i8 %218 to i32
  %and356 = and i32 %conv355, 255
  %cmp357 = icmp eq i32 %and356, 151
  br i1 %cmp357, label %land.lhs.true.359, label %if.else.451

land.lhs.true.359:                                ; preds = %land.lhs.true.352
  %219 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i8*, i8** %219, i64 3
  %220 = load i8*, i8** %arrayidx360, align 8, !tbaa !1
  %cmp361 = icmp ne i8* %220, null
  br i1 %cmp361, label %land.lhs.true.363, label %if.else.451

land.lhs.true.363:                                ; preds = %land.lhs.true.359
  %221 = bitcast i64* %__s1_len365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  %222 = bitcast i64* %__s2_len367 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.134 to i64)), i64 1), label %land.lhs.true.369, label %cond.false.416

land.lhs.true.369:                                ; preds = %land.lhs.true.363
  store i64 10, i64* %__s2_len367, align 8, !tbaa !35
  %223 = load i64, i64* %__s2_len367, align 8, !tbaa !35
  %cmp370 = icmp ult i64 %223, 4
  br i1 %cmp370, label %cond.true.372, label %cond.false.416

cond.true.372:                                    ; preds = %land.lhs.true.369
  %224 = bitcast i8** %__s1374 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #1
  %225 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx375 = getelementptr inbounds i8*, i8** %225, i64 3
  %226 = load i8*, i8** %arrayidx375, align 8, !tbaa !1
  store i8* %226, i8** %__s1374, align 8, !tbaa !1
  %227 = bitcast i32* %__result377 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = load i8*, i8** %__s1374, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds i8, i8* %228, i64 0
  %229 = load i8, i8* %arrayidx378, align 1, !tbaa !15
  %conv379 = zext i8 %229 to i32
  %230 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), align 1, !tbaa !15
  %conv380 = zext i8 %230 to i32
  %sub381 = sub nsw i32 %conv379, %conv380
  store i32 %sub381, i32* %__result377, align 4, !tbaa !5
  %231 = load i64, i64* %__s2_len367, align 8, !tbaa !35
  %cmp382 = icmp ugt i64 %231, 0
  br i1 %cmp382, label %land.lhs.true.384, label %if.end.414

land.lhs.true.384:                                ; preds = %cond.true.372
  %232 = load i32, i32* %__result377, align 4, !tbaa !5
  %cmp385 = icmp eq i32 %232, 0
  br i1 %cmp385, label %if.then.387, label %if.end.414

if.then.387:                                      ; preds = %land.lhs.true.384
  %233 = load i8*, i8** %__s1374, align 8, !tbaa !1
  %arrayidx388 = getelementptr inbounds i8, i8* %233, i64 1
  %234 = load i8, i8* %arrayidx388, align 1, !tbaa !15
  %conv389 = zext i8 %234 to i32
  %235 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i64 1), align 1, !tbaa !15
  %conv390 = zext i8 %235 to i32
  %sub391 = sub nsw i32 %conv389, %conv390
  store i32 %sub391, i32* %__result377, align 4, !tbaa !5
  %236 = load i64, i64* %__s2_len367, align 8, !tbaa !35
  %cmp392 = icmp ugt i64 %236, 1
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.413

land.lhs.true.394:                                ; preds = %if.then.387
  %237 = load i32, i32* %__result377, align 4, !tbaa !5
  %cmp395 = icmp eq i32 %237, 0
  br i1 %cmp395, label %if.then.397, label %if.end.413

if.then.397:                                      ; preds = %land.lhs.true.394
  %238 = load i8*, i8** %__s1374, align 8, !tbaa !1
  %arrayidx398 = getelementptr inbounds i8, i8* %238, i64 2
  %239 = load i8, i8* %arrayidx398, align 1, !tbaa !15
  %conv399 = zext i8 %239 to i32
  %240 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i64 2), align 1, !tbaa !15
  %conv400 = zext i8 %240 to i32
  %sub401 = sub nsw i32 %conv399, %conv400
  store i32 %sub401, i32* %__result377, align 4, !tbaa !5
  %241 = load i64, i64* %__s2_len367, align 8, !tbaa !35
  %cmp402 = icmp ugt i64 %241, 2
  br i1 %cmp402, label %land.lhs.true.404, label %if.end.412

land.lhs.true.404:                                ; preds = %if.then.397
  %242 = load i32, i32* %__result377, align 4, !tbaa !5
  %cmp405 = icmp eq i32 %242, 0
  br i1 %cmp405, label %if.then.407, label %if.end.412

if.then.407:                                      ; preds = %land.lhs.true.404
  %243 = load i8*, i8** %__s1374, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i8, i8* %243, i64 3
  %244 = load i8, i8* %arrayidx408, align 1, !tbaa !15
  %conv409 = zext i8 %244 to i32
  %245 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i64 3), align 1, !tbaa !15
  %conv410 = zext i8 %245 to i32
  %sub411 = sub nsw i32 %conv409, %conv410
  store i32 %sub411, i32* %__result377, align 4, !tbaa !5
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.407, %land.lhs.true.404, %if.then.397
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %land.lhs.true.394, %if.then.387
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %land.lhs.true.384, %cond.true.372
  %246 = load i32, i32* %__result377, align 4, !tbaa !5
  store i32 %246, i32* %tmp415, !tbaa !5
  %247 = bitcast i32* %__result377 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i8** %__s1374 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = load i32, i32* %tmp415, !tbaa !5
  br label %cond.end.419

cond.false.416:                                   ; preds = %land.lhs.true.369, %land.lhs.true.363
  %250 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds i8*, i8** %250, i64 3
  %251 = load i8*, i8** %arrayidx417, align 8, !tbaa !1
  %call418 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0)) #1
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.416, %if.end.414
  %cond420 = phi i32 [ %249, %if.end.414 ], [ %call418, %cond.false.416 ]
  store i32 %cond420, i32* %tmp368, !tbaa !5
  %252 = bitcast i64* %__s2_len367 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i64* %__s1_len365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = load i32, i32* %tmp368, !tbaa !5
  %cmp421 = icmp eq i32 %254, 0
  br i1 %cmp421, label %if.then.423, label %if.else.451

if.then.423:                                      ; preds = %cond.end.419
  %255 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx424 = getelementptr inbounds i8*, i8** %255, i64 4
  %256 = load i8*, i8** %arrayidx424, align 8, !tbaa !1
  %cmp425 = icmp eq i8* %256, null
  br i1 %cmp425, label %if.then.438, label %lor.lhs.false.427

lor.lhs.false.427:                                ; preds = %if.then.423
  %257 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx428 = getelementptr inbounds i8*, i8** %257, i64 4
  %258 = load i8*, i8** %arrayidx428, align 8, !tbaa !1
  %arrayidx429 = getelementptr inbounds i8, i8* %258, i64 0
  %259 = load i8, i8* %arrayidx429, align 1, !tbaa !15
  %conv430 = sext i8 %259 to i32
  %and431 = and i32 %conv430, 255
  %cmp432 = icmp ne i32 %and431, 152
  br i1 %cmp432, label %if.then.438, label %lor.lhs.false.434

lor.lhs.false.434:                                ; preds = %lor.lhs.false.427
  %260 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx435 = getelementptr inbounds i8*, i8** %260, i64 5
  %261 = load i8*, i8** %arrayidx435, align 8, !tbaa !1
  %cmp436 = icmp eq i8* %261, null
  br i1 %cmp436, label %if.then.438, label %if.else.441

if.then.438:                                      ; preds = %lor.lhs.false.434, %lor.lhs.false.427, %if.then.423
  %262 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool439 = getelementptr inbounds %struct.envelope, %struct.envelope* %262, i32 0, i32 52
  %263 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool439, align 8, !tbaa !16
  %264 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %call440 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %263, i8* %264)
  %265 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %265, i32 0, i32 36
  store i8* %call440, i8** %e_quarmsg, align 8, !tbaa !83
  br label %if.end.448

if.else.441:                                      ; preds = %lor.lhs.false.434
  %266 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds i8*, i8** %266, i64 5
  %arraydecay443 = getelementptr inbounds [16384 x i8], [16384 x i8]* %ubuf, i32 0, i32 0
  call void @cataddr(i8** %arrayidx442, i8** null, i8* %arraydecay443, i32 16384, i32 32, i32 1)
  %267 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool444 = getelementptr inbounds %struct.envelope, %struct.envelope* %267, i32 0, i32 52
  %268 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool444, align 8, !tbaa !16
  %arraydecay445 = getelementptr inbounds [16384 x i8], [16384 x i8]* %ubuf, i32 0, i32 0
  %call446 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %268, i8* %arraydecay445)
  %269 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg447 = getelementptr inbounds %struct.envelope, %struct.envelope* %269, i32 0, i32 36
  store i8* %call446, i8** %e_quarmsg447, align 8, !tbaa !83
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.441, %if.then.438
  %270 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %270, i32 0, i32 46
  %call449 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8** null)
  %271 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg450 = getelementptr inbounds %struct.envelope, %struct.envelope* %271, i32 0, i32 36
  %272 = load i8*, i8** %e_quarmsg450, align 8, !tbaa !83
  %273 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call449, i8* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3210, i32 %273)
  store i32 1, i32* %quarantine, align 4, !tbaa !5
  br label %if.end.470

if.else.451:                                      ; preds = %cond.end.419, %land.lhs.true.359, %land.lhs.true.352, %land.lhs.true.348, %cond.end.344
  %274 = bitcast %struct.address* %a1 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %274) #1
  %275 = bitcast i32* %savelogusrerrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %275) #1
  %276 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 %276, i32* %savelogusrerrs, align 4, !tbaa !5
  %277 = load i32, i32* @ExitStat, align 4, !tbaa !5
  store i32 %277, i32* %saveexitstat, align 4, !tbaa !5
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  %278 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %279 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call454 = call %struct.address* @buildaddr(i8** %278, %struct.address* %a1, i32 0, %struct.envelope* %279)
  %280 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %cmp455 = icmp ne %struct.address* %280, null
  br i1 %cmp455, label %if.then.457, label %if.end.461

if.then.457:                                      ; preds = %if.else.451
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %a1, i32 0, i32 4
  %281 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !39
  %282 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %q_mailer458 = getelementptr inbounds %struct.address, %struct.address* %282, i32 0, i32 4
  store %struct.mailer* %281, %struct.mailer** %q_mailer458, align 8, !tbaa !39
  %q_user = getelementptr inbounds %struct.address, %struct.address* %a1, i32 0, i32 1
  %283 = load i8*, i8** %q_user, align 8, !tbaa !17
  %284 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %q_user459 = getelementptr inbounds %struct.address, %struct.address* %284, i32 0, i32 1
  store i8* %283, i8** %q_user459, align 8, !tbaa !17
  %q_host = getelementptr inbounds %struct.address, %struct.address* %a1, i32 0, i32 3
  %285 = load i8*, i8** %q_host, align 8, !tbaa !40
  %286 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %q_host460 = getelementptr inbounds %struct.address, %struct.address* %286, i32 0, i32 3
  store i8* %285, i8** %q_host460, align 8, !tbaa !40
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.457, %if.else.451
  %287 = load i32, i32* %savelogusrerrs, align 4, !tbaa !5
  store i32 %287, i32* @LogUsrErrs, align 4, !tbaa !5
  %288 = load i32, i32* @ExitStat, align 4, !tbaa !5
  store volatile i32 %288, i32* %rstat, align 4, !tbaa !5
  %289 = load i32, i32* %saveexitstat, align 4, !tbaa !5
  store i32 %289, i32* @ExitStat, align 4, !tbaa !5
  %290 = load i32, i32* @rscheck.logged, align 4, !tbaa !5
  %tobool462 = icmp ne i32 %290, 0
  br i1 %tobool462, label %if.end.469, label %if.then.463

if.then.463:                                      ; preds = %if.end.461
  %291 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and464 = and i32 %291, 4
  %cmp465 = icmp ne i32 %and464, 0
  br i1 %cmp465, label %if.then.467, label %if.end.468

if.then.467:                                      ; preds = %if.then.463
  %292 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @markstats(%struct.envelope* %292, %struct.address* %a1, i32 114)
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.467, %if.then.463
  store i32 1, i32* @rscheck.logged, align 4, !tbaa !5
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.end.461
  %293 = bitcast i32* %savelogusrerrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast %struct.address* %a1 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %294) #1
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %if.end.448
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.end.287
  %295 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %296 = load i32, i32* %logl.addr, align 4, !tbaa !5
  %cmp472 = icmp sgt i32 %295, %296
  br i1 %cmp472, label %if.then.474, label %if.end.517

if.then.474:                                      ; preds = %if.end.471
  %297 = bitcast i8** %relay to i8*
  call void @llvm.lifetime.start(i64 8, i8* %297) #1
  %298 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %298) #1
  %299 = bitcast [2048 x i8]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %299) #1
  %arraydecay478 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  store i8* %arraydecay478, i8** %p, align 8, !tbaa !1
  %300 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %cmp479 = icmp ne i8* %300, null
  br i1 %cmp479, label %if.then.481, label %if.end.486

if.then.481:                                      ; preds = %if.then.474
  %301 = load i8*, i8** %p, align 8, !tbaa !1
  %302 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay482 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %302 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay482 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub483 = sub i64 2048, %sub.ptr.sub
  %303 = load i8*, i8** %p2.addr, align 8, !tbaa !1
  %call484 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %301, i64 %sub483, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* %303)
  %304 = load i8*, i8** %p, align 8, !tbaa !1
  %call485 = call i64 @strlen(i8* %304) #10
  %305 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %305, i64 %call485
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.481, %if.then.474
  %306 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %cmp487 = icmp ne i8* %306, null
  br i1 %cmp487, label %if.then.489, label %if.else.490

if.then.489:                                      ; preds = %if.end.486
  %307 = load i8*, i8** %host.addr, align 8, !tbaa !1
  store i8* %307, i8** %relay, align 8, !tbaa !1
  br label %if.end.492

if.else.490:                                      ; preds = %if.end.486
  %308 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call491 = call i8* @macvalue(i32 95, %struct.envelope* %308)
  store i8* %call491, i8** %relay, align 8, !tbaa !1
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.490, %if.then.489
  %309 = load i8*, i8** %relay, align 8, !tbaa !1
  %cmp493 = icmp ne i8* %309, null
  br i1 %cmp493, label %if.then.495, label %if.end.504

if.then.495:                                      ; preds = %if.end.492
  %310 = load i8*, i8** %p, align 8, !tbaa !1
  %311 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay496 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %sub.ptr.lhs.cast497 = ptrtoint i8* %311 to i64
  %sub.ptr.rhs.cast498 = ptrtoint i8* %arraydecay496 to i64
  %sub.ptr.sub499 = sub i64 %sub.ptr.lhs.cast497, %sub.ptr.rhs.cast498
  %sub500 = sub i64 2048, %sub.ptr.sub499
  %312 = load i8*, i8** %relay, align 8, !tbaa !1
  %call501 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %310, i64 %sub500, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i8* %312)
  %313 = load i8*, i8** %p, align 8, !tbaa !1
  %call502 = call i64 @strlen(i8* %313) #10
  %314 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr503 = getelementptr inbounds i8, i8* %314, i64 %call502
  store i8* %add.ptr503, i8** %p, align 8, !tbaa !1
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.495, %if.end.492
  %315 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %315, align 1, !tbaa !15
  %316 = load volatile i32, i32* %discard, align 4, !tbaa !5
  %tobool505 = icmp ne i32 %316, 0
  br i1 %tobool505, label %if.then.506, label %if.else.508

if.then.506:                                      ; preds = %if.end.504
  %317 = load i8*, i8** %logid.addr, align 8, !tbaa !1
  %318 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %319 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %arraydecay507 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %317, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.138, i32 0, i32 0), i8* %318, i8* %319, i8* %arraydecay507)
  br label %if.end.516

if.else.508:                                      ; preds = %if.end.504
  %320 = load i32, i32* %quarantine, align 4, !tbaa !5
  %tobool509 = icmp ne i32 %320, 0
  br i1 %tobool509, label %if.then.510, label %if.else.513

if.then.510:                                      ; preds = %if.else.508
  %321 = load i8*, i8** %logid.addr, align 8, !tbaa !1
  %322 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %323 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %arraydecay511 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %arraydecay512 = getelementptr inbounds [16384 x i8], [16384 x i8]* %ubuf, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %321, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.139, i32 0, i32 0), i8* %322, i8* %323, i8* %arraydecay511, i8* %arraydecay512)
  br label %if.end.515

if.else.513:                                      ; preds = %if.else.508
  %324 = load i8*, i8** %logid.addr, align 8, !tbaa !1
  %325 = load i8*, i8** %rwset.addr, align 8, !tbaa !1
  %326 = load i8*, i8** %p1.addr, align 8, !tbaa !1
  %arraydecay514 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %324, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.140, i32 0, i32 0), i8* %325, i8* %326, i8* %arraydecay514, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @MsgBuf, i32 0, i32 0))
  br label %if.end.515

if.end.515:                                       ; preds = %if.else.513, %if.then.510
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %if.then.506
  %327 = bitcast [2048 x i8]* %lbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %327) #1
  %328 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast i8** %relay to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %if.end.471
  br label %finis

finis:                                            ; preds = %if.end.517, %if.then.219, %if.then.84, %if.end.55
  %330 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp518 = icmp eq %struct.sm_exc_handler* %330, %_h
  br i1 %cmp518, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %finis
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3282, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %331, %finis
  %332 = phi i1 [ true, %finis ], [ false, %331 ]
  %lor.ext = zext i1 %332 to i32
  br label %if.end.520

if.end.520:                                       ; preds = %lor.end, %do.body
  %eh_context521 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay522 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context521, i32 0, i32 0
  %call523 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay522, i32 0) #12
  %cmp524 = icmp eq i32 %call523, 0
  br i1 %cmp524, label %if.then.526, label %if.end.532

if.then.526:                                      ; preds = %if.end.520
  %333 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  %arraydecay527 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf0, i32 0, i32 0
  %cmp528 = icmp ne i8* %333, %arraydecay527
  br i1 %cmp528, label %if.then.530, label %if.end.531

if.then.530:                                      ; preds = %if.then.526
  %334 = load volatile i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3286)
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.530, %if.then.526
  %335 = load i32, i32* %saveQuickAbort, align 4, !tbaa !5
  store i32 %335, i32* @QuickAbort, align 4, !tbaa !5
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531, %if.end.520
  br label %do.cond

do.cond:                                          ; preds = %if.end.532
  br label %do.end

do.end:                                           ; preds = %do.cond
  %eh_state533 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %336 = load i32, i32* %eh_state533, align 4, !tbaa !50
  %cmp534 = icmp eq i32 %336, 2
  br i1 %cmp534, label %if.then.536, label %if.else.549

if.then.536:                                      ; preds = %do.end
  %337 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp537 = icmp eq %struct.sm_exc_handler* %337, %_h
  br i1 %cmp537, label %lor.end.540, label %lor.rhs.539

lor.rhs.539:                                      ; preds = %if.then.536
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i32 3289, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.540

lor.end.540:                                      ; preds = %338, %if.then.536
  %339 = phi i1 [ true, %if.then.536 ], [ false, %338 ]
  %lor.ext541 = zext i1 %339 to i32
  %eh_parent542 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %340 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent542, align 8, !tbaa !49
  store %struct.sm_exc_handler* %340, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value543 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %341 = load %struct.sm_exc*, %struct.sm_exc** %eh_value543, align 8, !tbaa !47
  %cmp544 = icmp ne %struct.sm_exc* %341, null
  br i1 %cmp544, label %if.then.546, label %if.end.548

if.then.546:                                      ; preds = %lor.end.540
  %eh_value547 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %342 = load %struct.sm_exc*, %struct.sm_exc** %eh_value547, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %342) #11
  unreachable

if.end.548:                                       ; preds = %lor.end.540
  br label %if.end.563

if.else.549:                                      ; preds = %do.end
  %eh_state550 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %343 = load i32, i32* %eh_state550, align 4, !tbaa !50
  %cmp551 = icmp eq i32 %343, 0
  br i1 %cmp551, label %if.then.553, label %if.else.560

if.then.553:                                      ; preds = %if.else.549
  %eh_value554 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %344 = load %struct.sm_exc*, %struct.sm_exc** %eh_value554, align 8, !tbaa !47
  %cmp555 = icmp ne %struct.sm_exc* %344, null
  br i1 %cmp555, label %if.then.557, label %if.end.559

if.then.557:                                      ; preds = %if.then.553
  %eh_value558 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %345 = load %struct.sm_exc*, %struct.sm_exc** %eh_value558, align 8, !tbaa !47
  call void @sm_exc_raise_x(%struct.sm_exc* %345) #11
  unreachable

if.end.559:                                       ; preds = %if.then.553
  br label %if.end.562

if.else.560:                                      ; preds = %if.else.549
  %eh_value561 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %346 = load %struct.sm_exc*, %struct.sm_exc** %eh_value561, align 8, !tbaa !47
  call void @sm_exc_free(%struct.sm_exc* %346)
  br label %if.end.562

if.end.562:                                       ; preds = %if.else.560, %if.end.559
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.end.548
  %347 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %347) #1
  br label %do.body.564

do.body.564:                                      ; preds = %if.end.563
  %348 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp565 = icmp eq i32 %348, 0
  br i1 %cmp565, label %if.then.570, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %do.body.564
  %349 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp568 = icmp eq i32 %349, 75
  br i1 %cmp568, label %if.then.570, label %if.end.571

if.then.570:                                      ; preds = %lor.lhs.false.567, %do.body.564
  %350 = load volatile i32, i32* %rstat, align 4, !tbaa !5
  store i32 %350, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.570, %lor.lhs.false.567
  br label %do.cond.572

do.cond.572:                                      ; preds = %if.end.571
  br label %do.end.573

do.end.573:                                       ; preds = %do.cond.572
  %call574 = call i32* @__errno_location() #9
  store i32 0, i32* %call574, align 4, !tbaa !5
  %351 = load volatile i32, i32* %rstat, align 4, !tbaa !5
  %cmp575 = icmp ne i32 %351, 0
  br i1 %cmp575, label %land.lhs.true.577, label %if.end.580

land.lhs.true.577:                                ; preds = %do.end.573
  %352 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  %tobool578 = icmp ne i32 %352, 0
  br i1 %tobool578, label %if.then.579, label %if.end.580

if.then.579:                                      ; preds = %land.lhs.true.577
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 2) #11
  unreachable

if.end.580:                                       ; preds = %land.lhs.true.577, %do.end.573
  %353 = load volatile i32, i32* %rstat, align 4, !tbaa !5
  store i32 %353, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.580, %if.then.6
  %354 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %354) #1
  %355 = bitcast [2048 x i8]* %buf0 to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %355) #1
  %356 = bitcast [16384 x i8]* %ubuf to i8*
  call void @llvm.lifetime.end(i64 16384, i8* %356) #1
  %357 = bitcast i32* %quarantine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i32* %saveSuprErrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i32* %saveQuickAbort to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = bitcast i32* %discard to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %rsno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #1
  %363 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  %364 = bitcast i32* %saveexitstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  %365 = bitcast i64* %bufsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %366 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  %367 = load i32, i32* %retval
  ret i32 %367
}

declare i32 @strtorwset(i8*, i8**, i32) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare void @markstats(%struct.envelope*, %struct.address*, i32) #2

declare i32 @shorten_rfc822_string(i8*, i64) #2

declare void @stripquotes(i8*) #2

declare i32 @openmap(%struct._map*) #2

declare i8* @shortenstring(i8*, i64) #2

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

declare i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T*, i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #6

declare i32 @dsntoexitstat(i8*) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #8 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @isenhsc(i8*, i32) #2

declare void @usrerrenh(i8*, i8*, ...) #2

declare void @makelower(i8*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }
attributes #12 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"envelope", !2, i64 0, !9, i64 8, !9, i64 16, !2, i64 24, !10, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !9, i64 256, !2, i64 264, !9, i64 272, !6, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !9, i64 456, !6, i64 464, !9, i64 472, !9, i64 480, !12, i64 488, !2, i64 2576, !2, i64 2584, !13, i64 2592, !9, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!9 = !{!"long", !3, i64 0}
!10 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !9, i64 144, !2, i64 152, !11, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!11 = !{!"short", !3, i64 0}
!12 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!13 = !{!"sm_timers", !14, i64 0}
!14 = !{!"_timer", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!15 = !{!3, !3, i64 0}
!16 = !{!8, !2, i64 2640}
!17 = !{!10, !2, i64 8}
!18 = !{!10, !11, i64 160}
!19 = !{!10, !2, i64 0}
!20 = !{!10, !6, i64 176}
!21 = !{!8, !11, i64 290}
!22 = !{!8, !2, i64 392}
!23 = !{!10, !2, i64 128}
!24 = !{!11, !11, i64 0}
!25 = !{!26, !6, i64 24}
!26 = !{!"rewrite", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!27 = !{!26, !2, i64 0}
!28 = !{!29, !2, i64 16}
!29 = !{!"match", !2, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!29, !2, i64 0}
!31 = !{!29, !2, i64 8}
!32 = !{!26, !2, i64 16}
!33 = !{!26, !2, i64 8}
!34 = !{!8, !2, i64 344}
!35 = !{!9, !9, i64 0}
!36 = !{!37, !3, i64 75}
!37 = !{!"_map", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72, !3, i64 73, !3, i64 74, !3, i64 75, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !9, i64 112, !9, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !11, i64 140, !3, i64 144, !3, i64 240}
!38 = !{!10, !9, i64 40}
!39 = !{!10, !2, i64 32}
!40 = !{!10, !2, i64 24}
!41 = !{!42, !2, i64 0}
!42 = !{!"errcodes", !2, i64 0, !6, i64 8}
!43 = !{!42, !6, i64 8}
!44 = !{!45, !2, i64 0}
!45 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !11, i64 72, !11, i64 74, !2, i64 80, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !2, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !9, i64 152, !6, i64 160, !11, i64 164}
!46 = !{!45, !11, i64 94}
!47 = !{!48, !2, i64 0}
!48 = !{!"sm_exc_handler", !2, i64 0, !3, i64 8, !2, i64 208, !6, i64 216}
!49 = !{!48, !2, i64 208}
!50 = !{!48, !6, i64 216}
!51 = !{!45, !11, i64 72}
!52 = !{!10, !2, i64 16}
!53 = !{!10, !2, i64 72}
!54 = !{!10, !2, i64 80}
!55 = !{!10, !6, i64 48}
!56 = !{!10, !6, i64 52}
!57 = !{!58, !2, i64 0}
!58 = !{!"qflags", !2, i64 0, !9, i64 8}
!59 = !{!58, !9, i64 8}
!60 = !{!10, !2, i64 88}
!61 = !{!10, !2, i64 56}
!62 = !{!10, !2, i64 64}
!63 = !{!10, !2, i64 120}
!64 = !{!10, !2, i64 152}
!65 = !{!10, !2, i64 112}
!66 = !{!10, !2, i64 136}
!67 = !{!10, !9, i64 144}
!68 = !{!37, !9, i64 24}
!69 = !{!70, !2, i64 0}
!70 = !{!"symtab", !2, i64 0, !11, i64 8, !2, i64 16, !3, i64 24}
!71 = !{!37, !2, i64 0}
!72 = !{!73, !2, i64 32}
!73 = !{!"_mapclass", !2, i64 0, !2, i64 8, !11, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!74 = !{!37, !2, i64 88}
!75 = !{!45, !2, i64 8}
!76 = !{!45, !2, i64 80}
!77 = !{!45, !11, i64 88}
!78 = !{!45, !11, i64 90}
!79 = !{!45, !11, i64 92}
!80 = !{!8, !2, i64 232}
!81 = !{!37, !2, i64 80}
!82 = !{!8, !9, i64 272}
!83 = !{!8, !2, i64 408}
